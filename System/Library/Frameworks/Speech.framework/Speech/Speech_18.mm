uint64_t sub_1AC740620(uint64_t a1)
{
  v19 = *(v1 + 24);
  v20 = *(v1 + 16);
  v3 = *(v1 + 40);
  v18 = *(v1 + 32);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v16 = *(v1 + 88);
  v17 = *(v1 + 72);
  v15 = *(v1 + 104);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_29_0(v11);
  *v12 = v13;
  v12[1] = sub_1AC5C4D48;

  return sub_1AC739168(a1, v20, v19, v18, v3, v4, v5, v6);
}

uint64_t sub_1AC740748()
{
  OUTLINED_FUNCTION_50_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_39();
  v6(v5);
  return v0;
}

uint64_t sub_1AC7407A0()
{
  v1 = sub_1AC79F498();
  OUTLINED_FUNCTION_167(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  return sub_1AC79F488() & 1;
}

void OUTLINED_FUNCTION_4_17(uint64_t a1@<X8>)
{
  v3 = (a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v3);
  v6 = *(v1 + v4);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t OUTLINED_FUNCTION_25_15()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_26_16()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_30_12(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_39_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_40_12()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_48_9()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_59_8()
{
  v2 = *(v0 + 416) + 16;

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t OUTLINED_FUNCTION_62_7()
{

  return swift_allocError();
}

id OUTLINED_FUNCTION_63_6()
{
  v3 = *(v1 + 56);

  return v0;
}

id OUTLINED_FUNCTION_108_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_109_4()
{

  return sub_1AC7A0D08();
}

uint64_t OUTLINED_FUNCTION_112_5()
{
  v2 = *(v0 + 104);
}

uint64_t OUTLINED_FUNCTION_113_5()
{
}

void OUTLINED_FUNCTION_117_5()
{
  v2 = *v0;
  *(v1 - 160) = *v0;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
}

id OUTLINED_FUNCTION_120_4()
{

  return [v1 (v0 + 2026)];
}

void sub_1AC740B10(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v23 = MEMORY[0x1E69E7CC0];
    v22 = *(a1 + 16);
    sub_1AC631258();
    v4 = sub_1AC6C2CA0(a1);
    v5 = v22;
    v6 = 0;
    v7 = a1 + 56;
    v8 = 1;
    v9 = -2;
    if ((v4 & 0x8000000000000000) == 0)
    {
      while (v4 < v8 << *(a1 + 32))
      {
        v10 = v4 >> 6;
        v11 = v8 << v4;
        if ((*(v7 + 8 * (v4 >> 6)) & (v8 << v4)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_29;
        }

        v12 = *(*(a1 + 48) + v4);
        if (v12 == 2)
        {
          LOBYTE(v12) = 0;
        }

        else if (v12 == 3)
        {
          LOBYTE(v12) = 1;
        }

        v13 = *(v23 + 16);
        if (v13 >= *(v23 + 24) >> 1)
        {
          sub_1AC631258();
          OUTLINED_FUNCTION_94_4();
        }

        *(v23 + 16) = v13 + 1;
        *(v23 + v13 + 32) = v12;
        if (v3)
        {
          goto LABEL_33;
        }

        v14 = v8 << *(a1 + 32);
        if (v4 >= v14)
        {
          goto LABEL_30;
        }

        v15 = *(v7 + 8 * v10);
        if ((v15 & v11) == 0)
        {
          goto LABEL_31;
        }

        if (*(a1 + 36) != v2)
        {
          goto LABEL_32;
        }

        v16 = v15 & (v9 << (v4 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v4 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v10 << 6;
          v18 = v10 + 1;
          v19 = (a1 + 64 + 8 * v10);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_1AC637E98(v4, v2, 0);
              OUTLINED_FUNCTION_94_4();
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_23;
            }
          }

          sub_1AC637E98(v4, v2, 0);
          OUTLINED_FUNCTION_94_4();
        }

LABEL_23:
        if (++v6 == v5)
        {
          return;
        }

        v3 = 0;
        v2 = *(a1 + 36);
        v4 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }
}

uint64_t sub_1AC740D54()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v7 = sub_1AC79FB18();
  v1[9] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[10] = v8;
  v10 = *(v9 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[15] = v11;
  *v11 = v1;
  OUTLINED_FUNCTION_85_0(v11);

  return sub_1AC748000();
}

uint64_t sub_1AC740EB0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC740F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8[8];
  v9 = v8[9];
  v11 = v8[3];
  Locale.languageRegionLocale.getter(a1, a2, a3, a4, a5, a6, a7, a8, v44, v45, v46, v47, v48, v49, v50, v51, v52, v8, v53, v54);
  v12 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v12, v13, v9);
  if (v19)
  {
    sub_1AC5C720C(v8[8], &qword_1EB56BFD8, &qword_1AC7A83F0);
  }

  else
  {
    v14 = v8[16];
    v15 = v8[14];
    v16 = v8[9];
    v17 = v8[7];
    v18 = *(v8[10] + 32);
    (v18)(v15, v8[8], v16);
    *(swift_task_alloc() + 16) = v15;
    sub_1AC65956C(sub_1AC7535EC, v14, v17);

    OUTLINED_FUNCTION_96(v17, 1, v16);
    if (!v19)
    {
      v32 = v8[16];
      v33 = v8[13];
      v34 = v8[14];
      v35 = v8[9];
      v36 = v8[10];
      v37 = v8[7];
      v38 = v8[2];

      (v18)(v33, v37, v35);
      v39 = OUTLINED_FUNCTION_98_3();
      v18(v39);
      OUTLINED_FUNCTION_150_1();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v35);
      (*(v36 + 8))(v34, v35);
      OUTLINED_FUNCTION_78_4();

      OUTLINED_FUNCTION_44();

      return v43();
    }

    v20 = v8[14];
    v21 = v8[9];
    v22 = v8[10];
    sub_1AC5C720C(v8[7], &qword_1EB56BFD8, &qword_1AC7A83F0);
    v23 = *(v22 + 8);
    v24 = OUTLINED_FUNCTION_89();
    v25(v24);
  }

  v26 = v8[16];
  v27 = v8[3];
  v28 = swift_task_alloc();
  *(v28 + 16) = v27;
  sub_1AC714B6C(sub_1AC7535CC, v28, v26);
  OUTLINED_FUNCTION_86();

  sub_1AC608DF4();
  v8[17] = v29;
  type metadata accessor for AssetInventory();

  v30 = swift_task_alloc();
  v8[18] = v30;
  *v30 = v8;
  OUTLINED_FUNCTION_85_0(v30);

  return static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC741284()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 144);
  *v2 = *v0;
  *(v1 + 152) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC74136C()
{
  v2 = v0[9];
  v3 = v0[6];
  sub_1AC6839F4(v0[19], v0[17]);
  OUTLINED_FUNCTION_107_4();

  sub_1AC625B14(v1, v3);

  v4 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v4, v5, v2);
  if (!v6)
  {
    v11 = v0[17];
    v12 = v0[12];
    v13 = v0[9];
    v14 = v0[10];
    v15 = v0[6];
    v16 = v0[2];

    v17 = *(v14 + 32);
    (v17)(v12, v15, v13);
    OUTLINED_FUNCTION_166_2();
    v17();
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
    OUTLINED_FUNCTION_78_4();

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_291();

    __asm { BRAA            X1, X16 }
  }

  v7 = v0[17];
  sub_1AC5C720C(v0[6], &qword_1EB56BFD8, &qword_1AC7A83F0);

  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_85_0(v8);
  OUTLINED_FUNCTION_291();

  return sub_1AC74809C();
}

uint64_t sub_1AC741534()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  v4 = *(v3 + 160);
  *v2 = *v0;
  *(v1 + 168) = v5;

  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1AC74161C()
{
  v2 = v0[9];
  v3 = v0[5];
  sub_1AC6839F4(v0[21], v0[17]);
  OUTLINED_FUNCTION_107_4();

  sub_1AC625B14(v1, v3);

  v4 = OUTLINED_FUNCTION_278();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, v5, v2);
  v7 = v0[17];
  if (EnumTagSinglePayload == 1)
  {
    v8 = v0[2];
    sub_1AC5C720C(v0[5], &qword_1EB56BFD8, &qword_1AC7A83F0);
    sub_1AC625B14(v7, v8);
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = v0[5];
    v13 = v0[2];
    v14 = v0[17];

    v15 = *(v10 + 32);
    v15(v9, v12, v11);
    v16 = OUTLINED_FUNCTION_98_3();
    (v15)(v16);
    OUTLINED_FUNCTION_150_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v11);
  }

  OUTLINED_FUNCTION_78_4();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1AC741794()
{
  OUTLINED_FUNCTION_85();
  v20 = *MEMORY[0x1E69E9840];
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v2);
  v4 = *(v3 + 64);
  v1[8] = OUTLINED_FUNCTION_126();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v5);
  v7 = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_126();
  v8 = sub_1AC79FB18();
  v1[10] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_126();
  v12 = type metadata accessor for Assets(0);
  v1[13] = v12;
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_126();
  v15 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1AC7418E4()
{
  v93 = v0;
  v92[1] = *MEMORY[0x1E69E9840];
  v1 = v0[7];
  v2 = sub_1AC5CB1A4();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_modelInfo);

    v4 = v3;
    v5 = [v4 samplingRates];
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    sub_1AC6A8FB8();
    v6 = sub_1AC7A0448();

    sub_1AC68CFAC(v6);
    OUTLINED_FUNCTION_152_2();
    v7 = sub_1AC608F68(v5);

    if (off_1ED937D60 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v8 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v8, qword_1ED9386C8);

      v9 = sub_1AC79FDC8();
      v10 = sub_1AC7A05D8();

      v88 = v4;
      if (os_log_type_enabled(v9, v10))
      {
        v11 = OUTLINED_FUNCTION_448();
        v92[0] = OUTLINED_FUNCTION_494();
        *v11 = 136315394;
        *(v11 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v86, v4, v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
        *(v11 + 12) = 2080;
        v12 = sub_1AC7A0458();
        v14 = sub_1AC5CFE74(v12, v13, v92);

        *(v11 + 14) = v14;
        _os_log_impl(&dword_1AC5BC000, v9, v10, "Transcriber.%s found %s", v11, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_77_1();
      }

      v15 = *(v7 + 56);
      v92[0] = MEMORY[0x1E69E7CC0];
      v16 = *(v7 + 32);
      OUTLINED_FUNCTION_19_5();
      v19 = v18 & v17;
      v21 = (63 - v20) >> 6;

      v31 = 0;
      v90 = xmmword_1AC7AB570;
      v89 = xmmword_1AC7AB580;
      v4 = &selRef_initWithText_confidence_startTime_duration_;
      while (v19)
      {
LABEL_11:
        v33 = *(*(v7 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v19)))));
        v19 &= v19 - 1;
        OUTLINED_FUNCTION_24_0(v33, v22, v23, v24, v25, v26, v27, v28, v29, v86, v88, v30, v89);
        v22 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
        if (v22)
        {
          v34 = MEMORY[0x1B26E8CF0]();
          OUTLINED_FUNCTION_31_6(v34, v35, v36, v37, v38, v39, v40, v41, v86, v88, v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92[0]);
          if (v43)
          {
            OUTLINED_FUNCTION_23_6(v42);
            v86 = v44;
            sub_1AC7A0178();
          }

          v22 = sub_1AC7A0198();
        }
      }

      while (1)
      {
        v32 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v32 >= v21)
        {
          v45 = v0[14];
          v46 = v0[12];
          v48 = v0[8];
          v47 = v0[9];

          OUTLINED_FUNCTION_82();
          v49 = *MEMORY[0x1E69E9840];
          OUTLINED_FUNCTION_403();

          __asm { BRAA            X2, X16 }
        }

        v19 = *(v7 + 56 + 8 * v32);
        ++v31;
        if (v19)
        {
          v31 = v32;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v52 = sub_1AC79FDE8();
  v0[15] = __swift_project_value_buffer(v52, qword_1ED9386C8);
  v53 = sub_1AC79FDC8();
  v54 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_366(v54))
  {
    v55 = OUTLINED_FUNCTION_150();
    v56 = OUTLINED_FUNCTION_48();
    v92[0] = v56;
    *v55 = 136315138;
    *(v55 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v86, v87, v89, *(&v89 + 1), v90, *(&v90 + 1), v91);
    __swift_destroy_boxed_opaque_existential_0(v56);
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_70();
  }

  v57 = v0[7];
  v58 = *(v57 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames);
  if (!v58[2])
  {
    __break(1u);
  }

  v59 = v0[8];
  v61 = v58[4];
  v60 = v58[5];
  (*(v0[11] + 16))(v0[12], v57 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v0[10]);
  v62 = *(v57 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType);
  sub_1AC5C6E6C();
  v63 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v63);
  v66 = v0[8];
  v65 = v0[9];
  if (EnumTagSinglePayload == 1)
  {

    sub_1AC5C720C(v66, &qword_1EB56C318, &unk_1AC7A8790);
    sub_1AC79F7F8();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  }

  else
  {
    v71 = *(v63 + 28);
    v72 = v0[9];
    sub_1AC5C6E6C();

    OUTLINED_FUNCTION_13_13();
    sub_1AC753538(v66, v73);
  }

  if (v61 == sub_1AC79FF68() && v60 == v74)
  {
    v76 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_74_0();
    v76 = sub_1AC7A0D38();
  }

  v78 = v0[13];
  v77 = v0[14];
  v79 = v0[12];
  v80 = v0[9];

  sub_1AC61D0F4(v79, v62, v80, v76 & 1);
  v81 = *(v77 + *(v78 + 36));
  v82 = swift_task_alloc();
  v0[16] = v82;
  *v82 = v0;
  v82[1] = sub_1AC741F58;
  v83 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_403();

  return sub_1AC61FFCC();
}

uint64_t sub_1AC741F58()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  v15 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v7 = *(v6 + 128);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 136) = v0;

  if (!v0)
  {
    *(v4 + 144) = v3;
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1AC742090()
{
  v57[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1AC608F68(v0[18]);
  v2 = v0[14];
  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v3, v4);
  if (off_1ED937D60 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v5 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v5, qword_1ED9386C8);

    v6 = sub_1AC79FDC8();
    v7 = sub_1AC7A05D8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_448();
      v57[0] = OUTLINED_FUNCTION_494();
      *v8 = 136315394;
      *(v8 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56);
      *(v8 + 12) = 2080;
      v9 = sub_1AC7A0458();
      v11 = sub_1AC5CFE74(v9, v10, v57);

      *(v8 + 14) = v11;
      OUTLINED_FUNCTION_150_2(&dword_1AC5BC000, v12, v13, "Transcriber.%s found %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_70();
    }

    v14 = *(v1 + 56);
    v57[0] = MEMORY[0x1E69E7CC0];
    v15 = *(v1 + 32);
    OUTLINED_FUNCTION_19_5();
    v18 = v17 & v16;
    v20 = (63 - v19) >> 6;

    v21 = 0;
    v55 = xmmword_1AC7AB570;
    v54 = xmmword_1AC7AB580;
    while (v18)
    {
LABEL_10:
      v23 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v18)));
      v18 &= v24;
      OUTLINED_FUNCTION_24_0(v23, v25, v26, v27, v28, v29, v30, v31, v32, v52, v53, v33, v54);
      if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
      {
        v34 = MEMORY[0x1B26E8CF0]();
        OUTLINED_FUNCTION_31_6(v34, v35, v36, v37, v38, v39, v40, v41, v52, v53, v54, *(&v54 + 1), v55, *(&v55 + 1), v56, v57[0]);
        if (v43)
        {
          OUTLINED_FUNCTION_23_6(v42);
          v53 = v44;
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
      }
    }

    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {
        v45 = v0[14];
        v46 = v0[12];
        v48 = v0[8];
        v47 = v0[9];

        OUTLINED_FUNCTION_82();
        v49 = *MEMORY[0x1E69E9840];
        OUTLINED_FUNCTION_403();

        __asm { BRAA            X2, X16 }
      }

      v18 = *(v1 + 56 + 8 * v22);
      ++v21;
      if (v18)
      {
        v21 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }
}

uint64_t sub_1AC74237C()
{
  v44 = v0;
  v43[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = v1;
  v4 = sub_1AC79FDC8();
  v5 = sub_1AC7A05F8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_150();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_1AC5C720C(v9, &unk_1EB56C630, &qword_1AC7A7E40);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  v13 = *(v0 + 112);
  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v14, v15);
  if (off_1ED937D60 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v16 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v16, qword_1ED9386C8);
  v17 = MEMORY[0x1E69E7CD0];

  v18 = sub_1AC79FDC8();
  v19 = sub_1AC7A05D8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_448();
    v43[0] = OUTLINED_FUNCTION_494();
    *v20 = 136315394;
    OUTLINED_FUNCTION_65();
    *(v20 + 4) = sub_1AC5CFE74(0xD00000000000001FLL, v21, v43);
    *(v20 + 12) = 2080;
    v22 = sub_1AC7A0458();
    v24 = sub_1AC5CFE74(v22, v23, v43);

    *(v20 + 14) = v24;
    OUTLINED_FUNCTION_150_2(&dword_1AC5BC000, v25, v26, "Transcriber.%s found %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_70();
  }

  v27 = MEMORY[0x1E69E7CC0];
  v43[0] = MEMORY[0x1E69E7CC0];
  v28 = -1;
  v29 = -1 << *(v17 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v17 + 56);
  v31 = (63 - v29) >> 6;

  v32 = 0;
  while (v30)
  {
LABEL_14:
    *&v34 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v30)));
    v30 &= v35;
    *(v0 + 16) = v34;
    *(v0 + 24) = xmmword_1AC7AB570;
    *(v0 + 40) = xmmword_1AC7AB580;
    if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
    {
      MEMORY[0x1B26E8CF0]();
      if (*((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v27 = v43[0];
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v33 >= v31)
    {
      break;
    }

    v30 = *(v17 + 8 * v33 + 56);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_14;
    }
  }

  v36 = *(v0 + 112);
  v37 = *(v0 + 96);
  v39 = *(v0 + 64);
  v38 = *(v0 + 72);

  OUTLINED_FUNCTION_82();
  v41 = *MEMORY[0x1E69E9840];

  return v40(v27);
}

uint64_t sub_1AC742780(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC742794()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[3];
  v2 = sub_1AC5CB1A4();
  v0[4] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = sub_1AC742864;
    v4 = v0[2];

    return sub_1AC69C034(v4);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v6();
  }
}

uint64_t sub_1AC742864()
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
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC742980()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_1AC7429F0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[2];
  v2 = sub_1AC5CB1A4();
  v0[3] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC6946BC();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }
}

uint64_t sub_1AC742AB4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC742BE4()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[2];
  v2 = sub_1AC5CB1A4();
  v0[3] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC694784();
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }
}

uint64_t sub_1AC742CA8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC742DC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC742DDC()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = sub_1AC5CB1A4();
  v0[5] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_45_1(v3);

    return sub_1AC694B50(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC742EA0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC742FBC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC742FD4()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = sub_1AC5CB1A4();
  v0[5] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_45_1(v3);

    return sub_1AC694D5C(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC743098()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    OUTLINED_FUNCTION_44();

    return v13();
  }
}

uint64_t sub_1AC7431B4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_1AC743210(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC743228()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = sub_1AC5CB1A4();
  v0[5] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[6] = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_45_1(v3);

    return sub_1AC69501C(v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC743300()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 16);
  v2 = sub_1AC5CB1A4();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_modelInfo);
    OUTLINED_FUNCTION_86();
  }

  else
  {
    v1 = 0;
  }

  OUTLINED_FUNCTION_82();

  return v4(v1);
}

uint64_t sub_1AC7433A0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[2];
  v2 = sub_1AC5CB1A4();
  v0[3] = v2;
  if (v2)
  {
    v0[4] = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionStatistics;

    return MEMORY[0x1EEE6DFA0](sub_1AC74344C, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_82();

    return v3();
  }
}

uint64_t sub_1AC74344C()
{
  OUTLINED_FUNCTION_85();
  v0[5] = *(v0[3] + v0[4]);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC7434B8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  OUTLINED_FUNCTION_82();

  return v3();
}

uint64_t sub_1AC74352C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[2];
  v2 = sub_1AC5CB1A4();
  v0[3] = v2;
  if (v2)
  {
    v0[4] = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_recognitionUtterenceStatistics;

    return MEMORY[0x1EEE6DFA0](sub_1AC7435D8, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_82();

    return v3();
  }
}

