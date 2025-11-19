uint64_t sub_18F13097C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFDA0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_18F16A094((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_18F130A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v27 = a2;
  if (a3 != a2)
  {
    v33 = *a4;
    v8 = (v33 + 48 * a3);
    v9 = a1 - a3;
    while (2)
    {
      v30 = a3;
      v28 = v9;
      v29 = v8;
      while (1)
      {
        sub_18F139A94(v8, v32);
        v10 = v8 - 3;
        v11 = sub_18F139A94((v8 - 3), v31);
        MEMORY[0x1EEE9AC00](v11);
        v25 = v32;
        v26 = a6;
        v12 = sub_18F229E24(sub_18F22D8F8, v24, a5);
        if (v13)
        {
          break;
        }

        v14 = v12;
        MEMORY[0x1EEE9AC00](v12);
        v25 = v31;
        v26 = a6;
        v15 = sub_18F229E24(sub_18F22D8F8, v24, a5);
        if (v16)
        {
          sub_18F13E500(v31);
          result = sub_18F13E500(v32);
        }

        else
        {
          v18 = v15;
          sub_18F13E500(v31);
          result = sub_18F13E500(v32);
          if (v14 >= v18)
          {
            goto LABEL_13;
          }
        }

        if (!v33)
        {
          __break(1u);
          return result;
        }

        v20 = v8[1];
        v19 = v8[2];
        v21 = *v8;
        v22 = *(v8 - 2);
        *v8 = *v10;
        v8[1] = v22;
        v8[2] = *(v8 - 1);
        *v10 = v21;
        *(v8 - 2) = v20;
        v8 -= 3;
        v10[2] = v19;
        if (__CFADD__(v9++, 1))
        {
          goto LABEL_13;
        }
      }

      sub_18F13E500(v31);
      sub_18F13E500(v32);
LABEL_13:
      a3 = v30 + 1;
      v8 = v29 + 3;
      v9 = v28 - 1;
      if (v30 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_18F130C90()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_18F130D80()
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

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_18F130E7C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F130F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_83_7();
  v11 = OUTLINED_FUNCTION_56();
  sub_18F131034(v11);
  v12 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v12);
  sub_18F0FA038(v10 + 16, &qword_1EACD7038);
  v13 = OUTLINED_FUNCTION_43_1();
  v14(v13);

  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_36();

  return v17(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

void sub_18F131034(void (*a1)(void))
{
  if (a1)
  {
    a1();
  }

  oslog = sub_18F52163C();
  v1 = sub_18F52223C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136446466;
    v4 = sub_18F5227FC();
    v6 = sub_18F11897C(v4, v5, &v9);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2082;
    if (qword_1ED6FD140 != -1)
    {
      swift_once();
    }

    sub_18F52305C();
    MEMORY[0x193ADB000]();

    MEMORY[0x193ADB000](15934, 0xE200000000000000);
    v7 = sub_18F11897C(0x3A45533C3CLL, 0xE500000000000000, &v9);

    *(v2 + 14) = v7;
    _os_log_impl(&dword_18F0E9000, oslog, v1, "Ending %{public}s %{public}s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v3, -1, -1);
    MEMORY[0x193ADD350](v2, -1, -1);
  }

  else
  {
  }
}

void OUTLINED_FUNCTION_114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, uint64_t a15)
{
  a15 = 0;
  a13 = 0u;
  a14 = 0u;

  sub_18F1CDF90(&a13);
}

__n128 OUTLINED_FUNCTION_114_5@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a6;
  *(v8 + 40) = a5;
  *(v8 + 16) = a2;
  *(v8 + 24) = a4;
  *v8 = a3;
  *(v8 + 72) = a1;
  *(v8 + 120) = a8;
  *(v8 + 80) = *(v9 + 40);
  result = *(v9 + 56);
  *(v8 + 48) = result;
  *(v8 + 32) = *(v9 + 72);
  *(v8 + 96) = *(v9 + 16);
  *(v8 + 8) = *(v9 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_114_6()
{
  *(v3 + 34) = v2;
  *(v3 + 42) = v0;

  return sub_18F0FD6C4(v1 + 776, v1 + 816);
}

uint64_t sub_18F13134C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_123_5();
    v10 = OUTLINED_FUNCTION_12_7();

    return v11(v10);
  }
}

uint64_t OUTLINED_FUNCTION_113()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_113_2()
{

  return sub_18F0FECD4(v0 + 8, v1 - 136);
}

uint64_t sub_18F131528()
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
  *(v5 + 96) = v0;

  if (v0)
  {
    sub_18F131680(*(v5 + 72));

    v9 = OUTLINED_FUNCTION_9_12();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    sub_18F131680(*(v5 + 72));

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_18F131680(uint64_t a1)
{
  v2 = type metadata accessor for Annotation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F131708()
{
  OUTLINED_FUNCTION_69();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_18F131FD8;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_18F1317E8()
{
  OUTLINED_FUNCTION_69();
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC10AppIntents14PreparedIntent_dependencies);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_18F1320E0;

  return sub_18F1316F0(v1);
}

uint64_t sub_18F131884()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = *(v0 + 16);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_6(v6);
  *v7 = v8;
  v7[1] = sub_18F0FC870;

  return sub_18F131928(v4, v2, v5);
}

uint64_t sub_18F131928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD0658);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F131A38, 0, 0);
}

uint64_t sub_18F131A38()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v19 = **(v0 + 112);
    v3 = v1 + 32;
    v4 = sub_18F521EFC();
    do
    {
      v6 = *(v0 + 152);
      v5 = *(v0 + 160);
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v4);
      sub_18F0FD724(v3, v0 + 16);
      v7 = swift_allocObject();
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      sub_18F0FD0B4((v0 + 16), v7 + 32);
      sub_18F116908(v5, v6, &qword_1EACD0418);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v4);
      v9 = *(v0 + 152);
      if (EnumTagSinglePayload == 1)
      {
        sub_18F0EF148(*(v0 + 152), &qword_1EACD0418);
      }

      else
      {
        sub_18F521EEC();
        (*(*(v4 - 8) + 8))(v9, v4);
      }

      if (*(v7 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v10 = sub_18F521E1C();
        v12 = v11;
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      if (v12 | v10)
      {
        v13 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v10;
        *(v0 + 80) = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v0 + 160);
      *(v0 + 88) = 1;
      *(v0 + 96) = v13;
      *(v0 + 104) = v19;
      swift_task_create();

      sub_18F0EF148(v14, &qword_1EACD0418);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9950);
  sub_18F521F8C();
  sub_18F131D68();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 168) = v15;
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_1_16(v15);

  return MEMORY[0x1EEE6D8C8](v17);
}

uint64_t sub_18F131D28()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return swift_deallocObject();
}

unint64_t sub_18F131D68()
{
  result = qword_1ED6FE7D0;
  if (!qword_1ED6FE7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD0658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FE7D0);
  }

  return result;
}

uint64_t sub_18F131DCC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[22] = v0;

  if (v0)
  {
    (*(v3[17] + 8))(v3[18], v3[16]);
    v7 = sub_18F19A420;
  }

  else
  {
    v7 = sub_18F131EE4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F131EE4()
{
  OUTLINED_FUNCTION_21();
  if (*(v0 + 184))
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    OUTLINED_FUNCTION_71();

    return v1();
  }

  else
  {
    sub_18F131D68();
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 168) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_1_16();

    return MEMORY[0x1EEE6D8C8](v5);
  }
}

uint64_t sub_18F131FD8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    v7 = sub_18F19A3C4;
  }

  else
  {

    v7 = j__OUTLINED_FUNCTION_2_8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F1320E0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F1321C4(uint64_t a1)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = v1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1321D8()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 128) = 1;
  *(v0 + 136) = v1;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 1;
  *(v0 + 72) = v1;

  sub_18F132308(v0 + 80, v0 + 144);
  sub_18F132364(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_18F136588;

  return sub_18F1358A4(sub_18F1358A4, &unk_18F54A2D0, v3);
}

uint64_t sub_18F1323B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_18F13241C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_18F0FC874;

  return sub_18F132614(v3, v5, v4);
}

void sub_18F1324C0()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0[7] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v0[9] = v1;
  v2 = *(v1 + 16);
  v0[10] = v2;
  v0[11] = 0;
  if (!v2)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X1, X16 }
  }

  if (*(v1 + 16))
  {
    sub_18F0FD724(v1 + 32, (v0 + 2));
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_18_22();
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_3_29(v3);
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X4, X16 }
  }

  __break(1u);
}

uint64_t sub_18F132614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return MEMORY[0x1EEE6DFA0](sub_18F1324C0, 0, 0);
}

uint64_t sub_18F132634()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC870;

  return sub_18F1326DC();
}

uint64_t sub_18F1326DC()
{
  OUTLINED_FUNCTION_69();
  v1[100] = v0;
  v1[99] = v2;
  v1[98] = v3;
  OUTLINED_FUNCTION_22_2();
  v1[101] = v4;
  v5 = type metadata accessor for AppIntentError.Context(0);
  v1[102] = v5;
  OUTLINED_FUNCTION_10(v5);
  v1[103] = OUTLINED_FUNCTION_34_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16C8);
  OUTLINED_FUNCTION_10(v6);
  v1[104] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for AppIntentError(0);
  v1[105] = v7;
  OUTLINED_FUNCTION_10(v7);
  v1[106] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_162();
  v1[107] = *(v8 + 88);
  OUTLINED_FUNCTION_162();
  v10 = *(v9 + 80);
  v1[108] = v10;
  v1[109] = swift_getAssociatedTypeWitness();
  v11 = sub_18F52254C();
  v1[110] = v11;
  OUTLINED_FUNCTION_94_1();
  v12 = sub_18F52254C();
  v1[111] = v12;
  OUTLINED_FUNCTION_51(v12);
  v1[112] = v13;
  v1[113] = OUTLINED_FUNCTION_34_0();
  v1[114] = *(v11 - 8);
  v1[115] = OUTLINED_FUNCTION_34_0();
  v14 = sub_18F52254C();
  v1[116] = v14;
  OUTLINED_FUNCTION_51(v14);
  v1[117] = v15;
  v1[118] = swift_task_alloc();
  v1[119] = swift_task_alloc();
  v1[120] = swift_task_alloc();
  v1[121] = *(v10 - 8);
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t OUTLINED_FUNCTION_167_0()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_165_0()
{
  *v3 = v1;
  *(v3 + 8) = v0;
  *(v3 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_165_2(float a1)
{
  *v1 = a1;

  return sub_18F52307C();
}

void *OUTLINED_FUNCTION_62_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char __dst)
{

  return memcpy(&__dst, (v49 + 16), 0x91uLL);
}

uint64_t OUTLINED_FUNCTION_62_3()
{

  return sub_18F0EF200();
}

uint64_t OUTLINED_FUNCTION_62_9()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_62_12(uint64_t a1)
{
  v4 = *(*(v2 - 232) + 8);

  sub_18F120FCC(v1, a1, v1, v4);
}

unint64_t OUTLINED_FUNCTION_62_13(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18F11897C(0x7551797469746E45, 0xEB00000000797265, va);
}

uint64_t OUTLINED_FUNCTION_62_14()
{
}

double OUTLINED_FUNCTION_62_15()
{
  *(v0 - 96) = 0;
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  *(v0 - 144) = 0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_62_16()
{

  return swift_once();
}

uint64_t sub_18F133430()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F133514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_37_2();
  v15 = *(v14 + 944);
  v16 = *(v14 + 864);
  v17 = OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_106(v17, v18, v16);
  if (v19)
  {
    (*(*(v14 + 936) + 8))(v15, *(v14 + 928));
    v20 = swift_task_alloc();
    *(v14 + 1152) = v20;
    *v20 = v14;
    OUTLINED_FUNCTION_74_1(v20);
LABEL_7:
    OUTLINED_FUNCTION_20();

    return sub_18F13C10C();
  }

  OUTLINED_FUNCTION_106_1();
  v21 = *(v14 + 792);
  OUTLINED_FUNCTION_68_0();
  v22();
  if (v21 && [*(v14 + 792) forcesNeedsValue])
  {
    v23 = swift_task_alloc();
    *(v14 + 1120) = v23;
    *v23 = v14;
    OUTLINED_FUNCTION_74_1(v23);
    goto LABEL_7;
  }

  v26 = *(*(v14 + 968) + 16);
  v26(*(v14 + 976), *(v14 + 984), *(v14 + 864));
  OUTLINED_FUNCTION_56();
  if (swift_dynamicCast())
  {
    v27 = *(v14 + 880);
    v28 = *(v14 + 872);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
    v32 = OUTLINED_FUNCTION_22();
    v33(v32);
    v34 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_106(v34, v35, v28);
    if (!v19)
    {
      v58 = *(v14 + 984);
      v59 = *(v14 + 864);
      v60 = *(v14 + 856);
      *(v14 + 160) = v59;
      *(v14 + 168) = v60;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 136));
      v26(boxed_opaque_existential_1, v58, v59);
      sub_18F1CDF90(v14 + 136);
      v62 = swift_task_alloc();
      *(v14 + 1136) = v62;
      *v62 = v14;
      OUTLINED_FUNCTION_74_1(v62);
      OUTLINED_FUNCTION_20();

      return sub_18F1326DC(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14);
    }

    v36 = OUTLINED_FUNCTION_41_6();
    v37(v36);
    v38 = OUTLINED_FUNCTION_22();
    v39(v38);
  }

  else
  {
    v40 = OUTLINED_FUNCTION_106_1();
    v41 = *(v14 + 880);
    (*(v42 + 8))(v40, *(v14 + 864));
    v43 = OUTLINED_FUNCTION_24_2();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
    v46 = OUTLINED_FUNCTION_22();
    v47(v46);
  }

  OUTLINED_FUNCTION_0_26();
  v71 = v49;
  v72 = v48;

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_20();

  return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, v71, v72, a12, a13, a14);
}

uint64_t sub_18F133890()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 448) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_10_58();
    sub_18F0EF1A8(v3 + 208, &qword_1EACD45C8);
    v7 = OUTLINED_FUNCTION_9_12();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_9_65();
    sub_18F0EF1A8(v3 + 272, &qword_1EACD45C8);
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

void OUTLINED_FUNCTION_104_1()
{

  os_unfair_lock_unlock(v0 + 36);
}

uint64_t OUTLINED_FUNCTION_104_5(uint64_t a1)
{
  *(v2 - 112) = a1;

  return sub_18F306F40(v1 + 344);
}

