void sub_1AC752ED8()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_136_3();
  v4 = sub_1AC79FBC8();
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DEF8, &qword_1AC7B2BE0);
  v15 = OUTLINED_FUNCTION_47_9(&qword_1EB56ACA8);
  sub_1AC753294(&qword_1EB56B450, MEMORY[0x1E6969C28]);
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
      sub_1AC610490();
      v21 = OUTLINED_FUNCTION_87_6();
      v1(v21);
      if (v0)
      {
        break;
      }

      (v1)(&qword_1EB56DEF8, v4);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCF8, &qword_1AC7A90B0);
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

uint64_t sub_1AC753228(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    if (sub_1AC7A08E8() == a2)
    {
      return sub_1AC7A08E8();
    }

    else
    {
      return 0;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == a2)
  {
    return a2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AC753294(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC753438@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = nullsub_1(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AC753464(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_64_0(v7);
  *v8 = v9;
  v8[1] = sub_1AC5C5380;

  return sub_1AC74C5AC(a1, v3, v4, v6, v5);
}

uint64_t sub_1AC753520(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AC753538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_32_13()
{

  return sub_1AC7A0AF8();
}

unint64_t OUTLINED_FUNCTION_34_11()
{
  v3 = v0[53];
  v0[52] = v0[52];
  v0[53] = v3;
  v4 = v0[38];

  return sub_1AC74A410(v1);
}

uint64_t OUTLINED_FUNCTION_46_10()
{
  v2 = *(*(v0 - 96) + 16);

  return sub_1AC703D34(v2);
}

uint64_t OUTLINED_FUNCTION_47_9(unint64_t *a1)
{

  return sub_1AC5C8B9C(a1, v2, v1);
}

void OUTLINED_FUNCTION_48_10()
{
  v1 = *(v0 - 112);
  *(v0 - 120) = *(v0 - 120);
  *(v0 - 112) = v1;
}

uint64_t OUTLINED_FUNCTION_63_7@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 16) = v3;
  *(v1 + 24) = 2 * (a1 / v2);
  result = *(v4 - 224);
  v6 = *(result + 16);
  v7 = (*(result + 24) >> 1) * v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_78_4()
{
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v9 = v0[5];
  v8 = v0[6];
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return sub_1AC7532D8(v0 + 1376);
}

uint64_t OUTLINED_FUNCTION_118_6()
{

  return sub_1AC637EF8(0, v0);
}

uint64_t OUTLINED_FUNCTION_128_3()
{
  v3 = *(v1 - 176);
  v2 = *(v1 - 168);
  result = v0;
  v5 = *(v1 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_147_3()
{
  v2 = *(v0 - 296) | 7;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_149_1()
{

  return sub_1AC79FE58();
}

void OUTLINED_FUNCTION_150_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_152_2()
{
}

id sub_1AC753950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v18 = 0;
  v17 = 0;
  v12 = objc_allocWithZone(SFContextualNamedEntity);
  v13 = &v12[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity];
  *v13 = a1;
  *(v13 + 1) = a2;
  v13[16] = 1;
  *(v13 + 3) = a6;
  v13[32] = 0;
  *(v13 + 5) = a3;
  v13[48] = 0;
  *(v13 + 7) = a4;
  *(v13 + 8) = a5;
  v16.receiver = v12;
  v16.super_class = SFContextualNamedEntity;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  swift_getObjectType();
  OUTLINED_FUNCTION_0_21();
  return v14;
}

id sub_1AC753B0C(uint64_t a1, uint64_t a2, char a3)
{
  v12 = 1;
  v11 = 1;
  v6 = objc_allocWithZone(SFContextualNamedEntity);
  v7 = &v6[OBJC_IVAR___SFContextualNamedEntity_contextualNamedEntity];
  *v7 = a1;
  *(v7 + 1) = a2;
  v7[16] = a3;
  *(v7 + 3) = 0;
  v7[32] = 1;
  *(v7 + 5) = 0;
  v7[48] = 1;
  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  v10.receiver = v6;
  v10.super_class = SFContextualNamedEntity;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_getObjectType();
  OUTLINED_FUNCTION_0_21();
  return v8;
}

void __swiftcall SFContextualNamedEntity.init()(SFContextualNamedEntity *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for SFContextualNamedEntity()
{
  result = qword_1EB56DF78;
  if (!qword_1EB56DF78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56DF78);
  }

  return result;
}

uint64_t related decl e for SFSpeechErrorCode.init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SFSpeechError(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v6 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1AC79FF68();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  sub_1AC79FE38();
  sub_1AC753D7C();
  sub_1AC79F718();
  return v9;
}

unint64_t sub_1AC753D7C()
{
  result = qword_1EB56B870;
  if (!qword_1EB56B870)
  {
    type metadata accessor for SFSpeechError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B870);
  }

  return result;
}

id sub_1AC753E14()
{
  type metadata accessor for SpeechAnalyzer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EB56DF80 = result;
  return result;
}

id static NSBundle.speech.getter()
{
  if (qword_1EB56B610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB56DF80;

  return v1;
}

uint64_t sub_1AC753F38(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFDA4(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARFullPayloadCorrector();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC753FC0(uint64_t a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1 == 0xD000000000000026 && 0x80000001AC7BA740 == a2;
  if (v8 || (sub_1AC7A0D38() & 1) != 0)
  {
    [a3 hello];
    return 1;
  }

  result = 0xD000000000000043;
  v14 = a1 == 0xD000000000000043 && 0x80000001AC7BA770 == a2;
  if (v14 || (v15 = sub_1AC7A0D38(), result = 0, (v15 & 1) != 0))
  {
    v16 = *(a4 + 16);
    if (v16)
    {
      result = sub_1AC5D2398(a4 + 32, &v26);
      if (!v27)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      sub_1AC5C3968(&v26, &v21);
      swift_dynamicCast();
      v17 = sub_1AC79FF58();

      if (v16 != 1)
      {
        sub_1AC5D2398(a4 + 64, &v21);
        if (v23)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9A0, &unk_1AC7B2F90);
          result = swift_dynamicCast();
          if (result)
          {
            v18 = sub_1AC79FE18();

            goto LABEL_22;
          }
        }

        else
        {
          result = sub_1AC641B24(&v21);
        }

        v18 = 0;
LABEL_22:
        if (a5)
        {
          v19 = swift_allocObject();
          *(v19 + 16) = a5;
          *(v19 + 24) = a6;
          v24 = sub_1AC7556E8;
          v25 = v19;
          *&v21 = MEMORY[0x1E69E9820];
          *(&v21 + 1) = 1107296256;
          v22 = sub_1AC5EF7E0;
          v23 = &block_descriptor_16;
          v20 = _Block_copy(&v21);

          [a3 correctPostITNOutput:v17 withOptions:v18 reply:v20];
          _Block_release(v20);

          return 1;
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1AC754264()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_1AC79FC78();
  v1[10] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[11] = v6;
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA58, &qword_1AC7A7B10);
  v1[13] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[16] = v13;
  OUTLINED_FUNCTION_22(v13);
  v1[17] = v14;
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1AC7543C0()
{
  v1 = v0[9];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[18];
    v4 = v0[6];
    v3 = v0[7];
    v5 = *(v0[9] + 136);
    v6 = sub_1AC5C6544();
    v0[2] = v4;
    v0[3] = v3;
    v0[4] = v6;

    sub_1AC79FC98();
    sub_1AC5C6DD8(v2);
    v8 = v0[15];
    v0[5] = v0[8];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA50, &unk_1AC7B2D20);
    sub_1AC79FC98();
    v9 = sub_1AC5DEDBC(v8);
    v11 = nullsub_1(v9, v10);
    nullsub_1(v11, v12);
    v13 = v0[12];
    sub_1AC79FC88();
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_1AC7546A4;
    v15 = v0[12];
    v16 = v0[9];

    return sub_1AC5E1980(v16, v15, (v0 + 4));
  }

  else
  {
    v7 = v0[9];

    return MEMORY[0x1EEE6DFA0](sub_1AC7548B4, v7, 0);
  }
}

uint64_t sub_1AC7546A4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v5 = v4;
  v7 = *(v6 + 152);
  v8 = *v2;
  OUTLINED_FUNCTION_18_2();
  *v9 = v8;
  v4[20] = v1;

  if (!v1)
  {
    v4[21] = a1;
  }

  v10 = v4[4];

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC7547D0()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v6 + 8))(v4, v5);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_89();
  v9(v8);

  v10 = v0[1];
  v11 = v0[21];

  return v10(v11);
}

uint64_t sub_1AC7548E4()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v6 + 8))(v4, v5);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_89();
  v9(v8);
  v10 = v0[20];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];

  OUTLINED_FUNCTION_44();

  return v14();
}

uint64_t sub_1AC7549BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v10 = v8[1];
  v17 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v15 = *v14;
  v16 = swift_task_alloc();
  v3[9] = v16;
  *v16 = v3;
  v16[1] = sub_1AC754C18;

  return sub_1AC754264();
}

uint64_t sub_1AC754C18(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 32);
  v8 = *(*v1 + 24);
  v11 = *v1;
  **(*v1 + 16) = a1;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_44();

  return v9();
}

uint64_t sub_1AC754E28()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v5 = *(v4 + 64);
  v1[6] = OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC754ED0()
{
  v1 = v0[3];
  is_remote = swift_distributed_actor_is_remote();
  v3 = v0[3];
  if (is_remote)
  {
    v4 = *(v3 + 136);
    v5 = sub_1AC5C6544();
    v0[7] = v5;
    v0[2] = v5;
    nullsub_1(v5, v6);
    v7 = v0[6];
    sub_1AC79FC88();
    v8 = swift_task_alloc();
    v0[8] = v8;
    *v8 = v0;
    v8[1] = sub_1AC7112F8;
    v9 = v0[6];
    v10 = v0[3];

    return sub_1AC5E3B6C(v10, v9, (v0 + 2));
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AC6B7174, v3, 0);
  }
}

uint64_t sub_1AC7550BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC7114B8;

  return sub_1AC754E28();
}

uint64_t sub_1AC755174()
{
  sub_1AC7A0E78();
  type metadata accessor for EARFullPayloadCorrector();
  OUTLINED_FUNCTION_0_22();
  sub_1AC755734(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC7551F0()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARFullPayloadCorrector();
    OUTLINED_FUNCTION_0_22();
    sub_1AC755734(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC7552B4()
{
  v1 = *v0;
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC755734(&qword_1EB56BA38, v2, type metadata accessor for EARFullPayloadCorrector);
  return sub_1AC79FC28();
}

uint64_t sub_1AC75532C()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC755384(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARFullPayloadCorrector();
  v6 = sub_1AC755734(&qword_1EB56BA38, v5, type metadata accessor for EARFullPayloadCorrector);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC75540C()
{
  v1 = *v0;
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC755734(&qword_1EB56BA38, v2, type metadata accessor for EARFullPayloadCorrector);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC7554A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARFullPayloadCorrector();
  sub_1AC755734(&qword_1EB56BA38, v3, type metadata accessor for EARFullPayloadCorrector);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1AC755660()
{
  result = xpcInterface_EARFullPayloadCorrector();
  qword_1EB56E8D8 = result;
  return result;
}

uint64_t sub_1AC755688(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1AC7556F0();
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1AC641B24(v6);
}

unint64_t sub_1AC7556F0()
{
  result = qword_1EB56BA40;
  if (!qword_1EB56BA40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB56BA40);
  }

  return result;
}

uint64_t sub_1AC755734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1AC75577C(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFD7C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EAREuclid();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

void sub_1AC755804(uint64_t a1, void *a2, void *a3)
{
  v6 = 0xD00000000000001FLL;
  OUTLINED_FUNCTION_65();
  v11 = a1 == 0xD000000000000018 && v7 == a2;
  if (v11 || (v12 = v10, v13 = v9, v14 = v8, (OUTLINED_FUNCTION_18_16() & 1) != 0))
  {
    [a3 hello];
    return;
  }

  OUTLINED_FUNCTION_65();
  v16 = a1 == 0xD000000000000040 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_18_16() & 1) != 0)
  {
    v17 = *(v14 + 16);
    if (v17)
    {
      v18 = sub_1AC5D2398(v14 + 32, &v130);
      if (!v132)
      {
        __break(1u);
        goto LABEL_88;
      }

      v26 = OUTLINED_FUNCTION_42_13(v18, v19, v20, v21, v22, v23, v24, v25, v115, v121, v127, *(&v127 + 1), v128, v129, v130, v131, v132, aBlock);
      v6 = MEMORY[0x1E69E7CA0];
      OUTLINED_FUNCTION_39_12(v26, v27, v28, MEMORY[0x1E69E6158], v29, v30, v31, v32, v116, v122, v127);
      swift_dynamicCast();
      a1 = *(&v127 + 1);
      a2 = sub_1AC79FF58();

      if (v17 != 1)
      {
        sub_1AC5D2398(v14 + 64, &v127);
        if (v129)
        {
          sub_1AC5C3968(&v127, &v130);
          swift_dynamicCast();
          if (v13)
          {
            OUTLINED_FUNCTION_99();
            v33 = swift_allocObject();
            *(v33 + 16) = v13;
            *(v33 + 24) = v12;
            OUTLINED_FUNCTION_0_23();
            *(&aBlock + 1) = 1107296256;
            v134 = sub_1AC759A4C;
            v135 = &block_descriptor_90;
            v13 = _Block_copy(&aBlock);

            OUTLINED_FUNCTION_40_13(v34, sel_findNearestNeighbors_numberOfNeighbors_reply_);

LABEL_18:
            _Block_release(v13);
            return;
          }

          goto LABEL_89;
        }

LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_65();
  v36 = a1 == 0xD000000000000030 && v35 == a2;
  if (v36 || (OUTLINED_FUNCTION_18_16() & 1) != 0)
  {
    v6 = *(v14 + 16);
    if (v6)
    {
      v37 = sub_1AC5D2398(v14 + 32, &v130);
      if (!v132)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v45 = OUTLINED_FUNCTION_42_13(v37, v38, v39, v40, v41, v42, v43, v44, v115, v121, v127, *(&v127 + 1), v128, v129, v130, v131, v132, aBlock);
      OUTLINED_FUNCTION_39_12(v45, v46, v47, MEMORY[0x1E69E6158], v48, v49, v50, v51, v117, v123, v127);
      swift_dynamicCast();
      a1 = *(&v127 + 1);
      a2 = sub_1AC79FF58();

      if (v6 != 1)
      {
        v52 = sub_1AC5D2398(v14 + 64, &v130);
        if (v132)
        {
          v60 = OUTLINED_FUNCTION_42_13(v52, v53, v54, v55, v56, v57, v58, v59, v118, v124, v127, *(&v127 + 1), v128, v129, v130, v131, v132, aBlock);
          OUTLINED_FUNCTION_39_12(v60, v61, v62, MEMORY[0x1E69E6158], v63, v64, v65, v66, v119, v125, v127);
          swift_dynamicCast();
          v67 = sub_1AC79FF58();

          if (v13)
          {
            OUTLINED_FUNCTION_99();
            v68 = swift_allocObject();
            *(v68 + 16) = v13;
            *(v68 + 24) = v12;
            v136 = sub_1AC759CB4;
            v137 = v68;
            *&aBlock = MEMORY[0x1E69E9820];
            *(&aBlock + 1) = 1107296256;
            v134 = sub_1AC5EF7E0;
            v135 = &block_descriptor_84;
            v69 = _Block_copy(&aBlock);

            OUTLINED_FUNCTION_40_13(v70, sel_distanceBetweenSource_target_reply_);
            _Block_release(v69);

            return;
          }

          goto LABEL_92;
        }

LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  OUTLINED_FUNCTION_65();
  v72 = a1 == 0xD00000000000002CLL && v71 == a2;
  if (!v72 && (OUTLINED_FUNCTION_18_16() & 1) == 0)
  {
    OUTLINED_FUNCTION_65();
    v92 = a1 == 0xD000000000000021 && v91 == a2;
    if (v92 || (OUTLINED_FUNCTION_18_16() & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v93 = swift_allocObject();
        *(v93 + 16) = v13;
        *(v93 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_20_17();
        v134 = v94;
        v135 = &block_descriptor_71;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 maxInputLengthWithReply_];
        goto LABEL_18;
      }

      goto LABEL_95;
    }

    OUTLINED_FUNCTION_65();
    v96 = a1 == 0xD00000000000001FLL && v95 == a2;
    if (v96 || (OUTLINED_FUNCTION_16_18() & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v97 = swift_allocObject();
        *(v97 + 16) = v13;
        *(v97 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_20_17();
        v134 = v98;
        v135 = &block_descriptor_64_0;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 embeddingDimWithReply_];
        goto LABEL_18;
      }

      goto LABEL_96;
    }

    OUTLINED_FUNCTION_65();
    v100 = a1 == 0xD00000000000001ELL && v99 == a2;
    if (v100 || (OUTLINED_FUNCTION_18_16() & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v101 = swift_allocObject();
        *(v101 + 16) = v13;
        *(v101 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_2_23();
        v134 = v102;
        v135 = &block_descriptor_58;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 fullVersionWithReply_];
        goto LABEL_18;
      }

      goto LABEL_97;
    }

LABEL_63:
    OUTLINED_FUNCTION_65();
    v104 = a1 == v6 && v103 == a2;
    if (v104 || (OUTLINED_FUNCTION_16_18() & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v105 = swift_allocObject();
        *(v105 + 16) = v13;
        *(v105 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_2_23();
        v134 = v106;
        v135 = &block_descriptor_51_0;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 majorVersionWithReply_];
        goto LABEL_18;
      }

      goto LABEL_98;
    }

LABEL_72:
    OUTLINED_FUNCTION_65();
    v108 = a1 == v6 && v107 == a2;
    if (v108 || (OUTLINED_FUNCTION_16_18() & 1) != 0)
    {
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v109 = swift_allocObject();
        *(v109 + 16) = v13;
        *(v109 + 24) = v12;
        OUTLINED_FUNCTION_0_23();
        OUTLINED_FUNCTION_2_23();
        v134 = v110;
        v135 = &block_descriptor_44;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_24_17();

        [a3 minorVersionWithReply_];
        goto LABEL_18;
      }

      goto LABEL_99;
    }

    goto LABEL_80;
  }

  if (*(v14 + 16))
  {
    v73 = sub_1AC5D2398(v14 + 32, &v130);
    if (v132)
    {
      OUTLINED_FUNCTION_42_13(v73, v74, v75, v76, v77, v78, v79, v80, v115, v121, v127, *(&v127 + 1), v128, v129, v130, v131, v132, aBlock);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
      OUTLINED_FUNCTION_39_12(v81, v82, v83, v81, v84, v85, v86, v87, v120, v126, v127);
      swift_dynamicCast();
      v88 = sub_1AC7A0148();

      if (v13)
      {
        OUTLINED_FUNCTION_99();
        v89 = swift_allocObject();
        *(v89 + 16) = v13;
        *(v89 + 24) = v12;
        v136 = sub_1AC759BC8;
        v137 = v89;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v134 = sub_1AC759B48;
        v135 = &block_descriptor_77;
        v90 = _Block_copy(&aBlock);

        [a3 computeEmbeddings:v88 reply:v90];
        _Block_release(v90);

        return;
      }

      goto LABEL_94;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  __break(1u);
LABEL_80:
  OUTLINED_FUNCTION_65();
  v112 = a1 == v6 && v111 == a2;
  if (v112 || (OUTLINED_FUNCTION_16_18() & 1) != 0)
  {
    if (v13)
    {
      OUTLINED_FUNCTION_99();
      v113 = swift_allocObject();
      *(v113 + 16) = v13;
      *(v113 + 24) = v12;
      OUTLINED_FUNCTION_0_23();
      OUTLINED_FUNCTION_2_23();
      v134 = v114;
      v135 = &block_descriptor_17;
      _Block_copy(&aBlock);
      OUTLINED_FUNCTION_24_17();

      [a3 patchVersionWithReply_];
      goto LABEL_18;
    }

LABEL_100:
    __break(1u);
  }
}

uint64_t sub_1AC756034()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_1AC79FC78();
  v1[10] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[11] = v6;
  v8 = *(v7 + 64);
  v1[12] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA28, &qword_1AC7A7AE0);
  v1[13] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[14] = v10;
  v12 = *(v11 + 64);
  v1[15] = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[16] = v13;
  OUTLINED_FUNCTION_22(v13);
  v1[17] = v14;
  v16 = *(v15 + 64);
  v1[18] = OUTLINED_FUNCTION_126();
  v17 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v17, v18, v19);
}

uint64_t sub_1AC75618C()
{
  v1 = v0[9];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[18];
    v4 = v0[6];
    v3 = v0[7];
    v5 = *(v0[9] + 136);
    v6 = sub_1AC5C6544();
    v0[2] = v4;
    v0[3] = v3;
    v0[4] = v6;

    sub_1AC79FC98();
    sub_1AC5C6DD8(v2);
    v12 = v0[15];
    v0[5] = v0[8];
    sub_1AC79FC98();
    v13 = sub_1AC5DEE54(v12);
    v15 = nullsub_1(v13, v14);
    nullsub_1(v15, v16);
    v17 = v0[12];
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7AC8);
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    v18[1] = sub_1AC756424;
    v19 = v0[12];
    OUTLINED_FUNCTION_31_0(v0[9]);
    OUTLINED_FUNCTION_174();

    __asm { BR              X3 }
  }

  v7 = v0[9];
  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC756424()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v8 = *(v7 + 152);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[20] = v0;

  if (!v0)
  {
    v5[21] = v3;
  }

  v11 = v5[4];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC756540()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v6 + 8))(v4, v5);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_89();
  v9(v8);

  OUTLINED_FUNCTION_82();
  v11 = v0[21];

  return v10(v11);
}

uint64_t sub_1AC756650()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v6 + 8))(v4, v5);
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_89();
  v9(v8);
  v10 = v0[20];
  v11 = v0[18];
  v12 = v0[15];
  v13 = v0[12];

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_523();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1AC75671C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v10 = v8[1];
  v17 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v15 = *v14;
  v16 = swift_task_alloc();
  v3[9] = v16;
  *v16 = v3;
  v16[1] = sub_1AC6F1EC0;

  return sub_1AC756034();
}

uint64_t sub_1AC756978()
{
  OUTLINED_FUNCTION_85();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = sub_1AC79FC78();
  v1[12] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[13] = v7;
  v9 = *(v8 + 64);
  v1[14] = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[15] = v10;
  OUTLINED_FUNCTION_22(v10);
  v1[16] = v11;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1AC756A90()
{
  v1 = v0[11];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[18];
    v4 = v0[7];
    v3 = v0[8];
    v5 = *(v0[11] + 136);
    v6 = sub_1AC5C6544();
    v0[2] = v4;
    v0[6] = v6;
    v0[3] = v3;

    sub_1AC79FC98();
    sub_1AC5C6DD8(v2);
    v12 = v0[17];
    v13 = v0[10];
    v0[4] = v0[9];
    v0[5] = v13;

    sub_1AC79FC98();
    v14 = sub_1AC5C6DD8(v12);
    v16 = nullsub_1(v14, v15);
    nullsub_1(v16, v17);
    v18 = v0[14];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7AB0);
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    v19[1] = sub_1AC756D24;
    v20 = v0[14];
    OUTLINED_FUNCTION_31_0(v0[11]);
    OUTLINED_FUNCTION_174();

    __asm { BR              X3 }
  }

  v7 = v0[11];
  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC756D24()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v8 = *(v7 + 152);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[20] = v0;

  if (!v0)
  {
    v5[21] = v3;
  }

  v11 = v5[6];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC756E40()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);

  OUTLINED_FUNCTION_82();
  v6 = v0[21];
  OUTLINED_FUNCTION_523();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1AC756F38()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  v6 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[14];

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC757004()
{
  OUTLINED_FUNCTION_85();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1AC79FC78();
  v1[6] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B910, &unk_1AC7A6E00);
  v1[9] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_126();
  v11 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC757100()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v1 = v0[5];
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[11];
    v3 = v0[4];
    v4 = *(v0[5] + 136);
    v5 = sub_1AC5C6544();
    v0[3] = v3;
    v0[2] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC79FC98();
    v6 = sub_1AC5DDFEC(v2);
    v8 = nullsub_1(v6, v7);
    nullsub_1(v8, v9);
    v15 = v0[8];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7A98);
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_1AC757304;
    v17 = v0[8];
    OUTLINED_FUNCTION_31_0(v0[5]);
    OUTLINED_FUNCTION_155();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    v10 = v0[5];
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC757304()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_18_2();
  *v6 = v5;
  v8 = *(v7 + 96);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[13] = v0;

  if (!v0)
  {
    v5[14] = v3;
  }

  v11 = v5[2];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC757420()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);

  OUTLINED_FUNCTION_82();
  v8 = v0[14];

  return v7(v8);
}