uint64_t sub_1AC7435D8()
{
  OUTLINED_FUNCTION_85();
  v0[5] = *(v0[3] + v0[4]);

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC743644()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FF48();
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64);
  v1[7] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  v1[8] = OUTLINED_FUNCTION_126();
  v12 = sub_1AC79FB18();
  v1[9] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[10] = v13;
  v15 = *(v14 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v16 = type metadata accessor for Assets(0);
  v1[13] = v16;
  OUTLINED_FUNCTION_167(v16);
  v18 = *(v17 + 64);
  v1[14] = OUTLINED_FUNCTION_126();
  v19 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

void sub_1AC743798()
{
  v1 = v0[5];
  v2 = *(v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames);
  v0[15] = v2;
  if (v2[2])
  {
    v3 = v0[12];
    v4 = v0[9];
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[4];
    v8 = v2[4];
    v0[16] = v8;
    v9 = v2[5];
    v0[17] = v9;
    (*(v5 + 16))(v3, v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v4);
    v10 = *(v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType);
    v11 = *v7;
    v12 = v7[1];
    sub_1AC5C6E6C();
    v13 = type metadata accessor for TranscriberCommon.ModelOptions(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v13);
    v15 = v0[7];
    v16 = v0[8];
    if (EnumTagSinglePayload == 1)
    {

      sub_1AC5C720C(v15, &qword_1EB56C318, &unk_1AC7A8790);
      sub_1AC79F7F8();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    }

    else
    {
      v21 = *(v13 + 28);
      v22 = v0[8];
      sub_1AC5C6E6C();

      OUTLINED_FUNCTION_13_13();
      sub_1AC753538(v15, v23);
    }

    if (v8 != sub_1AC79FF68() || v9 != v24)
    {
      OUTLINED_FUNCTION_77();
      sub_1AC7A0D38();
    }

    v27 = v0[13];
    v26 = v0[14];
    v28 = v0[12];
    v29 = v0[8];

    OUTLINED_FUNCTION_390();
    OUTLINED_FUNCTION_167_0();
    sub_1AC61CBD4();
    v30 = *(v26 + *(v27 + 36));
    v31 = swift_task_alloc();
    v0[18] = v31;
    *v31 = v0;
    OUTLINED_FUNCTION_85_0(v31);

    sub_1AC61FB58();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC7439EC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  *v3 = *v1;
  *(v2 + 152) = v6;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC743AEC()
{
  v68 = v0;
  v1 = 0;
  v2 = 0;
  v3 = *(v0[15] + 16);
  v4 = v0[20];
  while (v3 != v2)
  {
    v5 = v0[15];
    if (v2 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_30;
    }

    v6 = v0[19];
    v7 = v5 + v1;
    v9 = *(v7 + 32);
    v8 = *(v7 + 40);
    v0[2] = v9;
    v0[3] = v8;
    v10 = swift_task_alloc();
    *(v10 + 16) = v0 + 2;

    LOBYTE(v6) = sub_1AC6F488C(sub_1AC637CD4, v10, v6);

    if (v6)
    {
      v22 = v0[19];
      v24 = v0[16];
      v23 = v0[17];

      v25 = v0[17];
      if (v9 == v24 && v8 == v23)
      {
        v43 = v0[17];
      }

      else
      {
        v27 = v0[16];
        OUTLINED_FUNCTION_62_4();
        if (sub_1AC7A0D38())
        {
          v28 = v0[17];
        }

        else
        {
          v54 = off_1ED937D60;

          if (v54 != -1)
          {
            OUTLINED_FUNCTION_3_0();
            swift_once();
          }

          v55 = v0[17];
          v56 = sub_1AC79FDE8();
          OUTLINED_FUNCTION_10_3(v56, qword_1ED9386C8);

          v57 = sub_1AC79FDC8();
          v58 = sub_1AC7A0618();

          v59 = os_log_type_enabled(v57, v58);
          v60 = v0[17];
          if (v59)
          {
            v61 = v0[16];
            v62 = OUTLINED_FUNCTION_448();
            v67[0] = OUTLINED_FUNCTION_494();
            *v62 = 136315394;
            v63 = sub_1AC5CFE74(v61, v60, v67);

            *(v62 + 4) = v63;
            *(v62 + 12) = 2080;
            v64 = OUTLINED_FUNCTION_62_4();
            *(v62 + 14) = sub_1AC5CFE74(v64, v65, v66);
            _os_log_impl(&dword_1AC5BC000, v57, v58, "Transcriber: Assets do not support requested task name %s; using %s", v62, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_70();
            OUTLINED_FUNCTION_96_0();
          }

          else
          {
          }
        }
      }

      v44 = v0[14];
      v46 = v0[11];
      v45 = v0[12];
      v48 = v0[7];
      v47 = v0[8];
      v49 = v0[6];
      v50 = v0[5] + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
      os_unfair_lock_lock(v50);
      v51 = *(v50 + 16);

      *(v50 + 8) = v9;
      *(v50 + 16) = v8;
      os_unfair_lock_unlock(v50);
      OUTLINED_FUNCTION_5_21();
      sub_1AC753538(v44, v52);

      OUTLINED_FUNCTION_44();
      goto LABEL_21;
    }

    ++v2;
    v1 += 16;
  }

  v11 = v0[19];

  if (off_1ED937D60 == -1)
  {
    goto LABEL_7;
  }

LABEL_30:
  OUTLINED_FUNCTION_3_0();
  swift_once();
LABEL_7:
  v12 = v0[17];
  v13 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v13, qword_1ED9386C8);

  v14 = sub_1AC79FDC8();
  v15 = sub_1AC7A05F8();

  v16 = os_log_type_enabled(v14, v15);
  v17 = v0[17];
  if (v16)
  {
    v18 = v0[16];
    v19 = OUTLINED_FUNCTION_150();
    v20 = OUTLINED_FUNCTION_48();
    v67[0] = v20;
    *v19 = 136315138;
    v21 = sub_1AC5CFE74(v18, v17, v67);

    *(v19 + 4) = v21;
    _os_log_impl(&dword_1AC5BC000, v14, v15, "Transcriber: Assets do not support requested task name %s; no fallback available", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_96_0();
  }

  else
  {
  }

  v29 = v0[6];
  sub_1AC79FEE8();
  if (qword_1EB56B610 != -1)
  {
    swift_once();
  }

  v30 = v0[11];
  v31 = v0[6];
  v32 = qword_1EB56DF80;
  sub_1AC79FA88();
  OUTLINED_FUNCTION_138();
  v33 = sub_1AC79FFC8();
  related decl 'e' for SFSpeechErrorCode.init(_:description:)(4, v33, v34);
  swift_willThrow();
  v35 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v39 = v0[7];
  v38 = v0[8];
  v40 = v0[6];
  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v35, v41);

  OUTLINED_FUNCTION_44();
LABEL_21:

  return v42();
}

void sub_1AC744018()
{
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  OUTLINED_FUNCTION_5_21();
  sub_1AC753538(v3, v9);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_291();

  __asm { BRAA            X1, X16 }
}

id sub_1AC7440D4()
{
  v2 = OUTLINED_FUNCTION_77();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_602();
  v8 = sub_1AC79FB18();
  v9 = OUTLINED_FUNCTION_40(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  v15 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType);
  (*(v16 + 16))(v13 - v12, v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale);
  sub_1AC5C6E6C();
  v17 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  OUTLINED_FUNCTION_14_7(v1);
  if (v18)
  {
    sub_1AC5C720C(v1, &qword_1EB56C318, &unk_1AC7A8790);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v19 = (v1 + *(v17 + 24));
    v20 = *v19;
    v21 = v19[1];

    OUTLINED_FUNCTION_13_13();
    sub_1AC753538(v1, v22);
  }

  v23 = objc_allocWithZone(SFEntitledAssetConfig);
  return sub_1AC751A98(v15, v14, v20, v21);
}

uint64_t sub_1AC744278()
{
  v0 = sub_1AC5CB1A4();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

void sub_1AC7442B0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_72_5();
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock(v7);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v9 = sub_1AC79FDE8();
  __swift_project_value_buffer(v9, qword_1ED9386C8);
  if (v8)
  {
    v17 = sub_1AC79FDC8();
    v18 = sub_1AC7A05F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_150();
      v20 = OUTLINED_FUNCTION_48();
      v22 = v20;
      *v19 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v19 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, v21, &v22);
      _os_log_impl(&dword_1AC5BC000, v17, v18, "Failed precondition: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked));
    v11 = *(v10 + 8);
    *(v10 + 8) = a1;

    *(v10 + 16) = 1;
    os_unfair_lock_unlock(v10);
    sub_1AC7A0288();
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a1;
    v16[5] = v1;

    sub_1AC659B08();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_1AC7444E4(void *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  sub_1AC744558();
  v4 = v3;
  swift_unknownObjectRelease();
  return v4 & 1;
}

void sub_1AC744558()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v127[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  v4 = OUTLINED_FUNCTION_80(v127[0]);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_4();
  v127[2] = v7;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_91();
  v127[1] = v9;
  OUTLINED_FUNCTION_70_0();
  v10 = sub_1AC79FB18();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v11);
  v18 = v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v127 - v19;
  v21 = MEMORY[0x1E69E7CC0];
  v135[0] = MEMORY[0x1E69E7CC0];
  v22 = *(v13 + 16);
  v22(v127 - v19, v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v10);
  v129 = v3;
  v22(v18, v3, v10);
  OUTLINED_FUNCTION_3_16();
  sub_1AC753294(v23, v24);
  LOBYTE(v22) = sub_1AC79FED8();
  v130 = v0;
  if ((v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_17();
    OUTLINED_FUNCTION_48_10();
    MEMORY[0x1B26E8C40](0x656C61636F6CLL, 0xE600000000000000);
    OUTLINED_FUNCTION_10_20();
    OUTLINED_FUNCTION_167_0();
    sub_1AC7A0AF8();
    OUTLINED_FUNCTION_9_19();
    OUTLINED_FUNCTION_148_3();
    OUTLINED_FUNCTION_167_0();
    sub_1AC7A0AF8();
    v26 = v133;
    v25 = v134;
    OUTLINED_FUNCTION_15_15();
    sub_1AC703BFC();
    v27 = *(v135[0] + 16);
    sub_1AC703D34(v27);
    v21 = v135[0];
    *(v135[0] + 16) = v27 + 1;
    v28 = v21 + 16 * v27;
    *(v28 + 32) = v26;
    *(v28 + 40) = v25;
    v1 = v130;
    OUTLINED_FUNCTION_90_7();
  }

  v30 = *(v13 + 8);
  v29 = v13 + 8;
  v31 = OUTLINED_FUNCTION_98_3();
  v30(v31);
  (v30)(v20, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v33 = (v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName));
  v34 = *&v33[4]._os_unfair_lock_opaque;
  if (v34)
  {
    *(inited + 32) = *&v33[2]._os_unfair_lock_opaque;
    *(inited + 40) = v34;

    os_unfair_lock_unlock(v33);
    v35 = sub_1AC608FF4(inited);
    v131 = type metadata accessor for SpeechRecognizerSupportedFeatures();
    v36 = v129;
    v37 = *&v129[v131[5]];

    sub_1AC609A84();
    OUTLINED_FUNCTION_142_2();
    if ((v38 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0x6D616E206B736174, 0xE900000000000065);
      OUTLINED_FUNCTION_10_20();
      v132 = v35;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9A8, &qword_1AC7A7A20);
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      v39 = OUTLINED_FUNCTION_9_19();
      MEMORY[0x1B26E8C40](v39, v29);
      v132 = v37;
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      v40 = v133;
      v41 = v134;
      OUTLINED_FUNCTION_15_15();
      v33 = v135;
      sub_1AC703BFC();
      OUTLINED_FUNCTION_46_10();
      OUTLINED_FUNCTION_12_14();
      *(v42 + 32) = v40;
      *(v42 + 40) = v41;
      OUTLINED_FUNCTION_90_7();
    }

    v43 = *(v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_singleUtterance);
    v44 = v36[v131[6]];
    if (v43 != v44)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0xD000000000000010, 0x80000001AC7BA300);
      OUTLINED_FUNCTION_10_20();
      LOBYTE(v132) = v43;
      v21 = MEMORY[0x1E69E7068];
      OUTLINED_FUNCTION_32_13();
      v45 = OUTLINED_FUNCTION_9_19();
      MEMORY[0x1B26E8C40](v45, v29);
      LOBYTE(v132) = v44;
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_15_15();
      v33 = v135;
      sub_1AC703BFC();
      sub_1AC703D34(*(v135[0] + 16));
      OUTLINED_FUNCTION_85_8();
    }

    v46 = *(v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_concatenateUtterances);
    v47 = v36[v131[7]];
    if (v46 != v47)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0xD000000000000016, 0x80000001AC7BA320);
      OUTLINED_FUNCTION_10_20();
      LOBYTE(v132) = v46;
      v21 = MEMORY[0x1E69E7068];
      OUTLINED_FUNCTION_32_13();
      v48 = OUTLINED_FUNCTION_9_19();
      MEMORY[0x1B26E8C40](v48, v29);
      LOBYTE(v132) = v47;
      OUTLINED_FUNCTION_32_13();
      OUTLINED_FUNCTION_15_15();
      v33 = v135;
      sub_1AC703BFC();
      sub_1AC703D34(*(v135[0] + 16));
      OUTLINED_FUNCTION_85_8();
    }

    sub_1AC72464C();
    v50 = v49;
    v128 = OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions;
    v51 = *(v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions);

    OUTLINED_FUNCTION_45_12();
    sub_1AC7520FC(v50, v51, v52);
    v54 = v53;
    v55 = *&v36[v131[14]];

    v127[3] = v55;
    sub_1AC7520FC(v50, v55, v33);
    v57 = v56;
    if ((sub_1AC61C254(v56) & 1) == 0)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0xD000000000000012, 0x80000001AC7BA340);
      OUTLINED_FUNCTION_10_20();
      v132 = v54;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA38, &unk_1AC7AB4D0);
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      v58 = OUTLINED_FUNCTION_9_19();
      MEMORY[0x1B26E8C40](v58, v29);
      v132 = v57;
      OUTLINED_FUNCTION_7_22();
      v1 = v130;
      sub_1AC7A0AF8();
      OUTLINED_FUNCTION_15_15();
      sub_1AC703BFC();
      OUTLINED_FUNCTION_46_10();
      OUTLINED_FUNCTION_12_14();
      OUTLINED_FUNCTION_84_4(v59);
    }

    v60 = v128;
    if (sub_1AC637EF8(1, *(v1 + v128)))
    {
      sub_1AC72464C();
      v62 = v61;
      v63 = *(v1 + v60);

      sub_1AC7520FC(v62, v63, sub_1AC618B3C);
      v65 = v64;

      v66 = OUTLINED_FUNCTION_98_3();
      sub_1AC7520FC(v66, v67, sub_1AC618B3C);
      v69 = v68;
      if ((sub_1AC623E28(v65, v68) & 1) == 0)
      {
        OUTLINED_FUNCTION_16_17();
        OUTLINED_FUNCTION_48_10();
        MEMORY[0x1B26E8C40](0xD000000000000020, 0x80000001AC7BA3C0);
        OUTLINED_FUNCTION_10_20();
        v132 = v65;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA38, &unk_1AC7AB4D0);
        OUTLINED_FUNCTION_7_22();
        sub_1AC7A0AF8();
        v70 = OUTLINED_FUNCTION_9_19();
        MEMORY[0x1B26E8C40](v70, v29);
        v132 = v69;
        OUTLINED_FUNCTION_7_22();
        v1 = v130;
        sub_1AC7A0AF8();
        OUTLINED_FUNCTION_15_15();
        sub_1AC703BFC();
        OUTLINED_FUNCTION_46_10();
        OUTLINED_FUNCTION_12_14();
        OUTLINED_FUNCTION_84_4(v71);
      }
    }

    sub_1AC724638();
    v73 = v72;
    v74 = OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions;
    v75 = *(v1 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions);

    OUTLINED_FUNCTION_44_9();
    sub_1AC7520FC(v73, v75, v76);
    v78 = v77;
    v79 = *&v129[v131[15]];

    sub_1AC7520FC(v73, v79, v1);
    v81 = v80;
    if ((sub_1AC623E28(v78, v80) & 1) == 0)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0xD00000000000001CLL, 0x80000001AC7BA360);
      OUTLINED_FUNCTION_10_20();
      v132 = v78;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF50, &qword_1AC7B2C40);
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      OUTLINED_FUNCTION_9_19();
      OUTLINED_FUNCTION_148_3();
      v132 = v81;
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      v82 = v133;
      v29 = v134;
      OUTLINED_FUNCTION_15_15();
      sub_1AC703BFC();
      OUTLINED_FUNCTION_46_10();
      OUTLINED_FUNCTION_12_14();
      *(v83 + 32) = v82;
      *(v83 + 40) = v29;
      OUTLINED_FUNCTION_142_2();
      OUTLINED_FUNCTION_90_7();
    }

    sub_1AC724638();
    v85 = v84;
    v86 = *(v130 + v74);

    OUTLINED_FUNCTION_44_9();
    sub_1AC7520FC(v85, v86, v87);
    v89 = v88;

    sub_1AC7520FC(v85, v79, v81);
    v91 = v90;
    if ((sub_1AC61C254(v90) & 1) == 0)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0xD00000000000001ELL, 0x80000001AC7BA380);
      OUTLINED_FUNCTION_10_20();
      v132 = v89;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF50, &qword_1AC7B2C40);
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      v92 = OUTLINED_FUNCTION_9_19();
      MEMORY[0x1B26E8C40](v92, v29);
      v132 = v91;
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      OUTLINED_FUNCTION_15_15();
      sub_1AC703BFC();
      OUTLINED_FUNCTION_46_10();
      OUTLINED_FUNCTION_12_14();
      OUTLINED_FUNCTION_84_4(v93);
    }

    v94 = v130;
    sub_1AC5C6E6C();
    v95 = v131[9];
    sub_1AC5C6E6C();
    sub_1AC6F80EC();
    if ((v96 & 1) == 0)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0x706F206C65646F6DLL, 0xED0000736E6F6974);
      OUTLINED_FUNCTION_10_20();
      v21 = MEMORY[0x1E69E7068];
      OUTLINED_FUNCTION_167_0();
      sub_1AC7A0AF8();
      v97 = OUTLINED_FUNCTION_9_19();
      MEMORY[0x1B26E8C40](v97, v29);
      OUTLINED_FUNCTION_167_0();
      sub_1AC7A0AF8();
      OUTLINED_FUNCTION_15_15();
      sub_1AC703BFC();
      OUTLINED_FUNCTION_46_10();
      OUTLINED_FUNCTION_12_14();
      OUTLINED_FUNCTION_84_4(v98);
    }

    v99 = OUTLINED_FUNCTION_390();
    sub_1AC5C720C(v99, v100, &unk_1AC7A8790);
    v101 = OUTLINED_FUNCTION_388();
    sub_1AC5C720C(v101, v102, &unk_1AC7A8790);
    sub_1AC72464C();
    v104 = v103;
    v105 = *(v94 + v128);

    sub_1AC7520FC(v104, v105, sub_1AC618B3C);
    v107 = v106;

    v108 = OUTLINED_FUNCTION_98_3();
    sub_1AC7520FC(v108, v109, sub_1AC618B3C);
    v111 = v110;
    v112 = OUTLINED_FUNCTION_62_4();
    if ((sub_1AC623E28(v112, v113) & 1) == 0)
    {
      OUTLINED_FUNCTION_16_17();
      OUTLINED_FUNCTION_48_10();
      MEMORY[0x1B26E8C40](0xD00000000000001CLL, 0x80000001AC7BA3A0);
      OUTLINED_FUNCTION_10_20();
      v132 = v107;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA38, &unk_1AC7AB4D0);
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      v114 = OUTLINED_FUNCTION_9_19();
      MEMORY[0x1B26E8C40](v114, v29);
      v132 = v111;
      OUTLINED_FUNCTION_7_22();
      sub_1AC7A0AF8();
      v115 = v133;
      v116 = v134;
      OUTLINED_FUNCTION_15_15();
      sub_1AC703BFC();
      OUTLINED_FUNCTION_46_10();
      OUTLINED_FUNCTION_12_14();
      *(v117 + 32) = v115;
      *(v117 + 40) = v116;
      OUTLINED_FUNCTION_90_7();
    }

    if (*(v21 + 16))
    {
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v118 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v118, qword_1ED9386C8);
      v119 = sub_1AC79FDC8();
      v120 = sub_1AC7A05E8();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = OUTLINED_FUNCTION_150();
        v122 = OUTLINED_FUNCTION_48();
        v133 = v122;
        *v121 = 136315138;
        v132 = v21;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
        sub_1AC5C8B9C(&qword_1EB56AC88, &unk_1EB56C640, &unk_1AC7A9BE0);
        v123 = sub_1AC79FEA8();
        v125 = v124;

        v126 = sub_1AC5CFE74(v123, v125, &v133);

        *(v121 + 4) = v126;
        _os_log_impl(&dword_1AC5BC000, v119, v120, "Transcriber.isWorkerUsable: Worker not usable because %s", v121, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v122);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_77_1();
      }
    }

    else
    {
    }

    OUTLINED_FUNCTION_105();
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC7452F0()
{
  OUTLINED_FUNCTION_104();
  v2 = v0;
  v4 = v3;
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v9 = OUTLINED_FUNCTION_184_0();
  sub_1AC61B924(v9, v10);
  v101 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions);
  v12 = v5[14];
  v11 = v5[15];
  v13 = *(v1 + v12);
  v14 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions);
  v15 = *(v1 + v11);
  v16 = OBJC_IVAR____TtC6Speech17TranscriberCommon_locale;

  if ((MEMORY[0x1B26E85C0](v2 + v16, v1) & 1) == 0)
  {

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v30 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v30, qword_1ED9386C8);
    v31 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_36_11();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_52_7(v33);
      OUTLINED_FUNCTION_50_9(&dword_1AC5BC000, v34, v35, "Transcriber.makeWorkerUsable: Locale different, cannot make usable");
      OUTLINED_FUNCTION_70();
    }

    OUTLINED_FUNCTION_4_18();
    sub_1AC753538(v1, v36);
    v37 = 1;
    v18 = v5;
    v21 = v4;
    goto LABEL_19;
  }

  v17 = v5[9];
  sub_1AC6F80EC();
  v18 = v5;
  if ((v19 & 1) == 0)
  {

    v21 = v4;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v38 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v38, qword_1ED9386C8);
    v23 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_36_11();
    if (!os_log_type_enabled(v23, v39))
    {
      goto LABEL_18;
    }

    v40 = OUTLINED_FUNCTION_20();
    v26 = v18;
    OUTLINED_FUNCTION_52_7(v40);
    v29 = "Transcriber.makeWorkerUsable: Model options different, cannot make usable";
    goto LABEL_17;
  }

  v20 = *(v1 + v5[6]);
  v21 = v4;
  if (*(v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon_singleUtterance) != v20)
  {

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v22 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v22, qword_1ED9386C8);
    v23 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_36_11();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_18;
    }

    v25 = OUTLINED_FUNCTION_20();
    v26 = v18;
    OUTLINED_FUNCTION_52_7(v25);
    v29 = "Transcriber.makeWorkerUsable: Single-utterance hints different, cannot make usable";
LABEL_17:
    OUTLINED_FUNCTION_50_9(&dword_1AC5BC000, v27, v28, v29);
    v18 = v26;
    OUTLINED_FUNCTION_70();
LABEL_18:

    OUTLINED_FUNCTION_4_18();
    sub_1AC753538(v1, v41);
    v37 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v21, v37, 1, v18);
    OUTLINED_FUNCTION_105();
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon_concatenateUtterances) != *(v1 + *(v18 + 28)))
  {

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v42 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v42, qword_1ED9386C8);
    v23 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_36_11();
    if (!os_log_type_enabled(v23, v43))
    {
      goto LABEL_18;
    }

    v44 = OUTLINED_FUNCTION_20();
    v26 = v18;
    OUTLINED_FUNCTION_52_7(v44);
    v29 = "Transcriber.makeWorkerUsable: Concatenate-utterances option different, cannot make usable";
    goto LABEL_17;
  }

  v99 = v4;
  v100 = v18;
  v98 = v14;
  v45 = *(v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames);
  if (!v45[2])
  {
    __break(1u);
    goto LABEL_59;
  }

  v46 = v45[4];
  v47 = v45[5];

  v48 = sub_1AC79FF58();

  v49 = SFEntitledAssetTypeForTaskName(v48);

  sub_1AC625D20(*(v1 + *(v100 + 20)));
  if (!v50)
  {
    __break(1u);
    goto LABEL_61;
  }

  v51 = sub_1AC79FF58();

  v52 = SFEntitledAssetTypeForTaskName(v51);

  if (v49 != v52)
  {

    v21 = v4;
    if (off_1ED937D60 == -1)
    {
LABEL_37:
      v67 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v67, qword_1ED9386C8);
      v61 = sub_1AC79FDC8();
      sub_1AC7A05E8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v61, v68))
      {
LABEL_56:

        OUTLINED_FUNCTION_4_18();
        sub_1AC753538(v1, v97);
        v37 = 1;
LABEL_57:
        v18 = v100;
        goto LABEL_19;
      }

      v69 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_52_7(v69);
      v66 = "Transcriber.makeWorkerUsable: Asset types for hints different, cannot make usable";
LABEL_55:
      OUTLINED_FUNCTION_50_9(&dword_1AC5BC000, v64, v65, v66);
      OUTLINED_FUNCTION_70();
      goto LABEL_56;
    }

LABEL_59:
    OUTLINED_FUNCTION_3_0();
    swift_once();
    goto LABEL_37;
  }

  v21 = v4;
  if ((sub_1AC637EF8(1, v101) & 1) == 0)
  {
    goto LABEL_40;
  }

  v53 = v13;
  if (sub_1AC637EF8(1, v13))
  {
    sub_1AC72464C();
    v55 = v54;

    OUTLINED_FUNCTION_45_12();
    sub_1AC7520FC(v55, v101, v56);
    v58 = v57;

    sub_1AC7520FC(v55, v13, v49);
    OUTLINED_FUNCTION_86();

    LOBYTE(v55) = sub_1AC623E28(v58, v49);
    v21 = v99;

    v53 = v13;

    if ((v55 & 1) == 0)
    {

      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3_0();
        swift_once();
      }

      v94 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v94, qword_1ED9386C8);
      v61 = sub_1AC79FDC8();
      sub_1AC7A05E8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v61, v95))
      {
        goto LABEL_56;
      }

      v96 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_52_7(v96);
      v66 = "Transcriber.makeWorkerUsable: Must-match transcription options different, cannot make usable";
      goto LABEL_55;
    }
  }

  v59 = sub_1AC637EF8(5, v101) & 1;
  if (v59 != (sub_1AC637EF8(5, v53) & 1))
  {

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v60 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v60, qword_1ED9386C8);
    v61 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_36_11();
    if (!os_log_type_enabled(v61, v62))
    {
      goto LABEL_56;
    }

    v63 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_52_7(v63);
    v66 = "Transcriber.makeWorkerUsable: Must-match flags different, cannot make usable";
    goto LABEL_55;
  }

  sub_1AC72CAE0(v101);
  sub_1AC617030();
  v71 = v70;

  *(v1 + v12) = v71;