uint64_t OUTLINED_FUNCTION_104_8()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_104_9()
{

  sub_18F120FCC(v2, v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_104_11(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);

  return swift_dynamicCast();
}

uint64_t type metadata accessor for IntentContext()
{
  result = qword_1ED6FEEA8;
  if (!qword_1ED6FEEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18F133B64()
{
  sub_18F0F21A8(319, &qword_1ED6FF028);
  if (v0 <= 0x3F)
  {
    sub_18F0F21A8(319, &qword_1ED6FED40);
    if (v1 <= 0x3F)
    {
      type metadata accessor for LNInteractionMode(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for audit_token_t(319);
        if (v3 <= 0x3F)
        {
          sub_18F520E6C();
          if (v4 <= 0x3F)
          {
            sub_18F0FE060(319, &qword_1ED6FED48);
            if (v5 <= 0x3F)
            {
              sub_18F0FE060(319, &qword_1ED6FED50);
              if (v6 <= 0x3F)
              {
                sub_18F0FE060(319, qword_1ED6FE970);
                if (v7 <= 0x3F)
                {
                  sub_18F0F21A8(319, &qword_1ED6FEF50);
                  if (v8 <= 0x3F)
                  {
                    type metadata accessor for IntentContext.Storage();
                    if (v9 <= 0x3F)
                    {
                      sub_18F12EB70();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18F133D94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  OUTLINED_FUNCTION_10(v0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - v2;
  v4 = type metadata accessor for IntentContext();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6338);
  swift_allocObject();
  result = sub_18F52304C();
  qword_1ED6FEFF0 = result;
  return result;
}

uint64_t sub_18F133E5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_18F520E6C();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_18F133EDC()
{
  result = qword_1ED6FEEA0;
  if (!qword_1ED6FEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEEA0);
  }

  return result;
}

uint64_t sub_18F133F30()
{
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_0_136();
  }

  sub_18F52305C();
  if ((v2 & 1) != 0 || v1 < 1)
  {
    sub_18F133FCC();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_18F133FCC()
{
  result = qword_1ED6FEE68;
  if (!qword_1ED6FEE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEE68);
  }

  return result;
}

uint64_t sub_18F134020@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F134080()
{
  v7 = *v0;
  if (*(&v7 + 1))
  {
    v1 = v7;
  }

  else
  {
    v2 = objc_opt_self();
    v3 = sub_18F3E9BA4(v2);
    if (!v4)
    {
      sub_18F16A9C8();
      memset(v6, 0, sizeof(v6));
      swift_willThrowTypedImpl();
      return 0;
    }

    v1 = v3;
  }

  sub_18F37D464(&v7, v6, &qword_1EACD4470);
  return v1;
}

void OUTLINED_FUNCTION_121_1()
{

  JUMPOUT(0x193ADB000);
}

uint64_t OUTLINED_FUNCTION_121_2()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_121_3(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void OUTLINED_FUNCTION_121_4(__n128 a1)
{
  *(v1 + 313) = a1;
  *(v1 + 288) = a1;
  *(v1 + 304) = a1;
  *(v1 + 272) = 0;
  *(v1 + 240) = a1;
  *(v1 + 256) = a1;
}

uint64_t sub_18F1341EC()
{
  v1 = sub_18F5218AC();
  v2 = [v0 mangledTypeNameForBundleIdentifier_];

  v3 = sub_18F5218DC();
  return v3;
}

uint64_t sub_18F134258(void *a1)
{
  v1 = [a1 availabilityAnnotations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for LNPlatformName(0);
  sub_18F0F21A8(0, &qword_1ED6FEE98);
  sub_18F14748C();
  v3 = sub_18F5216BC();

  return v3;
}

uint64_t OUTLINED_FUNCTION_120_1()
{
}

id OUTLINED_FUNCTION_120_2(float a1)
{
  *v2 = a1;
  *(v1 + 168) = v3;

  return v3;
}

uint64_t OUTLINED_FUNCTION_120_3()
{
  v3 = *(v1 + 8);

  return static AppValue._identifier.getter(v0, v3);
}

uint64_t OUTLINED_FUNCTION_120_5()
{

  return __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
}

uint64_t OUTLINED_FUNCTION_120_10()
{

  return swift_deallocObject();
}

unint64_t sub_18F1343E0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_18F13442C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t sub_18F13448C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_18F33AD80;
  }

  else
  {
    v7 = sub_18F136EC0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F134594()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *(v0 + 112) = v3;
  *(v0 + 56) = v7;
  *(v0 + 64) = v5;
  *(v0 + 48) = v9;
  *(v0 + 72) = type metadata accessor for Annotation(0);
  *(v0 + 80) = OUTLINED_FUNCTION_34_0();
  *(v0 + 16) = v8;
  *(v0 + 24) = v6;
  *(v0 + 32) = v4;
  *(v0 + 40) = v2;
  v10 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_18F134640()
{
  OUTLINED_FUNCTION_69();
  v7 = OUTLINED_FUNCTION_48_15(v1, v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_15_38(v7);
  *(v0 + 88) = v8;
  *(v0 + 96) = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1346D8()
{
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_16_5();

  return sub_18F137330();
}

uint64_t sub_18F134790()
{
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_31();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_31_9();

  return sub_18F134840();
}

uint64_t sub_18F134840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC870;

  return sub_18F1321C4(0);
}

uint64_t sub_18F1348D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4668);
  swift_allocObject();
  result = sub_18F52304C();
  qword_1ED6FE6E0 = result;
  return result;
}

uint64_t sub_18F134940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_83_7();
  v11 = OUTLINED_FUNCTION_56();
  sub_18F131034(v11);
  v12 = OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_124_5(v12);
  sub_18F0FA038(v10 + 16, &qword_1EACD7038);
  v13 = OUTLINED_FUNCTION_43_1();
  v14(v13);

  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_36();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_18F134A00()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_18F33ADE0;
  }

  else
  {
    v7 = sub_18F137D5C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void IntentParameter.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_18();
  a19 = v21;
  a20 = v22;
  v151 = v23;
  v24 = *(*v20 + 80);
  OUTLINED_FUNCTION_94_1();
  v135[1] = sub_18F52254C();
  OUTLINED_FUNCTION_11_0();
  v135[0] = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_3();
  v145 = v27;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v28);
  v144 = v135 - v29;
  OUTLINED_FUNCTION_11_0();
  v147 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3();
  v143 = v32;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v33);
  v142 = v135 - v34;
  v152 = v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v148 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_107();
  v141 = v39;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_107();
  v140 = v41;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v45);
  v136 = v135 - v46;
  v47 = sub_18F52254C();
  v48 = swift_getTupleTypeMetadata2() - 8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v135 - v50;
  OUTLINED_FUNCTION_11_0();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v57);
  v59 = v135 - v58;
  OUTLINED_FUNCTION_108();
  sub_18F0EF200();
  v60 = OUTLINED_FUNCTION_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(v60);
  v61 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v59, v61 ^ 1u, 1, AssociatedTypeWitness);
  v146 = v20;
  LOBYTE(v24) = IntentParameter.isOptional.getter();
  v62 = *(v48 + 56);
  v149 = v53;
  v150 = v47;
  v63 = *(v53 + 16);
  v63(&v51[v62], v59, v47);
  OUTLINED_FUNCTION_106(&v51[v62], 1, AssociatedTypeWitness);
  if (v24)
  {
    if (!v64)
    {
      OUTLINED_FUNCTION_169();
      v78(v139);
      v79 = OUTLINED_FUNCTION_45();
      v80(v79);
      v81 = v144;
      OUTLINED_FUNCTION_174();
      v82 = v152;
      if (OUTLINED_FUNCTION_113())
      {
        v84 = OUTLINED_FUNCTION_96_1();
        v85(v84);
        OUTLINED_FUNCTION_58_0();
        __swift_storeEnumTagSinglePayload(v86, v87, v88, v82);
        v89 = *(v147 + 32);
        v90 = v142;
        v89(v142, v81, v82);
LABEL_15:
        v89(v151, v90, v82);
        v69 = v149;
        v68 = v150;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v82);
      v112 = OUTLINED_FUNCTION_118();
      v113(v112);
      OUTLINED_FUNCTION_134();
      sub_18F52279C();
      OUTLINED_FUNCTION_136();
      if (!*(v115 + *(v114 + 152) + 8))
      {
        OUTLINED_FUNCTION_52_3();
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v127 = OUTLINED_FUNCTION_66();
      MEMORY[0x193ADB000](v127);

      OUTLINED_FUNCTION_130();
      MEMORY[0x193ADB000](v128 | 1, v129 | 0x8000000000000000);
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_117();
      swift_getMetatypeMetadata();
      v130 = sub_18F52307C();
      MEMORY[0x193ADB000](v130);

      OUTLINED_FUNCTION_129();
      v126 = 116;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_136();
    v67 = v137;
    v68 = v150;
    v63(v137, (v66 + *(v65 + 96)), v150);
    OUTLINED_FUNCTION_106(v67, 1, AssociatedTypeWitness);
    if (v64)
    {
      v69 = v149;
      (*(v149 + 8))(v67, v68);
      v70 = OUTLINED_FUNCTION_24_2();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, AssociatedTypeWitness);
      swift_dynamicCast();
LABEL_17:
      (*(v69 + 8))(v59, v68);
      OUTLINED_FUNCTION_16();
      return;
    }

    v101 = *(v148 + 32);
    v101(v136, v67, AssociatedTypeWitness);
    v102 = OUTLINED_FUNCTION_170(&a14);
    (v101)(v102);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, AssociatedTypeWitness);
LABEL_16:
    swift_dynamicCast();
    v69 = v149;
    goto LABEL_17;
  }

  if (v64)
  {
    v73 = v146;
    OUTLINED_FUNCTION_71_2();
    v75 = v138;
    v68 = v150;
    v63(v138, (v73 + *(v74 + 96)), v150);
    OUTLINED_FUNCTION_106(v75, 1, AssociatedTypeWitness);
    if (v64)
    {
      v106 = OUTLINED_FUNCTION_165();
      v107(v106);
      OUTLINED_FUNCTION_134();
      sub_18F52279C();
      OUTLINED_FUNCTION_71_2();
      if (!*(v73 + *(v108 + 152) + 8))
      {
        OUTLINED_FUNCTION_52_3();
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v123 = OUTLINED_FUNCTION_66();
      MEMORY[0x193ADB000](v123);

      OUTLINED_FUNCTION_130();
      MEMORY[0x193ADB000](v124 + 13, v125 | 0x8000000000000000);
      OUTLINED_FUNCTION_129();
      v126 = 125;
      goto LABEL_30;
    }

    v76 = *(v148 + 32);
    v77 = OUTLINED_FUNCTION_170(&a17);
    v76(v77);
    (v76)(v140, v53, AssociatedTypeWitness);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_169();
  v91(v141);
  v92 = OUTLINED_FUNCTION_45();
  v93(v92);
  v94 = v145;
  OUTLINED_FUNCTION_174();
  v82 = v152;
  if (OUTLINED_FUNCTION_113())
  {
    v96 = OUTLINED_FUNCTION_96_1();
    v97(v96);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v98, v99, v100, v82);
    v89 = *(v147 + 32);
    v90 = v143;
    v89(v143, v94, v82);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v82);
  v119 = OUTLINED_FUNCTION_118();
  v120(v119);
  OUTLINED_FUNCTION_134();
  sub_18F52279C();
  OUTLINED_FUNCTION_136();
  if (!*(v122 + *(v121 + 152) + 8))
  {
    OUTLINED_FUNCTION_52_3();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v131 = OUTLINED_FUNCTION_66();
  MEMORY[0x193ADB000](v131);

  OUTLINED_FUNCTION_130();
  MEMORY[0x193ADB000](v132 | 1, v133 | 0x8000000000000000);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_117();
  swift_getMetatypeMetadata();
  v134 = sub_18F52307C();
  MEMORY[0x193ADB000](v134);

  OUTLINED_FUNCTION_129();
  v126 = 133;
LABEL_30:
  v135[0] = v126;
  sub_18F522A3C();
  __break(1u);
}

void static IntentResult.result<>()()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23();
  v6 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_99_6();
  v7 = OUTLINED_FUNCTION_33_23();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v26[4] = 0;
  v10.n128_f64[0] = OUTLINED_FUNCTION_242();
  v25[4] = 0;
  OUTLINED_FUNCTION_7_45(v10);
  OUTLINED_FUNCTION_37_21(xmmword_18F543360);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0158);
  OUTLINED_FUNCTION_3_52(v11);
  v12 = v0[20];
  OUTLINED_FUNCTION_61_9(v0[19]);
  *(v3 + v12) = v13;
  OUTLINED_FUNCTION_2_70();
  OUTLINED_FUNCTION_35_17();
  OUTLINED_FUNCTION_1_68(v14);
  *(v3 + v0[27]) = 0;
  OUTLINED_FUNCTION_5_48(v15);
  sub_18F0FF5DC(v25, v16, &qword_1EACD0D70);
  OUTLINED_FUNCTION_142_2();
  v19 = OUTLINED_FUNCTION_315(v17, v18, &qword_1EACD0550);
  OUTLINED_FUNCTION_209(v19, v20, &qword_1EACD0D78);
  OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_36_22();
  OUTLINED_FUNCTION_208(v21, v22, &qword_1EACD0D80);
  v23 = OUTLINED_FUNCTION_59_6();
  sub_18F0FF5DC(v23, v24, &qword_1EACCF7A0);
  sub_18F0FF5DC(v26, v1, &qword_1EACD0D70);
  OUTLINED_FUNCTION_12_42();
  OUTLINED_FUNCTION_16();
}

uint64_t OUTLINED_FUNCTION_247()
{

  return sub_18F317A70(v0, v4, (v2 + 240), v1, v3);
}

uint64_t OUTLINED_FUNCTION_247_0()
{
}

uint64_t OUTLINED_FUNCTION_247_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = __swift_storeEnumTagSinglePayload(a1, a2, a3, v3);
  *(v4 - 128) = 5;
  return result;
}

uint64_t OUTLINED_FUNCTION_247_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_331(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{

  return sub_18F424238(a2, a3, a6, v6);
}

uint64_t sub_18F135728(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  result = sub_18F522C8C();
  if (result >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {
        sub_18F130A84(0, v6, 1, a1, a2, a3);
      }

      else
      {
      }

LABEL_11:
    }
  }

  else
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_18F521D3C();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

      sub_18F22C22C(v11, v12, a1, v8, a2, a3);
      *(v10 + 16) = 0;

      swift_bridgeObjectRelease_n();
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18F1358A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 400) = a3;
  *(v4 + 408) = v3;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;
  v5 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v5;
  v6 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v6;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1358CC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[51];
  if (*(v1 + 48))
  {
    if (qword_1ED6FE7C0 != -1)
    {
      OUTLINED_FUNCTION_1_120();
      v1 = v0[51];
    }

    OUTLINED_FUNCTION_3_90();
    sub_18F132308(v1, v2);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[55] = v3;
    *v3 = v4;
    v3[1] = sub_18F133890;
    OUTLINED_FUNCTION_11_58();

    return MEMORY[0x1EEE6DE98]();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_20_43();
    OUTLINED_FUNCTION_32_42(v5, v6, v7, v8, v9, v10, v11, v12, v13);
    OUTLINED_FUNCTION_6_1(&unk_18F54D850);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[53] = v14;
    *v14 = v15;
    v14[1] = sub_18F13DFFC;
    OUTLINED_FUNCTION_26_47();

    return v16();
  }
}

uint64_t sub_18F135A54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_18F135AA8()
{
  v46 = v0;
  OUTLINED_FUNCTION_71_2();
  OUTLINED_FUNCTION_108();
  sub_18F0EF200();
  if (*(v0 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
    sub_18F0F21A8(0, qword_1EACCF090);
    if (swift_dynamicCast())
    {

      v45 = 0;
      memset(v44, 0, sizeof(v44));
      sub_18F1CDF90(v44);
    }
  }

  else
  {
    sub_18F0EF1A8(v0 + 16, &qword_1EACD0620);
  }

  sub_18F0EF200();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 864);
    sub_18F0FD0B4((v0 + 96), v0 + 56);
    if (dynamic_cast_existential_1_conditional(v1))
    {
      sub_18F0FD724(v0 + 56, v0 + 496);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16D0);
      if (swift_dynamicCast())
      {
        sub_18F0FD0B4((v0 + 536), v0 + 456);
        v2 = *(v0 + 480);
        v3 = *(v0 + 488);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 456), v2);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_123();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v6 = sub_18F3846A4(AssociatedTypeWitness, v2, AssociatedTypeWitness, v3);
        if (v6)
        {
          v7 = v6;
          if (qword_1EACCF3B0 != -1)
          {
            swift_once();
          }

          v8 = sub_18F52165C();
          __swift_project_value_buffer(v8, qword_1EAD0ABC8);

          v9 = sub_18F52163C();
          v10 = sub_18F52220C();

          if (os_log_type_enabled(v9, v10))
          {
            v43 = v7;
            v11 = *(v0 + 800);
            v12 = swift_slowAlloc();
            result = swift_slowAlloc();
            v42 = result;
            *&v44[0] = result;
            *v12 = 136315650;
            if (!*(v11 + *(*v11 + 152) + 8))
            {
              __break(1u);
              return result;
            }

            _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
            v14 = OUTLINED_FUNCTION_96_1();
            v17 = sub_18F11897C(v14, v15, v16);

            *(v12 + 4) = v17;
            *(v12 + 12) = 2080;
            OUTLINED_FUNCTION_108();
            sub_18F0FD724(v0 + 56, v0 + 616);
            v18 = sub_18F52194C();
            v20 = sub_18F11897C(v18, v19, v44);

            *(v12 + 14) = v20;
            *(v12 + 22) = 2080;
            v21 = sub_18F52307C();
            v23 = sub_18F11897C(v21, v22, v44);

            *(v12 + 24) = v23;
            _os_log_impl(&dword_18F0E9000, v9, v10, "%s: Coerced empty %s to empty %s", v12, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x193ADD350](v42, -1, -1);
            MEMORY[0x193ADD350](v12, -1, -1);

            v7 = v43;
          }

          else
          {
          }

          OUTLINED_FUNCTION_104();
          *(v0 + 600) = sub_18F521DBC();
          *(v0 + 768) = AssociatedConformanceWitness;
          OUTLINED_FUNCTION_10_3();
          *(v0 + 608) = swift_getWitnessTable();
          *(v0 + 576) = v7;
          swift_beginAccess();
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
          sub_18F0FD0B4((v0 + 576), v0 + 56);
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 456);
      }

      else
      {
        *(v0 + 568) = 0;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        sub_18F0EF1A8(v0 + 536, &qword_1EACD16D8);
      }

      v34 = swift_task_alloc();
      *(v0 + 1008) = v34;
      *v34 = v0;
      v34[1] = sub_18F1D1354;
      OUTLINED_FUNCTION_177_0();

      return sub_18F1D3320(v35, v36, v37, v38, v39, v40);
    }

    else
    {
      if (*(v0 + 784))
      {
        v27 = *(v0 + 784);
      }

      else
      {
        if (qword_1ED6FC310 != -1)
        {
          OUTLINED_FUNCTION_38_6();
        }

        v27 = qword_1ED707678;
      }

      *(v0 + 1024) = v27;
      *(v0 + 752) = *(v0 + 800);
      OUTLINED_FUNCTION_108();
      sub_18F0FD724(v0 + 56, v0 + 176);

      v28 = swift_task_alloc();
      *(v0 + 1032) = v28;
      OUTLINED_FUNCTION_11_13();
      swift_getWitnessTable();
      *v28 = v0;
      OUTLINED_FUNCTION_72_2();
      OUTLINED_FUNCTION_177_0();

      return sub_18F29A748(v29, v30, v31, v32);
    }
  }

  else
  {
    sub_18F0EF1A8(v0 + 96, &qword_1EACD0620);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 1112) = v24;
    *v24 = v25;
    v24[1] = sub_18F133430;
    OUTLINED_FUNCTION_177_0();

    return sub_18F13613C();
  }
}

uint64_t sub_18F13613C()
{
  OUTLINED_FUNCTION_21();
  v1[105] = v0;
  v1[104] = v2;
  OUTLINED_FUNCTION_167();
  v1[106] = *(v3 + 80);
  OUTLINED_FUNCTION_94_1();
  v4 = sub_18F52254C();
  v1[107] = v4;
  OUTLINED_FUNCTION_51(v4);
  v1[108] = v5;
  v1[109] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_11_0();
  v1[110] = v6;
  v1[111] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_167();
  v1[112] = *(v7 + 88);
  v1[113] = swift_getAssociatedTypeWitness();
  v8 = sub_18F52254C();
  v1[114] = v8;
  OUTLINED_FUNCTION_51(v8);
  v1[115] = v9;
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t OUTLINED_FUNCTION_153()
{

  return sub_18F132364(v0 + 16);
}

uint64_t OUTLINED_FUNCTION_153_1()
{

  return sub_18F522C9C();
}

uint64_t *OUTLINED_FUNCTION_153_2()
{
  v2 = *(v0 - 320);
  *(v0 - 120) = *(v0 - 336);
  *(v0 - 112) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v0 - 144));
}

id OUTLINED_FUNCTION_151()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_151_0()
{
}

uint64_t OUTLINED_FUNCTION_151_1()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return _s10AppIntents09TransientA6EntityPAAE2id10Foundation4UUIDVvg_0();
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F136460()
{
  OUTLINED_FUNCTION_21();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_18F136588()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 240) = v0;

  if (!v0)
  {
    sub_18F132364(v3 + 80);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F136698(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

void sub_18F1366D8()
{
  if (!qword_1ED6FCE00[0])
  {
    sub_18F119B88();
    if (!v1)
    {
      atomic_store(v0, qword_1ED6FCE00);
    }
  }
}

id sub_18F136720()
{
  v0 = static IntentContext.connectionIdentifier.getter();
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v1 = sub_18F10C01C(v0);

  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 24);

  os_unfair_lock_lock((v2 + 24));
  v3 = [*(v2 + 16) effectiveBundleIdentifier];
  os_unfair_lock_unlock((v2 + 24));

  return v3;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents18PerformIntentErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

uint64_t sub_18F136840()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD9480);
  swift_allocObject();
  result = sub_18F52304C();
  qword_1ED6FEE58 = result;
  return result;
}

uint64_t sub_18F1368BC()
{
  result = swift_getKeyPath();
  qword_1ED7076F8 = result;
  return result;
}

uint64_t sub_18F1368EC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

void sub_18F13694C()
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_25_40(v3, v4);
  sub_18F1341EC();
  OUTLINED_FUNCTION_86_10();
  if ((sub_18F136BBC() & 1) == 0)
  {

    if (qword_1ED6FED58 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v8 = sub_18F52165C();
    v9 = OUTLINED_FUNCTION_78_11(v8, qword_1ED707790);
    v10 = sub_18F52163C();
    sub_18F52221C();

    if (!OUTLINED_FUNCTION_88_11())
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_9_17();
    OUTLINED_FUNCTION_69_12();
    OUTLINED_FUNCTION_57_16();
    *v0 = 136446466;
    v14 = OUTLINED_FUNCTION_63_13(v11, v12, v13);
    v15 = OUTLINED_FUNCTION_38_24(v14);
    sub_18F5218DC();
    OUTLINED_FUNCTION_56_15();
    OUTLINED_FUNCTION_40_23(v16, v17, v18);
    OUTLINED_FUNCTION_66_14();
    *(v0 + 14) = v15;
    OUTLINED_FUNCTION_51_15(&dword_18F0E9000, v19, v20, "%{public}s %{public}s is not available for the current platform version.");
    OUTLINED_FUNCTION_49_14();
    OUTLINED_FUNCTION_32();
LABEL_13:
    OUTLINED_FUNCTION_32();
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_98_9();
    sub_18F5218DC();
    OUTLINED_FUNCTION_97_9();
    sub_18F16A9C8();
    v33 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_68_15(xmmword_18F54D5A0, v33, v34);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_42_19();
  v5 = sub_18F5227BC();
  if (!v5 || (v6 = dynamic_cast_existential_1_conditional(v5)) == 0)
  {
    if (qword_1ED6FED58 != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v21 = sub_18F52165C();
    OUTLINED_FUNCTION_78_11(v21, qword_1ED707790);
    OUTLINED_FUNCTION_90_9();
    v10 = sub_18F52163C();
    sub_18F52221C();
    OUTLINED_FUNCTION_96_10();

    if (!OUTLINED_FUNCTION_95_10())
    {

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_75();
    OUTLINED_FUNCTION_67_13();
    OUTLINED_FUNCTION_57_16();
    OUTLINED_FUNCTION_71_12(4.8754e-34);
    sub_18F5218DC();
    OUTLINED_FUNCTION_70_12();
    v22 = OUTLINED_FUNCTION_41_22();
    OUTLINED_FUNCTION_93_10(v22, v23, v24);
    v25 = OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_31_41(v25, v26, v27);
    OUTLINED_FUNCTION_246();
    OUTLINED_FUNCTION_54_18();
    v1[3] = OUTLINED_FUNCTION_63_13(v28, v29, v30);
    OUTLINED_FUNCTION_48_21(&dword_18F0E9000, v31, v32, "Failed to map %{public}s (%{public}s) to a concrete %{public}s type.");
    OUTLINED_FUNCTION_50_12();
    OUTLINED_FUNCTION_32();
    goto LABEL_13;
  }

  *v1 = v6;
  v1[1] = v7;
LABEL_16:
  OUTLINED_FUNCTION_42_19();
  OUTLINED_FUNCTION_120();
}

uint64_t sub_18F136BBC()
{
  if (!sub_18F134258(v0))
  {
    return 1;
  }

  sub_18F0F21A8(0, qword_1ED6FE808);
  v1 = sub_18F1474E4();
  v2 = [v1 availableForCurrentPlatformVersion];

  return v2;
}

void sub_18F136C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  OUTLINED_FUNCTION_63_5();
  v28 = v11;
  OUTLINED_FUNCTION_66_5(v12, v11, v13, v14);
  OUTLINED_FUNCTION_0_68();
  if (v17)
  {
    __break(1u);
LABEL_12:
    sub_18F522E2C();
    __break(1u);
    return;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  OUTLINED_FUNCTION_20_24();
  if (sub_18F5229DC())
  {
    sub_18F0F713C(v8, v6);
    OUTLINED_FUNCTION_26_27();
    if (!v21)
    {
      goto LABEL_12;
    }

    v18 = v20;
  }

  if (v19)
  {
    v22 = (*(*v9 + 56) + 16 * v18);
    *v22 = v7;
    v22[1] = v28;
  }

  else
  {
    v23 = OUTLINED_FUNCTION_57_8();
    sub_18F1343E0(v23, v24, v25, v26, v28, v27);

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

uint64_t sub_18F136D50(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_8_0();
  *v7 = v6;
  *(v4 + 32) = a1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v4 + 40) = v10;
    *v10 = v6;
    v10[1] = sub_18F13448C;

    return sub_18F1316DC();
  }
}

uint64_t sub_18F136EC0()
{
  OUTLINED_FUNCTION_69();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_18F134A00;

  return sub_18F134594();
}

uint64_t sub_18F136F7C()
{
  OUTLINED_FUNCTION_29();
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3338) + 48);
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v2;
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v6 = sub_18F52165C();
  __swift_project_value_buffer(v6, qword_1ED7077A8);
  OUTLINED_FUNCTION_31_0();
  (*(v7 + 16))(v1 + v5);
  OUTLINED_FUNCTION_22();
  swift_storeEnumTagMultiPayload();
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *(v8 + 16) = v0 + 16;
  OUTLINED_FUNCTION_99_8();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 96) = v9;
  *v9 = v10;
  v9[1] = sub_18F137BFC;
  v11 = *(v0 + 80);
  v12 = *(v0 + 48);

  return v14(v12, v11, 0, 0, &unk_18F54B5A0, v8);
}