uint64_t sub_1AC7574F4()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);
  v7 = v0[13];
  v8 = v0[11];
  v9 = v0[8];

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC757594()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC75762C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7AB0);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC75777C()
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

uint64_t sub_1AC7578DC()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC757974()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7AB0);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC757AC4()
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

uint64_t sub_1AC757C24()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC757CBC()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC757E0C()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  v6 = v4[8];
  *v5 = *v2;
  v4[9] = v1;

  OUTLINED_FUNCTION_36_12();
  v8 = *(v7 + 56);

  if (!v1)
  {
    v4[10] = v0;
    v4[11] = v3;
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC757F5C()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC757FF4()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC758144()
{
  OUTLINED_FUNCTION_524();
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_13_14();
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  v6 = v4[8];
  *v5 = *v2;
  v4[9] = v1;

  OUTLINED_FUNCTION_36_12();
  v8 = *(v7 + 56);

  if (!v1)
  {
    v4[10] = v0;
    v4[11] = v3;
  }

  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_523();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC758294()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC75832C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC7584AC()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC758544()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    v7 = nullsub_1(v5, v6);
    if (v0)
    {

      v9 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      nullsub_1(v7, v8);
      v23 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A88);
      v24 = swift_task_alloc();
      v25 = OUTLINED_FUNCTION_76(v24);
      *v25 = v26;
      OUTLINED_FUNCTION_6_0(v25);
      OUTLINED_FUNCTION_155();

      return v30(v27, v28, v29, v30, v31, v32, v33, v34);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }
}

uint64_t sub_1AC7586C4()
{
  OUTLINED_FUNCTION_85();
  v1 = OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_21_1(v1);
  *(v0 + 40) = v2;
  v4 = *(v3 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_126();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC75875C()
{
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_45();
  v2 = *(v1 + 24);
  is_remote = swift_distributed_actor_is_remote();
  if (is_remote)
  {
    v4 = OUTLINED_FUNCTION_147(is_remote, *(v1 + 24));
    v5 = OUTLINED_FUNCTION_13_0(v4);
    nullsub_1(v5, v6);
    if (v0)
    {

      v7 = *(v1 + 48);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_155();

      return v9(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    else
    {
      v21 = *(v1 + 48);
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7A80);
      v22 = swift_task_alloc();
      v23 = OUTLINED_FUNCTION_76(v22);
      *v23 = v24;
      OUTLINED_FUNCTION_6_0(v23);
      OUTLINED_FUNCTION_155();

      return v28(v25, v26, v27, v28, v29, v30, v31, v32);
    }
  }

  else
  {
    OUTLINED_FUNCTION_155();

    return MEMORY[0x1EEE6DFA0](v17, v18, v19);
  }
}

uint64_t sub_1AC7588A0()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;
  v5 = *(v2 + 64);
  *v4 = *v1;
  *(v3 + 72) = v0;

  v6 = *(v2 + 56);

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC7589F8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v10 = v8[1];
  v18 = *v8;
  v11 = a2[1];
  v3[6] = v11;
  v12 = *(v11 - 8);
  v3[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v3[8] = v14;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v15 = *v14;
  v16 = v14[1];
  v17 = swift_task_alloc();
  v3[9] = v17;
  *v17 = v3;
  v17[1] = sub_1AC6F4758;

  return sub_1AC756978();
}

uint64_t sub_1AC758C8C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v9 = *v7;
    v10 = swift_task_alloc();
    v3[6] = v10;
    *v10 = v3;
    v10[1] = sub_1AC758E00;

    return sub_1AC757004();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC758E00()
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

uint64_t sub_1AC758FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC604AC4;

  return sub_1AC757594();
}

uint64_t sub_1AC759084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E63A4;

  return sub_1AC7578DC();
}

uint64_t sub_1AC759150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC5E545C;

  return sub_1AC757C24();
}

uint64_t sub_1AC75921C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC759C88;

  return sub_1AC757F5C();
}

uint64_t sub_1AC7592E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC759C88;

  return sub_1AC758294();
}

uint64_t sub_1AC7593B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC759C88;

  return sub_1AC7584AC();
}

uint64_t sub_1AC759480()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC7586C4();
}

uint64_t sub_1AC759538()
{
  sub_1AC7A0E78();
  type metadata accessor for EAREuclid();
  OUTLINED_FUNCTION_21_14();
  sub_1AC759C20(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC7595B4()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EAREuclid();
    OUTLINED_FUNCTION_21_14();
    sub_1AC759C20(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC759678()
{
  v1 = *v0;
  type metadata accessor for EAREuclid();
  sub_1AC759C20(&unk_1EB56AD10, v2, type metadata accessor for EAREuclid);
  return sub_1AC79FC28();
}

uint64_t sub_1AC7596F0()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EAREuclid();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC759748(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EAREuclid();
  v6 = sub_1AC759C20(&unk_1EB56AD10, v5, type metadata accessor for EAREuclid);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC7597D0()
{
  v1 = *v0;
  type metadata accessor for EAREuclid();
  sub_1AC759C20(&unk_1EB56AD10, v2, type metadata accessor for EAREuclid);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC759864@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EAREuclid();
  sub_1AC759C20(&unk_1EB56AD10, v3, type metadata accessor for EAREuclid);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

id sub_1AC759A24()
{
  result = xpcInterface_EAREuclid();
  qword_1EB56E5F8 = result;
  return result;
}

uint64_t sub_1AC759A4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1AC5CF764(0, &qword_1EB56DFA0, off_1E797AC60);
  v3 = sub_1AC7A0158();

  v2(v3);
}

uint64_t sub_1AC759AD0(void *a1, void (*a2)(void *))
{
  v6[3] = sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
  v6[0] = a1;
  v4 = a1;
  a2(v6);
  return sub_1AC641B24(v6);
}

uint64_t sub_1AC759B48(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
  v3 = sub_1AC7A0158();

  v2(v3);
}

uint64_t sub_1AC759C20(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id OUTLINED_FUNCTION_40_13(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_1AC759CFC()
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

uint64_t sub_1AC759DA0()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v4);
    if (v0)
    {

      v5 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v12 = v1[6];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BA0);
    v13 = swift_task_alloc();
    v1[8] = v13;
    *v13 = v1;
    OUTLINED_FUNCTION_0_24(v13);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC759EF8()
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

uint64_t sub_1AC75A018()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC759CFC();
}

uint64_t sub_1AC75A0DC()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  (*(v0[9] + 8))(v0[10], v0[8]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);
  v7 = v0[15];
  v8 = v0[13];
  v9 = v0[10];

  OUTLINED_FUNCTION_82();

  return v10(0);
}

uint64_t sub_1AC75A180()
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

uint64_t sub_1AC75A224()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v4);
    if (v0)
    {

      v5 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v12 = v1[6];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BA0);
    v13 = swift_task_alloc();
    v1[8] = v13;
    *v13 = v1;
    OUTLINED_FUNCTION_0_24(v13);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC75A37C()
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

uint64_t sub_1AC75A49C()
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

uint64_t sub_1AC75A540()
{
  OUTLINED_FUNCTION_45();
  v2 = v1[3];
  if (swift_distributed_actor_is_remote())
  {
    v3 = *(v1[3] + 136);
    v4 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v4);
    if (v0)
    {

      v5 = v1[6];

      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_155();

      __asm { BRAA            X1, X16 }
    }

    v12 = v1[6];
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BA0);
    v13 = swift_task_alloc();
    v1[8] = v13;
    *v13 = v1;
    OUTLINED_FUNCTION_0_24(v13);
    OUTLINED_FUNCTION_155();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC75A698()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 24) = v0;
  *(v1 + 108) = v2;
  v3 = sub_1AC79FC78();
  *(v1 + 32) = v3;
  OUTLINED_FUNCTION_22(v3);
  *(v1 + 40) = v4;
  v6 = *(v5 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAB0, &unk_1AC7B35B0);
  *(v1 + 56) = v7;
  OUTLINED_FUNCTION_22(v7);
  *(v1 + 64) = v8;
  v10 = *(v9 + 64);
  *(v1 + 72) = OUTLINED_FUNCTION_126();
  v11 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1AC75A798()
{
  v1 = *(v0 + 24);
  if (swift_distributed_actor_is_remote())
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 108);
    v4 = *(*(v0 + 24) + 136);
    v5 = sub_1AC5C6544();
    *(v0 + 104) = v3;
    *(v0 + 16) = v5;
    sub_1AC79FC98();
    v6 = sub_1AC5DEB8C(v2);
    v8 = nullsub_1(v6, v7);
    nullsub_1(v8, v9);
    v11 = *(v0 + 48);
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7B78);
    v16 = v12;
    v13 = swift_task_alloc();
    *(v0 + 80) = v13;
    *v13 = v0;
    v14 = OUTLINED_FUNCTION_0_24(v13);

    return v16(v14);
  }

  else
  {
    v10 = *(v0 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AC75AB68, v10, 0);
  }
}

uint64_t sub_1AC75A9AC()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 80);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[11] = v0;

  if (!v0)
  {
    v5[12] = v3;
  }

  v11 = v5[2];

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1AC75AAC4()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);

  OUTLINED_FUNCTION_82();
  v8 = v0[12];

  return v7(v8);
}

uint64_t sub_1AC75AB98()
{
  OUTLINED_FUNCTION_72();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_89();
  v6(v5);
  v7 = v0[11];
  v8 = v0[9];
  v9 = v0[6];

  OUTLINED_FUNCTION_44();

  return v10();
}

uint64_t sub_1AC75AC38(void *a1, void *a2, int a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EFD2C(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC75ACC0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v9 = *v7;
    v10 = v7[1];
    v11 = swift_task_alloc();
    v3[6] = v11;
    *v11 = v3;
    v11[1] = sub_1AC6B79F0;

    return sub_1AC5D0420();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC75AE6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C5380;

  return sub_1AC75A180();
}

uint64_t sub_1AC75AF00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC75A49C();
}

uint64_t sub_1AC75AF94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v9 = *v7;
    v10 = swift_task_alloc();
    v3[6] = v10;
    *v10 = v3;
    v10[1] = sub_1AC758E00;

    return sub_1AC75A698();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC75B13C()
{
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  OUTLINED_FUNCTION_8_15();
  sub_1AC75B738(v0, v1, v2);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75B1B8()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for EARSpeechRecognitionAudioBuffer();
    OUTLINED_FUNCTION_8_15();
    sub_1AC75B738(v1, v2, v3);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC75B27C()
{
  v1 = *v0;
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC75B738(&unk_1EB56AD88, v2, type metadata accessor for EARSpeechRecognitionAudioBuffer);
  return sub_1AC79FC28();
}

uint64_t sub_1AC75B2F4()
{
  v2 = *v0;
  sub_1AC7A0E78();
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75B34C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for EARSpeechRecognitionAudioBuffer();
  v6 = sub_1AC75B738(&unk_1EB56AD88, v5, type metadata accessor for EARSpeechRecognitionAudioBuffer);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC75B3D4()
{
  v1 = *v0;
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC75B738(&unk_1EB56AD88, v2, type metadata accessor for EARSpeechRecognitionAudioBuffer);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC75B468@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC75B738(&unk_1EB56AD88, v3, type metadata accessor for EARSpeechRecognitionAudioBuffer);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1AC75B628()
{
  v0 = objc_opt_self();
  v1 = &unk_1F215B228;
  v2 = [v0 interfaceWithProtocol_];

  qword_1EB56E608 = v2;
}

uint64_t sub_1AC75B690(uint64_t a1, void (*a2)(void *))
{
  v3[3] = MEMORY[0x1E69E76D8];
  v3[0] = a1;
  a2(v3);
  return sub_1AC641B24(v3);
}

uint64_t sub_1AC75B6DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1AC75B738(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void NormalizingTranscriber.Result.text.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 72);
  if (*(v3 + 16))
  {
    v4 = sub_1AC79F5C8();
    v5 = OUTLINED_FUNCTION_80(v4);
    v7 = *(v6 + 16);
    v8 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

    v7(a1, v8, v5);
  }

  else
  {
    __break(1u);
  }
}

__n128 NormalizingTranscriber.MultisegmentResult.recognitionAudioRange.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 124);
  *a1 = *(v1 + 108);
  *(a1 + 16) = v2;
  result = *(v1 + 140);
  *(a1 + 32) = result;
  return result;
}

uint64_t NormalizingTranscriber.MultisegmentResult.audioAnalytics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[20];
  v3 = v1[21];
  v4 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1AC63482C(v2);
}

uint64_t NormalizingTranscriber.MultisegmentResult.eosLikelihood.getter()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t NormalizingTranscriber.MultisegmentResult.latticeMitigatorResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = *(v1 + 208);
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t NormalizingTranscriber.MultisegmentResult.resultCandidateId.getter()
{
  result = *(v0 + 248);
  v2 = *(v0 + 256);
  return result;
}

__n128 NormalizingTranscriber.MultisegmentResult.init(range:resultsFinalizationTime:transcriptions:transcriptionTokens:segments:nBestChoices:earResultType:recognitionAudioRange:audioAnalytics:eosLikelihood:latticeMitigatorResult:numOneBestTokensExcludingTriggerPhrase:resultCandidateId:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, _OWORD *a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  v18 = a1[1];
  *a9 = *a1;
  *(a9 + 16) = v18;
  *(a9 + 32) = a1[2];
  v19 = a11[1];
  *(a9 + 108) = *a11;
  *(a9 + 124) = v19;
  *(a9 + 140) = a11[2];
  *(a9 + 160) = *a12;
  result = *a15;
  v21 = *(a15 + 16);
  *(a9 + 200) = *a15;
  v22 = *a10;
  v23 = *(a12 + 16);
  v24 = *(a15 + 32);
  *(a9 + 48) = a2;
  *(a9 + 56) = a3;
  *(a9 + 64) = a4;
  *(a9 + 72) = a5;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v22;
  *(a9 + 176) = v23;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  *(a9 + 216) = v21;
  *(a9 + 232) = v24;
  *(a9 + 240) = a16;
  *(a9 + 248) = a17;
  *(a9 + 256) = a18 & 1;
  return result;
}

uint64_t NormalizingTranscriber.multisegmentResults.getter()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_1();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);
  v8 = OUTLINED_FUNCTION_77_0();
  v9(v8);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v10, &qword_1EB56C340, &qword_1AC7A8810);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t NormalizingTranscriber.results.getter()
{
  v1 = OUTLINED_FUNCTION_57_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_1();
  v7 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);
  v8 = OUTLINED_FUNCTION_77_0();
  v9(v8);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v10, &qword_1EB56C330, &qword_1AC7A8800);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t NormalizingTranscriber.ModelOptions.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v5 = v4[5];
  v6 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_50_10(a2 + v5, v7, v8, v6);
  v9 = v4[7];
  v10 = (a2 + v4[6]);
  v11 = v4[8];
  v12 = v4[9];
  v20 = v4[10];
  v21 = v4[11];
  v13 = v4[12];
  v14 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  *(a2 + v13) = *(a1 + v14[12]);
  v15 = a1[1];
  *a2 = *a1;
  a2[1] = v15;
  v16 = v14[5];

  sub_1AC75EC18(a1 + v16, a2 + v5);
  v17 = (a1 + v14[6]);
  v18 = v17[1];
  *v10 = *v17;
  v10[1] = v18;
  *(a2 + v9) = *(a1 + v14[7]);
  *(a2 + v11) = *(a1 + v14[8]);
  *(a2 + v12) = *(a1 + v14[9]);
  *(a2 + v20) = *(a1 + v14[10]);
  LOBYTE(v14) = *(a1 + v14[11]);

  result = sub_1AC760390();
  *(a2 + v21) = v14;
  return result;
}

uint64_t NormalizingTranscriber.__allocating_init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_16_2();
  NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  return v3;
}

void NormalizingTranscriber.__allocating_init(locale:preset:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  v3 = sub_1AC79FB18();
  v4 = OUTLINED_FUNCTION_40(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v11 = *v2;
  v12 = v2[1];
  v14 = v2[2];
  v13 = v2[3];
  (*(v6 + 16))(v10 - v9, v0, v3);

  NormalizingTranscriber.__allocating_init(locale:contentHints:reportingOptions:attributeOptions:)();

  v15 = *(v6 + 8);
  v16 = OUTLINED_FUNCTION_170();
  v17(v16);
  OUTLINED_FUNCTION_105();
}

void NormalizingTranscriber.__allocating_init(locale:contentHints:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_25();
  v4 = type metadata accessor for NormalizingTranscriber.ModelOptions(v3);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6();
  v9 = (v8 - v7);
  v10 = sub_1AC79FB18();
  v11 = OUTLINED_FUNCTION_40(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  (*(v13 + 16))(v17 - v16, v0, v10);
  *v9 = 0;
  v9[1] = 0;
  v18 = v5[7];
  v19 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_50_10(v9 + v18, v20, v21, v19);
  v22 = (v9 + v5[8]);
  *v22 = 0;
  v22[1] = 0;
  *(v9 + v5[9]) = MEMORY[0x1E69E7CC0];
  *(v9 + v5[10]) = 0;
  *(v9 + v5[11]) = 0;
  *(v9 + v5[12]) = 0;
  *(v9 + v5[13]) = 0;
  *(v9 + v5[14]) = &unk_1F212FFB8;
  v23 = *(v2 + 48);
  v24 = *(v2 + 52);
  swift_allocObject();
  NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)();
  v25 = *(v13 + 8);
  v26 = OUTLINED_FUNCTION_50_7();
  v27(v26);
  OUTLINED_FUNCTION_105();
}

uint64_t NormalizingTranscriber.ModelOptions.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = v2[5];
  v4 = sub_1AC79F7F8();
  result = OUTLINED_FUNCTION_50_10(a1 + v3, v5, v6, v4);
  v8 = (a1 + v2[6]);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + v2[7]) = MEMORY[0x1E69E7CC0];
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;
  *(a1 + v2[12]) = &unk_1F212FFE0;
  return result;
}