LABEL_40:
  sub_1AC724638();
  v73 = v72;

  sub_1AC7520FC(v73, v98, sub_1AC618B28);
  sub_1AC7520FC(v73, v15, sub_1AC618B28);
  OUTLINED_FUNCTION_86();

  v74 = OUTLINED_FUNCTION_390();
  LOBYTE(v73) = sub_1AC623E28(v74, v75);

  if ((v73 & 1) == 0)
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v91 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v91, qword_1ED9386C8);
    v61 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_36_11();
    if (!os_log_type_enabled(v61, v92))
    {
      goto LABEL_56;
    }

    v93 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_52_7(v93);
    v66 = "Transcriber.makeWorkerUsable: Must-match reporting options different, cannot make usable";
    goto LABEL_55;
  }

  sub_1AC724638();
  v77 = v76;

  sub_1AC7520FC(v77, v98, sub_1AC618B28);
  v79 = v78;

  sub_1AC72CAF8(v79);
  sub_1AC6170AC();
  v81 = v80;

  *(v1 + v11) = v81;
  v82 = v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName));
  if (*(v82 + 16))
  {
    v83 = *(v82 + 8);
    v84 = *(v82 + 16);

    os_unfair_lock_unlock(v82);
    sub_1AC610168();

    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }

    v85 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v85, qword_1ED9386C8);
    v86 = sub_1AC79FDC8();
    sub_1AC7A05E8();
    OUTLINED_FUNCTION_36_11();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_52_7(v88);
      OUTLINED_FUNCTION_50_9(&dword_1AC5BC000, v89, v90, "Transcriber.makeWorkerUsable: Made usable");
      OUTLINED_FUNCTION_70();
    }

    sub_1AC706CAC();
    v37 = 0;
    goto LABEL_57;
  }

LABEL_61:
  __break(1u);
}

void sub_1AC745BFC()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = sub_1AC79FB18();
  v10 = OUTLINED_FUNCTION_40(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6();
  v17 = v16 - v15;
  v18 = v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName));
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);

    os_unfair_lock_unlock(v18);
    v51 = v12;
    v22 = *(v12 + 16);
    v22(v17, v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AC7A6D00;
    *(inited + 32) = v20;
    *(inited + 40) = v19;
    sub_1AC7244B8();
    v43 = v24;
    HIDWORD(v42) = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_singleUtterance);
    v50 = v9;
    v25 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_concatenateUtterances);
    sub_1AC5C6E6C();
    v26 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions);
    v44 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions);
    v45 = v26;
    v27 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions);
    v28 = type metadata accessor for SpeechRecognizerSupportedFeatures();
    v29 = v17;
    v49 = v17;
    v30 = v28;
    v31 = v2 + v28[10];
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 24) = 256;
    *(v31 + 16) = 0;
    v46 = v8;
    v32 = v28[11];
    *(v2 + v32) = 3;
    v33 = MEMORY[0x1E69E7CD0];
    v47 = v28[14];
    *(v2 + v47) = MEMORY[0x1E69E7CD0];
    v48 = v28[15];
    *(v2 + v48) = v33;
    v22(v2, v29, v9);
    *(v2 + v30[5]) = v43;
    *(v2 + v30[6]) = BYTE4(v42);
    *(v2 + v30[7]) = v25;
    *(v2 + v30[8]) = 0;
    v34 = v30[9];
    sub_1AC5C6E6C();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 0;
    *(v31 + 24) = 256;
    *(v2 + v32) = 3;
    *(v2 + v30[13]) = v27;
    v52 = &unk_1F212F610;
    v53 = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA38, &unk_1AC7AB4D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA40, qword_1AC7B2AA0);
    sub_1AC5C8B9C(&qword_1EB56ABF0, &qword_1EB56CA38, &unk_1AC7AB4D0);
    OUTLINED_FUNCTION_94_1();
    sub_1AC5C8B9C(v35, v36, v37);
    sub_1AC6AA608();
    v38 = sub_1AC7A04B8();
    v39 = v2 + v30[12];
    *v39 = v38 & 1;
    *(v39 + 8) = 0;
    sub_1AC617030();
    *(v2 + v47) = v40;
    sub_1AC6170AC();
    *(v2 + v48) = v41;
    sub_1AC5C720C(v46, &qword_1EB56C318, &unk_1AC7A8790);
    (*(v51 + 8))(v49, v50);
    OUTLINED_FUNCTION_105();
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC746008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, int32_t a26, unsigned __int8 *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  OUTLINED_FUNCTION_104();
  v32 = v31;
  v219 = v33;
  v220 = v34;
  v217 = v35;
  v218 = v36;
  v222 = v37;
  v39 = v38;
  v41 = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC0, &qword_1AC7B2B98);
  v43 = OUTLINED_FUNCTION_40(v42);
  v201 = v44;
  v202 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_89_1();
  v200 = v48;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_40(v215);
  v204 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_89_1();
  v203 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF00, &qword_1AC7B2BE8);
  v55 = OUTLINED_FUNCTION_40(v54);
  v206 = v56;
  v207 = v55;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_89_1();
  v205 = v60;
  OUTLINED_FUNCTION_70_0();
  v199 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v61 = OUTLINED_FUNCTION_80(v199);
  v63 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_6();
  v198 = v65 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  OUTLINED_FUNCTION_40(v66);
  v211 = v67;
  v69 = *(v68 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_89_1();
  v210 = v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  v73 = OUTLINED_FUNCTION_167(v72);
  v75 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_2_4();
  v209 = v76;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_91();
  v212 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  v80 = OUTLINED_FUNCTION_167(v79);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_2_4();
  v214 = v83;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_91();
  v216 = v85;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF10, &qword_1AC7B2BF8);
  OUTLINED_FUNCTION_40(v224);
  v208 = v86;
  v88 = *(v87 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_89_1();
  v223 = v90;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v91);
  v93 = *(v92 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v187 - v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40(v97);
  v99 = v98;
  v101 = *(v100 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_89_1();
  v225 = v103;
  v104 = *a27;
  v105 = *(v31 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions);
  v106 = sub_1AC637EF8(5, v105);
  v221 = v104;
  if (v104 != 6 || (v106 & 1) != 0)
  {
    v107 = sub_1AC637EF8(0, v105);
    if (v221 > 2 || (v107 & 1) != 0)
    {
      v108 = *(v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions);
      if (sub_1AC637EF8(1, v108) & 1) != 0 || (v109 = sub_1AC637EF8(0, v108), v219 = v39, v220 = v222, v218 = v41, (v109))
      {
        v191 = v99;
        v192 = a23;
        sub_1AC5C6E6C();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v96, 1, v97);
        p_cache = _TtC6Speech22SpeechRecognizerWorker.cache;
        v193 = v66;
        v190 = a24;
        v189 = a26;
        v188 = a29;
        if (EnumTagSinglePayload == 1)
        {
          sub_1AC5C720C(v96, &qword_1EB56DF18, &qword_1AC7B2C00);
          v112 = a25;
        }

        else
        {
          v113 = *(v191 + 32);
          v213 = v97;
          v113(v225, v96, v97);
          LOBYTE(v230[0]) = v221;
          v114 = *a29;
          v115 = *(a29 + 8);
          v116 = *(a29 + 16);
          v187 = a25;
          v117 = sub_1AC74C65C(v219, v220, v218, v230, v217, v114, v115, v116, v192, a24, a25, a26, a31 & 1);
          v119 = v117;
          v120 = *(v117 + 16);
          if (v120)
          {
            v196 = OBJC_IVAR____TtC6Speech17TranscriberCommon_redact;
            v222 = (v208 + 8);
            v208 = "erCommon.MultisegmentResult";
            v121 = 32;
            *&v118 = 136315138;
            v195 = v118;
            v194 = 0xD00000000000001FLL;
            v122 = v213;
            v197 = v117;
            do
            {
              memcpy(v231, (v119 + v121), 0x50uLL);
              memcpy(v230, v231, 0x50uLL);
              sub_1AC753388(v231, v228);
              sub_1AC753388(v231, v228);
              v123 = v223;
              sub_1AC7A0388();
              (*v222)(v123, v224);
              if (p_cache[428] != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              v124 = sub_1AC79FDE8();
              OUTLINED_FUNCTION_10_3(v124, qword_1ED9386C8);
              sub_1AC753388(v231, v230);

              v125 = sub_1AC79FDC8();
              v126 = sub_1AC7A05E8();
              sub_1AC7533E4(v231);

              if (os_log_type_enabled(v125, v126))
              {
                v127 = OUTLINED_FUNCTION_150();
                v128 = OUTLINED_FUNCTION_48();
                v230[0] = v128;
                *v127 = v195;
                v129 = v32;
                v130 = sub_1AC637EB4(v231, *(v32 + v196), v194, v208 | 0x8000000000000000);
                v132 = v131;
                sub_1AC7533E4(v231);
                v133 = sub_1AC5CFE74(v130, v132, v230);

                *(v127 + 4) = v133;
                v32 = v129;
                v122 = v213;
                _os_log_impl(&dword_1AC5BC000, v125, v126, "Transcriber: Yielded result %s", v127, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v128);
                p_cache = (_TtC6Speech22SpeechRecognizerWorker + 16);
                OUTLINED_FUNCTION_70();
                v119 = v197;
                OUTLINED_FUNCTION_70();
              }

              else
              {

                sub_1AC7533E4(v231);
              }

              v121 += 80;
              --v120;
            }

            while (v120);

            (*(v191 + 8))(v225, v122);
            v66 = v193;
            v112 = v187;
          }

          else
          {

            if (off_1ED937D60 != -1)
            {
              OUTLINED_FUNCTION_3_0();
              swift_once();
            }

            v134 = sub_1AC79FDE8();
            OUTLINED_FUNCTION_10_3(v134, qword_1ED9386C8);
            v135 = sub_1AC79FDC8();
            v136 = sub_1AC7A05E8();
            v137 = OUTLINED_FUNCTION_366(v136);
            v112 = v187;
            v138 = v191;
            if (v137)
            {
              v139 = OUTLINED_FUNCTION_20();
              *v139 = 0;
              _os_log_impl(&dword_1AC5BC000, v135, v136, "Transcriber: Skipped internal or empty results", v139, 2u);
              OUTLINED_FUNCTION_96_0();
            }

            (*(v138 + 8))(v225, v213);
            v66 = v193;
          }
        }

        v140 = v216;
        OUTLINED_FUNCTION_99_2();
        sub_1AC5C6E6C();
        v141 = __swift_getEnumTagSinglePayload(v140, 1, v66);
        sub_1AC5C720C(v140, &qword_1EB56DF08, &qword_1AC7B2BF0);
        v142 = v193;
        if (v141 != 1 || (v143 = v212, OUTLINED_FUNCTION_99_2(), sub_1AC5C6E6C(), v144 = __swift_getEnumTagSinglePayload(v143, 1, v215), v145 = OUTLINED_FUNCTION_390(), sub_1AC5C720C(v145, v146, &unk_1AC7B2BA0), v142 = v193, v144 != 1))
        {
          v147 = v221;
          LOBYTE(v230[0]) = v221;
          sub_1AC74EF48(v217, v218, v219, v220, a22, v192, v190, v112, v229, v189, v230, a28, v188);
          memcpy(v230, v229, 0x101uLL);
          v148 = v214;
          sub_1AC5C6E6C();
          v149 = OUTLINED_FUNCTION_55_2();
          OUTLINED_FUNCTION_96(v149, v150, v142);
          if (!v151)
          {
            v157 = v210;
            v156 = v211;
            v158 = *(v211 + 32);
            v159 = OUTLINED_FUNCTION_388();
            v160(v159);
            if (v147 - 3 <= 1 && (v161 = v198, sub_1AC745BFC(), v162 = *(v161 + *(v199 + 28)), OUTLINED_FUNCTION_4_18(), sub_1AC753538(v161, v163), v162 == 1))
            {
              v164 = (v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
              os_unfair_lock_lock((v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult));
              memcpy(v227, &v164[2], 0x101uLL);
              sub_1AC5C720C(v227, &qword_1EB56DF28, &unk_1AC7B2C10);
              memcpy(v228, v229, 0x101uLL);
              nullsub_1(v228, v165);
              memcpy(&v164[2], v228, 0x101uLL);
              sub_1AC75332C(v230, v226);
              os_unfair_lock_unlock(v164);
              if (off_1ED937D60 != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              v166 = sub_1AC79FDE8();
              OUTLINED_FUNCTION_10_3(v166, qword_1ED9386C8);

              sub_1AC75332C(v230, v226);
              v167 = sub_1AC79FDC8();
              v168 = sub_1AC7A05E8();
              sub_1AC7532D8(v230);

              if (os_log_type_enabled(v167, v168))
              {
                v169 = OUTLINED_FUNCTION_150();
                v226[0] = OUTLINED_FUNCTION_48();
                *v169 = 136315138;
                OUTLINED_FUNCTION_56_6(*(v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_redact), "Speech.TranscriberCommon.MultisegmentResult");
                OUTLINED_FUNCTION_115_4();
                v170 = sub_1AC5CFE74(v142, v32, v226);

                *(v169 + 4) = v170;
                v172 = "Transcriber: Saved end-of-recognition result %s";
LABEL_40:
                OUTLINED_FUNCTION_187(&dword_1AC5BC000, v171, v168, v172);
                OUTLINED_FUNCTION_19_15();
                OUTLINED_FUNCTION_77_1();
LABEL_46:

                (*(v156 + 8))(v157, v193);
                goto LABEL_49;
              }
            }

            else
            {
              memcpy(v228, v230, 0x101uLL);
              sub_1AC75332C(v230, v227);
              v173 = v205;
              sub_1AC7A0388();
              (*(v206 + 8))(v173, v207);
              if (off_1ED937D60 != -1)
              {
                OUTLINED_FUNCTION_3_0();
                swift_once();
              }

              v174 = sub_1AC79FDE8();
              OUTLINED_FUNCTION_10_3(v174, qword_1ED9386C8);

              sub_1AC75332C(v230, v228);
              v167 = sub_1AC79FDC8();
              v168 = sub_1AC7A05E8();
              sub_1AC7532D8(v230);

              if (os_log_type_enabled(v167, v168))
              {
                v175 = OUTLINED_FUNCTION_150();
                v228[0] = OUTLINED_FUNCTION_48();
                *v175 = 136315138;
                OUTLINED_FUNCTION_56_6(*(v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_redact), "Speech.TranscriberCommon.MultisegmentResult");
                OUTLINED_FUNCTION_115_4();
                v176 = sub_1AC5CFE74(v142, v32, v228);

                *(v175 + 4) = v176;
                v172 = "Transcriber: Yielded result %s";
                goto LABEL_40;
              }
            }

            sub_1AC7532D8(v230);
            goto LABEL_46;
          }

          sub_1AC5C720C(v148, &qword_1EB56DF08, &qword_1AC7B2BF0);
          v152 = v209;
          sub_1AC5C6E6C();
          v153 = OUTLINED_FUNCTION_55_2();
          v154 = v215;
          OUTLINED_FUNCTION_96(v153, v155, v215);
          if (v151)
          {
            sub_1AC7532D8(v230);
            sub_1AC5C720C(v152, &qword_1EB56DEC8, &unk_1AC7B2BA0);
          }

          else
          {
            v178 = v203;
            v177 = v204;
            (*(v204 + 32))(v203, v152, v154);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF20, &qword_1AC7B2C08);
            v179 = swift_allocObject();
            *(v179 + 16) = xmmword_1AC7A6D00;
            *(v179 + 32) = 48;
            *(v179 + 40) = 0xE100000000000000;
            memcpy((v179 + 48), v230, 0x101uLL);
            sub_1AC75332C(v230, v228);
            v228[0] = sub_1AC79FE38();
            v180 = v200;
            sub_1AC7A0388();
            (*(v201 + 8))(v180, v202);
            if (off_1ED937D60 != -1)
            {
              OUTLINED_FUNCTION_3_0();
              swift_once();
            }

            v181 = sub_1AC79FDE8();
            OUTLINED_FUNCTION_10_3(v181, qword_1ED9386C8);

            sub_1AC75332C(v230, v228);
            v182 = sub_1AC79FDC8();
            v183 = sub_1AC7A05E8();
            sub_1AC7532D8(v230);

            if (os_log_type_enabled(v182, v183))
            {
              v184 = OUTLINED_FUNCTION_150();
              v228[0] = OUTLINED_FUNCTION_48();
              *v184 = 136315138;
              OUTLINED_FUNCTION_56_6(*(v32 + OBJC_IVAR____TtC6Speech17TranscriberCommon_redact), "Speech.TranscriberCommon.MultisegmentResult");
              OUTLINED_FUNCTION_115_4();
              v185 = sub_1AC5CFE74(v180, v32, v228);

              *(v184 + 4) = v185;
              OUTLINED_FUNCTION_187(&dword_1AC5BC000, v186, v183, "Transcriber: Yielded MUX partial result %s");
              OUTLINED_FUNCTION_19_15();
              OUTLINED_FUNCTION_77_1();
            }

            else
            {
              sub_1AC7532D8(v230);
            }

            (*(v177 + 8))(v178, v154);
          }
        }
      }
    }
  }

LABEL_49:
  OUTLINED_FUNCTION_105();
}

void sub_1AC746F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _OWORD *a21)
{
  OUTLINED_FUNCTION_104();
  v114 = v23;
  v121 = v24;
  v113 = v25;
  v111 = v26;
  v112 = v27;
  v109 = v28;
  v110 = v29;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC0, &qword_1AC7B2B98);
  OUTLINED_FUNCTION_40(v32);
  v102 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_89_1();
  v101 = v37;
  v38 = &unk_1AC7B2BA0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  OUTLINED_FUNCTION_167(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_72_5();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_40(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v97 - v49;
  v108 = *v121;
  v121 = v21;
  OUTLINED_FUNCTION_94_1();
  sub_1AC5C6E6C();
  v51 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v51, v52, v43);
  if (v53)
  {
    sub_1AC5C720C(v22, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  }

  else
  {
    v97 = v32;
    v105 = a21;
    v98 = v50;
    v99 = v45;
    v54 = *(v45 + 32);
    v100 = v43;
    v54(v50, v22, v43);
    v55 = v31 + 64;
    v56 = 1 << *(v31 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v31 + 64);
    v106 = OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions;
    v59 = (v56 + 63) >> 6;

    v60 = 0;
    v61 = MEMORY[0x1E69E7CC8];
    v103 = v59;
    v104 = v31 + 64;
    v107 = v31;
    if (v58)
    {
      while (1)
      {
        v120 = v61;
LABEL_12:
        v63 = __clz(__rbit64(v58)) | (v60 << 6);
        v64 = *(v31 + 56);
        v65 = (*(v31 + 48) + 16 * v63);
        v66 = v65[1];
        v115 = *v65;
        v67 = *(v64 + 8 * v63);
        v119 = v66;

        v68 = v67;
        v69 = [v68 recognition];
        v70 = [v69 nBest];

        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
        v118 = sub_1AC7A0158();

        v71 = [v68 recognition];
        v72 = [v71 tokenSausage];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
        v117 = sub_1AC7A0158();

        v73 = [v68 recognition];
        v74 = [v73 interpretationIndices];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
        OUTLINED_FUNCTION_117();
        sub_1AC7A0158();

        sub_1AC70AB64();
        v76 = v75;

        v77 = [v68 preITNRecognition];
        v78 = [v77 nBest];

        v116 = sub_1AC7A0158();
        v79 = [v68 preITNRecognition];
        v80 = [v79 tokenSausage];

        v81 = sub_1AC7A0158();
        v82 = [v68 preITNRecognition];
        v83 = [v82 interpretationIndices];

        sub_1AC7A0158();
        sub_1AC70AB64();
        v85 = v84;

        v86 = *&v121[v106];
        if (sub_1AC637EF8(1, v86))
        {

          v87 = v119;
          v88 = v120;
          v81 = v117;
          v89 = v118;
        }

        else
        {
          v89 = v116;

          if ((sub_1AC637EF8(0, v86) & 1) == 0)
          {

            (*(v99 + 8))(v98, v100);
            goto LABEL_22;
          }

          v76 = v85;
          v87 = v119;
          v88 = v120;
        }

        v58 &= v58 - 1;
        LOBYTE(v122) = v108;
        v38 = v68;
        sub_1AC74EF48(v109, v89, v81, v76, v68, v110, v111, v112, v123, v113, &v122, v114, v105);

        swift_isUniquelyReferenced_nonNull_native();
        v122 = v88;
        sub_1AC6E0D30(v123, v115, v87);

        v61 = v122;
        v31 = v107;
        v59 = v103;
        v55 = v104;
        if (!v58)
        {
          goto LABEL_8;
        }
      }
    }

    while (1)
    {
LABEL_8:
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v62 >= v59)
      {
        break;
      }

      v58 = *(v55 + 8 * v62);
      ++v60;
      if (v58)
      {
        v120 = v61;
        v60 = v62;
        goto LABEL_12;
      }
    }

    v122 = v61;
    v38 = v100;
    v90 = v101;
    v60 = v98;
    sub_1AC7A0388();
    (*(v102 + 8))(v90, v97);
    if (off_1ED937D60 == -1)
    {
      goto LABEL_19;
    }

LABEL_25:
    OUTLINED_FUNCTION_3_0();
    swift_once();
LABEL_19:
    v91 = sub_1AC79FDE8();
    OUTLINED_FUNCTION_10_3(v91, qword_1ED9386C8);
    v92 = sub_1AC79FDC8();
    v93 = sub_1AC7A05E8();
    v94 = OUTLINED_FUNCTION_366(v93);
    v95 = v99;
    if (v94)
    {
      v96 = OUTLINED_FUNCTION_20();
      *v96 = 0;
      _os_log_impl(&dword_1AC5BC000, v92, v93, "Transcriber: Yielded MUX result", v96, 2u);
      OUTLINED_FUNCTION_70();
    }

    (*(v95 + 8))(v60, v38);
  }

LABEL_22:
  OUTLINED_FUNCTION_105();
}

void sub_1AC7476CC()
{
  OUTLINED_FUNCTION_104();
  v81 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_89_1();
  v82 = v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_40(v83);
  v79 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_89_1();
  v78 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF00, &qword_1AC7B2BE8);
  v14 = OUTLINED_FUNCTION_40(v13);
  v72 = v15;
  v73 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_89_1();
  v71 = v19;
  OUTLINED_FUNCTION_70_0();
  v75 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v20 = OUTLINED_FUNCTION_80(v75);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_6();
  v74 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  OUTLINED_FUNCTION_167(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v70 - v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  OUTLINED_FUNCTION_40(v80);
  v77 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_89_1();
  v76 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v70 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40(v42);
  v44 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_602();
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v41, 1, v42);
  if (v48)
  {
    sub_1AC5C720C(v41, &qword_1EB56DF18, &qword_1AC7B2C00);
    v51 = v81;
  }

  else
  {
    (*(v44 + 32))(v1, v41, v42);
    v49 = v81;
    v86[0] = v81;
    v50 = v81;
    sub_1AC7A0398();
    (*(v44 + 8))(v1, v42);
    v51 = v49;
  }

  v52 = v0;
  sub_1AC5C6E6C();
  v53 = v80;
  OUTLINED_FUNCTION_96(v30, 1, v80);
  v54 = v83;
  if (v48)
  {
    sub_1AC5C720C(v30, &qword_1EB56DF08, &qword_1AC7B2BF0);
  }

  else
  {
    v56 = v76;
    v55 = v77;
    (*(v77 + 32))(v76, v30, v53);
    v57 = (v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
    os_unfair_lock_lock((v52 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult));
    memcpy(v85, &v57[2], 0x101uLL);
    sub_1AC5C6E6C();
    os_unfair_lock_unlock(v57);
    memcpy(v86, v85, 0x101uLL);
    v58 = sub_1AC753520(v86);
    if (v58 != 1)
    {
      v59 = v74;
      sub_1AC745BFC();
      v60 = *(v59 + *(v75 + 28));
      OUTLINED_FUNCTION_4_18();
      sub_1AC753538(v59, v61);
      if (v60 == 1)
      {
        memcpy(v84, v86, 0x101uLL);
        v62 = v71;
        sub_1AC7A0388();
        (*(v72 + 8))(v62, v73);
      }

      else
      {
        sub_1AC5C720C(v85, &qword_1EB56DF28, &unk_1AC7B2C10);
      }
    }

    v84[0] = v51;
    v63 = v51;
    sub_1AC7A0398();
    (*(v55 + 8))(v56, v53);
  }

  v64 = v82;
  sub_1AC5C6E6C();
  v65 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v65, v66, v54);
  if (v48)
  {
    sub_1AC5C720C(v64, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  }

  else
  {
    v68 = v78;
    v67 = v79;
    (*(v79 + 32))(v78, v64, v54);
    v86[0] = v51;
    v69 = v51;
    sub_1AC7A0398();
    (*(v67 + 8))(v68, v54);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC747CD8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEE0, &qword_1AC7B2BD0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(*v1 + 16);
  if (v9 == v10)
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  }

  else
  {
    if (v9 >= v10)
    {
      __break(1u);
    }

    else
    {
      v11 = sub_1AC79FBC8();
      v12 = *(v11 - 8);
      v13 = *(v12 + 16);
      v14 = v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v7 = v16;
      result = v13(&v7[v15], v14, v11);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_1AC637E08();
        return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC747E54()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = v0[4];
  if (!v3)
  {
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v4 >= ((v0[2] + 64) >> 6))
      {
        v0[3] = v2;
        v0[4] = 0;
        return OUTLINED_FUNCTION_62_4();
      }

      v3 = *(v0[1] + 8 * v4);
      ++v2;
      if (v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  v4 = v0[3];
LABEL_6:
  v5 = __clz(__rbit64(v3)) | (v4 << 6);
  v6 = (*(v1 + 48) + 16 * v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(*(v1 + 56) + 8 * v5);
  v0[3] = v4;
  v0[4] = (v3 - 1) & v3;
  v10 = v0[5];
  if (__OFADD__(v10, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v0[5] = v10 + 1;

  v11 = v9;
  return OUTLINED_FUNCTION_62_4();
}

void sub_1AC747F5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < a1 || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = a4(0);
    OUTLINED_FUNCTION_167(v6);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);

    OUTLINED_FUNCTION_99_2();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1AC748000()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t sub_1AC74809C()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_64_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t sub_1AC74814C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[2];
  v2 = sub_1AC5CB1A4();
  v0[3] = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC696140();
  }

  else
  {
    OUTLINED_FUNCTION_82();

    return v5();
  }
}

uint64_t sub_1AC748210()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3 & 1;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC748320()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_82();

  return v3();
}

uint64_t sub_1AC748380()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_82();
  v3 = *(v0 + 40);

  return v2(0);
}

uint64_t sub_1AC7483E0()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7432EC();
}

uint64_t sub_1AC748460()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC74857C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) version];

    sub_1AC79FF68();
  }

  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_89();

  return v5(v4);
}