unint64_t OUTLINED_FUNCTION_102_3()
{

  return sub_18F17043C();
}

uint64_t OUTLINED_FUNCTION_102_4()
{

  return sub_18F2B70D8();
}

void OUTLINED_FUNCTION_102_7()
{
  v3 = *(v0 + 88);
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = *(v0 + 80);
  *(v1 + 16) = *(v0 + 72);
  *(v1 + 24) = v4;
  *(v1 + 32) = *(v0 + 68);
}

void OUTLINED_FUNCTION_102_9()
{

  sub_18F116B3C();
}

uint64_t sub_18F137330()
{
  OUTLINED_FUNCTION_69();
  v0[26] = v1;
  v0[27] = v2;
  v0[24] = v3;
  v0[25] = v4;
  v0[22] = v5;
  v0[23] = v6;
  v0[28] = type metadata accessor for Annotation(0);
  v0[29] = OUTLINED_FUNCTION_34_0();
  v7 = sub_18F52165C();
  v0[30] = v7;
  v0[31] = *(v7 - 8);
  v0[32] = OUTLINED_FUNCTION_34_0();
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F13776C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_9_6(v1);
  *v2 = v3;
  v2[1] = sub_18F0FC870;
  v4 = OUTLINED_FUNCTION_16_5();

  return v5(v4, v0);
}

uint64_t sub_18F13781C()
{
  OUTLINED_FUNCTION_29();
  result = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v2 = v0[10];
  v3 = v0[11] + 1;
  v0[11] = v3;
  if (v3 == v2)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[9];
  if (v3 < *(v6 + 16))
  {
    sub_18F0FD724(v6 + 48 * v3 + 32, (v0 + 2));
    OUTLINED_FUNCTION_9_23();
    OUTLINED_FUNCTION_18_22();
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_3_29();
    OUTLINED_FUNCTION_21_17();

    __asm { BRAA            X4, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F1379A0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F137A9C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 128) = v0;

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

uint64_t sub_18F137BFC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;
  *(v3 + 104) = v0;

  sub_18F131680(v6);

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v12();
  }
}

uint64_t sub_18F137D5C()
{
  OUTLINED_FUNCTION_69();
  sub_18F0FD724(v0[4] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent, v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_18F137DD8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v6 + 568) = v0;

  if (v0)
  {
    v7 = sub_18F3CC240;
  }

  else
  {
    v7 = sub_18F138468;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F137F24()
{
  sub_18F1366D8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_18F137F7C(uint64_t *a1)
{
  v2 = sub_18F520C8C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-v9];
  v11 = MEMORY[0x1E69E7CC0];
  v23 = MEMORY[0x1E69E7CC0];
  v12 = sub_18F136720();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 url];
    if (v14)
    {
      v15 = v14;
      sub_18F520C3C();

      (*(v4 + 32))(v10, v8, v2);
      v16 = *a1;
      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      v17 = *(v16 + 96);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v18 = sub_18F19E254(v10, v17);

      if (v18)
      {
        MEMORY[0x193ADB260](v19);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F521D0C();
        }

        sub_18F521D6C();
        v11 = v23;
      }

      else
      {
        v20 = MEMORY[0x193ADC7E0](v19);
        sub_18F350194(v10, v13, a1, &v23);
        objc_autoreleasePoolPop(v20);

        v11 = v23;
      }

      (*(v4 + 8))(v10, v2);
    }

    else
    {
    }
  }

  return v11;
}

uint64_t static IntentContext.connectionIdentifier.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD2898);
  OUTLINED_FUNCTION_10(v1);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_6();
  v3 = type metadata accessor for IntentContext();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  if (qword_1ED6FEEB8 != -1)
  {
    OUTLINED_FUNCTION_0_89();
    swift_once();
  }

  sub_18F52305C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    sub_18F0EF1A8(v0, qword_1EACD2898);
LABEL_9:
    sub_18F133EDC();
    v10 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_1_70(v10, v11);
    return v0;
  }

  sub_18F2DEA04(v0, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_18F178EA4(v7);
    goto LABEL_9;
  }

  v9 = [Strong connectionIdentifier];
  if (v9 <= 0)
  {
    sub_18F133EDC();
    v13 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_1_70(v13, v14);
    swift_unknownObjectRelease();
    sub_18F178EA4(v7);
  }

  else
  {
    v0 = v9;
    sub_18F178EA4(v7);
    swift_unknownObjectRelease();
  }

  return v0;
}

uint64_t sub_18F138330()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD6328);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_18F138360()
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for AsyncSignal.State();
  return sub_18F5211AC();
}

uint64_t sub_18F1383E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18F520E6C();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_18F138468()
{
  sub_18F0FF968((v0 + 232), v0 + 192);
  sub_18F0FD724(v0 + 192, v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 552);
  v3 = *(v0 + 520);
  v4 = *(v0 + 488);
  if (v1)
  {
    OUTLINED_FUNCTION_1_97();
    v6 = *(v0 + 392);
    v5 = *(v0 + 400);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);

    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    (*(*(v5 - 8) + 32))(v6, v4, v5);
  }

  else
  {
    v8 = *(v0 + 472);
    v9 = *(v0 + 480);
    __swift_storeEnumTagSinglePayload(*(v0 + 488), 1, 1, *(v0 + 400));
    (*(v9 + 8))(v4, v8);
    sub_18F3CC690();
    v10 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_5_73(v10, v11);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 192);
    OUTLINED_FUNCTION_1_97();
  }

  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t OUTLINED_FUNCTION_132_4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return sub_18F138888(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_132_5()
{
  sub_18F0FD0B4((v0 + 496), v0 + 416);

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_129_0()
{
}

uint64_t OUTLINED_FUNCTION_212_0()
{

  return sub_18F522C9C();
}

uint64_t OUTLINED_FUNCTION_211_0()
{

  return sub_18F522C9C();
}

uint64_t OUTLINED_FUNCTION_211_2()
{

  return swift_once();
}

uint64_t sub_18F138888(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_18F123A1C(result, a2);
  }

  return result;
}

uint64_t sub_18F1388CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_18F13891C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 81))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_18F138970(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 33))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_18F1389F4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for EntityFromFileResolver();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for EntityFromURLResolver();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for EntityFromIdentifierResolver();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for EntityFromEntityResolver();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for OptionsBasedEntityFromStringResolver();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for EntityFromBoxedCodableIntentValueResolver();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for EntityFromBoxedSystemIntentValueResolver();
  OUTLINED_FUNCTION_2_95();
  type metadata accessor for EntityFromIntentPersonResolver();
  OUTLINED_FUNCTION_12_59();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ResolverSpecificationBuilder.Specification();
  OUTLINED_FUNCTION_0_33();
  swift_getWitnessTable();
  return sub_18F122278(sub_18F3E0F38);
}

uint64_t sub_18F138DA8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_18F138E08()
{
  OUTLINED_FUNCTION_29();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v1[1] = sub_18F0FC870;
  OUTLINED_FUNCTION_24_23();

  return v3();
}

uint64_t sub_18F138ED0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *aBlock, void *a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v6[6] = _Block_copy(aBlock);
  sub_18F5218DC();
  v6[7] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = a6;
  v10 = swift_task_alloc();
  v6[8] = v10;
  *v10 = v6;
  v10[1] = sub_18F13E980;

  return AppContext.fetchParameterOptionDefaultValue(action:actionMetadata:parameterIdentifier:connectionIdentifier:)();
}

uint64_t AppContext.fetchParameterOptionDefaultValue(action:actionMetadata:parameterIdentifier:connectionIdentifier:)()
{
  OUTLINED_FUNCTION_69();
  v0[52] = v1;
  v0[53] = v2;
  v0[50] = v3;
  v0[51] = v4;
  v0[49] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  OUTLINED_FUNCTION_10(v6);
  v0[54] = OUTLINED_FUNCTION_34_0();
  v7 = type metadata accessor for DisplayRepresentation();
  v0[55] = v7;
  OUTLINED_FUNCTION_10(v7);
  v0[56] = OUTLINED_FUNCTION_34_0();
  v8 = type metadata accessor for DynamicOptionsResult.Item(0);
  v0[57] = v8;
  OUTLINED_FUNCTION_10(v8);
  v0[58] = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F1390B8()
{
  v47 = v0;
  if (!*(v0 + 400))
  {
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    swift_unknownObjectRelease();
LABEL_7:
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v6 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v6, qword_1ED707778);
    v7 = sub_18F52163C();
    v8 = sub_18F52221C();
    if (OUTLINED_FUNCTION_27(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v9, v10, "Wrong input types to fetchParameterOptionDefaultValue");
      OUTLINED_FUNCTION_26_0();
    }

    v11 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_58_17();
LABEL_12:
    OUTLINED_FUNCTION_53_18();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_20();

    __asm { BRAA            X1, X16 }
  }

  v2 = v1;
  if (*(v0 + 424))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    OUTLINED_FUNCTION_29_13();
    v3 = swift_dynamicCastObjCClass();
    v4 = v3 == 0;
    if (v3)
    {
      v5 = [v3 integerValue];
    }

    else
    {
      v5 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  *(v0 + 552) = v4;
  *(v0 + 472) = v5;
  if (*(v0 + 392))
  {
    swift_unknownObjectRetain();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      v14 = swift_task_alloc();
      *(v0 + 480) = v14;
      *v14 = v0;
      v14[1] = sub_18F139560;
      OUTLINED_FUNCTION_29_42("InitializeAction");
      OUTLINED_FUNCTION_20();

      __asm { BR              X4 }
    }

    swift_unknownObjectRelease();
  }

  v17 = sub_18F33AF50();
  if (!v17)
  {
    v25 = sub_18F33B550();
    v27 = v26;
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v28 = sub_18F52165C();
    OUTLINED_FUNCTION_58(v28, qword_1ED707778);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    swift_unknownObjectRetain();
    v29 = sub_18F52163C();
    v30 = sub_18F52221C();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      *v31 = 136446466;
      v32 = [v2 identifier];
      v33 = sub_18F5218DC();
      v35 = v34;

      v36 = sub_18F11897C(v33, v35, v46);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      *(v0 + 376) = v25;
      *(v0 + 384) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
      v37 = sub_18F52194C();
      v39 = sub_18F11897C(v37, v38, v46);

      *(v31 + 14) = v39;
      OUTLINED_FUNCTION_61_20();
      _os_log_impl(v40, v41, v42, v43, v44, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26_0();
      OUTLINED_FUNCTION_55_0();
    }

    else
    {
    }

    v45 = LNConnectionErrorWithCode();
    OUTLINED_FUNCTION_58_17();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v18 = v17;
  v19 = OUTLINED_FUNCTION_56();
  sub_18F12FFE8(v19, v20, v21);
  OUTLINED_FUNCTION_46();

  *(v0 + 504) = v18;

  v22 = swift_task_alloc();
  *(v0 + 512) = v22;
  *v22 = v0;
  OUTLINED_FUNCTION_36_34(v22);
  OUTLINED_FUNCTION_20();

  return sub_18F1316DC();
}

uint64_t sub_18F139560()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 488) = v0;

  swift_unknownObjectRelease();
  if (!v0)
  {
    *(v4 + 496) = v3;
  }

  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_31_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F13968C()
{
  OUTLINED_FUNCTION_69();
  swift_unknownObjectRelease();
  v0[63] = v0[62];

  v1 = swift_task_alloc();
  v0[64] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_36_34(v1);

  return sub_18F1316DC();
}

uint64_t sub_18F139714()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 520) = v0;

  OUTLINED_FUNCTION_8_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F139834()
{
  OUTLINED_FUNCTION_24_4();
  v1 = *(v0[63] + OBJC_IVAR____TtC10AppIntents14PreparedIntent_parameterMetadata);
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_13;
  }

  v20 = v0[52];
  v3 = v1 + 32;
  result = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = 0;
  while (1)
  {
    if (v5 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    sub_18F139A94(v3, (v0 + 16));
    v6 = v0[19];
    v7 = v0[20];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 16, v6);
    (*(v7 + 16))(v6, v7);
    v8 = v0[25];
    sub_18F0EF1A8((v0 + 22), &qword_1EACD0D98);
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v0[19];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 16, v9);
    OUTLINED_FUNCTION_37_0();
    v11 = v10(v9);
    if (!v12)
    {
      goto LABEL_11;
    }

    if (v11 == v0[51] && v12 == v20)
    {
      break;
    }

    v14 = sub_18F522D5C();

    if (v14)
    {
      goto LABEL_17;
    }

LABEL_11:
    ++v5;
    result = sub_18F13E500((v0 + 16));
    v3 += 48;
    if (v2 == v5)
    {

LABEL_13:

      swift_unknownObjectRelease();

      OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_29_1();

      __asm { BRAA            X2, X16 }
    }
  }

LABEL_17:

  OUTLINED_FUNCTION_42_23();
  v17 = swift_task_alloc();
  v0[66] = v17;
  *v17 = v0;
  v17[1] = sub_18F13D030;
  OUTLINED_FUNCTION_29_1();

  return sub_18F1321C4(v18);
}

uint64_t sub_18F139AF0()
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_108();
  return sub_18F0EF200();
}

void OUTLINED_FUNCTION_105_0()
{

  os_unfair_lock_unlock(v0 + 36);
}

uint64_t OUTLINED_FUNCTION_105_1()
{

  return sub_18F52279C();
}

uint64_t OUTLINED_FUNCTION_105_2(uint64_t a1)
{
  *(v1 + 1008) = a1;

  return sub_18F52254C();
}

uint64_t OUTLINED_FUNCTION_105_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_18F0F9F88(v5 + v3, v4, a3);
}

uint64_t OUTLINED_FUNCTION_105_6()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = 0;
  return v1 + 8;
}

void OUTLINED_FUNCTION_158()
{

  JUMPOUT(0x193ADBE10);
}

uint64_t OUTLINED_FUNCTION_158_0()
{
}

uint64_t sub_18F139CCC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_9();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v5 = swift_task_alloc();
  v1[8] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_11_33(v5);

  return sub_18F139E28();
}

void *OUTLINED_FUNCTION_140_0()
{
  v2 = *(v0 + 528);

  return __swift_project_boxed_opaque_existential_1Tm((v0 + 504), v2);
}

uint64_t OUTLINED_FUNCTION_140_1()
{

  return swift_slowAlloc();
}

uint64_t sub_18F139E28()
{
  OUTLINED_FUNCTION_69();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F139EDC, 0, 0);
}

uint64_t sub_18F139EDC()
{
  OUTLINED_FUNCTION_69();
  v1 = sub_18F139F7C(v0[12]);
  v0[17] = v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_18F13A21C;

  return sub_18F1316F0(v1);
}

uint64_t sub_18F139F7C(uint64_t a1)
{
  v3 = sub_18F522F8C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v22 + 1) = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v1, a1);
  sub_18F522F6C();
  v8 = sub_18F117570();
  (*(v4 + 8))(v6, v3);
  v9 = *(v8 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v16[1] = v8;
  v10 = v8 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F11DDA0(v10, &v21);
    v17[0] = v21;
    v17[1] = v22;
    v17[2] = v23;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACCFD98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v20 = 0;
      v18 = 0u;
      v19 = 0u;
LABEL_11:
      sub_18F0EF148(&v18, qword_1EACD5738);
      goto LABEL_12;
    }

    if (!*(&v19 + 1))
    {
      goto LABEL_11;
    }

    sub_18F0FD0B4(&v18, v17);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F1673CC();
      v11 = v13;
    }

    v12 = *(v11 + 16);
    if (v12 >= *(v11 + 24) >> 1)
    {
      sub_18F1673CC();
      v11 = v14;
    }

    *(v11 + 16) = v12 + 1;
    sub_18F0FD0B4(v17, v11 + 40 * v12 + 32);
LABEL_12:
    v10 += 48;
    --v9;
  }

  while (v9);

  return v11;
}

uint64_t sub_18F13A21C()
{
  OUTLINED_FUNCTION_69();
  v2 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
    v6 = sub_18F2D52C8;
  }

  else
  {

    v6 = sub_18F13A32C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F13A32C()
{
  (*(*(v0 + 120) + 16))(*(v0 + 128), *(v0 + 112), *(v0 + 96));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF8);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_18F13B0F4;

    return sub_18F13A4A4(v2, v1);
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_18F0EF148(v0 + 56, &qword_1EACD0D98);

    OUTLINED_FUNCTION_71();

    return v5();
  }
}

uint64_t sub_18F13A4A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F13A4BC()
{
  OUTLINED_FUNCTION_69();
  sub_18F13A55C();
  v2 = v1;
  *(v0 + 40) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_18F13AF9C;

  return sub_18F13A9F0(v2);
}

void sub_18F13A55C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v4 = sub_18F522F8C();
  OUTLINED_FUNCTION_11_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_11_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v14 = *(v12 + 16);
  v14(v16 - v15, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3AD0);
  if (!swift_dynamicCast())
  {
    *&v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_18F0FA038(&v35, &qword_1EACD3AC8);
    *(&v42 + 1) = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
    v14(boxed_opaque_existential_1, v1, v3);
    sub_18F522F6C();
    v27 = sub_18F117570();
    (*(v6 + 8))(v10, v4);
    v28 = *(v27 + 16);
    if (!v28)
    {
LABEL_15:

      goto LABEL_16;
    }

    v29 = MEMORY[0x1E69E7CC0];
    v34[1] = v27;
    v30 = v27 + 32;
    while (1)
    {
      sub_18F0F9FD4(v30, &v41, &qword_1EACCFD88);
      v35 = v41;
      v36 = v42;
      v37 = v43;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
      if (swift_dynamicCast())
      {
        if (*(&v39 + 1))
        {
          sub_18F0FD0B4(&v38, &v35);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_14();
            sub_18F1673F0();
            v29 = v32;
          }

          v31 = *(v29 + 16);
          if (v31 >= *(v29 + 24) >> 1)
          {
            OUTLINED_FUNCTION_14();
            sub_18F1673F0();
            v29 = v33;
          }

          *(v29 + 16) = v31 + 1;
          sub_18F0FD0B4(&v35, v29 + 40 * v31 + 32);
          goto LABEL_14;
        }
      }

      else
      {
        v40 = 0;
        v38 = 0u;
        v39 = 0u;
      }

      sub_18F0FA038(&v38, &qword_1EACD45D0);
LABEL_14:
      v30 += 48;
      if (!--v28)
      {
        goto LABEL_15;
      }
    }
  }

  sub_18F0FD0B4(&v35, &v41);
  __swift_project_boxed_opaque_existential_1Tm(&v41, *(&v42 + 1));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  v19 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v34 - v21;
  v23 = OUTLINED_FUNCTION_66();
  v24(v23);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_18F13A55C(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  (*(v19 + 8))(v22, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1Tm(&v41);
LABEL_16:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F13AA04()
{
  v22 = v0;
  if (qword_1ED6FE7C0 != -1)
  {
    swift_once();
  }

  sub_18F52305C();
  v1 = *(v0 + 72);
  *(v0 + 272) = v1;
  if (v1 < 2)
  {
LABEL_4:
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 264);
  v5 = *(v4 + 16);
  v6 = OBJC_IVAR____TtC10AppIntents14PreparedIntent_intent;
  v7 = v4 + 32;
  for (i = MEMORY[0x1E69E7CC0]; v5; --v5)
  {
    sub_18F0FD6C4(v7, v0 + 144);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v9);
    if (((*(v10 + 24))(v1 + v6, v9, v10) & 1) != 0 && (v11 = *(v0 + 168), v12 = *(v0 + 176), __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v11), v13 = *((*(v12 + 40))(v1 + v6, v11, v12) + 16), , !v13))
    {
      sub_18F0FD0B4((v0 + 144), v0 + 184);
      v21 = i;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F3AAD0C();
        i = v21;
      }

      v14 = *(i + 16);
      if (v14 >= *(i + 24) >> 1)
      {
        sub_18F3AAD0C();
        i = v21;
      }

      *(i + 16) = v14 + 1;
      sub_18F0FD0B4((v0 + 184), i + 40 * v14 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);
    }

    v7 += 40;
  }

  v21 = i;
  sub_18F0F9FD4(v0 + 16, v0 + 80, &qword_1EACD45C8);

  sub_18F13ADA0(&v21, v1);

  v16 = v21;
  *(v0 + 280) = v21;
  v17 = *(v16 + 16);
  *(v0 + 288) = v17;
  *(v0 + 296) = 0;
  if (!v17)
  {
    sub_18F0FA038(v0 + 16, &qword_1EACD45C8);

    goto LABEL_4;
  }

  if (*(v16 + 16))
  {
    sub_18F0FD6C4(v16 + 32, v0 + 224);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 224), *(v0 + 248));
    OUTLINED_FUNCTION_14_6();
    v18 = swift_task_alloc();
    *(v0 + 304) = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_6_41(v18);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F13ADA0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_18F13AE3C();
    v4 = v5;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_18F13AE54(v8, a2);
  *a1 = v4;
}