void NormalizingTranscriber.init(locale:contentHints:modelOptions:transcriptionOptions:reportingOptions:attributeOptions:)()
{
  OUTLINED_FUNCTION_104();
  v198 = v1;
  v205 = v2;
  v195 = v3;
  v5 = v4;
  v7 = v6;
  v193 = v8;
  v194 = v0;
  v179 = *v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  v190 = &v178 - v13;
  v192 = sub_1AC79FB18();
  v14 = OUTLINED_FUNCTION_40(v192);
  v191 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_6();
  v189 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v21 = OUTLINED_FUNCTION_167(v20);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v202 = &v178 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v203 = &v178 - v26;
  v199 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  v27 = OUTLINED_FUNCTION_80(v199);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_6();
  v200 = v31 - v30;
  v201 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v32 = *(v5 + v201[12]);
  v33 = *(v32 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v204 = v7;
  v197 = v5;
  v181 = v32;
  if (v33)
  {
    v207[0] = MEMORY[0x1E69E7CC0];
    sub_1AC6310CC(0, v33, 0);
    v35 = v207[0];
    v36 = (v32 + 32);
    OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_113();
    OUTLINED_FUNCTION_112();
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_52_1();
    OUTLINED_FUNCTION_110_1();
    v46 = 0x746F687354;
    do
    {
      v47 = *v36++;
      v48 = 0xE90000000000006ELL;
      v49 = 0x6F69746174636944;
      switch(v47)
      {
        case 1:
          v49 = v41;
          v48 = v40;
          break;
        case 2:
          v49 = v42;
          v48 = 0xE900000000000068;
          break;
        case 3:
          v49 = 0xD000000000000011;
          v48 = v39;
          break;
        case 4:
          v48 = 0xE90000000000006CLL;
          v49 = v43;
          break;
        case 5:
          v48 = 0xEA0000000000676ELL;
          v49 = v44;
          break;
        case 6:
          v49 = 0x6F69746174636944;
          v48 = v45;
          break;
        case 7:
          v48 = 0xE700000000000000;
          v49 = v37;
          break;
        case 8:
          v48 = 0xE800000000000000;
          v49 = v38;
          break;
        case 9:
          v48 = 0xE500000000000000;
          v49 = v46;
          break;
        default:
          break;
      }

      v207[0] = v35;
      v51 = *(v35 + 16);
      v50 = *(v35 + 24);
      if (v51 >= v50 >> 1)
      {
        v196 = v39;
        v53 = v40;
        sub_1AC6310CC(v50 > 1, v51 + 1, 1);
        OUTLINED_FUNCTION_110_1();
        OUTLINED_FUNCTION_52_1();
        OUTLINED_FUNCTION_111();
        OUTLINED_FUNCTION_112();
        OUTLINED_FUNCTION_113();
        OUTLINED_FUNCTION_114();
        v40 = v53;
        v39 = v196;
        v35 = v207[0];
      }

      *(v35 + 16) = v51 + 1;
      v52 = v35 + 16 * v51;
      *(v52 + 32) = v49;
      *(v52 + 40) = v48;
      --v33;
    }

    while (v33);
    v5 = v197;
    v7 = v204;
    v34 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v207[0] = v34;
  v55 = v7 + 56;
  v54 = *(v7 + 56);
  v56 = *(v7 + 32);
  OUTLINED_FUNCTION_117_0();
  v59 = v58 & v57;
  v61 = (v60 + 63) >> 6;

  v62 = 0;
  while (v59)
  {
LABEL_24:
    v64 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v65 = (v62 << 9) | (8 * v64);
    v33 = *(*(v7 + 48) + v65);
    if (v33 >= 3)
    {
      v66 = sub_1AC61C264(*(*(v7 + 48) + v65));
      MEMORY[0x1B26E8CF0](v66);
      if (*((v207[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v207[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();
      v34 = v207[0];
    }
  }

  while (1)
  {
    v63 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      __break(1u);
      goto LABEL_100;
    }

    if (v63 >= v61)
    {
      break;
    }

    v59 = *(v55 + 8 * v63);
    ++v62;
    if (v59)
    {
      v62 = v63;
      goto LABEL_24;
    }
  }

  if (off_1ED937D60 != -1)
  {
    goto LABEL_101;
  }

LABEL_29:
  v67 = sub_1AC79FDE8();
  v68 = __swift_project_value_buffer(v67, qword_1ED9386C8);
  v69 = sub_1AC61C24C(v34);
  v70 = v203;
  if (v69 <= 1)
  {
    v186 = v34;
    v71 = sub_1AC79F7F8();
    OUTLINED_FUNCTION_50_10(v70, v72, v73, v71);
    v74 = *(v7 + 16);
    v180 = v68;
    if (!v74 || (v75 = *(v7 + 40), sub_1AC7A0E78(), MEMORY[0x1B26E9A40](1), v76 = sub_1AC7A0EC8(), OUTLINED_FUNCTION_21_15(v76, *(v7 + 32)), (v77 & 1) == 0))
    {
LABEL_40:
      v188 = 0;
      goto LABEL_41;
    }

    while (1)
    {
      v78 = *(*(v7 + 48) + 8 * v33);
      if (v78)
      {
        v79 = v78 == 2;
      }

      else
      {
        v79 = 1;
      }

      if (v79)
      {
        sub_1AC5D9454(v78);
      }

      else if (v78 == 1)
      {
        v188 = 1;
        sub_1AC5D9454(1);
LABEL_41:
        v82 = *v5;
        v81 = v5[1];
        v83 = v201;
        sub_1AC61CB64(v5 + v201[5], v202);
        v84 = *(v5 + v83[7]);
        v85 = *(v5 + v83[9]);
        v86 = v5;
        v87 = (v5 + v83[6]);
        v88 = v87[1];
        v184 = *v87;
        v89 = *(v7 + 16);
        v196 = v84;
        v187 = v85;
        v185 = v81;
        v183 = v88;
        v182 = v82;
        if (!v89)
        {

LABEL_49:
          v95 = 0;
          goto LABEL_50;
        }

        v90 = *(v7 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](2);
        v91 = sub_1AC7A0EC8() & ~(-1 << *(v7 + 32));
        v92 = *(v55 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8));

        if (((v92 >> v91) & 1) == 0)
        {
          goto LABEL_49;
        }

        while (2)
        {
          v93 = *(*(v7 + 48) + 8 * v91);
          if (v93 < 2)
          {
            sub_1AC5D9454(v93);
            goto LABEL_46;
          }

          if (v93 != 2)
          {
LABEL_46:
            OUTLINED_FUNCTION_8_16();
            if ((v94 & 1) == 0)
            {
              goto LABEL_49;
            }

            continue;
          }

          break;
        }

        sub_1AC5D9454(2);
        v95 = 1;
LABEL_50:
        v96 = *(v86 + v201[8]);
        v97 = *(v86 + v201[10]);
        v98 = *(v86 + v201[11]);
        v99 = v186;
        if (sub_1AC61C24C(v186))
        {
          sub_1AC61C25C(0, (v99 & 0xC000000000000001) == 0, v99);
          if ((v99 & 0xC000000000000001) != 0)
          {

            v101 = MEMORY[0x1B26E95B0](0, v99);
          }

          else
          {
            v100 = *(v99 + 32);

            v101 = v100;
          }

          v102 = v101;
        }

        else
        {

          v102 = 0;
        }

        v103 = v200;
        sub_1AC623D54(v203, v200);
        v104 = v199;
        *(v103 + v199[5]) = v188;
        v105 = (v103 + v104[6]);
        v106 = v185;
        *v105 = v182;
        v105[1] = v106;
        sub_1AC623D54(v202, v103 + v104[7]);
        *(v103 + v104[9]) = v196;
        v107 = (v103 + v104[8]);
        v108 = v183;
        *v107 = v184;
        v107[1] = v108;
        *(v103 + v104[10]) = v95;
        *(v103 + v104[11]) = v96;
        *(v103 + v104[12]) = v187;
        *(v103 + v104[15]) = v97;
        *(v103 + v104[13]) = v98;
        *(v103 + v104[14]) = v102;
        v109 = v204;
        if (!*(v204 + 16))
        {
          v116 = 0;
          v112 = v205;
          v5 = v195;
          goto LABEL_66;
        }

        v110 = *(v204 + 40);
        sub_1AC7A0E78();
        MEMORY[0x1B26E9A40](0);
        v111 = sub_1AC7A0EC8();
        OUTLINED_FUNCTION_21_15(v111, *(v109 + 32));
        v112 = v205;
        v5 = v195;
        if ((v113 & 1) == 0)
        {
LABEL_61:
          v116 = 0;
          goto LABEL_66;
        }

        while (2)
        {
          v114 = *(*(v109 + 48) + 8 * v98);
          if ((v114 - 1) < 2)
          {
            sub_1AC5D9454(v114);
            goto LABEL_60;
          }

          if (v114)
          {
LABEL_60:
            OUTLINED_FUNCTION_8_16();
            if ((v115 & 1) == 0)
            {
              goto LABEL_61;
            }

            continue;
          }

          break;
        }

        sub_1AC5D9454(0);
        v116 = 1;
LABEL_66:
        v117 = sub_1AC637EF8(3, v112);
        v118 = sub_1AC637EF8(2, v112);
        v119 = v118;
        if (v117)
        {
          v120 = 1;
          if (v116 & v118)
          {
            v121 = 0;
            v122 = 0;
            goto LABEL_76;
          }

LABEL_70:
          v123 = sub_1AC79FDC8();
          v124 = sub_1AC7A05D8();
          if (os_log_type_enabled(v123, v124))
          {
            v125 = swift_slowAlloc();
            *v125 = 67110144;
            *(v125 + 4) = v117 & 1;
            *(v125 + 8) = 1024;
            *(v125 + 10) = v116;
            *(v125 + 14) = 1024;
            *(v125 + 16) = v119 & 1;
            *(v125 + 20) = 1024;
            *(v125 + 22) = v120 & 1;
            *(v125 + 26) = 1024;
            *(v125 + 28) = 0;
            _os_log_impl(&dword_1AC5BC000, v123, v124, "NormalizingTranscriber: Remapped selected (repSing %{BOOL}d, expShort %{BOOL}d, repFreq %{BOOL}d) to actual (single %{BOOL}d, longer %{BOOL}d)", v125, 0x20u);
            MEMORY[0x1B26EAB10](v125, -1, -1);
          }

          v121 = 0;
          if (v120)
          {
            v120 = 1;
            v122 = 0;
            v112 = v205;
            goto LABEL_76;
          }

          v112 = v205;
        }

        else
        {
          LOBYTE(v120) = v118 ^ 1;
          LOBYTE(v121) = v118 ^ 1;
          if (v116)
          {
            goto LABEL_70;
          }
        }

        v122 = v121;
        v121 = sub_1AC637EF8(4, v112);
        v120 = 0;
LABEL_76:
        sub_1AC6CE700(v5);
        v127 = v126;
        LODWORD(v202) = v121;
        LODWORD(v203) = v120;

        v207[0] = sub_1AC6090E4(v127);
        sub_1AC6102B0(v206, 0, v128, v129, v130, v131, v132, v133, v178, v179);
        if (v122)
        {
          sub_1AC6102B0(v206, 2, v134, v135, v136, v137, v138, v139, v178, v179);
        }

        v141 = v112 + 56;
        v140 = *(v112 + 56);
        v142 = *(v112 + 32);
        OUTLINED_FUNCTION_117_0();
        v7 = v144 & v143;
        v55 = (v145 + 63) >> 6;

        v33 = 0;
        v34 = MEMORY[0x1E69E7CC0];
        while (v7)
        {
LABEL_84:
          OUTLINED_FUNCTION_57_2();
          v148 = *(*(v112 + 48) + (v147 | (v33 << 6)));
          switch(v148)
          {
            case 2:
            case 3:
            case 4:
              continue;
            case 5:
              v148 = 2;
              goto LABEL_89;
            case 6:
              v148 = 3;
              goto LABEL_89;
            case 7:
              v148 = 4;
              goto LABEL_89;
            case 8:
              v148 = 5;
              goto LABEL_89;
            default:
LABEL_89:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v149 = *(v34 + 16);
                sub_1AC60DC84();
                v34 = v150;
              }

              v5 = *(v34 + 16);
              if (v5 >= *(v34 + 24) >> 1)
              {
                sub_1AC60DC84();
                v34 = v151;
              }

              *(v34 + 16) = v5 + 1;
              *(v5 + v34 + 32) = v148;
              v112 = v205;
              break;
          }
        }

        while (1)
        {
          v146 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v146 >= v55)
          {

            v152 = sub_1AC6091C8(v34);
            sub_1AC62428C(v198);
            v154 = sub_1AC6090B4(v153);
            v155 = [objc_opt_self() standardUserDefaults];
            v156 = sub_1AC79FF58();
            v157 = [v155 BOOLForKey_];

            v201 = v152;
            v196 = v154;
            v158 = (v157 & 1) == 0 && *(v181 + 16) && (*(v181 + 32) & 0xFC) == 4;
            v159 = v191;
            v195 = *(v191 + 16);
            v160 = v189;
            v161 = v193;
            v162 = v192;
            (v195)(v189, v193, v192);
            v163 = v190;
            sub_1AC76032C(v200, v190);
            __swift_storeEnumTagSinglePayload(v163, 0, 1, v199);
            v164 = v207[0];
            v165 = type metadata accessor for TranscriberCommon(0);
            v166 = *(v165 + 48);
            v167 = *(v165 + 52);
            swift_allocObject();
            LOBYTE(v177) = v158;
            sub_1AC74B560(v160, v163, v35, 3, v203, v202 & 1, v164, v201, v196, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189);
            v169 = v168;
            (*(v159 + 8))(v161, v162);
            sub_1AC760390();
            v170 = v194;
            *(v194 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common) = v169;
            (v195)(v170 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale, v169 + OBJC_IVAR____TtC6Speech17TranscriberCommon_locale, v162);
            *(v170 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_contentHints) = v204;
            sub_1AC7603E4(v197, v170 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_modelOptions);
            *(v170 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_reportingOptions) = v205;
            *(v170 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_resultAttributeOptions) = v198;
            OUTLINED_FUNCTION_105();
            return;
          }

          v7 = *(v141 + 8 * v146);
          ++v33;
          if (v7)
          {
            v33 = v146;
            goto LABEL_84;
          }
        }

LABEL_100:
        __break(1u);
LABEL_101:
        swift_once();
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_8_16();
      if ((v80 & 1) == 0)
      {
        goto LABEL_40;
      }
    }
  }

  v171 = sub_1AC79FDC8();
  v172 = sub_1AC7A05F8();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v207[0] = v174;
    *v173 = 136315138;
    *(v173 + 4) = sub_1AC5CFE74(0xD000000000000046, 0x80000001AC7BAC30, v207);
    _os_log_impl(&dword_1AC5BC000, v171, v172, "Failed precondition: %s", v173, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v174);
    MEMORY[0x1B26EAB10](v174, -1, -1);
    MEMORY[0x1B26EAB10](v173, -1, -1);
  }

  __break(1u);
  v175 = *(*v194 + 48);
  v176 = *(*v194 + 52);
  swift_deallocPartialClassInstance();
  __break(1u);
}

void sub_1AC75CFC8()
{
  sub_1AC724938();
  qword_1EB56DFA8 = MEMORY[0x1E69E7CD0];
  unk_1EB56DFB0 = v0;
  qword_1EB56DFB8 = MEMORY[0x1E69E7CD0];
  unk_1EB56DFC0 = MEMORY[0x1E69E7CD0];
}

uint64_t NormalizingTranscriber.Preset.init(contentHints:reportingOptions:attributeOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = MEMORY[0x1E69E7CD0];
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v4;
  return result;
}

uint64_t static NormalizingTranscriber.Preset.progressiveTranscription.getter()
{
  if (qword_1EB56B620 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56DFA8);
}

void sub_1AC75D09C()
{
  sub_1AC724938();
  v1 = v0;
  sub_1AC72484C();
  qword_1EB56DFC8 = MEMORY[0x1E69E7CD0];
  unk_1EB56DFD0 = v1;
  qword_1EB56DFD8 = v2;
  unk_1EB56DFE0 = MEMORY[0x1E69E7CD0];
}

uint64_t static NormalizingTranscriber.Preset.research.getter()
{
  if (qword_1EB56B628 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9(&qword_1EB56DFC8);
}

uint64_t NormalizingTranscriber.Preset.init(contentHints:transcriptionOptions:reportingOptions:attributeOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a3;
  a5[2] = a4;
  a5[3] = a2;
  return result;
}

uint64_t NormalizingTranscriber.Preset.contentHints.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t NormalizingTranscriber.Preset.reportingOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t NormalizingTranscriber.Preset.attributeOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t NormalizingTranscriber.Preset.transcriptionOptions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t static NormalizingTranscriber.Preset.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  sub_1AC61EB0C(*a1, *a2);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC623E28(v2, v5) & 1) == 0)
  {
    return 0;
  }

  v9 = OUTLINED_FUNCTION_57_0();
  if ((sub_1AC623E2C(v9, v10) & 1) == 0)
  {
    return 0;
  }

  v11 = OUTLINED_FUNCTION_39();

  return sub_1AC623E30(v11, v12);
}

uint64_t NormalizingTranscriber.Preset.hash(into:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1AC6239EC(a1, v3);
  v7 = OUTLINED_FUNCTION_170();
  sub_1AC623E34(v7, v8);
  sub_1AC623E34(a1, v6);
  v9 = OUTLINED_FUNCTION_39();

  return sub_1AC623E38(v9, v10);
}

uint64_t NormalizingTranscriber.Preset.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  OUTLINED_FUNCTION_85_1();
  sub_1AC6239EC(v6, v1);
  sub_1AC623E34(v6, v2);
  sub_1AC623E34(v6, v4);
  sub_1AC623E38(v6, v3);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75D43C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1AC7A0E78();
  sub_1AC6239EC(v6, v1);
  sub_1AC623E34(v6, v2);
  sub_1AC623E34(v6, v4);
  sub_1AC623E38(v6, v3);
  return sub_1AC7A0EC8();
}

id static NormalizingTranscriber.ContentHint.customLanguageModel(url:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1AC79F7F8();
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v12 = v11 - v10;
  sub_1AC5CF764(0, &qword_1EB56D120, off_1E797AD28);
  (*(v7 + 16))(v12, a1, v4);
  result = sub_1AC75D5B4(v12);
  *a2 = result;
  return result;
}

id sub_1AC75D5B4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1AC79F788();
  v4 = [v2 initWithLanguageModel_];

  v5 = sub_1AC79F7F8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

BOOL static NormalizingTranscriber.ContentHint.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v2 == 2)
    {
      if (v3 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v3 < 3)
      {
        return 0;
      }

      sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
      if ((OUTLINED_FUNCTION_132() & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  return !v3;
}

uint64_t NormalizingTranscriber.ContentHint.hash(into:)()
{
  v1 = *v0;
  if (!*v0)
  {
    v2 = 0;
    return MEMORY[0x1B26E9A40](v2);
  }

  if (v1 == 1)
  {
    v2 = 1;
    return MEMORY[0x1B26E9A40](v2);
  }

  if (v1 == 2)
  {
    v2 = 2;
    return MEMORY[0x1B26E9A40](v2);
  }

  MEMORY[0x1B26E9A40](3);
  return sub_1AC7A0768();
}

uint64_t NormalizingTranscriber.ContentHint.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1B26E9A40](3);
        sub_1AC7A0768();
        return sub_1AC7A0EC8();
      }

      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.ModelOptions.geoLMRegionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t NormalizingTranscriber.ModelOptions.geoLMRegionID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.modelOverrideURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 20);

  return sub_1AC61CB64(v3, a1);
}

uint64_t NormalizingTranscriber.ModelOptions.modelOverrideURL.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = v1 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 20);

  return sub_1AC633390(v0, v3);
}

uint64_t NormalizingTranscriber.ModelOptions.modelOverrideURL.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v0) + 20);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.taskForMemoryLock.getter()
{
  v1 = (v0 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_39();
}

uint64_t NormalizingTranscriber.ModelOptions.taskForMemoryLock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.taskForMemoryLock.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v0) + 24);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfiles.getter()
{
  v1 = *(v0 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 28));
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfiles.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfiles.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v0) + 28);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.enableParallelLoading.setter(char a1)
{
  result = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.enableParallelLoading.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v0) + 32);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.userIdMask.getter()
{
  v1 = *(v0 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 36));
}

uint64_t NormalizingTranscriber.ModelOptions.userIdMask.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 36);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.userIdMask.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v0) + 36);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfileContainers.getter()
{
  v1 = *(v0 + *(type metadata accessor for NormalizingTranscriber.ModelOptions(0) + 40));
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfileContainers.setter()
{
  v2 = OUTLINED_FUNCTION_25();
  v3 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v2) + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = v0;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.speechProfileContainers.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v0) + 40);
  return OUTLINED_FUNCTION_58();
}

