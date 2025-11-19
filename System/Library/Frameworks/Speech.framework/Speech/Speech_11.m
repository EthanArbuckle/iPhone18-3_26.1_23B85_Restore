uint64_t sub_1AC6A9020@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC6A85C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AC6A9078@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC6A85C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1AC6A90D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(a3 + 152) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = a2;

  *(a3 + 112) = sub_1AC6A8384(sub_1AC6A91B4);
  *(a3 + 120) = v5;
  *(a3 + 128) = v6;
  *(a3 + 152) = &off_1F212E978;
  swift_unknownObjectWeakAssign();
  v7 = *(a3 + 136);

  sub_1AC6A8454(a3);

  return a3;
}

uint64_t objectdestroy_57Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1AC6A9288(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1AC6A92C0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1AC6A92EC()
{
  OUTLINED_FUNCTION_112_3();
  v2 = v1;
  v20 = *(v0 + 24);
  v21 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 104);
  v18 = *(v0 + 128);
  v19 = *(v0 + 112);
  v13 = *(v0 + 144);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_64_0(v14);
  *v15 = v16;
  v15[1] = sub_1AC5C5380;

  return sub_1AC69D410(v9, v10, v11, v2, v21, v20, v3, v4, v5, v6, v8);
}

uint64_t sub_1AC6A941C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6A948C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_167(v8);
  v10 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1AC6A5CD0(a1, v1 + v5, v10);
}

uint64_t sub_1AC6A95A8()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 48) & ~*(v2 + 80));
  OUTLINED_FUNCTION_66_4();
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v11 = (v0 + v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v0 + (v5 & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_124(v15);
  *v16 = v17;
  v16[1] = sub_1AC5C5380;
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6A4F44(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1AC6A96D8()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_95_2(v4);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_291();

  return sub_1AC6A7EE8(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_140Tm()
{
  OUTLINED_FUNCTION_21_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_28_5(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);

  v12 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_254_0(v12))
  {
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  v13 = sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0(v13);
  (*(v14 + 8))(v0 + v9);
  OUTLINED_FUNCTION_258_0();
  v15 = OUTLINED_FUNCTION_158_2();
  if (!OUTLINED_FUNCTION_107_1(v15))
  {
    v16 = OUTLINED_FUNCTION_257_0();
    if (!OUTLINED_FUNCTION_109_2(v16))
    {
      OUTLINED_FUNCTION_40_5();
      v18 = *(v17 + 8);
      v19 = OUTLINED_FUNCTION_236();
      v20(v19);
    }

    OUTLINED_FUNCTION_156_2();
    v21 = *(v1 + 28);
    if (!OUTLINED_FUNCTION_13_1(v4 + v21))
    {
      OUTLINED_FUNCTION_40_5();
      (*(v22 + 8))(v4 + v21, v11);
    }

    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_255_0();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_267_0();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6BDD0](v23, v24, v25);
}

uint64_t sub_1AC6A9A20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v0);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_167(v5);
  v7 = *(v6 + 80);
  v8 = OUTLINED_FUNCTION_147_2();

  return v9(v8);
}

uint64_t sub_1AC6A9B1C()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 40) & ~*(v2 + 80));
  OUTLINED_FUNCTION_66_4();
  v5 &= 0xFFFFFFFFFFFFFFF8;
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v10 = (v0 + v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + v5);
  v14 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_124(v15);
  *v16 = v17;
  v16[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_83_4();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6A4550(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t objectdestroy_149Tm()
{
  OUTLINED_FUNCTION_21_4();
  v2 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_28_5(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = *(v0 + 16);

  v13 = sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0(v13);
  (*(v14 + 8))(v0 + v4);
  OUTLINED_FUNCTION_258_0();
  v15 = OUTLINED_FUNCTION_158_2();
  if (!OUTLINED_FUNCTION_107_1(v15))
  {
    v16 = OUTLINED_FUNCTION_257_0();
    if (!OUTLINED_FUNCTION_109_2(v16))
    {
      OUTLINED_FUNCTION_40_5();
      v18 = *(v17 + 8);
      v19 = OUTLINED_FUNCTION_236();
      v20(v19);
    }

    OUTLINED_FUNCTION_156_2();
    v21 = *(v1 + 28);
    if (!OUTLINED_FUNCTION_13_1(v6 + v21))
    {
      OUTLINED_FUNCTION_40_5();
      (*(v22 + 8))(v6 + v21, v11);
    }

    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_255_0();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_267_0();
  v23 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_252_0(v23))
  {
    OUTLINED_FUNCTION_61_3();
    (*(v24 + 8))(v0 + v9, v2);
  }

  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6BDD0](v25, v26, v27);
}

uint64_t sub_1AC6A9E70()
{
  OUTLINED_FUNCTION_169();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v4 = *(v3 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80));
  OUTLINED_FUNCTION_66_4();
  v5 = *(v0 + 24);
  v22 = *(v0 + 16);
  OUTLINED_FUNCTION_217_0(v6);
  v8 = *(v0 + v7);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_124(v9);
  *v10 = v11;
  v10[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_115();

  return sub_1AC6A04AC(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1AC6A9FA8()
{
  OUTLINED_FUNCTION_639();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_64_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_95_2(v5);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_636();

  return sub_1AC6A0868(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t objectdestroy_127Tm_0()
{
  OUTLINED_FUNCTION_21_4();
  v2 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_28_5(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);

  v12 = sub_1AC79FB18();
  OUTLINED_FUNCTION_22_0(v12);
  (*(v13 + 8))(v0 + v4);
  OUTLINED_FUNCTION_258_0();
  v14 = OUTLINED_FUNCTION_158_2();
  if (!OUTLINED_FUNCTION_107_1(v14))
  {
    v15 = OUTLINED_FUNCTION_257_0();
    if (!OUTLINED_FUNCTION_109_2(v15))
    {
      OUTLINED_FUNCTION_40_5();
      v17 = *(v16 + 8);
      v18 = OUTLINED_FUNCTION_236();
      v19(v18);
    }

    OUTLINED_FUNCTION_156_2();
    v20 = *(v1 + 28);
    if (!OUTLINED_FUNCTION_13_1(v6 + v20))
    {
      OUTLINED_FUNCTION_40_5();
      (*(v21 + 8))(v6 + v20, v11);
    }

    OUTLINED_FUNCTION_155_2();
    OUTLINED_FUNCTION_256_0();
    OUTLINED_FUNCTION_255_0();
    OUTLINED_FUNCTION_271_0();
    OUTLINED_FUNCTION_270_0();
  }

  OUTLINED_FUNCTION_174_1();
  OUTLINED_FUNCTION_269_0();
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_267_0();
  v22 = sub_1AC79F958();
  if (!OUTLINED_FUNCTION_252_0(v22))
  {
    OUTLINED_FUNCTION_61_3();
    (*(v23 + 8))(v0 + v9, v2);
  }

  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_14();

  return MEMORY[0x1EEE6BDD0](v24, v25, v26);
}

uint64_t sub_1AC6AA260()
{
  v0 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  OUTLINED_FUNCTION_22(v0);
  v3 = ((*(v1 + 80) + 24) & ~*(v1 + 80)) + *(v2 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_147_2();

  return v8(v7);
}

uint64_t sub_1AC6AA344()
{
  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_57();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  OUTLINED_FUNCTION_22(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  OUTLINED_FUNCTION_217_0((*(v3 + 64) + ((*(v2 + 80) + 56) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_124(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_77_2();

  return sub_1AC6A1A1C(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1AC6AA45C()
{
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_102();
  OUTLINED_FUNCTION_105_2();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_64_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_95_2(v4);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_291();

  return sub_1AC6A21B0(v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1AC6AA4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_39();
  v8(v7);
  return a2;
}

unint64_t sub_1AC6AA608()
{
  result = qword_1EB56AF10;
  if (!qword_1EB56AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56AF10);
  }

  return result;
}

uint64_t sub_1AC6AA65C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_39();
  v9(v8);
  return a2;
}

uint64_t sub_1AC6AA6B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_39();
  v8(v7);
  return a2;
}

uint64_t sub_1AC6AA714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_22_0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1AC6AA768()
{
  OUTLINED_FUNCTION_72();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_64_0(v6);
  *v7 = v8;
  v7[1] = sub_1AC5C4D48;

  return sub_1AC694498(v4, v2, v5);
}

uint64_t OUTLINED_FUNCTION_26_6()
{
  result = v0[64];
  v2 = v0[61];
  v3 = *(v0[62] + 16);
  return result;
}

void OUTLINED_FUNCTION_34_6()
{

  sub_1AC60DBDC();
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2048;
  return result;
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_3(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v2, 1, a1);
  v4 = *(v1 + 456);
  v5 = *(v1 + 464);
  return result;
}

uint64_t OUTLINED_FUNCTION_79_3@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

void OUTLINED_FUNCTION_82_3()
{

  sub_1AC72821C();
}

__n128 OUTLINED_FUNCTION_101_3@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 536);
  v4 = a1[2].n128_u64[0];
  v3 = a1[2].n128_u64[1];
  v5 = a1->n128_u64[1];
  result = a1[1];
  *(v1 + 84) = a1->n128_u64[0];
  *(v1 + 92) = v5;
  *(v1 + 100) = result;
  *(v1 + 116) = v4;
  *(v1 + 124) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_106_3()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_108_2()
{
  v2 = v0[63];
  v3 = v0[60];
  v4 = v0[58];
}

uint64_t OUTLINED_FUNCTION_109_2(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_113_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_114_2(uint64_t a1)
{
  v4 = *(v1 + *(a1 + 20));
  *(v2 + 632) = v4;

  return sub_1AC625D20(v4);
}

uint64_t OUTLINED_FUNCTION_125_2(uint64_t result, uint64_t a2)
{
  *(v2 + 584) = result;
  *(v2 + 592) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_138_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_151_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_160_1()
{
  v3 = *(v0 + 112);

  return sub_1AC5CD620(v1 + 16, v1 + 400);
}

uint64_t OUTLINED_FUNCTION_176_1()
{
  result = v0[3];
  v0[5] = *(v0[4] + 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_179_2()
{
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[94];
  v7 = v0[93];
}

uint64_t OUTLINED_FUNCTION_201_1()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_202_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1AC5CFE74(a1, v9, va);
}

uint64_t OUTLINED_FUNCTION_203_1(unsigned int a1)
{

  return sub_1AC5CFAB8(v1, a1);
}

void *OUTLINED_FUNCTION_205_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v2 + 16), (a1 + v1), 0x4BuLL);
}

void OUTLINED_FUNCTION_206_1(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_207_1(uint64_t a1)
{

  return sub_1AC7280C4(v1, v3, v2, a1, v4);
}

BOOL OUTLINED_FUNCTION_210_1()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_211_1()
{

  return sub_1AC7A0158();
}

uint64_t OUTLINED_FUNCTION_212_1()
{

  return type metadata accessor for SpeechRecognizerSupportedFeatures();
}

uint64_t OUTLINED_FUNCTION_213_0()
{
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);
}

void OUTLINED_FUNCTION_214_0()
{

  JUMPOUT(0x1B26E8C40);
}

void OUTLINED_FUNCTION_217_0(uint64_t a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = (v1 + a1);
  v7 = *v5;
  v6 = v5[1];
}

uint64_t OUTLINED_FUNCTION_219_0(uint64_t result)
{
  *(v1 + 760) = result;
  v2 = *(v1 + 640);
  return result;
}

uint64_t OUTLINED_FUNCTION_227_0(uint64_t result)
{
  v2[2] = v3;
  v2[3] = result;
  v2[4] = v1;
  return result;
}

void OUTLINED_FUNCTION_242_0(uint64_t *a1@<X8>)
{
  v1 = a1[5];
  v2 = *a1;
  v3 = HIDWORD(a1[1]);
  v4 = HIDWORD(a1[4]);
}

void OUTLINED_FUNCTION_248_0()
{
  v2 = v0[78];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[60];
}

uint64_t OUTLINED_FUNCTION_249_0()
{

  return type metadata accessor for SpeechRecognizerSupportedFeatures();
}

void OUTLINED_FUNCTION_250_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_252_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

void OUTLINED_FUNCTION_253_0()
{

  sub_1AC72808C();
}

uint64_t OUTLINED_FUNCTION_254_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_255_0()
{
  v3 = *(v0 + *(v1 + 48));
}

uint64_t OUTLINED_FUNCTION_256_0()
{
  v3 = *(v0 + *(v1 + 36));
}

uint64_t OUTLINED_FUNCTION_257_0()
{

  return sub_1AC79F7F8();
}

uint64_t OUTLINED_FUNCTION_259_0()
{

  return sub_1AC79FFD8();
}

uint64_t OUTLINED_FUNCTION_260_0()
{

  return sub_1AC7A03F8();
}

uint64_t OUTLINED_FUNCTION_261_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1AC6AA65C(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_262_0()
{
  v2 = *(v0 + 432);
}

uint64_t OUTLINED_FUNCTION_263@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_1AC6AA65C(v3 + a3, v4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_264_0()
{
  v2 = *(v0 + 776);

  return sub_1AC61C24C();
}

uint64_t OUTLINED_FUNCTION_265_0(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_267_0()
{
  v3 = *(v1 + *(v0 + 60));
}

uint64_t OUTLINED_FUNCTION_268_0()
{
  v3 = *(v1 + *(v0 + 56));
}

uint64_t OUTLINED_FUNCTION_269_0()
{
  v3 = *(v1 + *(v0 + 52));
}

uint64_t OUTLINED_FUNCTION_270_0()
{
  v3 = *(v0 + *(v1 + 60));
}

void OUTLINED_FUNCTION_271_0()
{
  v3 = *(v0 + *(v1 + 56));
}

uint64_t sub_1AC6AB16C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000068;
  v3 = 0x6F69746174636944;
  v4 = 0xE90000000000006ELL;
  v5 = a1;
  v6 = "SearchOrMessaging";
  v7 = 0x6F69746174636944;
  switch(v5)
  {
    case 1:
      OUTLINED_FUNCTION_29_8();
      break;
    case 2:
      v7 = 0x6372616553626557;
      v4 = 0xE900000000000068;
      break;
    case 3:
      v7 = 0xD000000000000011;
      v4 = 0x80000001AC7B47A0;
      break;
    case 4:
      v7 = 0x69614D6563696F56;
      v4 = 0xE90000000000006CLL;
      break;
    case 5:
      v7 = 0x696E6F6974706143;
      v4 = 0xEA0000000000676ELL;
      break;
    case 6:
      v4 = 0xEB0000000043436ELL;
      v7 = 0x6F69746174636944;
      break;
    case 7:
      v4 = 0xE700000000000000;
      v7 = 0x43436C6C657053;
      break;
    case 8:
      v4 = 0xE800000000000000;
      v7 = 0x676E696C6C657053;
      break;
    case 9:
      v4 = 0xE500000000000000;
      v7 = 0x746F687354;
      break;
    default:
      break;
  }

  v8 = v2 + 6;
  switch(a2)
  {
    case 1:
      v3 = 0x7463694469726953;
      v8 = 0xED00006E6F697461;
      break;
    case 2:
      v3 = 0x6372616553626557;
      v8 = 0xE900000000000068;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v8 = (v6 - 32) | 0x8000000000000000;
      break;
    case 4:
      v3 = 0x69614D6563696F56;
      v8 = v2 + 4;
      break;
    case 5:
      v3 = 0x696E6F6974706143;
      v8 = 0xEA0000000000676ELL;
      break;
    case 6:
      v8 = 0xEB0000000043436ELL;
      break;
    case 7:
      v8 = 0xE700000000000000;
      v3 = 0x43436C6C657053;
      break;
    case 8:
      v8 = 0xE800000000000000;
      v3 = 0x676E696C6C657053;
      break;
    case 9:
      v8 = 0xE500000000000000;
      v3 = 0x746F687354;
      break;
    default:
      break;
  }

  if (v7 == v3 && v4 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1AC7A0D38();
  }

  return v10 & 1;
}

uint64_t sub_1AC6AB3E8(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x74616C736E617254;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001AC7B4830;
    }

    else
    {
      v5 = 0xEC00000070704165;
    }
  }

  else
  {
    v5 = 0x80000001AC7B4810;
    v4 = 0xD000000000000011;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0x74616C736E617254;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001AC7B4830;
    }

    else
    {
      v6 = 0xEC00000070704165;
    }
  }

  else
  {
    v6 = 0x80000001AC7B4810;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AC7A0D38();
  }

  return v8 & 1;
}

uint64_t sub_1AC6AB504(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_29_8();
      break;
    default:
      break;
  }

  sub_1AC7A0048();
}

uint64_t sub_1AC6AB680()
{
  sub_1AC7A0048();
}

void sub_1AC6AB720(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  if (!a1)
  {
    goto LABEL_5;
  }

  v9 = v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked));
  v10 = *(v9 + 16);
  os_unfair_lock_unlock(v9);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v11 = sub_1AC79FDE8();
  __swift_project_value_buffer(v11, qword_1ED9386C8);
  if (v10)
  {
    v16 = sub_1AC79FDC8();
    v17 = sub_1AC7A05F8();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_150();
      v18 = OUTLINED_FUNCTION_25_7();
      v21 = v18;
      *v8 = 136315138;
      OUTLINED_FUNCTION_65();
      *(v8 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, v19, &v21);
      _os_log_impl(&dword_1AC5BC000, v16, v17, "Failed precondition: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_129();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked));
    v13 = *(v12 + 8);
    *(v12 + 8) = a1;

    *(v12 + 16) = 1;
    os_unfair_lock_unlock(v12);
    v14 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = v1;

    sub_1AC659B08();
  }
}

Speech::LanguageDetectorResultReportingFrequency_optional __swiftcall LanguageDetectorResultReportingFrequency.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1AC6AB97C@<X0>(uint64_t *a1@<X8>)
{
  result = LanguageDetectorResultReportingFrequency.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t LanguageDetectorOptions.init(languageConstraints:alternativeCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t LanguageDetectorOptions.init(languageConstraints:alternativeCount:resultReportingFrequency:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t LanguageDetectorOptions.init(languageConstraints:alternativeCount:resultReportingFrequency:useVAD:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = v5;
  *(a5 + 17) = a4;
  return result;
}

uint64_t static LanguageDetectorOptions.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  if (!*a1)
  {
    if (v5)
    {
      v14 = 0;
    }

    else
    {
      v14 = v2 == v6;
    }

    if (v14 && v3 == v7)
    {
      return v4 ^ v8 ^ 1u;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v9 = *a2;

  sub_1AC6285B0();
  v11 = v10;

  result = 0;
  if ((v11 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 ^ v8 ^ 1u;
  }

  return result;
}

uint64_t LanguageDetectorOptions.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  if (*v0)
  {
    sub_1AC7A0E98();
    sub_1AC6336A8();
  }

  else
  {
    sub_1AC7A0E98();
  }

  MEMORY[0x1B26E9A40](v1);
  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0E98();
}

uint64_t LanguageDetectorOptions.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1AC7A0E78();
  sub_1AC7A0E98();
  if (v2)
  {
    sub_1AC6336A8();
  }

  MEMORY[0x1B26E9A40](v1);
  MEMORY[0x1B26E9A40](v3);
  sub_1AC7A0E98();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6ABBE4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_1AC7A0E78();
  LanguageDetectorOptions.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t LanguageDetector.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 88) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v2);
  v4 = *(v3 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC6ABCCC()
{
  v1 = *(v0 + 88);
  v2 = sub_1AC6AC458();
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1AC6ABE3C;

    return sub_1AC766870();
  }

  else
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    type metadata accessor for LanguageDetectorWorker();
    *(v0 + 64) = xmmword_1AC7AB560;
    *(v0 + 80) = 0;
    v7 = type metadata accessor for SpeechAnalyzer.Options(0);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_1AC6ABFAC;
    v9 = *(v0 + 96);

    return sub_1AC765C80();
  }
}

uint64_t sub_1AC6ABE3C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v9 + 120) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6ABF40()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[13];

  v2 = v0[3];
  v3 = v0[12];

  OUTLINED_FUNCTION_82();

  return v4(v2);
}

uint64_t sub_1AC6ABFAC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v10 + 136) = v9;
  *(v10 + 144) = v0;

  sub_1AC5C720C(v6, &qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6AC0D8()
{
  OUTLINED_FUNCTION_85();
  if (v0[17])
  {
    v1 = v0[17];

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_1AC6AC1AC;

    return sub_1AC766870();
  }

  else
  {
    v4 = v0[12];

    OUTLINED_FUNCTION_82();

    return v5(0);
  }
}

uint64_t sub_1AC6AC1AC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v3[5] = v1;
  v3[6] = v5;
  v3[7] = v0;
  v7 = *(v6 + 152);
  v8 = *v1;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  v3[20] = v0;

  if (!v0)
  {
    v10 = v3[17];
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC6AC2B8()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[17];

  v2 = v0[6];
  v3 = v0[12];

  OUTLINED_FUNCTION_82();

  return v4(v2);
}

uint64_t sub_1AC6AC324()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AC6AC38C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[18];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AC6AC3EC()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[17];

  v2 = v0[20];
  v3 = v0[12];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AC6AC458()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t LanguageDetector.__allocating_init(options:clientInfo:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LanguageDetector.init(options:clientInfo:)(a1, a2);
  return v7;
}

uint64_t LanguageDetector.init(options:clientInfo:)(uint64_t a1, uint64_t a2)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA68, &unk_1AC7AB5A0);
  OUTLINED_FUNCTION_40(v36);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v34 = v33 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  OUTLINED_FUNCTION_40(v37);
  v35 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA78, &qword_1AC7AB5B0);
  v18 = OUTLINED_FUNCTION_167(v17);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v33 - v24;
  v26 = *a1;
  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  v29 = v2 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  v30 = v2 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions;
  *v30 = v26;
  *(v30 + 8) = v27;
  *(v30 + 16) = v28;
  v33[1] = a2;
  sub_1AC6B1678(a2, v2 + OBJC_IVAR____TtC6Speech16LanguageDetector_clientInfo, type metadata accessor for ClientInfo);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v31);
  v38 = v25;
  type metadata accessor for LanguageDetector.Result(0);
  (*(v6 + 104))(v34, *MEMORY[0x1E69E8790], v36);
  sub_1AC68A29C(v26);
  sub_1AC7A03B8();
  (*(v35 + 32))(v2 + OBJC_IVAR____TtC6Speech16LanguageDetector__results, v16, v37);
  sub_1AC6B0370(v25, v23);
  result = __swift_getEnumTagSinglePayload(v23, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    sub_1AC6B03E0();
    sub_1AC68A2AC(v26);
    (*(*(v31 - 8) + 32))(v2 + OBJC_IVAR____TtC6Speech16LanguageDetector_resultsBuilder, v23, v31);
    sub_1AC5C720C(v25, &qword_1EB56CA78, &qword_1AC7AB5B0);
    return v2;
  }

  return result;
}

uint64_t sub_1AC6AC854(uint64_t a1, uint64_t a2)
{
  sub_1AC5C720C(a2, &qword_1EB56CA78, &qword_1AC7AB5B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t LanguageDetector.results.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_21();

  return v4(v3);
}

uint64_t LanguageDetector.availableCompatibleAudioFormats.getter()
{
  OUTLINED_FUNCTION_85();
  v10 = *MEMORY[0x1E69E9840];
  v1[7] = v0;
  v2 = type metadata accessor for Assets(0);
  v1[8] = v2;
  OUTLINED_FUNCTION_167(v2);
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1AC6ACC78()
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v3 = v2;
  v5 = *(v4 + 88);
  *v3 = *v1;
  v2[12] = v6;
  v2[13] = v0;

  if (v0)
  {
    v7 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = v2[10];

    v9 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_138();

    MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1AC6ACDF4()
{
  v86 = v1;
  v82 = *MEMORY[0x1E69E9840];
  v2 = v1[12];
  if (v2)
  {
    v3 = v1[13];
    v4 = v2;
    v5 = [v4 samplingRates];
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    sub_1AC6A8FB8();
    v6 = sub_1AC7A0448();

    sub_1AC68CFAC(v6);
    v8 = v7;

    v9 = sub_1AC608F68(v8);

    if (off_1ED937D60 != -1)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v10 = sub_1AC79FDE8();
      __swift_project_value_buffer(v10, qword_1ED9386C8);

      v11 = sub_1AC79FDC8();
      v12 = sub_1AC7A05D8();

      v77 = v4;
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v13 = 136315394;
        *(v13 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v75, v4, v78, *(&v78 + 1), v79, *(&v79 + 1), v80);
        *(v13 + 12) = 2080;
        v14 = sub_1AC7A0458();
        v16 = sub_1AC5CFE74(v14, v15, &v81);

        *(v13 + 14) = v16;
        _os_log_impl(&dword_1AC5BC000, v11, v12, "LanguageDetector.%s found %s", v13, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_77_1();
      }

      v17 = *(v9 + 56);
      v81 = MEMORY[0x1E69E7CC0];
      v18 = *(v9 + 32);
      OUTLINED_FUNCTION_19_5();
      v21 = v20 & v19;
      v23 = (63 - v22) >> 6;

      v33 = 0;
      v79 = xmmword_1AC7AB570;
      v78 = xmmword_1AC7AB580;
      v4 = &selRef_initWithText_confidence_startTime_duration_;
      while (v21)
      {
LABEL_11:
        v35 = *(*(v9 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v21)))));
        v21 &= v21 - 1;
        OUTLINED_FUNCTION_24_0(v35, v24, v25, v26, v27, v28, v29, v30, v31, v75, v77, v32, v78);
        v24 = [objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_];
        if (v24)
        {
          v36 = MEMORY[0x1B26E8CF0]();
          OUTLINED_FUNCTION_31_6(v36, v37, v38, v39, v40, v41, v42, v43, v75, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81);
          if (v45)
          {
            OUTLINED_FUNCTION_23_6(v44);
            v75 = v46;
            sub_1AC7A0178();
          }

          v24 = sub_1AC7A0198();
        }
      }

      while (1)
      {
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v34 >= v23)
        {
          v47 = v1[9];

          OUTLINED_FUNCTION_82();
          v48 = *MEMORY[0x1E69E9840];
          OUTLINED_FUNCTION_403();

          __asm { BRAA            X2, X16 }
        }

        v21 = *(v9 + 56 + 8 * v34);
        ++v33;
        if (v21)
        {
          v33 = v34;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_26:
      OUTLINED_FUNCTION_3();
    }
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v51 = sub_1AC79FDE8();
  v1[14] = __swift_project_value_buffer(v51, qword_1ED9386C8);
  v52 = sub_1AC79FDC8();
  v53 = sub_1AC7A05D8();
  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_150();
    v54 = OUTLINED_FUNCTION_25_7();
    v81 = v54;
    *v0 = 136315138;
    *(v0 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v75, v76, v78, *(&v78 + 1), v79, *(&v79 + 1), v80);
    OUTLINED_FUNCTION_28_6();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    OUTLINED_FUNCTION_77_1();
    OUTLINED_FUNCTION_129();
  }

  v60 = v1[8];
  v61 = v1[9];
  sub_1AC61D5F8(v62, v63, v64, v65, v66, v67, v68, v69, v75, v76, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82, v83, v84, v85);
  v70 = *(v61 + *(v60 + 36));
  v71 = swift_task_alloc();
  v1[15] = v71;
  *v71 = v1;
  OUTLINED_FUNCTION_7_8(v71);
  v72 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_403();

  return sub_1AC61FFCC();
}

uint64_t sub_1AC6AD2A0(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v5 = v4;
  v7 = *(v6 + 120);
  v8 = *v2;
  OUTLINED_FUNCTION_18();
  *v9 = v8;
  *(v4 + 128) = v1;

  if (!v1)
  {
    *(v4 + 136) = a1;
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1AC6AD3E0()
{
  v54[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1AC608F68(*(v0 + 136));
  OUTLINED_FUNCTION_11_9();
  if (off_1ED937D60 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = sub_1AC79FDE8();
    __swift_project_value_buffer(v2, qword_1ED9386C8);

    v3 = sub_1AC79FDC8();
    v4 = sub_1AC7A05D8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v5 = 136315394;
      *(v5 + 4) = OUTLINED_FUNCTION_12_7("availableCompatibleAudioFormats", v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53);
      *(v5 + 12) = 2080;
      v6 = sub_1AC7A0458();
      v8 = sub_1AC5CFE74(v6, v7, v54);

      *(v5 + 14) = v8;
      OUTLINED_FUNCTION_28_6();
      _os_log_impl(v9, v10, v11, v12, v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_129();
    }

    v14 = *(v1 + 56);
    v54[0] = MEMORY[0x1E69E7CC0];
    v15 = *(v1 + 32);
    OUTLINED_FUNCTION_19_5();
    v18 = v17 & v16;
    v20 = (63 - v19) >> 6;

    v21 = 0;
    v52 = xmmword_1AC7AB570;
    v51 = xmmword_1AC7AB580;
    while (v18)
    {
LABEL_10:
      v23 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v18)));
      v18 &= v24;
      OUTLINED_FUNCTION_24_0(v23, v25, v26, v27, v28, v29, v30, v31, v32, v49, v50, v33, v51);
      if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
      {
        v34 = MEMORY[0x1B26E8CF0]();
        OUTLINED_FUNCTION_31_6(v34, v35, v36, v37, v38, v39, v40, v41, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54[0]);
        if (v43)
        {
          OUTLINED_FUNCTION_23_6(v42);
          v50 = v44;
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
        v45 = *(v0 + 72);

        OUTLINED_FUNCTION_82();
        v46 = *MEMORY[0x1E69E9840];
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
    OUTLINED_FUNCTION_3();
  }
}

uint64_t sub_1AC6AD6C0()
{
  v40 = v0;
  v39[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = v1;
  v4 = sub_1AC79FDC8();
  v5 = sub_1AC7A05F8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 128);
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
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_77_1();
  }

  OUTLINED_FUNCTION_11_9();
  if (off_1ED937D60 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_3();
  }

  v12 = sub_1AC79FDE8();
  __swift_project_value_buffer(v12, qword_1ED9386C8);
  v13 = MEMORY[0x1E69E7CD0];

  v14 = sub_1AC79FDC8();
  v15 = sub_1AC7A05D8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39[0] = swift_slowAlloc();
    *v16 = 136315394;
    OUTLINED_FUNCTION_65();
    *(v16 + 4) = sub_1AC5CFE74(0xD00000000000001FLL, v17, v39);
    *(v16 + 12) = 2080;
    v18 = sub_1AC7A0458();
    v20 = sub_1AC5CFE74(v18, v19, v39);

    *(v16 + 14) = v20;
    OUTLINED_FUNCTION_28_6();
    _os_log_impl(v21, v22, v23, v24, v25, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_129();
  }

  v26 = MEMORY[0x1E69E7CC0];
  v39[0] = MEMORY[0x1E69E7CC0];
  v27 = -1;
  v28 = -1 << *(v13 + 32);
  if (-v28 < 64)
  {
    v27 = ~(-1 << -v28);
  }

  v29 = v27 & *(v13 + 56);
  v30 = (63 - v28) >> 6;

  v31 = 0;
  while (v29)
  {
LABEL_14:
    *&v33 = OUTLINED_FUNCTION_27_6(__clz(__rbit64(v29)));
    v29 &= v34;
    *(v0 + 16) = v33;
    *(v0 + 24) = xmmword_1AC7AB570;
    *(v0 + 40) = xmmword_1AC7AB580;
    if ([objc_allocWithZone(MEMORY[0x1E6958418]) initWithStreamDescription_])
    {
      MEMORY[0x1B26E8CF0]();
      if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v26 = v39[0];
    }
  }

  while (1)
  {
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v32 >= v30)
    {
      break;
    }

    v29 = *(v13 + 8 * v32 + 56);
    ++v31;
    if (v29)
    {
      v31 = v32;
      goto LABEL_14;
    }
  }

  v35 = *(v0 + 72);

  OUTLINED_FUNCTION_82();
  v37 = *MEMORY[0x1E69E9840];

  return v36(v26);
}

uint64_t LanguageDetector.LocaleAlternative.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC79FB18();
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t LanguageDetector.LocaleAlternative.description.getter()
{
  OUTLINED_FUNCTION_30_4();
  sub_1AC7A09C8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000034);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_2_8();
  sub_1AC6B0454(v1, v2);
  v3 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v3);

  MEMORY[0x1B26E8C40](0x656469666E6F6320, 0xED0000203A65636ELL);
  OUTLINED_FUNCTION_36_6();
  v5 = *(v0 + v4);
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  return v7;
}

BOOL static LanguageDetector.LocaleAlternative.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1B26E85C0]() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_36_6();
  return *(a1 + v4) == *(a2 + v4);
}