uint64_t sub_18F13AE54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  swift_retain_n();
  result = sub_18F522C8C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCFD78);
        v8 = sub_18F521D3C();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_18F2A22DC(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_18F2A2134(0, v4, 1, a1, a2);
  }
}

uint64_t sub_18F13AF9C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    v7 = sub_18F2A1BBC;
  }

  else
  {
    v7 = sub_18F13B09C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F13B09C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t sub_18F13B0F4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  if (v0)
  {
    v7 = sub_18F2D532C;
  }

  else
  {
    v7 = sub_18F13B1FC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18F13B1FC()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F13B260()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F2E7FC8, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    v13 = (v7 + *v7);
    v8 = swift_task_alloc();
    v3[10] = v8;
    *v8 = v5;
    v8[1] = sub_18F13B9C8;
    v9 = v3[4];
    v10 = v3[2];
    v11 = v3[3];

    return v13(v10, v11, v9);
  }
}

uint64_t sub_18F13B434()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F10DF80;

  return sub_18F13B57C();
}

uint64_t sub_18F13B4D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F13B9C4;

  return sub_18F13B434();
}

uint64_t sub_18F13B57C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v1[2] = v5;
  v1[5] = *(v4 - 8);
  v1[6] = OUTLINED_FUNCTION_34_0();
  v6 = swift_task_alloc();
  v1[7] = v6;
  v1[8] = *(v3 + 8);
  *v6 = v1;
  OUTLINED_FUNCTION_12_3(v6);

  return sub_18F139E28();
}

uint64_t sub_18F13B674()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[9] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
    v16 = (v10 + *v10);
    v11 = swift_task_alloc();
    v3[10] = v11;
    *v11 = v5;
    v11[1] = sub_18F13B8C8;
    v12 = v3[8];
    v13 = v3[3];
    v14 = v3[2];

    return v16(v14, v13, v12);
  }
}

uint64_t sub_18F13B84C()
{
  OUTLINED_FUNCTION_69();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  OUTLINED_FUNCTION_71();

  return v4();
}

uint64_t sub_18F13B8C8()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_24_10();

  return v3();
}

uint64_t sub_18F13B9C8()
{
  OUTLINED_FUNCTION_69();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_24_10();

  return v3();
}

uint64_t sub_18F13BAC4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F13C10C()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 408) = v0;
  *(v1 + 480) = v2;
  *(v1 + 416) = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v3);
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  *(v1 + 440) = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F13C1DC()
{
  v1 = *(v0 + 480);
  if (IntentParameter.isOptional.getter() && !v1)
  {
    goto LABEL_3;
  }

  v2 = *(*(v0 + 416) + 80);
  *(v0 + 448) = v2;
  if (!dynamic_cast_existential_1_conditional(v2))
  {
    v9 = *(v0 + 424);
    type metadata accessor for IntentDialog(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    type metadata accessor for AppIntentError(0);
    OUTLINED_FUNCTION_2_30();
    sub_18F13C95C(v14, v15);
    swift_allocError();
    OUTLINED_FUNCTION_168();
    IntentParameter.needsValueError(_:)(v9, v16);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_108();
  sub_18F0EF200();
  if (*(v0 + 40))
  {
    sub_18F0EF200();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F00);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 256), v0 + 296);
      v3 = *(v0 + 320);
      v4 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 296), v3);
      v5 = (*(v4 + 32))(v3, v4);
      v6 = *(v0 + 416);
      if (v5)
      {
        swift_getAssociatedTypeWitness();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF0);
        OUTLINED_FUNCTION_45();
        v7 = sub_18F52298C();

        *(v0 + 400) = v7;
        v8 = swift_task_alloc();
        *(v8 + 16) = v2;
        *(v8 + 24) = *(v6 + 88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD16F0);
        OUTLINED_FUNCTION_104();
        swift_getAssociatedTypeWitness();
        sub_18F1D5880();
        sub_18F521B3C();
      }

      else
      {
        *(v0 + 360) = swift_getAssociatedTypeWitness();
        OUTLINED_FUNCTION_48();
        *(v0 + 368) = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_1((v0 + 336));
        OUTLINED_FUNCTION_165();
        sub_18F5227CC();
        v27 = *(v0 + 360);
        v28 = *(v0 + 368);
        OUTLINED_FUNCTION_49((v0 + 336));
        v29 = swift_task_alloc();
        *(v29 + 16) = v2;
        v30 = *(v6 + 88);
        *(v29 + 24) = v30;
        v31 = swift_task_alloc();
        v31[2] = v2;
        v31[3] = v27;
        v31[4] = v30;
        v31[5] = v28;
        v31[6] = sub_18F1D5838;
        v31[7] = v29;
        OUTLINED_FUNCTION_104();
        swift_getAssociatedTypeWitness();
        sub_18F521B3C();

        __swift_destroy_boxed_opaque_existential_1Tm(v0 + 336);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 296);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
      sub_18F0EF1A8(v0 + 16, &qword_1EACD0D98);
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 216);
  }

  v17 = *(v0 + 32);
  *(v0 + 56) = *(v0 + 16);
  *(v0 + 72) = v17;
  *(v0 + 88) = *(v0 + 48);
  sub_18F0EF200();
  if (!*(v0 + 120))
  {
    OUTLINED_FUNCTION_26_1();
    sub_18F0EF1A8(v23, v24);
    OUTLINED_FUNCTION_104();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_146();
    sub_18F521D2C();
    OUTLINED_FUNCTION_26_1();
    sub_18F0EF1A8(v25, v26);

LABEL_18:
    OUTLINED_FUNCTION_104();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_66();
    if (sub_18F521D7C() == 1)
    {
      *(v0 + 160) = AssociatedTypeWitness;
      *(v0 + 168) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      OUTLINED_FUNCTION_94_1();
      sub_18F521DFC();

      sub_18F1CDF90(v0 + 136);
LABEL_3:
      OUTLINED_FUNCTION_185();

      OUTLINED_FUNCTION_6();
      goto LABEL_26;
    }

    v33 = *(v0 + 432);
    OUTLINED_FUNCTION_132_0();
    sub_18F0EF200();
    v34 = type metadata accessor for IntentDialog(0);
    v35 = OUTLINED_FUNCTION_138(v33);
    v36 = *(v0 + 432);
    if (v35 == 1)
    {
      OUTLINED_FUNCTION_132_0();
      sub_18F0EF200();
      if (OUTLINED_FUNCTION_138(v36) != 1)
      {
        sub_18F0EF1A8(*(v0 + 432), &qword_1EACCF7A0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_95_3();
      OUTLINED_FUNCTION_58_0();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v34);
    }

    v9 = *(v0 + 440);
    type metadata accessor for AppIntentError(0);
    OUTLINED_FUNCTION_2_30();
    sub_18F13C95C(v40, v41);
    OUTLINED_FUNCTION_183();
    OUTLINED_FUNCTION_168();
    OUTLINED_FUNCTION_66();
    IntentParameter.needsDisambiguationError(among:dialog:)(v42, v43);

LABEL_25:
    sub_18F0EF1A8(v9, &qword_1EACCF7A0);
    swift_willThrow();
    OUTLINED_FUNCTION_185();

    OUTLINED_FUNCTION_71();
LABEL_26:
    OUTLINED_FUNCTION_176();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_49((v0 + 96));
  OUTLINED_FUNCTION_79_2();
  *(v0 + 200) = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_56();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 456) = AssociatedConformanceWitness;
  *(v0 + 208) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 464) = v19;
  *v19 = v20;
  OUTLINED_FUNCTION_6_20(v19);
  OUTLINED_FUNCTION_176();

  return sub_18F13F7EC();
}

uint64_t sub_18F13C95C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t IntentParameter.needsValueError(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  OUTLINED_FUNCTION_22_2();
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-1] - v12;
  v28[3] = v8;
  OUTLINED_FUNCTION_0_9();
  v28[4] = swift_getWitnessTable();
  v28[0] = v4;
  sub_18F0F9FD4(a1, v3, &qword_1EACCF7A0);
  v14 = type metadata accessor for IntentDialog(0);
  v15 = OUTLINED_FUNCTION_25_4();
  if (__swift_getEnumTagSinglePayload(v15, v16, v14) == 1)
  {
    sub_18F0F9FD4(v4 + *(*v4 + 136), v13, &qword_1EACCF7A0);
    v17 = OUTLINED_FUNCTION_25_4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, v18, v14);

    if (EnumTagSinglePayload != 1)
    {
      sub_18F0FA038(v3, &qword_1EACCF7A0);
    }
  }

  else
  {
    sub_18F18F540(v3, v13);
    OUTLINED_FUNCTION_58_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v14);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0568);
  v24 = *(v23 + 48);
  v25 = (a2 + *(v23 + 64));
  sub_18F0FD6C4(v28, a2);
  sub_18F1170D0(v13, a2 + v24);
  type metadata accessor for AppIntentError.Context(0);
  *v25 = 0u;
  v25[1] = 0u;
  *(v25 + 25) = 0u;
  swift_storeEnumTagMultiPayload();
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t OUTLINED_FUNCTION_166_1()
{

  return sub_18F52307C();
}

uint64_t OUTLINED_FUNCTION_183()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_183_1()
{

  return swift_dynamicCast();
}

uint64_t *OUTLINED_FUNCTION_183_2()
{
  v2 = *(v0 - 320);
  *(v0 - 120) = *(v0 - 336);
  *(v0 - 112) = v2;

  return __swift_allocate_boxed_opaque_existential_1((v0 - 144));
}

void sub_18F13CC7C()
{
  OUTLINED_FUNCTION_175();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_141();

  OUTLINED_FUNCTION_28_2();

  __asm { BRAA            X1, X16 }
}

uint64_t OUTLINED_FUNCTION_138(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_138_1()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  return sub_18F138888(v2, v3, v4, v5);
}

uint64_t sub_18F13CF44()
{
  OUTLINED_FUNCTION_69();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F13CFC8()
{
  OUTLINED_FUNCTION_69();
  sub_18F132364(v0 + 80);

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t sub_18F13D030()
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

uint64_t sub_18F13D134()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_49_18();
  v1 = swift_task_alloc();
  *(v0 + 536) = v1;
  *(v1 + 16) = v0 + 80;
  OUTLINED_FUNCTION_6_1(&unk_18F566A88);
  v6 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 544) = v3;
  *v3 = v4;
  v3[1] = sub_18F13E118;

  return v6(v0 + 216, &unk_18F566A80, v1);
}

double sub_18F13D224@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v19 = a2 & 1;
  v10 = 0u;
  v11 = 0u;
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1;
  }

  *&v12 = (a2 & 1) == 0;
  *(&v12 + 1) = v5;
  LOBYTE(v13) = a2 & 1;
  *(&v13 + 1) = a3;
  memset(v14, 0, sizeof(v14));
  v15 = v12;
  v16 = v5;
  v17 = a2 & 1;
  v18 = a3;
  sub_18F132308(&v10, &v9);
  sub_18F132364(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

uint64_t sub_18F13D2A8()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[51];
  if (*(v1 + 48))
  {
    if (qword_1ED6FE7C0 != -1)
    {
      OUTLINED_FUNCTION_1_120();
      v1 = v0[51];
    }

    OUTLINED_FUNCTION_3_90();
    sub_18F132308(v1, v2);
    v3 = swift_task_alloc();
    v0[55] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3218);
    OUTLINED_FUNCTION_72_16();
    *v3 = v4;
    v3[1] = sub_18F133890;
    v6 = OUTLINED_FUNCTION_4_87(v5, v0[48]);

    return MEMORY[0x1EEE6DE98](v6);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_20_43();
    OUTLINED_FUNCTION_32_42(v7, v8, v9, v10, v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_6_1(&unk_18F54D820);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[53] = v16;
    *v16 = v17;
    v16[1] = sub_18F13DFFC;
    OUTLINED_FUNCTION_26_47();

    return v18();
  }
}

uint64_t sub_18F13D42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 400) = a3;
  *(v4 + 408) = v3;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;
  v5 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v5;
  v6 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v6;
  return MEMORY[0x1EEE6DFA0](sub_18F13D2A8, 0, 0);
}

uint64_t sub_18F13D460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  OUTLINED_FUNCTION_72_3();
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F13D48C()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEE60 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_7_29();
  OUTLINED_FUNCTION_12_33(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_80_3(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3218);
  OUTLINED_FUNCTION_87_2();
  *v0 = v4;
  OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_5_35();
  OUTLINED_FUNCTION_131_1();

  return MEMORY[0x1EEE6DE98](v5);
}

void OUTLINED_FUNCTION_130_0()
{
}

uint64_t sub_18F13D5DC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_66(v1);

  return sub_18F13D7B4(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_86_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = a1;
  v4[1] = a2;
}

unint64_t OUTLINED_FUNCTION_144(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_18F11897C(a1, a2, va);
}

void OUTLINED_FUNCTION_86_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_86_6(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10)
{
  *v10 = a1;
  *v11 = a10;

  return swift_unknownObjectRetain();
}

void OUTLINED_FUNCTION_95_0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_18F13D7B4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 352) = a3;
  *(v4 + 360) = a4;
  *(v4 + 336) = a1;
  *(v4 + 344) = a2;
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  v6 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v6;
  return MEMORY[0x1EEE6DFA0](sub_18F13D7E8, 0, 0);
}

uint64_t sub_18F13D7E8()
{
  OUTLINED_FUNCTION_69();
  if (qword_1ED6FE7C0 != -1)
  {
    OUTLINED_FUNCTION_1_120();
  }

  OUTLINED_FUNCTION_3_90();
  sub_18F132308(v1, v2);
  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3218);
  OUTLINED_FUNCTION_72_16();
  *v3 = v4;
  v3[1] = sub_18F13DD9C;
  v6 = OUTLINED_FUNCTION_4_87(v5, *(v0 + 336));

  return MEMORY[0x1EEE6DE98](v6);
}

uint64_t sub_18F13D8C8()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_6(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC870;

  return sub_18F13D95C(v2, v3);
}

uint64_t sub_18F13D95C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F13D97C, 0, 0);
}

uint64_t sub_18F13D97C()
{
  OUTLINED_FUNCTION_29();
  v1 = v0[3];
  v2 = v1[3];
  v0[4] = v2;
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  OUTLINED_FUNCTION_22_48();
  v0[5] = v3;
  v0[6] = swift_getAssociatedTypeWitness();
  v4 = sub_18F52254C();
  v0[7] = v4;
  OUTLINED_FUNCTION_51(v4);
  v0[8] = v5;
  v0[9] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[10] = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_24_5(v6);

  return v9(v8);
}

uint64_t sub_18F13DB0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return sub_18F13613C();
}

uint64_t sub_18F13DBA8()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F13DC8C()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[9];
  v2 = v0[6];
  v3 = OUTLINED_FUNCTION_44_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, v4, v2);
  v6 = v0[2];
  if (EnumTagSinglePayload == 1)
  {
    (*(v0[8] + 8))(v1, v0[7]);

    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  else
  {
    *(v6 + 24) = v2;
    *(v6 + 32) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
    (*(*(v2 - 8) + 32))(boxed_opaque_existential_1, v1, v2);
  }

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F13DD9C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 376) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_10_58();
    sub_18F0EF1A8(v3 + 208, &qword_1EACD45C8);
    v7 = OUTLINED_FUNCTION_9_12();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_9_65();
    sub_18F0EF1A8(v3 + 272, &qword_1EACD45C8);
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F13DEE4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_8_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 144) = v0;

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

uint64_t sub_18F13DFFC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 432) = v0;

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

void sub_18F13E118()
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

uint64_t sub_18F13E240()
{
  OUTLINED_FUNCTION_29();
  sub_18F0EF200();
  if (*(v0 + 320))
  {
    sub_18F0FD0B4((v0 + 296), v0 + 256);
    OUTLINED_FUNCTION_83_12();
    OUTLINED_FUNCTION_60_15();
    sub_18F11E26C();
    if (*(v0 + 360))
    {
      v1 = *(v0 + 464);
      v3 = *(v0 + 432);
      v2 = *(v0 + 440);
      sub_18F0EF1A8(v0 + 336, &qword_1EACD0620);
      OUTLINED_FUNCTION_83_12();
      v4 = OUTLINED_FUNCTION_60_15();
      v5 = sub_18F142A38(v4);
      v6 = *(v0 + 280);
      v7 = *(v0 + 288);
      OUTLINED_FUNCTION_83_12();
      sub_18F2E86FC(v6, v7, v1);
      sub_18F0EF200();
      if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
      {
        sub_18F0EF1A8(*(v0 + 432), &qword_1EACD32D0);
      }

      else
      {
        OUTLINED_FUNCTION_39_28();
        sub_18F13FE10();
        v14 = v13;
        [v5 setDisplayRepresentation_];

        OUTLINED_FUNCTION_38_27();
      }

      v15 = *(v0 + 464);
      v12 = [objc_allocWithZone(MEMORY[0x1E69ACEC0]) initWithValue:v5 indentationLevel:*(v15 + *(*(v0 + 456) + 24))];

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_7_76();
      sub_18F1413B0(v15, v16);
      sub_18F0EF1A8(v0 + 216, &qword_1EACD3218);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
      goto LABEL_10;
    }

    sub_18F0EF1A8(v0 + 216, &qword_1EACD3218);

    swift_unknownObjectRelease();
    sub_18F0EF1A8(v0 + 336, &qword_1EACD0620);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 256);
  }

  else
  {
    OUTLINED_FUNCTION_24_23();
    sub_18F0EF1A8(v8, v9);
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_24_23();
    sub_18F0EF1A8(v10, v11);
  }

  v12 = 0;
LABEL_10:
  sub_18F13E500(v0 + 80);
  OUTLINED_FUNCTION_53_18();

  OUTLINED_FUNCTION_20_0();

  return v17(v12);
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  OUTLINED_FUNCTION_31_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_11_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for IntentDonationIdentifier();
  OUTLINED_FUNCTION_51(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  sub_18F520E6C();
  OUTLINED_FUNCTION_10_0();
  (*(v10 + 8))(v0 + v9);

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{

  OUTLINED_FUNCTION_3_27();

  return swift_deallocObject();
}

void sub_18F13E980()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_13_2();
  v4 = *(v3 + 40);
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_110();
  v8 = *(v7 + 48);
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
  OUTLINED_FUNCTION_29_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_18F13EC14()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 80);
  v2 = sub_18F520B3C();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_18F1B9280;

  return sub_18F12C4A8();
}