uint64_t NormalizingTranscriber.ModelOptions.enableFullPayloadCorrection.setter(char a1)
{
  result = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NormalizingTranscriber.ModelOptions.enableFullPayloadCorrection.modify()
{
  v0 = OUTLINED_FUNCTION_25();
  v1 = *(type metadata accessor for NormalizingTranscriber.ModelOptions(v0) + 44);
  return OUTLINED_FUNCTION_58();
}

void static NormalizingTranscriber.ModelOptions.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1AC79F7F8();
  v28 = OUTLINED_FUNCTION_40(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C320, &qword_1AC7A87A0);
  OUTLINED_FUNCTION_80(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_49_1();
  v46 = v26[1];
  v47 = v24[1];
  if (v46)
  {
    if (!v47)
    {
      goto LABEL_19;
    }

    v48 = *v26 == *v24 && v46 == v47;
    if (!v48 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v47)
  {
    goto LABEL_19;
  }

  v49 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  v50 = v49[5];
  v51 = *(v42 + 48);
  sub_1AC61CB64(v26 + v50, v20);
  sub_1AC61CB64(v24 + v50, v20 + v51);
  OUTLINED_FUNCTION_14_7(v20);
  if (!v48)
  {
    sub_1AC61CB64(v20, v41);
    OUTLINED_FUNCTION_14_7(v20 + v51);
    if (!v52)
    {
      (*(v30 + 32))(v35, v20 + v51, v27);
      OUTLINED_FUNCTION_13_16();
      sub_1AC760448(v53, v54);
      v55 = sub_1AC79FED8();
      v56 = *(v30 + 8);
      v56(v35, v27);
      v56(v41, v27);
      sub_1AC5C720C(v20, &qword_1EB56BB68, &qword_1AC7A8490);
      if ((v55 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_21;
    }

    (*(v30 + 8))(v41, v27);
LABEL_18:
    sub_1AC5C720C(v20, &qword_1EB56C320, &qword_1AC7A87A0);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_14_7(v20 + v51);
  if (!v48)
  {
    goto LABEL_18;
  }

  sub_1AC5C720C(v20, &qword_1EB56BB68, &qword_1AC7A8490);
LABEL_21:
  v57 = v49[6];
  v58 = (v26 + v57);
  v59 = *(v26 + v57 + 8);
  v60 = (v24 + v57);
  v61 = v60[1];
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_19;
    }

    v62 = *v58 == *v60 && v59 == v61;
    if (!v62 && (sub_1AC7A0D38() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v61)
  {
    goto LABEL_19;
  }

  v63 = v49[7];
  v64 = *(v26 + v63);
  v65 = *(v24 + v63);
  sub_1AC6290FC();
  if ((v66 & 1) != 0 && *(v26 + v49[8]) == *(v24 + v49[8]))
  {
    v67 = v49[9];
    v68 = *(v26 + v67);
    v69 = *(v24 + v67);
    if (v68)
    {
      if (!v69)
      {
        goto LABEL_19;
      }

      v70 = *(v24 + v67);

      sub_1AC630858(v68, v69);
      v72 = v71;

      if ((v72 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v69)
    {
      goto LABEL_19;
    }

    v73 = v49[10];
    v74 = *(v26 + v73);
    v75 = *(v24 + v73);
    if (v74)
    {
      if (!v75)
      {
        goto LABEL_19;
      }

      v76 = *(v24 + v73);

      v77 = sub_1AC629308(v74, v75);

      if ((v77 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v75)
    {
      goto LABEL_19;
    }

    if (*(v26 + v49[11]) == *(v24 + v49[11]))
    {
      v78 = v49[12];
      v79 = *(v26 + v78);
      v80 = *(v24 + v78);
      sub_1AC6294D8();
    }
  }

LABEL_19:
  OUTLINED_FUNCTION_105();
}

void NormalizingTranscriber.ModelOptions.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_104();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_25();
  v24 = sub_1AC79F7F8();
  v25 = OUTLINED_FUNCTION_40(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_6();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  OUTLINED_FUNCTION_167(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  if (v21[1])
  {
    v39 = *v21;
    OUTLINED_FUNCTION_83();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v40 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  sub_1AC61CB64(v21 + v40[5], v38);
  if (__swift_getEnumTagSinglePayload(v38, 1, v24) == 1)
  {
    OUTLINED_FUNCTION_80_1();
  }

  else
  {
    (*(v27 + 32))(v32, v38, v24);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_13_16();
    sub_1AC760448(v41, v42);
    sub_1AC79FE58();
    (*(v27 + 8))(v32, v24);
  }

  v43 = (v21 + v40[6]);
  if (v43[1])
  {
    v44 = *v43;
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_50_7();
    sub_1AC7A0048();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v45 = *(v21 + v40[7]);
  sub_1AC633F38();
  v46 = *(v21 + v40[8]);
  sub_1AC7A0E98();
  v47 = *(v21 + v40[9]);
  if (v47)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC6346E0(v20, v47);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (*(v21 + v40[10]))
  {
    OUTLINED_FUNCTION_83();
    sub_1AC633E98();
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  v48 = *(v21 + v40[11]);
  sub_1AC7A0E98();
  v49 = *(v21 + v40[12]);
  sub_1AC633D0C();
  OUTLINED_FUNCTION_105();
}

uint64_t NormalizingTranscriber.ModelOptions.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  NormalizingTranscriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75E38C()
{
  sub_1AC7A0E78();
  NormalizingTranscriber.ModelOptions.hash(into:)(v9, v0, v1, v2, v3, v4, v5, v6, v8, v9[0], v9[1], v9[2], v9[3], v9[4], v9[5], v9[6], v9[7], v9[8], v9[9], v9[10]);
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.TranscriptionOption.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](0);
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.ReportingOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75E528()
{
  v2 = *v0;
  sub_1AC7A0E78();
  NormalizingTranscriber.ReportingOption.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t NormalizingTranscriber.ResultAttributeOption.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_85_1();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t static NormalizingTranscriber.supportedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC70C79C();
}

uint64_t static NormalizingTranscriber.supportedLocale(equivalentTo:)()
{
  v1 = OUTLINED_FUNCTION_25();
  type metadata accessor for TranscriberCommon(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1AC6AEC88;

  return sub_1AC740D54();
}

uint64_t static NormalizingTranscriber.installedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  type metadata accessor for AssetsInventory();
  swift_initStaticObject();
  OUTLINED_FUNCTION_116();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC70D1B4(v0);
}

uint64_t NormalizingTranscriber.selectedLocales.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C018, &unk_1AC7A8480);
  OUTLINED_FUNCTION_25();
  v1 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40(v1);
  v3 = v2;
  v5 = *(v4 + 72);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AC7A6D00;
  (*(v3 + 16))(v7 + v6, v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale, v1);
  return v7;
}

uint64_t sub_1AC75E8FC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC741794();
}

void static NormalizingTranscriber.Result.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v10 = *a1;
  v11 = a1[1];
  v2 = *(a1 + 6);
  v3 = *(a1 + 7);
  v5 = *(a1 + 8);
  v4 = *(a1 + 9);
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v9 = *(a2 + 8);
  v8 = *(a2 + 9);
  if (sub_1AC7A0548())
  {
    OUTLINED_FUNCTION_57_0();
    if (sub_1AC7A06A8())
    {
      OUTLINED_FUNCTION_39();

      sub_1AC6285F8();
    }
  }
}

void NormalizingTranscriber.Result.hash(into:)()
{
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  sub_1AC7A0568();
  OUTLINED_FUNCTION_170();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_50_7();

  sub_1AC6336F0();
}

uint64_t NormalizingTranscriber.Result.hashValue.getter()
{
  v6 = *v0;
  v7 = v0[1];
  v8 = v0[2];
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  OUTLINED_FUNCTION_85_1();
  sub_1AC7A0568();
  sub_1AC7A06E8();
  sub_1AC6336F0();
  return sub_1AC7A0EC8();
}

double sub_1AC75EBB0()
{
  v0 = NormalizingTranscriber.Result.range.getter(v10);
  *&result = OUTLINED_FUNCTION_21_0(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

uint64_t sub_1AC75EC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t NormalizingTranscriber.muxMultisegmentResults.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_40(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_1();
  v5 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);
  v6 = OUTLINED_FUNCTION_77_0();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DFE8, &qword_1AC7B3810);
  OUTLINED_FUNCTION_7();
  sub_1AC5C8BE0(v8, &qword_1EB56C348, &qword_1AC7A8820);
  OUTLINED_FUNCTION_47();
  return sub_1AC7A0B08();
}

uint64_t sub_1AC75EDA8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AC75EDCC, 0, 0);
}

void sub_1AC75EDCC()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E078, &unk_1AC7B3FA8);
  sub_1AC7A0BA8();
  v2 = 0;
  v3 = *(v1 + 64);
  v47 = v1 + 64;
  v49 = v1;
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_117_0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v48 = v11 + 64;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_57_2();
LABEL_8:
      v15 = v12 | (v2 << 6);
      v16 = (*(v49 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = 33 * v15;
      v20 = *(v49 + 56) + 264 * v15;
      v50 = *v20;
      v51 = *(v20 + 16);
      v52 = *(v20 + 32);
      v21 = *(v20 + 48);
      v22 = *(v20 + 64);
      v23 = *(v20 + 72);
      v25 = *(v20 + 80);
      v24 = *(v20 + 88);
      v26 = *(v20 + 96);
      v27 = *(v20 + 104);
      v28 = *(v20 + 160);
      v29 = *(v20 + 168);
      v30 = *(v20 + 200);
      v31 = *(v20 + 224);
      v32 = *(v20 + 232);
      *&v53[3] = *(v20 + 108);
      *&v53[19] = *(v20 + 124);
      *&v53[35] = *(v20 + 140);
      v54 = *(v20 + 192);
      v55 = *(v20 + 256);
      v33 = (v15 >> 3) & 0x1FFFFFFFFFFFFFF8;
      v34 = *(v48 + v33) | (1 << v15);
      v35 = (v5[6] + 16 * v15);
      v36 = *(v20 + 240);
      v37 = *(v20 + 208);
      v38 = *(v20 + 176);
      v39 = *(v20 + 56);
      *(v48 + v33) = v34;
      *v35 = v18;
      v35[1] = v17;
      v40 = v5[7] + 8 * v19;
      *v40 = v50;
      *(v40 + 16) = v51;
      *(v40 + 32) = v52;
      *(v40 + 48) = v21;
      *(v40 + 56) = v39;
      *(v40 + 64) = v22;
      *(v40 + 72) = v23;
      *(v40 + 80) = v25;
      *(v40 + 88) = v24;
      *(v40 + 96) = v26;
      *(v40 + 104) = v27;
      *(v40 + 152) = *&v53[47];
      *(v40 + 137) = *&v53[32];
      *(v40 + 121) = *&v53[16];
      *(v40 + 105) = *v53;
      *(v40 + 160) = v28;
      *(v40 + 168) = v29;
      *(v40 + 176) = v38;
      *(v40 + 192) = v54;
      *(v40 + 200) = v30;
      *(v40 + 208) = v37;
      *(v40 + 224) = v31;
      *(v40 + 232) = v32;
      *(v40 + 240) = v36;
      *(v40 + 256) = v55;
      v41 = v5[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        break;
      }

      v5[2] = v43;
      v44 = v5;

      sub_1AC63482C(v28);

      v5 = v44;
      if (!v8)
      {
        goto LABEL_3;
      }
    }

LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_3:
    v13 = v2;
    while (1)
    {
      v2 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v2 >= v10)
      {
        break;
      }

      v14 = *(v47 + 8 * v2);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_8;
      }
    }

    **(v46 + 16) = v5;
    v45 = *(v46 + 8);

    v45();
  }
}

uint64_t static NormalizingTranscriber.MultisegmentResult.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v80 = *a1;
  v81 = v2;
  v82 = a1[2];
  v3 = *(a1 + 6);
  v4 = *(a1 + 7);
  v6 = *(a1 + 8);
  v5 = *(a1 + 9);
  v68 = *(a1 + 11);
  v69 = *(a1 + 10);
  v67 = *(a1 + 12);
  v65 = *(a1 + 104);
  v7 = *(a1 + 124);
  v74 = *(a1 + 108);
  v75 = v7;
  v76 = *(a1 + 140);
  v61 = *(a1 + 20);
  v62 = *(a1 + 21);
  v63 = *(a1 + 22);
  v8 = *(a1 + 23);
  v57 = *(a1 + 192);
  v53 = *(a1 + 216);
  v54 = *(a1 + 200);
  v52 = *(a1 + 232);
  v51 = *(a1 + 30);
  v43 = *(a1 + 31);
  v45 = *(a1 + 256);
  v9 = a2[1];
  v83 = *a2;
  v84 = v9;
  v85 = a2[2];
  v10 = *(a2 + 6);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  v13 = *(a2 + 9);
  v15 = *(a2 + 10);
  v14 = *(a2 + 11);
  v66 = *(a2 + 12);
  v64 = *(a2 + 104);
  v16 = *(a2 + 140);
  v17 = *(a2 + 108);
  v78 = *(a2 + 124);
  v79 = v16;
  v77 = v17;
  v58 = *(a2 + 20);
  v59 = *(a2 + 21);
  v60 = *(a2 + 22);
  v18 = *(a2 + 23);
  v56 = *(a2 + 192);
  v55 = *(a2 + 26);
  v46 = *(a2 + 25);
  v47 = *(a2 + 27);
  v48 = *(a2 + 28);
  v49 = *(a2 + 232);
  v50 = *(a2 + 30);
  v42 = *(a2 + 31);
  v44 = *(a2 + 256);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1AC7A06A8() & 1) == 0)
  {
    return 0;
  }

  sub_1AC6285F8();
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628640();
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628938();
  if ((v21 & 1) == 0)
  {
    return 0;
  }

  sub_1AC628F50();
  v23 = v22;
  result = 0;
  if ((v23 & 1) != 0 && v65 == v64)
  {
    if ((sub_1AC7A0548() & 1) == 0)
    {
      return 0;
    }

    if (v61)
    {
      if (v58)
      {
        v25 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v25);
        v26 = OUTLINED_FUNCTION_16_2();
        sub_1AC63482C(v26);
        v27 = OUTLINED_FUNCTION_15();
        sub_1AC63482C(v27);
        sub_1AC6305D8();
        if (v28)
        {
          sub_1AC6306C8(v62, v59);
          v30 = v29;
          v31 = OUTLINED_FUNCTION_16_2();
          sub_1AC63486C(v31);

          v32 = OUTLINED_FUNCTION_15();
          sub_1AC63486C(v32);
          result = 0;
          if ((v30 & 1) == 0 || v63 != v60)
          {
            return result;
          }

LABEL_24:
          if (v57)
          {
            if (!v56)
            {
              return 0;
            }
          }

          else
          {
            v39 = v56;
            if (v8 != v18)
            {
              v39 = 1;
            }

            if (v39)
            {
              return 0;
            }
          }

          if (*(&v54 + 1))
          {
            v72[0] = v54;
            v72[1] = v53;
            v73 = v52;
            if (v55)
            {
              v70[0] = v46;
              v70[1] = v55;
              v70[2] = v47;
              v70[3] = v48;
              v71 = v49 & 1;
              v40 = static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v72, v70);
              swift_bridgeObjectRetain_n();

              result = 0;
              if ((v40 & 1) == 0 || v51 != v50)
              {
                return result;
              }

LABEL_38:
              if (v45)
              {
                if (v44)
                {
                  return 1;
                }
              }

              else
              {
                v41 = v44;
                if (v43 != v42)
                {
                  v41 = 1;
                }

                if ((v41 & 1) == 0)
                {
                  return 1;
                }
              }

              return 0;
            }
          }

          else if (!v55)
          {

            if (v51 != v50)
            {
              return 0;
            }

            goto LABEL_38;
          }

          return 0;
        }

        v38 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v38);

        v37 = OUTLINED_FUNCTION_15();
LABEL_20:
        sub_1AC63486C(v37);
        return 0;
      }

      v34 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v34);
      sub_1AC63482C(0);
      v35 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v35);
    }

    else
    {
      sub_1AC63482C(0);
      if (!v58)
      {
        sub_1AC63482C(0);
        sub_1AC63486C(0);
        goto LABEL_24;
      }

      v33 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v33);
    }

    v36 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v36);
    v37 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  return result;
}

uint64_t NormalizingTranscriber.MultisegmentResult.hash(into:)(const void *a1)
{
  v30 = *v1;
  v31 = v1[1];
  v32 = v1[2];
  v3 = *(v1 + 6);
  v4 = *(v1 + 7);
  v6 = *(v1 + 8);
  v5 = *(v1 + 9);
  v7 = *(v1 + 10);
  v8 = *(v1 + 11);
  v9 = *(v1 + 12);
  v22 = *(v1 + 104);
  v28 = *(v1 + 124);
  v29 = *(v1 + 140);
  v27 = *(v1 + 108);
  v10 = *(v1 + 20);
  v16 = *(v1 + 21);
  v17 = *(v1 + 22);
  v23 = *(v1 + 192);
  v18 = *(v1 + 25);
  v19 = *(v1 + 27);
  v20 = *(v1 + 28);
  v21 = *(v1 + 232);
  v24 = *(v1 + 26);
  v25 = *(v1 + 30);
  v14 = *(v1 + 23);
  v15 = *(v1 + 31);
  v26 = *(v1 + 256);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_170();
  sub_1AC6336F0();
  sub_1AC633C28();
  OUTLINED_FUNCTION_50_7();
  sub_1AC6337D8();
  sub_1AC633790();
  MEMORY[0x1B26E9A40](v22);
  sub_1AC7A0568();
  if (v10)
  {
    OUTLINED_FUNCTION_83();
    sub_1AC63459C(a1, v10);
    sub_1AC634414(a1, v16);
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x1B26E9A70](v11);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_80_1();
    if (v24)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)();

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x1B26E9A70](v12);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v25);
  if (v26)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v15);
}

uint64_t NormalizingTranscriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  NormalizingTranscriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

double sub_1AC75F7E8()
{
  v0 = NormalizingTranscriber.MultisegmentResult.range.getter(v10);
  *&result = OUTLINED_FUNCTION_21_0(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1], v8).n128_u64[0];
  return result;
}

uint64_t sub_1AC75F830()
{
  sub_1AC7A0E78();
  NormalizingTranscriber.MultisegmentResult.hash(into:)(v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC75F86C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC75F880()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0[3] + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AC75F920;
  v3 = v0[2];

  return sub_1AC743644();
}

uint64_t sub_1AC75F920()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 32);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1AC75FA04()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_85_0(v2);

  return static NormalizingTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC75FA8C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v3 = *(v1 + 24);
  v6 = *v0;
  *(v2 + 32) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1AC75FB84, 0, 0);
}

uint64_t sub_1AC75FB84()
{
  v1 = v0[4];
  v2 = v0[2] + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale;
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1AC6F47B8(sub_1AC637BAC, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1AC75FCCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);
  sub_1AC744558();
  return v2 & 1;
}

uint64_t NormalizingTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech22NormalizingTranscriber_locale;
  v2 = sub_1AC79FB18();
  OUTLINED_FUNCTION_80(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_contentHints);

  sub_1AC760390();
  v5 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_reportingOptions);

  v6 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_resultAttributeOptions);

  v7 = *(v0 + OBJC_IVAR____TtC6Speech22NormalizingTranscriber_common);

  return v0;
}

uint64_t NormalizingTranscriber.__deallocating_deinit()
{
  NormalizingTranscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC75FF5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6D32E0;

  return NormalizingTranscriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC75FFE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC6AEC88;

  return sub_1AC75F86C(a1);
}

uint64_t sub_1AC760080()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6BB1B8;

  return sub_1AC75FA04();
}

uint64_t sub_1AC7601B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D508;

  return static NormalizingTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC76023C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6D32DC;

  return static NormalizingTranscriber.supportedLocale(equivalentTo:)();
}

uint64_t sub_1AC76032C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriberCommon.ModelOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC760390()
{
  v1 = OUTLINED_FUNCTION_25();
  v3 = v2(v1);
  OUTLINED_FUNCTION_80(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1AC7603E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NormalizingTranscriber.ModelOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC760448(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AC760494()
{
  result = qword_1EB56DFF0;
  if (!qword_1EB56DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DFF0);
  }

  return result;
}

unint64_t sub_1AC7604EC()
{
  result = qword_1EB56DFF8;
  if (!qword_1EB56DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56DFF8);
  }

  return result;
}

unint64_t sub_1AC7605D0()
{
  result = qword_1EB56E018;
  if (!qword_1EB56E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E018);
  }

  return result;
}

unint64_t sub_1AC76066C()
{
  result = qword_1EB56E030;
  if (!qword_1EB56E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E030);
  }

  return result;
}

unint64_t sub_1AC760708()
{
  result = qword_1EB56E048;
  if (!qword_1EB56E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E048);
  }

  return result;
}

unint64_t sub_1AC760760()
{
  result = qword_1EB56E050;
  if (!qword_1EB56E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E050);
  }

  return result;
}

unint64_t sub_1AC7607B8()
{
  result = qword_1EB56E058;
  if (!qword_1EB56E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E058);
  }

  return result;
}

uint64_t sub_1AC760834(uint64_t a1)
{
  *(a1 + 8) = sub_1AC760448(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber);
  result = sub_1AC760448(&qword_1EB56C970, type metadata accessor for NormalizingTranscriber);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC7608D8(uint64_t a1)
{
  result = sub_1AC760448(&qword_1EB56C970, type metadata accessor for NormalizingTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC760930(uint64_t a1)
{
  result = sub_1AC760448(&qword_1EB56DA38, type metadata accessor for NormalizingTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC7609D8()
{
  result = sub_1AC79FB18();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for NormalizingTranscriber.ModelOptions(319);
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1AC760B34()
{
  sub_1AC622E1C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initStructMetadata();
  }
}

_BYTE *storeEnumTagSinglePayload for NormalizingTranscriber.TranscriptionOption(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for NormalizingTranscriber.ReportingOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NormalizingTranscriber.ResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1AC760E8C()
{
  result = qword_1EB56E070;
  if (!qword_1EB56E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E070);
  }

  return result;
}

uint64_t TranscriptionEvaluator.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t TranscriptionEvaluator.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t sub_1AC760F64()
{
  OUTLINED_FUNCTION_85();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = swift_task_alloc();
  v1[11] = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_85_0(v10);

  return sub_1AC76162C();
}

uint64_t sub_1AC760FFC()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 96) = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 80);

    return MEMORY[0x1EEE6DFA0](sub_1AC761134, v11, 0);
  }
}

uint64_t sub_1AC761134()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v10 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  v6 = *(v0 + 48);
  *(v5 + 16) = v10;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *(v5 + 48) = v6;
  *(v5 + 64) = v2;
  *(v5 + 72) = v1;
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_1AC761238;
  v8 = *(v0 + 96);

  return sub_1AC606220(&unk_1AC7B3FC8, v5);
}

uint64_t sub_1AC761238()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v8 = v7;
  v3[15] = v0;

  if (v0)
  {
    v9 = v3[10];

    return MEMORY[0x1EEE6DFA0](sub_1AC76136C, v9, 0);
  }

  else
  {
    v10 = v3[12];
    v11 = v3[13];

    v12 = *(v7 + 8);

    return v12();
  }
}

uint64_t sub_1AC76136C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[12];
  v2 = v0[13];

  v3 = v0[15];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1AC7613D4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC7614CC;

  return sub_1AC7115A0();
}

uint64_t sub_1AC7614CC()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 32) = v3 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1AC761608, 0, 0);
  }
}

uint64_t sub_1AC76164C()
{
  OUTLINED_FUNCTION_72();
  if (*(v0[2] + 112))
  {
    v4 = v0[1];

    return v4(v1);
  }

  else
  {
    if (qword_1ED938050 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_85_0(v3);

    return sub_1AC63C9C8();
  }
}

uint64_t sub_1AC761754()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 24);
  v7 = *v1;
  *v4 = *v1;
  *(v3 + 32) = v8;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);

    return MEMORY[0x1EEE6DFA0](sub_1AC76188C, v11, 0);
  }
}

uint64_t sub_1AC76188C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E080, &unk_1AC7B4040);
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(v2 + 112);
  *(v2 + 112) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1AC761944, 0, 0);
}

uint64_t sub_1AC761944()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 40) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC7110B0();
}

uint64_t sub_1AC7619D0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_18_2();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    v9 = *(v3 + 16);
    v10 = sub_1AC761AD8;
  }

  else
  {
    v10 = sub_1AC761B40;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC761AD8()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[7];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1AC761B40()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1AC761BA8, v2, 0);
}

uint64_t sub_1AC761BA8()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[4];
  v2 = v0[2];

  result = *(v2 + 112);
  if (result)
  {
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC761C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1AC761D14;

  return sub_1AC7613D4(a1);
}

uint64_t sub_1AC761D14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_18_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t TranscriptionEvaluator.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TranscriptionEvaluator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of TranscriptionEvaluator.evaluateMessagesContext(_:recognizedText:correctedText:asrID:speechProfilePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 104);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  OUTLINED_FUNCTION_85_0(v20);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1AC762044(uint64_t a1, uint64_t a2)
{
  v3 = SFAnalyticsEventTypeGetName(a1);
  if (!v3)
  {
    sub_1AC79FF68();
    v3 = sub_1AC79FF58();
  }

  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v6[4] = sub_1AC762C20;
  v6[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1AC7623B0;
  v6[3] = &block_descriptor_19;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

void sub_1AC762148(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E088, &unk_1AC7B4088);
    v2 = sub_1AC7A0BC8();
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

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    sub_1AC5CFF64(*(a1 + 56) + 32 * v9, v28);
    *&v27 = v11;
    *(&v27 + 1) = v12;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v13 = v27;
    sub_1AC5C3968(v26, v25);
    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);

    if (!swift_dynamicCast())
    {

      return;
    }

    v5 &= v5 - 1;
    v14 = sub_1AC6E0808();
    v15 = v14;
    if (v16)
    {
      v17 = v2[6] + 16 * v14;
      v18 = *(v17 + 8);
      *v17 = v13;

      v19 = v2[7];
      v20 = *(v19 + 8 * v15);
      *(v19 + 8 * v15) = v24;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      *(v2[6] + 16 * v14) = v13;
      *(v2[7] + 8 * v14) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_22;
      }

      v2[2] = v23;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_1AC7623B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
    v5 = sub_1AC79FE18();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1AC76244C(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CE58, &qword_1AC7B4080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7B4050;
  *(inited + 32) = sub_1AC79FF68();
  *(inited + 40) = v3;
  v5 = MEMORY[0x1E69E6158];
  v27 = *a1;
  v4 = v27;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 80) = sub_1AC79FF68();
  *(inited + 88) = v6;
  v26 = a1[1];
  v7 = v26;
  *(inited + 120) = v5;
  *(inited + 96) = v7;
  *(inited + 128) = sub_1AC79FF68();
  *(inited + 136) = v8;
  v9 = MEMORY[0x1E69E6370];
  v10 = *(a1 + 48);
  *(inited + 168) = MEMORY[0x1E69E6370];
  *(inited + 144) = v10;
  *(inited + 176) = sub_1AC79FF68();
  *(inited + 184) = v11;
  v25 = *(a1 + 56);
  v12 = v25;
  *(inited + 216) = v5;
  *(inited + 192) = v12;
  *(inited + 224) = sub_1AC79FF68();
  *(inited + 232) = v13;
  v24 = a1[2];
  v14 = v24;
  *(inited + 264) = v5;
  *(inited + 240) = v14;
  *(inited + 272) = sub_1AC79FF68();
  *(inited + 280) = v15;
  v16 = *(a1 + 72);
  *(inited + 312) = v9;
  *(inited + 288) = v16;
  *(inited + 320) = sub_1AC79FF68();
  *(inited + 328) = v17;
  v18 = *(a1 + 73);
  *(inited + 360) = v9;
  *(inited + 336) = v18;
  *(inited + 368) = sub_1AC79FF68();
  *(inited + 376) = v19;
  v20 = *(a1 + 74);
  *(inited + 408) = v9;
  *(inited + 384) = v20;
  *(inited + 416) = sub_1AC79FF68();
  *(inited + 424) = v21;
  *(inited + 456) = MEMORY[0x1E69E6530];
  *(inited + 432) = 2;
  sub_1AC762BC4(&v27, v23);
  sub_1AC762BC4(&v26, v23);
  sub_1AC762BC4(&v25, v23);
  sub_1AC762BC4(&v24, v23);
  return sub_1AC79FE38();
}

uint64_t sub_1AC762648(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AC76244C(a1);
  v6 = sub_1AC79FF68();
  v8 = v7;
  v22 = MEMORY[0x1E69E6158];
  *&v21 = a2;
  *(&v21 + 1) = a3;
  OUTLINED_FUNCTION_2_24(v6, v7, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19, v20, v21);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1AC6E114C(&v18, v6, v8);

  sub_1AC762044(100, v5);
}

uint64_t sub_1AC762704(__int128 *a1, char a2, char a3, uint64_t a4)
{
  sub_1AC76244C(a1);
  v7 = sub_1AC79FF68();
  LOBYTE(v53) = a2;
  OUTLINED_FUNCTION_2_24(v7, v8, v9, v10, v11, v12, v13, v14, v37, v40, v44, v47, v50, v53);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_19(isUniquelyReferenced_nonNull_native, v16);

  v17 = sub_1AC79FF68();
  v19 = v18;
  LOBYTE(v54) = a3;
  OUTLINED_FUNCTION_2_24(v17, v18, v20, v21, v22, v23, v24, v25, v38, v41, v45, v48, v51, v54);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  sub_1AC6E114C(v26, v17, v19);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v55 = a4;
  OUTLINED_FUNCTION_2_24(v27, v28, v29, v30, v31, v32, v33, v34, v39, v42, v46, v49, v52, v55);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v35);

  sub_1AC762044(103, v43);
}

uint64_t sub_1AC762838(__int128 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1AC76244C(a1);
  v7 = sub_1AC79FF68();
  *&v38 = a2;
  *(&v38 + 1) = a3;
  OUTLINED_FUNCTION_2_24(v7, v8, v9, v10, v11, v12, v13, v14, v27, v29, v32, v34, v36, v38);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_4_19(isUniquelyReferenced_nonNull_native, v16);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  v40 = sub_1AC5CF764(0, &qword_1EB56AA90, 0x1E696AEC0);
  *&v39 = a4;
  OUTLINED_FUNCTION_2_24(v40, v17, v18, v19, v20, v21, v22, v23, v28, v30, v33, v35, v37, v39);
  v24 = a4;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v25);

  sub_1AC762044(105, v31);
}