uint64_t sub_1AC748624()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7432EC();
}

uint64_t sub_1AC7486A4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  *v3 = *v1;
  *(v2 + 24) = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1AC7487C0()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = [*(v0 + 24) acousticModelVersion];

    sub_1AC79FF68();
  }

  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_89();

  return v5(v4);
}

uint64_t sub_1AC748868(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1AC64FC18(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1AC747F5C(0, v5, a2, MEMORY[0x1E6969C28]);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC748910(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    v4 = sub_1AC64FC18(0, a1, v3);
    if (v5)
    {
      v6 = v3;
    }

    else
    {
      v6 = v4;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      sub_1AC5CA588(0, v6, a2);

      OUTLINED_FUNCTION_94_1();
      return;
    }
  }

  __break(1u);
}

void sub_1AC7489A0()
{
  OUTLINED_FUNCTION_104();
  v2 = v0;
  v284 = v3;
  v307 = v4;
  v304 = v5;
  v315 = v6;
  v8 = v7;
  v10 = v9;
  v270 = *v2;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF58, &qword_1AC7B2CA8);
  OUTLINED_FUNCTION_40(v298);
  v296 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_89_1();
  v295 = v15;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40(v297);
  v293 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_89_1();
  v292 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  v22 = OUTLINED_FUNCTION_167(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_4();
  v294 = v25;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_91();
  v299 = v27;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF60, &qword_1AC7B2CB0);
  OUTLINED_FUNCTION_40(v291);
  v289 = v28;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_89_1();
  v287 = v32;
  v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_40(v290);
  v286 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_89_1();
  v285 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  v39 = OUTLINED_FUNCTION_167(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_4();
  v288 = v42;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_91();
  v314 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v45);
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_89_1();
  v283 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF68, &unk_1AC7B2CB8);
  v51 = OUTLINED_FUNCTION_40(v50);
  v281 = v52;
  v282 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_89_1();
  v280 = v56;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40(v313);
  v306 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_89_1();
  v312 = v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  v63 = OUTLINED_FUNCTION_40(v62);
  v310 = v64;
  v311 = v63;
  v66 = *(v65 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_89_1();
  v309 = v68;
  OUTLINED_FUNCTION_70_0();
  v69 = sub_1AC79FDE8();
  v70 = OUTLINED_FUNCTION_40(v69);
  v273 = v71;
  v73 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_2_4();
  v278 = v74;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_26_0();
  v279 = v76;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_26_0();
  v301 = v78;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_26_0();
  v302 = v80;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_91();
  v272 = v82;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v83);
  v85 = *(v84 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_72_5();
  v87 = sub_1AC79FB18();
  v88 = OUTLINED_FUNCTION_40(v87);
  v90 = v89;
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_2_4();
  v303 = v93;
  OUTLINED_FUNCTION_34();
  v95 = MEMORY[0x1EEE9AC00](v94);
  v97 = &v267 - v96;
  v98 = MEMORY[0x1EEE9AC00](v95);
  v100 = (&v267 - v99);
  v101 = MEMORY[0x1EEE9AC00](v98);
  v103 = &v267 - v102;
  LODWORD(v305) = *v8;
  v104 = v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
  *v104 = 0;
  *(v104 + 2) = 0;
  *(v104 + 1) = 0;
  v269 = v104 + 8;
  v300 = v2;
  v105 = v2 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
  v106 = v101;
  *v105 = 0;
  v105[16] = 0;
  *(v105 + 1) = 0;
  v107 = v10;
  Locale.languageRegionLocale.getter(v101, v108, v109, v110, v111, v112, v113, v114, v267, v268, (v105 + 8), v269, v270, v271, v272, v273, v274, v275, v276, v277);
  v115 = OUTLINED_FUNCTION_278();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v115, v116, v106);
  v317 = v106;
  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(v1, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 == -1)
    {
      goto LABEL_54;
    }

    goto LABEL_73;
  }

  OUTLINED_FUNCTION_19_13();
  OUTLINED_FUNCTION_94_1();
  v118();
  v119 = v90;
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v120 = __swift_project_value_buffer(v69, qword_1ED9386C8);
  v121 = *(v119 + 16);
  v277 = v10;
  v121(v97, v10, v106);
  v122 = v303;
  v308 = v103;
  v274 = v121;
  v275 = v119 + 16;
  v121(v303, v103, v106);
  v316 = v120;
  v123 = sub_1AC79FDC8();
  v124 = sub_1AC7A05D8();
  v125 = os_log_type_enabled(v123, v124);
  v276 = v119;
  if (v125)
  {
    v126 = OUTLINED_FUNCTION_448();
    v268 = OUTLINED_FUNCTION_494();
    v318[0] = v268;
    *v126 = 136315394;
    OUTLINED_FUNCTION_3_16();
    sub_1AC753294(v127, v128);
    v271 = v69;
    HIDWORD(v267) = v124;
    sub_1AC7A0CC8();
    v129 = *(v119 + 8);
    v129(v97, v317);
    v130 = OUTLINED_FUNCTION_184_0();
    v133 = sub_1AC5CFE74(v130, v131, v132);

    *(v126 + 4) = v133;
    *(v126 + 12) = 2080;
    v69 = v271;
    sub_1AC7A0CC8();
    v303 = v129;
    v129(v122, v317);
    v134 = OUTLINED_FUNCTION_184_0();
    v137 = sub_1AC5CFE74(v134, v135, v136);
    v106 = v317;

    *(v126 + 14) = v137;
    _os_log_impl(&dword_1AC5BC000, v123, BYTE4(v267), "Transcriber initialized with locale: %s, effective locale (language-region) pair: %s", v126, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    v138 = *(v119 + 8);
    v138(v122, v106);
    v303 = v138;
    v138(v97, v106);
  }

  v90 = v307;
  v139 = v305;
  sub_1AC72464C();
  v107 = v304;
  v141 = sub_1AC623E28(v304, v140);

  if (v141)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_99();
  v142 = swift_allocObject();
  v144 = v272;
  v143 = v273;
  v100 = *(v273 + 16);
  *(v142 + 16) = 0;
  *(v142 + 24) = 0;
  OUTLINED_FUNCTION_105_5();
  v100();
  if ((sub_1AC637EF8(1, v107) & 1) == 0)
  {
    OUTLINED_FUNCTION_99();
    v147 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v147);
    goto LABEL_12;
  }

  v145 = OUTLINED_FUNCTION_118_6();
  OUTLINED_FUNCTION_99();
  v146 = swift_allocObject();
  OUTLINED_FUNCTION_64_8(v146);
  if (v145)
  {
    while (1)
    {
      v233 = v273;
      v271 = v69;
      swift_retain_n();

      v234 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v234, v235))
      {
        goto LABEL_68;
      }

      v236 = OUTLINED_FUNCTION_150();
      v237 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v237);
      *v236 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v236 + 4) = v107;
      OUTLINED_FUNCTION_111_6(&dword_1AC5BC000, v238, v100, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      (*(v233 + 8))(v272, v271);
      __break(1u);
LABEL_60:
      OUTLINED_FUNCTION_60_7();
      swift_retain_n();

      v234 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v234, v239))
      {
        goto LABEL_69;
      }

      v240 = OUTLINED_FUNCTION_150();
      v241 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v241);
      *v240 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_92_5();
      MEMORY[0x1B26E8C40](v242 + 51, v243 | 0x8000000000000000);

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v240 + 4) = v107;
      OUTLINED_FUNCTION_80_7(&dword_1AC5BC000, v244, v245, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      OUTLINED_FUNCTION_18_15();
      v246();
      __break(1u);
LABEL_62:
      OUTLINED_FUNCTION_60_7();
      swift_retain_n();

      v234 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v234, v247))
      {
        goto LABEL_70;
      }

      v248 = OUTLINED_FUNCTION_150();
      v249 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v249);
      *v248 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_61_7();

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v248 + 4) = v107;
      OUTLINED_FUNCTION_80_7(&dword_1AC5BC000, v250, v251, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      OUTLINED_FUNCTION_18_15();
      v252();
      __break(1u);
LABEL_64:
      OUTLINED_FUNCTION_60_7();
      swift_retain_n();

      v234 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (!os_log_type_enabled(v234, v253))
      {
        goto LABEL_71;
      }

      v254 = OUTLINED_FUNCTION_150();
      v255 = OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_141_2(v255);
      *v254 = 136315138;
      OUTLINED_FUNCTION_25_16();
      sub_1AC7A09C8();
      OUTLINED_FUNCTION_34_11();
      OUTLINED_FUNCTION_154_2();

      OUTLINED_FUNCTION_92_5();
      MEMORY[0x1B26E8C40](v256 + 57, v257 | 0x8000000000000000);

      OUTLINED_FUNCTION_67_7();
      OUTLINED_FUNCTION_159();
      *(v254 + 4) = v107;
      OUTLINED_FUNCTION_80_7(&dword_1AC5BC000, v258, v259, "Failed precondition: %s");
      OUTLINED_FUNCTION_19_15();
      OUTLINED_FUNCTION_70();

      OUTLINED_FUNCTION_18_15();
      v260();
      __break(1u);
LABEL_66:
      OUTLINED_FUNCTION_60_7();

      v234 = sub_1AC79FDC8();
      v69 = sub_1AC7A05F8();
      if (os_log_type_enabled(v234, v69))
      {
        break;
      }

LABEL_72:

      OUTLINED_FUNCTION_18_15();
      v266();

      __break(1u);
LABEL_73:
      OUTLINED_FUNCTION_3_0();
      swift_once();
LABEL_54:
      OUTLINED_FUNCTION_10_3(v69, qword_1ED9386C8);
      (*(v90 + 16))(v100, v107, v317);
      v217 = sub_1AC79FDC8();
      v107 = sub_1AC7A05F8();
      if (os_log_type_enabled(v217, v107))
      {
        v218 = OUTLINED_FUNCTION_150();
        v219 = OUTLINED_FUNCTION_48();
        v319[0] = v219;
        *v218 = 136315138;
        OUTLINED_FUNCTION_25_16();
        sub_1AC7A09C8();
        OUTLINED_FUNCTION_92_5();
        MEMORY[0x1B26E8C40](v220 + 39, v221 | 0x8000000000000000);
        OUTLINED_FUNCTION_3_16();
        sub_1AC753294(v222, v223);
        v69 = v317;
        v224 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v224);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v225 = v318[0];
        v226 = v318[1];
        v227 = *(v90 + 8);
        v90 += 8;
        v228 = OUTLINED_FUNCTION_77();
        v229(v228);
        v230 = sub_1AC5CFE74(v225, v226, v319);

        *(v218 + 4) = v230;
        OUTLINED_FUNCTION_111_6(&dword_1AC5BC000, v231, v107, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v219);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v232 = *(v90 + 8);
        v90 += 8;
        v232(v100, v317);
      }

      __break(1u);
    }

    v90 = OUTLINED_FUNCTION_150();
    v107 = OUTLINED_FUNCTION_48();
    v319[0] = v107;
    *v90 = 136315138;
    OUTLINED_FUNCTION_25_16();
    sub_1AC7A09C8();
    v261 = OUTLINED_FUNCTION_34_11();
    MEMORY[0x1B26E8C40](v261);

    OUTLINED_FUNCTION_61_7();
    v233 = OUTLINED_FUNCTION_67_7();

    *(v90 + 4) = v233;
    _os_log_impl(&dword_1AC5BC000, v234, v69, "Failed precondition: %s", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v107);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    OUTLINED_FUNCTION_18_15();
    v262();

    __break(1u);
LABEL_68:

    (*(v233 + 8))(v272, v271);
    __break(1u);
LABEL_69:

    OUTLINED_FUNCTION_18_15();
    v263();
    __break(1u);
LABEL_70:

    OUTLINED_FUNCTION_18_15();
    v264();
    __break(1u);
LABEL_71:

    OUTLINED_FUNCTION_18_15();
    v265();
    __break(1u);
    goto LABEL_72;
  }

  v143 = v273;
LABEL_12:

  v305 = *(v143 + 8);
  v305(v144, v69);
  OUTLINED_FUNCTION_105_5();
  v100();
  if (sub_1AC637EF8(4, v107))
  {
    v148 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v149 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v149);
    if (v148)
    {
      goto LABEL_60;
    }
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v150 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v150);
  }

  OUTLINED_FUNCTION_125_4();
  v151();
  OUTLINED_FUNCTION_105_5();
  v100();
  if (sub_1AC637EF8(2, v107))
  {
    v152 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v153 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v153);
    if (v152)
    {
      goto LABEL_62;
    }
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v154 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v154);
  }

  OUTLINED_FUNCTION_125_4();
  v155();
  OUTLINED_FUNCTION_105_5();
  v100();
  if (sub_1AC637EF8(3, v107))
  {
    v156 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v157 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v157);
    if (v156)
    {
      goto LABEL_64;
    }
  }

  else
  {
    OUTLINED_FUNCTION_99();
    v158 = swift_allocObject();
    OUTLINED_FUNCTION_64_8(v158);
  }

  OUTLINED_FUNCTION_125_4();
  v159();
  OUTLINED_FUNCTION_105_5();
  v100();
  if (sub_1AC637EF8(1, v107))
  {
    OUTLINED_FUNCTION_99();
    v160 = swift_allocObject();
    *(v160 + 16) = v142;
    *(v160 + 24) = v107;
    v90 = v307;
  }

  else
  {
    v161 = OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_99();
    v100 = swift_allocObject();
    *(v100 + 2) = v142;
    *(v100 + 3) = v107;
    v90 = v307;
    if ((v161 & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  OUTLINED_FUNCTION_125_4();
  v162();

  v106 = v317;
LABEL_28:
  v163 = v300;
  v274(v300 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v308, v106);
  if (v139 == 16)
  {
    v164 = 0;
  }

  else
  {
    v164 = v139;
  }

  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint) = v164;
  LOBYTE(v318[0]) = v164;
  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames) = TaskHint.preferredModelTaskNames.getter();
  v165 = 3;
  if ((v164 & 0xFE) == 0xE)
  {
    v165 = 7;
  }

  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType) = v165;
  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_singleUtterance) = (v164 > 0xF) | (0x311Cu >> v164) & 1;
  v167 = v164 == 1 || v164 == 6;
  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_concatenateUtterances) = v167;
  v168 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_65();
  v169 = sub_1AC79FF58();
  v170 = [v168 BOOLForKey_];

  LOBYTE(v171) = 0;
  if (v170)
  {
    v172 = v284;
  }

  else
  {
    v172 = v284;
    if (v139 <= 0xF)
    {
      v171 = 0xCE80u >> v139;
    }
  }

  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_redact) = v171 & 1;
  sub_1AC5C6E6C();
  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions) = v107;
  v173 = OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions;
  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions) = v90;

  sub_1AC740B10(v172);
  v175 = v174;

  *(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions) = sub_1AC6090B4(v175);
  v176 = sub_1AC637EF8(3, v90);
  LODWORD(v316) = sub_1AC637EF8(4, v90);

  v177 = *MEMORY[0x1E69E8790];
  v178 = OUTLINED_FUNCTION_72_6();
  v179(v178);
  v180 = v309;
  sub_1AC7A0378();
  v181 = *(v173 + 8);
  v182 = OUTLINED_FUNCTION_390();
  v183(v182);
  (*(v310 + 16))(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon__results, v180, v311);
  if (v176)
  {
    v184 = 1;
    v185 = v313;
    v186 = v283;
  }

  else
  {
    v187 = *(v306 + 16);
    v186 = v283;
    v188 = OUTLINED_FUNCTION_184_0();
    v185 = v313;
    v189(v188);
    v184 = 0;
  }

  __swift_storeEnumTagSinglePayload(v186, v184, 1, v185);
  sub_1AC637E08();
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  v191 = v314;
  OUTLINED_FUNCTION_65_0();
  v195 = __swift_storeEnumTagSinglePayload(v192, v193, v194, v190);
  MEMORY[0x1EEE9AC00](v195);
  *(&v267 - 2) = v191;
  (*(v289 + 104))(v287, v177, v291);
  v196 = v285;
  sub_1AC7A03B8();
  (*(v286 + 32))(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon__multisegmentResults, v196, v290);
  if (v176)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v190);
  }

  v200 = v299;
  v201 = v316;
  sub_1AC637E08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  OUTLINED_FUNCTION_107_4();
  OUTLINED_FUNCTION_65_0();
  v205 = __swift_storeEnumTagSinglePayload(v202, v203, v204, v176);
  MEMORY[0x1EEE9AC00](v205);
  *(&v267 - 2) = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE78, &qword_1AC7B28C8);
  (*(v296 + 104))(v295, v177, v298);
  v206 = v292;
  sub_1AC7A03B8();
  (*(v293 + 32))(v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon__muxMultisegmentResults, v206, v297);
  if (v201)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v207, v208, v209, v176);
  }

  v210 = v277;
  v212 = v313;
  v211 = v314;
  v213 = v303;
  sub_1AC637E08();
  sub_1AC5C08FC(v319);
  memcpy(v318 + 4, v319, 0x101uLL);
  sub_1AC5C720C(v315, &qword_1EB56C318, &unk_1AC7A8790);
  v214 = v210;
  v215 = v317;
  v213(v214, v317);
  (*(v306 + 8))(v312, v212);
  (*(v310 + 8))(v309, v311);
  v213(v308, v215);
  v216 = (v163 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
  *v216 = 0;
  memcpy(v216 + 1, v318, 0x105uLL);
  sub_1AC5C720C(v200, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  sub_1AC5C720C(v211, &qword_1EB56DF08, &qword_1AC7B2BF0);
  OUTLINED_FUNCTION_105();
}

unint64_t sub_1AC74A410(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    sub_1AC7A09C8();

    sub_1AC61BA94();
    v3 = sub_1AC7A0458();
    MEMORY[0x1B26E8C40](v3);

    MEMORY[0x1B26E8C40](46, 0xE100000000000000);
    v2 = 0xD000000000000026;
    swift_beginAccess();
    v4 = *(a1 + 24);
    *(a1 + 16) = 0xD000000000000026;
    *(a1 + 24) = 0x80000001AC7BA650;
  }

  return v2;
}

uint64_t sub_1AC74A50C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1AC5C720C(a2, a3, a4);
  v6 = OUTLINED_FUNCTION_89();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  (*(v9 + 16))(a2, a1, v8);
  OUTLINED_FUNCTION_150_1();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v8);
}