uint64_t LanguageDetector.LocaleAlternative.hash(into:)()
{
  OUTLINED_FUNCTION_25();
  sub_1AC79FB18();
  OUTLINED_FUNCTION_2_8();
  sub_1AC6B0454(v1, v2);
  sub_1AC79FE58();
  OUTLINED_FUNCTION_36_6();
  v4 = *(v0 + v3);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1B26E9A70](*&v4);
}

uint64_t LanguageDetector.LocaleAlternative.hashValue.getter()
{
  sub_1AC7A0E78();
  LanguageDetector.LocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6ADD68()
{
  sub_1AC7A0E78();
  LanguageDetector.LocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

__n128 LanguageDetector.Result.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t LanguageDetector.Result.resultsFinalizationTime.getter()
{
  result = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  return result;
}

uint64_t LanguageDetector.Result.dominantLocale.getter()
{
  v0 = *(type metadata accessor for LanguageDetector.Result(0) + 24);
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_21();

  return v5(v4);
}

uint64_t LanguageDetector.Result.alternatives.getter()
{
  v1 = *(v0 + *(type metadata accessor for LanguageDetector.Result(0) + 28));
}

uint64_t LanguageDetector.Result.detectedLanguageCode.getter()
{
  v0 = *(type metadata accessor for LanguageDetector.Result(0) + 32);
  v1 = sub_1AC79F9C8();
  OUTLINED_FUNCTION_80(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_21();

  return v5(v4);
}

uint64_t LanguageDetector.Result.detectedLanguageCode.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for LanguageDetector.Result(v2) + 32);
  v4 = sub_1AC79F9C8();
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*LanguageDetector.Result.detectedLanguageCode.modify())(void, void)
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for LanguageDetector.Result(v0) + 32);
  return nullsub_1;
}

uint64_t LanguageDetector.Result.description.getter()
{
  OUTLINED_FUNCTION_30_4();
  sub_1AC7A09C8();
  v14 = v10;
  MEMORY[0x1B26E8C40](0xD000000000000028, 0x80000001AC7B7580);
  v11 = *v0;
  v12 = v0[1];
  v13 = v0[2];
  type metadata accessor for CMTimeRange(0);
  sub_1AC7A0AF8();
  OUTLINED_FUNCTION_65();
  MEMORY[0x1B26E8C40](0xD000000000000011);
  v1 = type metadata accessor for LanguageDetector.Result(0);
  v2 = *(v1 + 24);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_2_8();
  sub_1AC6B0454(v3, v4);
  v5 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v5);

  MEMORY[0x1B26E8C40](0x616E7265746C6120, 0xEF203A7365766974);
  v6 = *(v0 + *(v1 + 28));
  v7 = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  v8 = MEMORY[0x1B26E8D20](v6, v7);
  MEMORY[0x1B26E8C40](v8);

  return v14;
}

double sub_1AC6AE0FC@<D0>(_OWORD *a1@<X8>)
{
  LanguageDetector.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

SFEntitledAssetConfig *sub_1AC6AE144()
{
  v0 = SFEntitledAssetConfigForLanguageDetector();

  return v0;
}

uint64_t sub_1AC6AE194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6AE1B8, 0, 0);
}

uint64_t sub_1AC6AE1B8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC6AE1E8, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC6AE1E8()
{
  OUTLINED_FUNCTION_85();
  sub_1AC6B1820(*(v0 + 32), *(v0 + 24));
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC6AE294(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  return sub_1AC7A0398();
}

uint64_t sub_1AC6AE2EC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a3;
  v92 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAD8, &qword_1AC7AB970);
  v7 = OUTLINED_FUNCTION_40(v6);
  v94 = v8;
  v95 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v11);
  v93 = &v87 - v12;
  v89 = type metadata accessor for LanguageDetector.Result(0);
  v13 = OUTLINED_FUNCTION_80(v89);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v97 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v90 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v87 - v20;
  v99 = type metadata accessor for LanguageDetector.LocaleAlternative(0);
  v21 = OUTLINED_FUNCTION_40(v99);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for EARLocaleAlternative();
  v29 = OUTLINED_FUNCTION_40(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v35 = &v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a2;
  v101 = MEMORY[0x1E69E7CC0];

  sub_1AC6AEF0C(&v100);
  v36 = *(v100 + 16);
  if (v36)
  {
    v87 = v100;
    v88 = a4;
    v37 = *(v28 + 20);
    v38 = v100 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v39 = *(v31 + 72);
    v40 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1AC6B1678(v38, v35, type metadata accessor for EARLocaleAlternative);
      v41 = sub_1AC79FB18();
      OUTLINED_FUNCTION_80(v41);
      (*(v42 + 16))(v27, v35);
      v43 = *&v35[v37];
      sub_1AC6B03E0();
      *&v27[*(v99 + 20)] = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = *(v40 + 16);
        sub_1AC60EEFC();
        v40 = v46;
      }

      v44 = *(v40 + 16);
      if (v44 >= *(v40 + 24) >> 1)
      {
        sub_1AC60EEFC();
        v40 = v47;
      }

      *(v40 + 16) = v44 + 1;
      sub_1AC6B1700(v27, v40 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v44, type metadata accessor for LanguageDetector.LocaleAlternative);
      v38 += v39;
      --v36;
    }

    while (v36);

    v101 = v40;
    v48 = v96;
    a4 = v88;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
    v48 = v96;
  }

  v49 = v98;
  if (!*(v40 + 16))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v50 = sub_1AC79FDE8();
    __swift_project_value_buffer(v50, qword_1ED9386C8);
    v51 = sub_1AC79FDC8();
    v52 = sub_1AC7A0608();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1AC5BC000, v51, v52, "Language hypothesis has no locales, this should never happen", v53, 2u);
      OUTLINED_FUNCTION_77_1();
    }
  }

  v54 = *(v48 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 8);
  v55 = *(v48 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions) == 1 || v54 == 0;
  if (!v55 && *(v40 + 16) >= v54)
  {
    sub_1AC6A88F4(v54);
  }

  v56 = v92;
  v57 = sub_1AC7A0558();
  v59 = v58;
  v61 = v60;
  v62 = HIDWORD(v58);
  v63 = v89;
  v64 = *(v89 + 24);
  v65 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v65);
  (*(v66 + 16))(&v49[v64], a4);
  v67 = v101;
  v68 = *(v63 + 32);
  v69 = sub_1AC79F9C8();
  OUTLINED_FUNCTION_80(v69);
  (*(v70 + 16))(&v49[v68], v91);
  v71 = v56[2];
  *(v49 + 1) = v56[1];
  *(v49 + 2) = v71;
  *v49 = *v56;
  *(v49 + 6) = v57;
  *(v49 + 14) = v59;
  *(v49 + 15) = v62;
  *(v49 + 8) = v61;
  *&v49[*(v63 + 28)] = v67;
  v72 = OUTLINED_FUNCTION_9_8();
  sub_1AC6B1678(v72, v90, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  v74 = v93;
  sub_1AC7A0388();
  (*(v94 + 8))(v74, v95);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v75 = sub_1AC79FDE8();
  __swift_project_value_buffer(v75, qword_1ED9386C8);
  v76 = OUTLINED_FUNCTION_9_8();
  sub_1AC6B1678(v76, v97, v77);
  v78 = sub_1AC79FDC8();
  v79 = sub_1AC7A05E8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = OUTLINED_FUNCTION_150();
    v81 = swift_slowAlloc();
    v100 = v81;
    *v80 = 136315138;
    v82 = LanguageDetector.Result.description.getter();
    v84 = v83;
    sub_1AC6B03E0();
    v85 = sub_1AC5CFE74(v82, v84, &v100);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_1AC5BC000, v78, v79, "LanguageDetector: Yielded result %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    sub_1AC6B03E0();
  }

  return sub_1AC6B03E0();
}

uint64_t LanguageDetector.deinit()
{
  OUTLINED_FUNCTION_10_7();
  sub_1AC6B03E0();
  v1 = *(v0 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 8);
  v2 = *(v0 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions + 16);
  sub_1AC68A2AC(*(v0 + OBJC_IVAR____TtC6Speech16LanguageDetector_detectorOptions));
  v3 = OBJC_IVAR____TtC6Speech16LanguageDetector__results;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA70, &qword_1AC7B2590);
  OUTLINED_FUNCTION_80(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = OBJC_IVAR____TtC6Speech16LanguageDetector_resultsBuilder;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA80, &qword_1AC7AB5B8);
  OUTLINED_FUNCTION_80(v7);
  (*(v8 + 8))(v0 + v6);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech16LanguageDetector__workerWithLocked + 8, &qword_1EB56CA88, &qword_1AC7AB5D0);
  return v0;
}

uint64_t LanguageDetector.__deallocating_deinit()
{
  LanguageDetector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6AEB70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return LanguageDetector.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6AEBFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6AEC88;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC6AEC88()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1AC6AED84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return sub_1AC6AE170();
}

uint64_t sub_1AC6AEE58(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1AC7A09C8();
  return 0;
}