uint64_t sub_1AC762938(__int128 *a1, uint64_t a2)
{
  sub_1AC76244C(a1);
  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v117 = *(a2 + 72) / 1000.0;
  OUTLINED_FUNCTION_2_24(v3, v4, v5, v6, v7, v8, v9, v10, v76, v84, v93, v101, v109, v117);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v11);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v118 = *(a2 + 64);
  OUTLINED_FUNCTION_2_24(v12, v13, v14, v15, v16, v17, v18, v19, v77, v85, v94, v102, v110, v118);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v20);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v119 = *(a2 + 256);
  OUTLINED_FUNCTION_2_24(v21, v22, v23, v24, v25, v26, v27, v28, v78, v86, v95, v103, v111, v119);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v29);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v120 = *(a2 + 264);
  OUTLINED_FUNCTION_2_24(v30, v31, v32, v33, v34, v35, v36, v37, v79, v87, v96, v104, v112, v120);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v38);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v121 = *(a2 + 272);
  OUTLINED_FUNCTION_2_24(v39, v40, v41, v42, v43, v44, v45, v46, v80, v88, v97, v105, v113, v121);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v47);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v122 = *(a2 + 280);
  OUTLINED_FUNCTION_2_24(v48, v49, v50, v51, v52, v53, v54, v55, v81, v89, v98, v106, v114, v122);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v56);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v123 = *(a2 + 288);
  OUTLINED_FUNCTION_2_24(v57, v58, v59, v60, v61, v62, v63, v64, v82, v90, v99, v107, v115, v123);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v65);

  sub_1AC79FF68();
  OUTLINED_FUNCTION_1_20();
  *&v124 = *(a2 + 296);
  OUTLINED_FUNCTION_2_24(v66, v67, v68, v69, v70, v71, v72, v73, v83, v91, v100, v108, v116, v124);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_3_17(v74);

  sub_1AC762044(106, v92);
}

_OWORD *OUTLINED_FUNCTION_4_19(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1AC6E114C(va, v2, v3);
}

void sub_1AC762C50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked));
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
    v17 = sub_1AC79FDC8();
    v18 = sub_1AC7A05F8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_150();
      v20 = OUTLINED_FUNCTION_48();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1AC5CFE74(0xD00000000000002CLL, 0x80000001AC7B7630, &v23);
      OUTLINED_FUNCTION_1(&dword_1AC5BC000, v21, v22, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v10 = v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked;
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked));
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
  }
}

uint64_t EndpointDetector.__allocating_init(taskHint:detectionOptions:)(unsigned __int8 *a1, __int128 *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  EndpointDetector.init(taskHint:detectionOptions:)(a1, a2);
  return v7;
}

uint64_t EndpointDetector.results.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6Speech16EndpointDetector__results;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  v5 = OUTLINED_FUNCTION_80(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t EndpointDetector.init(taskHint:detectionOptions:)(unsigned __int8 *a1, __int128 *a2)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E090, &qword_1AC7B4098);
  OUTLINED_FUNCTION_40(v55);
  v53 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v50 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  OUTLINED_FUNCTION_40(v56);
  v54 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15_16(v14, v50);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E098, &unk_1AC7B40A0);
  v16 = OUTLINED_FUNCTION_167(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v50 - v28;
  v30 = *a1;
  v50 = *a2;
  v31 = *(a2 + 2);
  v32 = *(a2 + 24);
  v33 = *(a2 + 25);
  v34 = (v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale);
  sub_1AC79FB18();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  *v34 = 0;
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A0, &qword_1AC7B40B0) + 28);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A8, &qword_1AC7B40B8);
  OUTLINED_FUNCTION_167(v40);
  bzero(v34 + v39, *(v41 + 64));
  sub_1AC763334(v29, v34 + v39);
  v42 = v2 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked;
  *(v2 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked) = 0;
  if (v30 == 16)
  {
    v43 = 0;
  }

  else
  {
    v43 = v30;
  }

  *(v42 + 8) = 0;
  *(v42 + 16) = 0;
  *(v2 + 16) = v43;
  *(v2 + 20) = v50;
  *(v2 + 36) = v31;
  *(v2 + 44) = v32;
  *(v2 + 45) = v33;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v44);
  v57 = v23;
  (*(v53 + 104))(v52, *MEMORY[0x1E69E8790], v55);
  v48 = v51;
  sub_1AC7A03B8();
  (*(v54 + 32))(v2 + OBJC_IVAR____TtC6Speech16EndpointDetector__results, v48, v56);
  sub_1AC5D1E4C(v23, v21, &qword_1EB56E098, &unk_1AC7B40A0);
  result = __swift_getEnumTagSinglePayload(v21, 1, v44);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v44 - 8) + 32))(v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_resultsBuilder, v21, v44);
    sub_1AC5C720C(v23, &qword_1EB56E098, &unk_1AC7B40A0);
    return v2;
  }

  return result;
}

uint64_t sub_1AC763334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC7633A4(uint64_t a1, uint64_t a2)
{
  sub_1AC5C720C(a2, &qword_1EB56E098, &unk_1AC7B40A0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t EndpointDetector.__allocating_init(taskHint:detectionOptions:)(uint64_t a1, uint64_t a2)
{
  v10 = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 25);
  sub_1AC6F4A30(a1, &v15);
  v11 = v10;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  EndpointDetector.init(taskHint:detectionOptions:)(&v15, &v11);
  return v8;
}

uint64_t EndpointDetector.availableCompatibleAudioFormats.getter()
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

uint64_t EndpointDetector.availableCompatibleAudioFormats(clientID:)()
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

uint64_t sub_1AC7635DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC763600, 0, 0);
}

uint64_t sub_1AC763600()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return MEMORY[0x1EEE6DFA0](sub_1AC763630, v1, 0);
  }

  **(v0 + 16) = 1;
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_1AC763630()
{
  OUTLINED_FUNCTION_85();
  sub_1AC765BA0(*(v0 + 32), *(v0 + 24), &off_1F212E2C8, sub_1AC765C74);

  return MEMORY[0x1EEE6DFA0](sub_1AC6AE248, 0, 0);
}

uint64_t sub_1AC7636B0(void *a1)
{
  if (object_getClass(a1) != _TtC6Speech22SpeechRecognizerWorker || a1 == 0)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_supportedFeatures;
  swift_unknownObjectRetain();
  v4 = sub_1AC763724(a1 + v3);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1AC763724(uint64_t a1)
{
  v3 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v4 = *(a1 + *(v3 + 20));
  LOBYTE(lhs.value) = v1[16];
  v5 = TaskHint.preferredModelTaskNames.getter();
  v6 = sub_1AC765948(v5, v4);

  v7 = a1 + *(v3 + 40);
  v9 = *v7;
  v8 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 25);
  v12 = HIDWORD(v8);
  v13 = MEMORY[0x1E6960CC0];
  if (v11 & 1) != 0 || (*(v7 + 24))
  {
    if ((v6 & 1) == 0)
    {
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_19;
    }

    v55 = *(v7 + 16);
    v56 = *v7;
    v57 = 0;
    v58 = v6;
    goto LABEL_12;
  }

  if (v1[45] & 1) != 0 || (v1[44])
  {
    v15 = *MEMORY[0x1E6960CC0];
    v16 = *(MEMORY[0x1E6960CC0] + 8);
    v17 = *(MEMORY[0x1E6960CC0] + 12);
    v18 = *(MEMORY[0x1E6960CC0] + 16);
  }

  else
  {
    OUTLINED_FUNCTION_13_17();
  }

  rhs.epoch = v18;
  lhs.value = v9;
  lhs.timescale = v8;
  lhs.flags = v12;
  lhs.epoch = v10;
  rhs.value = v15;
  rhs.timescale = v16;
  rhs.flags = v17;
  CMTimeSubtract(&v59, &lhs, &rhs);
  sub_1AC7A0728();
  v20 = fabs(v19);
  if (v6)
  {
    v57 = v20 <= 0.001;
    v58 = v6;
    v55 = v10;
    v56 = v9;
LABEL_12:
    lhs.value = 0;
    *&lhs.timescale = 0xE000000000000000;
    sub_1AC7A09C8();

    lhs.value = 0xD000000000000013;
    *&lhs.timescale = 0x80000001AC7BAED0;
    LOBYTE(rhs.value) = v1[16];
    TaskHint.preferredModelTaskNames.getter();
    v21 = MEMORY[0x1B26E8D20]();
    v23 = v22;

    MEMORY[0x1B26E8C40](v21, v23);

    OUTLINED_FUNCTION_16_7();
    v24 = sub_1AC7A0458();
    MEMORY[0x1B26E8C40](v24);

    value = lhs.value;
    v26 = *&lhs.timescale;
    v14 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = *(v14 + 16);
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v53;
    }

    v27 = *(v14 + 16);
    if (v27 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v54;
    }

    *(v14 + 16) = v27 + 1;
    v28 = v14 + 16 * v27;
    *(v28 + 32) = value;
    *(v28 + 40) = v26;
    if (v57)
    {
      v29 = 1;
      v6 = v58;
      goto LABEL_32;
    }

    v6 = v58;
    v10 = v55;
    v9 = v56;
LABEL_19:
    lhs.value = 0;
    *&lhs.timescale = 0xE000000000000000;
    sub_1AC7A09C8();
    rhs.value = lhs.value;
    *&rhs.timescale = *&lhs.timescale;
    MEMORY[0x1B26E8C40](0xD00000000000001ALL, 0x80000001AC7BAEB0);
    if (v1[45] & 1) != 0 || (v1[44])
    {
      v30 = *v13;
      v31 = *(v13 + 8);
      v32 = *(v13 + 12);
      v33 = *(v13 + 16);
    }

    else
    {
      OUTLINED_FUNCTION_13_17();
    }

    lhs.value = v30;
    lhs.timescale = v31;
    lhs.flags = v32;
    lhs.epoch = v33;
    type metadata accessor for CMTime(0);
    sub_1AC7A0AF8();
    OUTLINED_FUNCTION_16_7();
    if (v11 & 1) != 0 || (*(v7 + 24))
    {
      v9 = *v13;
      LODWORD(v8) = *(v13 + 8);
      v34 = *(v13 + 12);
      v10 = *(v13 + 16);
    }

    else
    {
      v34 = HIDWORD(v8);
    }

    lhs.value = v9;
    lhs.timescale = v8;
    lhs.flags = v34;
    lhs.epoch = v10;
    sub_1AC7A0AF8();
    v35 = rhs.value;
    v36 = *&rhs.timescale;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = *(v14 + 16);
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v50;
    }

    v37 = *(v14 + 16);
    if (v37 >= *(v14 + 24) >> 1)
    {
      OUTLINED_FUNCTION_10_21();
      sub_1AC60DBDC();
      v14 = v51;
    }

    v29 = 0;
    *(v14 + 16) = v37 + 1;
    v38 = v14 + 16 * v37;
    *(v38 + 32) = v35;
    *(v38 + 40) = v36;
    goto LABEL_32;
  }

  v14 = MEMORY[0x1E69E7CC0];
  if (v20 > 0.001)
  {
    goto LABEL_19;
  }

  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {

    v29 = 1;
    return v29 & (v6 ^ 1u);
  }

  v29 = 1;
LABEL_32:
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v39 = sub_1AC79FDE8();
  __swift_project_value_buffer(v39, qword_1ED9386C8);

  v40 = sub_1AC79FDC8();
  v41 = sub_1AC7A05E8();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = OUTLINED_FUNCTION_150();
    v43 = OUTLINED_FUNCTION_48();
    lhs.value = v43;
    *v42 = 136315138;
    rhs.value = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    sub_1AC5C8BE0(&qword_1EB56AC88, &unk_1EB56C640, &unk_1AC7A9BE0);
    v44 = sub_1AC79FEA8();
    v46 = v45;

    v47 = sub_1AC5CFE74(v44, v46, &lhs.value);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_1AC5BC000, v40, v41, "EndpointDetector.isWorkerUsable: Worker not usable because %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  return v29 & (v6 ^ 1u);
}

uint64_t sub_1AC763CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v7 = OUTLINED_FUNCTION_80(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 45) & 1) != 0 || (*(v2 + 44))
  {
    v12 = *MEMORY[0x1E6960CC0];
    LODWORD(v13) = *(MEMORY[0x1E6960CC0] + 8);
    LODWORD(v14) = *(MEMORY[0x1E6960CC0] + 12);
    v15 = *(MEMORY[0x1E6960CC0] + 16);
  }

  else
  {
    v12 = *(v2 + 20);
    v13 = *(v2 + 28);
    v15 = *(v2 + 36);
    v14 = HIDWORD(v13);
  }

  v16 = a1 + *(v6 + 40);
  if (*(v16 + 25) & 1) != 0 || (*(v16 + 24))
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v17 = sub_1AC79FDE8();
    __swift_project_value_buffer(v17, qword_1ED9386C8);
    v18 = sub_1AC79FDC8();
    v19 = sub_1AC7A05E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1AC5BC000, v18, v19, "EndpointDetector.makeWorkerUsable: no detection options, making usable", v20, 2u);
      OUTLINED_FUNCTION_70();
    }

    sub_1AC61B924(a1, v11);
    v21 = *(v3 + 36);
    v22 = *(v3 + 44);
    v23 = *(v3 + 45);
    v24 = &v11[*(v6 + 40)];
    *v24 = *(v3 + 20);
    *(v24 + 2) = v21;
    v24[24] = v22;
    v24[25] = v23;
    sub_1AC61B988(v11, a2);
  }

  else
  {
    v30 = *v16;
    v31 = *(v16 + 8);
    v32 = *(v16 + 16);
    rhs.epoch = v15;
    lhs.value = v30;
    *&lhs.timescale = v31;
    lhs.epoch = v32;
    rhs.value = v12;
    rhs.timescale = v13;
    rhs.flags = v14;
    CMTimeSubtract(&v43, &lhs, &rhs);
    sub_1AC7A0728();
    if (fabs(v33) <= 0.001)
    {
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v38 = sub_1AC79FDE8();
      __swift_project_value_buffer(v38, qword_1ED9386C8);
      v39 = sub_1AC79FDC8();
      v40 = sub_1AC7A05E8();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1AC5BC000, v39, v40, "EndpointDetector.makeWorkerUsable: already usable", v41, 2u);
        OUTLINED_FUNCTION_70();
      }

      sub_1AC61B924(a1, a2);
    }

    else
    {
      if (off_1ED937D60 != -1)
      {
        OUTLINED_FUNCTION_3();
      }

      v34 = sub_1AC79FDE8();
      __swift_project_value_buffer(v34, qword_1ED9386C8);
      v35 = sub_1AC79FDC8();
      v36 = sub_1AC7A05E8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1AC5BC000, v35, v36, "EndpointDetector.makeWorkerUsable: detectAfterTime different, cannot make usable", v37, 2u);
        OUTLINED_FUNCTION_70();
      }
    }
  }

  OUTLINED_FUNCTION_10_21();
  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

uint64_t sub_1AC764010@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C318, &unk_1AC7A8790);
  OUTLINED_FUNCTION_167(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15_16(v8, v63);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
  OUTLINED_FUNCTION_167(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - v13;
  v15 = sub_1AC79FB18();
  v16 = OUTLINED_FUNCTION_40(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v63 - v24;
  v26 = (v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A0, &qword_1AC7B40B0);
  sub_1AC5D1E4C(v26 + *(v27 + 28), v14, &qword_1EB56BFD8, &qword_1AC7A83F0);
  os_unfair_lock_unlock(v26);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1AC5C720C(v14, &qword_1EB56BFD8, &qword_1AC7A83F0);
    if (off_1ED937D60 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  v28 = v23;
  (*(v18 + 32))(v25, v14, v15);
  LOBYTE(v79) = *(v2 + 16);
  v29 = TaskHint.preferredModelTaskNames.getter();
  if (!v29[2])
  {
    while (1)
    {

      __break(1u);
LABEL_15:
      OUTLINED_FUNCTION_3();
LABEL_11:
      v56 = sub_1AC79FDE8();
      __swift_project_value_buffer(v56, qword_1ED9386C8);
      v57 = sub_1AC79FDC8();
      v58 = sub_1AC7A05F8();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = OUTLINED_FUNCTION_150();
        v60 = OUTLINED_FUNCTION_48();
        v79 = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_1AC5CFE74(0xD0000000000000B2, 0x80000001AC7BAEF0, &v79);
        OUTLINED_FUNCTION_1(&dword_1AC5BC000, v61, v62, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v60);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      __break(1u);
    }
  }

  v30 = v29[4];
  v31 = v29[5];

  v74 = v28;
  v75 = v18;
  v32 = *(v18 + 16);
  v76 = v25;
  v73 = v15;
  v32(v28, v25, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  *(inited + 32) = v30;
  *(inited + 40) = v31;
  sub_1AC7244B8();
  v70 = v34;
  v35 = *(v2 + 16);
  v64 = (v35 > 0xF) | (0x311Cu >> v35);
  v37 = v35 == 1 || v35 == 6;
  v65 = v37;
  type metadata accessor for TranscriberCommon.ModelOptions(0);
  v38 = v77;
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v69 = *(v2 + 20);
  v68 = *(v2 + 36);
  v43 = *(v2 + 44);
  v66 = *(v2 + 45);
  v67 = v43;
  v44 = type metadata accessor for SpeechRecognizerSupportedFeatures();
  v45 = &a1[v44[10]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *(v45 + 12) = 256;
  *(v45 + 2) = 0;
  v46 = v44[11];
  a1[v46] = 3;
  v47 = MEMORY[0x1E69E7CD0];
  v71 = v44[14];
  *&a1[v71] = MEMORY[0x1E69E7CD0];
  v72 = v44[15];
  *&a1[v72] = v47;
  v32(a1, v28, v15);
  *&a1[v44[5]] = v70;
  a1[v44[6]] = v64 & 1;
  a1[v44[7]] = v65;
  a1[v44[8]] = 0;
  sub_1AC5D1E4C(v38, &a1[v44[9]], &qword_1EB56C318, &unk_1AC7A8790);
  *v45 = v69;
  *(v45 + 2) = v68;
  v48 = v66;
  v45[24] = v67;
  v45[25] = v48;
  a1[v46] = 3;
  *&a1[v44[13]] = v47;
  v79 = v47;
  v78 = &unk_1F212FA38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA38, &unk_1AC7AB4D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA40, qword_1AC7B2AA0);
  sub_1AC5C8BE0(&qword_1EB56ABF0, &qword_1EB56CA38, &unk_1AC7AB4D0);
  sub_1AC5C8BE0(&qword_1EB56AC90, &qword_1EB56CA40, qword_1AC7B2AA0);
  sub_1AC6AA608();
  v49 = sub_1AC7A04B8();
  v50 = &a1[v44[12]];
  *v50 = v49 & 1;
  *(v50 + 1) = 0;
  sub_1AC617030();
  *&a1[v71] = v51;
  sub_1AC6170AC();
  *&a1[v72] = v52;
  sub_1AC5C720C(v77, &qword_1EB56C318, &unk_1AC7A8790);
  v53 = *(v75 + 8);
  v54 = v73;
  v53(v74, v73);
  return (v53)(v76, v54);
}

uint64_t EndpointDetector.recognizerObjectIdentifier.getter()
{
  v0 = sub_1AC5CB404();
  if (!v0)
  {
    return 0;
  }

  v1 = *(v0 + 112);

  return v1;
}

__n128 EndpointDetector.ModuleOutput.range.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

uint64_t EndpointDetector.ModuleOutput.resultsFinalizationTime.getter()
{
  result = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  return result;
}

uint64_t EndpointDetector.ModuleOutput.description.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v12.start.value = 0;
  *&v12.start.timescale = 0xE000000000000000;
  sub_1AC7A09C8();
  v13 = *&v12.start.value;
  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40]();
  v6 = *(v0 + 16);
  *&v12.start.value = *v0;
  *&v12.start.epoch = v6;
  *&v12.duration.timescale = *(v0 + 32);
  v7 = CMTimeRangeCopyDescription(0, &v12);
  if (!v7)
  {
    v7 = sub_1AC79FF58();
  }

  v12.start.value = v7;
  type metadata accessor for CFString(0);
  sub_1AC7A0AF8();

  MEMORY[0x1B26E8C40](0x6F4364726F77202CLL, 0xEC00000020746E75);
  v12.start.value = v1;
  v8 = MEMORY[0x1E69E6530];
  v9 = sub_1AC7A0CC8();
  MEMORY[0x1B26E8C40](v9);

  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40](0xD000000000000010);
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](0x436573756170202CLL, 0xEE002073746E756FLL);
  v10 = MEMORY[0x1B26E8D20](v3, v8);
  MEMORY[0x1B26E8C40](v10);

  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40]();
  sub_1AC7A03F8();
  OUTLINED_FUNCTION_14_18();
  MEMORY[0x1B26E8C40]();
  sub_1AC7A03F8();
  MEMORY[0x1B26E8C40](62, 0xE100000000000000);
  return v13;
}

double sub_1AC7648FC@<D0>(_OWORD *a1@<X8>)
{
  EndpointDetector.ModuleOutput.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t EndpointDetector.DetectionOptions.detectAfterTime.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  return result;
}

Speech::EndpointDetector::DetectionOptions __swiftcall EndpointDetector.DetectionOptions.init(detectAfterTime:)(Speech::EndpointDetector::DetectionOptions detectAfterTime)
{
  *v1 = detectAfterTime.detectAfterTime.value.value;
  *(v1 + 8) = *&detectAfterTime.detectAfterTime.value.timescale;
  *(v1 + 16) = detectAfterTime.detectAfterTime.value.epoch;
  *(v1 + 24) = detectAfterTime.detectAfterTime.is_nil;
  return detectAfterTime;
}

BOOL static EndpointDetector.DetectionOptions.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 24);
  if ((a1[3] & 1) == 0)
  {
    if (a2[3])
    {
      return 0;
    }

    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    return (sub_1AC7A06A8() & 1) != 0;
  }

  return (a2[3] & 1) != 0;
}

uint64_t EndpointDetector.DetectionOptions.hash(into:)()
{
  if (*(v0 + 24) == 1)
  {
    return sub_1AC7A0E98();
  }

  v3 = v0[1];
  v2 = v0[2];
  v4 = *v0;
  sub_1AC7A0E98();

  return sub_1AC7A06E8();
}

uint64_t EndpointDetector.DetectionOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AC7A0E78();
  sub_1AC7A0E98();
  if (v4 != 1)
  {
    sub_1AC7A06E8();
  }

  return sub_1AC7A0EC8();
}

uint64_t sub_1AC764AE4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AC7A0E78();
  sub_1AC7A0E98();
  if (v4 != 1)
  {
    sub_1AC7A06E8();
  }

  return sub_1AC7A0EC8();
}

void sub_1AC764B64(uint64_t a1, _OWORD *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0C0, &unk_1AC7B42E0);
  OUTLINED_FUNCTION_40(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  v20 = sub_1AC7A0558();
  v21 = a2[1];
  __src[0] = *a2;
  __src[1] = v21;
  __src[2] = a2[2];
  *&__src[3] = v20;
  *(&__src[3] + 1) = v22;
  *&__src[4] = v23;
  *(&__src[4] + 1) = a1;
  *&__src[5] = a4;
  *(&__src[5] + 1) = a3;
  *&__src[6] = a5;
  *(&__src[6] + 1) = a6;
  memcpy(v36, __src, sizeof(v36));

  sub_1AC73FF68(__src, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  sub_1AC7A0388();
  (*(v14 + 8))(v19, v12);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v24 = sub_1AC79FDE8();
  __swift_project_value_buffer(v24, qword_1ED9386C8);
  sub_1AC73FF68(__src, v36);
  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05E8();
  sub_1AC73FFC4(__src);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_150();
    v28 = OUTLINED_FUNCTION_48();
    v34 = v28;
    *v27 = 136315138;
    memcpy(v35, __src, sizeof(v35));
    v29 = EndpointDetector.ModuleOutput.description.getter();
    v31 = v30;
    memcpy(v36, v35, sizeof(v36));
    sub_1AC73FFC4(v36);
    v32 = sub_1AC5CFE74(v29, v31, &v34);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "EndpointDetector: Yielded result %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();
  }

  else
  {

    sub_1AC73FFC4(__src);
  }
}