uint64_t sub_18F13ECDC()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  type metadata accessor for PreparedIntent();
  (*(v2 + 16))(v1, v5, v4);
  sub_18F10E0AC();
  v7 = OUTLINED_FUNCTION_29_13();
  v9 = sub_18F1194F4(v7, v8, v4, v3);
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 128) = 1;
  *(v0 + 136) = v9;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 1;
  *(v0 + 72) = v9;
  sub_18F132308(v0 + 80, v0 + 144);
  sub_18F132364(v0 + 16);
  v10 = swift_task_alloc();
  *(v0 + 736) = v10;
  *(v10 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 744) = v11;
  *v11 = v12;
  v11[1] = sub_18F1B944C;
  v13 = *(v0 + 728);

  return sub_18F13EE6C(v13, &unk_18F543AA0, v10);
}

uint64_t sub_18F13EE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 400) = a3;
  *(v4 + 408) = v3;
  *(v4 + 384) = a1;
  *(v4 + 392) = a2;
  v5 = v3[1];
  *(v4 + 16) = *v3;
  *(v4 + 32) = v5;
  v6 = v3[3];
  *(v4 + 48) = v3[2];
  *(v4 + 64) = v6;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F13EE94()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[51];
  if (*(v1 + 48))
  {
    if (qword_1ED6FE7C0 != -1)
    {
      OUTLINED_FUNCTION_1_120();
      v1 = v0[51];
    }

    OUTLINED_FUNCTION_3_90();
    sub_18F132308(v1, v2);
    v3 = swift_task_alloc();
    v0[55] = v3;
    type metadata accessor for DynamicOptionsResult(0);
    OUTLINED_FUNCTION_72_16();
    *v3 = v4;
    v3[1] = sub_18F461B80;
    v6 = OUTLINED_FUNCTION_4_87(v5, v0[48]);

    return MEMORY[0x1EEE6DE98](v6);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_20_43();
    OUTLINED_FUNCTION_32_42(v7, v8, v9, v10, v11, v12, v13, v14, v15);
    OUTLINED_FUNCTION_6_1(&unk_18F54D830);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[53] = v16;
    *v16 = v17;
    v16[1] = sub_18F461A64;
    OUTLINED_FUNCTION_26_47();

    return v18();
  }
}

uint64_t sub_18F13F00C()
{
  OUTLINED_FUNCTION_69();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_18F0FC874;

  return sub_18F13F0A4(v3, v4);
}

uint64_t sub_18F13F0A4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18F12C70C, 0, 0);
}

uint64_t sub_18F13F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[41] = a5;
  v6[42] = a6;
  v6[39] = a3;
  v6[40] = a4;
  v6[37] = a1;
  v6[38] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_getAssociatedTypeWitness();
  v6[45] = swift_getAssociatedConformanceWitness();
  v6[46] = swift_getAssociatedTypeWitness();
  v6[47] = swift_getAssociatedConformanceWitness();
  v6[48] = type metadata accessor for IntentItemCollection();
  v8 = sub_18F52254C();
  v6[49] = v8;
  v6[50] = *(v8 - 8);
  v6[51] = swift_task_alloc();
  v6[52] = *(a5 - 8);
  v6[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F13F568, 0, 0);
}

void sub_18F13F338()
{
  type metadata accessor for IntentItemSection();
  sub_18F521DBC();
  if (v0 <= 0x3F)
  {
    sub_18F119B88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F13F3EC()
{
  sub_18F13F480();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IntentItem();
    sub_18F521DBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F13F480()
{
  if (!qword_1ED6FDF70[0])
  {
    type metadata accessor for DisplayRepresentation();
    v0 = sub_18F52254C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED6FDF70);
    }
  }
}

uint64_t sub_18F13F4D8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for DisplayRepresentation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F13F568()
{
  v1 = *(v0 + 320);
  v2 = type metadata accessor for DynamicOptionsResult(0);
  *(v0 + 432) = v2;
  *(v0 + 472) = *(v2 + 20);
  sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  if (v1)
  {
    (*(*(v0 + 416) + 16))(*(v0 + 424), *(v0 + 304), *(v0 + 328));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2DE0);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4((v0 + 216), v0 + 176);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 176), *(v0 + 200));
      *(v0 + 80) = swift_getAssociatedTypeWitness();
      *(v0 + 88) = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      v7 = swift_task_alloc();
      *(v0 + 440) = v7;
      *v7 = v0;
      v7[1] = sub_18F228CA8;

      return sub_18F2E8290();
    }

    *(v0 + 248) = 0;
    *(v0 + 232) = 0u;
    *(v0 + 216) = 0u;
    sub_18F0EF1A8(v0 + 216, &qword_1EACD2DE8);
  }

  v9 = *(v0 + 360);
  *(v0 + 80) = swift_checkMetadataState();
  *(v0 + 88) = v9;
  __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  v10 = swift_task_alloc();
  *(v0 + 456) = v10;
  *v10 = v0;
  v10[1] = sub_18F145B48;

  return sub_18F13F7EC();
}

uint64_t sub_18F13F7EC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_9();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_11_33(v5);

  return sub_18F139E28();
}

uint64_t sub_18F13F890()
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
    OUTLINED_FUNCTION_24_10();

    return v7();
  }

  else
  {
    v13 = (*(v3[4] + 48) + **(v3[4] + 48));
    v9 = swift_task_alloc();
    v3[7] = v9;
    *v9 = v5;
    v9[1] = sub_18F18A260;
    v10 = v3[4];
    v11 = v3[2];
    v12 = v3[3];

    return v13(v11, v12, v10);
  }
}

uint64_t sub_18F13FA58()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F13B9C4;

  return sub_18F13FBA8();
}

uint64_t sub_18F13FB00()
{
  OUTLINED_FUNCTION_21();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_12_3(v5);

  return sub_18F139E28();
}

uint64_t sub_18F13FBA8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v1[1] = sub_18F10DF80;

  return sub_18F13FB00();
}

uint64_t sub_18F13FC48()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
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
    OUTLINED_FUNCTION_14_6();
    v14 = (v9 + *v9);
    v10 = swift_task_alloc();
    v3[7] = v10;
    *v10 = v5;
    v10[1] = sub_18F18A260;
    v11 = v3[4];
    v12 = v3[2];
    v13 = v3[3];

    return v14(v12, v13, v11);
  }
}

void sub_18F13FE10()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v49 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v46 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  v24 = sub_18F117248();
  v48 = type metadata accessor for DisplayRepresentation();
  v25 = v2;
  sub_18F0F9F88(v1 + *(v48 + 20), v23, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_106(v23, 1, v2);
  v47 = v24;
  if (v26)
  {
    sub_18F0EF1A8(v23, &qword_1EACCF7A8);
    v45 = 0;
    v27 = v49;
  }

  else
  {
    v45 = sub_18F117248();
    v27 = v49;
    (*(v49 + 8))(v23, v25);
  }

  v28 = v48;
  sub_18F0F9F88(v1 + *(v48 + 24), v11, &qword_1EACD0270);
  OUTLINED_FUNCTION_106(v11, 1, v12);
  if (v26)
  {
    sub_18F0EF1A8(v11, &qword_1EACD0270);
    v30 = 0;
  }

  else
  {
    sub_18F11CF40(v11, v16);
    v29 = sub_18F11D1B0();
    v30 = [v29 proxiedImageCopy];

    sub_18F140304(v16);
  }

  v31 = *(v1 + v28[9]);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v43 = v30;
    v44 = v1;
    v52 = MEMORY[0x1E69E7CC0];
    sub_18F5228CC();
    v35 = *(v27 + 16);
    v34 = v27 + 16;
    v50 = v35;
    v36 = v31 + ((*(v34 + 64) + 32) & ~*(v34 + 64));
    v37 = *(v34 + 56);
    while (1)
    {
      v50(v7, v36, v25);
      sub_18F520AAC();
      sub_18F0F21A8(0, &qword_1ED6FEEC0);
      if (!swift_dynamicCast())
      {
        break;
      }

      v38 = v51;
      [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

      (*(v34 - 8))(v7, v25);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v36 += v37;
      if (!--v32)
      {
        v33 = v52;
        v30 = v43;
        v1 = v44;
        v28 = v48;
        v27 = v49;
        goto LABEL_12;
      }
    }

    sub_18F522A3C();
    __break(1u);
  }

  else
  {
LABEL_12:
    v39 = v46;
    sub_18F0F9F88(v1 + v28[10], v46, &qword_1EACCF7A8);
    OUTLINED_FUNCTION_106(v39, 1, v25);
    if (v26)
    {
      sub_18F0EF1A8(v39, &qword_1EACCF7A8);
      v40 = 0;
    }

    else
    {
      v40 = sub_18F117248();
      (*(v27 + 8))(v39, v25);
    }

    v41 = *(v1 + v28[8]);
    objc_allocWithZone(MEMORY[0x1E69AC7A8]);
    v42 = v41;
    sub_18F140360(v47, v45, v30, v33, v40, v41);
    OUTLINED_FUNCTION_16();
  }
}

uint64_t sub_18F140304(uint64_t a1)
{
  v2 = type metadata accessor for DisplayRepresentation.Image(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_18F140360(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v7 = v6;
  if (a4)
  {
    sub_18F0F21A8(0, &qword_1ED6FEFA8);
    v13 = sub_18F521C8C();
  }

  else
  {
    v13 = 0;
  }

  v14 = [v7 initWithTitle:a1 subtitle:a2 image:a3 synonyms:v13 descriptionText:a5 snippetPluginModel:a6];

  return v14;
}

void sub_18F140434()
{
  v119 = v0;
  v1 = *(v0 + 728);
  v115 = MEMORY[0x1E69E7CC0];
  v2 = *v1;
  v102 = *(*v1 + 16);
  if (!v102)
  {
    goto LABEL_41;
  }

  v3 = 0;
  v4 = *(v0 + 616);
  v101 = *(v0 + 704);
  v98 = *(v0 + 672);
  v99 = *v1;
  v108 = (v4 + 8);
  v100 = *(*(v0 + 688) + 20);
  v109 = (v4 + 16);
  do
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v0 + 704);
    OUTLINED_FUNCTION_11_10();
    sub_18F141408();
    v6 = *(v101 + v100);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_10_14();
    sub_18F141358(v5, v7);
    v8 = *(v6 + 16);
    if (v8)
    {
      v103 = v3;
      v9 = v6 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      v112 = *(v98 + 72);
      while (1)
      {
        v10 = *(v0 + 648);
        v11 = *(v0 + 640);
        OUTLINED_FUNCTION_13_15();
        sub_18F141408();
        sub_18F0EF200();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v10);
        v13 = *(v0 + 680);
        if (EnumTagSinglePayload == 1)
        {
          v14 = *(v0 + 640);
          OUTLINED_FUNCTION_0_21();
          sub_18F141358(v13, v15);
          sub_18F0EF1A8(v14, &qword_1EACD32D0);
        }

        else
        {
          sub_18F1414B8();
          sub_18F0FD724(v13, v0 + 208);
          v114 = swift_allocObject();
          *(v114 + 16) = 0;
          v16 = swift_allocObject();
          *(v16 + 16) = 0;
          *(v16 + 24) = 0;
          v113 = v16;
          sub_18F0FD724(v0 + 208, v0 + 248);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF0);
          if (!swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
            v111 = v8;
            if (swift_dynamicCast())
            {
              sub_18F0FD0B4((v0 + 328), v0 + 368);
              __swift_project_boxed_opaque_existential_1Tm((v0 + 368), *(v0 + 392));
              v22 = OUTLINED_FUNCTION_22();
              AppEntity.fullyQualifiedIdentifier.getter(v22, v23, v24);
              v25 = v116;
              v26 = *(v117 + 8);
              OUTLINED_FUNCTION_31_15();
              v106 = v26;
              if (dynamic_cast_existential_1_conditional(v25))
              {
                if (qword_1ED6FF6D8 != -1)
                {
                  OUTLINED_FUNCTION_12_5();
                  swift_once();
                }

                v27 = OUTLINED_FUNCTION_31_15();
                v28 = OUTLINED_FUNCTION_41_3(v27);
                if (v26)
                {
                }

                else
                {
                  v48 = v28;

                  v49 = v48;
                  sub_18F1AF344();
                }
              }

              v104 = *(v0 + 584);
              v50 = *(v0 + 536);
              v51 = *(v0 + 528);
              v52 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
              _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
              sub_18F166ED0();
              v54 = v53;
              v55 = [v53 description];

              v56 = sub_18F5218DC();
              v58 = v57;

              sub_18F1415C0(v51, v50, v56, v58, v104);

              static AppValue._identifier.getter(v25, v106);
              if (dynamic_cast_existential_1_conditional(v25))
              {
                if (qword_1ED6FF6D8 != -1)
                {
                  OUTLINED_FUNCTION_12_5();
                  swift_once();
                }

                v59 = OUTLINED_FUNCTION_31_15();
                v60 = OUTLINED_FUNCTION_41_3(v59);
                if (v106)
                {
                }

                else
                {
                  v61 = v60;

                  v62 = v61;
                  sub_18F1AF344();
                }
              }

              v63 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
              sub_18F166ED0();
              v65 = v64;
              v66 = [objc_allocWithZone(MEMORY[0x1E69AC7C8]) initWithIdentifier_];

              v118 = sub_18F0F21A8(0, &qword_1ED6FE640);
              v116 = v66;
              v67 = OUTLINED_FUNCTION_13_8((v0 + 368));
              v68 = static AppEntity.valueType.getter(v67, *(v0 + 400));
              sub_18F13FE10();
              v70 = v69;
              v71 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
              v110 = sub_18F141064(&v116, v68, v70);
              v41 = v0 + 368;
LABEL_29:
              __swift_destroy_boxed_opaque_existential_1Tm(v41);
            }

            else
            {
              v42 = *(v0 + 584);
              v43 = *(v0 + 536);
              v44 = *(v0 + 528);
              __swift_project_boxed_opaque_existential_1Tm((v0 + 208), *(v0 + 232));
              v45 = OUTLINED_FUNCTION_22();
              v110 = sub_18F142A38(v45);
              v46 = sub_18F141170(v113, v114);
              sub_18F1415C0(v44, v43, v46, v47, v42);
            }

            v72 = *(v0 + 632);
            v73 = *(v0 + 624);
            v74 = *(v0 + 608);
            v75 = *(v0 + 600);
            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);
            (*v109)(v73, v72, v74);
            v76 = sub_18F1410F0(v114);
            v77 = sub_18F141170(v113, v114);
            v79 = v78;
            sub_18F0EF200();
            v80 = sub_18F520B3C();
            v81 = __swift_getEnumTagSinglePayload(v75, 1, v80);
            v82 = *(v0 + 600);
            if (v81 == 1)
            {
              v83 = OUTLINED_FUNCTION_22();
              sub_18F0EF1A8(v83, v84);
              v85 = 0;
            }

            else
            {
              v85 = sub_18F117248();
              (*(*(v80 - 8) + 8))(v82, v80);
            }

            v86 = *(v0 + 624);
            v87 = *(v0 + 576);
            v88 = *(v0 + 568);
            objc_allocWithZone(MEMORY[0x1E69AD028]);
            _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
            sub_18F141234(v86, v76, v77, v79, v110, v85, v88, v87);
            MEMORY[0x193ADB260]();
            if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_18F521D0C();
            }

            v89 = *(v0 + 680);
            v90 = *(v0 + 656);
            v91 = *(v0 + 632);
            v92 = *(v0 + 608);
            sub_18F521D6C();

            (*v108)(v91, v92);
            OUTLINED_FUNCTION_8_13();
            sub_18F141358(v90, v93);
            OUTLINED_FUNCTION_0_21();
            sub_18F141358(v89, v94);

            __swift_destroy_boxed_opaque_existential_1Tm(v0 + 208);
            v8 = v111;
            goto LABEL_36;
          }

          v17 = *(v0 + 544);
          sub_18F0FD0B4((v0 + 288), v0 + 408);
          sub_18F0FD724(v17, v0 + 448);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F00);
          if (!swift_dynamicCast())
          {
            v111 = v8;
            v107 = *(v0 + 584);
            v105 = *(v0 + 536);
            v29 = *(v0 + 528);
            __swift_project_boxed_opaque_existential_1Tm((v0 + 408), *(v0 + 432));
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v31 = *(AssociatedTypeWitness - 8);
            v32 = OUTLINED_FUNCTION_34_0();
            sub_18F521C0C();
            swift_getAssociatedConformanceWitness();
            v33 = sub_18F522C9C();
            v35 = v34;
            (*(v31 + 8))(v32, AssociatedTypeWitness);

            sub_18F1415C0(v29, v105, v33, v35, v107);
            v118 = MEMORY[0x1E69E6158];
            v116 = v33;
            v117 = v35;
            v36 = OUTLINED_FUNCTION_13_8((v0 + 408));
            v37 = sub_18F1435A0(v36, *(v0 + 440));
            sub_18F13FE10();
            v39 = v38;
            v40 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
            v110 = sub_18F141064(&v116, v37, v39);
            v41 = v0 + 408;
            goto LABEL_29;
          }

          v18 = *(v0 + 680);
          OUTLINED_FUNCTION_8_13();
          sub_18F141358(v19, v20);
          OUTLINED_FUNCTION_0_21();
          sub_18F141358(v18, v21);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 488);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 408);
          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 248);

          __swift_destroy_boxed_opaque_existential_1Tm(v0 + 208);
        }

LABEL_36:
        v9 += v112;
        if (!--v8)
        {

          v2 = v99;
          v3 = v103;
          goto LABEL_39;
        }
      }
    }

LABEL_39:
    ++v3;
  }

  while (v3 != v102);
  v1 = *(v0 + 728);
LABEL_41:
  OUTLINED_FUNCTION_17_12();
  OUTLINED_FUNCTION_9_11();
  sub_18F141358(v1, v95);

  v96 = OUTLINED_FUNCTION_12_7();

  v97(v96);
}

uint64_t sub_18F140FF4()
{

  return swift_deallocObject();
}

uint64_t sub_18F14102C()
{

  return swift_deallocObject();
}