uint64_t sub_1AC74A5A4(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v56 = sub_1AC79F9C8();
  v49 = *(v56 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v48 = &v46[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D8F0, &qword_1AC7B09C8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v46[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C070, &qword_1AC7A8770);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v46[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46[-v16];
  v18 = sub_1AC79FAF8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v53 = &v46[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x1EEE9AC00](v21);
  v52 = &v46[-v24];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v46[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v46[-v28];
  v55 = a1;
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v30 = *(v19 + 8);
  v50 = v19 + 8;
  v30(v29, v18);
  sub_1AC79FB08();
  sub_1AC79FAC8();
  v54 = v18;
  v51 = v30;
  v30(v27, v18);
  v31 = v58;
  v32 = *(v6 + 56);
  sub_1AC5C6E6C();
  sub_1AC5C6E6C();
  v33 = v56;
  if (__swift_getEnumTagSinglePayload(v31, 1, v56) == 1)
  {
    sub_1AC5C720C(v15, &qword_1EB56C070, &qword_1AC7A8770);
    sub_1AC5C720C(v17, &qword_1EB56C070, &qword_1AC7A8770);
    if (__swift_getEnumTagSinglePayload(&v31[v32], 1, v33) == 1)
    {
      sub_1AC5C720C(v31, &qword_1EB56C070, &qword_1AC7A8770);
LABEL_9:
      v36 = 1;
      return v36 & 1;
    }

    goto LABEL_6;
  }

  sub_1AC5C6E6C();
  if (__swift_getEnumTagSinglePayload(&v31[v32], 1, v33) == 1)
  {
    sub_1AC5C720C(v15, &qword_1EB56C070, &qword_1AC7A8770);
    sub_1AC5C720C(v17, &qword_1EB56C070, &qword_1AC7A8770);
    (*(v49 + 8))(v57, v33);
LABEL_6:
    sub_1AC5C720C(v31, &qword_1EB56D8F0, &qword_1AC7B09C8);
    goto LABEL_7;
  }

  v40 = v49;
  v41 = &v31[v32];
  v42 = v48;
  (*(v49 + 32))(v48, v41, v33);
  sub_1AC753294(&qword_1EB56D908, MEMORY[0x1E6969610]);
  v43 = v57;
  v47 = sub_1AC79FED8();
  v44 = *(v40 + 8);
  v44(v42, v33);
  sub_1AC5C720C(v15, &qword_1EB56C070, &qword_1AC7A8770);
  sub_1AC5C720C(v17, &qword_1EB56C070, &qword_1AC7A8770);
  v44(v43, v33);
  sub_1AC5C720C(v58, &qword_1EB56C070, &qword_1AC7A8770);
  if (v47)
  {
    goto LABEL_9;
  }

LABEL_7:
  v34 = v52;
  sub_1AC79FB08();
  v35 = v53;
  sub_1AC79FB08();
  v36 = sub_1AC79FAB8();
  v37 = v35;
  v38 = v54;
  v39 = v51;
  v51(v37, v54);
  v39(v34, v38);
  return v36 & 1;
}

void sub_1AC74AB40()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v4 = v3;
  v5 = sub_1AC79F7F8();
  v6 = OUTLINED_FUNCTION_40(v5);
  v92 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_602();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v11 = OUTLINED_FUNCTION_167(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_4();
  v89 = v14;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  v17 = OUTLINED_FUNCTION_80(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_4();
  v90 = v20;
  OUTLINED_FUNCTION_34();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v89 - v23;
  v25 = *(v22 + 48);
  v91 = v4;
  OUTLINED_FUNCTION_117();
  sub_1AC5C6E6C();
  v26 = v2;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v24);
  if (v27)
  {
    OUTLINED_FUNCTION_14_7(&v24[v25]);
    if (v27)
    {
      sub_1AC5C720C(v24, &qword_1EB56BB68, &qword_1AC7A8490);
      goto LABEL_12;
    }

LABEL_9:
    v31 = v24;
LABEL_10:
    sub_1AC5C720C(v31, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_13;
  }

  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(&v24[v25]);
  if (v27)
  {
    v28 = *(v92 + 8);
    v29 = OUTLINED_FUNCTION_388();
    v30(v29);
    goto LABEL_9;
  }

  v32 = v92;
  (*(v92 + 32))(v0, &v24[v25], v5);
  OUTLINED_FUNCTION_8_14();
  sub_1AC753294(v33, v34);
  v35 = sub_1AC79FED8();
  v36 = *(v32 + 8);
  v36(v0, v5);
  v37 = OUTLINED_FUNCTION_388();
  (v36)(v37);
  sub_1AC5C720C(v24, &qword_1EB56BB68, &qword_1AC7A8490);
  if ((v35 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_12:
  v38 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  v39 = v91;
  if (*(v91 + *(v38 + 20)) != *(v26 + *(v38 + 20)))
  {
    goto LABEL_13;
  }

  v40 = v38;
  v41 = v26;
  v42 = *(v38 + 24);
  v43 = (v91 + v42);
  v44 = *(v91 + v42 + 8);
  v45 = (v26 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_13;
    }

    v47 = *v43 == *v45 && v44 == v46;
    if (!v47 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v46)
  {
    goto LABEL_13;
  }

  v48 = v40[7];
  v49 = *(v16 + 48);
  v50 = v90;
  sub_1AC5C6E6C();
  v51 = v50;
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_14_7(v50);
  if (!v27)
  {
    sub_1AC5C6E6C();
    OUTLINED_FUNCTION_14_7(v50 + v49);
    if (!v52)
    {
      v56 = v92;
      (*(v92 + 32))(v0, v51 + v49, v5);
      OUTLINED_FUNCTION_8_14();
      sub_1AC753294(v57, v58);
      v59 = sub_1AC79FED8();
      v60 = *(v56 + 8);
      v60(v0, v5);
      v61 = OUTLINED_FUNCTION_388();
      (v60)(v61);
      sub_1AC5C720C(v51, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v59 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_33;
    }

    v53 = *(v92 + 8);
    v54 = OUTLINED_FUNCTION_39();
    v55(v54);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_14_7(v50 + v49);
  if (!v27)
  {
LABEL_31:
    v31 = v50;
    goto LABEL_10;
  }

  sub_1AC5C720C(v50, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_33:
  v62 = v40[8];
  v63 = (v39 + v62);
  v64 = *(v39 + v62 + 8);
  v65 = (v41 + v62);
  v66 = v65[1];
  if (v64)
  {
    if (!v66)
    {
      goto LABEL_13;
    }

    v67 = *v63 == *v65 && v64 == v66;
    if (!v67 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v66)
  {
    goto LABEL_13;
  }

  v68 = v40[9];
  v69 = *(v39 + v68);
  v70 = *(v41 + v68);
  sub_1AC6290FC();
  if (v71)
  {
    OUTLINED_FUNCTION_39_6(v40[10]);
    if (v27)
    {
      OUTLINED_FUNCTION_39_6(v40[11]);
      if (v27)
      {
        v72 = v40[12];
        v73 = *(v41 + v72);
        if (*(v39 + v72))
        {
          if (!v73)
          {
            goto LABEL_13;
          }

          v74 = *(v41 + v72);

          v75 = OUTLINED_FUNCTION_89();
          sub_1AC630858(v75, v76);
          v78 = v77;

          if ((v78 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v73)
        {
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_39_6(v40[13]);
        if (!v27)
        {
          goto LABEL_13;
        }

        v79 = v40[14];
        v80 = *(v39 + v79);
        v81 = *(v41 + v79);
        if (v80)
        {
          if (!v81)
          {
            goto LABEL_13;
          }

          sub_1AC5CF764(0, &qword_1EB56D120, off_1E797AD28);
          v82 = v81;
          v83 = v80;
          v84 = sub_1AC7A0758();

          if ((v84 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else if (v81)
        {
          goto LABEL_13;
        }

        v85 = v40[15];
        if (*(v91 + v85) && *(v41 + v85))
        {
          v86 = *(v41 + v85);

          v87 = OUTLINED_FUNCTION_89();
          sub_1AC629308(v87, v88);
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_105();
}

void sub_1AC74B160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = sub_1AC79F7F8();
  v27 = OUTLINED_FUNCTION_40(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v36 = OUTLINED_FUNCTION_167(v35);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &a9 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &a9 - v42;
  OUTLINED_FUNCTION_74_0();
  sub_1AC5C6E6C();
  v44 = OUTLINED_FUNCTION_55_2();
  OUTLINED_FUNCTION_96(v44, v45, v26);
  if (v46)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v47(v34, v43, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_8_14();
    sub_1AC753294(v48, v49);
    OUTLINED_FUNCTION_149_1();
    v50 = *(v29 + 8);
    v51 = OUTLINED_FUNCTION_117();
    v52(v51);
  }

  v53 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  v54 = *(v23 + v53[5]);
  sub_1AC7A0E98();
  v55 = (v23 + v53[6]);
  if (v55[1])
  {
    v56 = *v55;
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v57 = v53[7];
  sub_1AC5C6E6C();
  OUTLINED_FUNCTION_96(v41, 1, v26);
  if (v46)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    OUTLINED_FUNCTION_19_13();
    v58(v34, v41, v26);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_8_14();
    sub_1AC753294(v59, v60);
    OUTLINED_FUNCTION_149_1();
    v61 = *(v29 + 8);
    v62 = OUTLINED_FUNCTION_117();
    v63(v62);
  }

  v64 = (v23 + v53[8]);
  if (v64[1])
  {
    v65 = *v64;
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v66 = *(v23 + v53[9]);
  sub_1AC633F38();
  v67 = *(v23 + v53[10]);
  sub_1AC7A0E98();
  v68 = *(v23 + v53[11]);
  sub_1AC7A0E98();
  v69 = *(v23 + v53[12]);
  if (v69)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v25, v69);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v70 = *(v23 + v53[13]);
  sub_1AC7A0E98();
  v71 = *(v23 + v53[14]);
  if (v71)
  {
    OUTLINED_FUNCTION_83();
    v72 = v71;
    OUTLINED_FUNCTION_86();
    sub_1AC7A0768();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v23 + v53[15]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC74B4B8()
{
  sub_1AC7A0E78();
  sub_1AC74B160(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC74B504()
{
  sub_1AC7A0E78();
  sub_1AC74B160(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

void sub_1AC74B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22)
{
  OUTLINED_FUNCTION_104();
  v24 = v22;
  v229 = v25;
  v227 = v26;
  v225 = v27;
  v226 = v28;
  v223 = v29;
  v224 = v30;
  v252 = v31;
  v33 = v32;
  v212 = *v24;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF58, &qword_1AC7B2CA8);
  OUTLINED_FUNCTION_40(v242);
  v240 = v34;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_89_1();
  v239 = v38;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40(v241);
  v237 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_89_1();
  v236 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEC8, &unk_1AC7B2BA0);
  v45 = OUTLINED_FUNCTION_167(v44);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_4();
  v238 = v48;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_91();
  v243 = v50;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF60, &qword_1AC7B2CB0);
  OUTLINED_FUNCTION_40(v235);
  v233 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_89_1();
  v231 = v55;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_40(v234);
  v230 = v56;
  v58 = *(v57 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_89_1();
  v228 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF08, &qword_1AC7B2BF0);
  v62 = OUTLINED_FUNCTION_167(v61);
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_4();
  v232 = v65;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_91();
  v251 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF18, &qword_1AC7B2C00);
  OUTLINED_FUNCTION_167(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_89_1();
  v222 = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF68, &unk_1AC7B2CB8);
  v74 = OUTLINED_FUNCTION_40(v73);
  v220 = v75;
  v221 = v74;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_89_1();
  v219 = v79;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE80, &qword_1AC7B2930);
  OUTLINED_FUNCTION_40(v250);
  v245 = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_89_1();
  v249 = v84;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  v86 = OUTLINED_FUNCTION_40(v85);
  v247 = v87;
  v248 = v86;
  v89 = *(v88 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_89_1();
  v246 = v91;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v92);
  v94 = *(v93 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_72_5();
  v96 = sub_1AC79FB18();
  v97 = OUTLINED_FUNCTION_40(v96);
  v99 = v98;
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_2_4();
  v218 = v102;
  OUTLINED_FUNCTION_34();
  v104 = MEMORY[0x1EEE9AC00](v103);
  v106 = &v206 - v105;
  v107 = MEMORY[0x1EEE9AC00](v104);
  v109 = &v206 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107);
  v112 = &v206 - v111;
  v113 = v24 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName;
  *v113 = 0;
  *(v113 + 2) = 0;
  *(v113 + 1) = 0;
  v211 = v113 + 8;
  v217 = v24;
  v114 = v24 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked;
  *v114 = 0;
  v114[16] = 0;
  *(v114 + 1) = 0;
  Locale.languageRegionLocale.getter(v110, v115, v116, v117, v118, v119, v120, v121, v206, v207, v208, v209, v210, (v114 + 8), v211, v212, v213, v214, v215, v216);
  v122 = OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_96(v122, v123, v96);
  v253 = v96;
  if (v124)
  {
    v190 = v99;
    v191 = v33;
    sub_1AC5C720C(v23, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v192 = sub_1AC79FDE8();
      OUTLINED_FUNCTION_10_3(v192, qword_1ED9386C8);
      (*(v190 + 16))(v109, v191, v253);
      v193 = sub_1AC79FDC8();
      sub_1AC7A05F8();
      OUTLINED_FUNCTION_36_11();
      if (os_log_type_enabled(v193, v194))
      {
        v195 = OUTLINED_FUNCTION_150();
        v191 = OUTLINED_FUNCTION_48();
        v255[0] = v191;
        *v195 = 136315138;
        v254[0] = 0;
        v254[1] = 0xE000000000000000;
        sub_1AC7A09C8();
        OUTLINED_FUNCTION_65();
        MEMORY[0x1B26E8C40](0xD000000000000049);
        OUTLINED_FUNCTION_3_16();
        sub_1AC753294(v196, v197);
        v198 = v253;
        v199 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v199);

        MEMORY[0x1B26E8C40](46, 0xE100000000000000);
        v200 = v254[0];
        v201 = v254[1];
        v202 = *(v190 + 8);
        v190 += 8;
        v202(v109, v198);
        v203 = sub_1AC5CFE74(v200, v201, v255);

        *(v195 + 4) = v203;
        OUTLINED_FUNCTION_111_6(&dword_1AC5BC000, v204, v112, "Failed precondition: %s");
        OUTLINED_FUNCTION_19_15();
        OUTLINED_FUNCTION_70();
      }

      else
      {

        v205 = *(v190 + 8);
        v190 += 8;
        v205(v109, v253);
      }

      __break(1u);
LABEL_22:
      OUTLINED_FUNCTION_3_0();
      swift_once();
    }
  }

  OUTLINED_FUNCTION_19_13();
  v125(v112, v23, v96);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v214 = a21;
  v126 = a22;
  v127 = sub_1AC79FDE8();
  OUTLINED_FUNCTION_10_3(v127, qword_1ED9386C8);
  v128 = *(v99 + 16);
  v216 = v33;
  v128(v106, v33, v96);
  v129 = v218;
  v213 = v128;
  v128(v218, v112, v96);
  v130 = sub_1AC79FDC8();
  v131 = sub_1AC7A05D8();
  v132 = OUTLINED_FUNCTION_366(v131);
  v215 = v99;
  v244 = v112;
  if (v132)
  {
    v133 = OUTLINED_FUNCTION_448();
    HIDWORD(v210) = a22;
    v134 = v133;
    v209 = OUTLINED_FUNCTION_494();
    v254[0] = v209;
    *v134 = 136315394;
    OUTLINED_FUNCTION_3_16();
    sub_1AC753294(v135, v136);
    v208 = v130;
    v137 = sub_1AC7A0CC8();
    v139 = v138;
    HIDWORD(v207) = v131;
    v140 = *(v99 + 8);
    v140(v106, v253);
    sub_1AC5CFE74(v137, v139, v254);
    OUTLINED_FUNCTION_152_2();
    *(v134 + 4) = v137;
    *(v134 + 12) = 2080;
    v96 = v253;
    v141 = sub_1AC7A0CC8();
    v143 = v142;
    v218 = v140;
    v140(v129, v96);
    sub_1AC5CFE74(v141, v143, v254);
    OUTLINED_FUNCTION_152_2();
    *(v134 + 14) = v141;
    v144 = v208;
    _os_log_impl(&dword_1AC5BC000, v208, BYTE4(v207), "Transcriber initialized with locale: %s, effective locale (language-region) pair: %s", v134, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    v126 = BYTE4(v210);
    v112 = v244;
    OUTLINED_FUNCTION_70();
  }

  else
  {

    v145 = *(v99 + 8);
    v145(v129, v96);
    v218 = v145;
    v145(v106, v96);
  }

  v146 = v252;
  v147 = v217;
  v213(v217 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v112, v96);
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_taskHint) = 16;
  v213 = OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames;
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames) = v223;
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType) = v224;
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_singleUtterance) = v225 & 1;
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_concatenateUtterances) = v226 & 1;
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_redact) = v126 & 1;
  v148 = OBJC_IVAR____TtC6Speech17TranscriberCommon_modelOptions;
  sub_1AC5C6E6C();
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions) = v227;
  v149 = v229;
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions) = v229;

  sub_1AC740B10(v214);
  OUTLINED_FUNCTION_152_2();
  *(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions) = sub_1AC6090B4(v146);
  v150 = sub_1AC637EF8(3, v149);
  LODWORD(v227) = sub_1AC637EF8(4, v149);

  v151 = *MEMORY[0x1E69E8790];
  v152 = OUTLINED_FUNCTION_72_6();
  v153(v152);
  v154 = v246;
  v155 = v249;
  sub_1AC7A0378();
  v156 = *(v148 + 8);
  v157 = OUTLINED_FUNCTION_390();
  v158(v157);
  (*(v247 + 16))(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon__results, v154, v248);
  if (v150)
  {
    v159 = 1;
    v160 = v250;
    v161 = v251;
    v162 = v222;
  }

  else
  {
    v162 = v222;
    v163 = v155;
    v160 = v250;
    (*(v245 + 16))(v222, v163, v250);
    v159 = 0;
    v161 = v251;
  }

  __swift_storeEnumTagSinglePayload(v162, v159, 1, v160);
  sub_1AC637E08();
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE88, &qword_1AC7B2938);
  OUTLINED_FUNCTION_65_0();
  v168 = __swift_storeEnumTagSinglePayload(v165, v166, v167, v164);
  MEMORY[0x1EEE9AC00](v168);
  *(&v206 - 2) = v161;
  (*(v233 + 104))(v231, v151, v235);
  v169 = v228;
  sub_1AC7A03B8();
  (*(v230 + 32))(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon__multisegmentResults, v169, v234);
  if (v150)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v170, v171, v172, v164);
  }

  sub_1AC637E08();
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE90, &qword_1AC7B2940);
  v174 = v243;
  OUTLINED_FUNCTION_65_0();
  v178 = __swift_storeEnumTagSinglePayload(v175, v176, v177, v173);
  MEMORY[0x1EEE9AC00](v178);
  *(&v206 - 2) = v174;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DE78, &qword_1AC7B28C8);
  (*(v240 + 104))(v239, v151, v242);
  v179 = v236;
  sub_1AC7A03B8();
  (*(v237 + 32))(v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon__muxMultisegmentResults, v179, v241);
  if (v227)
  {
    sub_1AC5C6E6C();
  }

  else
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v180, v181, v182, v173);
  }

  v183 = v216;
  v184 = v253;
  OUTLINED_FUNCTION_99_2();
  sub_1AC637E08();
  sub_1AC5C08FC(v255);
  memcpy(v254 + 4, v255, 0x101uLL);
  sub_1AC5C720C(v252, &qword_1EB56C318, &unk_1AC7A8790);
  v185 = v183;
  v186 = v218;
  v218(v185, v184);
  (*(v245 + 8))(v249, v250);
  (*(v247 + 8))(v246, v248);
  v186(v244, v184);
  v187 = (v147 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult);
  *v187 = 0;
  memcpy(v187 + 1, v254, 0x105uLL);
  v188 = OUTLINED_FUNCTION_388();
  sub_1AC5C720C(v188, v189, &unk_1AC7B2BA0);
  sub_1AC5C720C(v251, &qword_1EB56DF08, &qword_1AC7B2BF0);
  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC74C5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC74C5D0, 0, 0);
}

uint64_t sub_1AC74C5D0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC74C600, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC74C600()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765B80(*(v0 + 32), *(v0 + 24));
  v1 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC74C65C(uint64_t a1, unint64_t a2, int64_t a3, unsigned __int8 *a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int32_t a12, unsigned __int8 a13)
{
  v299 = a7;
  v300 = a8;
  v298 = a6;
  v314 = a3;
  v310 = a13;
  v334 = a12;
  v333 = a11;
  v332 = a10;
  v331 = a9;
  v17 = a5[1];
  v303 = *a5;
  v304 = v17;
  v18 = *(a5 + 4);
  v301 = *(a5 + 5);
  v302 = v18;
  v321 = a5;
  v19 = sub_1AC79F618();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v346 = &v285[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1AC79F5C8();
  v319 = *(v22 - 8);
  v23 = *(v319 + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v351 = &v285[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v338 = &v285[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v339 = &v285[-v29];
  v30 = MEMORY[0x1EEE9AC00](v28);
  v322 = &v285[-v31];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v317 = &v285[-v33];
  v34 = MEMORY[0x1EEE9AC00](v32);
  v354 = &v285[-v35];
  v36 = MEMORY[0x1EEE9AC00](v34);
  v340 = &v285[-v37];
  v38 = MEMORY[0x1EEE9AC00](v36);
  v344 = &v285[-v39];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v320 = &v285[-v41];
  MEMORY[0x1EEE9AC00](v40);
  v318 = &v285[-v42];
  v43 = *a4;
  v305 = v13;
  v44 = sub_1AC637EF8(1, *(v13 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions));
  v45 = MEMORY[0x1E69E7CC0];
  j = &unk_1EB56E000;
  v47 = &selRef_removeObjectForKey_;
  v48 = 0x1FC27C000uLL;
  v49 = &off_1AC7A6000;
  v336 = v22;
  switch(v43)
  {
    case 1:
    case 2:
    case 5:
    case 6:
      return v45;
    case 3:
    case 4:
      if ((v44 & 1) == 0)
      {
        goto LABEL_180;
      }

      v286 = v44;
      v309 = v43;
      v51 = *(a1 + 16);
      if (v51)
      {
        __src[0].value = MEMORY[0x1E69E7CC0];
        sub_1AC631454(0, v51, 0);
        v52 = 0;
        value = __src[0].value;
        v54 = a1 + 32;
        do
        {
          v55 = *(v54 + 8 * v52);

          sub_1AC74EBC0(v52, v55, a2);
          v57 = v56;

          __src[0].value = value;
          v59 = *(value + 16);
          v58 = *(value + 24);
          v60 = v59 + 1;
          if (v59 >= v58 >> 1)
          {
            sub_1AC631454(v58 > 1, v59 + 1, 1);
            value = __src[0].value;
          }

          ++v52;
          *(value + 16) = v60;
          *(value + 8 * v59 + 32) = v57;
        }

        while (v51 != v52);
        v296 = value;
      }

      else
      {
        v61 = MEMORY[0x1E69E7CC0];
        v60 = *(MEMORY[0x1E69E7CC0] + 16);
        v296 = MEMORY[0x1E69E7CC0];
        if (!v60)
        {
          goto LABEL_43;
        }
      }

      v62 = v296;
      sub_1AC61C258(0, 1);
      v49 = *(v62 + 32);
      v349 = v62 + 32;
      j = sub_1AC64C73C(1, v62);
      v64 = v63;
      a2 = v65;

      v353 = 0;
      v306 = MEMORY[0x1E69E7CC0];
      v61 = j;
LABEL_12:
      v66 = (2 * v61) | 1;
      for (i = v61; ; ++i)
      {
        v68 = v49;
        if (v64 == i)
        {
          break;
        }

        if (v61 < j || i >= v64)
        {
          goto LABEL_274;
        }

        if ((v61 & 0x8000000000000000) != 0)
        {
          goto LABEL_275;
        }

        if (i >= *(a2 + 16))
        {
          goto LABEL_276;
        }

        v49 = *(a2 + 8 * i + 32);
        if (*(v68 + 16) != 1 || *(v49 + 16) != 1)
        {
          if (i < v353)
          {
            goto LABEL_288;
          }

          v71 = *(v296 + 16);
          v72 = v71 >= v353 && v71 >= i;
          v61 = v306;
          if (!v72)
          {
            goto LABEL_289;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = *(v61 + 16);
            sub_1AC60DEE0();
            v61 = v78;
          }

          v73 = *(v61 + 24);
          v352 = *(v61 + 16);
          v350 = v352 + 1;
          if (v352 >= v73 >> 1)
          {
            sub_1AC60DEE0();
            v306 = v79;
          }

          else
          {
            v306 = v61;
          }

          v61 = i + 1;

          v74 = v306;
          *(v306 + 16) = v350;
          v75 = (v74 + 32 * v352);
          v76 = v349;
          v75[4] = v296;
          v75[5] = v76;
          v75[6] = v353;
          v75[7] = v66;
          v353 = i;
          goto LABEL_12;
        }

        v70 = *(a2 + 8 * i + 32);

        v66 += 2;
      }

      if (v353 == v60)
      {

        v48 = 0x1E797E000;
        v61 = v306;
        goto LABEL_43;
      }

      v48 = 0x1E797E000;
      if (v60 < v353)
      {
        __break(1u);
      }

      else
      {
        sub_1AC5CA588(v353, v60, v296);
        a2 = v80;
        v60 = v81;
        v61 = v82;
        v64 = v83;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_40;
        }
      }

      v282 = *(v306 + 16);
      sub_1AC60DEE0();
      v306 = v283;
LABEL_40:
      v49 = *(v306 + 16);
      if (v49 >= *(v306 + 24) >> 1)
      {
        sub_1AC60DEE0();
        v306 = v284;
      }

      v84 = v306;
      *(v306 + 16) = v49 + 1;
      v85 = (v84 + 32 * v49);
      v85[4] = a2;
      v85[5] = v60;
      v85[6] = v61;
      v85[7] = v64;
      v61 = v84;
LABEL_43:
      v68 = 0;
      v86 = *(v61 + 16);
      v293 = v61 + 32;
      v294 = v86;
      v307 = (v319 + 16);
      v345 = (v319 + 32);
      v291 = OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions;
      v341 = (v319 + 8);
      v289 = xmmword_1AC7A6D00;
      v87 = MEMORY[0x1E69E7CC0];
      v47 = &selRef_removeObjectForKey_;
      v306 = v61;
LABEL_44:
      v292 = v87;
LABEL_45:
      if (v68 == v294)
      {
        goto LABEL_175;
      }

      sub_1AC61C258(v68, 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_286;
      }

      v88 = (v293 + 32 * v68);
      v60 = v88[2];
      v61 = v88[3] >> 1;
      if (__OFSUB__(v61, v60))
      {
        goto LABEL_287;
      }

      v89 = *v88;
      v349 = v88[1];
      v295 = v68 + 1;
      v297 = v89;
      v343 = v68;
      if (v61 - v60 != 1)
      {
        v68 = v89;
        swift_unknownObjectRetain();
        v353 = MEMORY[0x1E69E7CC0];
        if (v60 == v61)
        {
LABEL_88:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD18, &unk_1AC7AB420);
          v90 = swift_allocObject();
          *(v90 + 16) = v289;
          *(v90 + 32) = v353;

          goto LABEL_89;
        }

        swift_unknownObjectRetain();
        v353 = MEMORY[0x1E69E7CC0];
        v347 = v61;
        while (1)
        {
          if (v60 >= v61)
          {
            goto LABEL_279;
          }

          v91 = *(v349 + 8 * v60);
          if (!*(v91 + 16))
          {
            goto LABEL_280;
          }

          j = *(v91 + 32);
          a2 = j >> 62;
          if (j >> 62)
          {
            v92 = sub_1AC7A08E8();
          }

          else
          {
            v92 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v68 = v353 >> 62;
          if (v353 >> 62)
          {
            v93 = sub_1AC7A08E8();
          }

          else
          {
            v93 = *((v353 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v94 = v93 + v92;
          if (__OFADD__(v93, v92))
          {
            goto LABEL_281;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v352 = v92;
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (v68)
            {
              goto LABEL_68;
            }

            v96 = v353 & 0xFFFFFFFFFFFFFF8;
            if (v94 <= *((v353 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v68)
            {
LABEL_68:
              sub_1AC7A08E8();
              goto LABEL_69;
            }

            v96 = v353 & 0xFFFFFFFFFFFFFF8;
          }

          v97 = *(v96 + 16);
LABEL_69:
          v353 = sub_1AC7A0A08();
          v96 = v353 & 0xFFFFFFFFFFFFFF8;
LABEL_70:
          v98 = *(v96 + 16);
          v49 = *(v96 + 24);
          if (a2)
          {
            v68 = v96;
            v101 = sub_1AC7A08E8();
            v96 = v68;
            v99 = v101;
            if (v101)
            {
LABEL_72:
              v68 = v352;
              if (((v49 >> 1) - v98) < v352)
              {
                goto LABEL_283;
              }

              v350 = v60;
              v100 = v96 + 8 * v98 + 32;
              v348 = v96;
              if (a2)
              {
                v68 = &qword_1EB56BD48;
                v60 = &qword_1AC7A8178;
                if (v99 < 1)
                {
                  goto LABEL_285;
                }

                v49 = sub_1AC5C8B9C(&qword_1EB56DF30, &qword_1EB56BD48, &qword_1AC7A8178);
                v102 = j;
                for (j = 0; j != v99; ++j)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
                  v103 = sub_1AC752B00(__src, j, v102);
                  a2 = *v104;
                  (v103)(__src, 0);
                  *(v100 + 8 * j) = a2;
                }
              }

              else
              {
                a2 = j & 0xFFFFFFFFFFFFFF8;
                sub_1AC5CF764(0, &qword_1EB56AAF8, off_1E797AC98);
                swift_arrayInitWithCopy();
              }

              v48 = 0x1E797E000;
              v60 = v350;
              v61 = v347;
              if (v352 > 0)
              {
                v105 = *(v348 + 16);
                v106 = __OFADD__(v105, v352);
                v107 = v105 + v352;
                if (v106)
                {
                  goto LABEL_284;
                }

                *(v348 + 16) = v107;
              }

              goto LABEL_84;
            }
          }

          else
          {
            v99 = *((j & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v99)
            {
              goto LABEL_72;
            }
          }

          if (v352 > 0)
          {
            goto LABEL_282;
          }

LABEL_84:
          if (++v60 == v61)
          {
            swift_unknownObjectRelease();
            goto LABEL_88;
          }
        }
      }

      if (v60 == v61)
      {
        goto LABEL_290;
      }

      if (v60 >= v61)
      {
        goto LABEL_291;
      }

      v90 = *(v349 + 8 * v60);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
LABEL_89:
      sub_1AC6A7A08(v90);
      v109 = v108;
      v111 = v110;

      if (v111 & 1) != 0 || (sub_1AC6A7C40(v90), (v113))
      {
LABEL_171:

        swift_unknownObjectRelease();
        v198 = MEMORY[0x1E69E7CC0];
        v47 = &selRef_removeObjectForKey_;
        goto LABEL_176;
      }

      v114 = v112;
      v115 = v334;
      CMTimeMakeWithSeconds(__src, v109, v334);
      sub_1AC7A0688();
      v313 = v90;
      CMTimeMakeWithSeconds(__src, v114, v115);
      v116 = sub_1AC7A0688();
      v49 = v117;
      a2 = v313;
      v290 = v118;
      sub_1AC7A0578();
      sub_1AC7A0538();
      v60 = *(a2 + 16);
      if (!v60)
      {

        v194 = MEMORY[0x1E69E7CC0];
        v47 = &selRef_removeObjectForKey_;
        goto LABEL_162;
      }

      v287 = v49;
      v288 = v116;
      v364.value = MEMORY[0x1E69E7CC0];
      v68 = &v364;
      sub_1AC631324();
      v119 = 0;
      v120 = *(v305 + v291);
      v316 = v364.value;
      v311 = v60;
      v312 = a2 + 32;
      v308 = (v343 == 0) & v310;
      v49 = v120 + 56;
      v61 = v336;
      v47 = &selRef_removeObjectForKey_;
      while (1)
      {
        if (v119 >= *(a2 + 16))
        {
          goto LABEL_277;
        }

        v315 = v119;
        v121 = *(v312 + 8 * v119);

        v325 = sub_1AC7A0558();
        v326 = v122;
        v324 = v123;
        v349 = v121 >> 62;
        if (!(v121 >> 62))
        {
          if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          goto LABEL_155;
        }

        if (sub_1AC7A08E8())
        {
          break;
        }

LABEL_155:
        sub_1AC79F508();

LABEL_156:
        v192 = v316;
        v364.value = v316;
        v60 = *(v316 + 16);
        if (v60 >= *(v316 + 24) >> 1)
        {
          sub_1AC631324();
          v192 = v364.value;
        }

        v68 = v315 + 1;
        *(v192 + 16) = v60 + 1;
        v193 = (*(v319 + 80) + 32) & ~*(v319 + 80);
        v316 = v192;
        (*(v319 + 32))(v192 + v193 + *(v319 + 72) * v60, v318, v61);
        v119 = v68;
        a2 = v313;
        if (v68 == v311)
        {

          v49 = v287;
          v116 = v288;
          v194 = v316;
LABEL_162:
          v61 = v306;
          if (*(v194 + 16))
          {
            sub_1AC649E14(v356, v116, v49, v290, v194, v361);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v195 = *(v292 + 16);
              sub_1AC60DE2C();
              v292 = v196;
            }

            a2 = *(v292 + 16);
            if (a2 >= *(v292 + 24) >> 1)
            {
              sub_1AC60DE2C();
              v292 = v197;
            }

            swift_unknownObjectRelease();
            v60 = v292;
            *(v292 + 16) = a2 + 1;
            memcpy((v60 + 80 * a2 + 32), v361, 0x50uLL);
            v87 = v60;
            v68 = v295;
            goto LABEL_44;
          }

          swift_unknownObjectRelease();
          v68 = v295;
          v87 = v292;
          goto LABEL_45;
        }
      }

      sub_1AC61C25C(0, (v121 & 0xC000000000000001) == 0, v121);
      v337 = v121;
      v342 = v121 & 0xC000000000000001;
      if ((v121 & 0xC000000000000001) != 0)
      {
        v124 = MEMORY[0x1B26E95B0](0, v121);
      }

      else
      {
        v124 = *(v121 + 32);
      }

      v125 = v124;
      v126 = [v124 v47[149]];
      v127 = sub_1AC79FF68();
      v129 = v128;

      if (v308 || [v125 hasSpaceBefore])
      {
        __src[0].value = 32;
        *&__src[0].timescale = 0xE100000000000000;
        MEMORY[0x1B26E8C40](v127, v129);

        v127 = __src[0].value;
        v129 = *&__src[0].timescale;
      }

      if ([v125 *(v48 + 2472)])
      {
        __src[0].value = v127;
        *&__src[0].timescale = v129;

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);
      }

      v323 = HIDWORD(v326);
      sub_1AC79F608();
      sub_1AC79F5D8();
      [v125 start];
      if (v130 != 0.0 || ([v125 end], v131 != 0.0))
      {
        if (sub_1AC637EF8(0, v120))
        {
          [v125 start];
          v132 = v334;
          CMTimeMakeWithSeconds(__src, v133, v334);
          v353 = sub_1AC7A0688();
          v352 = v134;
          v350 = v135;
          [v125 silenceStart];
          CMTimeMakeWithSeconds(__src, v136, v132);
          sub_1AC7A0688();
          v348 = HIDWORD(v137);
          sub_1AC7A0678();
          sub_1AC7A0578();
          v138 = v357.value;
          v139 = *&v357.timescale;
          epoch = v357.epoch;
          j = v358.value;
          v141 = *&v358.timescale;
          v353 = v358.epoch;
          __src[0] = v357;
          __src[1] = v358;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F69C();
          sub_1AC79F5E8();
          __src[0].value = v138;
          *&__src[0].timescale = v139;
          __src[0].epoch = epoch;
          __src[1].value = j;
          v47 = &selRef_removeObjectForKey_;
          *&__src[1].timescale = v141;
          v48 = 0x1E797E000;
          __src[1].epoch = v353;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F6F0();
          sub_1AC79F5E8();
        }
      }

      if (sub_1AC637EF8(1, v120))
      {
        [v125 confidence];
        v61 = v336;
        if (v142 != 0.0)
        {
          [v125 confidence];
          *&v144 = v143 / 1000.0;
          *&__src[0].value = v143 / 1000.0;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F5F4();
          sub_1AC79F5E8();
          __src[0].value = v144;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F648();
          sub_1AC79F5E8();
        }
      }

      else
      {

        v61 = v336;
      }

      (*v307)(v344, v320, v61);
      v145 = v337;
      v146 = sub_1AC753228(v337, 1);
      v350 = v147;
      v343 = sub_1AC61C24C(v145);
      sub_1AC61C24C(v145);
      v148 = v145 & 0xFFFFFFFFFFFFFF8;
      v335 = v145 + 32;
      v348 = v145 & 0xFFFFFFFFFFFFFF8;
      if (v145 < 0)
      {
        v148 = v145;
      }

      v347 = v148;
      while (2)
      {
        v149 = v350;
        if (v146 == v343)
        {

          (*v341)(v320, v61);
          (*v345)(v318, v344, v61);
          goto LABEL_156;
        }

        v87 = v342;
        if (v342)
        {
          v150 = v146;
          v151 = v146;
          v152 = v337;
          v352 = MEMORY[0x1B26E95B0](v151, v337);
          v153 = MEMORY[0x1B26E95B0](v149, v152);
          goto LABEL_122;
        }

        if ((v146 & 0x8000000000000000) == 0)
        {
          v87 = *(v348 + 16);
          if (v146 >= v87)
          {
            goto LABEL_173;
          }

          if (v350 >= v87)
          {
            goto LABEL_174;
          }

          v150 = v146;
          v154 = *(v335 + 8 * v146);
          v155 = *(v335 + 8 * v350);
          v352 = v154;
          v153 = v155;
LABEL_122:
          j = v153;
          if (v349)
          {
            v156 = sub_1AC7A08E8();
            sub_1AC7A08E8();
          }

          else
          {
            v156 = *(v348 + 16);
          }

          if (v150 == v156)
          {
            __break(1u);
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          v157 = v149 + 1;
          if (__OFADD__(v149, 1))
          {
            goto LABEL_170;
          }

          if (v349)
          {
            v160 = sub_1AC7A08E8();
            v353 = v149;
            v159 = v352;
            if (v157 == v160)
            {
              v353 = sub_1AC7A08E8();
              v157 = sub_1AC7A08E8();
            }
          }

          else
          {
            if (v157 == *(v348 + 16))
            {
              v158 = v149 + 1;
            }

            else
            {
              v158 = v149;
            }

            v353 = v158;
            v159 = v352;
          }

          v350 = v157;
          v161 = [j v47[149]];
          v162 = sub_1AC79FF68();
          v164 = v163;

          v165 = [v159 hasSpaceAfter];
          if ([j hasSpaceBefore] && !v165)
          {
            __src[0].value = 32;
            *&__src[0].timescale = 0xE100000000000000;
            MEMORY[0x1B26E8C40](v162, v164);

            v162 = __src[0].value;
            v164 = *&__src[0].timescale;
          }

          if ([j hasSpaceAfter])
          {
            __src[0].value = v162;
            *&__src[0].timescale = v164;

            MEMORY[0x1B26E8C40](32, 0xE100000000000000);
          }

          sub_1AC79F608();
          sub_1AC79F5D8();
          [j start];
          v47 = &selRef_removeObjectForKey_;
          v48 = 0x1E797E000;
          if (v166 == 0.0 && ([j end], v167 == 0.0))
          {
LABEL_146:
            if (*(v120 + 16))
            {
              v184 = *(v120 + 40);
              sub_1AC7A0E78();
              MEMORY[0x1B26E9A40](1);
              v185 = sub_1AC7A0EC8();
              v186 = ~(-1 << *(v120 + 32));
              while (1)
              {
                v187 = v185 & v186;
                if (((*(v49 + (((v185 & v186) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v185 & v186)) & 1) == 0)
                {
                  break;
                }

                v185 = v187 + 1;
                if (*(*(v120 + 48) + v187) == 1)
                {
                  [j confidence];
                  if (v188 != 0.0)
                  {
                    [j confidence];
                    *&v190 = v189 / 1000.0;
                    *&__src[0].value = v189 / 1000.0;
                    LOBYTE(__src[0].timescale) = 0;
                    sub_1AC64F5F4();
                    sub_1AC79F5E8();
                    __src[0].value = v190;
                    LOBYTE(__src[0].timescale) = 0;
                    sub_1AC64F648();
                    sub_1AC79F5E8();
                  }

                  break;
                }
              }
            }
          }

          else if (*(v120 + 16))
          {
            v168 = *(v120 + 40);
            sub_1AC7A0E78();
            MEMORY[0x1B26E9A40](0);
            v169 = sub_1AC7A0EC8();
            v170 = ~(-1 << *(v120 + 32));
            while (1)
            {
              v171 = v169 & v170;
              if (((*(v49 + (((v169 & v170) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v169 & v170)) & 1) == 0)
              {
                goto LABEL_146;
              }

              v169 = v171 + 1;
              if (!*(*(v120 + 48) + v171))
              {
                [j start];
                v172 = v334;
                CMTimeMakeWithSeconds(__src, v173, v334);
                v174 = sub_1AC7A0688();
                v329 = v175;
                v330 = v174;
                v328 = v176;
                [j silenceStart];
                CMTimeMakeWithSeconds(__src, v177, v172);
                sub_1AC7A0688();
                v327 = HIDWORD(v178);
                sub_1AC7A0678();
                sub_1AC7A0578();
                v179 = v359.value;
                v180 = *&v359.timescale;
                v181 = v359.epoch;
                v182 = v360.value;
                v183 = *&v360.timescale;
                v330 = v360.epoch;
                __src[0] = v359;
                __src[1] = v360;
                LOBYTE(__src[2].value) = 0;
                sub_1AC64F69C();
                sub_1AC79F5E8();
                __src[0].value = v179;
                *&__src[0].timescale = v180;
                v61 = v336;
                v47 = &selRef_removeObjectForKey_;
                __src[0].epoch = v181;
                __src[1].value = v182;
                v48 = 0x1E797E000;
                v159 = v352;
                *&__src[1].timescale = v183;
                __src[1].epoch = v330;
                LOBYTE(__src[2].value) = 0;
                sub_1AC64F6F0();
                sub_1AC79F5E8();
                goto LABEL_146;
              }
            }
          }

          v191 = v340;
          (*v345)(v340, v354, v61);
          sub_1AC753294(&qword_1EB56B478, MEMORY[0x1E6968848]);
          sub_1AC79F5A8();

          (*v341)(v191, v61);
          v146 = v353;
          continue;
        }

        break;
      }

      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      v198 = v87;
LABEL_176:

      v45 = v198;
      if (!*(v198 + 16))
      {

        v43 = v309;
        v49 = 0x1AC7A6000;
        j = 0x1EB56E000;
        LOBYTE(v44) = v286;
        goto LABEL_178;
      }

      return v45;
    default:
LABEL_178:
      if (v44)
      {
        v309 = v43;
        v60 = v314;

        goto LABEL_188;
      }

LABEL_180:
      v309 = v43;
      v199 = v314;

      sub_1AC748910(1, v199);
      v68 = v200;
      a2 = v201;
      v60 = v202;
      v61 = v203;
      if ((v203 & 1) == 0)
      {
        goto LABEL_181;
      }

      sub_1AC7A0D68();
      swift_unknownObjectRetain_n();
      v205 = swift_dynamicCastClass();
      if (!v205)
      {
        swift_unknownObjectRelease();
        v205 = MEMORY[0x1E69E7CC0];
      }

      v206 = *(v205 + 16);

      if (__OFSUB__(v61 >> 1, v60))
      {
        goto LABEL_292;
      }

      if (v206 != (v61 >> 1) - v60)
      {
        goto LABEL_293;
      }

      v60 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v47 = &selRef_removeObjectForKey_;
      if (!v60)
      {
        swift_unknownObjectRelease();
        v60 = MEMORY[0x1E69E7CC0];
      }

LABEL_188:
      v207 = *(v60 + 16);
      a2 = v346;
      if (!v207)
      {
        goto LABEL_266;
      }

      v355[0] = MEMORY[0x1E69E7CC0];
      v68 = v355;
      sub_1AC631324();
      v61 = 0;
      v208 = v355[0];
      j = *(v305 + *(j + 1680));
      v323 = v60 + 32;
      v320 = (v319 + 16);
      v348 = j + 56;
      v347 = (v319 + 32);
      v344 = (v319 + 8);
      v209 = *(v49 + 3016);
      v314 = v60;
      v318 = v207;
      while (1)
      {
        if (v61 >= *(v60 + 16))
        {
          goto LABEL_278;
        }

        v210 = *(v323 + 8 * v61);

        v68 = v210;
        v328 = sub_1AC7A0558();
        v329 = v211;
        v327 = v212;
        v352 = v210 >> 62;
        v213 = v210 >> 62 ? sub_1AC7A08E8() : *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v325 = v61;
        if (v213)
        {
          break;
        }

        sub_1AC79F508();

LABEL_260:
        v355[0] = v208;
        v276 = *(v208 + 16);
        if (v276 >= *(v208 + 24) >> 1)
        {
          v68 = v355;
          sub_1AC631324();
          v208 = v355[0];
        }

        v277 = v325 + 1;
        *(v208 + 16) = v276 + 1;
        v278 = v208 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v276;
        v61 = v277;
        (*(v319 + 32))(v278, v317, v336);
        v60 = v314;
        if (v61 == v207)
        {
LABEL_266:

          sub_1AC752B88();
          v280 = v279;

          if (*(v280 + 16))
          {
            sub_1AC649E14(v321, v298, v299, v300, v280, __src);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD30, &qword_1AC7A8160);
            v281 = swift_allocObject();
            *(v281 + 16) = xmmword_1AC7A6D00;
            memcpy((v281 + 32), __src, 0x50uLL);
            return v281;
          }

          else
          {

            return MEMORY[0x1E69E7CC0];
          }
        }
      }

      v324 = v208;
      sub_1AC61C25C(0, (v210 & 0xC000000000000001) == 0, v210);
      v342 = v210;
      v343 = v210 & 0xC000000000000001;
      if ((v210 & 0xC000000000000001) != 0)
      {
        v214 = MEMORY[0x1B26E95B0](0, v210);
      }

      else
      {
        v214 = *(v210 + 32);
      }

      v215 = v214;
      v216 = [v214 v47[149]];
      v217 = sub_1AC79FF68();
      v60 = v218;

      if ((v310 & 1) != 0 || [v215 hasSpaceBefore])
      {
        __src[0].value = 32;
        *&__src[0].timescale = 0xE100000000000000;
        MEMORY[0x1B26E8C40](v217, v60);

        v217 = __src[0].value;
        v60 = *&__src[0].timescale;
      }

      if ([v215 hasSpaceAfter])
      {
        __src[0].value = v217;
        *&__src[0].timescale = v60;

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);

        v60 = *&__src[0].timescale;
      }

      v219 = v342;
      v326 = HIDWORD(v329);
      sub_1AC79F608();
      sub_1AC79F5D8();
      [v215 start];
      if (v220 != 0.0 || ([v215 end], v221 != 0.0))
      {
        if (sub_1AC637EF8(0, j))
        {
          [v215 start];
          v222 = v334;
          CMTimeMakeWithSeconds(__src, v223, v334);
          v354 = sub_1AC7A0688();
          v353 = v224;
          v350 = v225;
          [v215 silenceStart];
          CMTimeMakeWithSeconds(__src, v226, v222);
          a2 = v346;
          sub_1AC7A0688();
          v349 = HIDWORD(v227);
          sub_1AC7A0678();
          sub_1AC7A0578();
          v60 = v362.value;
          v228 = *&v362.timescale;
          v229 = v362.epoch;
          v230 = v363.value;
          v231 = *&v363.timescale;
          v354 = v363.epoch;
          __src[0] = v362;
          __src[1] = v363;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F69C();
          sub_1AC79F5E8();
          __src[0].value = v60;
          *&__src[0].timescale = v228;
          __src[0].epoch = v229;
          __src[1].value = v230;
          v47 = &selRef_removeObjectForKey_;
          *&__src[1].timescale = v231;
          __src[1].epoch = v354;
          LOBYTE(__src[2].value) = 0;
          sub_1AC64F6F0();
          sub_1AC79F5E8();
          v219 = v342;
        }
      }

      if (sub_1AC637EF8(1, j))
      {
        [v215 confidence];
        v61 = v336;
        if (v232 != 0.0)
        {
          [v215 confidence];
          *&v234 = v233 / v209;
          *&__src[0].value = v233 / v209;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F5F4();
          sub_1AC79F5E8();
          __src[0].value = v234;
          LOBYTE(__src[0].timescale) = 0;
          sub_1AC64F648();
          sub_1AC79F5E8();
        }

        v219 = v342;
      }

      else
      {

        v61 = v336;
      }

      (*v320)(v339, v322, v61);
      v49 = sub_1AC753228(v219, 1);
      v353 = v235;
      v345 = sub_1AC61C24C(v219);
      sub_1AC61C24C(v219);
      v236 = v219 & 0xFFFFFFFFFFFFFF8;
      v341 = (v219 + 32);
      v350 = v219 & 0xFFFFFFFFFFFFFF8;
      if (v219 < 0)
      {
        v236 = v219;
      }

      v349 = v236;

      break;
  }

  while (1)
  {
    v68 = v353;
    if (v49 == v345)
    {

      v68 = v322;
      (*v344)(v322, v61);
      v274 = *v347;
      (*v347)(v68, v339, v61);
      if (v309)
      {

        v207 = v318;
        v208 = v324;
      }

      else
      {
        v275 = sub_1AC637EF8(0, j);
        v207 = v318;
        v208 = v324;
        if (v275)
        {
          if (sub_1AC7A05A8())
          {
            *&__src[0].value = v303;
            *&__src[0].epoch = v304;
            *&__src[1].timescale = v302;
            __src[1].epoch = v301;
            LOBYTE(__src[2].value) = 0;
          }

          else
          {
            memset(__src, 0, 48);
            LOBYTE(__src[2].value) = 1;
          }

          sub_1AC64F69C();
          v68 = v322;
          sub_1AC79F5E8();
        }
      }

      v274(v317, v322, v61);
      goto LABEL_260;
    }

    if (v343)
    {
      v237 = v342;
      v238 = MEMORY[0x1B26E95B0](v49, v342);
      v239 = MEMORY[0x1B26E95B0](v68, v237);
    }

    else
    {
      if ((v49 & 0x8000000000000000) != 0)
      {
        goto LABEL_271;
      }

      v240 = *(v350 + 16);
      if (v49 >= v240)
      {
        goto LABEL_272;
      }

      if (v353 >= v240)
      {
        goto LABEL_273;
      }

      v241 = v341[v353];
      v238 = v341[v49];
      v239 = v241;
    }

    v242 = v239;
    if (v352)
    {
      v354 = v239;
      v60 = sub_1AC7A08E8();
      v242 = v354;
      sub_1AC7A08E8();
    }

    else
    {
      v60 = *(v350 + 16);
    }

    if (v49 == v60)
    {
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
LABEL_288:
      __break(1u);
LABEL_289:
      __break(1u);
LABEL_290:
      __break(1u);
LABEL_291:
      __break(1u);
LABEL_292:
      __break(1u);
LABEL_293:
      swift_unknownObjectRelease();
      v47 = &selRef_removeObjectForKey_;
LABEL_181:
      sub_1AC751E84(v68, a2, v60, v61, &qword_1EB56BD18, &unk_1AC7AB420, &qword_1EB56BD48, &qword_1AC7A8178);
      v60 = v204;
      swift_unknownObjectRelease();
      goto LABEL_188;
    }

    v49 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_270;
    }

    if (v352)
    {
      v243 = v68;
      if (v49 == sub_1AC7A08E8())
      {
        v243 = sub_1AC7A08E8();
        v49 = sub_1AC7A08E8();
      }
    }

    else if (v49 == *(v350 + 16))
    {
      v243 = v68 + 1;
    }

    else
    {
      v243 = v68;
    }

    v353 = v49;
    v354 = v243;
    v244 = [v242 v47[149]];
    v245 = sub_1AC79FF68();
    v247 = v246;

    v248 = [v238 hasSpaceAfter];
    if ([v242 hasSpaceBefore] && !v248)
    {
      __src[0].value = 32;
      *&__src[0].timescale = 0xE100000000000000;
      MEMORY[0x1B26E8C40](v245, v247);

      v245 = __src[0].value;
      v247 = *&__src[0].timescale;
    }

    if ([v242 hasSpaceAfter])
    {
      __src[0].value = v245;
      *&__src[0].timescale = v247;

      MEMORY[0x1B26E8C40](32, 0xE100000000000000);
    }

    sub_1AC79F608();
    sub_1AC79F5D8();
    [v242 start];
    v249 = v348;
    v49 = v354;
    if (v250 != 0.0 || ([v242 end], v251 != 0.0))
    {
      if (!*(j + 16))
      {
        goto LABEL_250;
      }

      v252 = *(j + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](0);
      v253 = sub_1AC7A0EC8();
      v254 = ~(-1 << *(j + 32));
      do
      {
        v255 = v253 & v254;
        if (((*(v249 + (((v253 & v254) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v253 & v254)) & 1) == 0)
        {
          goto LABEL_244;
        }

        v253 = v255 + 1;
      }

      while (*(*(j + 48) + v255));
      [v242 start];
      v256 = v334;
      CMTimeMakeWithSeconds(__src, v257, v334);
      v337 = sub_1AC7A0688();
      v335 = v258;
      v330 = v259;
      [v242 silenceStart];
      CMTimeMakeWithSeconds(__src, v260, v256);
      sub_1AC7A0688();
      v340 = v238;
      sub_1AC7A0678();
      sub_1AC7A0578();
      v261 = v364.value;
      v262 = *&v364.timescale;
      v264 = v364.epoch;
      v263 = v365.value;
      v266 = *&v365.timescale;
      v265 = v365.epoch;
      __src[0] = v364;
      __src[1] = v365;
      LOBYTE(__src[2].value) = 0;
      sub_1AC64F69C();
      sub_1AC79F5E8();
      __src[0].value = v261;
      *&__src[0].timescale = v262;
      v249 = v348;
      v47 = &selRef_removeObjectForKey_;
      __src[0].epoch = v264;
      __src[1].value = v263;
      v49 = v354;
      v61 = v336;
      *&__src[1].timescale = v266;
      __src[1].epoch = v265;
      v238 = v340;
      a2 = v346;
      LOBYTE(__src[2].value) = 0;
      sub_1AC64F6F0();
      sub_1AC79F5E8();
    }

LABEL_244:
    if (*(j + 16))
    {
      v267 = *(j + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](1);
      v268 = sub_1AC7A0EC8();
      v269 = ~(-1 << *(j + 32));
      do
      {
        v270 = v268 & v269;
        if (((*(v249 + (((v268 & v269) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v268 & v269)) & 1) == 0)
        {
          goto LABEL_250;
        }

        v268 = v270 + 1;
      }

      while (*(*(j + 48) + v270) != 1);
      [v242 confidence];
      if (v271 != 0.0)
      {
        [v242 confidence];
        *&v273 = v272 / v209;
        *&__src[0].value = v272 / v209;
        LOBYTE(__src[0].timescale) = 0;
        sub_1AC64F5F4();
        sub_1AC79F5E8();
        __src[0].value = v273;
        LOBYTE(__src[0].timescale) = 0;
        sub_1AC64F648();
        sub_1AC79F5E8();
      }
    }

LABEL_250:
    v60 = v338;
    (*v347)(v338, v351, v61);
    sub_1AC753294(&qword_1EB56B478, MEMORY[0x1E6968848]);
    sub_1AC79F5A8();

    (*v344)(v60, v61);
  }
}

void sub_1AC74EBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a2;
  v34 = a1;
  v33 = sub_1AC79FBC8();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1AC631164();
    v9 = v37;
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = a3 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v31 = *(v10 + 56);
    v32 = v11;
    v13 = (v10 - 8);
    do
    {
      v14 = v33;
      v15 = v10;
      v32(v7, v12, v33);
      v16 = sub_1AC79FBD8();
      (*v13)(v7, v14);
      v37 = v9;
      v17 = *(v9 + 16);
      if (v17 >= *(v9 + 24) >> 1)
      {
        sub_1AC631164();
        v9 = v37;
      }

      *(v9 + 16) = v17 + 1;
      *(v9 + 8 * v17 + 32) = v16;
      v12 += v31;
      --v8;
      v10 = v15;
    }

    while (v8);
  }

  v36[0] = v9;
  v36[1] = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DF38, &unk_1AC7B2C20);
  sub_1AC5C8B9C(&qword_1EB56DF40, &qword_1EB56DF38, &unk_1AC7B2C20);
  sub_1AC79FCD8();
  v18 = v37;
  v19 = v38;
  v20 = v39;
  v37 = v40;
  v21 = *(v18 + 16);
  v34 = v30 + 32;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = v38;
  while (1)
  {
    if (v21 == v23)
    {

      return;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v23 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v24 = *(v18 + 8 * v23++ + 32);
    v36[0] = v24;
    v20(&v35, v36);
    if (sub_1AC6100B0())
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }

      if (v24 >= *(v30 + 16))
      {
        goto LABEL_22;
      }

      v25 = *(v34 + 8 * v24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v22 + 16);
        sub_1AC60F3C4();
        v22 = v28;
      }

      v26 = *(v22 + 16);
      if (v26 >= *(v22 + 24) >> 1)
      {
        sub_1AC60F3C4();
        v22 = v29;
      }

      *(v22 + 16) = v26 + 1;
      *(v22 + 8 * v26 + 32) = v25;
      v19 = v23;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

__n128 sub_1AC74EF48@<Q0>(_OWORD *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, int a10, _BYTE *a11, uint64_t a12, _OWORD *a13)
{
  v14 = v13;
  v323 = a7;
  v324 = a8;
  v322 = a6;
  v285 = a5;
  v289 = a3;
  v290 = a4;
  v291 = a1;
  v282 = a9;
  v16 = sub_1AC79FBC8();
  v312 = *(v16 - 8);
  v17 = *(v312 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v316 = &v273 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v308 = &v273 - v20;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DED0, &unk_1AC7B2BB0);
  v21 = *(*(v306 - 8) + 64);
  MEMORY[0x1EEE9AC00](v306);
  v23 = &v273 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C750, &qword_1AC7AA668);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v307 = &v273 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DED8, &unk_1AC7B2BC0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v311 = &v273 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v310 = &v273 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4F0, &qword_1AC7A9198);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v273 - v34;
  v332 = type metadata accessor for TranscriptionSegment();
  v287 = *(v332 - 8);
  v36 = *(v287 + 64);
  v37 = MEMORY[0x1EEE9AC00](v332);
  v295 = &v273 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v286 = &v273 - v39;
  v40 = sub_1AC79F618();
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v273 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = sub_1AC79F5C8();
  v296 = *(v336 - 8);
  v44 = *(v296 + 64);
  v45 = MEMORY[0x1EEE9AC00](v336);
  v342.i64[0] = &v273 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v326 = &v273 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v331 = &v273 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v298 = &v273 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v299 = &v273 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v284 = &v273 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v292 = &v273 - v57;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  v64 = *a11;
  if (!*a11)
  {
    v58 = *MEMORY[0x1E6960C98];
    v59 = *(MEMORY[0x1E6960C98] + 8);
    v60 = *(MEMORY[0x1E6960C98] + 16);
    v61 = *(MEMORY[0x1E6960C98] + 24);
    v62 = *(MEMORY[0x1E6960C98] + 32);
    v63 = *(MEMORY[0x1E6960C98] + 40);
  }

  v278 = v59;
  v279 = v58;
  v360[0] = v58;
  v360[1] = v59;
  v276 = v61;
  v277 = v60;
  v360[2] = v60;
  v360[3] = v61;
  v274 = v63;
  v275 = v62;
  v360[4] = v62;
  v360[5] = v63;
  v361 = v64 != 0;
  v317 = sub_1AC637EF8(1, *&v14[OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions]);
  v65 = v64 != 2 && *&v14[OBJC_IVAR____TtC6Speech17TranscriberCommon_modelTaskAssetType] == 7;
  v66 = !v65;
  v321 = v66;
  v297 = v64;
  if (v65)
  {
    v64 = v291;
    v67 = sub_1AC7A0558();
    v319 = v68;
    v320 = v67;
    v318 = v69;
  }

  else
  {
    v319 = 0;
    v320 = 0;
    v318 = 0;
  }

  *&v341 = v16;
  *&v344 = v23;
  v334 = v35;
  v330 = v43;
  if (v317)
  {
    goto LABEL_22;
  }

  sub_1AC748910(1, a2);
  v64 = v70;
  v16 = v71;
  a2 = v72;
  v35 = v73;
  if (v73)
  {
    sub_1AC7A0D68();
    swift_unknownObjectRetain_n();
    v75 = swift_dynamicCastClass();
    if (!v75)
    {
      swift_unknownObjectRelease();
      v75 = MEMORY[0x1E69E7CC0];
    }

    v76 = *(v75 + 16);

    if (__OFSUB__(v35 >> 1, a2))
    {
      goto LABEL_221;
    }

    if (v76 != (v35 >> 1) - a2)
    {
      goto LABEL_222;
    }

    a2 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v35 = v334;
    if (a2)
    {
      goto LABEL_22;
    }

    a2 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_14:
  sub_1AC751E84(v64, v16, a2, v35, &qword_1EB56BD18, &unk_1AC7AB420, &qword_1EB56BD48, &qword_1AC7A8178);
  a2 = v74;
  v35 = v334;
LABEL_21:
  swift_unknownObjectRelease();
LABEL_22:
  v77 = 0;
  v280 = a13;
  v281 = a12;
  v335 = v296 + 32;
  LODWORD(v339) = a10;
  v78 = *(a2 + 16);
  v288 = (v296 + 16);
  v329 = (v296 + 8);
  v314 = OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions;
  v300 = MEMORY[0x1E69E7CC0];
  v302 = v14;
  v293 = a2;
  v294 = v78;
  while (v78 != v77)
  {
    if (v77 >= *(a2 + 16))
    {
      goto LABEL_210;
    }

    v64 = *(a2 + 8 * v77 + 32);
    v79 = v64 >> 62;
    if (v64 >> 62)
    {
      if (v64 < 0)
      {
        v155 = *(a2 + 8 * v77 + 32);
      }

      v16 = *(a2 + 8 * v77 + 32);
      v156 = v78;
      v80 = sub_1AC7A08E8();
      v78 = v156;
      v64 = v16;
    }

    else
    {
      v80 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v77 = (v77 + 1);
    if (v80)
    {
      v35 = *&v14[v314];
      sub_1AC61C25C(0, (v64 & 0xC000000000000001) == 0, v64);
      v325 = v64 & 0xC000000000000001;
      v283 = v77;
      v315 = v64;
      if ((v64 & 0xC000000000000001) != 0)
      {

        v82 = MEMORY[0x1B26E95B0](0, v64);
      }

      else
      {
        v81 = *(v64 + 32);

        v82 = v81;
      }

      v83 = v82;
      v84 = [v82 tokenName];
      v85 = sub_1AC79FF68();
      v87 = v86;

      if ([v83 hasSpaceBefore])
      {
        *v347 = 32;
        *&v347[8] = 0xE100000000000000;
        MEMORY[0x1B26E8C40](v85, v87);

        v85 = *v347;
        v87 = *&v347[8];
      }

      if ([v83 hasSpaceAfter])
      {
        *v347 = v85;
        *&v347[8] = v87;

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);
      }

      sub_1AC79F608();
      sub_1AC79F5D8();
      [v83 start];
      v327 = v79;
      if (v88 != 0.0 || ([v83 end], v89 != 0.0))
      {
        if (sub_1AC637EF8(0, v35))
        {
          [v83 start];
          v90 = v339;
          CMTimeMakeWithSeconds(v347, v91, v339);
          v343 = sub_1AC7A0688();
          *&v340 = v92;
          [v83 silenceStart];
          CMTimeMakeWithSeconds(v347, v93, v90);
          sub_1AC7A0688();
          if ((v321 & 1) == 0)
          {
            sub_1AC7A0678();
          }

          sub_1AC7A0578();
          v94 = v348;
          v95 = v349;
          v96 = v350;
          v97 = v351;
          v98 = v352;
          v99 = v353;
          *v347 = v348;
          *&v347[8] = v349;
          *&v347[16] = v350;
          *&v347[24] = v351;
          *&v347[32] = v352;
          *&v347[40] = v353;
          v347[48] = 0;
          sub_1AC64F69C();
          sub_1AC79F5E8();
          *v347 = v94;
          *&v347[8] = v95;
          *&v347[16] = v96;
          *&v347[24] = v97;
          *&v347[32] = v98;
          *&v347[40] = v99;
          v347[48] = 0;
          sub_1AC64F6F0();
          sub_1AC79F5E8();
          v14 = v302;
          v79 = v327;
        }
      }

      if (sub_1AC637EF8(1, v35))
      {
        [v83 confidence];
        if (v100 != 0.0)
        {
          [v83 confidence];
          v102 = v101 / 1000.0;
          *v347 = v101 / 1000.0;
          v347[8] = 0;
          sub_1AC64F5F4();
          sub_1AC79F5E8();
          *v347 = v102;
          v347[8] = 0;
          sub_1AC64F648();
          sub_1AC79F5E8();
        }
      }

      v103 = v336;
      v104 = v299;
      v333 = *v335;
      v333(v299, v298, v336);

      (*v288)(v331, v104, v103);
      v105 = v315;
      v106 = sub_1AC753228(v315, 1);
      v16 = v107;
      v328 = sub_1AC61C24C(v105);
      sub_1AC61C24C(v105);
      v108 = v105 & 0xFFFFFFFFFFFFFF8;
      v309 = v105 + 32;
      v338 = v105 & 0xFFFFFFFFFFFFFF8;
      if (v105 < 0)
      {
        v108 = v105;
      }

      v337 = v108;
      a2 = v35 + 56;

      v313 = v35 + 56;
LABEL_46:
      if (v106 == v328)
      {

        v147 = v299;
        v148 = v336;
        (*v329)(v299, v336);
        v333(v147, v331, v148);
        if (v297)
        {

          v35 = v334;
          a2 = v293;
          v77 = v283;
        }

        else
        {
          v362 = v279;
          v363 = v278;
          v364 = v277;
          v365 = v276;
          v366 = v275;
          v367 = v274;
          v149 = sub_1AC637EF8(0, v35);
          a2 = v293;
          v77 = v283;
          if (v149)
          {
            v150 = sub_1AC7A05A8();
            v35 = v334;
            if (v150)
            {
              *v347 = v279;
              *&v347[8] = v278;
              *&v347[16] = v277;
              *&v347[24] = v276;
              *&v347[32] = v275;
              *&v347[40] = v274;
              v347[48] = 0;
            }

            else
            {
              memset(v347, 0, 48);
              v347[48] = 1;
            }

            sub_1AC64F69C();
            sub_1AC79F5E8();
          }

          else
          {

            v35 = v334;
          }
        }

        v151 = v284;
        v152 = v336;
        v153 = v333;
        v333(v284, v299, v336);
        v153(v292, v151, v152);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v157 = *(v300 + 16);
          sub_1AC60DD6C();
          v300 = v158;
        }

        v16 = *(v300 + 16);
        v64 = v16 + 1;
        if (v16 >= *(v300 + 24) >> 1)
        {
          sub_1AC60DD6C();
          v300 = v159;
        }

        v154 = v300;
        *(v300 + 16) = v64;
        v333((v154 + ((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * v16), v292, v336);
        v78 = v294;
        continue;
      }

      v64 = v16;
      if (v325)
      {
        v109 = v315;
        v343 = MEMORY[0x1B26E95B0](v106, v315);
        v110 = MEMORY[0x1B26E95B0](v64, v109);
      }

      else
      {
        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_214;
        }

        v111 = *(v338 + 16);
        if (v106 >= v111)
        {
          goto LABEL_215;
        }

        if (v16 >= v111)
        {
          goto LABEL_216;
        }

        v112 = *(v309 + 8 * v16);
        v343 = *(v309 + 8 * v106);
        v110 = v112;
      }

      v113 = v110;
      if (v79)
      {
        v114 = v35;
        v115 = v110;
        v16 = sub_1AC7A08E8();
        v113 = v115;
        v35 = v114;
        a2 = v313;
        sub_1AC7A08E8();
      }

      else
      {
        v16 = *(v338 + 16);
      }

      if (v106 == v16)
      {
        goto LABEL_212;
      }

      v16 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_213;
      }

      if (v79)
      {
        v106 = v64;
        if (v16 == sub_1AC7A08E8())
        {
          v106 = sub_1AC7A08E8();
          v16 = sub_1AC7A08E8();
        }
      }

      else if (v16 == *(v338 + 16))
      {
        v106 = v64 + 1;
      }

      else
      {
        v106 = v64;
      }

      *&v340 = v16;
      v116 = [v113 tokenName];
      v117 = sub_1AC79FF68();
      v119 = v118;

      v120 = [v343 hasSpaceAfter];
      if ([v113 hasSpaceBefore] && !v120)
      {
        *v347 = 32;
        *&v347[8] = 0xE100000000000000;
        MEMORY[0x1B26E8C40](v117, v119);

        v117 = *v347;
        v119 = *&v347[8];
      }

      if ([v113 hasSpaceAfter])
      {
        *v347 = v117;
        *&v347[8] = v119;

        MEMORY[0x1B26E8C40](32, 0xE100000000000000);
      }

      sub_1AC79F608();
      sub_1AC79F5D8();
      [v113 start];
      if (v121 == 0.0 && ([v113 end], v122 == 0.0))
      {
LABEL_78:
        if (*(v35 + 16))
        {
          v138 = *(v35 + 40);
          sub_1AC7A0E78();
          MEMORY[0x1B26E9A40](1);
          v139 = sub_1AC7A0EC8();
          v140 = ~(-1 << *(v35 + 32));
          while (1)
          {
            v141 = v139 & v140;
            if (((*(a2 + (((v139 & v140) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v139 & v140)) & 1) == 0)
            {
              break;
            }

            v139 = v141 + 1;
            if (*(*(v35 + 48) + v141) == 1)
            {
              [v113 confidence];
              if (v142 != 0.0)
              {
                [v113 confidence];
                v144 = v143 / 1000.0;
                *v347 = v143 / 1000.0;
                v347[8] = 0;
                sub_1AC64F5F4();
                sub_1AC79F5E8();
                *v347 = v144;
                v347[8] = 0;
                sub_1AC64F648();
                sub_1AC79F5E8();
              }

              break;
            }
          }
        }
      }

      else if (*(v35 + 16))
      {
        v123 = *(v35 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        v124 = sub_1AC7A0EC8();
        v125 = ~(-1 << *(v35 + 32));
        while (1)
        {
          v126 = v124 & v125;
          if (((*(a2 + (((v124 & v125) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v124 & v125)) & 1) == 0)
          {
            goto LABEL_78;
          }

          v124 = v126 + 1;
          if (!*(*(v35 + 48) + v126))
          {
            v305 = v106;
            [v113 start];
            v127 = v339;
            CMTimeMakeWithSeconds(v347, v128, v339);
            v129 = sub_1AC7A0688();
            v303 = v131;
            v304 = v130;
            [v113 silenceStart];
            CMTimeMakeWithSeconds(v347, v132, v127);
            sub_1AC7A0688();
            if ((v321 & 1) == 0)
            {
              v301 = v129;
              sub_1AC7A0678();
            }

            sub_1AC7A0578();
            v133 = v354;
            v134 = v355;
            v135 = v356;
            v136 = v357;
            v137 = v358;
            v304 = v359;
            *v347 = v354;
            *&v347[8] = v355;
            *&v347[16] = v356;
            *&v347[24] = v357;
            *&v347[32] = v358;
            *&v347[40] = v359;
            v347[48] = 0;
            sub_1AC64F69C();
            sub_1AC79F5E8();
            *v347 = v133;
            *&v347[8] = v134;
            *&v347[16] = v135;
            *&v347[24] = v136;
            *&v347[32] = v137;
            *&v347[40] = v304;
            v347[48] = 0;
            sub_1AC64F6F0();
            sub_1AC79F5E8();
            v14 = v302;
            v106 = v305;
            goto LABEL_78;
          }
        }
      }

      v145 = v326;
      v146 = v336;
      v333(v326, v342.i64[0], v336);
      sub_1AC753294(&qword_1EB56B478, MEMORY[0x1E6968848]);
      sub_1AC79F5A8();

      (*v329)(v145, v146);
      v79 = v327;
      v16 = v340;
      goto LABEL_46;
    }
  }

  v160 = 0;
  v336 = MEMORY[0x1E69E7CC0];
  while (v78 != v160)
  {
    if (v160 >= *(a2 + 16))
    {
      goto LABEL_211;
    }

    v16 = *(a2 + 8 * v160 + 32);
    if (!(v16 >> 62))
    {
      v35 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_107;
      }

      goto LABEL_113;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      v64 = *(a2 + 8 * v160 + 32);
    }

    else
    {
      v64 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v161 = sub_1AC7A08E8();
    v78 = v294;
    if (v161)
    {
      v35 = sub_1AC7A08E8();
      if (!v35)
      {
        v163 = MEMORY[0x1E69E7CC0];
        v35 = v334;
        goto LABEL_123;
      }

LABEL_113:
      v346[0] = MEMORY[0x1E69E7CC0];
      a2 = v35 & ~(v35 >> 63);

      v64 = v346;
      sub_1AC6313DC(0, a2, 0);
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_219;
      }

      v162 = 0;
      v163 = v346[0];
      if ((v16 & 0xC000000000000001) != 0)
      {
LABEL_115:
        v164 = MEMORY[0x1B26E95B0](v162, v16);
        goto LABEL_117;
      }

      while (1)
      {
        v164 = *(v16 + 8 * v162 + 32);
LABEL_117:
        sub_1AC64C7A0(v164, v339, v347);
        v346[0] = v163;
        v166 = *(v163 + 16);
        v165 = *(v163 + 24);
        if (v166 >= v165 >> 1)
        {
          sub_1AC6313DC(v165 > 1, v166 + 1, 1);
          v163 = v346[0];
        }

        *(v163 + 16) = v166 + 1;
        memcpy((v163 + 160 * v166 + 32), v347, 0xA0uLL);
        if (v35 - 1 == v162)
        {
          break;
        }

        ++v162;
        if ((v16 & 0xC000000000000001) != 0)
        {
          goto LABEL_115;
        }
      }

      v14 = v302;
      v35 = v334;
      a2 = v293;
LABEL_123:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v168 = *(v336 + 16);
        sub_1AC60E060();
        v336 = v169;
      }

      v78 = v294;
      v16 = *(v336 + 16);
      v64 = v16 + 1;
      if (v16 >= *(v336 + 24) >> 1)
      {
        v170 = v294;
        sub_1AC60E060();
        v78 = v170;
        v336 = v171;
      }

      v160 = (v160 + 1);
      v167 = v336;
      *(v336 + 16) = v64;
      *(v167 + 8 * v16 + 32) = v163;
    }

    else
    {
LABEL_107:
      v160 = (v160 + 1);
      v35 = v334;
    }
  }

  v172 = 0;
  v173 = v289 + 32;
  v174 = *(v289 + 16);
  v335 = MEMORY[0x1E69E7CC0];
  v343 = MEMORY[0x1E69E7CC0];
  while (v174 != v172)
  {
    v175 = *(v173 + 8 * v172);
    v176 = v175[2];
    if (v176)
    {
      if ((v317 & 1) != 0 || v176 == 1)
      {
        v178 = *(v173 + 8 * v172);

        v177 = v175;
      }

      else
      {
        v177 = sub_1AC60F5D0(1, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD48, &qword_1AC7A8178);
        swift_arrayInitWithCopy();
      }

      v179 = *&v14[v314];

      LOBYTE(v271) = 0;
      LOBYTE(v270) = v321;
      sub_1AC64B514(v177, 0, v322, v323, v324, v339, v320, v319, v318, v270, v360, v180, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285);
      v181 = 0;
    }

    else
    {
      v182 = *(v173 + 8 * v172);

      v183 = v343;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v192 = *(v183 + 2);
        sub_1AC60ED68();
        v183 = v193;
      }

      v184 = v183;
      v185 = *(v183 + 2);
      v343 = v184;
      if (v185 >= *(v184 + 3) >> 1)
      {
        sub_1AC60ED68();
        v343 = v194;
      }

      v186 = v343;
      *(v343 + 2) = v185 + 1;
      *&v186[8 * v185 + 32] = v172;
      v181 = 1;
    }

    v187 = v332;
    __swift_storeEnumTagSinglePayload(v35, v181, 1, v332);

    if (__swift_getEnumTagSinglePayload(v35, 1, v187) == 1)
    {
      sub_1AC5C720C(v35, &qword_1EB56C4F0, &qword_1AC7A9198);
      ++v172;
    }

    else
    {
      sub_1AC706CAC();
      sub_1AC706CAC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = *(v335 + 16);
        sub_1AC60DCAC();
        v335 = v196;
      }

      v188 = *(v335 + 16);
      if (v188 >= *(v335 + 24) >> 1)
      {
        sub_1AC60DCAC();
        v335 = v197;
      }

      ++v172;
      v189 = v335;
      *(v335 + 16) = v188 + 1;
      v190 = v189 + ((*(v287 + 80) + 32) & ~*(v287 + 80));
      v191 = *(v287 + 72);
      sub_1AC706CAC();
    }
  }

  v198 = v290;

  if (v317)
  {
    sub_1AC752ED8();
    v35 = v199;

    goto LABEL_159;
  }

  v200 = sub_1AC748868(1, v198);
  v202 = v201;
  v204 = v203;
  v206 = v205;
  if ((v205 & 1) == 0)
  {
LABEL_152:
    sub_1AC751BE4(v200, v202, v204, v206, sub_1AC60F638, MEMORY[0x1E6969C28]);
    v35 = v207;
    swift_unknownObjectRelease();
    goto LABEL_159;
  }

  sub_1AC7A0D68();
  swift_unknownObjectRetain_n();
  v208 = swift_dynamicCastClass();
  if (!v208)
  {
    swift_unknownObjectRelease();
    v208 = MEMORY[0x1E69E7CC0];
  }

  v209 = *(v208 + 16);

  if (__OFSUB__(v206 >> 1, v204))
  {
    __break(1u);
    goto LABEL_224;
  }

  if (v209 != (v206 >> 1) - v204)
  {
LABEL_224:
    swift_unknownObjectRelease();
    goto LABEL_152;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v35)
  {
    swift_unknownObjectRelease();
    v35 = MEMORY[0x1E69E7CC0];
  }

LABEL_159:
  v210 = v341;
  if (*(v343 + 2))
  {
    v346[2] = 0;
    v338 = v312 + 32;
    v342.i64[0] = (v343 + 32);
    v337 = v312 + 40;
    v346[0] = v35;
    v346[1] = 0;

    while (1)
    {
      sub_1AC747CD8(v311);
      v211 = v310;
      sub_1AC637E08();
      v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEE0, &qword_1AC7B2BD0);
      if (__swift_getEnumTagSinglePayload(v211, 1, v212) == 1)
      {
        break;
      }

      *&v340 = v35;
      *&v339 = *v211;
      v213 = *(v212 + 48);
      v214 = *v338;
      v215 = v211 + v213;
      v216 = v307;
      (*v338)(v307, v215, v210);
      a2 = v308;
      v214(v308, v216, v210);
      v16 = MEMORY[0x1E6969C28];
      sub_1AC753294(&qword_1EB56DEE8, MEMORY[0x1E6969C28]);
      sub_1AC7A0108();
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEF0, &qword_1AC7B2BD8) + 36);
      sub_1AC753294(&qword_1EB56C4F8, v16);
      v217 = 0;
      v218 = MEMORY[0x1E69E7CC0];
LABEL_163:
      while (1)
      {
        v14 = v217;
        v219 = v344;
        sub_1AC7A04E8();
        if (*(v219 + v35) == *v347)
        {
          break;
        }

        v64 = v219;
        v220 = sub_1AC7A0518();
        a2 = *v221;
        v220(v347, 0);
        sub_1AC7A04F8();
        v217 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
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
LABEL_216:
          __break(1u);
LABEL_217:
          __break(1u);
          goto LABEL_218;
        }

        v222 = *(v343 + 2);
        v223 = v342.i64[0];
        while (v222)
        {
          v224 = *v223++;
          --v222;
          if (v224 == v14)
          {
            goto LABEL_163;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v345 = v218;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v226 = *(v218 + 16);
          sub_1AC631474();
          v218 = v345;
        }

        v227 = *(v218 + 16);
        v16 = v227 + 1;
        if (v227 >= *(v218 + 24) >> 1)
        {
          sub_1AC631474();
          v218 = v345;
        }

        *(v218 + 16) = v16;
        v228 = v218 + 16 * v227;
        *(v228 + 32) = v14;
        *(v228 + 40) = a2;
        v210 = v341;
      }

      *(v219 + *(v306 + 36)) = v14;
      sub_1AC5C720C(v219, &qword_1EB56DED0, &unk_1AC7B2BB0);
      v229 = *(v218 + 16);
      if (v229)
      {
        *v347 = MEMORY[0x1E69E7CC0];
        sub_1AC631164();
        a2 = 0;
        v64 = *v347;
        v230 = 40;
        do
        {
          if (a2 >= *(v218 + 16))
          {
            goto LABEL_209;
          }

          v14 = *(v218 + v230);
          *v347 = v64;
          v35 = *(v64 + 16);
          v16 = v35 + 1;
          if (v35 >= *(v64 + 24) >> 1)
          {
            sub_1AC631164();
            v64 = *v347;
          }

          ++a2;
          *(v64 + 16) = v16;
          *(v64 + 8 * v35 + 32) = v14;
          v230 += 16;
        }

        while (v229 != a2);
      }

      else
      {

        v64 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1B26E8770](v64);
      v35 = v340;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AC704580(v35);
        v35 = v231;
      }

      if ((v339 & 0x8000000000000000) != 0)
      {
        goto LABEL_217;
      }

      if (v339 >= *(v35 + 16))
      {
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
LABEL_222:
        swift_unknownObjectRelease();
        goto LABEL_14;
      }

      (*(v312 + 40))(v35 + ((*(v312 + 80) + 32) & ~*(v312 + 80)) + *(v312 + 72) * v339, v316, v210);
    }
  }

  v232 = v297;
  v233 = v285;
  if ((v297 - 3) <= 1)
  {
    if (v285)
    {
      v234 = v285;
      v235 = [v285 audioAnalytics];
      if (v235)
      {

        v233 = v234;
        goto LABEL_198;
      }
    }

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v236 = sub_1AC79FDE8();
    __swift_project_value_buffer(v236, qword_1ED9386C8);
    v237 = sub_1AC79FDC8();
    v238 = sub_1AC7A05F8();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      *v239 = 0;
      _os_log_impl(&dword_1AC5BC000, v237, v238, "Unexpected nil audio analytics!", v239, 2u);
      MEMORY[0x1B26EAB10](v239, -1, -1);
    }

    v232 = v297;
    v233 = v285;
  }

  if (v233)
  {
LABEL_198:
    v64 = v233;
    sub_1AC64EA44([v64 audioAnalytics], v347);
    v344 = *v347;
    v240 = *&v347[16];
    v241 = [v64 endOfSentenceLikelihood];
    [v241 doubleValue];
    v243 = v242;

    v244 = [v64 latticeMitigatorResult];
    if (v244)
    {
      v245 = v244;
      v246 = [v244 version];
      v16 = sub_1AC79FF68();
      a2 = v247;

      [v245 score];
      v342 = v248;
      [v245 threshold];
      v341 = v249;
      [v245 calibrationScale];
      v340 = v250;
      [v245 calibrationOffset];
      v339 = v251;
      v252 = [v245 processed];

      v253.i64[0] = v342.u32[0];
      v253.i64[1] = v340;
      v254 = vorrq_s8(vshll_n_s32(__PAIR64__(v339, v341), 0x20uLL), v253);
    }

    else
    {
      v16 = 0;
      a2 = 0;
      v252 = 0;
      v254 = 0uLL;
    }

    v342 = v254;
    v14 = [v64 numOneBestTokensExcludingTriggerPhrase];
    v259 = sub_1AC648F8C();
    v261 = v260;

    if (v261)
    {
      v255 = 0;
    }

    else
    {
      v255 = v259;
    }

    if (v255 < 0)
    {
      goto LABEL_220;
    }

    v258 = 0;
    v232 = v297;
    v257 = v344;
    v256 = v342;
  }

  else
  {

    v255 = 0;
    v14 = 0;
    v16 = 0;
    a2 = 0;
    v252 = 0;
    v240 = 0;
    v256 = 0uLL;
    v243 = 0;
    v257 = 0uLL;
    v258 = 1;
  }

  v262 = v291;
  v263 = v291[1];
  v264 = v282;
  *v282 = *v291;
  v264[1] = v263;
  v265 = v262[2];
  v266 = v280;
  v267 = *v280;
  v264[2] = v265;
  v264[3] = v267;
  *(v264 + 8) = *(v266 + 2);
  *(v264 + 9) = v300;
  *(v264 + 10) = v336;
  *(v264 + 11) = v335;
  *(v264 + 12) = v35;
  *(v264 + 104) = v232;
  result = *v281;
  v269 = *(v281 + 16);
  *(v264 + 140) = *(v281 + 32);
  *(v264 + 124) = v269;
  *(v264 + 108) = result;
  v264[10] = v257;
  *(v264 + 22) = v240;
  *(v264 + 23) = v243;
  *(v264 + 192) = v258;
  *(v264 + 25) = v16;
  *(v264 + 26) = a2;
  *(v264 + 216) = v256;
  *(v264 + 232) = v252;
  *(v264 + 30) = v14;
  *(v264 + 31) = v255;
  *(v264 + 256) = v258;
  return result;
}

uint64_t sub_1AC750F9C()
{
  v1 = OBJC_IVAR____TtC6Speech17TranscriberCommon_locale;
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_modelOptions, &qword_1EB56C318, &unk_1AC7A8790);
  v4 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_transcriptionOptions);

  v5 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_reportingOptions);

  v6 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_attributeOptions);

  v7 = OBJC_IVAR____TtC6Speech17TranscriberCommon__results;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_80(v8);
  (*(v9 + 8))(v0 + v7);
  v10 = OBJC_IVAR____TtC6Speech17TranscriberCommon__multisegmentResults;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_80(v11);
  (*(v12 + 8))(v0 + v10);
  v13 = OBJC_IVAR____TtC6Speech17TranscriberCommon__muxMultisegmentResults;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_80(v14);
  (*(v15 + 8))(v0 + v13);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_lastRecognizedFinalMultisegmentResult + 8, &qword_1EB56DF28, &unk_1AC7B2C10);
  v16 = *(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_preferredModelTaskNames);

  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_assetsTaskName + 8, &qword_1EB56B930, &qword_1AC7A72C0);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon__workerWithLocked + 8, &qword_1EB56CB00, &qword_1AC7B1890);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_resultsBuilder, &qword_1EB56DF18, &qword_1AC7B2C00);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_multisegmentResultsBuilder, &qword_1EB56DF08, &qword_1AC7B2BF0);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech17TranscriberCommon_muxMultisegmentResultsBuilder, &qword_1EB56DEC8, &unk_1AC7B2BA0);
  return v0;
}