uint64_t sub_1AC764E1C(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  return sub_1AC7A0398();
}

uint64_t EndpointDetector.deinit()
{
  v1 = v0 + OBJC_IVAR____TtC6Speech16EndpointDetector_availableLocale;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0A0, &qword_1AC7B40B0);
  sub_1AC5C720C(v1 + *(v2 + 28), &qword_1EB56BFD8, &qword_1AC7A83F0);
  sub_1AC5C720C(v0 + OBJC_IVAR____TtC6Speech16EndpointDetector__workerWithLocked + 8, &qword_1EB56CB00, &qword_1AC7B1890);
  v3 = OBJC_IVAR____TtC6Speech16EndpointDetector__results;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56DCB0, &qword_1AC7B25A0);
  OUTLINED_FUNCTION_80(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = OBJC_IVAR____TtC6Speech16EndpointDetector_resultsBuilder;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0B0, &qword_1AC7B40C0);
  OUTLINED_FUNCTION_80(v7);
  (*(v8 + 8))(v0 + v6);
  return v0;
}

uint64_t EndpointDetector.__deallocating_deinit()
{
  EndpointDetector.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC764FE0()
{
  v1 = EndpointDetector.availableCompatibleAudioFormats.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AC76503C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B2F6C;

  return OUTLINED_FUNCTION_28_4();
}

uint64_t sub_1AC7650C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC6B30E8;

  return sub_1AC6B2588();
}

unint64_t sub_1AC7651D8()
{
  result = qword_1EB56E0B8;
  if (!qword_1EB56E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56E0B8);
  }

  return result;
}

uint64_t sub_1AC765254(uint64_t a1)
{
  *(a1 + 8) = sub_1AC7653C4(&qword_1EB56B038, type metadata accessor for EndpointDetector);
  result = sub_1AC7653C4(&qword_1EB56B030, type metadata accessor for EndpointDetector);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for EndpointDetector()
{
  result = qword_1EB56B020;
  if (!qword_1EB56B020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AC765324(uint64_t a1)
{
  result = sub_1AC7653C4(&qword_1EB56B030, type metadata accessor for EndpointDetector);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC7653C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AC765414()
{
  sub_1AC765598();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1AC7655FC(319, &qword_1EB56AC30, MEMORY[0x1E69E87C8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1AC7655FC(319, &qword_1EB56AC68, MEMORY[0x1E69E87A0]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1AC765598()
{
  if (!qword_1EB56B440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB56BFD8, &qword_1AC7A83F0);
    v0 = sub_1AC79FCC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB56B440);
    }
  }
}

void sub_1AC7655FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t, void))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB56D450, &qword_1AC7A7E50);
    v7 = a3(a1, &type metadata for EndpointDetector.ModuleOutput, v6, MEMORY[0x1E69E7288]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t initializeWithCopy for EndpointDetector.ModuleOutput(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t assignWithCopy for EndpointDetector.ModuleOutput(uint64_t a1, uint64_t a2)
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
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for EndpointDetector.ModuleOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for EndpointDetector.ModuleOutput(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
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

uint64_t storeEnumTagSinglePayload for EndpointDetector.ModuleOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for EndpointDetector.DetectionOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EndpointDetector.DetectionOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1AC765948(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  v6 = a2 + 56;
  do
  {
LABEL_3:
    if (v3 == v4)
    {
      return 1;
    }

    v7 = v3++;
  }

  while (!*(a2 + 16));
  v8 = (v5 + 16 * v7);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(a2 + 40);
  sub_1AC7A0E78();

  sub_1AC7A0048();
  v12 = sub_1AC7A0EC8();
  v13 = ~(-1 << *(a2 + 32));
  do
  {
    v14 = v12 & v13;
    if (((*(v6 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
    {

      goto LABEL_3;
    }

    v15 = (*(a2 + 48) + 16 * v14);
    if (*v15 == v10 && v15[1] == v9)
    {
      break;
    }

    v17 = sub_1AC7A0D38();
    v12 = v14 + 1;
  }

  while ((v17 & 1) == 0);

  return 0;
}

uint64_t sub_1AC765A80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AC6B2F6C;

  return sub_1AC7635DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1AC765BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 24) = a3;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC6Speech22SpeechRecognizerWorker_delegates;
  swift_beginAccess();

  sub_1AC703CBC();
  v9 = *(*(a2 + v8) + 16);
  sub_1AC703DF4(v9);
  v10 = *(a2 + v8);
  *(v10 + 16) = v9 + 1;
  v11 = v10 + 16 * v9;
  *(v11 + 32) = a4;
  *(v11 + 40) = v7;
  *(a2 + v8) = v10;
  swift_endAccess();
}

uint64_t sub_1AC765C80()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  *(v1 + 24) = v4;
  *(v1 + 32) = v0;
  *(v1 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = *v3;
  *(v1 + 144) = *(v3 + 16);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1AC765D34()
{
  OUTLINED_FUNCTION_45();
  if (*(v0 + 56) == 1)
  {
    v1 = objc_allocWithZone(_SFLanguageDetectorOptions);
    v2 = 0;
    v3 = 10;
    v4 = 1;
    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = *(v0 + 64);
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    v7 = *(v0 + 144);
    objc_allocWithZone(_SFLanguageDetectorOptions);

    v4 = v7;
    v3 = v6;
    v5 = (v7 >> 8) & 1;
  }

  *(v0 + 72) = sub_1AC76BDE8(v2, v3, v4, v5);
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  sub_1AC6B87D0();
  *(v0 + 80) = v11;
  sub_1AC5D1E4C(v10, v8, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v12 = type metadata accessor for SpeechAnalyzer.Options(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
  v14 = *(v0 + 48);
  if (EnumTagSinglePayload == 1)
  {
    sub_1AC5C720C(*(v0 + 48), &qword_1EB56C7D0, &qword_1AC7ACB40);
    v15 = 0;
  }

  else
  {
    v16 = *(v0 + 48);
    v15 = sub_1AC6D99DC();
    sub_1AC76C050(v14);
  }

  *(v0 + 88) = v15;
  if (qword_1ED938050 != -1)
  {
    swift_once();
  }

  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_85_0(v17);
  OUTLINED_FUNCTION_170();

  sub_1AC63B4A4();
}

uint64_t sub_1AC765F0C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  v4 = *(v2 + 96);
  v10 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC766014()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E108, &unk_1AC7B45D0);
  OUTLINED_FUNCTION_235();
  v2 = swift_allocObject();
  v0[15] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_1AC7660D4;
  v4 = v0[13];

  return sub_1AC71C840();
}

uint64_t sub_1AC7660D4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = *(v2 + 128);
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC7661D4()
{
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v1 = sub_1AC79FDE8();
  __swift_project_value_buffer(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = v0[15];
  v11 = v0[13];
  v12 = v0[10];
  v21 = v0[11];
  v13 = v0[9];
  v15 = v0[5];
  v14 = v0[6];
  v17 = v0[3];
  v16 = v0[4];

  sub_1AC5D1E4C(v17, v15, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v18 = swift_allocObject();
  sub_1AC767888(v10, v15);

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_1AC76634C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);

  v4 = *(v0 + 136);
  v5 = *(v0 + 88);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC7663E8()
{
  OUTLINED_FUNCTION_72();

  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC766470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  v5 = OUTLINED_FUNCTION_40(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  OUTLINED_FUNCTION_167(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v15);
  sub_1AC5D1E4C(a2, &v22 - v16, &qword_1EB56BE70, &qword_1AC7A8270);
  v17 = *(*v2 + 96);
  OUTLINED_FUNCTION_235();
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v11, v2 + v17, v4);
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v7 + 32))(v20 + v19, v11, v4);
  *(v20 + ((v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
  sub_1AC659DBC();
}

uint64_t sub_1AC766664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1AC5D1E4C(a2, &v17 - v11, &qword_1EB56BE70, &qword_1AC7A8270);
  v12 = *(*v2 + 96);
  v13 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v8, v2 + v12, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  (*(v5 + 32))(v15 + v14, v8, v4);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  sub_1AC659DBC();
}

uint64_t sub_1AC76688C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 16) + 120);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6E7954(v1);
}

uint64_t sub_1AC766930()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_1AC766A20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E148, &unk_1AC7B4640);
  OUTLINED_FUNCTION_40(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C9F0, &qword_1AC7AB3B0);
  OUTLINED_FUNCTION_40(v26);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  OUTLINED_FUNCTION_40(v16);
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v25 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E150, &qword_1AC7B4650);
  (*(v3 + 104))(v8, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v3 + 8))(v8, v1);
  (*(v18 + 32))(v0 + *(*v0 + 96), v23, v16);
  (*(v10 + 32))(v0 + *(*v0 + 104), v15, v26);
  return v0;
}

uint64_t sub_1AC766C88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E128, &qword_1AC7B4608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56CA00, &qword_1AC7B4610);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E130, &qword_1AC7B4618);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8650], v1);
  sub_1AC7A0298();
  (*(v2 + 8))(v5, v1);
  (*(v11 + 32))(v0 + *(*v0 + 96), v14, v10);
  (*(v6 + 32))(v0 + *(*v0 + 104), v9, v17);
  return v0;
}

uint64_t sub_1AC766F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E140, &qword_1AC7B4638);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC766FEC, 0, 0);
}

uint64_t sub_1AC766FEC()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_12(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0(v6);

  return MEMORY[0x1EEE6D9C8](v8);
}

uint64_t sub_1AC7670A0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC767188()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[6];
  v0[13] = v1;
  v0[14] = v2;
  if (v1)
  {
    v3 = v0[8];
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1AC7672D8, Strong, 0);
    }

    else
    {
      v8 = OUTLINED_FUNCTION_170();
      sub_1AC5C3958(v8);
      v9 = *(MEMORY[0x1E69E8678] + 4);
      v10 = swift_task_alloc();
      v11 = OUTLINED_FUNCTION_3_12(v10);
      *v11 = v12;
      v11[1] = sub_1AC7670A0;
      v13 = v0[11];
      v14 = v0[9];
      OUTLINED_FUNCTION_138();

      return MEMORY[0x1EEE6D9C8](v15);
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_12_10();
    v6(v5);

    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC7672D8()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC76733C()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[14];
  v2 = v0[15];
  sub_1AC5C3958(v0[13]);

  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_12(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0(v5);

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t sub_1AC7673D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E120, &qword_1AC7B4600);
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC7674A0, 0, 0);
}

uint64_t sub_1AC7674A0()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  sub_1AC7A02D8();
  OUTLINED_FUNCTION_16_10();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_12(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0(v6);

  return MEMORY[0x1EEE6D9C8](v8);
}

uint64_t sub_1AC767554()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *(v1 + 96);
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC76763C()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[5];
  v2 = v0[6];
  v0[13] = v1;
  v0[14] = v2;
  if (v1)
  {
    v3 = v0[8];
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1AC76778C, Strong, 0);
    }

    else
    {
      v8 = OUTLINED_FUNCTION_170();
      sub_1AC5C3958(v8);
      v9 = *(MEMORY[0x1E69E8678] + 4);
      v10 = swift_task_alloc();
      v11 = OUTLINED_FUNCTION_3_12(v10);
      *v11 = v12;
      v11[1] = sub_1AC767554;
      v13 = v0[11];
      v14 = v0[9];
      OUTLINED_FUNCTION_138();

      return MEMORY[0x1EEE6D9C8](v15);
    }
  }

  else
  {
    v5 = OUTLINED_FUNCTION_12_10();
    v6(v5);

    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC76778C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_11();
  v0();
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1AC7677F0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[14];
  v2 = v0[15];
  sub_1AC5C3958(v0[13]);

  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_3_12(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_0(v5);

  return MEMORY[0x1EEE6D9C8](v7);
}

uint64_t sub_1AC767888(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C7D0, &qword_1AC7ACB40);
  OUTLINED_FUNCTION_167(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_31();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v13 = OUTLINED_FUNCTION_167(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v55 - v19;
  v21 = sub_1AC7A0288();
  v22 = OUTLINED_FUNCTION_40(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v55 - v29;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 1;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0u;
  *(v2 + 225) = 0u;
  v31 = MEMORY[0x1E69E7CC0];
  *(v2 + 248) = MEMORY[0x1E69E7CC0];
  *(v2 + 256) = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E110, &qword_1AC7B45E0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  *(v2 + 264) = sub_1AC766C88();
  *(v2 + 120) = a1;
  v58 = a2;
  sub_1AC5D1E4C(a2, v11, &qword_1EB56C7D0, &qword_1AC7ACB40);
  v35 = type metadata accessor for SpeechAnalyzer.Options(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v35);
  v59 = a1;
  if (EnumTagSinglePayload == 1)
  {

    sub_1AC5C720C(v11, &qword_1EB56C7D0, &qword_1AC7ACB40);
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    sub_1AC7A0338();
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) != 1)
    {
      sub_1AC5C720C(v20, &qword_1EB56BE70, &qword_1AC7A8270);
    }
  }

  else
  {
    (*(v24 + 16))(v20, v11, v21);

    sub_1AC76C050(v11);
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    (*(v24 + 32))(v30, v20, v21);
  }

  v37 = *(v2 + 264);
  v38 = *(v24 + 16);
  v38(v18, v30, v21);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v21);
  sub_1AC766664(v3, v18);
  sub_1AC5C720C(v18, &qword_1EB56BE70, &qword_1AC7A8270);
  v39 = v57;
  if (qword_1ED937ED8 != -1)
  {
    swift_once();
  }

  v40 = qword_1ED938608;

  sub_1AC76BE94(v41, v40, &off_1F2138ED0);

  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v42 = sub_1AC79FDE8();
  __swift_project_value_buffer(v42, qword_1ED9386C8);
  v38(v39, v30, v21);
  v43 = sub_1AC79FDC8();
  v44 = sub_1AC7A05D8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_150();
    v46 = OUTLINED_FUNCTION_48();
    v60 = v46;
    *v45 = 136315138;
    sub_1AC76C0AC(&qword_1EB56ACB0, 255, MEMORY[0x1E69E85F0]);
    v47 = sub_1AC7A0CC8();
    v48 = v39;
    v50 = v49;
    v56 = v30;
    v51 = *(v24 + 8);
    v51(v48, v21);
    v52 = sub_1AC5CFE74(v47, v50, &v60);

    *(v45 + 4) = v52;
    _os_log_impl(&dword_1AC5BC000, v43, v44, "LanguageDetectorWorker: Operating at priority %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_70();

    sub_1AC5C720C(v58, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v51(v56, v21);
  }

  else
  {

    sub_1AC5C720C(v58, &qword_1EB56C7D0, &qword_1AC7ACB40);
    v53 = *(v24 + 8);
    v53(v39, v21);
    v53(v30, v21);
  }

  return v3;
}

uint64_t sub_1AC767E3C()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  *(v1 + 264) = v4;
  *(v1 + 272) = v0;
  *(v1 + 256) = v5;
  v6 = v4[1];
  *(v1 + 280) = *v4;
  *(v1 + 296) = v6;
  *(v1 + 312) = v4[2];
  v7 = sub_1AC79FDE8();
  *(v1 + 328) = v7;
  OUTLINED_FUNCTION_22(v7);
  *(v1 + 336) = v8;
  v10 = *(v9 + 64) + 15;
  *(v1 + 344) = swift_task_alloc();
  memcpy((v1 + 16), v3, 0x41uLL);

  return MEMORY[0x1EEE6DFA0](sub_1AC767F1C, v0, 0);
}

void sub_1AC767F1C()
{
  v42 = v0;
  v1 = *(v0 + 272);
  v2 = v1[23];
  if (v2)
  {
    *(v0 + 392) = *(v2 + 16);
    v3 = off_1ED937D60;

    if (v3 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v4 = __swift_project_value_buffer(*(v0 + 328), qword_1ED9386C8);
    v5 = OUTLINED_FUNCTION_27_13(v4);
    v6 = [v5 channelCount];

    if (v6 == 1)
    {
      v7 = OUTLINED_FUNCTION_37_14();
      v8(v7);
      v9 = OUTLINED_FUNCTION_33_12();
      v10 = [v9 commonFormat];

      if (v10 == 3 && OUTLINED_FUNCTION_45_13())
      {
        (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
        v11 = OUTLINED_FUNCTION_45_13();
        v12 = OUTLINED_FUNCTION_33_12();
        v13 = [v12 channelCount];

        if (v13)
        {
          v14 = *v11;
        }

        else
        {
          v14 = 0;
        }

        *(v0 + 408) = sub_1AC5CFAB8(v14, [v3 frameLength]);
        *(v0 + 416) = v20;
        v21 = swift_task_alloc();
        *(v0 + 424) = v21;
        *v21 = v0;
        OUTLINED_FUNCTION_10_22(v21);

        sub_1AC6CD264();
        return;
      }

      v22 = *(v0 + 344);
      v23 = sub_1AC79FDC8();
      v24 = sub_1AC7A05F8();
      v25 = OUTLINED_FUNCTION_366(v24);
      v27 = *(v0 + 336);
      v26 = *(v0 + 344);
      v28 = *(v0 + 328);
      if (v25)
      {
        v29 = OUTLINED_FUNCTION_150();
        v30 = OUTLINED_FUNCTION_48();
        v41 = v30;
        *v29 = 136315138;
        v31 = OUTLINED_FUNCTION_31_14();
        *(v29 + 4) = sub_1AC5CFE74(v31, v32, &v41);
        OUTLINED_FUNCTION_59(&dword_1AC5BC000, v33, v34, "Failed precondition: %s");
        __swift_destroy_boxed_opaque_existential_0(v30);
        OUTLINED_FUNCTION_70();
        OUTLINED_FUNCTION_70();
      }

      (*(v27 + 8))(v26, v28);
      __break(1u);
    }

    v35 = sub_1AC79FDC8();
    v36 = sub_1AC7A05F8();
    if (OUTLINED_FUNCTION_366(v36))
    {
      v37 = OUTLINED_FUNCTION_150();
      v38 = OUTLINED_FUNCTION_48();
      v41 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1AC5CFE74(0xD000000000000024, 0x80000001AC7B7230, &v41);
      OUTLINED_FUNCTION_635(&dword_1AC5BC000, v39, v40, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v38);
      OUTLINED_FUNCTION_129();
      OUTLINED_FUNCTION_70();
    }

    __break(1u);
  }

  else
  {
    v15 = [*(v0 + 16) format];
    v16 = v1[24];
    v1[24] = v15;

    v17 = v1[15];

    sub_1AC5CD620(v0 + 16, v0 + 184);
    v18 = swift_task_alloc();
    *(v0 + 352) = v18;
    *v18 = v0;
    v18[1] = sub_1AC7682E0;
    v19 = *(v0 + 272);

    sub_1AC6E7324(v17, v19, v0 + 16);
  }
}

uint64_t sub_1AC7682E0()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 352);
  *v4 = *v1;
  v3[45] = v7;

  if (v0)
  {
    v8 = v3[43];

    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = v3[34];
    OUTLINED_FUNCTION_496();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1AC768414()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E0F8, &qword_1AC7B4588);
  OUTLINED_FUNCTION_235();
  v2 = swift_allocObject();
  *(v0 + 368) = v2;
  *(v2 + 16) = v1;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC7684A0()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 368) + 16);
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6CCEA8();
}

uint64_t sub_1AC76852C()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 376);
  *v4 = *v1;
  *(v3 + 384) = v0;

  v6 = *(v2 + 272);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1AC768648()
{
  v37 = v1;
  v2 = v1[34];
  v3 = *(v2 + 184);
  *(v2 + 184) = v1[46];

  v1[49] = v1[45];
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v4 = __swift_project_value_buffer(v1[41], qword_1ED9386C8);
  v5 = OUTLINED_FUNCTION_27_13(v4);
  v6 = [v5 channelCount];

  if (v6 == 1)
  {
    v7 = OUTLINED_FUNCTION_37_14();
    v8(v7);
    v9 = OUTLINED_FUNCTION_33_12();
    v10 = [v9 commonFormat];

    if (v10 == 3 && OUTLINED_FUNCTION_45_13())
    {
      (*(v1[42] + 8))(v1[43], v1[41]);
      v11 = OUTLINED_FUNCTION_45_13();
      v12 = OUTLINED_FUNCTION_33_12();
      v13 = [v12 channelCount];

      if (v13)
      {
        v14 = *v11;
      }

      else
      {
        v14 = 0;
      }

      v1[51] = sub_1AC5CFAB8(v14, [v0 frameLength]);
      v1[52] = v15;
      v16 = swift_task_alloc();
      v1[53] = v16;
      *v16 = v1;
      OUTLINED_FUNCTION_10_22(v16);

      sub_1AC6CD264();
      return;
    }

    v17 = v1[43];
    v18 = sub_1AC79FDC8();
    v19 = sub_1AC7A05F8();
    v20 = OUTLINED_FUNCTION_366(v19);
    v22 = v1[42];
    v21 = v1[43];
    v23 = v1[41];
    if (v20)
    {
      v24 = OUTLINED_FUNCTION_150();
      v25 = OUTLINED_FUNCTION_48();
      v36 = v25;
      *v24 = 136315138;
      v26 = OUTLINED_FUNCTION_31_14();
      *(v24 + 4) = sub_1AC5CFE74(v26, v27, &v36);
      OUTLINED_FUNCTION_59(&dword_1AC5BC000, v28, v29, "Failed precondition: %s");
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_70();
      OUTLINED_FUNCTION_70();
    }

    (*(v22 + 8))(v21, v23);
    __break(1u);
  }

  v30 = sub_1AC79FDC8();
  v31 = sub_1AC7A05F8();
  if (OUTLINED_FUNCTION_366(v31))
  {
    v32 = OUTLINED_FUNCTION_150();
    v33 = OUTLINED_FUNCTION_48();
    v36 = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1AC5CFE74(0xD000000000000024, 0x80000001AC7B7230, &v36);
    OUTLINED_FUNCTION_635(&dword_1AC5BC000, v34, v35, "Failed precondition: %s");
    __swift_destroy_boxed_opaque_existential_0(v33);
    OUTLINED_FUNCTION_129();
    OUTLINED_FUNCTION_70();
  }

  __break(1u);
}

uint64_t sub_1AC768940()
{
  OUTLINED_FUNCTION_85();
  v2 = v0[45];
  v1 = v0[46];

  v3 = v0[48];
  v4 = v0[43];

  OUTLINED_FUNCTION_44();

  return v5();
}

uint64_t sub_1AC7689AC()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 424);
  *v4 = *v1;
  *(v3 + 432) = v0;

  v6 = *(v2 + 272);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