id sub_18F141064(void *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = [v3 initWithValue:sub_18F522D4C() valueType:a2 displayRepresentation:a3];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

id sub_18F1410F0(uint64_t a1)
{
  v2 = (a1 + 16);
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = sub_18F117248();
    swift_beginAccess();
    v5 = *v2;
    *v2 = v4;
    v3 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v3;
}

uint64_t sub_18F141170(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = sub_18F1410F0(a2);
    v5 = [v4 localizedStringForLocaleIdentifier_];

    v3 = sub_18F5218DC();
    v7 = v6;

    swift_beginAccess();
    *(a1 + 16) = v3;
    *(a1 + 24) = v7;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v3;
}

id sub_18F141234(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v15 = sub_18F520E2C();
  v16 = sub_18F5218AC();

  if (a8)
  {
    v17 = sub_18F5218AC();
  }

  else
  {
    v17 = 0;
  }

  v18 = [v9 initWithParameterIdentifier:v15 title:a2 titleKey:v16 value:a5 optionsCollectionTitle:a6 systemImageName:v17];

  v19 = sub_18F520E6C();
  (*(*(v19 - 8) + 8))(a1, v19);
  return v18;
}

uint64_t sub_18F141358(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F1413B0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_18F141408()
{
  OUTLINED_FUNCTION_79();
  v1(0);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

uint64_t sub_18F141460()
{
  OUTLINED_FUNCTION_79();
  v1(0);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

uint64_t sub_18F1414B8()
{
  OUTLINED_FUNCTION_79();
  v1(0);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

uint64_t sub_18F141510(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_47_3();
  v4(v3);
  OUTLINED_FUNCTION_10_0();
  v5 = OUTLINED_FUNCTION_56();
  v6(v5);
  return a2;
}

uint64_t sub_18F141568()
{
  OUTLINED_FUNCTION_79();
  v1(0);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

void sub_18F1415C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F543810;
  type metadata accessor for AppManager();
  sub_18F3E6F18(v27);
  v11 = v27[0];
  v12 = v27[1];
  v31 = v28;
  sub_18F0EF1A8(&v31, &qword_1EACD4470);
  v30 = v29;
  sub_18F0EF1A8(&v30, &unk_1EACCFDB0);
  if (!v12)
  {
    v13 = [objc_opt_self() mainBundle];
    v14 = [v13 bundleIdentifier];

    if (v14)
    {
      v11 = sub_18F5218DC();
      v12 = v15;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }
  }

  *(inited + 32) = v11;
  *(inited + 40) = v12;
  *(inited + 48) = static AppIntent._identifier.getter(a5);
  *(inited + 56) = v16;
  *(inited + 64) = a1;
  *(inited + 72) = a2;
  *(inited + 80) = a3;
  *(inited + 88) = a4;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v19 = 16 * v17 + 40;
  while (1)
  {
    if (v17 == 4)
    {
      swift_setDeallocating();
      sub_18F14192C();
      sub_18F520E1C();

      return;
    }

    if (v17 > 3)
    {
      break;
    }

    ++v17;
    v20 = v19 + 16;
    v21 = *(inited + v19);
    v19 += 16;
    if (v21)
    {
      v22 = *(inited + v20 - 24);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F141818();
        v18 = v25;
      }

      v23 = *(v18 + 16);
      if (v23 >= *(v18 + 24) >> 1)
      {
        sub_18F141818();
        v18 = v26;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v22;
      *(v24 + 40) = v21;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_18F141818()
{
  OUTLINED_FUNCTION_29_7();
  if (v4)
  {
    OUTLINED_FUNCTION_6_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_26();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_7();
    }
  }

  OUTLINED_FUNCTION_9_0();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
    v7 = OUTLINED_FUNCTION_55_2();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_11_6();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_33_3();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_18F1418E4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  swift_arrayDestroy();
  v1 = OUTLINED_FUNCTION_27_1();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

id static AppEntity.valueType.getter(uint64_t a1, uint64_t a2)
{
  sub_18F0F21A8(0, &qword_1ED6FE630);
  static AppValue._identifier.getter(a1, *(a2 + 8));
  return sub_18F14199C();
}

id sub_18F14199C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F5218AC();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

id sub_18F141A10(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_18F520D2C();
  v10 = [v8 initWithData:v9 renderingMode:a3 displayStyle:a4];

  sub_18F123A1C(a1, a2);
  return v10;
}

id sub_18F141AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a2;
  v78 = a3;
  v79 = a4;
  __swift_allocate_boxed_opaque_existential_1(v77);
  OUTLINED_FUNCTION_31_0();
  (*(v4 + 32))();
  __swift_project_boxed_opaque_existential_1Tm(v77, v78);
  DynamicType = swift_getDynamicType();
  sub_18F0FD6C4(v77, &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1E50);
  if (!swift_dynamicCast())
  {
    v70 = 0;
    v69 = 0u;
    v68 = 0u;
    sub_18F0FA038(&v68, &qword_1EACD1E48);
    v66 = sub_18F145350(DynamicType);
    v27 = v78;
    v28 = v79;
    __swift_project_boxed_opaque_existential_1Tm(v77, v78);
    AppEntity.fullyQualifiedIdentifier.getter(v27, v28, &v68);
    v29 = v68;
    v30 = v69;
    v31 = *(*(&v68 + 1) + 8);
    static AppValue._identifier.getter(v68, v31);
    if (dynamic_cast_existential_1_conditional(v29))
    {
      v65 = v30;
      if (qword_1ED6FF6D8 != -1)
      {
        OUTLINED_FUNCTION_2_1();
      }

      v32 = static AppValue._identifier.getter(v29, v31);
      v40 = sub_18F164CE8(v32);

      v41 = v40;
      sub_18F1AF344();
    }

    v42 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
    sub_18F166ED0();
    v44 = v43;
    v45 = sub_18F14537C();
    v46 = v78;
    __swift_project_boxed_opaque_existential_1Tm(v77, v78);
    v47 = sub_18F11D920(v46);
    MEMORY[0x1EEE9AC00](v47);
    sub_18F1421AC(sub_18F142408, &v62, v47, v48, v49, v50, v51, v52, v62, v63, v77, v64);
    OUTLINED_FUNCTION_46();

    sub_18F1427E8();
    v53 = sub_18F521C8C();

    sub_18F0FD6C4(v77, &v71);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1E58);
    if (swift_dynamicCast())
    {
      v54 = v76;
      OUTLINED_FUNCTION_10_17();
      v55 = OUTLINED_FUNCTION_46();
      v56(v55, v54);
      v58 = v57;
      __swift_destroy_boxed_opaque_existential_1Tm(&v74);
      if (v58)
      {
        v59 = sub_18F5218AC();

LABEL_20:
        v60 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v39 = [v60 initWithTransient:v66 identifier:v44 persistentFileIdentifiable:v45 properties:v53 managedAccountIdentifier:v59];

        goto LABEL_21;
      }
    }

    else
    {
      v76 = 0;
      v74 = 0u;
      v75 = 0u;
      sub_18F0FA038(&v74, &qword_1EACD1E60);
    }

    v59 = 0;
    goto LABEL_20;
  }

  sub_18F0FD0B4(&v68, &v74);
  v6 = v76;
  OUTLINED_FUNCTION_10_17();
  v7 = OUTLINED_FUNCTION_46();
  v9 = v8(v7, v6);
  v10 = v76;
  OUTLINED_FUNCTION_10_17();
  v11 = OUTLINED_FUNCTION_46();
  v12(v11, v10);
  v13 = *(&v75 + 1);
  v14 = v76;
  __swift_project_boxed_opaque_existential_1Tm(&v74, *(&v75 + 1));
  (*(v14 + 16))(v13, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  v16 = sub_18F1293B8();
  v17 = *(&v75 + 1);
  OUTLINED_FUNCTION_10_17();
  v18 = sub_18F11D920(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_18F1421AC(sub_18F1EACE0, &v62, v18, v19, v20, v21, v22, v23, v62, v63, &v74, v64);
  OUTLINED_FUNCTION_46();

  sub_18F1427E8();
  v24 = sub_18F521C8C();

  sub_18F5229BC();
  if (v25)
  {
    v26 = sub_18F5218AC();
  }

  else
  {
    v26 = 0;
  }

  sub_18F0FD6C4(&v74, &v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1E58);
  if (!swift_dynamicCast())
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    sub_18F0FA038(&v71, &qword_1EACD1E60);
    goto LABEL_13;
  }

  v33 = v73;
  __swift_project_boxed_opaque_existential_1Tm(&v71, *(&v72 + 1));
  v34 = OUTLINED_FUNCTION_46();
  v36 = v35(v34, v33);
  v38 = v37;
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  if (!v38)
  {
LABEL_13:
    v36 = 0;
    goto LABEL_14;
  }

  sub_18F5218AC();
  OUTLINED_FUNCTION_46();

LABEL_14:
  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTransient:v9 & 1 identifier:v16 properties:v24 prototypeMangledTypeName:v26 managedAccountIdentifier:v36];

  __swift_destroy_boxed_opaque_existential_1Tm(&v74);
LABEL_21:
  __swift_destroy_boxed_opaque_existential_1Tm(v77);
  return v39;
}

void sub_18F1421AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_76_15();
  OUTLINED_FUNCTION_77_10();
  v17 = v16 + 32;
LABEL_2:
  v18 = v17 + 40 * v15;
  while (1)
  {
    if (v14 == v15)
    {
      goto LABEL_13;
    }

    if (v15 >= v14)
    {
      break;
    }

    if (__OFADD__(v15, 1))
    {
      goto LABEL_15;
    }

    v19 = OUTLINED_FUNCTION_84_7();
    v20 = v13(v19);
    if (v12)
    {

LABEL_13:
      OUTLINED_FUNCTION_75_12();
      return;
    }

    ++v15;
    v18 += 40;
    if (a12)
    {
      MEMORY[0x193ADB260](v20);
      OUTLINED_FUNCTION_81_8();
      if (v21)
      {
        sub_18F521D0C();
      }

      sub_18F521D6C();
      OUTLINED_FUNCTION_80_8();
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

id sub_18F1422A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = sub_18F1427E8();
  sub_18F0FD724(a1, v13);
  (*(v7 + 16))(v9, v3, a2);
  return sub_18F142424(v9, v13, v10, a2, a3);
}

id sub_18F1423A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  result = sub_18F1422A4(a2, v5, v6);
  *a3 = result;
  return result;
}

id sub_18F142424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  __swift_allocate_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_31_0();
  (*(v9 + 32))();
  v10 = (*(a5 + 16))(a4, a5);
  if (v11)
  {
    v32 = v10;
    v33 = a3;
    v12 = v44;
    v13 = v45;
    __swift_project_boxed_opaque_existential_1Tm(v43, v44);
    v30 = *(a5 + 104);
    v29 = *(v13 + 8);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = sub_18F52254C();
    v31 = &v29;
    v16 = *(v15 - 8);
    MEMORY[0x1EEE9AC00](v15);
    v18 = &v29 - v17;
    v34 = a2;
    v30(a2, v12, v13);
    if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
    {
      (*(v16 + 8))(v18, v15);
      AssociatedConformanceWitness = 0;
      v40 = 0u;
      v41 = 0u;
    }

    else
    {
      *(&v41 + 1) = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      __swift_allocate_boxed_opaque_existential_1(&v40);
      OUTLINED_FUNCTION_31_0();
      (*(v20 + 32))(v21);
    }

    v22 = sub_18F5218AC();

    sub_18F0F9FD4(&v40, v35, &qword_1EACD3218);
    v23 = v36;
    if (v36)
    {
      OUTLINED_FUNCTION_1_42(v35);
      sub_18F11E26C();
      v23 = v38;
      if (v38)
      {
        v24 = v39;
        OUTLINED_FUNCTION_1_42(v37);
        v23 = sub_18F142A38(v23, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
LABEL_12:
        v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v19 = [v27 initWithIdentifier:v22 value:{v23, v29}];

        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        sub_18F0FA038(&v40, &qword_1EACD3218);
        goto LABEL_13;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v25 = &qword_1EACD0620;
      v26 = v37;
    }

    else
    {
      v25 = &qword_1EACD3218;
      v26 = v35;
    }

    sub_18F0FA038(v26, v25);
    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  v19 = 0;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  return v19;
}

unint64_t sub_18F1427E8()
{
  result = qword_1ED6FE8F8[0];
  if (!qword_1ED6FE8F8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED6FE8F8);
  }

  return result;
}

uint64_t sub_18F142850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v7 = v2[5];
  v6 = v2[6];
  v8 = *(v2 + 72);
  v10 = v5;
  switch(v8)
  {
    case 1:
      v21 = v3[7];
      v20 = v3[8];

      v7(a1);

      result = sub_18F1009C4(v7, v6, v21, v20, 1u);
      break;
    case 2:

      v7(a1);

      break;
    case 3:
      v16 = v3[4];
      v17 = qword_1ED707718;
      OUTLINED_FUNCTION_37();
      swift_beginAccess();
      sub_18F102F54(v16 + v17, &v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
      v18 = *(v10 + 80);
      v19 = swift_dynamicCast();
      result = __swift_storeEnumTagSinglePayload(a2, v19 ^ 1u, 1, v18);
      break;
    default:
      OUTLINED_FUNCTION_11();

      result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
      break;
  }

  return result;
}

uint64_t sub_18F142A38(uint64_t a1)
{
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2E38);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    v9 = OUTLINED_FUNCTION_4_34();
    v11 = AppEntity.asValue.getter(v9, v10);
LABEL_20:
    v20 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(&v23);
    (*(v4 + 8))(v8, a1);
    return v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3160);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF0);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    v12 = OUTLINED_FUNCTION_4_34();
    v11 = sub_18F143370(v12, v13);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3168);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1D90);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    v14 = OUTLINED_FUNCTION_4_34();
    v11 = sub_18F1E7B40(v14);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3170);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3178);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    v15 = OUTLINED_FUNCTION_4_34();
    v11 = _IntentValueRepresentable.asValue.getter(v15, v16);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3180);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3188), OUTLINED_FUNCTION_2_44(), swift_dynamicCast()))
  {
LABEL_17:
    v17 = OUTLINED_FUNCTION_1_40();
    v11 = v18(v17);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3190);
  OUTLINED_FUNCTION_2_44();
  if (swift_dynamicCast())
  {
    sub_18F14B458(&v25, &v23);
    v19 = v24;
    __swift_project_boxed_opaque_existential_1Tm(&v23, v24);
    v11 = sub_18F23846C(v19);
    goto LABEL_20;
  }

  sub_18F52279C();

  swift_getDynamicType();
  v22 = sub_18F52307C();
  MEMORY[0x193ADB000](v22);

  result = OUTLINED_FUNCTION_21_19();
  __break(1u);
  return result;
}

id sub_18F142E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v22 - v5;
  v7 = type metadata accessor for DisplayRepresentation();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD30A0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(v22, v26);
    v11 = v27;
    v10 = v28;
    __swift_project_boxed_opaque_existential_1Tm(v26, v27);
    (*(*(v10 + 8) + 16))(v11);
    sub_18F13FE10();
    v13 = v12;
    sub_18F11CE30(v9, type metadata accessor for DisplayRepresentation);
    v14 = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_18F0EF1A8(v22, &qword_1EACD30A8);
    String.defaultDisplayRepresentation.getter(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_18F0EF1A8(v6, &qword_1EACD32D0);
      v15 = 0;
    }

    else
    {
      sub_18F13FE10();
      v15 = v16;
      sub_18F11CE30(v6, type metadata accessor for DisplayRepresentation);
    }

    v14 = v15;
  }

  v17 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v26[0] = a1;
  v26[1] = a2;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v18 = sub_18F522E0C();
  v19 = [objc_opt_self() stringValueType];
  v20 = [v17 initWithValue:v18 valueType:v19 displayRepresentation:v14];

  swift_unknownObjectRelease();

  return v20;
}

id sub_18F1430C8(uint64_t a1, uint64_t a2)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  return sub_18F142E0C(a1, a2);
}

uint64_t String.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for DisplayRepresentation();
  v18 = v17[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v9);
  v22 = v17[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  *(a1 + v17[7]) = xmmword_18F540410;
  *(a1 + v17[8]) = 0;
  *(a1 + v17[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v9);
  sub_18F0FF628(v7, a1 + v18, &qword_1EACCF7A8);
  sub_18F0FF628(v4, a1 + v22, &qword_1EACD0270);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v17);
}

id sub_18F143370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v20 - v9;
  sub_18F521C0C();
  swift_getAssociatedConformanceWitness();
  v11 = sub_18F522C9C();
  v13 = v12;
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v20[3] = MEMORY[0x1E69E6158];
  v20[0] = v11;
  v20[1] = v13;
  v14 = sub_18F1435A0(a1, a2);
  sub_18F1436A0(a1, *(*(a2 + 16) + 8));
  v15 = type metadata accessor for DisplayRepresentation();
  if (__swift_getEnumTagSinglePayload(v6, 1, v15) == 1)
  {
    sub_18F1C7564(v6);
    v16 = 0;
  }

  else
  {
    sub_18F13FE10();
    v16 = v17;
    sub_18F14372C(v6);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F141064(v20, v14, v16);
}

id sub_18F1435A0(uint64_t a1, uint64_t a2)
{
  sub_18F14365C();
  static AppValue._identifier.getter(a1, *(a2 + 8));
  return sub_18F1435EC();
}

id sub_18F1435EC()
{
  OUTLINED_FUNCTION_34_22();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_18F5218AC();

  v2 = [v0 initWithEnumerationIdentifier_];

  return v2;
}

unint64_t sub_18F14365C()
{
  result = qword_1ED6FE518[0];
  if (!qword_1ED6FE518[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED6FE518);
  }

  return result;
}

uint64_t sub_18F1436A0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  type metadata accessor for DisplayRepresentation();
  sub_18F52175C();
}

uint64_t sub_18F14372C(uint64_t a1)
{
  v2 = type metadata accessor for DisplayRepresentation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AppEntity.asValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DisplayRepresentation();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_11_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  AppManager.cache<A>(entity:)(v2, a1, a2);

  v16 = sub_18F0F21A8(0, &qword_1ED6FE640);
  (*(v11 + 16))(v15, v3, a1);
  OUTLINED_FUNCTION_26_1();
  v20 = sub_18F141AA0(v17, v18, v19, a2);
  v26[3] = v16;
  v21 = OUTLINED_FUNCTION_16_26(v20);
  (*(*(*(a2 + 16) + 8) + 16))(a1);
  sub_18F13FE10();
  v23 = v22;
  sub_18F14372C(v9);
  v24 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F141064(v26, v21, v23);
}

uint64_t CaseDisplayRepresentable.localizedStringResource.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_9();
  v5 = type metadata accessor for DisplayRepresentation();
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_27_14();
  sub_18F143A1C(a2, v7);
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  (*(v8 + 16))(v2, v3);
  return sub_18F14372C(v3);
}

uint64_t sub_18F143A1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v6 = OUTLINED_FUNCTION_10(v5);
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_27_14();
  sub_18F1436A0(v7, a1);
  v8 = type metadata accessor for DisplayRepresentation();
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) != 1)
  {
    return sub_18F143B8C(v2, a2);
  }

  sub_18F1C7564(v2);
  sub_18F52279C();
  MEMORY[0x193ADB000](0xD000000000000047, 0x800000018F5269F0);
  sub_18F522D1C();
  MEMORY[0x193ADB000](0x746F6E2073617720, 0xEF2E646E756F6620);
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