uint64_t sub_1AC6AEEA0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
      result = sub_1AC7A0188();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1AC6AEF0C(uint64_t *a1)
{
  v2 = *(type metadata accessor for EARLocaleAlternative() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC6B16EC(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1AC6AEFB4(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_1AC6AEFB4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1AC7A0CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for EARLocaleAlternative();
        v6 = sub_1AC7A0188();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for EARLocaleAlternative() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AC6AF334(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1AC6AF0E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1AC6AF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for EARLocaleAlternative();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v30 - v18;
  v32 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v37 = v20;
    v31 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v35 = v22;
      v36 = a3;
      v33 = v25;
      v34 = v24;
      do
      {
        sub_1AC6B1678(v25, v19, type metadata accessor for EARLocaleAlternative);
        sub_1AC6B1678(v22, v15, type metadata accessor for EARLocaleAlternative);
        v26 = *(v8 + 20);
        v27 = *&v19[v26];
        v28 = *&v15[v26];
        sub_1AC6B03E0();
        result = sub_1AC6B03E0();
        if (v28 >= v27)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return result;
        }

        sub_1AC6B1700(v25, v12, type metadata accessor for EARLocaleAlternative);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1AC6B1700(v12, v22, type metadata accessor for EARLocaleAlternative);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v36 + 1;
      v22 = v35 + v31;
      v24 = v34 - 1;
      v25 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1AC6AF334(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = type metadata accessor for EARLocaleAlternative();
  v125 = *(v9 - 8);
  v10 = *(v125 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v121 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v129 = &v114 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v130 = &v114 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v114 - v18;
  v126 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_100:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_102:
      v108 = (v22 + 16);
      v109 = *(v22 + 16);
      for (i = v22; v109 >= 2; v22 = i)
      {
        if (!*v126)
        {
          goto LABEL_138;
        }

        v110 = (v22 + 16 * v109);
        v22 = *v110;
        v111 = &v108[2 * v109];
        v112 = v111[1];
        sub_1AC6AFC94(*v126 + *(v125 + 72) * *v110, *v126 + *(v125 + 72) * *v111, *v126 + *(v125 + 72) * v112, v5);
        if (v6)
        {
          break;
        }

        if (v112 < v22)
        {
          goto LABEL_126;
        }

        if (v109 - 2 >= *v108)
        {
          goto LABEL_127;
        }

        *v110 = v22;
        v110[1] = v112;
        v113 = *v108 - v109;
        if (*v108 < v109)
        {
          goto LABEL_128;
        }

        v109 = *v108 - 1;
        result = memmove(v111, v111 + 2, 16 * v113);
        *v108 = v109;
      }
    }

LABEL_135:
    result = sub_1AC6B0128(v22);
    v22 = result;
    goto LABEL_102;
  }

  v116 = a4;
  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v131 = result;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    if (v21 + 1 < v20)
    {
      v25 = *v126;
      v26 = *(v125 + 72);
      v128 = v21 + 1;
      v27 = v25 + v26 * v24;
      v28 = v25;
      v123 = v25;
      v124 = v20;
      v29 = result;
      sub_1AC6B1678(v27, v19, type metadata accessor for EARLocaleAlternative);
      v30 = v28 + v26 * v23;
      v5 = v23;
      v31 = v130;
      sub_1AC6B1678(v30, v130, type metadata accessor for EARLocaleAlternative);
      v32 = *(v29 + 20);
      v33 = *&v19[v32];
      v34 = *(v31 + v32);
      sub_1AC6B03E0();
      sub_1AC6B03E0();
      v35 = v124;
      v117 = v5;
      v36 = v5 + 2;
      i = v26;
      v37 = v123 + v26 * (v5 + 2);
      while (1)
      {
        v38 = v36;
        if (++v128 >= v35)
        {
          break;
        }

        sub_1AC6B1678(v37, v19, type metadata accessor for EARLocaleAlternative);
        v5 = v130;
        sub_1AC6B1678(v27, v130, type metadata accessor for EARLocaleAlternative);
        v39 = *(v131 + 20);
        v40 = *&v19[v39];
        v41 = *(v5 + v39);
        sub_1AC6B03E0();
        sub_1AC6B03E0();
        v35 = v124;
        v37 += i;
        v27 += i;
        v36 = v38 + 1;
        if (v34 < v33 == v41 >= v40)
        {
          goto LABEL_9;
        }
      }

      v128 = v35;
LABEL_9:
      if (v34 >= v33)
      {
        v24 = v128;
        v23 = v117;
        result = v131;
      }

      else
      {
        v24 = v128;
        if (v128 < v117)
        {
          goto LABEL_132;
        }

        result = v131;
        if (v117 >= v128)
        {
          v23 = v117;
        }

        else
        {
          v5 = v22;
          v115 = v6;
          if (v35 >= v38)
          {
            v42 = v38;
          }

          else
          {
            v42 = v35;
          }

          v43 = i * (v42 - 1);
          v44 = i * v42;
          v45 = v117 * i;
          v46 = v117;
          do
          {
            if (v46 != --v24)
            {
              v47 = *v126;
              if (!*v126)
              {
                goto LABEL_139;
              }

              sub_1AC6B1700(v47 + v45, v121, type metadata accessor for EARLocaleAlternative);
              v48 = v45 < v43 || v47 + v45 >= (v47 + v44);
              if (v48)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v45 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1AC6B1700(v121, v47 + v43, type metadata accessor for EARLocaleAlternative);
            }

            ++v46;
            v43 -= i;
            v44 -= i;
            v45 += i;
          }

          while (v46 < v24);
          v6 = v115;
          v22 = v5;
          result = v131;
          v24 = v128;
          v23 = v117;
        }
      }
    }

    v49 = v126[1];
    if (v24 < v49)
    {
      if (__OFSUB__(v24, v23))
      {
        goto LABEL_131;
      }

      if (v24 - v23 < v116)
      {
        break;
      }
    }

LABEL_47:
    if (v24 < v23)
    {
      goto LABEL_130;
    }

    v63 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = *(v22 + 16);
      sub_1AC60E284();
      v22 = v106;
    }

    v64 = *(v22 + 16);
    v65 = v64 + 1;
    if (v64 >= *(v22 + 24) >> 1)
    {
      sub_1AC60E284();
      v22 = v107;
    }

    result = v63;
    *(v22 + 16) = v65;
    v66 = v22 + 32;
    v67 = (v22 + 32 + 16 * v64);
    *v67 = v23;
    v67[1] = v24;
    v124 = *v118;
    if (!v124)
    {
      goto LABEL_140;
    }

    v128 = v24;
    if (v64)
    {
      i = v22;
      while (1)
      {
        v68 = v65 - 1;
        v69 = (v66 + 16 * (v65 - 1));
        v70 = (v22 + 16 * v65);
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v71 = *(v22 + 32);
          v72 = *(v22 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_68:
          if (v74)
          {
            goto LABEL_117;
          }

          v86 = *v70;
          v85 = v70[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_120;
          }

          v90 = v69[1];
          v91 = v90 - *v69;
          if (__OFSUB__(v90, *v69))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v88, v91))
          {
            goto LABEL_125;
          }

          if (v88 + v91 >= v73)
          {
            if (v73 < v91)
            {
              v68 = v65 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v65 < 2)
        {
          goto LABEL_119;
        }

        v93 = *v70;
        v92 = v70[1];
        v81 = __OFSUB__(v92, v93);
        v88 = v92 - v93;
        v89 = v81;
LABEL_83:
        if (v89)
        {
          goto LABEL_122;
        }

        v95 = *v69;
        v94 = v69[1];
        v81 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v81)
        {
          goto LABEL_124;
        }

        if (v96 < v88)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v126)
        {
          goto LABEL_137;
        }

        v5 = v19;
        v100 = (v66 + 16 * (v68 - 1));
        v101 = *v100;
        v102 = v68;
        v103 = (v66 + 16 * v68);
        v22 = v103[1];
        sub_1AC6AFC94(*v126 + *(v125 + 72) * *v100, *v126 + *(v125 + 72) * *v103, *v126 + *(v125 + 72) * v22, v124);
        if (v6)
        {
        }

        if (v22 < v101)
        {
          goto LABEL_112;
        }

        v6 = *(i + 16);
        if (v102 > v6)
        {
          goto LABEL_113;
        }

        *v100 = v101;
        v100[1] = v22;
        if (v102 >= v6)
        {
          goto LABEL_114;
        }

        v65 = v6 - 1;
        memmove(v103, v103 + 2, 16 * (v6 - 1 - v102));
        v22 = i;
        *(i + 16) = v6 - 1;
        v104 = v6 > 2;
        v6 = 0;
        result = v131;
        v19 = v5;
        if (!v104)
        {
          goto LABEL_97;
        }
      }

      v75 = v66 + 16 * v65;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_115;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_116;
      }

      v82 = v70[1];
      v83 = v82 - *v70;
      if (__OFSUB__(v82, *v70))
      {
        goto LABEL_118;
      }

      v81 = __OFADD__(v73, v83);
      v84 = v73 + v83;
      if (v81)
      {
        goto LABEL_121;
      }

      if (v84 >= v78)
      {
        v98 = *v69;
        v97 = v69[1];
        v81 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v81)
        {
          goto LABEL_129;
        }

        if (v73 < v99)
        {
          v68 = v65 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v20 = v126[1];
    v21 = v128;
    if (v128 >= v20)
    {
      goto LABEL_100;
    }
  }

  v50 = v23 + v116;
  if (__OFADD__(v23, v116))
  {
    goto LABEL_133;
  }

  if (v50 >= v49)
  {
    v50 = v126[1];
  }

  if (v50 < v23)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v24 == v50)
  {
    goto LABEL_47;
  }

  i = v22;
  v115 = v6;
  v51 = *v126;
  v52 = *(v125 + 72);
  v53 = *v126 + v52 * (v24 - 1);
  v54 = -v52;
  v117 = v23;
  v55 = v23 - v24;
  v119 = v52;
  v120 = v50;
  v56 = v51 + v24 * v52;
LABEL_40:
  v128 = v24;
  v122 = v56;
  v123 = v55;
  v124 = v53;
  v57 = v53;
  v5 = v131;
  while (1)
  {
    sub_1AC6B1678(v56, v19, type metadata accessor for EARLocaleAlternative);
    v58 = v130;
    sub_1AC6B1678(v57, v130, type metadata accessor for EARLocaleAlternative);
    v59 = *(v5 + 20);
    v60 = *&v19[v59];
    v61 = *(v58 + v59);
    sub_1AC6B03E0();
    result = sub_1AC6B03E0();
    if (v61 >= v60)
    {
LABEL_45:
      v24 = v128 + 1;
      v53 = v124 + v119;
      v55 = v123 - 1;
      v56 = v122 + v119;
      if (v128 + 1 == v120)
      {
        v24 = v120;
        v6 = v115;
        v22 = i;
        result = v131;
        v23 = v117;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v51)
    {
      break;
    }

    v62 = v129;
    sub_1AC6B1700(v56, v129, type metadata accessor for EARLocaleAlternative);
    v5 = v131;
    swift_arrayInitWithTakeFrontToBack();
    sub_1AC6B1700(v62, v57, type metadata accessor for EARLocaleAlternative);
    v57 += v54;
    v56 += v54;
    v48 = __CFADD__(v55++, 1);
    if (v48)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_1AC6AFC94(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = type metadata accessor for EARLocaleAlternative();
  v9 = *(*(v57 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v57);
  v56 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = v51 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v17 = a2 - a1;
  v18 = a2 - a1 == 0x8000000000000000 && v16 == -1;
  if (v18)
  {
    goto LABEL_61;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v21 = v17 / v16;
  v60 = a1;
  v59 = a4;
  v22 = v19 / v16;
  v51[1] = v4;
  if (v17 / v16 >= v19 / v16)
  {
    sub_1AC7040B0(a2, v19 / v16, a4);
    v31 = a4 + v22 * v16;
    v32 = -v16;
    v33 = v31;
    v34 = a3;
    v53 = a1;
    v54 = -v16;
LABEL_37:
    v55 = a2 + v32;
    v35 = v34;
    v51[0] = v33;
    while (1)
    {
      if (v31 <= a4)
      {
        v60 = a2;
        v58 = v33;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v33;
      v36 = a2;
      v37 = a4;
      v38 = v35 + v54;
      v39 = v31 + v54;
      v40 = v31;
      v41 = v35;
      sub_1AC6B1678(v31 + v54, v14, type metadata accessor for EARLocaleAlternative);
      v42 = v14;
      v43 = v56;
      sub_1AC6B1678(v55, v56, type metadata accessor for EARLocaleAlternative);
      v44 = *(v57 + 20);
      v45 = *&v42[v44];
      v46 = *(v43 + v44);
      v14 = v42;
      sub_1AC6B03E0();
      sub_1AC6B03E0();
      if (v46 < v45)
      {
        v48 = v41 < v36 || v38 >= v36;
        v34 = v38;
        a4 = v37;
        if (v48)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v52;
          a1 = v53;
          v32 = v54;
          v31 = v40;
        }

        else
        {
          v33 = v52;
          v18 = v41 == v36;
          v32 = v54;
          v49 = v55;
          a2 = v55;
          v31 = v40;
          a1 = v53;
          if (!v18)
          {
            v50 = v52;
            swift_arrayInitWithTakeBackToFront();
            v31 = v40;
            a2 = v49;
            v33 = v50;
          }
        }

        goto LABEL_37;
      }

      v47 = v41 < v40 || v38 >= v40;
      a4 = v37;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
        v35 = v38;
        v31 = v39;
        v33 = v39;
        a2 = v36;
        a1 = v53;
      }

      else
      {
        v33 = v39;
        v18 = v40 == v41;
        v35 = v38;
        v31 = v39;
        a2 = v36;
        a1 = v53;
        if (!v18)
        {
          swift_arrayInitWithTakeBackToFront();
          v35 = v38;
          v31 = v39;
          v33 = v39;
        }
      }
    }

    v60 = a2;
    v58 = v51[0];
  }

  else
  {
    sub_1AC7040B0(a1, v17 / v16, a4);
    v23 = a4 + v21 * v16;
    v58 = v23;
    while (a4 < v23 && a2 < a3)
    {
      sub_1AC6B1678(a2, v14, type metadata accessor for EARLocaleAlternative);
      v25 = v56;
      sub_1AC6B1678(a4, v56, type metadata accessor for EARLocaleAlternative);
      v26 = *(v57 + 20);
      v27 = *&v14[v26];
      v28 = *(v25 + v26);
      sub_1AC6B03E0();
      sub_1AC6B03E0();
      if (v28 >= v27)
      {
        if (a1 < a4 || a1 >= a4 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v59 = a4 + v16;
        a4 += v16;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v16)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v16;
      }

      a1 += v16;
      v60 = a1;
    }
  }

LABEL_59:
  sub_1AC6B013C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_1AC6B013C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for EARLocaleAlternative();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1AC6B021C(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_1AC6B0248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE18, &qword_1AC7A8218);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_1AC6B0370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA78, &qword_1AC7AB5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC6B03E0()
{
  v1 = OUTLINED_FUNCTION_25();
  v3 = v2(v1);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1AC6B0454(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AC6B04A0()
{
  result = qword_1EB56CA90;
  if (!qword_1EB56CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CA90);
  }

  return result;
}

unint64_t sub_1AC6B04F8()
{
  result = qword_1EB56CA98;
  if (!qword_1EB56CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CA98);
  }

  return result;
}

uint64_t sub_1AC6B05BC(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6B0454(&qword_1EB56CAA8, type metadata accessor for LanguageDetector);
  result = sub_1AC6B0454(&qword_1EB56CAB0, type metadata accessor for LanguageDetector);
  *(a1 + 16) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for LanguageDetectorResultReportingFrequency(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1AC6B0784(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t *assignWithCopy for LanguageDetectorOptions(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for LanguageDetectorOptions(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for LanguageDetectorOptions(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LanguageDetectorOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1AC6B0940()
{
  v0 = type metadata accessor for ClientInfo(319);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1AC6B0AB8(319, &qword_1EB56AC20, MEMORY[0x1E69E87C8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1AC6B0AB8(319, &qword_1EB56AC60, MEMORY[0x1E69E87A0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1AC6B0AB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LanguageDetector.Result(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v8 = a3(a1, v6, v7, MEMORY[0x1E69E7288]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for LanguageDetector.LocaleAlternative(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v8 = *a2;
    *a1 = *a2;
    a1 = (v8 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79FB18();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t destroy for LanguageDetector.LocaleAlternative(uint64_t a1)
{
  v2 = sub_1AC79FB18();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t initializeWithCopy for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithCopy for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t initializeWithTake for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t assignWithTake for LanguageDetector.LocaleAlternative(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79FB18();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t sub_1AC6B0E80()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for LanguageDetector.Result(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
    v8 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v8;
    *(a1 + 64) = a2[8];
    v9 = a3[6];
    v10 = sub_1AC79FB18();
    (*(*(v10 - 8) + 16))(&v4[v9], a2 + v9, v10);
    v11 = a3[8];
    *&v4[a3[7]] = *(a2 + a3[7]);
    v12 = sub_1AC79F9C8();
    v13 = *(*(v12 - 8) + 16);

    v13(&v4[v11], a2 + v11, v12);
  }

  return v4;
}

uint64_t destroy for LanguageDetector.Result(uint64_t a1, int *a2)
{
  v4 = a2[6];
  v5 = sub_1AC79FB18();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + a2[7]);

  v7 = a2[8];
  v8 = sub_1AC79F9C8();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

uint64_t initializeWithCopy for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  v8 = a3[6];
  v9 = sub_1AC79FB18();
  (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
  v10 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v11 = sub_1AC79F9C8();
  v12 = *(*(v11 - 8) + 16);

  v12(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t assignWithCopy for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  v6 = a3[6];
  v7 = sub_1AC79FB18();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  v8 = a3[7];
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  v10 = a3[8];
  v11 = sub_1AC79F9C8();
  (*(*(v11 - 8) + 24))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t initializeWithTake for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v7;
  *(a1 + 64) = *(a2 + 64);
  v8 = a3[6];
  v9 = sub_1AC79FB18();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[7];
  v11 = a3[8];
  *(a1 + v10) = *(a2 + v10);
  v12 = sub_1AC79F9C8();
  (*(*(v12 - 8) + 32))(a1 + v11, a2 + v11, v12);
  return a1;
}

uint64_t assignWithTake for LanguageDetector.Result(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v6 = a3[6];
  v7 = sub_1AC79FB18();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  v8 = a3[7];
  v9 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  v10 = a3[8];
  v11 = sub_1AC79F9C8();
  (*(*(v11 - 8) + 40))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t sub_1AC6B152C()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1AC79F9C8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1AC6B1614()
{
  result = qword_1EB56CAD0;
  if (!qword_1EB56CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56CA70, &qword_1AC7B2590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CAD0);
  }

  return result;
}

uint64_t sub_1AC6B1678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_80(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1AC6B1700(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_80(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1AC6B1760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6AEC88;

  return sub_1AC6AE194(a1, v4, v5, v7, v6);
}

uint64_t sub_1AC6B1820(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 24) = &off_1F21348F0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();

  sub_1AC703D1C();
  v4 = *(*(a2 + 256) + 16);
  sub_1AC703E54(v4);
  v5 = *(a2 + 256);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = sub_1AC6B18F4;
  *(v6 + 40) = v3;
  *(a2 + 256) = v5;
  swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_1AC79FB18();
}

uint64_t OUTLINED_FUNCTION_25_7()
{

  return swift_slowAlloc();
}

void sub_1AC6B1964(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18 - v5;
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked));
  v8 = *(v7 + 16);
  os_unfair_lock_unlock(v7);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v9 = sub_1AC79FDE8();
  __swift_project_value_buffer(v9, qword_1ED9386C8);
  if (v8)
  {
    v14 = sub_1AC79FDC8();
    v15 = sub_1AC7A05F8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, 0x80000001AC7B7630, &v19);
      _os_log_impl(&dword_1AC5BC000, v14, v15, "Failed precondition: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked));
    v11 = *(v10 + 8);
    *(v10 + 8) = a1;

    *(v10 + 16) = 1;
    os_unfair_lock_unlock(v10);
    v12 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a1;
    v13[5] = v1;

    sub_1AC659B08();
  }
}

uint64_t SpeechDetector.__allocating_init(detectionOptions:reportResults:)(char *a1, int a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  SpeechDetector.init(detectionOptions:reportResults:)(a1, a2);
  return v7;
}

uint64_t SpeechDetector.init(detectionOptions:reportResults:)(char *a1, int a2)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE0, &unk_1AC7AB9A0);
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v31[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  v13 = OUTLINED_FUNCTION_40(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v31[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF0, &qword_1AC7AB9B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v31[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v31[-v25];
  v27 = *a1;
  v28 = v2 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_detectionOptions) = v27;
  *(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_reportResults) = v32;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v29);
  v33 = v26;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8790], v4);
  sub_1AC7A03B8();
  (*(v15 + 32))(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector__results, v19, v12);
  sub_1AC6B1FCC(v26, v24);
  result = __swift_getEnumTagSinglePayload(v24, 1, v29);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v29 - 8) + 32))(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_resultsBuilder, v24, v29);
    sub_1AC5C720C(v26, &qword_1EB56CAF0, &qword_1AC7AB9B0);
    return v2;
  }

  return result;
}

uint64_t sub_1AC6B1F14(uint64_t a1, uint64_t a2)
{
  sub_1AC5C720C(a2, &qword_1EB56CAF0, &qword_1AC7AB9B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_1AC6B1FCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF0, &qword_1AC7AB9B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SpeechDetector.__allocating_init()()
{
  v5 = 1;
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SpeechDetector.init(detectionOptions:reportResults:)(&v5, 0);
  return v3;
}

Speech::SpeechDetector::SensitivityLevel_optional __swiftcall SpeechDetector.SensitivityLevel.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1AC6B20C8@<X0>(uint64_t *a1@<X8>)
{
  result = SpeechDetector.SensitivityLevel.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t SpeechDetector.DetectionOptions.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t SpeechDetector.results.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Speech14SpeechDetector__results;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

__n128 SpeechDetector.Result.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t SpeechDetector.Result.resultsFinalizationTime.getter()
{
  result = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  return result;
}

uint64_t SpeechDetector.Result.description.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v11.start.value = 0;
  *&v11.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v12 = *&v11.start.value;
  MEMORY[0x1B26E8C40](0xD000000000000025, 0x80000001AC7B7660);
  v5 = *(v0 + 16);
  *&v11.start.value = *v0;
  *&v11.start.epoch = v5;
  *&v11.duration.timescale = *(v0 + 32);
  v6 = CMTimeRangeCopyDescription(0, &v11);
  if (!v6)
  {
    v6 = sub_1AC79FF58();
  }

  v11.start.value = v6;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7B59C0);
  v11.start.value = v1;
  *&v11.start.timescale = v2;
  v11.start.epoch = v3;
  v7 = CMTimeCopyDescription(0, &v11.start);
  if (!v7)
  {
    v7 = sub_1AC79FF58();
  }

  v11.start.value = v7;
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0xD000000000000011, 0x80000001AC7B7690);
  if (v4)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v4)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1B26E8C40](v8, v9);

  MEMORY[0x1B26E8C40](4095242, 0xE300000000000000);
  return v12;
}

double sub_1AC6B2440@<D0>(_OWORD *a1@<X8>)
{
  SpeechDetector.Result.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t SpeechDetector.availableCompatibleAudioFormats.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t SpeechDetector.availableCompatibleAudioFormats(clientID:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AC7AA7F0;
  if (qword_1EB56B580 != -1)
  {
    OUTLINED_FUNCTION_3_1();
  }

  v1 = qword_1EB56E820;
  *(v0 + 32) = qword_1EB56E820;
  v2 = v1;
  return v0;
}

uint64_t sub_1AC6B25A0()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked));
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

uint64_t sub_1AC6B25E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC6B260C, 0, 0);
}

uint64_t sub_1AC6B260C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC6B263C, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC6B263C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765B40(*(v0 + 32), *(v0 + 24));

  return MEMORY[0x1EEE6DFA0](sub_1AC6AE248, 0, 0);
}

uint64_t sub_1AC6B26A0(void *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  swift_unknownObjectRetain();
  v4 = sub_1AC6B2714(a1 + v3);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1AC6B2714(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for SpeechRecognizerSupportedFeatures() + 44));
  if (v2 == 3 || v2 != *(v1 + OBJC_IVAR____TtC6Speech14SpeechDetector_detectionOptions))
  {
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_1AC7A09C8();
    MEMORY[0x1B26E8C40](0xD00000000000001ELL, 0x80000001AC7B7720);
    v21 = *(v1 + OBJC_IVAR____TtC6Speech14SpeechDetector_detectionOptions);
    sub_1AC7A0AF8();
    MEMORY[0x1B26E8C40](0x7070757320737620, 0xEE0020646574726FLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CB40, &unk_1AC7ABCA8);
    v4 = sub_1AC79FFD8();
    MEMORY[0x1B26E8C40](v4);

    v5 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = *(v5 + 16);
      sub_1AC60DBDC();
      v5 = v19;
    }

    v6 = *(v5 + 16);
    if (v6 >= *(v5 + 24) >> 1)
    {
      sub_1AC60DBDC();
      v5 = v20;
    }

    v3 = 0;
    *(v5 + 16) = v6 + 1;
    v7 = v5 + 16 * v6;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0xE000000000000000;
  }

  else
  {
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {

      return 1;
    }

    v3 = 1;
  }

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v8 = sub_1AC79FDE8();
  __swift_project_value_buffer(v8, qword_1ED9386C8);

  v9 = sub_1AC79FDC8();
  v10 = sub_1AC7A05E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC5C8BE0(&qword_1EB56AC88, &unk_1EB56C640, &unk_1AC7A9BE0);
    v13 = sub_1AC79FEA8();
    v15 = v14;

    v16 = sub_1AC5CFE74(v13, v15, v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1AC5BC000, v9, v10, "SpeechDetector.isWorkerUsable: Worker not usable because %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }

  return v3;
}

uint64_t sub_1AC6B2A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v6 = OUTLINED_FUNCTION_80(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AC61B924(a1, v10);
  v10[*(v5 + 44)] = *(v2 + OBJC_IVAR____TtC6Speech14SpeechDetector_detectionOptions);
  sub_1AC61B988(v10, a2);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v5);
}

uint64_t SpeechDetector.recognizerObjectIdentifier.getter()
{
  v0 = sub_1AC6B25A0();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

void sub_1AC6B2B68(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC6Speech14SpeechDetector_reportResults) == 1 && a1 != 0)
  {
    v4 = a1;
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v5 = sub_1AC79FDE8();
    __swift_project_value_buffer(v5, qword_1ED9386C8);
    v6 = a1;
    v7 = sub_1AC79FDC8();
    v8 = sub_1AC7A05F8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1AC5BC000, v7, v8, "SpeechDetector encountered an error during recognition: %@", v9, 0xCu);
      sub_1AC5C720C(v10, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
    sub_1AC7A0398();
  }
}

uint64_t sub_1AC6B2CFC(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  return sub_1AC7A0398();
}

uint64_t SpeechDetector.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech14SpeechDetector__results;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAE8, &qword_1AC7B2580);
  OUTLINED_FUNCTION_80(v2);
  (*(v3 + 8))(v0 + v1);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech14SpeechDetector__workerWithLocked + 8, &qword_1EB56CB00, &qword_1AC7B1890);
  v4 = OBJC_IVAR____TtC6Speech14SpeechDetector_resultsBuilder;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CAF8, &qword_1AC7AB9B8);
  OUTLINED_FUNCTION_80(v5);
  (*(v6 + 8))(v0 + v4);
  return v0;
}

uint64_t SpeechDetector.__deallocating_deinit()
{
  SpeechDetector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC6B2E84()
{
  v1 = SpeechDetector.availableCompatibleAudioFormats.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AC6B2EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B2F6C;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC6B2F6C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_18();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1AC6B305C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B30E8;

  return sub_1AC6B2588();
}

uint64_t sub_1AC6B30E8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

unint64_t sub_1AC6B32C4()
{
  result = qword_1EB56CB18;
  if (!qword_1EB56CB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CB18);
  }

  return result;
}

unint64_t sub_1AC6B331C()
{
  result = qword_1EB56CB20;
  if (!qword_1EB56CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56CB20);
  }

  return result;
}

uint64_t sub_1AC6B3398(uint64_t a1)
{
  *(a1 + 8) = sub_1AC6B3508(&qword_1EB56CB28, type metadata accessor for SpeechDetector);
  result = sub_1AC6B3508(&qword_1EB56C990, type metadata accessor for SpeechDetector);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SpeechDetector()
{
  result = qword_1EB56B318;
  if (!qword_1EB56B318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC6B3468(uint64_t a1)
{
  result = sub_1AC6B3508(&qword_1EB56C990, type metadata accessor for SpeechDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6B3508(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AC6B3558()
{
  sub_1AC6B36A0(319, &qword_1EB56AC38, MEMORY[0x1E69E87C8]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1AC6B36A0(319, &qword_1EB56AC70, MEMORY[0x1E69E87A0]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1AC6B36A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v7 = a3(a1, &type metadata for SpeechDetector.Result, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *sub_1AC6B372C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SpeechDetector.Result(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 73))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 72);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeechDetector.Result(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1AC6B38C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6B2F6C;

  return sub_1AC6B25E8(a1, v4, v5, v7, v6);
}

uint64_t sub_1AC6B398C()
{
  if (qword_1ED937ED8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED938608;
  v4[3] = type metadata accessor for EARXPCRegistry();
  v4[4] = &off_1F2134CA0;
  v4[0] = v0;
  v1 = swift_retain_n();
  v2 = sub_1AC6B4DF4(v1, v4);

  qword_1ED938610 = v2;
  return result;
}

uint64_t sub_1AC6B3A24()
{
  type metadata accessor for EARXPCRegistry();
  OUTLINED_FUNCTION_99();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = MEMORY[0x1E69E7CC0];
  qword_1ED938608 = result;
  return result;
}

id sub_1AC6B3A5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  type metadata accessor for EARSpeechRecognitionResultStream();
  v4 = OUTLINED_FUNCTION_4_7();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
    objc_allocWithZone(type metadata accessor for EARSpeechRecognitionResultStream.XPCProxy());
    swift_unknownObjectRetain();
    return sub_1AC6E3FB4(v5, v3);
  }

  else
  {
    type metadata accessor for EARLanguageDetectorResultStream();
    result = OUTLINED_FUNCTION_4_7();
    if (result)
    {
      v8 = result;
      v9 = sub_1AC7A0288();
      __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
      objc_allocWithZone(type metadata accessor for EARLanguageDetectorResultStream.XPCProxy());
      swift_unknownObjectRetain();
      return sub_1AC727038(v8, v3);
    }
  }

  return result;
}

uint64_t sub_1AC6B3B84()
{
  type metadata accessor for EARSpeechRecognitionResultStream();
  if (OUTLINED_FUNCTION_4_7())
  {
    if (qword_1EB56AD68 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EB56E600;
  }

  else
  {
    type metadata accessor for EARLanguageDetectorResultStream();
    if (!OUTLINED_FUNCTION_4_7())
    {
      return 0;
    }

    if (qword_1EB56B5F8 != -1)
    {
      swift_once();
    }

    v0 = &qword_1EB56E898;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1AC6B3C48(uint64_t a1, int a2, int a3, int a4, id a5)
{
  v7 = [a5 protocol];
  if (swift_dynamicCastObjCProtocolConditional())
  {
    type metadata accessor for EARSpeechRecognizer();
    v8 = OUTLINED_FUNCTION_1_9();
    sub_1AC5ED59C(v8, v9, v10, v11);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56AE98;
    v13 = type metadata accessor for EARSpeechRecognizer;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    v14 = OUTLINED_FUNCTION_1_9();
    sub_1AC75AC38(v14, v15, v16, v17);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56AD88;
    v13 = type metadata accessor for EARSpeechRecognitionAudioBuffer;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for LSRAssets();
    v18 = OUTLINED_FUNCTION_1_9();
    sub_1AC6F306C(v18, v19, v20, v21);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56ACE0;
    v13 = type metadata accessor for LSRAssets;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EAREuclid();
    v22 = OUTLINED_FUNCTION_1_9();
    sub_1AC75577C(v22, v23, v24, v25);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56AD10;
    v13 = type metadata accessor for EAREuclid;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EARFullPayloadCorrector();
    v26 = OUTLINED_FUNCTION_1_9();
    sub_1AC753F38(v26, v27, v28, v29);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56BA38;
    v13 = type metadata accessor for EARFullPayloadCorrector;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for EARTranscriptionEvaluator();
    v30 = OUTLINED_FUNCTION_1_9();
    sub_1AC710B9C(v30, v31, v32, v33);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56BA70;
    v13 = type metadata accessor for EARTranscriptionEvaluator;
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_6_7())
  {
    type metadata accessor for LSRAssetInventory();
    v34 = OUTLINED_FUNCTION_1_9();
    sub_1AC6B71D0(v34, v35, v36, v37);
    OUTLINED_FUNCTION_5_6();
    if (v5)
    {
      return a1;
    }

    v12 = &unk_1EB56BBD8;
    v13 = type metadata accessor for LSRAssetInventory;
LABEL_24:
    sub_1AC6B4BD8(v12, v13);
    return a1;
  }

  return 0;
}

void sub_1AC6B3F74(int a1, id a2)
{
  v2 = [a2 _xpcConnection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_10_8(v3, v4);
  swift_unknownObjectRelease();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v5 = sub_1AC79FDE8();
  __swift_project_value_buffer(v5, qword_1ED9386C8);

  swift_unknownObjectRetain();
  oslog = sub_1AC79FDC8();
  v6 = sub_1AC7A05E8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_11_10(4.8752e-34, v18);

    OUTLINED_FUNCTION_9_9();
    v8 = sub_1AC7A0F78();
    v10 = sub_1AC5CFE74(v8, v9, &v18);

    *(v7 + 14) = v10;
    OUTLINED_FUNCTION_8_7(&dword_1AC5BC000, v11, v12, "[%{public}s] is connection to local %{public}s", v13, v14, v15, v16, oslog);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }
}

uint64_t sub_1AC6B4154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  os_unfair_lock_lock((v7 + 16));
  v11 = *(v7 + 24);

  os_unfair_lock_unlock((v7 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      v15(v27, v16);

      if (v27[0])
      {
        v17 = v27[1];
        if (a3)
        {
          ObjectType = swift_getObjectType();
          v19 = *(v17 + 8);
          v20 = swift_unknownObjectRetain();
          v19(v20, a4, a7, ObjectType, v17);
          swift_unknownObjectRelease();
        }

        if (a5)
        {
          v21 = swift_getObjectType();
          v22 = *(v17 + 8);
          v23 = swift_unknownObjectRetain();
          v22(v23, a6, a7, v21, v17);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v13 += 2;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1AC6B42B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = *result;
  v8 = *(*result + 16);
  while (1)
  {
    if (v8 == v6)
    {
      v6 = *(v7 + 16);
      goto LABEL_21;
    }

    if (v6 >= *(v7 + 16))
    {
      break;
    }

    v10 = *(v7 + v5 + 32);
    v9 = *(v7 + v5 + 40);

    v10(v30, v11);

    result = v30[0];
    if (!v30[0])
    {
      v12 = v6 + 1;
      v13 = *(v7 + 16);
      if (v13 - 1 != v6)
      {
        while (v12 < v13)
        {
          v14 = v7 + v5;
          v16 = *(v7 + v5 + 48);
          v15 = *(v7 + v5 + 56);

          v16(v30, v17);

          result = v30[0];
          if (v30[0])
          {
            result = swift_unknownObjectRelease();
            if (v12 != v6)
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_24;
              }

              v18 = *(v7 + 16);
              if (v6 >= v18)
              {
                goto LABEL_25;
              }

              if (v12 >= v18)
              {
                goto LABEL_26;
              }

              v20 = *(v14 + 48);
              v19 = *(v14 + 56);
              v29 = *(v7 + 32 + 16 * v6);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1AC704598(v7);
                v7 = v24;
              }

              v21 = v7 + 16 * v6;
              v22 = *(v21 + 40);
              *(v21 + 32) = v20;
              *(v21 + 40) = v19;

              if (v12 >= *(v7 + 16))
              {
                goto LABEL_27;
              }

              v23 = *(v7 + v5 + 56);
              *(v7 + v5 + 48) = v29;

              *v4 = v7;
            }

            ++v6;
          }

          ++v12;
          v13 = *(v7 + 16);
          v5 += 16;
          if (v12 == v13)
          {
            if (v12 < v6)
            {
              goto LABEL_28;
            }

            goto LABEL_21;
          }
        }

        goto LABEL_23;
      }

LABEL_21:
      sub_1AC6A87D0(v6);
      OUTLINED_FUNCTION_99();
      v25 = swift_allocObject();
      *(v25 + 24) = a3;
      swift_unknownObjectWeakInit();

      sub_1AC703C2C();
      v26 = *(*v4 + 16);
      sub_1AC703D7C(v26);
      v27 = *v4;
      *(v27 + 16) = v26 + 1;
      v28 = v27 + 16 * v26;
      *(v28 + 32) = sub_1AC6B18F4;
      *(v28 + 40) = v25;

      *v4 = v27;
      return result;
    }

    result = swift_unknownObjectRelease();
    ++v6;
    v5 += 16;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1AC6B4508@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(a1 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1AC6B4558()
{
  sub_1AC6B4F0C(v0 + 24);
  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1AC6B45B0(int a1, id a2)
{
  v2 = [a2 _xpcConnection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E6530];
  *(v3 + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_10_8(v3, v4);
  swift_unknownObjectRelease();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v5 = sub_1AC79FDE8();
  __swift_project_value_buffer(v5, qword_1ED9386C8);

  swift_unknownObjectRetain();
  oslog = sub_1AC79FDC8();
  v6 = sub_1AC7A05E8();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_11_10(4.8752e-34, v18);

    OUTLINED_FUNCTION_9_9();
    v8 = sub_1AC7A0F78();
    v10 = sub_1AC5CFE74(v8, v9, &v18);

    *(v7 + 14) = v10;
    OUTLINED_FUNCTION_8_7(&dword_1AC5BC000, v11, v12, "[%{public}s] is connection to remote %{public}s", v13, v14, v15, v16, oslog);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }
}

uint64_t sub_1AC6B4790()
{
  type metadata accessor for LocalSpeechRecognitionService();
  if (OUTLINED_FUNCTION_4_7())
  {
    if (qword_1ED937D58 != -1)
    {
      swift_once();
    }

    v0 = &qword_1ED9386F0;
  }

  else
  {
    type metadata accessor for EARSpeechRecognizer();
    if (OUTLINED_FUNCTION_4_7())
    {
      if (qword_1EB56AEA0 != -1)
      {
        swift_once();
      }

      v0 = &qword_1EB56E668;
    }

    else
    {
      type metadata accessor for EARSpeechRecognitionAudioBuffer();
      if (OUTLINED_FUNCTION_4_7())
      {
        if (qword_1EB56AD98 != -1)
        {
          swift_once();
        }

        v0 = &qword_1EB56E608;
      }

      else
      {
        type metadata accessor for LSRAssets();
        if (OUTLINED_FUNCTION_4_7())
        {
          if (qword_1EB56ACF0 != -1)
          {
            swift_once();
          }

          v0 = &qword_1EB56E5F0;
        }

        else
        {
          type metadata accessor for EAREuclid();
          if (OUTLINED_FUNCTION_4_7())
          {
            if (qword_1EB56AD20 != -1)
            {
              swift_once();
            }

            v0 = &qword_1EB56E5F8;
          }

          else
          {
            type metadata accessor for EARLanguageDetector();
            if (OUTLINED_FUNCTION_4_7())
            {
              if (qword_1EB56B5F0 != -1)
              {
                swift_once();
              }

              v0 = &qword_1EB56E890;
            }

            else
            {
              type metadata accessor for EARLanguageDetectorAudioBuffer();
              if (OUTLINED_FUNCTION_4_7())
              {
                if (qword_1EB56B5A8 != -1)
                {
                  swift_once();
                }

                v0 = &qword_1EB56E848;
              }

              else
              {
                type metadata accessor for EARFullPayloadCorrector();
                if (OUTLINED_FUNCTION_4_7())
                {
                  if (qword_1EB56B618 != -1)
                  {
                    swift_once();
                  }

                  v0 = &qword_1EB56E8D8;
                }

                else
                {
                  type metadata accessor for EARTranscriptionEvaluator();
                  if (OUTLINED_FUNCTION_4_7())
                  {
                    if (qword_1EB56B5E8 != -1)
                    {
                      swift_once();
                    }

                    v0 = &qword_1EB56E888;
                  }

                  else
                  {
                    type metadata accessor for LSRAssetInventory();
                    if (!OUTLINED_FUNCTION_4_7())
                    {
                      return 0;
                    }

                    if (qword_1EB56B590 != -1)
                    {
                      swift_once();
                    }

                    v0 = &qword_1EB56E828;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t sub_1AC6B4A94()
{
  type metadata accessor for LocalSpeechRecognitionService();
  if (OUTLINED_FUNCTION_2_9())
  {
    v0 = OUTLINED_FUNCTION_0_7();
    sub_1AC64027C(v0, v1, v2, v3, v4, v5);
  }

  else
  {
    type metadata accessor for EARSpeechRecognizer();
    if (OUTLINED_FUNCTION_2_9())
    {
      v7 = OUTLINED_FUNCTION_0_7();
      sub_1AC5EDC90(v7, v8, v9);
    }

    else
    {
      type metadata accessor for EARSpeechRecognitionAudioBuffer();
      if (OUTLINED_FUNCTION_2_9())
      {
        v10 = OUTLINED_FUNCTION_0_7();
        v6 = sub_1AC5D1ED0(v10, v11, v12);
      }

      else
      {
        type metadata accessor for LSRAssets();
        if (OUTLINED_FUNCTION_2_9())
        {
          v13 = OUTLINED_FUNCTION_0_7();
          v6 = sub_1AC6F30F4(v13, v14, v15);
        }

        else
        {
          type metadata accessor for EAREuclid();
          if (OUTLINED_FUNCTION_2_9())
          {
            v16 = OUTLINED_FUNCTION_0_7();
            sub_1AC755804(v16, v17, v18);
          }

          else
          {
            type metadata accessor for EARLanguageDetector();
            if (OUTLINED_FUNCTION_2_9())
            {
              v19 = OUTLINED_FUNCTION_0_7();
              v6 = sub_1AC71C4D0(v19, v20, v21);
            }

            else
            {
              type metadata accessor for EARLanguageDetectorAudioBuffer();
              if (OUTLINED_FUNCTION_2_9())
              {
                v22 = OUTLINED_FUNCTION_0_7();
                v6 = sub_1AC6CCD24(v22, v23, v24, v25);
              }

              else
              {
                type metadata accessor for EARFullPayloadCorrector();
                if (OUTLINED_FUNCTION_2_9())
                {
                  v26 = OUTLINED_FUNCTION_0_7();
                  v6 = sub_1AC753FC0(v26, v27, v28, v29, v30, v31);
                }

                else
                {
                  type metadata accessor for EARTranscriptionEvaluator();
                  if (OUTLINED_FUNCTION_2_9())
                  {
                    v32 = OUTLINED_FUNCTION_0_7();
                    v6 = sub_1AC710C24(v32, v33, v34, v35, v36, v37);
                  }

                  else
                  {
                    type metadata accessor for LSRAssetInventory();
                    result = OUTLINED_FUNCTION_2_9();
                    if (!result)
                    {
                      return result;
                    }

                    v39 = OUTLINED_FUNCTION_0_7();
                    v6 = sub_1AC6B7258(v39, v40, v41, v42, v43, v44);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v6 & 1;
}

uint64_t sub_1AC6B4BD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AC6B4C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = type metadata accessor for EARXPCRegistry();
  v14 = &off_1F2134CE0;
  *&v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CDF0, &qword_1AC7AF130);
  sub_1AC5EDAF0();
  *(a3 + 96) = sub_1AC79FE38();
  sub_1AC5CF764(0, &qword_1ED9372C8, 0x1E696B0D8);
  *(a3 + 104) = sub_1AC79FE38();
  type metadata accessor for NSXPCActorSystem.ArgumentListenerDelegate();
  *(a3 + 112) = sub_1AC79FE38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D480, &qword_1AC7AC100);
  *(a3 + 120) = sub_1AC79FE38();
  type metadata accessor for _Lock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *(v6 + 16) = v7;
  *v7 = 0;
  *(a3 + 128) = v6;
  sub_1AC5CF764(0, &qword_1ED9372C0, 0x1E696B0B8);
  *(a3 + 136) = sub_1AC79FE38();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  *(a3 + 144) = v8;
  sub_1AC5D9384(&v12, a3 + 16);
  v10 = *(a2 + 16);
  *(a3 + 56) = *a2;
  *(a3 + 72) = v10;
  *(a3 + 88) = *(a2 + 32);
  return a3;
}

uint64_t sub_1AC6B4DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EARXPCRegistry();
  v14[3] = v4;
  v14[4] = &off_1F2134CE0;
  v14[0] = a1;
  type metadata accessor for NSXPCActorSystem();
  v5 = swift_allocObject();
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v4);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_1AC6B4C20(*v9, a2, v5);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

uint64_t sub_1AC6B4F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CDF8, &qword_1AC7AC108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_7()
{

  return swift_dynamicCastClass();
}

void OUTLINED_FUNCTION_8_7(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, os_log_t log)
{

  _os_log_impl(a1, log, v9, a4, v10, 0x16u);
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[5])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for VoiceCommandDebugInfoAggregated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1AC6B5150(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char *a5)
{
  v84 = a3;
  v85 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v83 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v69 - v13;
  v15 = sub_1AC79F958();
  v16 = OUTLINED_FUNCTION_40(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v81 = &v69 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v69 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v69 - v30;
  v80 = a1;
  sub_1AC79F8F8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1AC5DC870(v14);
    if (qword_1EB56B438 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v32 = sub_1AC79FDE8();
    __swift_project_value_buffer(v32, qword_1EB56E808);

    v33 = sub_1AC79FDC8();
    v34 = sub_1AC7A05F8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v86 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1AC5CFE74(v80, a2, &v86);
      _os_log_impl(&dword_1AC5BC000, v33, v34, "Invalid codepath UUID string: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }
  }

  else
  {
    v77 = v18[4];
    v78 = v18 + 4;
    v77(v31, v14, v15);
    if (qword_1EB56B438 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v37 = sub_1AC79FDE8();
    __swift_project_value_buffer(v37, qword_1EB56E808);
    v38 = v18[2];
    v38(v29, v31, v15);
    v76 = v38;
    v38(v26, v85, v15);

    v39 = sub_1AC79FDC8();
    v40 = sub_1AC7A05E8();

    v41 = os_log_type_enabled(v39, v40);
    v79 = v31;
    v80 = a4;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v86 = v73;
      *v42 = 136315650;
      v72 = v39;
      v43 = sub_1AC79F908();
      v45 = v44;
      v70 = v18;
      v71 = v40;
      v46 = v18[1];
      v74 = (v18 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v46(v29, v15);
      v47 = sub_1AC5CFE74(v43, v45, &v86);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_1AC5CFE74(v84, v80, &v86);
      *(v42 + 22) = 2080;
      v48 = sub_1AC79F908();
      v50 = v49;
      v75 = v46;
      v46(v26, v15);
      v51 = sub_1AC5CFE74(v48, v50, &v86);
      v52 = v70;

      *(v42 + 24) = v51;
      v53 = v72;
      _os_log_impl(&dword_1AC5BC000, v72, v71, "Enqueuing experiment trigger log on a background task. codepathId=%s namespace=%s requestId=%s", v42, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_70();
      v31 = v79;
      OUTLINED_FUNCTION_70();
    }

    else
    {

      v52 = v18;
      v54 = v18[1];
      v74 = (v18 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v54(v26, v15);
      v75 = v54;
      v54(v29, v15);
    }

    v55 = v83;
    sub_1AC7A0238();
    v56 = sub_1AC7A0288();
    __swift_storeEnumTagSinglePayload(v55, 0, 1, v56);
    v57 = v81;
    v58 = v76;
    v76(v81, v31, v15);
    v59 = v82;
    v58(v82, v85, v15);
    v60 = *(v52 + 80);
    v61 = (v60 + 32) & ~v60;
    v62 = (v20 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = (v60 + v62 + 16) & ~v60;
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    v65 = v57;
    v66 = v77;
    v77((v64 + v61), v65, v15);
    v67 = (v64 + v62);
    v68 = v80;
    *v67 = v84;
    v67[1] = v68;
    v66(v64 + v63, v59, v15);

    sub_1AC659DBC();

    v75(v79, v15);
  }
}

uint64_t sub_1AC6B57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AC6B5818, 0, 0);
}

uint64_t sub_1AC6B5818()
{
  v1 = v0[9];
  v2 = v0[6];
  v0[10] = [objc_allocWithZone(sub_1AC79FCF8()) init];
  v3 = sub_1AC79F918();
  v0[11] = v3;
  v4 = sub_1AC79F918();
  v0[12] = v4;
  v5 = *(MEMORY[0x1E6985F88] + 4);
  v10 = (*MEMORY[0x1E6985F88] + MEMORY[0x1E6985F88]);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1AC6B5918;
  v7 = v0[7];
  v8 = v0[8];

  return v10(v3, v7, v8, v4);
}

uint64_t sub_1AC6B5918()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1AC6B5A98;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_1AC6B5A38;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AC6B5A38()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AC6B5A98()
{
  v21 = v0;
  v1 = *(v0 + 88);

  if (qword_1EB56B438 != -1)
  {
    OUTLINED_FUNCTION_0_8();
  }

  v2 = *(v0 + 112);
  v3 = sub_1AC79FDE8();
  __swift_project_value_buffer(v3, qword_1EB56E808);
  v4 = v2;
  v5 = sub_1AC79FDC8();
  v6 = sub_1AC7A05F8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 112);
  v9 = *(v0 + 80);
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    v14 = *(v0 + 32);
    v15 = sub_1AC7A0E08();
    v17 = sub_1AC5CFE74(v15, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_1AC5BC000, v5, v6, "Error emitting codepath trigger: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1AC6B5C8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1AC79F958() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + v8 + 16) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1AC6B5DD0;

  return sub_1AC6B57F4(a1, v10, v11, v1 + v7, v12, v13, v1 + v9);
}

uint64_t sub_1AC6B5DD0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1AC6B5EC4()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6B5F68()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (!v0)
    {
      nullsub_1(v7, v8);
      v16 = v1[6];
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7D68);
      v17 = swift_task_alloc();
      v1[8] = v17;
      *v17 = v1;
      v17[1] = sub_1AC6B60DC;
      v18 = v1[6];
      OUTLINED_FUNCTION_15_0(v1[3]);
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    v9 = v1[6];

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6B60DC()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v7 = *(v4 + 64);
  *v6 = *v1;
  *(v5 + 72) = v0;

  v8 = *(v4 + 56);

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6B620C()
{
  OUTLINED_FUNCTION_85();
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_1AC6B62BC()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_61();
  v2(v1);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC6B6328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC6B5EC4();
}

uint64_t sub_1AC6B63C0()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1AC79FC78();
  v1[5] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_126();
  v7 = sub_1AC79FB18();
  v1[8] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[11] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v15 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1AC6B6508()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = OUTLINED_FUNCTION_14_4();
    v3 = OUTLINED_FUNCTION_18_6(v2);
    v4(v3);
    OUTLINED_FUNCTION_9_10();
    sub_1AC5DE590();
    v7 = nullsub_1(v5, v6);
    v9 = nullsub_1(v7, v8);
    nullsub_1(v9, v10);
    v16 = v0[7];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(dword_1AC7A7D50);
    v17 = swift_task_alloc();
    v0[14] = v17;
    *v17 = v0;
    v17[1] = sub_1AC6B66E0;
    v18 = v0[7];
    OUTLINED_FUNCTION_15_0(v0[4]);
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  v11 = v0[4];
  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6B66E0()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3 & 1;
  }

  v11 = *(v5 + 16);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6B6830()
{
  OUTLINED_FUNCTION_72();
  v1 = OUTLINED_FUNCTION_21_6();
  v2(v1);
  v3 = *(v0 + 8);
  v4 = OUTLINED_FUNCTION_89();
  v5(v4);
  OUTLINED_FUNCTION_29_9();

  v6 = OUTLINED_FUNCTION_55_1();

  return v7(v6);
}

uint64_t sub_1AC6B68C0()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1AC79FC78();
  v1[5] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_126();
  v7 = sub_1AC79FB18();
  v1[8] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[9] = v8;
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[11] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[12] = v12;
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_126();
  v15 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1AC6B6A08()
{
  v1 = v0[4];
  if (swift_distributed_actor_is_remote())
  {
    v2 = OUTLINED_FUNCTION_14_4();
    v3 = OUTLINED_FUNCTION_18_6(v2);
    v4(v3);
    OUTLINED_FUNCTION_9_10();
    sub_1AC5DE590();
    v7 = nullsub_1(v5, v6);
    nullsub_1(v7, v8);
    v14 = v0[7];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7D48);
    v15 = swift_task_alloc();
    v0[14] = v15;
    *v15 = v0;
    v15[1] = sub_1AC6B6BD4;
    v16 = v0[7];
    OUTLINED_FUNCTION_15_0(v0[4]);
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  v9 = v0[4];
  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6B6BD4()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 112);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3 & 1;
  }

  v11 = *(v5 + 16);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC6B6CF0()
{
  OUTLINED_FUNCTION_45();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_89();
  v7(v6);

  v8 = *(v0 + 8);
  v9 = *(v0 + 128);

  return v8(v9);
}

uint64_t sub_1AC6B6DDC()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  v6 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC6B6E80()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    v5 = OUTLINED_FUNCTION_13_0(v4);
    nullsub_1(v5, v6);
    if (v0)
    {

      v7 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v14 = v1[6];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7D30);
    v15 = swift_task_alloc();
    v1[8] = v15;
    *v15 = v1;
    v15[1] = sub_1AC6B6FE8;
    v16 = v1[6];
    OUTLINED_FUNCTION_15_0(v1[3]);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1AC6B6FE8()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 56);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC6B7108()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_61();
  v2(v1);
  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC6B7174()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC6B71D0(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFDF4(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for LSRAssetInventory();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC6B7258(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AC79FB18();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_65();
  v15 = a1 == 0xD000000000000020 && v14 == a2;
  if (v15 || (OUTLINED_FUNCTION_10_9() & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002BLL;
  v18 = a1 == 0xD00000000000002BLL && v17 == a2;
  if (v18 || (result = OUTLINED_FUNCTION_10_9(), (result & 1) != 0))
  {
    if (a5)
    {
      OUTLINED_FUNCTION_99();
      v19 = swift_allocObject();
      *(v19 + 16) = a5;
      *(v19 + 24) = a6;
      v36 = sub_1AC6B834C;
      v37 = v19;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v34 = sub_1AC6B81E4;
      v35 = &block_descriptor_28;
      v20 = _Block_copy(&aBlock);

      [a3 allocatedLocalesWithReply_];
      _Block_release(v20);
      return 1;
    }

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002ALL;
  v22 = a1 == 0xD00000000000002ALL && v21 == a2;
  if (v22 || (result = OUTLINED_FUNCTION_10_9(), (result & 1) != 0))
  {
    if (a4[2])
    {
      result = sub_1AC5D2398((a4 + 4), &v38);
      if (!v39)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      sub_1AC5C3968(&v38, &aBlock);
      OUTLINED_FUNCTION_24_8();
      sub_1AC79F9F8();
      v23 = OUTLINED_FUNCTION_25_8();
      v24(v23);
      OUTLINED_FUNCTION_99();
      v25 = swift_allocObject();
      *(v25 + 16) = a5;
      *(v25 + 24) = a6;
      v36 = sub_1AC6B8344;
      v37 = v25;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v34 = sub_1AC641A5C;
      v35 = &block_descriptor_22;
      v26 = _Block_copy(&aBlock);
      sub_1AC5D9374(a5);

      [a3 allocateLocale:a4 reply:v26];
LABEL_24:
      _Block_release(v26);

      return 1;
    }

    __break(1u);
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_65();
  result = 0xD00000000000002CLL;
  v28 = a1 == 0xD00000000000002CLL && v27 == a2;
  if (v28 || (v29 = OUTLINED_FUNCTION_10_9(), result = 0, (v29 & 1) != 0))
  {
    if (a4[2])
    {
      result = sub_1AC5D2398((a4 + 4), &v38);
      if (!v39)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      sub_1AC5C3968(&v38, &aBlock);
      OUTLINED_FUNCTION_24_8();
      sub_1AC79F9F8();
      v30 = OUTLINED_FUNCTION_25_8();
      result = v31(v30);
      if (!a5)
      {
LABEL_39:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_99();
      v32 = swift_allocObject();
      *(v32 + 16) = a5;
      *(v32 + 24) = a6;
      v36 = sub_1AC5D2608;
      v37 = v32;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v34 = sub_1AC5D25B4;
      v35 = &block_descriptor_3;
      v26 = _Block_copy(&aBlock);

      [a3 deallocateLocale:a4 reply:v26];
      goto LABEL_24;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  return result;
}

uint64_t sub_1AC6B76C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = swift_task_alloc();
    v3[6] = v8;
    *v8 = v3;
    v8[1] = sub_1AC6B83C8;

    return sub_1AC6B63C0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6B7880(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v8 = swift_task_alloc();
    v3[6] = v8;
    *v8 = v3;
    v8[1] = sub_1AC6B79F0;

    return sub_1AC6B68C0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6B79F0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = *(v1 + 24);
  v9 = *v0;
  **(v1 + 16) = v6;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_44();

  return v7();
}

uint64_t sub_1AC6B7BA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC6B6DDC();
}

uint64_t sub_1AC6B7C60()
{
  sub_1AC7A0E78();
  type metadata accessor for LSRAssetInventory();
  OUTLINED_FUNCTION_2_10();
  sub_1AC6B8354(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B7CDC()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for LSRAssetInventory();
    OUTLINED_FUNCTION_2_10();
    sub_1AC6B8354(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC6B7DA0()
{
  v1 = *v0;
  type metadata accessor for LSRAssetInventory();
  sub_1AC6B8354(&qword_1EB56BBD8, v2, type metadata accessor for LSRAssetInventory);
  return sub_1AC79FC28();
}

uint64_t sub_1AC6B7E18()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for LSRAssetInventory();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B7E70(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for LSRAssetInventory();
  v6 = sub_1AC6B8354(&qword_1EB56BBD8, v5, type metadata accessor for LSRAssetInventory);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC6B7EF8()
{
  v1 = *v0;
  type metadata accessor for LSRAssetInventory();
  sub_1AC6B8354(&qword_1EB56BBD8, v2, type metadata accessor for LSRAssetInventory);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC6B7F8C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LSRAssetInventory();
  sub_1AC6B8354(&qword_1EB56BBD8, v3, type metadata accessor for LSRAssetInventory);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1AC6B814C()
{
  result = xpcInterface_LSRAssetInventory();
  qword_1EB56E828 = result;
  return result;
}

uint64_t sub_1AC6B8174(uint64_t a1, void (*a2)(void *))
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBF8, &qword_1AC7A7D70);
  v5[0] = a1;

  a2(v5);
  return sub_1AC641B24(v5);
}

uint64_t sub_1AC6B81E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1AC79FB18();
  sub_1AC6B8354(&qword_1EB56B468, 255, MEMORY[0x1E6969770]);
  v3 = sub_1AC7A0448();

  v2(v3);
}

uint64_t sub_1AC6B8298(uint64_t result, void *a2, void (*a3)(void **))
{
  if (a3)
  {
    v5 = a2 != 0;
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (result & 1);
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C598, &qword_1AC7A9B10);
    v8 = v6;
    v9 = v5;
    v7 = a2;
    sub_1AC6B839C(v6, v5);
    a3(&v8);
    sub_1AC6B83A8(v6, v5);
    return sub_1AC641B24(&v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6B8354(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1AC6B839C(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

void sub_1AC6B83A8(id a1, char a2)
{
  if (a2)
  {
  }
}

void sub_1AC6B83E0()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE20, &qword_1AC7AC480);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  v10 = OUTLINED_FUNCTION_167(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v15 = v13 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v22 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v23 = OUTLINED_FUNCTION_80(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v55 - v30;
  v32 = v0[5];
  if (!v32 || (v33 = v2[5]) != 0 && (v0[4] == v2[4] ? (v34 = v32 == v33) : (v34 = 0), v34 || (sub_1AC7A0D38() & 1) != 0))
  {
    v35 = v0[7];
    if (!v35 || (v36 = v2[7]) != 0 && (v0[6] == v2[6] ? (v37 = v35 == v36) : (v37 = 0), v37 || (sub_1AC7A0D38() & 1) != 0))
    {
      v56 = v15;
      v38 = type metadata accessor for ClientInfo(0);
      sub_1AC6B8F1C(v0 + *(v38 + 32), v21);
      OUTLINED_FUNCTION_6_8(v21);
      if (v34)
      {
        v8 = v21;
      }

      else
      {
        sub_1AC6B97B0(v21, v31);
        sub_1AC6BADA0(v31, v19);
        __swift_storeEnumTagSinglePayload(v19, 0, 1, v22);
        v40 = *(v38 + 32);
        v41 = *(v3 + 48);
        sub_1AC6B8F1C(v19, v8);
        sub_1AC6B8F1C(v2 + v40, &v8[v41]);
        OUTLINED_FUNCTION_6_8(v8);
        if (!v42)
        {
          v43 = v56;
          sub_1AC6B8F1C(v8, v56);
          OUTLINED_FUNCTION_6_8(&v8[v41]);
          if (!v44)
          {
            sub_1AC6B97B0(&v8[v41], v28);
            v48 = sub_1AC79F928();
            if (v48)
            {
              v49 = *(v22 + 20);
              if (sub_1AC79F928())
              {
                v50 = *(v22 + 24);
                v51 = *(v43 + v50);
                v52 = *(v43 + v50 + 8);
                v53 = (v28 + v50);
                v54 = v51 == *v53 && v52 == v53[1];
                if (v54 || (sub_1AC7A0D38() & 1) != 0)
                {
                  sub_1AC6B9754(v28);
                  sub_1AC5C720C(v19, &qword_1EB56CA50, &qword_1AC7AB4F0);
                  sub_1AC6B9754(v31);
                  sub_1AC6B9754(v43);
                  goto LABEL_18;
                }
              }
            }

            sub_1AC6B9754(v28);
            sub_1AC5C720C(v19, &qword_1EB56CA50, &qword_1AC7AB4F0);
            sub_1AC6B9754(v31);
            sub_1AC6B9754(v43);
            v47 = OUTLINED_FUNCTION_39();
            v46 = &qword_1AC7AB4F0;
LABEL_41:
            sub_1AC5C720C(v47, v45, v46);
            goto LABEL_42;
          }

          sub_1AC5C720C(v19, &qword_1EB56CA50, &qword_1AC7AB4F0);
          sub_1AC6B9754(v31);
          sub_1AC6B9754(v43);
LABEL_31:
          v45 = &qword_1EB56CE20;
          v46 = &qword_1AC7AC480;
          v47 = v8;
          goto LABEL_41;
        }

        sub_1AC5C720C(v19, &qword_1EB56CA50, &qword_1AC7AB4F0);
        sub_1AC6B9754(v31);
        OUTLINED_FUNCTION_6_8(&v8[v41]);
        if (!v34)
        {
          goto LABEL_31;
        }
      }

LABEL_18:
      sub_1AC5C720C(v8, &qword_1EB56CA50, &qword_1AC7AB4F0);
      if (*v0 != *v2 || v0[1] != v2[1])
      {
        sub_1AC7A0D38();
      }
    }
  }

LABEL_42:
  OUTLINED_FUNCTION_105();
}

void sub_1AC6B87D0()
{
  OUTLINED_FUNCTION_104();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  v2 = OUTLINED_FUNCTION_167(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v61 = v5 - v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v14 = OUTLINED_FUNCTION_167(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v23 = v0[1];
  v63 = *v0;
  v24 = v0[2];
  v56 = v0[3];
  v25 = v0[5];
  v60 = v0[4];
  v26 = v0[7];
  v58 = v0[6];
  OUTLINED_FUNCTION_14_5();
  v64 = v27;
  sub_1AC6B8F1C(v0 + v27, v12);
  v28 = type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_96(v12, 1, v28);
  v62 = v23;
  v59 = v25;
  v57 = v26;
  if (v29)
  {

    v34 = v56;

    sub_1AC5C720C(v12, &qword_1EB56CA50, &qword_1AC7AB4F0);
    sub_1AC79F958();
    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    v30 = sub_1AC79F958();
    v55 = v19;
    v31 = v24;
    v32 = v30;
    OUTLINED_FUNCTION_80(v30);
    (*(v33 + 16))(v22, v12, v32);

    v34 = v56;

    sub_1AC6B9754(v12);
    v35 = v22;
    v36 = 0;
    v37 = 1;
    v38 = v32;
    v24 = v31;
    v19 = v55;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_1AC6B8F1C(v0 + v64, v10);
  OUTLINED_FUNCTION_96(v10, 1, v28);
  if (v29)
  {
    sub_1AC5C720C(v10, &qword_1EB56CA50, &qword_1AC7AB4F0);
    sub_1AC79F958();
    OUTLINED_FUNCTION_65_0();
  }

  else
  {
    v39 = v34;
    v40 = *(v28 + 20);
    v41 = sub_1AC79F958();
    OUTLINED_FUNCTION_80(v41);
    v43 = &v10[v40];
    v34 = v39;
    (*(v42 + 16))(v19, v43, v41);
    sub_1AC6B9754(v10);
    v44 = v19;
    v45 = 0;
    v46 = 1;
    v47 = v41;
  }

  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = v61;
  v49 = v62;
  v50 = v57;
  sub_1AC6B8F1C(v0 + v64, v61);
  OUTLINED_FUNCTION_96(v48, 1, v28);
  v51 = v59;
  if (v29)
  {
    sub_1AC5C720C(v48, &qword_1EB56CA50, &qword_1AC7AB4F0);
    v54 = 0;
    v53 = 0;
  }

  else
  {
    v52 = (v48 + *(v28 + 24));
    v54 = *v52;
    v53 = v52[1];

    sub_1AC6B9754(v48);
  }

  objc_allocWithZone(_SFAnalyzerClientInfo);
  sub_1AC6BAB90(v63, v49, v24, v34, v60, v51, v58, v50, v22, v19, v54, v53);
  OUTLINED_FUNCTION_105();
}

double sub_1AC6B8B98()
{
  v0 = type metadata accessor for ClientInfo(0);
  __swift_allocate_value_buffer(v0, qword_1EB56E830);
  v1 = OUTLINED_FUNCTION_39();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = [objc_opt_self() defaultClientID];
  v5 = sub_1AC79FF68();
  v7 = v6;

  v8 = *(v0 + 32);
  type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *v3 = v5;
  *(v3 + 8) = v7;
  result = 0.0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  *(v3 + 32) = xmmword_1AC7AC470;
  *(v3 + 48) = xmmword_1AC7AC470;
  return result;
}

double ClientInfo.init(identifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ClientInfo(0) + 32);
  type metadata accessor for ClientInfo.LoggingInfo(0);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 0.0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = xmmword_1AC7AC470;
  *(a3 + 48) = xmmword_1AC7AC470;
  return result;
}

uint64_t ClientInfo.init(identifier:source:applicationName:inputOrigin:loggingInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a5;
  a9[5] = a6;
  a9[2] = a3;
  a9[3] = a4;
  a9[6] = a7;
  a9[7] = a8;
  OUTLINED_FUNCTION_14_5();

  return sub_1AC6B8D50(a10, a9 + v11);
}

uint64_t sub_1AC6B8D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void ClientInfo.init(identifier:applicationName:source:inputOrigin:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_11();
  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_105();
}

void ClientInfo.init(identifier:applicationName:source:inputOrigin:dictationUIInteractionId:)()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_11();

  OUTLINED_FUNCTION_5_7();
  OUTLINED_FUNCTION_105();
}

uint64_t ClientInfo.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t ClientInfo.source.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_39();
}

uint64_t ClientInfo.applicationName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_39();
}

uint64_t ClientInfo.inputOrigin.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_39();
}

uint64_t ClientInfo.loggingInfo.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_14_5();

  return sub_1AC6B8F1C(v1 + v3, a1);
}

uint64_t sub_1AC6B8F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ClientInfo.LoggingInfo.asrID.getter()
{
  v0 = sub_1AC79F958();
  OUTLINED_FUNCTION_80(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_39();

  return v4(v3);
}

uint64_t ClientInfo.LoggingInfo.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ClientInfo.LoggingInfo(0) + 20);
  v4 = sub_1AC79F958();
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ClientInfo.LoggingInfo.dictationUIInteractionID.getter()
{
  v1 = (v0 + *(type metadata accessor for ClientInfo.LoggingInfo(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t ClientInfo.LoggingInfo.init(asrID:requestID:dictationUIInteractionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1AC79F958();
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 32);
  v12(a5, a1, v10);
  v13 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = (v12)(a5 + *(v13 + 20), a2, v10);
  v15 = (a5 + *(v13 + 24));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t static ClientInfo.LoggingInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1AC79F928() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = *(v4 + 20);
  if ((sub_1AC79F928() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1AC7A0D38();
}

uint64_t ClientInfo.LoggingInfo.hash(into:)()
{
  v1 = v0;
  sub_1AC79F958();
  OUTLINED_FUNCTION_1_10();
  sub_1AC6B9AFC(v2, v3);
  sub_1AC79FE58();
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = v0 + *(v4 + 20);
  sub_1AC79FE58();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_1AC7A0048();
}

uint64_t ClientInfo.LoggingInfo.hashValue.getter()
{
  v1 = v0;
  sub_1AC7A0E78();
  sub_1AC79F958();
  OUTLINED_FUNCTION_1_10();
  sub_1AC6B9AFC(v2, v3);
  sub_1AC79FE58();
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = v0 + *(v4 + 20);
  sub_1AC79FE58();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B9380(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1AC7A0E78();
  sub_1AC79F958();
  sub_1AC6B9AFC(&qword_1EB56CE18, MEMORY[0x1E69695A8]);
  sub_1AC79FE58();
  v5 = v2 + *(a2 + 20);
  sub_1AC79FE58();
  v6 = (v4 + *(a2 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_1AC7A0048();
  return sub_1AC7A0EC8();
}

uint64_t static ClientInfo.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  OUTLINED_FUNCTION_167(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE20, &qword_1AC7AC480);
  OUTLINED_FUNCTION_80(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v22 = *a1 == *a2 && a1[1] == a2[1];
  if (!v22 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  v23 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v23 && (sub_1AC7A0D38() & 1) == 0)
  {
    return 0;
  }

  v24 = a1[5];
  v25 = a2[5];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = a1[4] == a2[4] && v24 == v25;
    if (!v26 && (sub_1AC7A0D38() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v27 = a1[7];
  v28 = a2[7];
  if (v27)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = a1[6] == a2[6] && v27 == v28;
    if (!v29 && (sub_1AC7A0D38() & 1) == 0)
    {
      return 0;
    }

LABEL_29:
    v30 = *(type metadata accessor for ClientInfo(0) + 32);
    v31 = *(v16 + 48);
    sub_1AC6B8F1C(a1 + v30, v21);
    sub_1AC6B8F1C(a2 + v30, &v21[v31]);
    OUTLINED_FUNCTION_96(v21, 1, v4);
    if (v22)
    {
      OUTLINED_FUNCTION_96(&v21[v31], 1, v4);
      if (v22)
      {
LABEL_33:
        sub_1AC5C720C(v21, &qword_1EB56CA50, &qword_1AC7AB4F0);
        return 1;
      }
    }

    else
    {
      sub_1AC6B8F1C(v21, v15);
      OUTLINED_FUNCTION_96(&v21[v31], 1, v4);
      if (!v33)
      {
        sub_1AC6B97B0(&v21[v31], v9);
        v36 = sub_1AC79F928();
        if (v36)
        {
          v37 = *(v4 + 20);
          if (sub_1AC79F928())
          {
            v38 = *(v4 + 24);
            v39 = *&v15[v38];
            v40 = *&v15[v38 + 8];
            v41 = &v9[v38];
            v42 = v39 == *v41 && v40 == *(v41 + 1);
            if (v42 || (sub_1AC7A0D38() & 1) != 0)
            {
              sub_1AC6B9754(v9);
              sub_1AC6B9754(v15);
              goto LABEL_33;
            }
          }
        }

        sub_1AC6B9754(v9);
        sub_1AC6B9754(v15);
        v34 = &qword_1EB56CA50;
        v35 = &qword_1AC7AB4F0;
        goto LABEL_47;
      }

      sub_1AC6B9754(v15);
    }

    v34 = &qword_1EB56CE20;
    v35 = &qword_1AC7AC480;
LABEL_47:
    sub_1AC5C720C(v21, v34, v35);
    return 0;
  }

  if (!v28)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t sub_1AC6B9754(uint64_t a1)
{
  v2 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC6B97B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ClientInfo.hash(into:)()
{
  v1 = type metadata accessor for ClientInfo.LoggingInfo(0);
  v2 = OUTLINED_FUNCTION_80(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
  OUTLINED_FUNCTION_167(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = *v0;
  v14 = v0[1];
  sub_1AC7A0048();
  v15 = v0[2];
  v16 = v0[3];
  sub_1AC7A0048();
  if (v0[5])
  {
    v17 = v0[4];
    sub_1AC7A0E98();
    sub_1AC7A0048();
  }

  else
  {
    sub_1AC7A0E98();
  }

  if (v0[7])
  {
    v18 = v0[6];
    sub_1AC7A0E98();
    sub_1AC7A0048();
  }

  else
  {
    sub_1AC7A0E98();
  }

  OUTLINED_FUNCTION_14_5();
  sub_1AC6B8F1C(v0 + v19, v12);
  OUTLINED_FUNCTION_96(v12, 1, v1);
  if (v20)
  {
    return sub_1AC7A0E98();
  }

  sub_1AC6B97B0(v12, v6);
  sub_1AC7A0E98();
  sub_1AC79F958();
  OUTLINED_FUNCTION_1_10();
  sub_1AC6B9AFC(v21, v22);
  sub_1AC79FE58();
  v23 = &v6[*(v1 + 20)];
  sub_1AC79FE58();
  v24 = &v6[*(v1 + 24)];
  v25 = *v24;
  v26 = *(v24 + 1);
  sub_1AC7A0048();
  return sub_1AC6B9754(v6);
}

uint64_t ClientInfo.hashValue.getter()
{
  sub_1AC7A0E78();
  ClientInfo.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B9A78()
{
  sub_1AC7A0E78();
  ClientInfo.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC6B9AFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for ClientInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v14 = *a2;
    *v3 = *a2;
    v3 = (v14 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    v6 = a2[3];
    a1[2] = a2[2];
    a1[3] = v6;
    v7 = a2[5];
    a1[4] = a2[4];
    a1[5] = v7;
    v8 = a2[7];
    v9 = *(a3 + 32);
    v10 = a2 + v9;
    v11 = a1 + v9;
    a1[6] = a2[6];
    a1[7] = v8;
    v12 = type metadata accessor for ClientInfo.LoggingInfo(0);

    if (__swift_getEnumTagSinglePayload(v10, 1, v12))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
      memcpy(v11, v10, *(*(v13 - 8) + 64));
    }

    else
    {
      v15 = sub_1AC79F958();
      v16 = *(*(v15 - 8) + 16);
      v16(v11, v10, v15);
      v16(&v11[*(v12 + 20)], &v10[*(v12 + 20)], v15);
      v17 = *(v12 + 24);
      v18 = &v11[v17];
      v19 = &v10[v17];
      v20 = *(v19 + 1);
      *v18 = *v19;
      *(v18 + 1) = v20;

      __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
    }
  }

  return v3;
}

uint64_t destroy for ClientInfo(void *a1, uint64_t a2)
{
  v4 = a1[1];

  v5 = a1[3];

  v6 = a1[5];

  v7 = a1[7];

  v8 = a1 + *(a2 + 32);
  v9 = type metadata accessor for ClientInfo.LoggingInfo(0);
  result = __swift_getEnumTagSinglePayload(v8, 1, v9);
  if (!result)
  {
    v11 = sub_1AC79F958();
    v12 = *(*(v11 - 8) + 8);
    v12(v8, v11);
    v12(v8 + *(v9 + 20), v11);
    v13 = *(v8 + *(v9 + 24) + 8);
  }

  return result;
}

void *initializeWithCopy for ClientInfo(void *a1, void *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  v7 = a2[7];
  v8 = *(a3 + 32);
  v9 = a2 + v8;
  v10 = a1 + v8;
  a1[6] = a2[6];
  a1[7] = v7;
  v11 = type metadata accessor for ClientInfo.LoggingInfo(0);

  if (__swift_getEnumTagSinglePayload(v9, 1, v11))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v10, v9, *(*(v12 - 8) + 64));
  }

  else
  {
    v13 = sub_1AC79F958();
    v14 = *(*(v13 - 8) + 16);
    v14(v10, v9, v13);
    v14(&v10[*(v11 + 20)], &v9[*(v11 + 20)], v13);
    v15 = *(v11 + 24);
    v16 = &v10[v15];
    v17 = &v9[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  }

  return a1;
}

void *assignWithCopy for ClientInfo(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v7 = a1[3];
  a1[3] = a2[3];

  a1[4] = a2[4];
  v8 = a1[5];
  a1[5] = a2[5];

  a1[6] = a2[6];
  v9 = a1[7];
  a1[7] = a2[7];

  v10 = *(a3 + 32);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = type metadata accessor for ClientInfo.LoggingInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v13);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (!EnumTagSinglePayload)
  {
    if (!v15)
    {
      v23 = sub_1AC79F958();
      v24 = *(*(v23 - 8) + 24);
      v24(v11, v12, v23);
      v24(&v11[*(v13 + 20)], &v12[*(v13 + 20)], v23);
      v25 = *(v13 + 24);
      v26 = &v11[v25];
      v27 = &v12[v25];
      *v26 = *v27;
      v28 = *(v26 + 1);
      *(v26 + 1) = *(v27 + 1);

      return a1;
    }

    sub_1AC6B9754(v11);
    goto LABEL_6;
  }

  if (v15)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v11, v12, *(*(v21 - 8) + 64));
    return a1;
  }

  v16 = sub_1AC79F958();
  v17 = *(*(v16 - 8) + 16);
  v17(v11, v12, v16);
  v17(&v11[*(v13 + 20)], &v12[*(v13 + 20)], v16);
  v18 = *(v13 + 24);
  v19 = &v11[v18];
  v20 = &v12[v18];
  *v19 = *v20;
  *(v19 + 1) = *(v20 + 1);

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  return a1;
}

_OWORD *initializeWithTake for ClientInfo(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = *(a3 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = type metadata accessor for ClientInfo.LoggingInfo(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v7, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    v11 = sub_1AC79F958();
    v12 = *(*(v11 - 8) + 32);
    v12(v7, v8, v11);
    v12(&v7[*(v9 + 20)], &v8[*(v9 + 20)], v11);
    *&v7[*(v9 + 24)] = *&v8[*(v9 + 24)];
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  }

  return a1;
}

void *assignWithTake for ClientInfo(void *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  v7 = a1[1];
  *a1 = *a2;
  a1[1] = v6;

  v8 = a2[3];
  v9 = a1[3];
  a1[2] = a2[2];
  a1[3] = v8;

  v10 = a2[5];
  v11 = a1[5];
  a1[4] = a2[4];
  a1[5] = v10;

  v12 = a2[7];
  v13 = a1[7];
  a1[6] = a2[6];
  a1[7] = v12;

  v14 = *(a3 + 32);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = type metadata accessor for ClientInfo.LoggingInfo(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v17);
  v19 = __swift_getEnumTagSinglePayload(v16, 1, v17);
  if (!EnumTagSinglePayload)
  {
    if (!v19)
    {
      v24 = sub_1AC79F958();
      v25 = *(*(v24 - 8) + 40);
      v25(v15, v16, v24);
      v25(&v15[*(v17 + 20)], &v16[*(v17 + 20)], v24);
      v26 = *(v17 + 24);
      v27 = &v15[v26];
      v28 = &v16[v26];
      v30 = *v28;
      v29 = *(v28 + 1);
      v31 = *(v27 + 1);
      *v27 = v30;
      *(v27 + 1) = v29;

      return a1;
    }

    sub_1AC6B9754(v15);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA50, &qword_1AC7AB4F0);
    memcpy(v15, v16, *(*(v22 - 8) + 64));
    return a1;
  }

  v20 = sub_1AC79F958();
  v21 = *(*(v20 - 8) + 32);
  v21(v15, v16, v20);
  v21(&v15[*(v17 + 20)], &v16[*(v17 + 20)], v20);
  *&v15[*(v17 + 24)] = *&v16[*(v17 + 24)];
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
  return a1;
}

void sub_1AC6BA568()
{
  sub_1AC6BA60C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

void sub_1AC6BA60C()
{
  if (!qword_1ED937AA8[0])
  {
    type metadata accessor for ClientInfo.LoggingInfo(255);
    v0 = sub_1AC7A0798();
    if (!v1)
    {
      atomic_store(v0, qword_1ED937AA8);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ClientInfo.LoggingInfo(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1AC79F958();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + *(a3 + 20)), (a2 + *(a3 + 20)), v7);
    v9 = *(a3 + 24);
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
  }

  return a1;
}

uint64_t destroy for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79F958();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v5(a1 + *(a2 + 20), v4);
  v6 = *(a1 + *(a2 + 24) + 8);
}

uint64_t initializeWithCopy for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;

  return a1;
}

uint64_t assignWithCopy for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  *v9 = *v10;
  v11 = v9[1];
  v9[1] = v10[1];

  return a1;
}

uint64_t initializeWithTake for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t assignWithTake for ClientInfo.LoggingInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AC79F958();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + *(a3 + 20), a2 + *(a3 + 20), v6);
  v8 = *(a3 + 24);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v12 = *v10;
  v11 = v10[1];
  v13 = v9[1];
  *v9 = v12;
  v9[1] = v11;

  return a1;
}

uint64_t sub_1AC6BAAF8()
{
  result = sub_1AC79F958();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_1AC6BAB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v16 = sub_1AC79FF58();

  v17 = sub_1AC79FF58();

  if (a6)
  {
    v18 = sub_1AC79FF58();
  }

  else
  {
    v18 = 0;
  }

  if (a8)
  {
    v19 = sub_1AC79FF58();
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_1AC79F958();
  v21 = 0;
  if (__swift_getEnumTagSinglePayload(a9, 1, v20) != 1)
  {
    v21 = sub_1AC79F918();
    (*(*(v20 - 8) + 8))(a9, v20);
  }

  if (__swift_getEnumTagSinglePayload(a10, 1, v20) != 1)
  {
    v22 = sub_1AC79F918();
    (*(*(v20 - 8) + 8))(a10, v20);
    if (a12)
    {
      goto LABEL_11;
    }

LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v22 = 0;
  if (!a12)
  {
    goto LABEL_13;
  }

LABEL_11:
  v23 = sub_1AC79FF58();

LABEL_14:
  v24 = [v13 initWithID:v16 source:v17 applicationName:v18 inputOrigin:v19 asrID:v21 requestID:v22 dictationUIInteractionID:v23];

  return v24;
}

uint64_t sub_1AC6BADA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientInfo.LoggingInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SpeechModuleResult.isFinal.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  (*(a2 + 8))(v5, a1, a2);
  sub_1AC7A0558();

  return sub_1AC7A06B8();
}

uint64_t sub_1AC6BAEB4(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56AF90, type metadata accessor for CommandRecognizer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BAF0C(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56B038, type metadata accessor for EndpointDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BAF64(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56CAA8, type metadata accessor for LanguageDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BAFBC(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56CB28, type metadata accessor for SpeechDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BB014(uint64_t a1)
{
  result = sub_1AC6BB06C(&qword_1EB56B2A8, type metadata accessor for Transcriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC6BB06C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of SpeechModule.availableCompatibleAudioFormats.getter()
{
  OUTLINED_FUNCTION_45();
  v2 = *(OUTLINED_FUNCTION_10_10(v0, v1) + 48);
  OUTLINED_FUNCTION_1_11();
  v12 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_64_0(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_2_12(v7);

  return v10(v9);
}

uint64_t sub_1AC6BB1B8()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_1AC6BB2BC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    v5 = a2;

    return sub_1AC6BB32C(v4, v5);
  }

  else
  {
    v7 = *v3;

    return j__swift_continuation_throwingResume();
  }
}

uint64_t sub_1AC6BB32C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1AC6BB39C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F918();
  v4 = [v2 initWithNSUUID_];

  v5 = sub_1AC79F958();
  OUTLINED_FUNCTION_80(v5);
  (*(v6 + 8))(a1);
  return v4;
}

uint64_t sub_1AC6BB430()
{
  v0 = sub_1AC79FDE8();
  __swift_allocate_value_buffer(v0, qword_1EB56CE38);
  __swift_project_value_buffer(v0, qword_1EB56CE38);
  return sub_1AC79FDD8();
}

void SpeechDonation.init(donorBundleID:recordingDate:audioFile:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 *a22, void **a23)
{
  OUTLINED_FUNCTION_104();
  v24 = v23;
  v161 = v25;
  v155 = v26;
  v166 = v28;
  v167 = v27;
  v171 = v29;
  v158 = v30;
  v154 = v31;
  v162 = v32;
  v163 = a21;
  v172[7] = *MEMORY[0x1E69E9840];
  v168 = type metadata accessor for SpeechDonation();
  v33 = OUTLINED_FUNCTION_80(v168);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_8();
  v156 = v36;
  OUTLINED_FUNCTION_70_0();
  v170 = sub_1AC79FB18();
  v37 = OUTLINED_FUNCTION_40(v170);
  v164 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_4();
  v157 = v41;
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v141 - v43;
  v169 = sub_1AC79F8E8();
  v45 = OUTLINED_FUNCTION_40(v169);
  v165 = v46;
  v48 = *(v47 + 64);
  v49 = MEMORY[0x1EEE9AC00](v45);
  v51 = &v141 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v141 - v52;
  v54 = sub_1AC79F7F8();
  v55 = OUTLINED_FUNCTION_40(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v141 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *v24;
  v60 = v24[1];
  v62 = *a22;
  v63 = *a23;
  v159 = v65;
  v160 = v64;
  (*(v65 + 16))(v59, v171);
  v66 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v67 = sub_1AC6C1404(v59, 3, 0);
  v153 = v63;
  v147 = v62;
  v148 = v51;
  v152 = v53;
  v149 = v44;
  v150 = v61;
  v151 = v60;
  v79 = v67;
  v80 = [v67 processingFormat];
  v81 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v80 frameCapacity:960000];
  if (!v81)
  {
    OUTLINED_FUNCTION_32_6();

    v85 = v164;
    if (qword_1EB56B5A0 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v98 = sub_1AC79FDE8();
    __swift_project_value_buffer(v98, qword_1EB56CE38);
    v99 = sub_1AC79FDC8();
    v100 = sub_1AC7A05F8();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_1AC5BC000, v99, v100, "Unable to create buffer for audio file", v101, 2u);
      OUTLINED_FUNCTION_70();
    }

    goto LABEL_7;
  }

  v82 = v81;
  v172[0] = 0;
  v83 = [v79 readIntoBuffer:v81 error:v172];
  v84 = v172[0];
  v85 = v164;
  v86 = v153;
  if ((v83 & 1) == 0)
  {
    v102 = v172[0];

    OUTLINED_FUNCTION_32_6();

    v103 = sub_1AC79F748();
    swift_willThrow();

    if (qword_1EB56B5A0 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v68 = sub_1AC79FDE8();
    __swift_project_value_buffer(v68, qword_1EB56CE38);
    v69 = v103;
    v70 = sub_1AC79FDC8();
    v71 = sub_1AC7A05F8();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_150();
      v73 = OUTLINED_FUNCTION_418();
      *v72 = 138412290;
      v74 = v103;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 4) = v75;
      *v73 = v75;
      _os_log_impl(&dword_1AC5BC000, v70, v71, "Unable to read audio file: %@", v72, 0xCu);
      sub_1AC5C720C(v73, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

LABEL_7:
    (*(v85 + 8))(v166, v170);
    (*(v159 + 8))(v171, v160);
    (*(v165 + 8))(v167, v169);
    v76 = 1;
    v77 = v162;
LABEL_8:
    __swift_storeEnumTagSinglePayload(v77, v76, 1, v168);
    v78 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_105();
    return;
  }

  v143 = v79;
  v87 = *(v165 + 16);
  (v87)(v152, v167, v169);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7AA7F0;
  *(inited + 32) = v82;
  v89 = *(v85 + 16);
  v146 = v85 + 16;
  v145 = v89;
  v89(v149, v166, v170);
  v90 = inited & 0xC000000000000001;
  sub_1AC61C25C(0, (inited & 0xC000000000000001) == 0, inited);
  v91 = v82;
  v142 = v91;
  if ((inited & 0xC000000000000001) != 0)
  {
    v139 = v84;
    v140 = OUTLINED_FUNCTION_21_7();
    v92 = MEMORY[0x1B26E95B0](v140);
  }

  else
  {
    v92 = v91;
    v93 = v84;
  }

  v94 = v156;
  v95 = [v92 format];

  if (v95)
  {
    v156 = v95;
    v144 = v87;
    if (v90)
    {
      v96 = OUTLINED_FUNCTION_21_7();
      v97 = MEMORY[0x1B26E95B0](v96);
    }

    else
    {
      v104 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v104)
      {
        __break(1u);
        goto LABEL_48;
      }

      v97 = *(inited + 32);
    }

    v105 = v97;
    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    v106 = [v105 format];
    v107 = v156;
    v108 = sub_1AC7A0758();

    if ((v108 & 1) == 0)
    {
      __break(1u);
      goto LABEL_45;
    }

    sub_1AC6BCA98(v107);
    v172[0] = MEMORY[0x1E69E7CC0];
    sub_1AC61C25C(0, v90 == 0, inited);
    v87 = v169;
    if (v90)
    {
      v109 = OUTLINED_FUNCTION_21_7();
      v110 = MEMORY[0x1B26E95B0](v109);
    }

    else
    {
      v110 = *(inited + 32);
    }

    v84 = v110;

    v111 = [v84 format];
    v112 = [v111 channelCount];

    if (v112 && [v84 frameLength] && objc_msgSend(v84, sel_int16ChannelData))
    {
      if ([v84 frameLength] > 0xEA600)
      {
        sub_1AC6BCC8C(v84, 960000);
        MEMORY[0x1B26E8CF0]();
        v104 = *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < v104 >> 1)
        {
LABEL_33:
          sub_1AC7A0198();
          v108 = v172[0];

          goto LABEL_35;
        }

LABEL_48:
        OUTLINED_FUNCTION_9(v104);
        sub_1AC7A0178();
        goto LABEL_33;
      }

      v137 = v84;
      MEMORY[0x1B26E8CF0]();
      v138 = *((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v172[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v138 >> 1)
      {
        OUTLINED_FUNCTION_9(v138);
        sub_1AC7A0178();
      }

      sub_1AC7A0198();

      v108 = v172[0];
    }

    else
    {

      v108 = MEMORY[0x1E69E7CC0];
    }

LABEL_35:
    v113 = v148;
    v114 = OUTLINED_FUNCTION_170();
    v115 = v87;
    v116 = v144;
    v144(v114);
    v145(v157, v149, v170);
    v117 = sub_1AC61C24C(v108);
    v118 = v163;
    if (v117)
    {
      v119 = v158;
      *v94 = v154;
      *(v94 + 1) = v119;
      v120 = v168;
      v116(&v94[v168[5]], v113, v115);
      *&v94[*(v120 + 24)] = v118;
      *&v94[*(v120 + 28)] = v153;
      v121 = OUTLINED_FUNCTION_10_11();
      sub_1AC61C25C(v121, v122, v108);
      if ((v108 & 0xC000000000000001) == 0)
      {
        v123 = *(v108 + 32);
LABEL_38:
        v124 = v123;
        v125 = v142;
        v126 = v156;
        v127 = [v123 format];

        v128 = *(v85 + 8);
        v129 = v170;
        v128(v166, v170);
        (*(v159 + 8))(v171, v160);
        v130 = *(v165 + 8);
        v131 = v169;
        v130(v167, v169);
        v130(v148, v131);
        v128(v149, v129);
        v130(v152, v131);
        v132 = v168;
        *&v94[v168[8]] = v127;
        *&v94[v132[13]] = v108;
        (*(v85 + 32))(&v94[v132[9]], v157, v129);
        v133 = &v94[v132[10]];
        v134 = v161;
        *v133 = v155;
        *(v133 + 1) = v134;
        v94[v132[11]] = v147;
        v135 = &v94[v132[12]];
        v136 = v151;
        *v135 = v150;
        *(v135 + 1) = v136;
        v77 = v162;
        sub_1AC6C1768(v94, v162);
        v76 = 0;
        goto LABEL_8;
      }

LABEL_46:
      v123 = MEMORY[0x1B26E95B0](0, v108);
      goto LABEL_38;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __break(1u);
}

void SpeechDonation.init(donorBundleID:recordingDate:audioBuffers:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t *a23)
{
  OUTLINED_FUNCTION_104();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v97 = v31;
  v98 = v30;
  v33 = v32;
  v89 = v34;
  v90 = v35;
  v37 = v36;
  v38 = a22;
  v39 = sub_1AC79FB18();
  v40 = OUTLINED_FUNCTION_40(v39);
  v99 = v41;
  v100 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_8();
  v96 = v44;
  OUTLINED_FUNCTION_70_0();
  v45 = sub_1AC79F8E8();
  v46 = OUTLINED_FUNCTION_40(v45);
  v94 = v47;
  v95 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_4_8();
  v93 = v50;
  v91 = v25[1];
  v92 = *v25;
  v51 = *a22;
  v52 = *a23;
  v53 = sub_1AC61C24C(v33);
  if (!v53)
  {
    goto LABEL_41;
  }

  v23 = v53;
  v84 = v52;
  v85 = v51;
  v38 = v33 & 0xC000000000000001;
  v54 = OUTLINED_FUNCTION_10_11();
  sub_1AC61C25C(v54, v55, v33);
  if ((v33 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  for (i = *(v33 + 32); ; i = MEMORY[0x1B26E95B0](v82))
  {
    v57 = i;
    v87 = v37;
    v88 = v29;
    v86 = v27;
    v58 = [i format];

    v101 = v58;
    if (!v58)
    {
      break;
    }

    v27 = 0;
    v83 = a21;
    v29 = &qword_1ED937298;
    v37 = 0x1E69E58C0uLL;
    while (1)
    {
      if (v23 == v27)
      {
        goto LABEL_14;
      }

      if (v38)
      {
        v59 = OUTLINED_FUNCTION_124_0();
        v60 = MEMORY[0x1B26E95B0](v59);
      }

      else
      {
        if (v27 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v60 = *(v33 + 8 * v27 + 32);
      }

      v61 = v60;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      v62 = [v61 format];
      v63 = sub_1AC7A0758();

      ++v27;
      if ((v63 & 1) == 0)
      {
        __break(1u);
LABEL_14:
        sub_1AC6BCA98(v58);
        v29 = 0;
        v64 = MEMORY[0x1E69E7CC0];
        v102 = MEMORY[0x1E69E7CC0];
        v37 = 960000;
        while (1)
        {
          if (v38)
          {
            v65 = MEMORY[0x1B26E95B0](v29, v33);
          }

          else
          {
            if (v29 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v65 = *(v33 + 8 * v29 + 32);
          }

          v27 = v65;
          v66 = (v29 + 1);
          if (__OFADD__(v29, 1))
          {
            goto LABEL_38;
          }

          v67 = [v65 format];
          v68 = [v67 channelCount];

          if (v68 && [v27 frameLength] && objc_msgSend(v27, sel_int16ChannelData))
          {
            v69 = [v27 frameLength];
            v70 = v37 - v69;
            if (v37 < v69)
            {

              sub_1AC6BCC8C(v27, v37);
              v33 = v80;
              MEMORY[0x1B26E8CF0]();
              v81 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18);
              if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v81 >> 1)
              {
                OUTLINED_FUNCTION_9(v81);
                sub_1AC7A0178();
              }

              sub_1AC7A0198();
              v64 = v102;

LABEL_30:
              v72 = *(v94 + 16);
              v72(v93, v98, v95);
              (*(v99 + 16))(v96, v97, v100);
              if (sub_1AC61C24C(v64))
              {
                *v87 = v89;
                *(v87 + 1) = v90;
                v33 = type metadata accessor for SpeechDonation();
                v72(&v87[*(v33 + 20)], v93, v95);
                *&v87[*(v33 + 24)] = a21;
                *&v87[*(v33 + 28)] = v84;
                v73 = OUTLINED_FUNCTION_10_11();
                sub_1AC61C25C(v73, v74, v64);
                if ((v64 & 0xC000000000000001) == 0)
                {
                  v75 = *(v64 + 32);
LABEL_33:
                  v76 = v75;
                  v77 = [v75 format];

                  (*(v99 + 8))(v97, v100);
                  v78 = *(v94 + 8);
                  v78(v98, v95);
                  v78(v93, v95);
                  *&v87[*(v33 + 32)] = v77;
                  *&v87[*(v33 + 52)] = v64;
                  (*(v99 + 32))(&v87[*(v33 + 36)], v96, v100);
                  v79 = &v87[*(v33 + 40)];
                  *v79 = v88;
                  v79[1] = v86;
                  v87[*(v33 + 44)] = v85;
                  OUTLINED_FUNCTION_28_7(&v87[*(v33 + 48)]);
                  OUTLINED_FUNCTION_105();
                  return;
                }
              }

              else
              {
                __break(1u);
              }

              v75 = MEMORY[0x1B26E95B0](0, v64);
              goto LABEL_33;
            }

            v27 = v27;
            MEMORY[0x1B26E8CF0]();
            v71 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v71 >> 1)
            {
              OUTLINED_FUNCTION_9(v71);
              sub_1AC7A0178();
            }

            sub_1AC7A0198();

            v64 = v102;
            v37 = v70;
          }

          else
          {
          }

          ++v29;
          if (v66 == v23)
          {

            goto LABEL_30;
          }
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    v82 = OUTLINED_FUNCTION_21_7();
  }

  __break(1u);
}

void SpeechDonation.init(donorBundleID:recordingDate:audioFormat:audioData:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21, uint64_t *a22, uint64_t a23, unsigned __int8 *a24, uint64_t *a25)
{
  OUTLINED_FUNCTION_104();
  v81 = v25;
  v86 = v26;
  v28 = v27;
  v88 = v29;
  v31 = v30;
  v33 = v32;
  v78 = v34;
  v79 = v35;
  v37 = v36;
  v38 = a21;
  v87 = sub_1AC79FB18();
  v39 = OUTLINED_FUNCTION_40(v87);
  v85 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_8();
  v82 = v43;
  OUTLINED_FUNCTION_70_0();
  v44 = sub_1AC79F8E8();
  v45 = OUTLINED_FUNCTION_40(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_8();
  v84 = v50;
  v51 = a22[1];
  v80 = *a22;
  v52 = *a24;
  v53 = *a25;
  sub_1AC6BCA98(v31);
  switch(v28 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(v88), v88))
      {
        goto LABEL_5;
      }

      __break(1u);
      goto LABEL_22;
    case 2uLL:
      if (__OFSUB__(*(v88 + 24), *(v88 + 16)))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_5:
      OUTLINED_FUNCTION_30_5();
      if (v54 < 0)
      {
        __break(1u);
        goto LABEL_17;
      }

LABEL_6:
      v55 = sub_1AC79F838();
      v51 = v56;
      v83 = v55;
      v57 = MEMORY[0x1B26E8430]();
      if (v57 < -1)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v57 > 0x1FFFFFFFFLL)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v75 = v53;
      v76 = v52;
      v77 = v28;
      v58 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v31 frameCapacity:v57 / 2];
      if (v58)
      {
        v52 = v58;
        v74 = a21;
        v59 = [v58 int16ChannelData];
        v73 = v31;
        if ([v31 channelCount])
        {
          v60 = *v59;
        }

        else
        {
          v60 = 0;
        }

        v31 = v82;
        v61 = [v52 frameCapacity];
        [v52 setFrameLength_];
        sub_1AC6BCB2C(v60, v61, 0, 0, 1, v83, v51);
        v62 = *(v47 + 16);
        v38 = v84;
        v82 = v33;
        v62(v84, v33, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF08, &qword_1AC7AB430);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_1AC7AA7F0;
        *(v33 + 32) = v52;
        (*(v85 + 16))(v31, v86, v87);
        if (sub_1AC61C24C(v33))
        {
          *v37 = v78;
          *(v37 + 1) = v79;
          v38 = type metadata accessor for SpeechDonation();
          v62(&v37[v38[5]], v84, v44);
          *&v37[v38[6]] = a23;
          *&v37[v38[7]] = v75;
          v63 = OUTLINED_FUNCTION_10_11();
          sub_1AC61C25C(v63, v64, v33);
          if ((v33 & 0xC000000000000001) == 0)
          {
            v65 = *(v33 + 32);
            v66 = v52;
            v67 = v65;
LABEL_15:
            v68 = v67;
            v69 = [v67 format];

            sub_1AC5C28A8(v83, v51);
            sub_1AC5C28A8(v88, v77);

            (*(v85 + 8))(v86, v87);
            v70 = *(v47 + 8);
            v70(v82, v44);
            v70(v84, v44);
            *&v37[v38[8]] = v69;
            *&v37[v38[13]] = v33;
            (*(v85 + 32))(&v37[v38[9]], v31, v87);
            v71 = &v37[v38[10]];
            *v71 = v81;
            *(v71 + 1) = v74;
            v37[v38[11]] = v76;
            OUTLINED_FUNCTION_28_7(&v37[v38[12]]);
            OUTLINED_FUNCTION_105();
            return;
          }

LABEL_20:
          v72 = v52;
          v67 = MEMORY[0x1B26E95B0](0, v33);
          goto LABEL_15;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_23:
      __break(1u);
      return;
    default:
      goto LABEL_6;
  }
}

id sub_1AC6BCA98(void *a1)
{
  result = [a1 channelCount];
  if (result != 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = [a1 commonFormat];
  if (result != 3)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  result = [a1 sampleRate];
  if (v3 != 8000.0)
  {
    result = [a1 sampleRate];
    if (v4 != 16000.0)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC6BCB2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 62;
  v8 = a3;
  v9 = 0;
  switch(a7 >> 62)
  {
    case 1uLL:
      LODWORD(v10) = HIDWORD(a6) - a6;
      if (!__OFSUB__(HIDWORD(a6), a6))
      {
        v10 = v10;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_32;
    case 2uLL:
      v12 = *(a6 + 16);
      v11 = *(a6 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_6;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    case 3uLL:
      return v9;
    default:
      v10 = BYTE6(a7);
LABEL_6:
      if (v10 < 1)
      {
        return 0;
      }

      if (a5)
      {
        if (v7)
        {
          if (v7 == 2)
          {
            v8 = *(a6 + 16);
          }

          else
          {
            v8 = a6;
          }

LABEL_21:
          if (a2 + 0x4000000000000000 < 0)
          {
LABEL_33:
            __break(1u);
          }

          else
          {
            v15 = 2 * a2;
            if (v10 < 2 * a2)
            {
              v15 = v10;
            }

            v14 = v8 + v15;
            if (!__OFADD__(v8, v15))
            {
              if (v14 >= v8)
              {
                goto LABEL_26;
              }

LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          __break(1u);
          goto LABEL_35;
        }

LABEL_19:
        v8 = v7;
        goto LABEL_21;
      }

      if (a3 == a4)
      {
        return 0;
      }

      if (a2 + 0x4000000000000000 < 0)
      {
        goto LABEL_37;
      }

      v7 = a4 - a3;
      if (__OFSUB__(a4, a3))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v10 = 2 * a2;
      if (v7 >= 2 * a2)
      {
        v7 = 2 * a2;
      }

      v14 = a3 + v7;
      if (__OFADD__(a3, v7))
      {
        goto LABEL_39;
      }

      if (v14 < a3)
      {
        __break(1u);
        goto LABEL_19;
      }

LABEL_26:
      if (v8 == v14)
      {
        return 0;
      }

      if (result)
      {
        result = sub_1AC79F848();
        v9 = v14 - v8;
        if (!__OFSUB__(v14, v8))
        {
          return v9;
        }

        goto LABEL_36;
      }

LABEL_40:
      __break(1u);
      return result;
  }
}

void sub_1AC6BCC8C(void *a1, uint64_t a2)
{
  v4 = [a1 int16ChannelData];
  v5 = [a1 format];
  v6 = [v5 channelCount];

  if (v6)
  {
    v7 = *v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 frameLength];
  v9 = [a1 frameLength];
  v10 = [a1 format];
  v11 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v10 frameCapacity:a2];

  if (v11)
  {
    [v11 setFrameLength_];
    v12 = [v11 int16ChannelData];
    v13 = [v11 format];
    v14 = [v13 channelCount];

    if (v14)
    {
      v15 = *v12;
    }

    else
    {
      v15 = 0;
    }

    if (v9 >= a2)
    {
      a2 = a2;
    }

    else
    {
      a2 = v9;
    }

    sub_1AC6BCE30(0, a2, v7, v8, v15, [v11 frameLength]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AC6BCE30(uint64_t result, uint64_t a2, uint64_t a3, int a4, void *__dst, uint64_t a6)
{
  if (__OFADD__(result, a2 - result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = a2 - result;
  if (a2 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a3)
  {
    return 0;
  }

  if (v7 <= a6)
  {
    v8 = (a3 + 2 * result);
    v9 = a3 + 2 * a2;
    if (v8 != __dst || v9 <= __dst)
    {
      memmove(__dst, v8, 2 * v7);
    }

    return v7;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t SpeechDonation.donate()()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520) - 8) + 64);
  v1[4] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC6BCF30()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  sub_1AC79F958();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_1AC6BCFE0;
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  return SpeechDonation.donate(withEnrollmentSpeechID:)();
}

uint64_t sub_1AC6BCFE0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  sub_1AC5C720C(v2, &qword_1EB56B8F0, &unk_1AC7A9520);

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t SpeechDonation.donate(withEnrollmentSpeechID:)()
{
  OUTLINED_FUNCTION_85();
  v42 = *MEMORY[0x1E69E9840];
  v1[67] = v0;
  v1[66] = v2;
  v1[65] = v3;
  v4 = sub_1AC79F698();
  v1[68] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[69] = v5;
  v7 = *(v6 + 64);
  v1[70] = OUTLINED_FUNCTION_126();
  v8 = sub_1AC79F678();
  v1[71] = v8;
  OUTLINED_FUNCTION_22(v8);
  v1[72] = v9;
  v11 = *(v10 + 64);
  v1[73] = OUTLINED_FUNCTION_126();
  v12 = sub_1AC79F6A8();
  v1[74] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[75] = v13;
  v15 = *(v14 + 64);
  v1[76] = OUTLINED_FUNCTION_126();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520) - 8) + 64) + 15;
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v17 = sub_1AC79F778();
  v1[80] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[81] = v18;
  v20 = *(v19 + 64);
  v1[82] = OUTLINED_FUNCTION_126();
  v21 = sub_1AC79F7F8();
  v1[83] = v21;
  OUTLINED_FUNCTION_22(v21);
  v1[84] = v22;
  v24 = *(v23 + 64) + 15;
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v25 = sub_1AC79FB68();
  v1[89] = v25;
  OUTLINED_FUNCTION_22(v25);
  v1[90] = v26;
  v28 = *(v27 + 64);
  v1[91] = OUTLINED_FUNCTION_126();
  v29 = sub_1AC79F8E8();
  v1[92] = v29;
  OUTLINED_FUNCTION_22(v29);
  v1[93] = v30;
  v32 = *(v31 + 64);
  v1[94] = OUTLINED_FUNCTION_126();
  v33 = sub_1AC79F958();
  v1[95] = v33;
  OUTLINED_FUNCTION_22(v33);
  v1[96] = v34;
  v36 = *(v35 + 64) + 15;
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v37 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v38, v39, v40);
}

uint64_t sub_1AC6BD498()
{
  v238 = v0;
  v237 = *MEMORY[0x1E69E9840];
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEAE8]) init];
  v0[101] = v1;
  v234 = v0;
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x1E69CEAF0]) init];
  v0[102] = v3;
  if (!v3)
  {
LABEL_19:

LABEL_20:
    if (qword_1EB56B5A0 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v37 = sub_1AC79FDE8();
    __swift_project_value_buffer(v37, qword_1EB56CE38);
    v38 = sub_1AC79FDC8();
    v39 = sub_1AC7A05F8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1AC5BC000, v38, v39, "Failed to create speech donation data structures", v40, 2u);
      OUTLINED_FUNCTION_70();
    }

    v41 = v0[95];
    v42 = v0[65];

    goto LABEL_25;
  }

  v4 = v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69CEAF8]) init];
  v0[103] = v5;
  if (!v5)
  {
LABEL_18:

    v2 = v4;
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E69CEAE0]) init];
  v0[104] = v7;
  if (!v7)
  {
LABEL_17:

    v2 = v4;
    v4 = v6;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69CEAC0]) init];
  v0[105] = v9;
  if (!v9)
  {
    v10 = v8;
LABEL_16:

    v2 = v4;
    v4 = v6;
    v6 = v10;
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69CEAD8]) init];
  v0[106] = v11;
  if (!v11)
  {

    v2 = v4;
    v4 = v6;
    v6 = v8;
    goto LABEL_16;
  }

  v200 = v8;
  v201 = v10;
  v208 = v6;
  v202 = v11;
  v12 = v0[100];
  v13 = v0[99];
  v14 = v0[96];
  v15 = v0[95];
  v16 = v0[94];
  v17 = v0[91];
  v18 = v0[90];
  v220 = v234[67];
  v225 = v234[89];
  v199 = [objc_opt_self() sharedLoggerWithPersistenceConfiguration_];
  v234[107] = v199;
  sub_1AC79F948();
  sub_1AC5CF764(0, &qword_1EB56ABA8, 0x1E69CF640);
  v20 = *(v14 + 16);
  v19 = v14 + 16;
  v234[108] = v20;
  v234[109] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v198 = v20;
  v20(v13, v12, v15);
  v21 = sub_1AC6BB39C(v13);
  v234[110] = v21;
  sub_1AC79FB48();
  v231 = type metadata accessor for SpeechDonation();
  v22 = v220 + v231[5];
  sub_1AC79FB28();
  (*(v18 + 8))(v17, v225);
  sub_1AC79F8A8();
  v24 = floor(v23 * 1000.0);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v24 <= -1.0)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (v24 >= 1.84467441e19)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    OUTLINED_FUNCTION_0_9();
LABEL_35:
    v96 = sub_1AC79FDE8();
    __swift_project_value_buffer(v96, qword_1EB56CE38);
    v97 = v13;
    v98 = sub_1AC79FDC8();
    v99 = sub_1AC7A05F8();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = OUTLINED_FUNCTION_150();
      v101 = OUTLINED_FUNCTION_418();
      *v100 = 138412290;
      v102 = v13;
      v103 = _swift_stdlib_bridgeErrorToNSError();
      *(v100 + 4) = v103;
      *v101 = v103;
      _os_log_impl(&dword_1AC5BC000, v98, v99, "Unable to report speech donation: %@", v100, 0xCu);
      sub_1AC5C720C(v101, &unk_1EB56C630, &qword_1AC7A7E40);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    v104 = v234[110];
    v213 = v234[107];
    v105 = v234[106];
    v219 = v98;
    v106 = v234[105];
    v107 = v234[104];
    v108 = v234[103];
    v109 = v234[102];
    v110 = v13;
    v111 = v234[96];
    v41 = v234[95];
    v223 = v234[94];
    v112 = v234[93];
    v216 = v234[92];
    v229 = v234[65];
    v233 = v234[100];

    v0 = v234;
    (*(v112 + 8))(v223, v216);
    (*(v111 + 8))(v233, v41);
LABEL_25:
    OUTLINED_FUNCTION_65_0();
    v46 = v41;
LABEL_26:
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
    v47 = v0[100];
    v48 = v0[99];
    v49 = v0[98];
    v50 = v0[97];
    v51 = v0[94];
    v52 = v234[91];
    v53 = v234[88];
    v54 = v234[87];
    v55 = v234[86];
    v56 = v234[85];
    v210 = v234[82];
    v212 = v234[79];
    v215 = v234[78];
    v217 = v234[77];
    v222 = v234[76];
    v226 = v234[73];
    v232 = v234[70];

    OUTLINED_FUNCTION_44();
    v58 = *MEMORY[0x1E69E9840];

    return v57();
  }

  v25 = v234[67] + v231[9];
  Locale.languageRegionIdentifier.getter();
  v27 = v26;
  v211 = v28;
  v234[111] = v28;
  v29 = MobileGestalt_get_current_device();
  if (v29)
  {
    v30 = v29;
    v19 = MobileGestalt_copy_buildVersion_obj();

    v31 = MobileGestalt_get_current_device();
    if (v31)
    {
      v32 = v31;
      v33 = v234[67];
      deviceClassNumber = MobileGestalt_get_deviceClassNumber();

      v221 = *(v33 + v231[8]);
      [v221 sampleRate];
      if (v35 == 8000.0)
      {
        v195 = deviceClassNumber;
        v214 = v19;
        v196 = v21;
        v197 = v27;
        v36 = "com.apple.SpeechDonation";
      }

      else
      {
        if (v35 != 16000.0)
        {
          v121 = v234[100];
          v122 = v234[96];
          v123 = v234[95];
          v124 = v234[94];
          v125 = v19;
          v126 = v234[93];
          v127 = v234[92];
          v128 = v234[65];

          (*(v126 + 8))(v124, v127);
          (*(v122 + 8))(v121, v123);
          v0 = v234;
          OUTLINED_FUNCTION_65_0();
          v46 = v123;
          goto LABEL_26;
        }

        v195 = deviceClassNumber;
        v214 = v19;
        v196 = v21;
        v197 = v27;
        v36 = "Speech/LSRAssetInventory.swift";
      }

      v234[112] = v36;
      v60 = v234[88];
      v61 = v234[87];
      v62 = v234[84];
      v227 = v234[83];
      v63 = v234[82];
      v64 = v234[81];
      v65 = v234[80];
      v66 = [objc_opt_self() defaultManager];
      v234[113] = v66;
      v67 = [v66 temporaryDirectory];
      sub_1AC79F7A8();

      v234[56] = 0xD000000000000018;
      v234[57] = 0x80000001AC7B78C0;
      v205 = *(v64 + 104);
      v205(v63, *MEMORY[0x1E6968F58], v65);
      sub_1AC649BF0();
      sub_1AC79F7E8();
      v203 = *(v64 + 8);
      v203(v63, v65);
      v68 = *(v62 + 8);
      v234[114] = v68;
      v234[115] = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v68(v61, v227);
      v69 = v66;
      v70 = sub_1AC79F788();
      v234[62] = 0;
      LODWORD(v66) = [v66 createDirectoryAtURL:v70 withIntermediateDirectories:1 attributes:0 error:v234 + 62];

      v71 = v234[62];
      if (v66)
      {
        v218 = v68;
        v192 = v69;
        v72 = v234[100];
        v73 = v234[95];
        v74 = v234[86];
        v193 = v234[88];
        v194 = v234[85];
        v75 = v234[84];
        v228 = v234[83];
        v76 = v234[82];
        v77 = v234[80];
        v235 = 0x6E6F6974616E6F64;
        v236 = 0xE90000000000002DLL;
        v234[116] = sub_1AC6C2C38(&qword_1EB56CE50, MEMORY[0x1E69695A8]);
        v78 = v71;
        v79 = v234;
        v80 = sub_1AC7A0CC8();
        MEMORY[0x1B26E8C40](v80);

        MEMORY[0x1B26E8C40](1630825774, 0xE400000000000000);
        v81 = v236;
        v234[58] = v235;
        v234[59] = v81;
        v205(v76, *MEMORY[0x1E6968F68], v77);
        sub_1AC79F7E8();
        v203(v76, v77);

        (*(v75 + 16))(v194, v74, v228);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1AC7AC780;
        v83 = *MEMORY[0x1E69582B0];
        *(inited + 32) = sub_1AC79FF68();
        *(inited + 40) = v84;
        *(inited + 72) = MEMORY[0x1E69E7668];
        *(inited + 48) = 1634492771;
        v85 = *MEMORY[0x1E6958348];
        *(inited + 80) = sub_1AC79FF68();
        *(inited + 88) = v86;
        [v221 sampleRate];
        *(inited + 120) = MEMORY[0x1E69E63B0];
        *(inited + 96) = v87;
        v88 = *MEMORY[0x1E6958300];
        *(inited + 128) = sub_1AC79FF68();
        *(inited + 136) = v89;
        *(inited + 168) = MEMORY[0x1E69E6530];
        *(inited + 144) = 1;
        v90 = sub_1AC79FE38();
        v91 = objc_allocWithZone(MEMORY[0x1E6958408]);
        v92 = sub_1AC6C1560(v194, v90, 3, 0);
        v234[117] = v92;
        v224 = v92;
        v206 = v24;
        v113 = *(v234[67] + v231[13]);
        v114 = sub_1AC61C24C(v113);
        v115 = 0;
        v13 = v113 & 0xFFFFFFFFFFFFFF8;
        while (v114 != v115)
        {
          if ((v113 & 0xC000000000000001) != 0)
          {
            v116 = MEMORY[0x1B26E95B0](v115, v113);
          }

          else
          {
            if (v115 >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v116 = *(v113 + 8 * v115 + 32);
          }

          v117 = v116;
          if (__OFADD__(v115, 1))
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
            goto LABEL_97;
          }

          v79[63] = 0;
          v118 = [v224 writeFromBuffer:v116 error:v79 + 63];
          v119 = v79[63];
          if (!v118)
          {
            goto LABEL_67;
          }

          v120 = v119;

          ++v115;
          v79 = v234;
        }

        v129 = v79[99];
        v130 = v79[67];
        [v224 close];
        [v2 setSpeechSampleDonation_];
        [v2 setEventMetaData_];
        sub_1AC79F948();
        v131 = sub_1AC6BB39C(v129);
        [v4 setSdId_];

        [v4 setDeviceType_];
        [v4 setSystemBuild_];

        v204 = v196;
        [v208 setDonationID_];
        v79[118] = *v130;
        v79[119] = v130[1];
        v132 = sub_1AC79FF58();
        [v208 setDonorBundleID_];

        [v208 setCaptureDate_];
        v133 = (v130 + v231[10]);
        v134 = *v133;
        v135 = v133[1];
        v136 = sub_1AC79FF58();
        [v208 setTranscription_];

        v137 = objc_opt_self();
        v138 = sub_1AC79FF58();
        v139 = [v137 convertLanguageCodeToSchemaLocale_];

        [v208 setLocale_];
        v117 = *(v130 + v231[6]);
        v140 = *(v117 + 16);
        v141 = MEMORY[0x1E69E7CC0];
        if (v140)
        {
          v235 = MEMORY[0x1E69E7CC0];
          v209 = v140;
          sub_1AC7A0A88();
          v119 = sub_1AC6C2BF8(v117);
          v144 = v143;
          v145 = 0;
          v230 = v117 + 56;
          v207 = v117 + 64;
          v214 = v117;
          if ((v119 & 0x8000000000000000) == 0)
          {
            while (v119 < 1 << *(v117 + 32))
            {
              v13 = v119 >> 6;
              if ((*(v230 + 8 * (v119 >> 6)) & (1 << v119)) == 0)
              {
                goto LABEL_92;
              }

              if (*(v117 + 36) != v142)
              {
                goto LABEL_93;
              }

              v146 = v142;
              v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
              sub_1AC7A0A68();
              v147 = *(v235 + 16);
              sub_1AC7A0A98();
              sub_1AC7A0AA8();
              sub_1AC7A0A78();
              if (v144)
              {
                __break(1u);
                goto LABEL_102;
              }

              v117 = v214;
              v148 = 1 << *(v214 + 32);
              if (v119 >= v148)
              {
                goto LABEL_94;
              }

              v149 = *(v230 + 8 * v13);
              if ((v149 & (1 << v119)) == 0)
              {
                goto LABEL_95;
              }

              if (*(v214 + 9) != v146)
              {
                goto LABEL_96;
              }

              v150 = v149 & (-2 << (v119 & 0x3F));
              if (v150)
              {
                v148 = __clz(__rbit64(v150)) | v119 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v151 = v13 << 6;
                v152 = (v207 + 8 * v13);
                v153 = v13 + 1;
                while (v153 < (v148 + 63) >> 6)
                {
                  v155 = *v152++;
                  v154 = v155;
                  v151 += 64;
                  ++v153;
                  if (v155)
                  {
                    sub_1AC637E98(v119, v146, 0);
                    v148 = __clz(__rbit64(v154)) + v151;
                    goto LABEL_63;
                  }
                }

                sub_1AC637E98(v119, v146, 0);
LABEL_63:
                v117 = v214;
              }

              if (++v145 == v209)
              {
                v79 = v234;
                v141 = v235;
                goto LABEL_69;
              }

              v144 = 0;
              v142 = *(v117 + 36);
              v119 = v148;
              if (v148 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
LABEL_67:
          v156 = v234[88];
          v157 = v234[86];
          v158 = v234[83];
          v159 = v119;

          OUTLINED_FUNCTION_34_7();
          v13 = sub_1AC79F748();

          swift_willThrow();
          sub_1AC6BFBFC(v192, v157);

          v218(v157, v158);
          v160 = OUTLINED_FUNCTION_89();
          (v218)(v160);
          goto LABEL_34;
        }

LABEL_69:
        v79[120] = v141;
        if (sub_1AC61C24C(v141))
        {
          sub_1AC6C187C(v141, v208);
        }

        v161 = v79[67];
        if (*(v161 + v231[7]))
        {
          [v208 setAudioCaptureDevice_];
          v161 = v79[67];
        }

        if (*(v161 + v231[11]) != 16)
        {
          LOBYTE(v235) = *(v161 + v231[11]);
          [v208 setAsrTask_];
          v161 = v79[67];
        }

        v162 = (v161 + v231[12]);
        v163 = v162[1];
        if (v163 != 2)
        {
          v164 = *v162;
          if (v163)
          {
            v165 = 2;
          }

          else
          {
            v165 = 1;
          }

          [v208 setEvaluation_];
          if (v163 >= 2)
          {
            v167 = OUTLINED_FUNCTION_124_0();
            sub_1AC6C1A00(v167, v168);
            OUTLINED_FUNCTION_124_0();
            v166 = sub_1AC79FF58();
            v169 = OUTLINED_FUNCTION_124_0();
            sub_1AC6C1744(v169, v170);
          }

          else
          {
            v166 = 0;
          }

          [v208 setExpected_];
        }

        v171 = v79[86];
        v172 = v200;
        [v172 setContent_];
        [v172 setSpeechAudioRecord_];

        v173 = sub_1AC79F818();
        v79[121] = v173;
        v79[122] = v174;
        v175 = v79[95];
        v176 = v79[79];
        v177 = v79[66];
        sub_1AC6C17CC(v173, v174, v201);
        [v202 setInteractionId_];

        [v202 setAudioCreatedTimestampMs_];
        sub_1AC6C1824(v197, v211, v202);
        v178 = sub_1AC79FF58();
        [v202 setCodec_];

        v179 = OUTLINED_FUNCTION_124_0();
        sub_1AC5DC36C(v179, v180);
        if (__swift_getEnumTagSinglePayload(v176, 1, v175) == 1)
        {
          sub_1AC5C720C(v79[79], &qword_1EB56B8F0, &unk_1AC7A9520);
        }

        else
        {
          v181 = v79[99];
          v182 = v79[98];
          v183 = v79[96];
          v184 = v79[95];
          (*(v183 + 32))(v182, v79[79], v184);
          v198(v181, v182, v184);
          v185 = sub_1AC6BB39C(v181);
          [v202 setSpeechId_];

          (*(v183 + 8))(v182, v184);
        }

        v186 = [v2 wrapAsAnyEvent];
        v79[123] = v186;
        if (v186)
        {
          v187 = v186;
          v188 = sub_1AC79FF58();
          v79[124] = v188;
          v79[2] = v79;
          v79[3] = sub_1AC6BEB10;
          v189 = swift_continuation_init();
          v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
          v79[125] = v190;
          v79[47] = v190;
          v79[40] = MEMORY[0x1E69E9820];
          v79[41] = 1107296256;
          v79[42] = sub_1AC6BB2BC;
          v79[43] = &block_descriptor_4;
          v79[44] = v189;
          [v199 reportSiriInstrumentationEvent:v187 forBundleID:v188 completion:v79 + 40];
          v191 = *MEMORY[0x1E69E9840];
          v186 = v79 + 2;

          return MEMORY[0x1EEE6DEC8](v186);
        }

        goto LABEL_104;
      }

      v93 = v234[88];
      v94 = v234[83];
      v95 = v71;

      OUTLINED_FUNCTION_34_7();
      v13 = sub_1AC79F748();

      swift_willThrow();
      v68(v93, v94);
LABEL_34:
      if (qword_1EB56B5A0 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_100;
    }
  }

  else
  {
LABEL_102:
    __break(1u);
  }

  __break(1u);
LABEL_104:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v186);
}