_DWORD *sub_1AC768AC8()
{
  v1 = *(v0 + 400);
  sub_1AC5CFBB8(*(v0 + 408), *(v0 + 416));
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  v4 = OUTLINED_FUNCTION_153(v3);
  v5 = *(v0 + 416);
  if (v4)
  {
    result = OUTLINED_FUNCTION_150();
    *result = 134217984;
    v7 = result;
    v8 = 0;
    switch(v5 >> 62)
    {
      case 1uLL:
        v9 = *(v0 + 408);
        v10 = *(v0 + 412);
        v11 = __OFSUB__(v10, v9);
        LODWORD(v8) = v10 - v9;
        if (!v11)
        {
          v8 = v8;
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_16;
      case 2uLL:
        v12 = *(*(v0 + 408) + 16);
        v13 = *(*(v0 + 408) + 24);
        v11 = __OFSUB__(v13, v12);
        v8 = v13 - v12;
        if (!v11)
        {
          goto LABEL_8;
        }

LABEL_16:
        __break(1u);
        return result;
      case 3uLL:
        goto LABEL_8;
      default:
        v8 = *(v0 + 422);
LABEL_8:
        v14 = *(v0 + 408);
        v15 = *(v0 + 416);
        *(v7 + 1) = v8;
        sub_1AC5C28A8(v14, v15);
        OUTLINED_FUNCTION_69();
        _os_log_impl(v16, v17, v18, v19, v20, 0xCu);
        OUTLINED_FUNCTION_129();
        goto LABEL_9;
    }
  }

  sub_1AC5C28A8(*(v0 + 408), *(v0 + 416));
LABEL_9:
  v21 = *(v0 + 272);

  if (*(v21 + 176) == 1)
  {
    v22 = (v0 + 320);
    v23 = (v0 + 312);
    v24 = (v0 + 304);
    v25 = (v0 + 296);
    v26 = (v0 + 288);
    v27 = (v0 + 280);
  }

  else
  {
    v27 = (v0 + 132);
    v28 = *(v0 + 264);
    v30 = *(v21 + 160);
    v29 = *(v21 + 168);
    v31 = *(v21 + 136);
    v32 = *(v21 + 144);
    *(v0 + 84) = *(v21 + 128);
    *(v0 + 92) = v31;
    *(v0 + 100) = v32;
    *(v0 + 116) = v30;
    *(v0 + 124) = v29;
    sub_1AC7A0588();
    v26 = (v0 + 140);
    v25 = (v0 + 148);
    v24 = (v0 + 156);
    v23 = (v0 + 164);
    v22 = (v0 + 172);
  }

  v33 = *v23;
  v34 = *v24;
  v35 = *v25;
  v36 = *v26;
  v37 = *v27;
  v38 = *(v0 + 408);
  v42 = *(v0 + 416);
  v43 = *v22;
  v39 = *(v0 + 392);
  v44 = *(v0 + 344);
  v40 = *(v0 + 256);
  *(v21 + 128) = v37;
  *(v21 + 136) = v36;
  *(v21 + 144) = v35;
  *(v21 + 152) = v34;
  *(v21 + 160) = v33;
  *(v21 + 168) = v43;
  *(v21 + 176) = 0;

  sub_1AC5C28A8(v38, v42);
  *v40 = v37;
  v40[1] = v36;
  v40[2] = v35;
  v40[3] = v34;
  v40[4] = v33;
  v40[5] = v43;

  OUTLINED_FUNCTION_29();

  return v41();
}

uint64_t sub_1AC768D04()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[49];
  sub_1AC5C28A8(v0[51], v0[52]);

  v2 = v0[54];
  v3 = v0[43];

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC768D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_15_5(sub_1AC768D94, a3);
}

void sub_1AC768D94()
{
  OUTLINED_FUNCTION_45();
  v1 = v0[4];
  v2 = v0[5];
  v3 = *(v0[3] + 136);
  type metadata accessor for EARLanguageDetectorResultStream();
  v4 = swift_allocObject();

  v6 = sub_1AC76BF00(v5, v3, v4);
  v0[6] = v6;
  v7 = *(v1 + 200);
  *(v1 + 200) = v6;

  v8 = [*v2 format];
  [v8 sampleRate];
  v10 = v9;
  v11 = v9;

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v12 = swift_task_alloc();
  v0[7] = v12;
  *v12 = v0;
  v12[1] = sub_1AC768F04;
  v13 = v0[3];

  sub_1AC71D214();
}

uint64_t sub_1AC768F04()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_18();
  *v10 = v9;
  v5[8] = v0;

  if (v0)
  {
    v11 = v5[4];
    v12 = sub_1AC769058;
  }

  else
  {
    v13 = v5[6];
    v14 = v5[4];

    v5[9] = v3;
    v12 = sub_1AC76902C;
    v11 = v14;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1AC76902C()
{
  **(v0 + 16) = *(v0 + 72);
  OUTLINED_FUNCTION_29();
  return v1();
}

uint64_t sub_1AC769058()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_44();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_1AC7690B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[26];
  v8 = v4[27];
  v4[26] = a1;
  v4[27] = a2;
  sub_1AC5C3958(v7);
  v9 = v4[28];
  v10 = v4[29];
  v4[28] = a3;
  v4[29] = a4;

  return sub_1AC5C3958(v9);
}

uint64_t sub_1AC76910C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 16) = v4;
  *(v5 + 48) = a4;
  return OUTLINED_FUNCTION_15_5(sub_1AC76912C, v4);
}

uint64_t sub_1AC76912C()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 48) == 1 && (v1 = *(*(v0 + 16) + 184), (*(v0 + 24) = v1) != 0))
  {

    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1AC7691D4()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6CDB14();
}

uint64_t sub_1AC769260()
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
    v9 = *(v3 + 16);
    v10 = sub_1AC74085C;
  }

  else
  {
    v10 = sub_1AC76C2E4;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC769364(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return OUTLINED_FUNCTION_15_5(sub_1AC769384, v1);
}

uint64_t sub_1AC769384()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 48) == 1 && (v1 = *(*(v0 + 16) + 184), (*(v0 + 24) = v1) != 0))
  {

    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }
}

uint64_t sub_1AC76942C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 24) + 16);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6CDB14();
}

uint64_t sub_1AC7694B8()
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
    v9 = *(v3 + 16);
    v10 = sub_1AC7398F8;
  }

  else
  {
    v10 = sub_1AC7695BC;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC7695BC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1AC769630()
{
  OUTLINED_FUNCTION_72();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3();
  }

  v1 = sub_1AC79FDE8();
  v0[3] = __swift_project_value_buffer(v1, qword_1ED9386C8);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  v10 = v0[2];

  v11 = *(v10 + 184);
  v0[4] = v11;
  if (v11)
  {

    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[7] = v15;
    *v15 = v0;
    OUTLINED_FUNCTION_14_19(v15);

    return sub_1AC769B30();
  }
}

uint64_t sub_1AC769770()
{
  OUTLINED_FUNCTION_85();
  v1 = *(*(v0 + 32) + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC6CDB14();
}

uint64_t sub_1AC7697FC()
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
    v9 = *(v3 + 16);
    v10 = sub_1AC71A7F8;
  }

  else
  {
    v10 = sub_1AC769900;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1AC769900()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 32);

  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_14_19(v2);

  return sub_1AC769B30();
}

uint64_t sub_1AC769974()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = *(v3 + 16);
    OUTLINED_FUNCTION_496();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1AC769A94()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1AC769B50()
{
  OUTLINED_FUNCTION_72();
  if (*(v1[2] + 240))
  {
    OUTLINED_FUNCTION_29();

    return v2();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3();
    }

    v4 = sub_1AC79FDE8();
    v1[3] = __swift_project_value_buffer(v4, qword_1ED9386C8);
    v5 = sub_1AC79FDC8();
    v6 = sub_1AC7A05D8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_242(v7);
      _os_log_impl(&dword_1AC5BC000, v5, v6, "LanguageDetectorWorker: Waiting for didFinish", v0, 2u);
      OUTLINED_FUNCTION_129();
    }

    v8 = v1[2];

    v10 = sub_1AC76C0AC(&qword_1EB56E0F0, v9, type metadata accessor for LanguageDetectorWorker);
    v11 = *(MEMORY[0x1E69E8920] + 4);
    v12 = swift_task_alloc();
    v1[4] = v12;
    *v12 = v1;
    v12[1] = sub_1AC769D30;
    v13 = v1[2];
    v14 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v12, v8, v10, 0xD000000000000012, 0x80000001AC7BB050, sub_1AC76BE80, v13, v14);
  }
}

uint64_t sub_1AC769D30()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *(v2 + 32);
  *v4 = *v1;
  *(v3 + 40) = v0;

  v6 = *(v2 + 16);
  OUTLINED_FUNCTION_496();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC769E4C()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 24);
  v2 = sub_1AC79FDC8();
  v3 = sub_1AC7A05D8();
  if (OUTLINED_FUNCTION_153(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_242(v4);
    OUTLINED_FUNCTION_69();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_129();
  }

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1AC769EE8(uint64_t a1, uint64_t a2)
{
  sub_1AC703CD4();
  v4 = *(*(a2 + 248) + 16);
  sub_1AC703E0C(v4);
  v5 = *(a2 + 248);
  *(v5 + 16) = v4 + 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  result = (*(*(v6 - 8) + 16))(v5 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v4, a1, v6);
  *(a2 + 248) = v5;
  return result;
}

uint64_t sub_1AC769F9C(void *a1)
{
  v3 = *(v1 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E100, &unk_1AC7B45A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  OUTLINED_FUNCTION_235();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(inited + 32) = sub_1AC76C048;
  *(inited + 40) = v5;
  v6 = a1;
  sub_1AC69CF9C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC76A044(unint64_t *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCB8, &qword_1AC7A80E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v58 - v10;
  v11 = *a1;
  if (off_1ED937D60 != -1)
  {
LABEL_26:
    swift_once();
  }

  v12 = sub_1AC79FDE8();
  __swift_project_value_buffer(v12, qword_1ED9386C8);
  v13 = sub_1AC79FDC8();
  v14 = sub_1AC7A05E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v67[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1AC5CFE74(0xD000000000000026, 0x80000001AC7BB0A0, v67);
    _os_log_impl(&dword_1AC5BC000, v13, v14, "LanguageDetectorWorker.%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B26EAB10](v16, -1, -1);
    MEMORY[0x1B26EAB10](v15, -1, -1);
  }

  v61 = v5;
  *(v11 + 240) = 1;
  v17 = *(v11 + 184);
  *(v11 + 184) = 0;

  v18 = *(v11 + 200);
  *(v11 + 200) = 0;

  if ((*(v11 + 176) & 1) == 0)
  {
    v20 = *(v11 + 160);
    v19 = *(v11 + 168);
    v21 = *(v11 + 136);
    v67[0] = *(v11 + 128);
    v67[1] = v21;
    v68 = *(v11 + 144);
    v69 = v20;
    v70 = v19;
    v22 = sub_1AC7A0558();
    v25 = *MEMORY[0x1E6960CC0];
    v26 = *(MEMORY[0x1E6960CC0] + 8);
    v27 = *(MEMORY[0x1E6960CC0] + 12);
    v28 = *(MEMORY[0x1E6960CC0] + 16);
    *(v11 + 128) = v22;
    *(v11 + 136) = v23;
    *(v11 + 144) = v24;
    *(v11 + 152) = v25;
    *(v11 + 160) = v26 | (v27 << 32);
    *(v11 + 168) = v28;
    *(v11 + 176) = 0;
    v29 = *(v11 + 208);
    if (v29)
    {
      v30 = *(v11 + 216);
      v63[0] = v22;
      v63[1] = v23;
      v63[2] = v24;
      v63[3] = v25;
      v64 = v26;
      v65 = v27;
      v66 = v28;

      v29(v63);
      sub_1AC5C3958(v29);
    }
  }

  swift_beginAccess();
  v60 = v11;
  v31 = *(v11 + 256);
  v32 = *(v31 + 16);

  v11 = 0;
  v33 = (v31 + 40);
  while (v32 != v11)
  {
    if (v11 >= *(v31 + 16))
    {
      __break(1u);
      goto LABEL_26;
    }

    v5 = *(v33 - 1);
    v34 = *v33;

    (v5)(&v62, v35);
    if (v62)
    {
      sub_1AC6AE294(a2);
      swift_unknownObjectRelease();
    }

    v33 += 2;
    ++v11;
  }

  v36 = v60;
  v37 = *(v60 + 248);
  *(v60 + 248) = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v38 = *(v36 + 224);
    v39 = v61;
    if (v38)
    {
      v40 = *(v36 + 232);
      v41 = a2;
      sub_1AC5D9374(v38);
      v38(a2);
      sub_1AC5C3958(v38);
    }

    else
    {
      v48 = a2;
    }

    v49 = *(v37 + 16);
    if (v49)
    {
      v52 = *(v39 + 16);
      v51 = v39 + 16;
      v50 = v52;
      v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
      v61 = v37;
      v54 = v37 + v53;
      v55 = *(v51 + 56);
      v56 = (v51 - 8);
      do
      {
        v50(v9, v54, v4);
        v62 = a2;
        v57 = a2;
        sub_1AC7A01C8();
        (*v56)(v9, v4);
        v54 += v55;
        --v49;
      }

      while (v49);
    }
  }

  else
  {
    v42 = *(v37 + 16);
    if (v42)
    {
      v43 = *(v61 + 16);
      v44 = v37 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
      v45 = *(v61 + 72);
      v46 = (v61 + 8);
      v47 = v59;
      do
      {
        v43(v47, v44, v4);
        sub_1AC7A01D8();
        (*v46)(v47, v4);
        v44 += v45;
        --v42;
      }

      while (v42);
    }
  }
}

uint64_t sub_1AC76A520()
{
  OUTLINED_FUNCTION_85();
  v0[2] = v1;
  v2 = sub_1AC79FB18();
  v0[3] = v2;
  OUTLINED_FUNCTION_22(v2);
  v0[4] = v3;
  v5 = *(v4 + 64) + 15;
  v0[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_85_0(v6);

  return sub_1AC71CB68();
}

uint64_t sub_1AC76A600()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v6 = *(v5 + 48);
  *v4 = *v1;
  *(v3 + 56) = v7;

  if (v0)
  {
    v8 = *(v3 + 40);

    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC76A734()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    sub_1AC63110C();
    v4 = v17;
    v5 = (v1 + 40);
    do
    {
      v6 = *(v0 + 40);
      v7 = *(v5 - 1);
      v8 = *v5;

      sub_1AC79F968();
      v9 = *(v17 + 16);
      if (v9 >= *(v17 + 24) >> 1)
      {
        sub_1AC63110C();
      }

      v10 = *(v0 + 40);
      v11 = *(v0 + 24);
      *(v17 + 16) = v9 + 1;
      (*(v3 + 32))(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, v10, v11);
      v5 += 2;
      --v2;
    }

    while (v2);
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = *(v0 + 56);

    v4 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v0 + 40);
  **(v0 + 16) = v4;

  OUTLINED_FUNCTION_29();

  return v15();
}

uint64_t sub_1AC76A8A8(uint64_t a1)
{
  if (a1 == 1)
  {
    return sub_1AC79F9B8();
  }

  else
  {
    return MEMORY[0x1EEDC4FE0]();
  }
}

uint64_t sub_1AC76A8C0(void *a1, double a2)
{
  v5 = *(v2 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E100, &unk_1AC7B45A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  *(inited + 32) = sub_1AC76BFB8;
  *(inited + 40) = v7;
  v8 = a1;
  sub_1AC69CF9C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

void sub_1AC76A978(uint64_t *a1, unint64_t a2, Float64 a3)
{
  v6 = sub_1AC79F9C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (off_1ED937D60 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = sub_1AC79FDE8();
    __swift_project_value_buffer(v12, qword_1ED9386C8);
    v13 = sub_1AC79FDC8();
    v14 = sub_1AC7A05E8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v74[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1AC5CFE74(0xD000000000000028, 0x80000001AC7BB070, v74);
      _os_log_impl(&dword_1AC5BC000, v13, v14, "LanguageDetectorWorker.%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1B26EAB10](v16, -1, -1);
      MEMORY[0x1B26EAB10](v15, -1, -1);
    }

    v17 = *(v11 + 192);
    if (!v17 || (*(v11 + 176) & 1) != 0)
    {
      break;
    }

    v19 = *(v11 + 160);
    v18 = *(v11 + 168);
    v20 = *(v11 + 136);
    v74[0] = *(v11 + 128);
    v74[1] = v20;
    v75 = *(v11 + 144);
    v76 = v19;
    v77 = v18;
    v21 = v17;
    [v21 sampleRate];
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (v22 <= -2147483650.0)
    {
      goto LABEL_29;
    }

    if (v22 >= 2147483650.0)
    {
      goto LABEL_30;
    }

    v57 = v21;
    v62 = a2;
    v58 = v10;
    v59 = v7;
    v60 = v6;
    CMTimeMakeWithSeconds(&v70, a3, v22);
    sub_1AC7A0558();
    v61 = v11;
    v10 = HIDWORD(v23);
    sub_1AC7A06B8();
    v24 = v61;
    sub_1AC7A0578();
    v26 = v64;
    v25 = v65;
    v27 = v66;
    v28 = v67;
    v30 = v68;
    v29 = v69;
    v24[16] = v64;
    v24[17] = v25;
    v24[18] = v27;
    v24[19] = v28;
    v24[20] = v30;
    v24[21] = v29;
    *(v24 + 176) = 0;
    v31 = v24[26];
    if (v31)
    {
      v32 = v24[27];
      v70.value = v26;
      *&v70.timescale = v25;
      v70.epoch = v27;
      v71 = v28;
      v72 = v30;
      v73 = v29;

      v31(&v70);
      sub_1AC5C3958(v31);
    }

    v33 = [v62 confidences];
    sub_1AC71BA64();
    v34 = sub_1AC79FE28();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C730, &qword_1AC7AA650);
    v35 = sub_1AC7A0BA8();
    v36 = v35;
    v37 = 0;
    v11 = v34 + 64;
    v38 = 1 << *(v34 + 32);
    v39 = -1;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    v7 = v39 & *(v34 + 64);
    v6 = (v38 + 63) >> 6;
    v63 = v35 + 64;
    if (v7)
    {
      while (1)
      {
        v40 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_20:
        a2 = v40 | (v37 << 6);
        v43 = (*(v34 + 48) + 16 * a2);
        v10 = *v43;
        v44 = v43[1];
        v45 = *(*(v34 + 56) + 8 * a2);

        [v45 doubleValue];
        *(v63 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
        v46 = (v36[6] + 16 * a2);
        *v46 = v10;
        v46[1] = v44;
        *(v36[7] + 8 * a2) = v47;
        v48 = v36[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          break;
        }

        v36[2] = v50;
        if (!v7)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v41 = v37;
      while (1)
      {
        v37 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v37 >= v6)
        {

          v51 = v62;
          v52 = [v62 detectedLangauge];
          v53 = v58;
          v54 = v61;
          sub_1AC76A8A8(v52);
          v55 = swift_beginAccess();
          v56 = v54[32];
          MEMORY[0x1EEE9AC00](v55);
          *(&v57 - 4) = v54;
          *(&v57 - 3) = v36;
          *(&v57 - 2) = v53;
          *(&v57 - 1) = v51;

          sub_1AC68D898(sub_1AC76BFC4, (&v57 - 6), v56);

          (*(v59 + 8))(v53, v60);
          return;
        }

        v42 = *(v11 + 8 * v37);
        ++v41;
        if (v42)
        {
          v40 = __clz(__rbit64(v42));
          v7 = (v42 - 1) & v42;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_27:
    swift_once();
  }
}

void *sub_1AC76AF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v58 = a4;
  v10 = type metadata accessor for EARLocaleAlternative();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AC79FB18();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *(a1 + 8);
  result = v19(v68, v17);
  if (*&v68[0])
  {
    if (*(a2 + 176))
    {
LABEL_33:
      __break(1u);
      return result;
    }

    v56 = *&v68[0];
    v24 = *(a2 + 160);
    v23 = *(a2 + 168);
    v25 = *(a2 + 136);
    *&v68[0] = *(a2 + 128);
    *(&v68[0] + 1) = v25;
    v68[1] = *(a2 + 144);
    v69 = v24;
    v70 = v23;
    v26 = *(a3 + 16);
    v27 = MEMORY[0x1E69E7CC0];
    if (v26)
    {
      v52 = a5;
      v53 = v15;
      v54 = v14;
      v55 = v5;
      v67 = MEMORY[0x1E69E7CC0];
      sub_1AC631858();
      v27 = v67;
      result = sub_1AC637A8C(a3);
      v29 = result;
      v30 = 0;
      v66 = a3 + 64;
      v60 = v28;
      v61 = v26;
      v59 = a3 + 72;
      while ((v29 & 0x8000000000000000) == 0 && v29 < 1 << *(a3 + 32))
      {
        v31 = v29 >> 6;
        if ((*(v66 + 8 * (v29 >> 6)) & (1 << v29)) == 0)
        {
          goto LABEL_28;
        }

        if (*(a3 + 36) != v28)
        {
          goto LABEL_29;
        }

        v65 = v28;
        v64 = v22;
        v32 = (*(a3 + 48) + 16 * v29);
        v34 = *v32;
        v33 = v32[1];
        v35 = *(*(a3 + 56) + 8 * v29);

        sub_1AC79F968();
        *&v13[*(v63 + 20)] = v35;
        v36 = v27;
        v67 = v27;
        v37 = *(v27 + 16);
        if (v37 >= *(v27 + 24) >> 1)
        {
          sub_1AC631858();
          v36 = v67;
        }

        *(v36 + 16) = v37 + 1;
        v27 = v36;
        result = sub_1AC76BFE4(v13, v36 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v37);
        v38 = 1 << *(a3 + 32);
        if (v29 >= v38)
        {
          goto LABEL_30;
        }

        v39 = *(v66 + 8 * v31);
        if ((v39 & (1 << v29)) == 0)
        {
          goto LABEL_31;
        }

        if (*(a3 + 36) != v65)
        {
          goto LABEL_32;
        }

        v40 = v39 & (-2 << (v29 & 0x3F));
        if (v40)
        {
          v38 = __clz(__rbit64(v40)) | v29 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v41 = a3;
          v42 = v13;
          v43 = v31 << 6;
          v44 = v31 + 1;
          v45 = (v59 + 8 * v31);
          while (v44 < (v38 + 63) >> 6)
          {
            v47 = *v45++;
            v46 = v47;
            v43 += 64;
            ++v44;
            if (v47)
            {
              result = sub_1AC637E98(v29, v65, v64 & 1);
              v38 = __clz(__rbit64(v46)) + v43;
              goto LABEL_21;
            }
          }

          result = sub_1AC637E98(v29, v65, v64 & 1);
LABEL_21:
          v13 = v42;
          a3 = v41;
        }

        v22 = 0;
        ++v30;
        v29 = v38;
        v28 = v60;
        if (v30 == v61)
        {
          v14 = v54;
          v48 = v58;
          v15 = v53;
          a5 = v52;
          goto LABEL_25;
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
      goto LABEL_33;
    }

    v48 = v58;
LABEL_25:
    v49 = [a5 dominantLocale];
    sub_1AC79FF68();

    v50 = v57;
    sub_1AC79F968();
    sub_1AC6AE2EC(v68, v27, v48, v50);
    swift_unknownObjectRelease();

    return (*(v15 + 8))(v50, v14);
  }

  return result;
}

uint64_t sub_1AC76B3E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 264);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E100, &unk_1AC7B45A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AC7A6D00;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  *(inited + 32) = sub_1AC76BFAC;
  *(inited + 40) = v9;
  swift_unknownObjectRetain();
  v10 = a3;
  sub_1AC69CF9C(inited);
  swift_setDeallocating();
  return sub_1AC7264BC();
}

uint64_t sub_1AC76B4B0(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *result;
  v6 = *(*result + 200);
  if (*(*(*result + 120) + 16) == a2 || (v6 ? (v7 = v6 == a2) : (v7 = 0), v7))
  {
    swift_beginAccess();
    v8 = *(v5 + 256);
    v9 = *(v8 + 16);

    v10 = 0;
    for (i = (v8 + 40); ; i += 2)
    {
      if (v9 == v10)
      {
      }

      if (v10 >= *(v8 + 16))
      {
        break;
      }

      v13 = *(i - 1);
      v12 = *i;

      v13(&v15, v14);
      if (v15)
      {
        sub_1AC6AE294(a4);
        swift_unknownObjectRelease();
      }

      ++v10;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC76B5D0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  v3 = *(v0 + 184);

  v4 = *(v0 + 200);

  v5 = *(v0 + 216);
  sub_1AC5C3958(*(v0 + 208));
  v6 = *(v0 + 232);
  sub_1AC5C3958(*(v0 + 224));
  v7 = *(v0 + 248);

  v8 = *(v0 + 256);

  v9 = *(v0 + 264);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1AC76B640()
{
  sub_1AC76B5D0();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC76B66C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC68D878();
}

uint64_t sub_1AC76B6F8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1AC5C517C;

  return sub_1AC767E3C();
}

uint64_t sub_1AC76B7A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AC76B7C8, v1, 0);
}

uint64_t sub_1AC76B7C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v1 + 176);
  v4 = *(v1 + 144);
  v5 = *(v1 + 160);
  *v2 = *(v1 + 128);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 48) = v3;
  OUTLINED_FUNCTION_44();
  return v6();
}

uint64_t sub_1AC76B804(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1AC5C4D48;

  return sub_1AC76910C(v6, v7, v8, a4);
}

uint64_t sub_1AC76B898(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C5380;

  return sub_1AC769364(a1);
}

uint64_t sub_1AC76B92C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC5C4D48;

  return sub_1AC769614();
}

uint64_t sub_1AC76B9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC76B9E0, v4, 0);
}

uint64_t sub_1AC76B9E0()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[6];
  sub_1AC7690B4(v0[2], v0[3], v0[4], v0[5]);
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t EARLocaleAlternative.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC79FB18();
  v4 = OUTLINED_FUNCTION_80(v3);
  v6 = *(v5 + 16);

  return v6(a1, v1, v4);
}

uint64_t type metadata accessor for EARLocaleAlternative()
{
  result = qword_1EB56E0D0;
  if (!qword_1EB56E0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL static EARLocaleAlternative.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1B26E85C0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EARLocaleAlternative();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t EARLocaleAlternative.hash(into:)()
{
  sub_1AC79FB18();
  sub_1AC76C0AC(&qword_1EB56B468, 255, MEMORY[0x1E6969770]);
  OUTLINED_FUNCTION_170();
  sub_1AC79FE58();
  v1 = *(v0 + *(type metadata accessor for EARLocaleAlternative() + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1B26E9A70](*&v1);
}

uint64_t EARLocaleAlternative.hashValue.getter()
{
  sub_1AC7A0E78();
  EARLocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC76BC74()
{
  sub_1AC7A0E78();
  EARLocaleAlternative.hash(into:)();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC76BD90(uint64_t a1, uint64_t a2)
{
  result = sub_1AC76C0AC(&qword_1EB56E0E8, a2, type metadata accessor for LanguageDetectorWorker);
  *(a1 + 8) = result;
  return result;
}

id sub_1AC76BDE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  if (a1)
  {
    sub_1AC79FB18();
    v9 = sub_1AC7A0148();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v5 initWithLanguageConstraints:v9 alternativesCount:a2 resultReportingFrequency:a3 useVAD:a4 & 1];

  return v10;
}

void sub_1AC76BE94(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3)
{
  os_unfair_lock_lock(a2 + 4);
  sub_1AC6B42B4(&a2[6], a1, a3);

  os_unfair_lock_unlock(a2 + 4);
}

uint64_t sub_1AC76BF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_defaultActor_initialize();
  *(a3 + 152) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 136) = a2;

  *(a3 + 112) = sub_1AC6A836C();
  *(a3 + 120) = v5;
  *(a3 + 128) = v6;
  *(a3 + 152) = &off_1F2138EE0;
  swift_unknownObjectWeakAssign();
  v7 = *(a3 + 136);

  sub_1AC6A8434(a3);

  return a3;
}

uint64_t sub_1AC76BFE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EARLocaleAlternative();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC76C050(uint64_t a1)
{
  v2 = type metadata accessor for SpeechAnalyzer.Options(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AC76C0AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1AC76C0F4()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E118, &qword_1AC7B45E8);
  OUTLINED_FUNCTION_22(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  OUTLINED_FUNCTION_10_14(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_7_12(v5);

  return sub_1AC7673D4(v6, v7, v8, v9, v10);
}

uint64_t sub_1AC76C1EC()
{
  OUTLINED_FUNCTION_45();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56E138, &qword_1AC7B4620);
  OUTLINED_FUNCTION_22(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  OUTLINED_FUNCTION_10_14(*(v4 + 64));
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v6 = OUTLINED_FUNCTION_7_12(v5);

  return sub_1AC766F20(v6, v7, v8, v9, v10);
}

uint64_t SFEntitledAssetTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Hammer"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Assistant"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"GeoLMRegionMapping"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"GeoLMRegionSpecific"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"LanguageDetector"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"GeneralASR"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SFEntitledAssetTypeForTaskName(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Dictation", @"VoiceMail", @"Captioning", @"SearchOrMessaging", @"WebSearch", @"DictationCC", @"SpellCC", @"SiriDictation", @"Spelling", @"Tshot", @"Unspecified", @"Confirmation", @"FoundInCalls", 0}];
  v3 = [v2 containsObject:v1];

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"OfflineTranscription", @"LiveTranscription", @"TranslateApp", 0}];
    v6 = [v5 containsObject:v1];

    if (v6)
    {
      v4 = 7;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__177(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC77252C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SFUserIdHash(uint64_t a1)
{
  if (a1)
  {
    v1 = [@"User" stringByAppendingString:a1];
    v2 = SFHash64String(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SFUserIdHashToString(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llx", objc_msgSend(a1, "unsignedLongLongValue")];
    v1 = vars8;
  }

  return a1;
}

id SFUserIdHashFromString(void *a1)
{
  v1 = a1;
  v2 = SFScanHexString(v1);
  if (v2 || [v1 isEqual:@"0"])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithLongLong:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *SFUserDescription(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!(v3 | v4))
  {
    v10 = @"Default";
    v11 = @"Default";
    goto LABEL_9;
  }

  if (!v3)
  {
    v6 = &stru_1F2139F58;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = &stru_1F2139F58;
    goto LABEL_8;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v3];
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = MEMORY[0x1E696AEC0];
  v8 = SFUserIdHashToString(v5);
  v9 = [v7 stringWithFormat:@"<%@>", v8];

LABEL_8:
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@%@", @"User", v6, v9];

LABEL_9:

  return v10;
}

id SFUserIdHashFromDataSiteURL(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lastPathComponent];
  if (([v2 isEqual:@"Default"] & 1) == 0)
  {
    v3 = SFUserIdHashFromString(v2);
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "SFUserIdHashFromDataSiteURL";
      v9 = 2112;
      v10 = v1;
      _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "%s Unrecognized dataSiteURL: %@", &v7, 0x16u);
    }
  }

  v3 = 0;
LABEL_6:

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

id SFPersonaIdFromSiteURL(void *a1)
{
  v1 = [a1 lastPathComponent];
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v1];

  if (v2)
  {
    v2 = v1;
  }

  return v2;
}

id SFDataSiteURL(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"User" isDirectory:1 relativeToURL:a1];
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1 relativeToURL:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"Default" isDirectory:1 relativeToURL:a1];
  }

  return v5;
}

__CFString *SFSpeechProfileSiteDescription(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 lastPathComponent];
  if ([v2 isEqual:@"Default"])
  {
    v3 = @"Default";
    v4 = @"Default";
  }

  else
  {
    v5 = SFPersonaIdFromSiteURL(v1);
    v3 = v5;
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = SFLogFramework;
      if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "SFSpeechProfileSiteDescription";
        v12 = 2112;
        v13 = v1;
        _os_log_error_impl(&dword_1AC5BC000, v7, OS_LOG_TYPE_ERROR, "%s Unrecognized siteURL: %@", &v10, 0x16u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

__CFString *SFModelTaskToString(unint64_t a1)
{
  if (a1 > 0xA)
  {
    return @"Invalid Task";
  }

  else
  {
    return off_1E797BD60[a1];
  }
}

void sub_1AC775944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__658(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC775CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC775DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC775EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC775FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC7762DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC7766CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC776848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC776B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ExpandTranscription(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v2 addObject:v1];
  v3 = [v1 segments];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __ExpandTranscription_block_invoke;
  v10[3] = &unk_1E797BFA0;
  v11 = v1;
  v12 = v3;
  v4 = v2;
  v13 = v4;
  v5 = v3;
  v6 = v1;
  [v5 enumerateObjectsUsingBlock:v10];
  v7 = v13;
  v8 = v4;

  return v4;
}

void __ExpandTranscription_block_invoke(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 alternativeSubstrings];
  v7 = [v5 alternativeConfidences];
  v8 = [v6 mutableCopy];
  v9 = [v7 mutableCopy];
  v10 = [v5 substring];
  [v8 insertObject:v10 atIndex:0];

  v11 = MEMORY[0x1E696AD98];
  [v5 confidence];
  v12 = [v11 numberWithFloat:?];
  [v9 insertObject:v12 atIndex:0];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __ExpandTranscription_block_invoke_2;
  v17[3] = &unk_1E797BF78;
  v18 = a1[4];
  v19 = v5;
  v20 = v8;
  v21 = v9;
  v25 = a3;
  v22 = v7;
  v23 = a1[5];
  v24 = a1[6];
  v13 = v7;
  v14 = v9;
  v15 = v8;
  v16 = v5;
  [v6 enumerateObjectsUsingBlock:v17];
}

void __ExpandTranscription_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v69 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [*(a1 + 32) segments];
  v7 = [v6 subarrayWithRange:{0, *(a1 + 88)}];
  [v63 addObjectsFromArray:v7];

  v8 = [*(a1 + 40) substringRange];
  v59 = v9;
  v61 = v8;
  v10 = [v5 length];
  [*(a1 + 48) removeObjectAtIndex:a3 + 1];
  [*(a1 + 56) removeObjectAtIndex:a3 + 1];
  v11 = [*(a1 + 64) objectAtIndex:a3];
  v12 = [SFTranscriptionSegment alloc];
  [*(a1 + 40) timestamp];
  v14 = v13;
  [*(a1 + 40) duration];
  v16 = v15;
  [v11 floatValue];
  v18 = v17;
  v19 = [*(a1 + 48) copy];
  v20 = [*(a1 + 56) copy];
  v21 = [*(a1 + 40) phoneSequence];
  v22 = [*(a1 + 40) ipaPhoneSequence];
  LODWORD(v23) = v18;
  v24 = [(SFTranscriptionSegment *)v12 _initWithSubstring:v5 range:v61 timestamp:v10 duration:v19 confidence:v20 alternativeSubstrings:v21 alternativeConfidences:v14 phoneSequence:v16 ipaPhoneSequence:v23 voiceAnalytics:v22, 0];

  v57 = v5;
  [*(a1 + 48) insertObject:v5 atIndex:a3 + 1];
  v55 = v11;
  [*(a1 + 56) insertObject:v11 atIndex:a3 + 1];
  v54 = v24;
  [v63 addObject:v24];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v56 = a1;
  obj = [*(a1 + 72) subarrayWithRange:{*(a1 + 88) + 1, objc_msgSend(*(a1 + 72), "count") + ~*(a1 + 88)}];
  v25 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
  if (v25)
  {
    v26 = v25;
    v62 = v10 - v59;
    v60 = *v65;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v65 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v64 + 1) + 8 * i);
        v29 = [v28 substringRange];
        v31 = v30;
        v32 = [SFTranscriptionSegment alloc];
        v33 = [v28 substring];
        [v28 timestamp];
        v35 = v34;
        [v28 duration];
        v37 = v36;
        [v28 confidence];
        v39 = v38;
        v40 = [v28 alternativeSubstrings];
        v41 = [v28 alternativeConfidences];
        v42 = [v28 phoneSequence];
        v43 = [v28 ipaPhoneSequence];
        LODWORD(v44) = v39;
        v45 = [(SFTranscriptionSegment *)v32 _initWithSubstring:v33 range:v62 + v29 timestamp:v31 duration:v40 confidence:v41 alternativeSubstrings:v42 alternativeConfidences:v35 phoneSequence:v37 ipaPhoneSequence:v44 voiceAnalytics:v43, 0];

        [v63 addObject:v45];
      }

      v26 = [obj countByEnumeratingWithState:&v64 objects:v68 count:16];
    }

    while (v26);
  }

  v46 = [v56[4] formattedString];
  v47 = [v56[5] substringRange];
  v49 = [v46 stringByReplacingCharactersInRange:v47 withString:{v48, v57}];

  v50 = [SFTranscription alloc];
  v51 = [v63 copy];
  v52 = [(SFTranscription *)v50 _initWithSegments:v51 formattedString:v49 speakingRate:0.0 averagePauseDuration:0.0];

  [v56[10] addObject:v52];
  v53 = *MEMORY[0x1E69E9840];
}