uint64_t sub_18F143B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayRepresentation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DisplayRepresentation.Image.init(data:isTemplate:)()
{
  OUTLINED_FUNCTION_37_32();
  v2 = sub_18F520D2C();
  v3 = OUTLINED_FUNCTION_53();
  sub_18F123A1C(v3, v4);
  *v1 = v2;
  *(v1 + 8) = v0;
  *(v1 + 9) = 1;
  OUTLINED_FUNCTION_5_85();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18F143C5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a6;
  v48 = a4;
  v49 = a5;
  v47 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  v14 = sub_18F520B3C();
  v54 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  sub_18F0FD724(a2, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF0);
  if (swift_dynamicCast())
  {
    v23 = &unk_1EACD3F20;
    v24 = v55;
    return sub_18F0EF1A8(v24, v23);
  }

  v46 = a1;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  sub_18F0EF1A8(v55, &unk_1EACD3F20);
  type metadata accessor for DynamicOptionsResult.Item(0);
  sub_18F0EF200();
  v25 = type metadata accessor for DisplayRepresentation();
  if (__swift_getEnumTagSinglePayload(v13, 1, v25) == 1)
  {
    v23 = &qword_1EACD32D0;
    v24 = v13;
    return sub_18F0EF1A8(v24, v23);
  }

  v45 = v22;
  v27 = v54;
  v52 = *(v54 + 16);
  v53 = v54 + 16;
  v52(v20, v13, v14);
  sub_18F141358(v13, type metadata accessor for DisplayRepresentation);
  v28 = v27;
  v29 = v45;
  (*(v28 + 32))(v45, v20, v14);
  v44 = sub_18F117248();
  v30 = a2[3];
  __swift_project_boxed_opaque_existential_1Tm(a2, v30);
  v31 = sub_18F142A38(v30);
  sub_18F0EF200();
  if (__swift_getEnumTagSinglePayload(v11, 1, v25) == 1)
  {
    sub_18F0EF1A8(v11, &qword_1EACD32D0);
    goto LABEL_15;
  }

  v32 = *&v11[*(v25 + 36)];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F141358(v11, type metadata accessor for DisplayRepresentation);
  v33 = *(v32 + 16);
  if (!v33)
  {

LABEL_15:
    v37 = v44;
LABEL_16:
    v38 = v31;
    v39 = v37;
    v40 = [v39 localizedStringForLocaleIdentifier_];
    sub_18F5218DC();

    objc_allocWithZone(MEMORY[0x1E69ACD68]);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v41 = sub_18F1442B4(v38, v39);
    sub_18F1443D4(v57, v41);

    return (*(v54 + 8))(v29, v14);
  }

  v43 = v31;
  *&v55[0] = MEMORY[0x1E69E7CC0];
  sub_18F5228CC();
  v34 = 0;
  v51 = v32 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
  v35 = (v54 + 8);
  while (v34 < *(v32 + 16))
  {
    v52(v17, (v51 + *(v54 + 72) * v34), v14);
    sub_18F520AAC();
    sub_18F0F21A8(0, &qword_1ED6FEEC0);
    if (!swift_dynamicCast())
    {
      goto LABEL_19;
    }

    ++v34;
    v36 = v58;
    [objc_allocWithZone(MEMORY[0x1E69AC9E8]) initWithLocalizedStringResource_];

    (*v35)(v17, v14);
    sub_18F52289C();
    sub_18F5228DC();
    sub_18F5228EC();
    sub_18F5228AC();
    if (v33 == v34)
    {

      v29 = v45;
      v37 = v44;
      v31 = v43;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_18F522A3C();
  __break(1u);
  return result;
}

id sub_18F1442B4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_18F5218AC();

  v7 = sub_18F5218AC();

  v8 = sub_18F5218AC();

  sub_18F0F21A8(0, &qword_1ED6FEFA8);
  v9 = sub_18F521C8C();

  v10 = [v3 initWithValue:a1 propertyTitle:a2 propertyTitleKey:v6 providerClassName:v7 parameterTypeIdentifier:v8 synonyms:v9];

  return v10;
}

uint64_t sub_18F1443D4(void *a1, void *a2)
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
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v9 = sub_18F5226BC();

    if (v9)
    {

      sub_18F0F21A8(0, qword_1ED6FBD60);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_18F5226AC();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v17 = sub_18F2C9FC4(v7, result + 1);
        if (*(v17 + 24) <= *(v17 + 16))
        {
          sub_18F1453AC();
        }

        v18 = v8;
        sub_18F2CB24C(v18, v17);

        *v3 = v17;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_18F0F21A8(0, qword_1ED6FBD60);
    sub_18F52242C();
    OUTLINED_FUNCTION_56_6();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v6 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_18F1445F4(v18, v14, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v15 = *(*(v6 + 48) + 8 * v14);
      v16 = sub_18F52243C();

      if (v16)
      {
        break;
      }

      v11 = v14 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v14);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_18F1445F4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_18F1453AC();
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_18F145938();
LABEL_8:
      v8 = *v3;
      result = sub_18F52242C();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_18F0F21A8(0, qword_1ED6FBD60);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_18F52243C();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_18F2CC76C();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_18F522E1C();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

uint64_t sub_18F144758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_39_0();
  v15 = **(v14 + 400);
  *(v14 + 272) = MEMORY[0x1E69E7CD0];
  v16 = *(v14 + 488);
  result = swift_bridgeObjectRetain_n();
  v77 = v15;
  v78 = 0;
  do
  {
LABEL_9:
    v33 = *(v15 + 16);
    if (v78 == v33)
    {
      v34 = 1;
    }

    else
    {
      if (v78 >= v33)
      {
LABEL_40:
        __break(1u);
        return result;
      }

      OUTLINED_FUNCTION_11_10();
      sub_18F141408();
      v34 = 0;
      ++v78;
    }

    v35 = *(v14 + 368);
    v24 = *(v14 + 344);
    __swift_storeEnumTagSinglePayload(*(v14 + 376), v34, 1, v24);
    OUTLINED_FUNCTION_43_1();
    sub_18F144EA0();
    if (__swift_getEnumTagSinglePayload(v35, 1, v24) == 1)
    {
      v75 = *(v14 + 392);
      v76 = *(v14 + 320);

      swift_bridgeObjectRelease_n();
      __swift_storeEnumTagSinglePayload(v75, 1, 1, v76);
LABEL_17:
      v41 = *(v14 + 424);
      v42 = *(v14 + 400);

      v43 = *(v14 + 272);
      *(v14 + 280) = v43;
      *(v14 + 288) = v41;
      sub_18F52172C();

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      sub_18F52176C();
      sub_18F145758(v43);

      OUTLINED_FUNCTION_9_11();
      sub_18F141358(v42, v44);
      OUTLINED_FUNCTION_34_7();
      while (*(v14 + 248) != sub_18F521D7C())
      {
        v45 = *(v14 + 416);
        sub_18F521D4C();
        OUTLINED_FUNCTION_30_7();
        if (v24)
        {
          OUTLINED_FUNCTION_40_5();
        }

        else
        {
          v45 = sub_18F52281C();
        }

        *(v14 + 424) = v45;
        sub_18F521DAC();
        OUTLINED_FUNCTION_22();
        swift_getAtPartialKeyPath();
        v46 = OUTLINED_FUNCTION_43_1();
        __swift_instantiateConcreteTypeFromMangledNameV2(v46);
        if (swift_dynamicCast())
        {
          sub_18F0FD0B4((v14 + 56), v14 + 16);
          v47 = *(v14 + 40);
          v24 = *(v14 + 48);
          __swift_project_boxed_opaque_existential_1Tm((v14 + 16), v47);
          (*(v24 + 16))(v47, v24);
          if (*(v14 + 160))
          {
            sub_18F0FD0B4((v14 + 136), v14 + 96);
            *(v14 + 264) = v45;

            *(v14 + 432) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F28);
            sub_18F52175C();

            v48 = *(v14 + 256);
            if (!v48)
            {
              v59 = OUTLINED_FUNCTION_13_8((v14 + 96));
              OUTLINED_FUNCTION_38_4(v59);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0F30);
              OUTLINED_FUNCTION_29_13();
              *(v14 + 440) = sub_18F52194C();
              *(v14 + 448) = v60;
              __swift_project_boxed_opaque_existential_1Tm((v14 + 16), *(v14 + 40));
              v61 = OUTLINED_FUNCTION_28_14();
              *(v14 + 224) = v62(v61);
              *(v14 + 232) = v63;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530);
              OUTLINED_FUNCTION_29_13();
              *(v14 + 456) = sub_18F52194C();
              *(v14 + 464) = v64;
              __swift_project_boxed_opaque_existential_1Tm((v14 + 96), *(v14 + 120));
              OUTLINED_FUNCTION_5_19();
              *(v14 + 472) = OUTLINED_FUNCTION_34_0();
              OUTLINED_FUNCTION_26_6();
              v65();
              swift_task_alloc();
              OUTLINED_FUNCTION_25();
              *(v14 + 480) = v66;
              *v66 = v67;
              v66[1] = sub_18F1B8E4C;
              OUTLINED_FUNCTION_3_15();
              OUTLINED_FUNCTION_20();

              return sub_18F13F0C4(v68, v69, v70, v71, v72, v73);
            }

            sub_18F145758(v48);

            __swift_destroy_boxed_opaque_existential_1Tm(v14 + 96);
          }

          else
          {

            sub_18F0EF1A8(v14 + 136, &qword_1EACD0D98);
          }

          __swift_destroy_boxed_opaque_existential_1Tm(v14 + 16);
        }

        else
        {

          OUTLINED_FUNCTION_32_3();
          sub_18F0EF1A8(v14 + 56, &qword_1EACD0F20);
        }
      }

      OUTLINED_FUNCTION_42_5();

      OUTLINED_FUNCTION_12_7();
      OUTLINED_FUNCTION_20();

      return v53(v51, v52, v53, v54, v55, v56, v57, v58, v77, v78, a11, a12, a13, a14);
    }

    v36 = *(v14 + 360);
    v37 = *(v14 + 344);
    sub_18F1414B8();
    v38 = *(v36 + *(v37 + 20));
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_10_14();
    sub_18F141358(v36, v39);

    v40 = v38;
  }

  while (!v38);
  for (i = 0; ; ++i)
  {
    v19 = *(v40 + 16);
    if (i == v19)
    {
      v32 = *(v14 + 384);
      __swift_storeEnumTagSinglePayload(v32, 1, 1, *(v14 + 320));
      result = sub_18F0EF1A8(v32, &qword_1EACD0F18);
      v15 = v77;
      goto LABEL_9;
    }

    if (i >= v19)
    {
      __break(1u);
      goto LABEL_40;
    }

    v20 = *(v14 + 384);
    v21 = *(v14 + 392);
    v22 = *(v14 + 320);
    OUTLINED_FUNCTION_13_15();
    sub_18F141408();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
    sub_18F144EA0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
    v24 = *(v14 + 464);
    if (EnumTagSinglePayload == 1)
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_17;
    }

    v26 = *(v14 + 448);
    v25 = *(v14 + 456);
    v27 = *(v14 + 440);
    v28 = *(v14 + 336);
    sub_18F1414B8();
    v29 = v25;
    v30 = v16;
    sub_18F143C5C(v14 + 272, v28, v27, v26, v29, v24);
    v31 = *(v14 + 336);
    if (v30)
    {
      break;
    }

    result = sub_18F141358(*(v14 + 336), type metadata accessor for DynamicOptionsResult.Item);
    v16 = 0;
  }

  OUTLINED_FUNCTION_0_21();
  sub_18F141358(v31, v49);

  OUTLINED_FUNCTION_20();
}

uint64_t sub_18F144EA0()
{
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_10_0();
  v2 = OUTLINED_FUNCTION_56();
  v3(v2);
  return v0;
}

void sub_18F144F0C()
{
  OUTLINED_FUNCTION_18_21();
  if (v2)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
    v3 = OUTLINED_FUNCTION_5_33();

    __swift_storeEnumTagSinglePayload(v3, v4, v0, v5);
  }
}

uint64_t sub_18F144F98(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_6_33(*(a1 + 24));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  v3 = OUTLINED_FUNCTION_5_33();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

uint64_t sub_18F145018(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = *(v9 + 8);
  v12 = static AppValue._identifier.getter(v11, v10);
  v23 = a1;
  v14 = sub_18F14530C(v12, v13, *a1);

  if (v14)
  {
    return sub_18F0F689C(v14);
  }

  v16 = v22;
  v17 = v24;
  sub_18F11D980(nullsub_1, 0, a3);
  v24 = v17;
  static AppValue._identifier.getter(a3, v10);
  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, a3);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v7 + 32))(v19 + v18, &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v20 = v23;
  swift_isUniquelyReferenced_nonNull_native();
  v25 = *v20;
  sub_18F2C0C20();

  *v20 = v25;
  return result;
}

uint64_t sub_18F145228()
{
  OUTLINED_FUNCTION_31_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void AppManager.cache<A>(entity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_16_46();
  os_unfair_lock_lock((v3 + 224));
  sub_18F145018((v3 + 232), v5, v4, a3);

  os_unfair_lock_unlock((v3 + 224));
}

uint64_t sub_18F14530C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_18F0F713C(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_23(v3);
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }

  return OUTLINED_FUNCTION_56();
}