uint64_t sub_1AC7511EC()
{
  sub_1AC750F9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1AC75126C()
{
  v0 = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_1AC7518D4(319, qword_1ED937508, type metadata accessor for TranscriberCommon.ModelOptions);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_1AC751598(319, &qword_1EB56AC00);
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        sub_1AC751598(319, &qword_1EB56AC10);
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_1AC751608();
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_1AC751690(319, &qword_1EB56AC48, &qword_1EB56DE80, &qword_1AC7B2930);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_1AC751690(319, &qword_1EB56AC50, &qword_1EB56DE88, &qword_1AC7B2938);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_1AC751690(319, &qword_1EB56AC40, &qword_1EB56DE90, &qword_1AC7B2940);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1AC751598(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    OUTLINED_FUNCTION_74_0();
    v3 = sub_1AC7A03A8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AC751608()
{
  if (!qword_1EB56ABF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56DE78, &qword_1AC7B28C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v0 = sub_1AC7A03A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB56ABF8);
    }
  }
}

void sub_1AC751690(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_93();
    v5 = sub_1AC7A0798();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *sub_1AC7516F0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

void sub_1AC7517F4()
{
  sub_1AC7518D4(319, &qword_1ED937D70, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1AC7518D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_93();
    v4 = sub_1AC7A0798();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AC7519B8()
{
  result = qword_1EB56AF38;
  if (!qword_1EB56AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF38);
  }

  return result;
}

id sub_1AC751A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1AC79F9F8();
  if (a4)
  {
    OUTLINED_FUNCTION_77();
    v10 = sub_1AC79FF58();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v5 initWithAssetType:a1 locale:v9 regionId:v10];

  v12 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v12);
  (*(v13 + 8))(a2);
  return v11;
}

void sub_1AC751BE4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      v9 = *(a6(0) - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = *(v9 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void *sub_1AC751CD0(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1AC7A08E8();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1AC60F660(v2, 0);

    sub_1AC61B250(v11, (v3 + 4), v2, v1, v4, v5, v6, v7, v10, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8]);
    v1 = v8;
    sub_1AC68A84C();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1AC751D80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C010, &unk_1AC7A9210);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA8, &qword_1AC7A83B8);
      OUTLINED_FUNCTION_166_2();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1AC751E84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v9)
  {
    if (v9 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v9;
      v13[3] = 2 * ((v14 - 32) / 8);
    }

    if (v8 != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void *sub_1AC751F68(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1AC75240C(v9, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

void *sub_1AC752000(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1AC7526D4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1AC752090(uint64_t a1, uint64_t a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E69E9840];

  sub_1AC7520FC(a1, a2, sub_1AC618B3C);
}

void sub_1AC7520FC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_50_0();
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = *(v5 + 32) & 0x3F;
  OUTLINED_FUNCTION_121_4();

  if (v6 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    sub_1AC613DA0(0, v3, v17 - ((8 * v3 + 15) & 0x3FFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_28_15();
    sub_1AC75240C(v8, v9, v10, v11, a3);
    if (!v3)
    {

LABEL_4:
      v12 = *MEMORY[0x1E69E9840];
      return;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_107_4();

    OUTLINED_FUNCTION_28_15();
    sub_1AC751F68(v13, v14, v15, v16, a3);

    if (!v3)
    {

      OUTLINED_FUNCTION_77_1();
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_77_1();
  __break(1u);
}

void sub_1AC75228C()
{
  OUTLINED_FUNCTION_50_0();
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 32) & 0x3F;
  OUTLINED_FUNCTION_121_4();

  if (v2 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    OUTLINED_FUNCTION_94_1();
    sub_1AC613DA0(v4, v5, v6);
    OUTLINED_FUNCTION_28_15();
    sub_1AC7526D4(v7, v8, v9, v10);
    if (!v0)
    {

LABEL_4:
      v11 = *MEMORY[0x1E69E9840];
      return;
    }

    swift_willThrow();

    __break(1u);
  }

  else
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_107_4();

    OUTLINED_FUNCTION_28_15();
    sub_1AC752000(v12, v13, v14, v15);

    if (!v0)
    {

      OUTLINED_FUNCTION_77_1();
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_77_1();
  __break(1u);
}

void sub_1AC75240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v47 = 0;
    v26 = 0;
    v27 = *(a3 + 56);
    v28 = 1 << *(a3 + 32);
    OUTLINED_FUNCTION_140_2();
    v31 = v30 & v29;
    v33 = (v32 + 63) >> 6;
LABEL_18:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
LABEL_25:
      v46 = v34 | (v26 << 6);
      v37 = *(*(a3 + 48) + v46);
      v38 = *(a4 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v37);
      v39 = sub_1AC7A0EC8();
      v40 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v41 = v39 & v40;
        if (((*(a4 + 56 + (((v39 & v40) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v39 & v40)) & 1) == 0)
        {
          break;
        }

        v39 = v41 + 1;
        if (*(*(a4 + 48) + v41) == v37)
        {
          *(a1 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
          v25 = __OFADD__(v47++, 1);
          if (!v25)
          {
            goto LABEL_18;
          }

          __break(1u);
          goto LABEL_31;
        }
      }
    }

    v35 = v26;
    while (1)
    {
      v26 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v26 >= v33)
      {
LABEL_31:

        a5(a1, a2, v47, a3);
        return;
      }

      v36 = *(a3 + 56 + 8 * v26);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v31 = (v36 - 1) & v36;
        goto LABEL_25;
      }
    }
  }

  else
  {
    v47 = 0;
    v7 = 0;
    v8 = *(a4 + 56);
    v9 = 1 << *(a4 + 32);
    OUTLINED_FUNCTION_140_2();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
LABEL_3:
    while (v12)
    {
      v15 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_10:
      v18 = *(*(a4 + 48) + (v15 | (v7 << 6)));
      v19 = *(a3 + 40);
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v18);
      v20 = sub_1AC7A0EC8();
      v21 = ~(-1 << *(a3 + 32));
      do
      {
        v22 = v20 & v21;
        v23 = (v20 & v21) >> 6;
        v24 = 1 << (v20 & v21);
        if ((v24 & *(a3 + 56 + 8 * v23)) == 0)
        {
          v12 = v45;
          goto LABEL_3;
        }

        v20 = v22 + 1;
      }

      while (*(*(a3 + 48) + v22) != v18);
      *(a1 + 8 * v23) |= v24;
      v25 = __OFADD__(v47++, 1);
      v12 = v45;
      if (v25)
      {
        goto LABEL_34;
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_31;
      }

      v17 = *(a4 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v45 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1AC7526D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v49 = 0;
    v25 = 0;
    v42 = a3 + 56;
    v26 = 1 << *(a3 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(a3 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = a4 + 56;
    v44 = v29;
LABEL_24:
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v51 = (v28 - 1) & v28;
LABEL_31:
      v47 = v31 | (v25 << 6);
      v34 = *(v4 + 40);
      v35 = *(*(v5 + 48) + 8 * v47);
      v36 = sub_1AC7A0748();
      v37 = ~(-1 << *(v4 + 32));
      do
      {
        v38 = v36 & v37;
        if (((*(v30 + (((v36 & v37) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v36 & v37)) & 1) == 0)
        {

          v4 = a4;
          v29 = v44;
          v28 = v51;
          goto LABEL_24;
        }

        sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
        v39 = *(*(a4 + 48) + 8 * v38);
        v40 = sub_1AC7A0758();

        v36 = v38 + 1;
      }

      while ((v40 & 1) == 0);

      *(a1 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      v28 = v51;
      v24 = __OFADD__(v49++, 1);
      v4 = a4;
      v29 = v44;
      if (v24)
      {
        goto LABEL_42;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
LABEL_38:

        sub_1AC618CB4();
        return;
      }

      v33 = *(v42 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v51 = (v33 - 1) & v33;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v6 = 0;
    v41 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v48 = 0;
    v50 = a3 + 56;
    v43 = v10;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v46 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(v5 + 40);
      v15 = *(*(v4 + 48) + 8 * (v11 | (v6 << 6)));
      v16 = sub_1AC7A0748();
      v17 = v5;
      v18 = ~(-1 << *(v5 + 32));
      do
      {
        v19 = v16 & v18;
        v20 = (v16 & v18) >> 6;
        v21 = 1 << (v16 & v18);
        if ((v21 & *(v50 + 8 * v20)) == 0)
        {

          v5 = v17;
          v4 = a4;
          v10 = v43;
          v9 = v46;
          goto LABEL_6;
        }

        sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
        v22 = *(*(v17 + 48) + 8 * v19);
        v23 = sub_1AC7A0758();

        v16 = v19 + 1;
      }

      while ((v23 & 1) == 0);

      v10 = v43;
      *(a1 + 8 * v20) |= v21;
      v9 = v46;
      v24 = __OFADD__(v48++, 1);
      v5 = v17;
      v4 = a4;
      if (v24)
      {
        goto LABEL_41;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v13 = *(v41 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v46 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1AC752A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  OUTLINED_FUNCTION_80(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_89();

  return v6(v5);
}

void (*sub_1AC752B00(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1AC751B5C(a3);
  sub_1AC61C25C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_74_0();
    v7 = MEMORY[0x1B26E95B0](v9);
  }

  *a1 = v7;
  return destroy for AnalyzerInput;
}

void sub_1AC752B88()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_136_3();
  v4 = sub_1AC79F5C8();
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_73_3(v14);
  OUTLINED_FUNCTION_95_5(MEMORY[0x1E69E7CC0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C510, &qword_1AC7A91B8);
  v15 = OUTLINED_FUNCTION_47_9(&qword_1EB56DF48);
  sub_1AC753294(&qword_1EB56BD58, MEMORY[0x1E6968848]);
  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_31_13();
  while (2)
  {
    for (i = v2; ; ++i)
    {
      if (v40 == i)
      {

        v33 = *(v38 + 24);
        if (v33 >= 2)
        {
          v34 = v33 >> 1;
          v30 = __OFSUB__(v34, v37);
          v35 = v34 - v37;
          if (v30)
          {
            goto LABEL_37;
          }

          *(v38 + 16) = v35;
        }

        OUTLINED_FUNCTION_105();
        return;
      }

      if (v2 < 0)
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (i >= *(v39 + 16))
      {
        goto LABEL_35;
      }

      v17 = OUTLINED_FUNCTION_69_7();
      v18(v17);
      v19 = OUTLINED_FUNCTION_128_3();
      v20(v19);
      OUTLINED_FUNCTION_82_6();
      sub_1AC6102E8();
      v21 = OUTLINED_FUNCTION_87_6();
      v1(v21);
      if (v0)
      {
        break;
      }

      (v1)(&qword_1EB56C510, v4);
    }

    v22 = OUTLINED_FUNCTION_53_9();
    (v3)(v22);
    OUTLINED_FUNCTION_166_2();
    (v3)();
    v1 = v36;
    if (v37)
    {
      OUTLINED_FUNCTION_124_4();
LABEL_28:
      v30 = __OFSUB__(v23, 1);
      v31 = v23 - 1;
      if (!v30)
      {
        v32 = OUTLINED_FUNCTION_70_6(v31);
        (v3)(v32);
        OUTLINED_FUNCTION_144_2();
        continue;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    break;
  }

  OUTLINED_FUNCTION_123_4();
  if (v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_100_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD10, &unk_1AC7A8140);
  v0 = OUTLINED_FUNCTION_147_3();
  v25 = _swift_stdlib_malloc_size(v0);
  if (v15)
  {
    if (v25 - v36 == 0x8000000000000000 && i == -1)
    {
      goto LABEL_40;
    }

    v27 = OUTLINED_FUNCTION_63_7(v25 - v36);
    if (!v28)
    {
LABEL_27:
      v7 += v15;
      v2 = (v2 & 0x7FFFFFFFFFFFFFFFLL) - (v3 >> 1);

      v23 = v2;
      v3 = 0;
      goto LABEL_28;
    }

    if (v0 < v27 || v7 >= v36 + v27 + v15)
    {
      OUTLINED_FUNCTION_132_3();
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v0 == v27)
      {
LABEL_26:
        *(v27 + 16) = 0;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_132_3();
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = v38;
    goto LABEL_26;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}