void sub_1AC77ABD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1570(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC780F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1723(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1841(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC7881F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_1AC788DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC788F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC78917C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC789B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak((v31 - 128));
  _Unwind_Resume(a1);
}

void sub_1AC78D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC791A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2196(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC7935C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

id VoiceAnalyticsForSegment(void *a1, double a2, double a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a1;
  [v5 acousticFeatures];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v6 = v48 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v7)
  {

    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    goto LABEL_34;
  }

  v39 = v5;
  v40 = 0;
  v8 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = *v46;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v46 != v44)
      {
        objc_enumerationMutation(v6);
      }

      v10 = *(*(&v45 + 1) + 8 * i);
      v11 = [v6 objectForKey:{v10, v39}];
      v12 = [v11 acousticFeatureValuePerFrame];
      v13 = [v12 count];

      if (v13)
      {
        [v11 frameDuration];
        if (v14 > 1.0)
        {
          v14 = v14 / 1000.0;
        }

        if (v14 == 0.0)
        {
          v15 = 1.0;
        }

        else
        {
          v15 = v14;
        }

        v16 = [v11 acousticFeatureValuePerFrame];
        v17 = [v16 count];

        if (v17 >= (a2 / v15))
        {
          v18 = (a2 / v15);
        }

        else
        {
          v18 = v17;
        }

        if (v17 >= (a3 / v15))
        {
          v19 = (a3 / v15);
        }

        else
        {
          v19 = v17;
        }

        v20 = v19 - v18;
        v21 = objc_autoreleasePoolPush();
        if ([v10 isEqualToString:@"jitter"])
        {
          v22 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v25 = [(SFAcousticFeature *)v22 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v43;
          v43 = v25;
          goto LABEL_26;
        }

        if ([v10 isEqualToString:@"shimmer"])
        {
          v27 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v28 = [(SFAcousticFeature *)v27 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v42;
          v42 = v28;
          goto LABEL_26;
        }

        if ([v10 isEqualToString:@"pitch"])
        {
          v29 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v30 = [(SFAcousticFeature *)v29 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v41;
          v41 = v30;
          goto LABEL_26;
        }

        if ([v10 isEqualToString:@"voicing"])
        {
          v31 = [SFAcousticFeature alloc];
          v23 = [v11 acousticFeatureValuePerFrame];
          v24 = [v23 subarrayWithRange:{v18, v20}];
          v32 = [(SFAcousticFeature *)v31 _initWithAcousticFeatureValue:v24 frameDuration:v15];
          v26 = v40;
          v40 = v32;
LABEL_26:
        }

        objc_autoreleasePoolPop(v21);
        v8 = 1;
      }
    }

    v7 = [v6 countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v7);

  if (v8)
  {
    v34 = v42;
    v33 = v43;
    v7 = v40;
    v35 = v41;
    v36 = [[SFVoiceAnalytics alloc] _initWithJitter:v43 shimmer:v42 pitch:v41 voicing:v40];
    v5 = v39;
  }

  else
  {
    v36 = 0;
    v5 = v39;
    v7 = v40;
    v34 = v42;
    v33 = v43;
    v35 = v41;
  }

LABEL_34:

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

uint64_t SFIsInternalInstall()
{
  if (SFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&SFIsInternalInstall_onceToken, &__block_literal_global_2153);
  }

  return SFIsInternalInstall_isInternal;
}

void *SFSetError(void *result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      result = a2;
      *v3 = a2;
    }
  }

  return result;
}

id SFHash64(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 length];
    v4 = [v2 bytes];
    if (v3 >= 0x10)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v4 + v5)) ^ ((0x9DDFEA08EB382D69 * *(v4 + v5)) >> 44));
        v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * *(v4 + v5 + 8)) ^ ((0x9DDFEA08EB382D69 * *(v4 + v5 + 8)) >> 44));
        v6 -= 0x622015F714C7D297 * ((v9 ^ (v9 >> 41)) + (v8 ^ (v8 >> 41)));
        v5 += 16;
      }

      while (v5 < (v3 & 0xFFFFFFF0));
    }

    else
    {
      LODWORD(v5) = 0;
      v6 = 0;
    }

    if (v3 > v5)
    {
      __memcpy_chk();
    }

    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

id SFHash64String(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = SFHash64(v1);

  return v2;
}

uint64_t SFScanHexString(uint64_t a1)
{
  v4 = 0;
  v1 = [MEMORY[0x1E696AE88] scannerWithString:a1];
  [v1 scanHexLongLong:&v4];
  v2 = v4;

  return v2;
}

id SFGetOrCreateDirectoryPath(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a1 isDirectory:1];
    v4 = SFGetOrCreateDirectoryURL(v3, a2);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:-1000 userInfo:0];
    v3 = v5;
    v4 = 0;
    if (a2 && v5)
    {
      v6 = v5;
      v4 = 0;
      *a2 = v3;
    }
  }

  return v4;
}

id SFGetOrCreateDirectoryURL(void *a1, void *a2)
{
  v3 = a1;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = [v4 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:a2];

    v6 = 0;
    if (v5)
    {
      v6 = v3;
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:-1000 userInfo:0];
    if (a2 && v7)
    {
      v7 = v7;
      *a2 = v7;
    }

    v6 = 0;
  }

  return v6;
}

uint64_t SFRemoveItemIfExistsAtPath(void *a1, void *a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];

    v5 = SFRemoveItemIfExistsAtURL(v4, a2);
    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid path: %@", v3, *MEMORY[0x1E696A578]];

    v15[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v8 errorWithDomain:v9 code:-1000 userInfo:v11];
    if (a2)
    {
      if (v12)
      {
        v12 = v12;
        *a2 = v12;
      }
    }

    v13 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

uint64_t SFRemoveItemIfExistsAtURL(void *a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = 0;
    v5 = [v4 removeItemAtURL:v3 error:&v17];
    v6 = v17;
    v7 = v6;
    if (v5)
    {

LABEL_9:
      v12 = 1;
      goto LABEL_10;
    }

    v13 = [v6 code];

    if (v13 == 4)
    {
      goto LABEL_9;
    }

    v12 = 0;
    if (a2 && v7)
    {
      v16 = v7;
      v12 = 0;
      *a2 = v7;
    }
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A250];
    v18 = *MEMORY[0x1E696A578];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid item URL: %@", 0];
    v19[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:v9 code:-1000 userInfo:v10];
    if (a2 && v11)
    {
      v11 = v11;
      *a2 = v11;
    }

    v12 = 0;
  }

LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t SFWritePropertyList(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [MEMORY[0x1E696AE40] dataWithPropertyList:a1 format:200 options:0 error:a4];
  if ([v8 length])
  {
    v9 = [v7 path];
    v10 = open_dprotected_np([v9 UTF8String], 1538, a3, 0, 384);

    v11 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v10 closeOnDealloc:1];
    v12 = [v11 writeData:v8 error:a4];
    if ((v12 & 1) == 0)
    {
      v13 = [v7 URLByDeletingLastPathComponent];
      v14 = [v13 path];

      v20 = 0;
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v16 = [v15 fileExistsAtPath:v14 isDirectory:&v20];

      if ((v16 & 1) == 0)
      {
        v17 = SFLogFramework;
        if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v22 = "SFWritePropertyList";
          v23 = 2112;
          v24 = v14;
          v25 = 1024;
          v26 = v20;
          _os_log_error_impl(&dword_1AC5BC000, v17, OS_LOG_TYPE_ERROR, "%s Parent directory: %@ does not exist (isDirectory: %i)", buf, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

id SFReadPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a1 options:0 error:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:a2 format:0 error:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL IsNarrowBand(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    mSampleRate = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [v7 formatDescriptions];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(*(*(&v17 + 1) + 8 * j));
              if (StreamBasicDescription && mSampleRate < StreamBasicDescription->mSampleRate)
              {
                mSampleRate = StreamBasicDescription->mSampleRate;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v10);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v3);
  }

  else
  {
    mSampleRate = 0.0;
  }

  v14 = mSampleRate <= 8000.0 && mSampleRate > 0.0;

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __Block_byref_object_copy__2448(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC797D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id xpcInterface_EARSpeechRecognizer()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B1C8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_setExtraLmList_sandboxExtensions_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_setExtraLmList_sandboxExtensions_ argumentIndex:1 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v24[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_modelInfoWithReply_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v23[2] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v12 = [v10 setWithArray:v11];
  [v0 setClasses:v12 forSelector:sel_recognitionStatisticsWithReply_ argumentIndex:0 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v15 = [v13 setWithArray:v14];
  [v0 setClasses:v15 forSelector:sel_recognitionUtterenceStatisticsWithReply_ argumentIndex:0 ofReply:1];

  v16 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v18 = [v16 setWithArray:v17];
  [v0 setClasses:v18 forSelector:sel_recognitionMetricsWithReply_ argumentIndex:0 ofReply:1];

  v19 = *MEMORY[0x1E69E9840];

  return v0;
}

id xpcInterface_EARSpeechRecognitionResultStream()
{
  v13[3] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F214D3A0];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_speechRecognizerDidProduceEndpointFeaturesWithWordCount_trailingSilenceDuration_eosLikelihood_pauseCounts_silencePosterior_processedAudioDurationInMilliseconds_acousticEndpointerScore_ argumentIndex:3 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v13[2] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_speechRecognizerDidRecognizeFinalResultMultiUserPackages_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
  v9 = [v7 setWithArray:v8];
  [v0 setClasses:v9 forSelector:sel_speechRecognizerDidProduceLoggableMultiUserPackages_ argumentIndex:0 ofReply:0];

  v10 = *MEMORY[0x1E69E9840];

  return v0;
}

id xpcInterface_LSRAssets()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B288];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_getContextualNamedEntitySourcesForApplication_taskName_reply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_getContextualRankedContactSourcesForApplication_taskName_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

id xpcInterface_EAREuclid()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B2E8];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_findNearestNeighbors_numberOfNeighbors_reply_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_computeEmbeddings_reply_ argumentIndex:0 ofReply:1];

  v7 = *MEMORY[0x1E69E9840];

  return v0;
}

id xpcInterface_EARLanguageDetector()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B528];
  v1 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_modelInfoWithReply_ argumentIndex:0 ofReply:1];

  v4 = *MEMORY[0x1E69E9840];

  return v0;
}

id xpcInterface_EARFullPayloadCorrector()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B348];
  v1 = MEMORY[0x1E695DFD8];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_correctPostITNOutput_withOptions_reply_ argumentIndex:1 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_correctPostITNOutput_withOptions_reply_ argumentIndex:0 ofReply:1];

  v7 = *MEMORY[0x1E69E9840];

  return v0;
}

id xpcInterface_LSRAssetInventory()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F215B408];
  v1 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_allocatedLocalesWithReply_ argumentIndex:0 ofReply:1];

  v4 = *MEMORY[0x1E69E9840];

  return v0;
}

void SFEndModelRetention(const void *a1)
{
  if (!a1)
  {
    a1 = &__block_literal_global_2854;
  }

  v1 = _Block_copy(a1);
  [SFSpeechAnalyzer endModelRetentionWithCompletion:v1];
}

void sub_1AC79C2BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3056(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC79C5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79CAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79CCFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79D3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79E928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AC79EB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SFEntitledAssetConfig *SFEntitledAssetConfigForLanguageDetector()
{
  v0 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"default" assetType:6];

  return v0;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}