uint64_t sub_18F1453AC()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B50);
  result = sub_18F52274C();
  v4 = result;
  if (!*(v2 + 16))
  {
LABEL_27:

    *v1 = v4;
    return result;
  }

  v5 = 0;
  v6 = (v2 + 56);
  v7 = 1 << *(v2 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = result + 56;
  if (!v9)
  {
LABEL_7:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = v6[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      sub_18F128DD4(0, (v24 + 63) >> 6, v2 + 56);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
    result = sub_18F52242C();
    v16 = -1 << *(v4 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    *(*(v4 + 48) + 8 * v19) = v15;
    ++*(v4 + 16);
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  v20 = 0;
  v21 = (63 - v16) >> 6;
  while (++v18 != v21 || (v20 & 1) == 0)
  {
    v22 = v18 == v21;
    if (v18 == v21)
    {
      v18 = 0;
    }

    v20 |= v22;
    v23 = *(v11 + 8 * v18);
    if (v23 != -1)
    {
      v19 = __clz(__rbit64(~v23)) + (v18 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_18F1455E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18F1456AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_6_33(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_18F145758(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_18F52269C();
    sub_18F0F21A8(0, qword_1ED6FBD60);
    sub_18F3C86AC();
    sub_18F52205C();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_18F125D0C();
      return;
    }

    while (1)
    {
      sub_18F1443D4(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18F5226CC())
      {
        sub_18F0F21A8(0, qword_1ED6FBD60);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_18F145938()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4B50);
  result = sub_18F52274C();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_12:
        v14 = *(*(v2 + 48) + 8 * (v11 | (v5 << 6)));
        result = sub_18F52242C();
        v15 = -1 << *(v4 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v10 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v10 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v10 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        *(*(v4 + 48) + 8 * v18) = v14;
        ++*(v4 + 16);
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v10 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {

          v1 = v23;
          goto LABEL_25;
        }

        v13 = *(v2 + 56 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_18F145B48()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_18F2290C0;
  }

  else
  {
    v2 = sub_18F145C5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18F145C5C()
{
  OUTLINED_FUNCTION_25_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD2F78);
  sub_18F521DBC();
  if (OUTLINED_FUNCTION_16_20())
  {
    sub_18F145E84();

LABEL_5:
    OUTLINED_FUNCTION_24_18();
    sub_18F521DBC();
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_7_24();

    v7 = v0[34];
    v0[35] = v7;
    v8 = swift_task_alloc();
    OUTLINED_FUNCTION_9_22(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45);
    type metadata accessor for DynamicOptionsResult.Section(0);
    v16 = OUTLINED_FUNCTION_2_41();
    v17 = OUTLINED_FUNCTION_1_38(v16);
    OUTLINED_FUNCTION_0_45(v17, v18, v19, v20, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v21);

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_22_19();
  v3 = OUTLINED_FUNCTION_14_25();
  v4 = v0[51];
  if (v3)
  {
    OUTLINED_FUNCTION_11_22();
    v6 = *(v5 + 8);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v6(v4, v1);
    goto LABEL_5;
  }

  v7 = v0[49];
  v22 = v0[50];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  (*(v22 + 8))(v4, v7);
LABEL_7:
  v27 = OUTLINED_FUNCTION_4_32();
  v28(v27);
  sub_18F0FF690(v7, v2 + v1, &qword_1EACCF7A8);
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v29 = OUTLINED_FUNCTION_10_24();
  v30(v29);
  v31 = OUTLINED_FUNCTION_21_16();
  v33 = v32(v31);
  OUTLINED_FUNCTION_20_16(v33, v34, v35, v36, v37, v38, v39, v40, v43);

  OUTLINED_FUNCTION_71();

  return v41();
}

uint64_t sub_18F145E84()
{
  type metadata accessor for IntentItemSection();
  sub_18F522CAC();
  swift_allocObject();
  v0 = sub_18F521CDC();
  v2 = v1;
  sub_18F521DBC();
  v3 = type metadata accessor for IntentItem();
  swift_getWitnessTable();
  v4 = OUTLINED_FUNCTION_0_111();
  v11 = sub_18F10C138(v4, v5, v6, v3, v7, v8, v9, v10);
  IntentItemSection.init(items:)(v11, v2);
  return sub_18F129FD4(v0);
}

uint64_t AppDependencyManager.add<A>(key:dependency:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = a2();
  v8 = v7;
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = v6;
  v9[4] = v8;
  _s10AppIntents0A17DependencyManagerC3add3key10dependencyys11AnyHashableVSg_xyYaKcts8SendableRzlF_0(a1, &unk_18F55B390, v9, a4);
}

id sub_18F14619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = sub_18F5218AC();

  v11 = sub_18F5218AC();

  v12 = sub_18F5218AC();

  v13 = [a8 URLForResource:v10 withExtension:v11 subdirectory:v12 inBundleWithURL:a7];

  return v13;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AppManager.register(_:forBundleIdentifier:)(NSBundle _, Swift::String forBundleIdentifier)
{
  v43 = forBundleIdentifier;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_3();
  v41 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v35 - v6;
  v7 = sub_18F520C8C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v44 = &v35 - v18;
  v19 = objc_opt_self();
  isa = _.super.isa;
  v20 = [(objc_class *)_.super.isa bundleURL];
  sub_18F520C3C();

  v21 = sub_18F520BEC();
  v38 = *(v8 + 8);
  v38(v17, v7);
  v22 = sub_18F14619C(0x74636172747865, 0xE700000000000000, 0x64736E6F69746361, 0xEB00000000617461, 0xD000000000000013, 0x800000018F52AC30, v21, v19);

  if (v22)
  {
    sub_18F520C3C();

    v23 = v44;
    (*(v8 + 32))(v44, v14, v7);
    v37 = sub_18F146748();
    v24 = *(v8 + 16);
    v24(v10, v23, v7);
    v25 = v40;
    v24(v40, v23, v7);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v7);
    object = v43._object;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v27 = [(objc_class *)isa bundleURL];
    v28 = v41;
    sub_18F520C3C();

    __swift_storeEnumTagSinglePayload(v28, 0, 1, v7);
    v29 = objc_allocWithZone(MEMORY[0x1E69AC7B0]);
    sub_18F146668(0, v43._countAndFlagsBits, object, v28);
    v30 = v42;
    v31 = sub_18F5222EC();
    if (!v30)
    {
      v32 = v31;
      v33 = v36;
      os_unfair_lock_lock(v36 + 32);
      sub_18F14678C(v32);
      os_unfair_lock_unlock(v33 + 32);
    }

    v38(v44, v7);
  }

  else
  {
    sub_18F16A9C8();
    swift_allocError();
    *v34 = xmmword_18F540420;
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    swift_willThrow();
  }
}

id sub_18F146668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_18F5218AC();

  v9 = sub_18F520C8C();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a4, 1, v9) != 1)
  {
    v10 = sub_18F520BEC();
    (*(*(v9 - 8) + 8))(a4, v9);
  }

  v11 = [v5 initWithType:a1 bundleIdentifier:v8 url:v10];

  return v11;
}

unint64_t sub_18F146748()
{
  result = qword_1ED6FE650;
  if (!qword_1ED6FE650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED6FE650);
  }

  return result;
}

uint64_t sub_18F14678C(void *a1)
{
  v5 = v1;
  v356 = a1;
  if (qword_1ED6FED58 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v6 = sub_18F52165C();
    __swift_project_value_buffer(v6, qword_1ED707790);
    v7 = sub_18F52163C();
    v8 = sub_18F52223C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_18F0E9000, v7, v8, "Registering AppManager tables from static metadata bundle.", v9, 2u);
      MEMORY[0x193ADD350](v9, -1, -1);
    }

    v10 = [v356 actions];
    sub_18F0F21A8(0, &qword_1ED6FE720);
    v11 = sub_18F5216BC();

    v12 = 0;
    v13 = v11 + 64;
    OUTLINED_FUNCTION_13_38();
    v16 = v15 & v14;
    v18 = ((v17 + 63) >> 6);
    *&v19 = 136446210;
    v347 = v19;
    v365 = v5;
    v312 = v18;
    v321 = v11;
    if ((v15 & v14) == 0)
    {
      break;
    }

    while (1)
    {
LABEL_9:
      OUTLINED_FUNCTION_28_41(__rbit64(v16));
      OUTLINED_FUNCTION_62_10();
      if ((sub_18F147470() & 1) == 0)
      {
        goto LABEL_32;
      }

      v21 = v2;
      v22 = OUTLINED_FUNCTION_85_8();
      v23 = sub_18F52223C();

      v335 = v2;
      if (OUTLINED_FUNCTION_80_6())
      {
        OUTLINED_FUNCTION_126();
        v24 = OUTLINED_FUNCTION_48_11();
        v33 = [isUniquelyReferenced_nonNull_native identifier];
        OUTLINED_FUNCTION_78_7();
        OUTLINED_FUNCTION_77_8();
        OUTLINED_FUNCTION_44_15(v34, v35, v36, v37, v38, v39, v40, v41, v313, v322, v331, v336, v347);
        OUTLINED_FUNCTION_50_9();
        OUTLINED_FUNCTION_40_20();
        OUTLINED_FUNCTION_95_0(&dword_18F0E9000, v22, v42, "Discovered AppIntent: %{public}s");
        OUTLINED_FUNCTION_39_21();
        OUTLINED_FUNCTION_24_3();
      }

      v43 = sub_18F5218AC();
      v18 = OUTLINED_FUNCTION_84_5(v43, sel_mangledTypeNameForBundleIdentifier_);

      sub_18F5218DC();
      OUTLINED_FUNCTION_83_8();
      OUTLINED_FUNCTION_33_26();
      v357 = isUniquelyReferenced_nonNull_native;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_41_18();
      v5[7] = v44;
      OUTLINED_FUNCTION_54_14();
      OUTLINED_FUNCTION_2_5();
      v5 = (v45 + v46);
      if (__OFADD__(v45, v46))
      {
        break;
      }

      OUTLINED_FUNCTION_69_8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47D0);
      v47 = OUTLINED_FUNCTION_30_29();
      if (v47)
      {
        OUTLINED_FUNCTION_48_16();
        OUTLINED_FUNCTION_14_5();
        v5 = v365;
        if (!v55)
        {
          goto LABEL_150;
        }

        v18 = v47;
      }

      else
      {
        v5 = v365;
      }

      if (v2)
      {
        OUTLINED_FUNCTION_25_31(v47, v48, v49, v50, v51, v52, v53, v54, v312, v321, v330, v335, v347, *(&v347 + 1), v356, v357);
      }

      else
      {
        OUTLINED_FUNCTION_0_96();
        *v56 = v23;
        v56[1] = v4;
        OUTLINED_FUNCTION_4_61(v57, v58, v59, v60, v61, v62, v63, v64, v312, v321, v330, v335, v347, *(&v347 + 1), v356, v357);
        if (v66)
        {
          goto LABEL_141;
        }

        OUTLINED_FUNCTION_68_12(v65);
      }

      v5[7] = v366;
      swift_endAccess();
      v67 = [v18 identifier];
      sub_18F5218DC();
      OUTLINED_FUNCTION_76_11();
      OUTLINED_FUNCTION_33_26();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_41_18();
      v5[7] = v68;
      OUTLINED_FUNCTION_53_11();
      v2 = v69;
      OUTLINED_FUNCTION_2_5();
      if (__OFADD__(v70, v71))
      {
        goto LABEL_134;
      }

      v72 = OUTLINED_FUNCTION_37_25();
      if (v72)
      {
        OUTLINED_FUNCTION_47_17();
        OUTLINED_FUNCTION_14_5();
        if (!v55)
        {
          goto LABEL_150;
        }

        v18 = v72;
      }

      if (v2)
      {
        OUTLINED_FUNCTION_29_33(v72, v73, v74, v75, v76, v77, v78, v79, v314, v323, v330, v337, v348, v352, v356, v358);
      }

      else
      {
        OUTLINED_FUNCTION_0_96();
        *v80 = v4;
        v80[1] = v23;
        OUTLINED_FUNCTION_4_61(v81, v82, v83, v84, v85, v86, v87, v88, v314, v323, v330, v337, v348, v352, v356, v358);
        if (v66)
        {
          goto LABEL_142;
        }

        *(v366 + 16) = v89;
      }

      v5[7] = v366;
      swift_endAccess();
      OUTLINED_FUNCTION_64_8();
LABEL_32:
      v16 &= v16 - 1;

      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
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
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
LABEL_147:
    swift_once();
  }

  while (1)
  {
LABEL_5:
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v20 >= v18)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v12;
    if (v16)
    {
      v12 = v20;
      goto LABEL_9;
    }
  }

  v90 = [v356 entities];
  sub_18F0F21A8(0, &unk_1ED6FE480);
  v91 = sub_18F5216BC();

  v92 = 0;
  v93 = (v91 + 64);
  OUTLINED_FUNCTION_13_38();
  OUTLINED_FUNCTION_38_21();
  if (v13)
  {
    goto LABEL_39;
  }

  while (1)
  {
LABEL_35:
    v94 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      goto LABEL_130;
    }

    if (v94 >= v16)
    {
      break;
    }

    v13 = v93[v94];
    ++v92;
    if (v13)
    {
      v92 = v94;
      while (1)
      {
LABEL_39:
        OUTLINED_FUNCTION_28_41(__rbit64(v13));
        OUTLINED_FUNCTION_62_10();
        if (sub_18F1476E8())
        {
          v95 = v2;
          v96 = OUTLINED_FUNCTION_85_8();
          v97 = sub_18F52223C();

          v338 = v2;
          if (OUTLINED_FUNCTION_80_6())
          {
            OUTLINED_FUNCTION_126();
            v98 = OUTLINED_FUNCTION_48_11();
            v107 = [isUniquelyReferenced_nonNull_native identifier];
            OUTLINED_FUNCTION_78_7();
            OUTLINED_FUNCTION_77_8();
            OUTLINED_FUNCTION_44_15(v108, v109, v110, v111, v112, v113, v114, v115, v315, v324, v332, v339, v347);
            OUTLINED_FUNCTION_50_9();
            OUTLINED_FUNCTION_40_20();
            OUTLINED_FUNCTION_95_0(&dword_18F0E9000, v96, v116, "Discovered AppEntity: %{public}s");
            OUTLINED_FUNCTION_39_21();
            OUTLINED_FUNCTION_24_3();
          }

          v117 = sub_18F5218AC();
          v93 = OUTLINED_FUNCTION_84_5(v117, sel_mangledTypeNameForBundleIdentifier_);

          sub_18F5218DC();
          OUTLINED_FUNCTION_83_8();
          OUTLINED_FUNCTION_33_26();
          v359 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_41_18();
          v5[3] = v118;
          OUTLINED_FUNCTION_54_14();
          OUTLINED_FUNCTION_2_5();
          v5 = (v119 + v120);
          if (__OFADD__(v119, v120))
          {
            goto LABEL_135;
          }

          OUTLINED_FUNCTION_69_8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4850);
          v121 = OUTLINED_FUNCTION_30_29();
          if (v121)
          {
            OUTLINED_FUNCTION_48_16();
            OUTLINED_FUNCTION_14_5();
            v5 = v365;
            if (!v55)
            {
              goto LABEL_150;
            }

            v93 = v121;
          }

          else
          {
            v5 = v365;
          }

          if (v2)
          {
            OUTLINED_FUNCTION_25_31(v121, v122, v123, v124, v125, v126, v127, v128, v312, v321, v330, v338, v347, *(&v347 + 1), v356, v359);
          }

          else
          {
            OUTLINED_FUNCTION_0_96();
            *v129 = v97;
            v129[1] = v4;
            OUTLINED_FUNCTION_4_61(v130, v131, v132, v133, v134, v135, v136, v137, v312, v321, v330, v338, v347, *(&v347 + 1), v356, v359);
            if (v66)
            {
              goto LABEL_143;
            }

            OUTLINED_FUNCTION_68_12(v138);
          }

          v5[3] = v366;
          swift_endAccess();
          v139 = [v93 identifier];
          sub_18F5218DC();
          OUTLINED_FUNCTION_76_11();
          OUTLINED_FUNCTION_33_26();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_41_18();
          v5[3] = v140;
          OUTLINED_FUNCTION_53_11();
          v2 = v141;
          OUTLINED_FUNCTION_2_5();
          if (__OFADD__(v142, v143))
          {
            goto LABEL_136;
          }

          v144 = OUTLINED_FUNCTION_37_25();
          if (v144)
          {
            OUTLINED_FUNCTION_47_17();
            OUTLINED_FUNCTION_14_5();
            if (!v55)
            {
              goto LABEL_150;
            }

            v93 = v144;
          }

          if (v2)
          {
            OUTLINED_FUNCTION_29_33(v144, v145, v146, v147, v148, v149, v150, v151, v316, v325, v330, v340, v349, v353, v356, v360);
          }

          else
          {
            OUTLINED_FUNCTION_0_96();
            *v152 = v4;
            v152[1] = v97;
            OUTLINED_FUNCTION_4_61(v153, v154, v155, v156, v157, v158, v159, v160, v316, v325, v330, v340, v349, v353, v356, v360);
            if (v66)
            {
              goto LABEL_144;
            }

            *(v366 + 16) = v161;
          }

          v5[3] = v366;
          swift_endAccess();
          OUTLINED_FUNCTION_64_8();
        }

        v13 &= v13 - 1;

        if (!v13)
        {
          goto LABEL_35;
        }
      }
    }
  }

  v162 = [v356 enums];
  sub_18F0F21A8(0, qword_1ED6FE490);
  v163 = sub_18F5216BC();

  v164 = 0;
  v165 = (v163 + 64);
  OUTLINED_FUNCTION_13_38();
  OUTLINED_FUNCTION_38_21();
  while (1)
  {
LABEL_65:
    v166 = v164 + 1;
    if (__OFADD__(v164, 1))
    {
      goto LABEL_131;
    }

    if (v166 >= v16)
    {
      break;
    }

    v167 = v165[v166];
    ++v164;
    if (v167)
    {
      v164 = v166;
      while (1)
      {
        OUTLINED_FUNCTION_28_41(__rbit64(v167));
        OUTLINED_FUNCTION_62_10();
        if (sub_18F147470())
        {
          v168 = v2;
          v169 = OUTLINED_FUNCTION_85_8();
          v170 = sub_18F52223C();

          v341 = v2;
          if (OUTLINED_FUNCTION_80_6())
          {
            OUTLINED_FUNCTION_126();
            v171 = OUTLINED_FUNCTION_48_11();
            v180 = [isUniquelyReferenced_nonNull_native identifier];
            OUTLINED_FUNCTION_78_7();
            OUTLINED_FUNCTION_77_8();
            OUTLINED_FUNCTION_44_15(v181, v182, v183, v184, v185, v186, v187, v188, v317, v326, v333, v342, v347);
            OUTLINED_FUNCTION_50_9();
            OUTLINED_FUNCTION_40_20();
            OUTLINED_FUNCTION_95_0(&dword_18F0E9000, v169, v189, "Discovered AppEnum: %{public}s");
            OUTLINED_FUNCTION_39_21();
            OUTLINED_FUNCTION_24_3();
          }

          v190 = sub_18F5218AC();
          v165 = OUTLINED_FUNCTION_84_5(v190, sel_mangledTypeNameForBundleIdentifier_);

          sub_18F5218DC();
          OUTLINED_FUNCTION_83_8();
          OUTLINED_FUNCTION_33_26();
          v361 = isUniquelyReferenced_nonNull_native;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_41_18();
          v5[5] = v191;
          OUTLINED_FUNCTION_54_14();
          OUTLINED_FUNCTION_2_5();
          v5 = (v192 + v193);
          if (__OFADD__(v192, v193))
          {
            goto LABEL_137;
          }

          OUTLINED_FUNCTION_69_8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47C0);
          v194 = OUTLINED_FUNCTION_30_29();
          if (v194)
          {
            OUTLINED_FUNCTION_48_16();
            OUTLINED_FUNCTION_14_5();
            v5 = v365;
            if (!v55)
            {
              goto LABEL_150;
            }

            v165 = v194;
          }

          else
          {
            v5 = v365;
          }

          if (v2)
          {
            OUTLINED_FUNCTION_25_31(v194, v195, v196, v197, v198, v199, v200, v201, v312, v321, v330, v341, v347, *(&v347 + 1), v356, v361);
          }

          else
          {
            OUTLINED_FUNCTION_0_96();
            *v202 = v170;
            v202[1] = v4;
            OUTLINED_FUNCTION_4_61(v203, v204, v205, v206, v207, v208, v209, v210, v312, v321, v330, v341, v347, *(&v347 + 1), v356, v361);
            if (v66)
            {
              goto LABEL_145;
            }

            OUTLINED_FUNCTION_68_12(v211);
          }

          v5[5] = v366;
          swift_endAccess();
          v212 = [v165 identifier];
          sub_18F5218DC();
          OUTLINED_FUNCTION_76_11();
          OUTLINED_FUNCTION_33_26();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_41_18();
          v5[5] = v213;
          OUTLINED_FUNCTION_53_11();
          v2 = v214;
          OUTLINED_FUNCTION_2_5();
          if (__OFADD__(v215, v216))
          {
            goto LABEL_138;
          }

          v217 = OUTLINED_FUNCTION_37_25();
          if (v217)
          {
            OUTLINED_FUNCTION_47_17();
            OUTLINED_FUNCTION_14_5();
            if (!v55)
            {
              goto LABEL_150;
            }

            v165 = v217;
          }

          if (v2)
          {
            OUTLINED_FUNCTION_29_33(v217, v218, v219, v220, v221, v222, v223, v224, v318, v327, v330, v343, v350, v354, v356, v362);
          }

          else
          {
            OUTLINED_FUNCTION_0_96();
            *v225 = v4;
            v225[1] = v170;
            OUTLINED_FUNCTION_4_61(v226, v227, v228, v229, v230, v231, v232, v233, v318, v327, v330, v343, v350, v354, v356, v362);
            if (v66)
            {
              goto LABEL_146;
            }

            *(v366 + 16) = v234;
          }

          v5[5] = v366;
          swift_endAccess();
          OUTLINED_FUNCTION_64_8();
        }

        v167 &= v167 - 1;

        if (!v167)
        {
          goto LABEL_65;
        }
      }
    }
  }

  v235 = [v356 queries];
  sub_18F0F21A8(0, &qword_1ED6FE8F0);
  v236 = sub_18F5216BC();

  v237 = 0;
  v238 = (v236 + 64);
  OUTLINED_FUNCTION_13_38();
  OUTLINED_FUNCTION_38_21();
  do
  {
LABEL_95:
    v239 = v237 + 1;
    if (__OFADD__(v237, 1))
    {
      goto LABEL_132;
    }

    if (v239 >= v16)
    {

      result = sub_18F147684(v356);
      if (v309)
      {
        v310 = sub_18F5227BC();

        if (v310)
        {
          result = dynamic_cast_existential_1_conditional(v310);
          if (result)
          {
            v5[10] = result;
            v5[11] = v311;
          }
        }
      }

      return result;
    }

    v240 = v238[v239];
    ++v237;
  }

  while (!v240);
  v237 = v239;
  while (2)
  {
    OUTLINED_FUNCTION_28_41(__rbit64(v240));
    OUTLINED_FUNCTION_62_10();
    if ((sub_18F147470() & 1) == 0)
    {
      goto LABEL_122;
    }

    v241 = v2;
    v242 = OUTLINED_FUNCTION_85_8();
    v243 = sub_18F52223C();

    v344 = v2;
    if (OUTLINED_FUNCTION_80_6())
    {
      OUTLINED_FUNCTION_126();
      v244 = OUTLINED_FUNCTION_48_11();
      v253 = [isUniquelyReferenced_nonNull_native identifier];
      OUTLINED_FUNCTION_78_7();
      OUTLINED_FUNCTION_77_8();
      OUTLINED_FUNCTION_44_15(v254, v255, v256, v257, v258, v259, v260, v261, v319, v328, v334, v345, v347);
      OUTLINED_FUNCTION_50_9();
      OUTLINED_FUNCTION_40_20();
      OUTLINED_FUNCTION_95_0(&dword_18F0E9000, v242, v262, "Discovered EntityQuery: %{public}s");
      OUTLINED_FUNCTION_39_21();
      OUTLINED_FUNCTION_24_3();
    }

    v263 = sub_18F5218AC();
    v238 = OUTLINED_FUNCTION_84_5(v263, sel_mangledTypeNameForBundleIdentifier_);

    sub_18F5218DC();
    OUTLINED_FUNCTION_83_8();
    OUTLINED_FUNCTION_33_26();
    v363 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_41_18();
    v5[9] = v264;
    OUTLINED_FUNCTION_54_14();
    OUTLINED_FUNCTION_2_5();
    v5 = (v265 + v266);
    if (__OFADD__(v265, v266))
    {
      goto LABEL_139;
    }

    OUTLINED_FUNCTION_69_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD47E8);
    v267 = OUTLINED_FUNCTION_30_29();
    if (v267)
    {
      OUTLINED_FUNCTION_48_16();
      OUTLINED_FUNCTION_14_5();
      v5 = v365;
      if (!v55)
      {
        goto LABEL_150;
      }

      v238 = v267;
    }

    else
    {
      v5 = v365;
    }

    if (v2)
    {
      OUTLINED_FUNCTION_25_31(v267, v268, v269, v270, v271, v272, v273, v274, v312, v321, v330, v344, v347, *(&v347 + 1), v356, v363);

      goto LABEL_112;
    }

    OUTLINED_FUNCTION_0_96();
    *v275 = v243;
    v275[1] = v4;
    OUTLINED_FUNCTION_4_61(v276, v277, v278, v279, v280, v281, v282, v283, v312, v321, v330, v344, v347, *(&v347 + 1), v356, v363);
    if (!v66)
    {
      OUTLINED_FUNCTION_68_12(v284);
LABEL_112:
      v5[9] = v366;
      swift_endAccess();
      v285 = [v238 identifier];
      sub_18F5218DC();
      OUTLINED_FUNCTION_76_11();
      OUTLINED_FUNCTION_33_26();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_41_18();
      v5[9] = v286;
      OUTLINED_FUNCTION_53_11();
      v2 = v287;
      OUTLINED_FUNCTION_2_5();
      if (__OFADD__(v288, v289))
      {
        goto LABEL_140;
      }

      v290 = OUTLINED_FUNCTION_37_25();
      if (v290)
      {
        OUTLINED_FUNCTION_47_17();
        OUTLINED_FUNCTION_14_5();
        if (!v55)
        {
          goto LABEL_150;
        }

        v238 = v290;
      }

      if (v2)
      {
        OUTLINED_FUNCTION_29_33(v290, v291, v292, v293, v294, v295, v296, v297, v320, v329, v330, v346, v351, v355, v356, v364);
      }

      else
      {
        OUTLINED_FUNCTION_0_96();
        *v298 = v4;
        v298[1] = v243;
        OUTLINED_FUNCTION_4_61(v299, v300, v301, v302, v303, v304, v305, v306, v320, v329, v330, v346, v351, v355, v356, v364);
        if (v66)
        {
          goto LABEL_149;
        }

        *(v366 + 16) = v307;
      }

      v5[9] = v366;
      swift_endAccess();
      OUTLINED_FUNCTION_64_8();
LABEL_122:
      v240 &= v240 - 1;

      if (!v240)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  result = sub_18F522E2C();
  __break(1u);
  return result;
}

unint64_t sub_18F14748C()
{
  result = qword_1ED6FEE90;
  if (!qword_1ED6FEE90)
  {
    type metadata accessor for LNPlatformName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FEE90);
  }

  return result;
}

id sub_18F1474E4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for LNPlatformName(0);
  sub_18F0F21A8(0, &qword_1ED6FEE98);
  sub_18F14748C();
  v1 = sub_18F5216AC();

  v2 = [v0 initWithAvailabilityAnnotations_];

  return v2;
}

uint64_t sub_18F147684(void *a1)
{
  v1 = [a1 autoShortcutProviderMangledName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_18F5218DC();

  return v3;
}

uint64_t sub_18F1476E8()
{
  if (!sub_18F134258(v0))
  {
    return 1;
  }

  v1 = objc_allocWithZone(MEMORY[0x1E69ACDD8]);
  type metadata accessor for LNPlatformName(0);
  sub_18F0F21A8(0, &qword_1ED6FEE98);
  sub_18F14748C();
  v2 = sub_18F5216AC();

  v3 = [v1 initWithAvailabilityAnnotations_];

  v4 = [v3 availableForCurrentPlatformVersion];
  return v4;
}

void sub_18F1477FC(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_29_6(a1);
}

uint64_t sub_18F14781C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_18F147858(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_18F14789C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_27_7(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F1478F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F15EE50();
  *a1 = result;
  return result;
}

uint64_t sub_18F14791C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_7(a1);
  result = sub_18F1477F4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_18F1479A8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_7(a1);
  result = sub_18F1477E4(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_18F147A28(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_7(a1);
  result = sub_18F1477C8(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_18F147AAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18F15DCB4(a1);
  *a2 = result;
  return result;
}

void *sub_18F147AFC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_18F147B0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_27_7(a1);
  }

  else
  {
    return 0;
  }
}

char *sub_18F147B5C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F147B84(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F147BA4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

char *sub_18F147BC8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_7_6(result, a3, 56 * a2);
  }

  return result;
}

char *sub_18F147BE8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_7(a3, result);
  }

  return result;
}

uint64_t sub_18F147C0C()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_18F52141C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_18F5213AC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  OUTLINED_FUNCTION_16();

  return swift_deallocObject();
}

uint64_t sub_18F147E30()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18F147EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268);
    v10 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_18F147F8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0268);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18F148040()
{
  v0 = sub_18F522B3C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18F14808C(char a1)
{
  result = 0x617461645FLL;
  switch(a1)
  {
    case 1:
      result = 0x6D616E656C69665FLL;
      break;
    case 2:
      result = 0x656449657079745FLL;
      break;
    case 3:
      result = 0x4C5255656C69665FLL;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F1481CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0410);
  OUTLINED_FUNCTION_10_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F148258()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD9950);
  sub_18F521E4C();
  OUTLINED_FUNCTION_10_0();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_18F14831C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0420);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0360);
  OUTLINED_FUNCTION_51(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = sub_18F520C8C();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    OUTLINED_FUNCTION_31_0();
    (*(v11 + 8))(v0 + v9, v10);
  }

  return swift_deallocObject();
}

BOOL sub_18F148490(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_18F1484F0()
{

  return swift_deallocObject();
}

uint64_t sub_18F148528()
{
  v20 = *(v0 + 32);
  v22 = sub_18F5215DC();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v17 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v21 = sub_18F52159C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v19 = (v17 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  OUTLINED_FUNCTION_11_0();
  v8 = v7;
  v10 = (v9 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v12 = *(v11 + 64);
  v18 = sub_18F5213EC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v15 = (v10 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v17, v22);
  (*(v6 + 8))(v0 + v19, v21);

  (*(v8 + 8))(v0 + v10, v20);
  (*(v14 + 8))(v0 + v15, v18);

  return swift_deallocObject();
}

uint64_t sub_18F148930(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_18F5215DC();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_18F1489B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_18F5215DC();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}