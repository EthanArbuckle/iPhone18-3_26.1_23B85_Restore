uint64_t sub_221B247D4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 232);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_0_0();
  v8(v7);
  v9 = *(v0 + 176);
  LOBYTE(v2) = *(v0 + 224) != 0;
  v10 = v9 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0) + 20);
  *v10 = v1;
  *(v10 + 8) = v2;
  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_221B24888()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[28];
  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_118_0();
  v8(v7);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v9 = v0[22];
  LOBYTE(v3) = v0[28] != 0;
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0);
  OUTLINED_FUNCTION_4_21(v10);
  *(v11 + 8) = v3;
  OUTLINED_FUNCTION_25();

  return v12();
}

uint64_t sub_221B24940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_29(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  v9(v8);
  return a2;
}

uint64_t sub_221B24998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B249B4()
{
  OUTLINED_FUNCTION_8_0();
  v17 = v0[16];
  v1 = v0[14];
  v2 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8340, &unk_221BE57E0) + 28);
  sub_221B24940(v2, (v0 + 2), &qword_27CFB8320, &unk_221BD1D60);
  sub_2219A1B08(v2 + 40, (v0 + 7));
  v3 = *(v2 + 80);
  v0[18] = v3;
  v0[12] = sub_221B23FB8(v3);
  v4 = *(v17 + 16);
  OUTLINED_FUNCTION_8_16();
  v16 = v5 + *v5;
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[19] = v8;
  *v8 = v9;
  v8[1] = sub_221B24B0C;
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  v13 = OUTLINED_FUNCTION_9_17();

  return v14(v13);
}

uint64_t sub_221B24B0C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  *(v3 + 160) = v7;
  *(v3 + 168) = v0;

  sub_2219F7094(v3 + 16);
  if (v0)
  {
    v8 = sub_221B24D3C;
  }

  else
  {
    v8 = sub_221B24C18;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221B24C18()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[14];
  v4 = *(v0[18] + 16);
  v5 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  result = v9(v8);
  if (v1 >= v4)
  {
    sub_2219A1218();
    v14 = swift_allocError();
    *v15 = 6;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 5;
    v13 = sub_221BCC328();

    v12 = 2;
  }

  else
  {
    v11 = v0[20];
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = 0;
    v13 = *(v0[18] + 96 * v11 + 120);
  }

  v16 = v0[13];
  v17 = v16 + *(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) + 20);
  *v17 = v13;
  *(v17 + 8) = v12;
  OUTLINED_FUNCTION_25();

  return v18();
}

uint64_t sub_221B24D3C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_118_0();
  v8(v7);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v9 = v0[13];
  v10 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0);
  OUTLINED_FUNCTION_4_21(v10);
  *(v11 + 8) = 2;
  OUTLINED_FUNCTION_25();

  return v12();
}

uint64_t sub_221B24DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B24E08()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93F0, &unk_221BD2E00);
  sub_221B256E0(v1 + *(v2 + 28), v0 + 16);
  sub_221B24940(v0 + 16, v0 + 192, &qword_27CFB8320, &unk_221BD1D60);
  v3 = *(v0 + 56);
  *(v0 + 272) = v3;
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = v0;
    v28 = MEMORY[0x277D84F90];
    sub_2219A3134(0, v4, 0);
    v5 = v28;
    v6 = *(v28 + 16);
    v7 = 24 * v6 + 48;
    v8 = (v3 + 56);
    do
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      if (v11 == 2)
      {
        v12 = 2;
      }

      else
      {
        v12 = v11 & 1;
      }

      v13 = *(v28 + 24);

      if (v6 >= v13 >> 1)
      {
        sub_2219A3134((v13 > 1), v6 + 1, 1);
      }

      v8 += 32;
      *(v28 + 16) = v6 + 1;
      v14 = (v28 + v7);
      *(v14 - 2) = v10;
      *(v14 - 1) = v9;
      *v14 = v12;
      v7 += 24;
      ++v6;
      --v4;
    }

    while (v4);
    v0 = v26;
  }

  v27 = *(v0 + 256);
  sub_221B24940(v0 + 64, v0 + 152, &unk_27CFB93B0, &qword_221BD1D70);
  v15 = *(v0 + 192);
  *(v0 + 120) = *(v0 + 208);
  v16 = *(v0 + 224);
  *(v0 + 104) = v15;
  *(v0 + 136) = v16;
  *(v0 + 144) = v5;
  v17 = *(v27 + 40);
  v25 = (v17 + *v17);
  v18 = v17[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 280) = v19;
  *v19 = v20;
  v19[1] = sub_221B25074;
  v21 = *(v0 + 256);
  v22 = *(v0 + 264);
  v23 = *(v0 + 248);

  return v25(v0 + 104, v23, v21);
}

uint64_t sub_221B25074()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 280);
  *v4 = *v1;
  *(v3 + 288) = v7;
  *(v3 + 296) = v0;

  sub_2219F6F6C(v3 + 104);
  if (v0)
  {
    v8 = sub_221B252AC;
  }

  else
  {
    v8 = sub_221B25180;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221B25180()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[30];
  v4 = *(v0[34] + 16);
  v5 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_0_0();
  result = v9(v8);
  if (v1 >= v4)
  {
    v16 = v0[29];
    sub_2219A1218();
    v17 = swift_allocError();
    *v18 = 5;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = 5;
    sub_221BCC328();
    v19 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
    OUTLINED_FUNCTION_13_14(v19);
    sub_221B2573C((v0 + 2));
  }

  else
  {
    v11 = v0[36];
    if (v11 < 0)
    {
      __break(1u);
      return result;
    }

    v12 = v0[29];
    v13 = *(v0[34] + 32 * v11 + 32);
    v14 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
    OUTLINED_FUNCTION_4_21(v14);
    *(v15 + 8) = 0;
    sub_221B2573C((v0 + 2));
  }

  OUTLINED_FUNCTION_25();

  return v20();
}

uint64_t sub_221B252AC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[37];
  v3 = v0[29];
  v2 = v0[30];
  sub_221B2573C((v0 + 2));
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_118_0();
  v8(v7);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0);
  OUTLINED_FUNCTION_13_14(v9);
  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_221B25358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB93A0, &unk_221BE4F60) + 28);
  v9 = *(a4 + 48);
  v14 = (v9 + *v9);
  v10 = v9[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v4[4] = v11;
  *v11 = v12;
  v11[1] = sub_221B2549C;

  return v14(a2 + v8, a3, a4);
}

uint64_t sub_221B2549C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_9_0();
  *v7 = v6;
  *(v8 + 40) = v0;

  if (v0)
  {
    v9 = sub_221B25634;
  }

  else
  {
    v9 = sub_221B255A0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221B255A0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_0_0();
  v7(v6);
  v8 = *(v0 + 16);
  *(v8 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20)) = 0;
  OUTLINED_FUNCTION_25();

  return v9();
}

uint64_t sub_221B25634()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_221BCC558();
  OUTLINED_FUNCTION_0_29(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_118_0();
  v8(v7);
  sub_221BCC328();
  OUTLINED_FUNCTION_213_0();
  v9 = v0[2];
  *(v9 + *(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) + 20)) = v2;
  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t result)
{
  v3 = v2 + *(result + 20);
  *v3 = v1;
  *(v3 + 8) = 1;
  return result;
}

uint64_t ActorTransactionOperation.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_221BCC558();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActorTransactionOperation.name.getter()
{
  v1 = (v0 + *(type metadata accessor for ActorTransactionOperation() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for ActorTransactionOperation()
{
  result = qword_27CFBBA18;
  if (!qword_27CFBBA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221B258FC()
{
  result = sub_221BCC558();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_221B25998()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = 0;
  v9 = *(v8 + 16);
  do
  {
    if (v9 == v7)
    {
      break;
    }

    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
    OUTLINED_FUNCTION_18_4(v10);
    v12 = *(v11 + 80);
    OUTLINED_FUNCTION_43_1();
    v6(v14 + *(v13 + 72) * v7++);
  }

  while (!v0);
  OUTLINED_FUNCTION_53_5();
}

void sub_221B25A5C(uint64_t a1)
{
  v2 = sub_2219A69A0(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DA3BF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    v6 = [v4 valueType];
    sub_221BBA264(&v16, v6, v7, v8, v9, v10, v11, v12, v14, v15);
    v13 = v16;
  }
}

void sub_221B25B3C(uint64_t a1, void *a2, uint64_t a3)
{
  v19[4] = a3;
  v5 = sub_2219A69A0(a1);
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DA3BF0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    swift_beginAccess();
    v9 = v8;
    MEMORY[0x223DA3390]();
    if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_221BCD6B8();
    }

    sub_221BCD6F8();
    swift_endAccess();
    v10 = [v9 valueType];
    sub_221BBA264(v19, v10, v11, v12, v13, v14, v15, v16, v18, v19[0]);
    v17 = v19[0];
  }
}

void sub_221B25C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_2219A69A0(v23);
  while (1)
  {
    if (!v27)
    {
LABEL_11:
      OUTLINED_FUNCTION_53_5();
      return;
    }

    if (__OFSUB__(v27--, 1))
    {
      break;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x223DA3BF0](v27, v24);
    }

    else
    {
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_13;
      }

      if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v29 = *(v24 + 32 + 8 * v27);
    }

    a10 = v29;
    v26(&a10);

    if (v20)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_221B25D60()
{
  sub_221B62018(v0 + qword_27CFBC788, v7, &qword_27CFB7FD0, &qword_221BD2888);
  v1 = v8;
  if (v8)
  {
    v2 = v9;
    __swift_project_boxed_opaque_existential_0(v7, v8);
    v3 = *(v2 + 8);
    v4 = OUTLINED_FUNCTION_97_1();
    v1 = v5(v4, v2);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  else
  {
    sub_2219EC58C(v7, &qword_27CFB7FD0);
  }

  return v1;
}

uint64_t sub_221B25E10()
{
  v1 = off_27CFBC778;
  swift_beginAccess();

  sub_221BB4AB4(v2, sub_221BB66AC, 0, &v1[v0]);
  return swift_endAccess();
}

uint64_t sub_221B2601C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  sub_221BCD7F8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_268_1();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = a1;

  OUTLINED_FUNCTION_153();
  sub_2219F7E3C();
}

uint64_t sub_221B260EC(void *a1)
{
  v2 = v1;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v4 = sub_221BCCD88();
  __swift_project_value_buffer(v4, qword_27CFDEDC8);

  v5 = sub_221BCCD68();
  v6 = sub_221BCDA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2219A6360(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8), v17);
    *(v7 + 12) = 2080;
    v9 = *(*v1 + 120);
    sub_221BCC558();
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v10 = sub_221BCE168();
    v12 = v11;

    v13 = sub_2219A6360(v10, v12, v17);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_221989000, v5, v6, "[%s] <%s> fail invoked", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v8, -1, -1);
    MEMORY[0x223DA4C00](v7, -1, -1);
  }

  else
  {
  }

  v14 = v2 + *(*v2 + 128);
  os_unfair_lock_lock(v14);
  if (*(v14 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
  }

  os_unfair_lock_unlock(v14);
  v17[0] = a1;
  v18 = 1;
  v15 = a1;
  sub_221B2AAFC(v17);
  return sub_2219EC58C(v17, &qword_27CFB8090);
}

void sub_221B263B0(void *a1)
{
  v2 = v1;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v4 = sub_221BCCD88();
  __swift_project_value_buffer(v4, qword_27CFDEDC8);

  v5 = sub_221BCCD68();
  v6 = sub_221BCDA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2219A6360(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8), &v16);
    *(v7 + 12) = 2080;
    v9 = *(*v1 + 120);
    sub_221BCC558();
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v10 = sub_221BCE168();
    v12 = v11;

    v13 = sub_2219A6360(v10, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_221989000, v5, v6, "[%s] <%s> fail invoked", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v8, -1, -1);
    MEMORY[0x223DA4C00](v7, -1, -1);
  }

  else
  {
  }

  v14 = v2 + *(*v2 + 128);
  os_unfair_lock_lock(v14);
  if (*(v14 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
  }

  os_unfair_lock_unlock(v14);
  v15 = a1;
  sub_221B2ABF8(a1, 0, 0, 1);
}

void sub_221B26670(void *a1)
{
  v2 = v1;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v4 = sub_221BCCD88();
  __swift_project_value_buffer(v4, qword_27CFDEDC8);

  v5 = sub_221BCCD68();
  v6 = sub_221BCDA68();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2219A6360(*(v1 + *(*v1 + 112)), *(v1 + *(*v1 + 112) + 8), v16);
    *(v7 + 12) = 2080;
    v9 = *(*v1 + 120);
    sub_221BCC558();
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v10 = sub_221BCE168();
    v12 = v11;

    v13 = sub_2219A6360(v10, v12, v16);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_221989000, v5, v6, "[%s] <%s> fail invoked", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v8, -1, -1);
    MEMORY[0x223DA4C00](v7, -1, -1);
  }

  else
  {
  }

  v14 = v2 + *(*v2 + 128);
  os_unfair_lock_lock(v14);
  if (*(v14 + 24))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    sub_221BCD878();
  }

  os_unfair_lock_unlock(v14);
  v16[0] = a1;
  memset(&v16[1], 0, 24);
  v17 = 0;
  v18 = 1;
  v15 = a1;
  sub_221B2AD24(v16);
}

void sub_221B27210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_277_1();
  v31 = v30;
  v68 = v32;
  v69 = v33;
  v67 = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  OUTLINED_FUNCTION_1_6();
  v44 = *(v43 + 96);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
  v48 = *(v47 - 8);
  (*(v48 + 16))(v29 + v44, v42, v47);
  OUTLINED_FUNCTION_1_6();
  v50 = (v29 + *(v49 + 104));
  *v50 = v31;
  v50[1] = a27;
  OUTLINED_FUNCTION_1_6();
  v52 = (v29 + *(v51 + 112));
  *v52 = v40;
  v52[1] = v38;
  OUTLINED_FUNCTION_1_6();
  v54 = *(v53 + 120);
  v55 = sub_221BCC558();
  v56 = *(v55 - 8);
  (*(v56 + 16))(v29 + v54, v36, v55);
  OUTLINED_FUNCTION_1_6();
  v58 = v29 + *(v57 + 128);
  *v58 = 0;
  *(v58 + 8) = 1;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;

  OUTLINED_FUNCTION_1_6();
  *(v29 + *(v59 + 144)) = v67;

  v60 = *(v56 + 8);
  v61 = OUTLINED_FUNCTION_420();
  v62(v61);
  (*(v48 + 8))(v42, v47);
  OUTLINED_FUNCTION_1_6();
  v64 = v29 + *(v63 + 152);
  *v64 = 0;
  *(v64 + 8) = 0;
  *(v64 + 16) = v68;
  *(v64 + 24) = v69;
  OUTLINED_FUNCTION_1_6();
  v66 = (v29 + *(v65 + 136));
  *v66 = a28;
  v66[1] = a29;
  OUTLINED_FUNCTION_276_0();
}

uint64_t sub_221B2741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B27440, 0, 0);
}

uint64_t sub_221B274E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B2750C, 0, 0);
}

uint64_t sub_221B275B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B275D8, 0, 0);
}

uint64_t sub_221B27680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B276A4, 0, 0);
}

uint64_t sub_221B2774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_221B27770, 0, 0);
}

void sub_221B27818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_156();
  if (*(v27 + 8) == 1)
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v32 = sub_221BCCD88();
    __swift_project_value_buffer(v32, qword_27CFDEDC8);

    v33 = sub_221BCCD68();
    sub_221BCDA78();
    v34 = OUTLINED_FUNCTION_174_4();
    if (os_log_type_enabled(v34, v35))
    {
      OUTLINED_FUNCTION_20_6();
      swift_slowAlloc();
      OUTLINED_FUNCTION_114_4();
      a10 = swift_slowAlloc();
      *v23 = 136315394;
      v36 = sub_2219A6360(*(v25 + *(*v25 + 112)), *(v25 + *(*v25 + 112) + 8), &a10);
      OUTLINED_FUNCTION_113_7(v36);
      v37 = *(*v25 + 120);
      v38 = sub_221BCC558();
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v39, v40);
      v41 = v25 + v37;
      sub_221BCE168();
      OUTLINED_FUNCTION_239_3();

      sub_2219A6360(v41, v38, &a10);
      OUTLINED_FUNCTION_223_4();

      *(v23 + 14) = v41;
      OUTLINED_FUNCTION_140_4();
      _os_log_impl(v42, v43, v44, v45, v46, v47);
      OUTLINED_FUNCTION_172_4();
      swift_arrayDestroy();
      v48 = OUTLINED_FUNCTION_9_10();
      MEMORY[0x223DA4C00](v48);
      v49 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v49);
    }

    else
    {
    }

LABEL_12:
    OUTLINED_FUNCTION_53_5();
    return;
  }

  v50 = *v27 + 1;
  if (!__OFADD__(*v27, 1))
  {
    if (*(v27 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD878();
    }

    sub_221BCD7F8();
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    v55 = swift_allocObject();
    v55[2] = 0;
    v55[3] = 0;
    v55[4] = v25;
    v55[5] = v50;
    v55[6] = v23;

    OUTLINED_FUNCTION_153();
    sub_2219F8C64();
    *v27 = v50;
    *(v27 + 8) = 0;
    *(v27 + 16) = v56;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_221B27AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v8 = sub_221BCD7B8();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[4] = a6;

  return MEMORY[0x2822009F8](sub_221B27BA4, 0, 0);
}

uint64_t sub_221B27E34()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B28424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[74] = a6;
  v6[73] = a5;
  v6[72] = a4;
  v8 = sub_221BCD7B8();
  v6[75] = v8;
  v9 = *(v8 - 8);
  v6[76] = v9;
  v10 = *(v9 + 64) + 15;
  v6[77] = swift_task_alloc();
  v6[69] = a6;

  return MEMORY[0x2822009F8](sub_221B284F4, 0, 0);
}

uint64_t sub_221B28790()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 640);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 648) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B28E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v8 = sub_221BCD7B8();
  v6[11] = v8;
  v9 = *(v8 - 8);
  v6[12] = v9;
  v10 = *(v9 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[5] = a6;

  return MEMORY[0x2822009F8](sub_221B28ED0, 0, 0);
}

uint64_t sub_221B29160()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 128);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 136) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B297B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v8 = sub_221BCD7B8();
  v6[18] = v8;
  v9 = *(v8 - 8);
  v6[19] = v9;
  v10 = *(v9 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[12] = a6;

  return MEMORY[0x2822009F8](sub_221B29880, 0, 0);
}

uint64_t sub_221B29B14()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B2A194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v8 = sub_221BCD7B8();
  v6[10] = v8;
  v9 = *(v8 - 8);
  v6[11] = v9;
  v10 = *(v9 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[4] = a6;

  return MEMORY[0x2822009F8](sub_221B2A260, 0, 0);
}

uint64_t sub_221B2A4F0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_221B2AAFC(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(*v1 + 128);
  os_unfair_lock_lock(v4);
  if (*(v4 + 16))
  {

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 24);

    *(v4 + 8) = v5;
    *(v4 + 16) = 1;
    *(v4 + 24) = 0;
    os_unfair_lock_unlock(v4);
    v7 = v2 + *(*v2 + 152);
    sub_221A2D298();
    v8 = v2 + *(*v2 + 96);
    v9 = sub_221B2BDE0(a1);
    v10 = v2 + *(*v2 + 136);
    v11 = *(v10 + 8);
    (*v10)(v9);
  }
}

void sub_221B2ABF8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = v4 + *(*v4 + 128);
  os_unfair_lock_lock(v10);
  if (*(v10 + 16))
  {

    os_unfair_lock_unlock(v10);
  }

  else
  {
    v11 = *(v10 + 8);
    v12 = *(v10 + 24);

    *(v10 + 8) = v11;
    *(v10 + 16) = 1;
    *(v10 + 24) = 0;
    os_unfair_lock_unlock(v10);
    v13 = v5 + *(*v5 + 152);
    sub_221A2D298();
    v14 = v5 + *(*v5 + 96);
    v15 = sub_221B2BE80(a1, a2, a3, a4 & 1);
    v16 = v5 + *(*v5 + 136);
    v17 = *(v16 + 8);
    (*v16)(v15);
  }
}

void sub_221B2AD24(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + *(*v1 + 128);
  os_unfair_lock_lock(v4);
  if (*(v4 + 16))
  {

    os_unfair_lock_unlock(v4);
  }

  else
  {
    v5 = *(v4 + 8);
    v6 = *(v4 + 24);

    *(v4 + 8) = v5;
    *(v4 + 16) = 1;
    *(v4 + 24) = 0;
    os_unfair_lock_unlock(v4);
    v7 = v2 + *(*v2 + 152);
    sub_221A2D298();
    v8 = v2 + *(*v2 + 96);
    v9 = sub_221B2C038(a1);
    v10 = v2 + *(*v2 + 136);
    v11 = *(v10 + 8);
    (*v10)(v9);
  }
}

void sub_221B2AE20(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, void))
{
  v6 = v4;
  OUTLINED_FUNCTION_1_6();
  v11 = v4 + *(v10 + 128);
  os_unfair_lock_lock(v11);
  if (*(v11 + 16))
  {
    OUTLINED_FUNCTION_445();

    os_unfair_lock_unlock(v12);
  }

  else
  {
    v14 = *(v11 + 8);
    v15 = *(v11 + 24);

    *(v11 + 8) = v14;
    *(v11 + 16) = 1;
    *(v11 + 24) = 0;
    os_unfair_lock_unlock(v11);
    OUTLINED_FUNCTION_5_14();
    v17 = v6 + *(v16 + 152);
    sub_221A2D298();
    OUTLINED_FUNCTION_5_14();
    v19 = *(v18 + 96);
    a4(a1, a2, a3 & 1);
    OUTLINED_FUNCTION_5_14();
    v21 = v6 + *(v20 + 136);
    v22 = *(v21 + 8);
    (*v21)();
    OUTLINED_FUNCTION_445();
  }
}

void sub_221B2AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_21();
  v24 = v23;
  v26 = v25;
  v27 = v22;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v105 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v35);
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_156();
  v39 = *(v22 + 16);
  v40 = *(v22 + 24);
  v42 = v39(v33, v31);
  v43 = v41;
  if (v41 >> 62)
  {
    if (v41 >> 62 == 1)
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v44 = v43 & 0x3FFFFFFFFFFFFFFFLL;
      v45 = sub_221BCCD88();
      __swift_project_value_buffer(v45, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v46 = sub_221BCCD68();
      v47 = sub_221BCDA68();
      if (os_log_type_enabled(v46, v47))
      {
        v104 = v44;
        v48 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v106 = swift_slowAlloc();
        *v48 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v50 = OUTLINED_FUNCTION_208_3(*(v49 + 112));
        OUTLINED_FUNCTION_393_0(v50);
        v103 = v31;
        v52 = *(v51 + 120);
        sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v53, v54);
        v55 = sub_221BCE168();
        v57 = v56;

        v58 = sub_2219A6360(v55, v57, &v106);

        *(v48 + 14) = v58;
        v31 = v103;
        *(v48 + 22) = 2048;
        *(v48 + 24) = v103;
        OUTLINED_FUNCTION_429(&dword_221989000, v59, v60, "[%s] <%s#%ld> Error is transient, retrying when ready");
        OUTLINED_FUNCTION_436();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v44 = v104;
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      os_unfair_lock_lock(v27);
      if (*(v27 + 8))
      {

        v88 = sub_221BCCD68();
        sub_221BCDA78();

        if (OUTLINED_FUNCTION_104_0())
        {
          v89 = OUTLINED_FUNCTION_74_0();
          v90 = OUTLINED_FUNCTION_68();
          v106 = v90;
          *v89 = 136315138;
          OUTLINED_FUNCTION_5_14();
          *(v89 + 4) = OUTLINED_FUNCTION_208_3(*(v91 + 112));
          OUTLINED_FUNCTION_428(&dword_221989000, v92, v93, "[%s] ERROR: evaluateRetries called while retry task already pending");
          __swift_destroy_boxed_opaque_existential_0(v90);
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
        }
      }

      else
      {
        sub_221BCD7F8();
        OUTLINED_FUNCTION_108();
        __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
        OUTLINED_FUNCTION_49();
        v101 = swift_allocObject();
        v101[2] = 0;
        v101[3] = 0;
        v101[4] = v44;
        v101[5] = v29;
        v101[6] = v31;
        v101[7] = v105;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
        *(v27 + 8) = v102;
      }

      os_unfair_lock_unlock(v27);
      sub_221B26B6C(v42, a22);
    }

    else
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v76 = sub_221BCCD88();
      __swift_project_value_buffer(v76, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v77 = sub_221BCCD68();
      v78 = sub_221BCDA68();
      if (os_log_type_enabled(v77, v78))
      {
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_67_6();
        v106 = swift_slowAlloc();
        *v27 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v80 = OUTLINED_FUNCTION_208_3(*(v79 + 112));
        OUTLINED_FUNCTION_327_0(v80);
        OUTLINED_FUNCTION_5_14();
        v82 = *(v81 + 120);
        sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v83, v84);
        OUTLINED_FUNCTION_411();
        sub_221BCE168();
        OUTLINED_FUNCTION_40_4();

        v85 = OUTLINED_FUNCTION_194_3();
        sub_2219A6360(v85, v86, v87);
        OUTLINED_FUNCTION_124_2();

        *(v27 + 14) = v82;
        *(v27 + 22) = 2048;
        *(v27 + 24) = v31;
        _os_log_impl(&dword_221989000, v77, v78, "[%s] <%s#%ld> Error is immediately retryable", v27, 0x20u);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      sub_221B2601C(v105);
    }

    OUTLINED_FUNCTION_22();
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v61 = sub_221BCCD88();
    __swift_project_value_buffer(v61, qword_27CFDEDC8);
    OUTLINED_FUNCTION_97_1();

    v62 = sub_221BCCD68();
    sub_221BCDA68();
    v63 = OUTLINED_FUNCTION_174_4();
    if (os_log_type_enabled(v63, v64))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_114_4();
      v106 = swift_slowAlloc();
      *v24 = 136315650;
      OUTLINED_FUNCTION_5_14();
      v66 = OUTLINED_FUNCTION_208_3(*(v65 + 112));
      OUTLINED_FUNCTION_113_7(v66);
      OUTLINED_FUNCTION_5_14();
      v68 = *(v67 + 120);
      sub_221BCC558();
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v69, v70);
      OUTLINED_FUNCTION_411();
      v71 = sub_221BCE168();

      v72 = OUTLINED_FUNCTION_142_4();
      sub_2219A6360(v72, v73, v74);
      OUTLINED_FUNCTION_171_0();

      *(v24 + 14) = v71;
      *(v24 + 22) = 2048;
      *(v24 + 24) = v31;
      _os_log_impl(&dword_221989000, v62, v27, "[%s] <%s#%ld> Error is not retryable", v24, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v75 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v75);
    }

    else
    {
    }

    v26(v42);
    OUTLINED_FUNCTION_312_0();
    OUTLINED_FUNCTION_22();

    sub_221A2FEE4(v94, v95);
  }
}

void sub_221B2B610()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v82 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_156();
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v20 = v17(v12, v10);
  v21 = v19;
  if (v19 >> 62)
  {
    if (v19 >> 62 == 1)
    {
      v81 = v4;
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v22 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v23 = sub_221BCCD88();
      __swift_project_value_buffer(v23, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v24 = sub_221BCCD68();
      v25 = sub_221BCDA68();
      if (os_log_type_enabled(v24, v25))
      {
        v80 = v22;
        v26 = OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_19_6();
        v83 = swift_slowAlloc();
        *v26 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v28 = OUTLINED_FUNCTION_208_3(*(v27 + 112));
        OUTLINED_FUNCTION_393_0(v28);
        v79 = v10;
        v30 = *(v29 + 120);
        v31 = sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v32, v33);
        sub_221BCE168();
        OUTLINED_FUNCTION_197_1();

        v34 = sub_2219A6360(v8 + v30, v31, &v83);

        *(v26 + 14) = v34;
        v10 = v79;
        *(v26 + 22) = 2048;
        *(v26 + 24) = v79;
        OUTLINED_FUNCTION_429(&dword_221989000, v35, v36, "[%s] <%s#%ld> Error is transient, retrying when ready");
        OUTLINED_FUNCTION_436();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v22 = v80;
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      os_unfair_lock_lock(v5);
      if (*(v5 + 8))
      {

        v63 = sub_221BCCD68();
        sub_221BCDA78();

        if (OUTLINED_FUNCTION_104_0())
        {
          v64 = v20;
          v65 = OUTLINED_FUNCTION_74_0();
          v66 = OUTLINED_FUNCTION_68();
          v83 = v66;
          *v65 = 136315138;
          OUTLINED_FUNCTION_5_14();
          *(v65 + 4) = OUTLINED_FUNCTION_208_3(*(v67 + 112));
          OUTLINED_FUNCTION_428(&dword_221989000, v68, v69, "[%s] ERROR: evaluateRetries called while retry task already pending");
          __swift_destroy_boxed_opaque_existential_0(v66);
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          v20 = v64;
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
        }
      }

      else
      {
        sub_221BCD7F8();
        OUTLINED_FUNCTION_108();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v76);
        OUTLINED_FUNCTION_49();
        v77 = swift_allocObject();
        v77[2] = 0;
        v77[3] = 0;
        v77[4] = v22;
        v77[5] = v8;
        v77[6] = v10;
        v77[7] = v82;

        OUTLINED_FUNCTION_153();
        sub_2219F8C64();
        *(v5 + 8) = v78;
      }

      os_unfair_lock_unlock(v5);
      sub_221B26ED8(v20, v81);
    }

    else
    {
      if (qword_27CFB7378 != -1)
      {
        OUTLINED_FUNCTION_1_38();
        swift_once();
      }

      v51 = sub_221BCCD88();
      __swift_project_value_buffer(v51, qword_27CFDEDC8);
      OUTLINED_FUNCTION_97_1();

      v52 = sub_221BCCD68();
      v53 = sub_221BCDA68();
      if (os_log_type_enabled(v52, v53))
      {
        OUTLINED_FUNCTION_68();
        OUTLINED_FUNCTION_67_6();
        v83 = swift_slowAlloc();
        *v5 = 136315650;
        OUTLINED_FUNCTION_5_14();
        v55 = OUTLINED_FUNCTION_208_3(*(v54 + 112));
        OUTLINED_FUNCTION_327_0(v55);
        OUTLINED_FUNCTION_5_14();
        v57 = *(v56 + 120);
        sub_221BCC558();
        OUTLINED_FUNCTION_0_44();
        sub_221B62E9C(v58, v59);
        OUTLINED_FUNCTION_411();
        sub_221BCE168();
        OUTLINED_FUNCTION_40_4();

        v60 = OUTLINED_FUNCTION_194_3();
        sub_2219A6360(v60, v61, v62);
        OUTLINED_FUNCTION_124_2();

        *(v5 + 14) = v57;
        *(v5 + 22) = 2048;
        *(v5 + 24) = v10;
        _os_log_impl(&dword_221989000, v52, v53, "[%s] <%s#%ld> Error is immediately retryable", v5, 0x20u);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
      }

      else
      {
      }

      sub_221B2601C(v82);
    }

    OUTLINED_FUNCTION_22();
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v37 = sub_221BCCD88();
    __swift_project_value_buffer(v37, qword_27CFDEDC8);
    OUTLINED_FUNCTION_97_1();

    v38 = sub_221BCCD68();
    v39 = sub_221BCDA68();
    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_114_4();
      v83 = swift_slowAlloc();
      *v2 = 136315650;
      OUTLINED_FUNCTION_5_14();
      v41 = OUTLINED_FUNCTION_208_3(*(v40 + 112));
      OUTLINED_FUNCTION_113_7(v41);
      OUTLINED_FUNCTION_5_14();
      v43 = *(v42 + 120);
      sub_221BCC558();
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v44, v45);
      OUTLINED_FUNCTION_411();
      v46 = sub_221BCE168();

      v47 = OUTLINED_FUNCTION_142_4();
      sub_2219A6360(v47, v48, v49);
      OUTLINED_FUNCTION_171_0();

      *(v2 + 14) = v46;
      *(v2 + 22) = 2048;
      *(v2 + 24) = v10;
      _os_log_impl(&dword_221989000, v38, v39, "[%s] <%s#%ld> Error is not retryable", v2, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v50 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v50);
    }

    else
    {
    }

    sub_221B26938(v20, v4);
    OUTLINED_FUNCTION_22();

    sub_221A2FEE4(v70, v71);
  }
}

uint64_t sub_221B2BCF4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);
    return sub_221BCD788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC08, &qword_221BE5CD8);

    return sub_221BCD798();
  }
}

uint64_t sub_221B2BD70(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB80, &qword_221BE5BA0);
    return sub_221BCD788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB80, &qword_221BE5BA0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BDE0(uint64_t a1)
{
  sub_221B62018(a1, __src, &qword_27CFB8090, &unk_221BD2960);
  if (v4)
  {
    __dst[0] = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD788();
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BE80(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BF10(uint64_t a1)
{
  sub_221B62018(a1, v3, &qword_27CFBBB00, &unk_221BE56A0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F0, &qword_221BD0E10);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2BFA4(uint64_t a1)
{
  sub_221B62018(a1, v3, &qword_27CFB8000, &unk_221BD28B0);
  if (v4)
  {
    v2[0] = *&v3[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD788();
  }

  else
  {
    sub_22198B358(v3, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78E8, &unk_221BD19A0);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2C038(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 34))
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB68, &qword_221BE5A98);
    return sub_221BCD788();
  }

  else
  {
    v5 = *(a1 + 32);
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    v8 = *(a1 + 8);

    sub_221998178(v7, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB68, &qword_221BE5A98);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2C0F8(void *a1, unint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB0, &qword_221BE5F98);
    return sub_221BCD788();
  }

  else
  {
    sub_2219EBFB4(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB0, &qword_221BE5F98);
    return sub_221BCD798();
  }
}

uint64_t sub_221B2C16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  v7[9] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v13;
  *v12 = v7;
  v12[1] = sub_221B2C29C;

  return MEMORY[0x282200430](v13);
}

uint64_t sub_221B2C29C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B2C88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  v7[9] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v13;
  *v12 = v7;
  v12[1] = sub_221B2C9BC;

  return MEMORY[0x282200430](v13);
}

uint64_t sub_221B2C9BC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B2CFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  v7[9] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v13;
  *v12 = v7;
  v12[1] = sub_221B2D0D0;

  return MEMORY[0x282200430](v13);
}

uint64_t sub_221B2D0D0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B2D6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  v7[9] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v13;
  *v12 = v7;
  v12[1] = sub_221B2D7E4;

  return MEMORY[0x282200430](v13);
}

uint64_t sub_221B2D7E4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B2DDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  v8 = sub_221BCD7B8();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v11 = *(MEMORY[0x277D857C8] + 4);
  v12 = swift_task_alloc();
  v7[9] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  v7[10] = v13;
  *v12 = v7;
  v12[1] = sub_221B2DEF8;

  return MEMORY[0x282200430](v13);
}

uint64_t sub_221B2DEF8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B2E4E8(uint64_t a1, char a2)
{
  result = 0x6C616974696E69;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_11_9();
      v3 = "invalidated(error: ";
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_11_9();
      v3 = "unavailable(error: ";
LABEL_5:
      MEMORY[0x223DA31F0](0xD000000000000013, (v3 - 32) | 0x8000000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCE018();
      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      result = v4;
      break;
    case 3:
      return result;
    default:
      result = 0x6C62616C69617661;
      break;
  }

  return result;
}

uint64_t sub_221B2E5F8()
{
  v1 = v0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBF8, &unk_221BE5CC0);
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v47);
  v5 = &v37 - v4;
  v6 = &qword_27CFB76D8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76D8, &unk_221BE6980);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = *(v45 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v50 = &v37 - v11;
  v12 = v1 + qword_27CFB8CD8;
  os_unfair_lock_lock((v1 + qword_27CFB8CD8));
  v13 = *(v12 + 8);

  os_unfair_lock_unlock(v12);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v44 = qword_27CFB8CD0;
  v18 = v1 + *(*v1 + 144);
  v48 = v13;

  v43 = v18;
  result = swift_beginAccess();
  v20 = 0;
  v21 = (v15 + 63) >> 6;
  v42 = (v2 + 8);
  *&v22 = 136315394;
  v37 = v22;
  v38 = v5;
  for (i = v1; v17; result = sub_2219EC58C(v36, v6))
  {
    v23 = v49;
LABEL_10:
    v25 = v50;
    sub_221B62018(*(v48 + 56) + *(v45 + 72) * (__clz(__rbit64(v17)) | (v20 << 6)), v50, v6, &unk_221BE6980);
    sub_221B62018(v25, v23, v6, &unk_221BE6980);

    v26 = sub_221BCCD68();
    v27 = sub_221BCDA68();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v28 = v37;
      *(v28 + 4) = sub_2219A6360(*(v1 + 48), *(v1 + 56), &v51);
      *(v28 + 12) = 2080;
      v40 = *v23;
      v29 = v6;
      v30 = v23[1];

      sub_2219EC58C(v23, v29);
      v31 = sub_2219A6360(v40, v30, &v51);
      v6 = v29;

      *(v28 + 14) = v31;
      v1 = i;
      _os_log_impl(&dword_221989000, v26, v27, "[%s] Updating stream %s", v28, 0x16u);
      v32 = v41;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v32, -1, -1);
      v33 = v28;
      v5 = v38;
      MEMORY[0x223DA4C00](v33, -1, -1);
    }

    else
    {

      sub_2219EC58C(v23, v6);
    }

    v17 &= v17 - 1;
    v34 = *(v46 + 28);
    v35 = *(v43 + 8);
    v51 = *v43;
    v52 = v35;
    sub_221B5D0C8(v51, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC00, &qword_221BE5CD0);
    v36 = v50;
    sub_221BCD818();
    (*v42)(v5, v47);
  }

  v23 = v49;
  while (1)
  {
    v24 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
    }

    v17 = *(v14 + 8 * v24);
    ++v20;
    if (v17)
    {
      v20 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_221B2EAA4(uint64_t a1)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_221B61734(a1, v1 + v3, &qword_27CFBBBE8, &qword_221BE5CA8);
  swift_endAccess();
  sub_221B2E5F8();
  return sub_2219EC58C(a1, &qword_27CFBBBE8);
}

void *sub_221B2EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v42 = a7;
  v43 = a1;
  v45 = a4;
  v46 = a6;
  v39 = a2;
  v40 = a5;
  v44 = a3;
  v41 = *v7;
  v9 = sub_221BCDB18();
  v37 = *(v9 - 8);
  v38 = v9;
  v10 = *(v37 + 64);
  MEMORY[0x28223BE20](v9);
  v36 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_221BCDAF8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_221BCD1F8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v35 = sub_2219A1D20(0, &qword_27CFBBC30, 0x277D85C78);
  v47[0] = 0;
  v47[1] = 0xE000000000000000;
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000035, 0x8000000221BF0CC0);
  v47[5] = type metadata accessor for RemoteAppIntentsActor();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC38, &qword_221BE5D70);
  v16 = sub_221BCD3D8();
  MEMORY[0x223DA31F0](v16);

  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  sub_221BCD1D8();
  v47[0] = MEMORY[0x277D84F90];
  sub_221B62E9C(&qword_27CFBBC40, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC48, &unk_221BE63C0);
  sub_221B61E70(&qword_27CFBBC50, &qword_27CFBBC48);
  v18 = v39;
  v17 = v40;
  sub_221BCDD18();
  (*(v37 + 104))(v36, *MEMORY[0x277D85260], v38);
  v19 = v42;
  v7[2] = sub_221BCDB58();
  v7[5] = 0;
  v47[0] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7770, &qword_221BD0CD0);
  sub_221BCD3D8();
  sub_221BCCD78();
  v20 = v7 + qword_27CFB8CD8;
  v21 = sub_221BCC558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76D8, &unk_221BE6980);
  sub_221B62E9C(&qword_27CFB9420, MEMORY[0x277CC95F0]);
  v22 = sub_221BCD2C8();
  *v20 = 0;
  *(v20 + 1) = v22;
  v8[3] = v43;
  v8[4] = v18;
  v23 = v8 + *(*v8 + 144);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  __swift_storeEnumTagSinglePayload(&v23[*(v24 + 28)], 1, 1, v21);
  v25 = *(v24 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  *v23 = 0;
  v23[8] = 3;
  v26 = v45;
  v8[6] = v44;
  v8[7] = v26;
  v8[8] = v17;

  v27 = sub_221B2F0E0(v8, v46, v19);
  v28 = v8[5];
  v8[5] = v27;

  v29 = *(v17 + 16);
  if (v29)
  {
    v30 = v17 + 32;
    do
    {
      sub_2219A1B08(v30, v47);
      v31 = __swift_project_boxed_opaque_existential_0(v47, v47[3]);
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = *v31;

      sub_221A34874(sub_221B61D38, v32);

      __swift_destroy_boxed_opaque_existential_0(v47);

      v30 += 40;
      --v29;
    }

    while (v29);
  }

  return v8;
}

uint64_t sub_221B2F0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  sub_221B74748(0x616E614D6C6C6143, 0xEB00000000726567);
  (*(v7 + 16))(v10, v13, v6);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC70, &qword_221BE5D80);
  swift_allocObject();

  v16 = sub_221B32D3C(v10, v14, v15, a2, a3);

  (*(v7 + 8))(v13, v6);
  return v16;
}

uint64_t sub_221B2F28C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221B2F2E4();
  }

  return result;
}

uint64_t sub_221B2F2E4()
{
  v1 = sub_221BCD1B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_221BCD1F8();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_221B61D40;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221B7C464;
  aBlock[3] = &block_descriptor_687;
  v10 = _Block_copy(aBlock);

  sub_221BCD1D8();
  v14 = MEMORY[0x277D84F90];
  sub_221B62E9C(&qword_27CFBBC58, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC60, &qword_221BE5D78);
  sub_221B61E70(&qword_27CFBBC68, &qword_27CFBBC60);
  sub_221BCDD18();
  MEMORY[0x223DA3890](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_221B2F598(uint64_t a1, void *a2)
{
  v5 = sub_221BCC558();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = *(v2 + 16);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v8);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v6 + 32))(v11 + v10, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_221B61F98;
  *(v12 + 24) = v11;
  aBlock[4] = sub_221B62F28;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221B67C2C;
  aBlock[3] = &block_descriptor_706;
  v13 = _Block_copy(aBlock);

  v14 = a2;

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_221B2F7D8(uint64_t a1, uint64_t a2, void *a3)
{
  v70 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v57[-v7];
  v8 = sub_221BCC558();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v68 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v59 = &v57[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC88, &qword_221BE5DC0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v57[-v17];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82B0, &unk_221BD2990);
  v19 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v57[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v65 = &v57[-v22];
  MEMORY[0x28223BE20](v23);
  v25 = &v57[-v24];
  v26 = *(*a1 + 144);
  v69 = a1;
  v27 = a1 + v26;
  swift_beginAccess();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  v28 = *(v60 + 28);
  v71 = v9;
  v66 = *(v9 + 16);
  v67 = a2;
  v66(v25, a2, v8);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v8);
  v29 = *(v15 + 56);
  v61 = v27;
  sub_221B62018(v27 + v28, v18, &qword_27CFB82B0, &unk_221BD2990);
  sub_221B62018(v25, &v18[v29], &qword_27CFB82B0, &unk_221BD2990);
  if (__swift_getEnumTagSinglePayload(v18, 1, v8) == 1)
  {
    sub_2219EC58C(v25, &qword_27CFB82B0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v18[v29], 1, v8);
    v31 = v69;
    v32 = v70;
    if (EnumTagSinglePayload == 1)
    {
      sub_2219EC58C(v18, &qword_27CFB82B0);
LABEL_11:
      v54 = v64;
      *v64 = v32;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
      swift_storeEnumTagMultiPayload();
      __swift_storeEnumTagSinglePayload(v54, 0, 1, v55);
      v56 = v32;
      sub_221B2FF5C(v54);
      sub_2219EC58C(v54, &qword_27CFBBBD8);
      return;
    }

    goto LABEL_6;
  }

  v33 = v65;
  sub_221B62018(v18, v65, &qword_27CFB82B0, &unk_221BD2990);
  if (__swift_getEnumTagSinglePayload(&v18[v29], 1, v8) == 1)
  {
    sub_2219EC58C(v25, &qword_27CFB82B0);
    (*(v71 + 8))(v33, v8);
    v31 = v69;
    v32 = v70;
LABEL_6:
    sub_2219EC58C(v18, &qword_27CFBBC88);
    goto LABEL_7;
  }

  v51 = v71;
  v52 = v59;
  (*(v71 + 32))(v59, &v18[v29], v8);
  sub_221B62E9C(&qword_27CFB8AE0, MEMORY[0x277CC95F0]);
  v58 = sub_221BCD338();
  v53 = *(v51 + 8);
  v53(v52, v8);
  sub_2219EC58C(v25, &qword_27CFB82B0);
  v53(v33, v8);
  sub_2219EC58C(v18, &qword_27CFB82B0);
  v31 = v69;
  v32 = v70;
  if (v58)
  {
    goto LABEL_11;
  }

LABEL_7:
  v34 = v68;
  v66(v68, v67, v8);
  v35 = v32;

  v36 = sub_221BCCD68();
  v37 = sub_221BCDA98();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v73 = v39;
    *v38 = 136315906;
    *(v38 + 4) = sub_2219A6360(*(v31 + 48), *(v31 + 56), &v73);
    *(v38 + 12) = 2080;
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v40 = sub_221BCE168();
    v42 = v41;
    (*(v71 + 8))(v34, v8);
    v43 = sub_2219A6360(v40, v42, &v73);

    *(v38 + 14) = v43;
    *(v38 + 22) = 2080;
    v72 = v32;
    v44 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
    v45 = sub_221BCD3D8();
    v47 = sub_2219A6360(v45, v46, &v73);

    *(v38 + 24) = v47;
    *(v38 + 32) = 2080;
    sub_221B62018(v61 + *(v60 + 28), v62, &qword_27CFB82B0, &unk_221BD2990);
    v48 = sub_221BCD3D8();
    v50 = sub_2219A6360(v48, v49, &v73);

    *(v38 + 34) = v50;
    _os_log_impl(&dword_221989000, v36, v37, "[%s] Dropping actor %s unavailability update with error %s - mismatches current actor %s", v38, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v39, -1, -1);
    MEMORY[0x223DA4C00](v38, -1, -1);
  }

  else
  {

    (*(v71 + 8))(v34, v8);
  }
}

uint64_t sub_221B2FF5C(uint64_t a1)
{
  v2 = v1;
  v111 = sub_221BCC558();
  v110 = *(v111 - 8);
  v4 = *(v110 + 64);
  MEMORY[0x28223BE20](v111);
  v109 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_221BCCEE8();
  v117 = *(v113 - 8);
  v6 = *(v117 + 64);
  MEMORY[0x28223BE20](v113);
  v112 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v114 = &v104 - v9;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  v10 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v115 = (&v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v120 = &v104 - v13;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  v14 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v119 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v104 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v104 - v24;
  MEMORY[0x28223BE20](v26);
  v116 = &v104 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v104 - v29;
  v31 = sub_221BCD238();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = (&v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v2 + 16);
  *v36 = v37;
  (*(v32 + 104))(v36, *MEMORY[0x277D85200], v31, v34);
  v38 = v37;
  LOBYTE(v37) = sub_221BCD248();
  v40 = *(v32 + 8);
  v39 = v32 + 8;
  v40(v36, v31);
  if (v37)
  {
    sub_221B62018(a1, v30, &qword_27CFBBBD8, &qword_221BE5C98);
    v41 = *(*v2 + 144);
    swift_beginAccess();
    sub_221B62018(v2 + v41, v18, &qword_27CFBBBE8, &qword_221BE5CA8);
    LODWORD(v31) = v18[8];
    v42 = v30;
    if (v31 == 1)
    {

      v43 = sub_221BCCD68();
      v44 = sub_221BCDA98();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&__src[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), __src);
        _os_log_impl(&dword_221989000, v43, v44, "[%s] In invalidated state, ignoring further updates", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v46);
        MEMORY[0x223DA4C00](v46, -1, -1);
        MEMORY[0x223DA4C00](v45, -1, -1);
      }

      v47 = &qword_27CFBBBD8;
      v48 = v42;
      goto LABEL_6;
    }

    v39 = 0;
    v108 = *v18;
    v50 = *(v2 + 64);
    v51 = *(v50 + 16);
    for (i = v50 + 32; ; i += 40)
    {
      if (v51 == v39)
      {
        v127 = 0;
        v125 = 0u;
        v126 = 0u;
        goto LABEL_14;
      }

      if (v39 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_2219A1B08(i, __src);
      if (*(*__swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1)) + 40))
      {
        break;
      }

      ++v39;
      __swift_destroy_boxed_opaque_existential_0(__src);
    }

    sub_22198B358(__src, &v125);
LABEL_14:
    sub_221B62018(&v125, __dst, &qword_27CFBBBF0, &unk_221BE5CB0);
    v39 = v30;
    if (*(&__dst[1] + 1))
    {
      sub_22198B358(__dst, __src);
      v53 = *(*__swift_project_boxed_opaque_existential_0(__src, *(&__src[1] + 1)) + 40);
      if (v53)
      {
        v54 = v53;
        if (qword_27CFB73C0 != -1)
        {
          swift_once();
        }

        v55 = sub_221BCCD88();
        __swift_project_value_buffer(v55, qword_27CFDEE88);
        sub_2219A1B08(__src, __dst);

        v56 = v53;
        v57 = sub_221BCCD68();
        v58 = sub_221BCDA98();

        v59 = os_log_type_enabled(v57, v58);
        v60 = v120;
        if (v59)
        {
          v61 = swift_slowAlloc();
          v106 = v58;
          v62 = v61;
          v105 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v107 = v39;
          v63 = v122;
          *v62 = 136315650;
          *(v62 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), &v122);
          *(v62 + 12) = 2080;
          __swift_project_boxed_opaque_existential_0(__dst, *(&__dst[1] + 1));
          swift_getDynamicType();
          v64 = sub_221BCE478();
          v66 = v65;
          __swift_destroy_boxed_opaque_existential_0(__dst);
          v67 = sub_2219A6360(v64, v66, &v122);

          *(v62 + 14) = v67;
          *(v62 + 22) = 2112;
          v68 = v53;
          v69 = _swift_stdlib_bridgeErrorToNSError();
          *(v62 + 24) = v69;
          v70 = v105;
          *v105 = v69;
          _os_log_impl(&dword_221989000, v57, v106, "[%s] DistributedActorManager: %s reports %@", v62, 0x20u);
          sub_2219EC58C(v70, &unk_27CFB7630);
          MEMORY[0x223DA4C00](v70, -1, -1);
          swift_arrayDestroy();
          v71 = v63;
          v39 = v107;
          MEMORY[0x223DA4C00](v71, -1, -1);
          MEMORY[0x223DA4C00](v62, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(__dst);
        }

        sub_221B5D0A4(v108, v31);
        v81 = v119;
        v79 = v117;
        v82 = v116;
        *v18 = v53;
        LOBYTE(v31) = 2;
        v18[8] = 2;
        __swift_destroy_boxed_opaque_existential_0(__src);
        v108 = v53;
        v78 = v118;
        v80 = v121;
        goto LABEL_34;
      }

      __swift_destroy_boxed_opaque_existential_0(__src);
    }

    else
    {
      sub_2219EC58C(__dst, &qword_27CFBBBF0);
    }

    if (qword_27CFB73C0 != -1)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  v72 = sub_221BCCD88();
  __swift_project_value_buffer(v72, qword_27CFDEE88);

  v73 = sub_221BCCD68();
  v74 = sub_221BCDA68();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&__src[0] = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), __src);
    _os_log_impl(&dword_221989000, v73, v74, "[%s] DistributedActorManager: No active error sources", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76);
    v77 = v76;
    v39 = v30;
    MEMORY[0x223DA4C00](v77, -1, -1);
    MEMORY[0x223DA4C00](v75, -1, -1);
  }

  v78 = v118;
  v79 = v117;
  v60 = v120;
  v80 = v121;
  if (v31 == 2)
  {
    sub_221B61EB0(v39, v22, &qword_27CFBBBD8, &qword_221BE5C98);
    if (__swift_getEnumTagSinglePayload(v22, 1, v80) == 1)
    {
      sub_221B62018(&v18[*(v78 + 32)], v25, &qword_27CFBBBE0, &qword_221BE5CA0);
      if (__swift_getEnumTagSinglePayload(v22, 1, v80) != 1)
      {
        sub_2219EC58C(v22, &qword_27CFBBBD8);
      }
    }

    else
    {
      sub_221B61EB0(v22, v25, &qword_27CFBBBE0, &qword_221BE5CA0);
    }

    __swift_storeEnumTagSinglePayload(v25, 0, 1, v80);
    sub_221B61EB0(v25, v39, &qword_27CFBBBD8, &qword_221BE5C98);
    LOBYTE(v31) = 2;
  }

  v81 = v119;
  v82 = v116;
LABEL_34:
  sub_221B62018(v39, v82, &qword_27CFBBBD8, &qword_221BE5C98);
  if (__swift_getEnumTagSinglePayload(v82, 1, v80) == 1)
  {
    v83 = &qword_27CFBBBD8;
    v84 = v82;
LABEL_38:
    sub_2219EC58C(v84, v83);
    goto LABEL_39;
  }

  sub_221B61EB0(v82, v60, &qword_27CFBBBE0, &qword_221BE5CA0);
  sub_221B61734(v60, &v18[*(v78 + 32)], &qword_27CFBBBE0, &qword_221BE5CA0);
  if (*(&v126 + 1))
  {
    v83 = &qword_27CFBBBE0;
    v84 = v60;
    goto LABEL_38;
  }

  v93 = v115;
  sub_221B62018(v60, v115, &qword_27CFBBBE0, &qword_221BE5CA0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2219EC58C(v60, &qword_27CFBBBE0);
      sub_2219EC58C(v39, &qword_27CFBBBD8);
      v47 = &qword_27CFBBBF0;
      v48 = &v125;
LABEL_6:
      sub_2219EC58C(v48, v47);
      v49 = v18;
      return sub_2219EC58C(v49, &qword_27CFBBBE8);
    }

    sub_2219EC58C(v60, &qword_27CFBBBE0);
    v95 = *v93;
    sub_221B5D0A4(v108, v31);
    *v18 = v95;
    v18[8] = 2;
  }

  else
  {
    v96 = v114;
    v97 = v113;
    (*(v79 + 32))(v114, v93, v113);
    v98 = v112;
    (*(v79 + 16))(v112, v96, v97);
    sub_221B93FD0(v98, __src);
    sub_221B940B8();
    memcpy(__dst, __src, sizeof(__dst));
    sub_221B616E0(__dst);
    v99 = v109;
    sub_221BCC548();
    v100 = *(v2 + 32);
    v101 = (*(v2 + 24))(v114, v99);
    (*(v79 + 8))(v114, v113);
    sub_2219EC58C(v120, &qword_27CFBBBE0);
    sub_221B5D0A4(v108, v31);
    *v18 = v101;
    v18[8] = 0;
    v102 = *(v78 + 28);
    sub_2219EC58C(&v18[v102], &qword_27CFB82B0);
    v103 = v111;
    (*(v110 + 32))(&v18[v102], v99, v111);
    __swift_storeEnumTagSinglePayload(&v18[v102], 0, 1, v103);
  }

LABEL_39:

  v85 = sub_221BCCD68();
  v86 = sub_221BCDA98();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *&__src[0] = v88;
    *v87 = 136315394;
    *(v87 + 4) = sub_2219A6360(*(v2 + 48), *(v2 + 56), __src);
    *(v87 + 12) = 2080;
    swift_beginAccess();
    sub_221B62018(v18, v81, &qword_27CFBBBE8, &qword_221BE5CA8);
    v89 = sub_221BCD3D8();
    v91 = sub_2219A6360(v89, v90, __src);

    *(v87 + 14) = v91;
    _os_log_impl(&dword_221989000, v85, v86, "[%s] Updated to %s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v88, -1, -1);
    MEMORY[0x223DA4C00](v87, -1, -1);
  }

  swift_beginAccess();
  sub_221B62018(v18, v81, &qword_27CFBBBE8, &qword_221BE5CA8);
  sub_221B2EAA4(v81);
  sub_2219EC58C(v39, &qword_27CFBBBD8);
  sub_2219EC58C(&v125, &qword_27CFBBBF0);
  v49 = v18;
  return sub_2219EC58C(v49, &qword_27CFBBBE8);
}

uint64_t sub_221B3100C(uint64_t a1)
{
  v3 = sub_221BCCEE8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *(v1 + 16);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_221B61ADC;
  *(v10 + 24) = v9;
  aBlock[4] = sub_221B62F28;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221B67C2C;
  aBlock[3] = &block_descriptor_669;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221B31228(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_221BCCEE8();
  (*(*(v7 - 8) + 16))(v6, a2, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  sub_221B2FF5C(v6);
  return sub_2219EC58C(v6, &qword_27CFBBBD8);
}

uint64_t sub_221B31344(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_221B616B8;
  *(v5 + 24) = v4;
  v9[4] = sub_221B616C0;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_221B67C2C;
  v9[3] = &block_descriptor_6;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221B314AC(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  *(&v10 - v5) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
  v8 = a2;
  sub_221B2FF5C(v6);
  return sub_2219EC58C(v6, &qword_27CFBBBD8);
}

uint64_t sub_221B31598(void *a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_221B61AD4;
  *(v5 + 24) = v4;
  v9[4] = sub_221B62F28;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_221B67C2C;
  v9[3] = &block_descriptor_659;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221B31700(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE8, &qword_221BE5CA8);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *(v4 + 36);
  v9 = sub_221BCC558();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = *(v4 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  swift_storeEnumTagMultiPayload();
  *v7 = a2;
  v7[8] = 1;
  v11 = a2;
  return sub_221B2EAA4(v7);
}

uint64_t sub_221B317EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD8, &qword_221BE5C98);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v6 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBE0, &qword_221BE5CA0);
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_221B2FF5C(v3);
  return sub_2219EC58C(v3, &qword_27CFBBBD8);
}

uint64_t sub_221B318AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B318D4, 0, 0);
}

uint64_t sub_221B318D4()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(dword_221BE5B88);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_70_8(v3);

    return v6(v5);
  }

  else
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v8 = swift_allocError();
    *v9 = 0xD00000000000001BLL;
    v9[1] = v0;
    OUTLINED_FUNCTION_71_5(v8, v9);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B319DC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B31AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31AFC, 0, 0);
}

uint64_t sub_221B31AFC()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(dword_221BE5760);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_70_8(v3);

    return v6(v5);
  }

  else
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v8 = swift_allocError();
    *v9 = 0xD00000000000001BLL;
    v9[1] = v0;
    OUTLINED_FUNCTION_71_5(v8, v9);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B31C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31C2C, 0, 0);
}

uint64_t sub_221B31C2C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(dword_221BE5598);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_70_8(v3);

    return v6(v5);
  }

  else
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v8 = swift_allocError();
    *v9 = 0xD00000000000001BLL;
    v9[1] = v0;
    OUTLINED_FUNCTION_71_5(v8, v9);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B31D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31D5C, 0, 0);
}

uint64_t sub_221B31D5C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(dword_221BE5A80);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_70_8(v3);

    return v6(v5);
  }

  else
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v8 = swift_allocError();
    *v9 = 0xD00000000000001BLL;
    v9[1] = v0;
    OUTLINED_FUNCTION_71_5(v8, v9);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B31E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B31E8C, 0, 0);
}

uint64_t sub_221B31E8C()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_164_2();
  if (v1)
  {
    OUTLINED_FUNCTION_109_4(dword_221BE5F80);
    OUTLINED_FUNCTION_389();
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v2 + 64) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_70_8(v3);

    return v6(v5);
  }

  else
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v8 = swift_allocError();
    *v9 = 0xD00000000000001BLL;
    v9[1] = v0;
    OUTLINED_FUNCTION_71_5(v8, v9);
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_221B31F94()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 64);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 72) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B3208C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B320E4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B32140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B32208, 0, 0);
}

uint64_t sub_221B32208()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_10();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v10);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v11);
  v12 = *(MEMORY[0x277D85A10] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 104) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_264_0(v13);
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221B32300()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_392_0();
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B3240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B324D4, 0, 0);
}

uint64_t sub_221B324D4()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_10();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v10);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v11);
  v12 = *(MEMORY[0x277D85A10] + 4);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_35_3();
  *v13 = v14;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221B325D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B326A0, 0, 0);
}

uint64_t sub_221B326A0()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_10();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v10);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v11);
  v12 = *(MEMORY[0x277D85A10] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 104) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_264_0(v13);
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221B32798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B32860, 0, 0);
}

uint64_t sub_221B32860()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_10();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v10);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v11);
  v12 = *(MEMORY[0x277D85A10] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 104) = v13;
  *v13 = v14;
  OUTLINED_FUNCTION_264_0(v13);
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221B32958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_221BCC558();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B32A20, 0, 0);
}

uint64_t sub_221B32A20()
{
  OUTLINED_FUNCTION_384_0();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_87_4();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_58_9(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_10();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_185_3(v10);
  v11 = swift_task_alloc();
  OUTLINED_FUNCTION_176_3(v11);
  v12 = *(MEMORY[0x277D85A10] + 4);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_35_3();
  *v13 = v14;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_91_7();
  OUTLINED_FUNCTION_377_0();

  return MEMORY[0x282200830](v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221B32B24()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 112) = v0;

  if (!v0)
  {
    OUTLINED_FUNCTION_392_0();
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B32C30()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B32CA4()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];

  v7 = *(v6 + 8);
  v8 = OUTLINED_FUNCTION_103_2();
  v9(v8);

  OUTLINED_FUNCTION_25();
  v10 = v0[14];
  OUTLINED_FUNCTION_253();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221B32D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v27 = a3;
  v28 = a2;
  v29 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  sub_221BCC558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  sub_221B62E9C(&qword_27CFB9420, MEMORY[0x277CC95F0]);
  v17 = sub_221BCD2C8();
  *(v5 + 48) = 0;
  *(v5 + 56) = v17;
  *(v5 + 64) = 0;
  *(v5 + 72) = 3;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v18 = v31;
  *(v5 + 32) = v30;
  *(v5 + 40) = v18;
  v19 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v19);
  v20 = v32;
  (*(v9 + 16))(v12, a1, v32);
  v21 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  (*(v9 + 32))(v23 + v21, v12, v20);
  *(v23 + v22) = v5;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v27;
  *v24 = v28;
  v24[1] = v25;

  sub_2219F8C64();

  (*(v9 + 8))(v29, v20);
  return v5;
}

uint64_t sub_221B3300C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC28, &qword_221BE5D38);
  v7[8] = v8;
  v9 = *(v8 - 8);
  v7[9] = v9;
  v10 = *(v9 + 64) + 15;
  v7[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B330DC, 0, 0);
}

uint64_t sub_221B330DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_1_5();
  v17 = v16[10];
  v18 = v16[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  sub_221BCD838();
  v19 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v16[11] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_192_4(v20);
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822003E8](v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221B33178()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B3325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_67();
  v17 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v18 == 255)
  {
    (*(*(v16 + 72) + 8))(*(v16 + 80), *(v16 + 64));
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v34 = *(v16 + 56);
    v35 = sub_221BCCD88();
    __swift_project_value_buffer(v35, qword_27CFDEDC8);
    OUTLINED_FUNCTION_75();

    v36 = sub_221BCCD68();
    v37 = sub_221BCDA58();

    if (os_log_type_enabled(v36, v37))
    {
      v39 = *(v16 + 48);
      v38 = *(v16 + 56);
      v40 = OUTLINED_FUNCTION_74_0();
      v48 = OUTLINED_FUNCTION_68();
      *v40 = 136315138;
      v41 = OUTLINED_FUNCTION_118();
      *(v40 + 4) = sub_2219A6360(v41, v42, v43);
      _os_log_impl(&dword_221989000, v36, v37, "[%s] CallManager update stream completed", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v44 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v44);
    }

    v45 = *(v16 + 80);

    OUTLINED_FUNCTION_4_3();

    return v46();
  }

  else
  {
    v19 = *(v16 + 40);
    os_unfair_lock_lock((v19 + 48));
    v20 = *(v19 + 64);
    *(v19 + 64) = v17;
    v21 = *(v19 + 72);
    *(v19 + 72) = v18;
    sub_221B5D0C8(v17, v18);
    sub_221B5D0A4(v20, v21);
    v22 = *(v19 + 56);

    os_unfair_lock_unlock((v19 + 48));
    sub_221B334A8(v17, v18, v22);
    sub_221B61B30(v17, v18);

    v23 = *(MEMORY[0x277D85798] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v16 + 88) = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_192_4();
    OUTLINED_FUNCTION_65_7();

    return MEMORY[0x2822003E8](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

void sub_221B334A8(char *a1, char a2, uint64_t a3)
{
  v4 = v3;
  LOBYTE(v6) = a2;
  v63 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v64 = *(v62 - 8);
  v7 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v66 = type metadata accessor for RemoteAppIntentsActor();
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC78, &qword_221BE5DB8);
  v68 = sub_221B61E70(&qword_27CFBBC80, &qword_27CFBBC78);
  KeyPath = swift_getKeyPath();

  v65 = a3;
  v17 = sub_221B36F90(a3, KeyPath);

  if (!v17[2])
  {

    return;
  }

  if (qword_27CFB7378 != -1)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v18 = sub_221BCCD88();
    __swift_project_value_buffer(v18, qword_27CFDEDC8);

    v19 = v63;
    sub_221B5D0C8(v63, v6);

    v20 = sub_221BCCD68();
    v21 = sub_221BCDA58();

    sub_221B5D0A4(v19, v6);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v69[0] = v61;
      *v22 = 136315650;
      *(v22 + 4) = sub_2219A6360(*(v4 + 16), *(v4 + 24), v69);
      *(v22 + 12) = 2080;
      v23 = v19;
      v24 = v6;
      v25 = sub_221B2E4E8(v23, v6);
      v27 = sub_2219A6360(v25, v26, v69);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      v28 = sub_221BCC558();
      v29 = MEMORY[0x223DA33D0](v17, v28);
      v6 = v30;

      v31 = sub_2219A6360(v29, v6, v69);

      *(v22 + 24) = v31;
      _os_log_impl(&dword_221989000, v20, v21, "[%s] Applying state %s to %s", v22, 0x20u);
      v32 = v61;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v32, -1, -1);
      MEMORY[0x223DA4C00](v22, -1, -1);
    }

    else
    {
      v24 = v6;
    }

    switch(v24)
    {
      case 1:
        v40 = v65 + 64;
        v41 = 1 << *(v65 + 32);
        v42 = -1;
        if (v41 < 64)
        {
          v42 = ~(-1 << v41);
        }

        v12 = v42 & *(v65 + 64);
        v4 = (v41 + 63) >> 6;

        i = 0;
        v17 = &unk_221BE8C60;
        v15 = v63;
        if (v12)
        {
          goto LABEL_21;
        }

        while (1)
        {
          do
          {
            v44 = i + 1;
            if (__OFADD__(i, 1))
            {
              __break(1u);
              goto LABEL_40;
            }

            if (v44 >= v4)
            {
              goto LABEL_38;
            }

            v12 = *(v40 + 8 * v44);
            ++i;
          }

          while (!v12);
          for (i = v44; ; v44 = i)
          {
            v45 = __clz(__rbit64(v12));
            v12 &= v12 - 1;
            v46 = sub_221B62018(*(v65 + 56) + *(v64 + 72) * (v45 | (v44 << 6)), v9, &qword_27CFB76C8, &unk_221BE8C60);
            v47 = *(v9 + 8);
            (*v9)(v46);
            v48 = v9 + *(v62 + 36);
            v49 = *(v48 + 8);
            (*v48)(v15);
            sub_2219EC58C(v9, &qword_27CFB76C8);
            if (!v12)
            {
              break;
            }

LABEL_21:
            ;
          }
        }

      case 2:
        v50 = v65 + 64;
        v51 = 1 << *(v65 + 32);
        v52 = -1;
        if (v51 < 64)
        {
          v52 = ~(-1 << v51);
        }

        v9 = v52 & *(v65 + 64);
        v4 = (v51 + 63) >> 6;

        j = 0;
        v17 = &unk_221BE8C60;
        v15 = v63;
        if (v9)
        {
          goto LABEL_31;
        }

LABEL_32:
        v54 = j + 1;
        if (__OFADD__(j, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          swift_once();
          continue;
        }

        if (v54 < v4)
        {
          v9 = *(v50 + 8 * v54);
          ++j;
          if (v9)
          {
            for (j = v54; ; v54 = j)
            {
              v55 = __clz(__rbit64(v9));
              v9 &= v9 - 1;
              v56 = sub_221B62018(*(v65 + 56) + *(v64 + 72) * (v55 | (v54 << 6)), v12, &qword_27CFB76C8, &unk_221BE8C60);
              v57 = *(v12 + 8);
              (*v12)(v56);
              v58 = v12 + *(v62 + 40);
              v59 = *(v58 + 8);
              (*v58)(v15);
              sub_2219EC58C(v12, &qword_27CFB76C8);
              if (!v9)
              {
                break;
              }

LABEL_31:
              ;
            }
          }

          goto LABEL_32;
        }

LABEL_38:

        return;
      case 3:
        return;
      default:
        v33 = v65 + 64;
        v34 = 1 << *(v65 + 32);
        v35 = -1;
        if (v34 < 64)
        {
          v35 = ~(-1 << v34);
        }

        v9 = v35 & *(v65 + 64);
        v4 = (v34 + 63) >> 6;

        k = 0;
        v17 = &unk_221BE8C60;
        if (v9)
        {
          goto LABEL_11;
        }

        while (2)
        {
          v37 = k + 1;
          if (__OFADD__(k, 1))
          {
            goto LABEL_41;
          }

          if (v37 < v4)
          {
            v9 = *(v33 + 8 * v37);
            ++k;
            if (v9)
            {
              for (k = v37; ; v37 = k)
              {
                v38 = __clz(__rbit64(v9));
                v9 &= v9 - 1;
                sub_221B62018(*(v65 + 56) + *(v64 + 72) * (v38 | (v37 << 6)), v15, &qword_27CFB76C8, &unk_221BE8C60);
                v12 = *(v15 + 2);
                v39 = *(v15 + 3);

                sub_2219EC58C(v15, &qword_27CFB76C8);
                v69[0] = v63;
                (v12)(v69);

                if (!v9)
                {
                  break;
                }

LABEL_11:
                ;
              }
            }

            continue;
          }

          goto LABEL_38;
        }
    }
  }
}

void sub_221B33B40(void *a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v73 = a1;
  v4 = sub_221BCC558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v9 = *(v74 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v69 = &v65 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v65 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - v17;
  v19 = *(a3 + 16);
  v78 = MEMORY[0x277D84F90];
  sub_2219A3154(0, v19, 0);
  v20 = v78;
  v72 = v19;
  v65 = v9;
  v66 = a3;
  if (v19)
  {
    v21 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v76 = *(v9 + 72);
    v77 = v5;
    v22 = (v5 + 16);
    v75 = v5 + 32;
    v23 = v74;
    do
    {
      sub_221B62018(v21, v18, &qword_27CFB76C8, &unk_221BE8C60);
      (*v22)(v8, &v18[*(v23 + 32)], v4);
      sub_2219EC58C(v18, &qword_27CFB76C8);
      v78 = v20;
      v24 = v4;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2219A3154(v25 > 1, v26 + 1, 1);
        v23 = v74;
        v20 = v78;
      }

      *(v20 + 16) = v26 + 1;
      (*(v77 + 32))(v20 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v26, v8, v24);
      v21 += v76;
      --v19;
      v4 = v24;
    }

    while (v19);
  }

  if (*(v20 + 16))
  {
    v27 = v4;
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v28 = sub_221BCCD88();
    __swift_project_value_buffer(v28, qword_27CFDEDC8);
    v29 = v67;

    v30 = v73;
    v31 = v70;
    sub_221B5D0C8(v73, v70);

    v32 = sub_221BCCD68();
    v33 = sub_221BCDA58();

    sub_221B5D0A4(v30, v31);

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v78 = v35;
      *v34 = 136315650;
      *(v34 + 4) = sub_2219A6360(*(v29 + 16), *(v29 + 24), &v78);
      *(v34 + 12) = 2080;
      v36 = sub_221B2E4E8(v30, v31);
      v38 = sub_2219A6360(v36, v37, &v78);

      *(v34 + 14) = v38;
      *(v34 + 22) = 2080;
      v39 = MEMORY[0x223DA33D0](v20, v27);
      v41 = v40;

      v42 = sub_2219A6360(v39, v41, &v78);

      *(v34 + 24) = v42;
      _os_log_impl(&dword_221989000, v32, v33, "[%s] Applying state %s to %s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v35, -1, -1);
      MEMORY[0x223DA4C00](v34, -1, -1);
    }

    else
    {
    }

    v44 = v71;
    v43 = v72;
    v45 = v73;
    v46 = v31;
    v47 = v68;
    v48 = v69;
    switch(v46)
    {
      case 1:
        if (v72)
        {
          v53 = &v71[*(v74 + 36)];
          v54 = v66 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
          v55 = *(v65 + 72);
          do
          {
            v56 = sub_221B62018(v54, v44, &qword_27CFB76C8, &unk_221BE8C60);
            v57 = *(v44 + 8);
            (*v44)(v56);
            v58 = *(v53 + 1);
            (*v53)(v45);
            sub_2219EC58C(v44, &qword_27CFB76C8);
            v54 += v55;
            --v43;
          }

          while (v43);
        }

        break;
      case 2:
        if (v72)
        {
          v59 = &v69[*(v74 + 40)];
          v60 = v66 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
          v61 = *(v65 + 72);
          do
          {
            v62 = sub_221B62018(v60, v48, &qword_27CFB76C8, &unk_221BE8C60);
            v63 = *(v48 + 8);
            (*v48)(v62);
            v64 = *(v59 + 1);
            (*v59)(v45);
            sub_2219EC58C(v48, &qword_27CFB76C8);
            v60 += v61;
            --v43;
          }

          while (v43);
        }

        break;
      case 3:
        return;
      default:
        if (v72)
        {
          v49 = v66 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
          v50 = *(v65 + 72);
          do
          {
            sub_221B62018(v49, v47, &qword_27CFB76C8, &unk_221BE8C60);
            v52 = *(v47 + 16);
            v51 = *(v47 + 24);

            sub_2219EC58C(v47, &qword_27CFB76C8);
            v78 = v45;
            v52(&v78);

            v49 += v50;
            --v43;
          }

          while (v43);
        }

        break;
    }
  }

  else
  {
  }
}

uint64_t sub_221B341E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B3420C, 0, 0);
}

uint64_t sub_221B3420C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v11 = *(v10 + 40);
  v12 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v12);
  v13 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 72) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_264_0(v14);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_221B342D4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B343F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B34418, 0, 0);
}

uint64_t sub_221B34418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v11 = *(v10 + 40);
  v12 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v12);
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v10 + 72) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_35_3();
  *v14 = v15;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_221B344EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B34514, 0, 0);
}

uint64_t sub_221B34514()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v2);
  v3 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 72) = v4;
  *v4 = v5;
  OUTLINED_FUNCTION_264_0(v4);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_221B345DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B34604, 0, 0);
}

uint64_t sub_221B34604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v11 = *(v10 + 40);
  v12 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v12);
  v13 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 72) = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_264_0(v14);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_221B346CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_221B346F4, 0, 0);
}

uint64_t sub_221B346F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v11 = *(v10 + 40);
  v12 = OUTLINED_FUNCTION_390_0();
  OUTLINED_FUNCTION_51_7(v12);
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v10 + 72) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_35_3();
  *v14 = v15;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_178_4();

  return MEMORY[0x2822008A0](v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_221B347C8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    OUTLINED_FUNCTION_25();

    return v13();
  }
}

uint64_t sub_221B348E4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_221B34940(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v66 = a5;
  v69 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v70 = v9 - 8;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v58 - v12;
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v64 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB80, &qword_221BE5BA0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v58 - v23;
  (*(v24 + 16))(v22);
  v25 = *&a2[6]._os_unfair_lock_opaque;
  v65 = *&a2[4]._os_unfair_lock_opaque;
  v61 = v25;
  v72 = *(v14 + 16);
  v68 = a3;
  v72(v19, a3, v13);
  v26 = *&a2[10]._os_unfair_lock_opaque;
  v63 = *&a2[8]._os_unfair_lock_opaque;
  v60 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v66;
  *(v27 + 24) = a6;
  v28 = swift_allocObject();
  swift_weakInit();
  v72(v16, a3, v13);
  v29 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = v16;
  v32 = a2;
  v33 = v62;
  (*(v14 + 32))(v30 + v29, v31, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB88, &qword_221BE5BB8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v69;

  v38 = v61;

  v39 = v60;

  sub_221B27210(v67, v65, v38, v64, v37, v63, v39, &unk_221BE5BB0, v27, sub_221B62F08, v30, &qword_27CFBBB80, &qword_221BE5BA0, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v41 = v40;
  *v33 = sub_221B62F0C;
  *(v33 + 1) = v40;
  *(v33 + 2) = sub_221B61174;
  *(v33 + 3) = v40;
  v42 = v70;
  v72(&v33[*(v70 + 40)], v40 + *(*v40 + 120), v13);
  v43 = &v33[*(v42 + 44)];
  *v43 = sub_221B6117C;
  v43[1] = v41;
  v44 = &v33[*(v42 + 48)];
  *v44 = sub_221B61198;
  v44[1] = v41;
  swift_retain_n();
  os_unfair_lock_lock(v32 + 12);
  sub_221B36700(&v32[14], v32, v68, v33, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v50 = v49;
  v52 = v51;
  os_unfair_lock_unlock(v32 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v53 = *(v71 + 72);
  v54 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_221BD19E0;
  sub_221B62018(v33, v55 + v54, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v50, v52, v55);
  sub_221B5D0A4(v50, v52);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v33, &qword_27CFB76C8);
}

uint64_t sub_221B34E88(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v66 = a5;
  v69 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v70 = v9 - 8;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v58 - v12;
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v64 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB78F8, &qword_221BD19B0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v58 - v23;
  (*(v24 + 16))(v22);
  v25 = *&a2[6]._os_unfair_lock_opaque;
  v65 = *&a2[4]._os_unfair_lock_opaque;
  v61 = v25;
  v72 = *(v14 + 16);
  v68 = a3;
  v72(v19, a3, v13);
  v26 = *&a2[10]._os_unfair_lock_opaque;
  v63 = *&a2[8]._os_unfair_lock_opaque;
  v60 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v66;
  *(v27 + 24) = a6;
  v28 = swift_allocObject();
  swift_weakInit();
  v72(v16, a3, v13);
  v29 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = v16;
  v32 = a2;
  v33 = v62;
  (*(v14 + 32))(v30 + v29, v31, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB50, &qword_221BE5788);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v69;

  v38 = v61;

  v39 = v60;

  sub_221B27210(v67, v65, v38, v64, v37, v63, v39, &unk_221BE5780, v27, sub_221B62F08, v30, &qword_27CFB78F8, &qword_221BD19B0, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v41 = v40;
  *v33 = sub_221B62F0C;
  *(v33 + 1) = v40;
  *(v33 + 2) = sub_221B5DE44;
  *(v33 + 3) = v40;
  v42 = v70;
  v72(&v33[*(v70 + 40)], v40 + *(*v40 + 120), v13);
  v43 = &v33[*(v42 + 44)];
  *v43 = sub_221B5DE4C;
  v43[1] = v41;
  v44 = &v33[*(v42 + 48)];
  *v44 = sub_221B5DE50;
  v44[1] = v41;
  swift_retain_n();
  os_unfair_lock_lock(v32 + 12);
  sub_221B36700(&v32[14], v32, v68, v33, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v50 = v49;
  v52 = v51;
  os_unfair_lock_unlock(v32 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v53 = *(v71 + 72);
  v54 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_221BD19E0;
  sub_221B62018(v33, v55 + v54, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v50, v52, v55);
  sub_221B5D0A4(v50, v52);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v33, &qword_27CFB76C8);
}

uint64_t sub_221B353D0(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v66 = a5;
  v69 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v70 = v9 - 8;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v58 - v12;
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v64 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7898, &qword_221BD1930);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v58 - v23;
  (*(v24 + 16))(v22);
  v25 = *&a2[6]._os_unfair_lock_opaque;
  v65 = *&a2[4]._os_unfair_lock_opaque;
  v61 = v25;
  v72 = *(v14 + 16);
  v68 = a3;
  v72(v19, a3, v13);
  v26 = *&a2[10]._os_unfair_lock_opaque;
  v63 = *&a2[8]._os_unfair_lock_opaque;
  v60 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v66;
  *(v27 + 24) = a6;
  v28 = swift_allocObject();
  swift_weakInit();
  v72(v16, a3, v13);
  v29 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = v16;
  v32 = a2;
  v33 = v62;
  (*(v14 + 32))(v30 + v29, v31, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE0, &qword_221BE55D0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v69;

  v38 = v61;

  v39 = v60;

  sub_221B27210(v67, v65, v38, v64, v37, v63, v39, &unk_221BE55C8, v27, sub_221B62F08, v30, &qword_27CFB7898, &qword_221BD1930, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v41 = v40;
  *v33 = sub_221B62F0C;
  *(v33 + 1) = v40;
  *(v33 + 2) = sub_221B5D06C;
  *(v33 + 3) = v40;
  v42 = v70;
  v72(&v33[*(v70 + 40)], v40 + *(*v40 + 120), v13);
  v43 = &v33[*(v42 + 44)];
  *v43 = sub_221B5D074;
  v43[1] = v41;
  v44 = &v33[*(v42 + 48)];
  *v44 = sub_221B5D078;
  v44[1] = v41;
  swift_retain_n();
  os_unfair_lock_lock(v32 + 12);
  sub_221B36700(&v32[14], v32, v68, v33, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v50 = v49;
  v52 = v51;
  os_unfair_lock_unlock(v32 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v53 = *(v71 + 72);
  v54 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_221BD19E0;
  sub_221B62018(v33, v55 + v54, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v50, v52, v55);
  sub_221B5D0A4(v50, v52);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v33, &qword_27CFB76C8);
}

uint64_t sub_221B35918(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v66 = a5;
  v69 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v70 = v9 - 8;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v58 - v12;
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v64 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB68, &qword_221BE5A98);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v58 - v23;
  (*(v24 + 16))(v22);
  v25 = *&a2[6]._os_unfair_lock_opaque;
  v65 = *&a2[4]._os_unfair_lock_opaque;
  v61 = v25;
  v72 = *(v14 + 16);
  v68 = a3;
  v72(v19, a3, v13);
  v26 = *&a2[10]._os_unfair_lock_opaque;
  v63 = *&a2[8]._os_unfair_lock_opaque;
  v60 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v66;
  *(v27 + 24) = a6;
  v28 = swift_allocObject();
  swift_weakInit();
  v72(v16, a3, v13);
  v29 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = v16;
  v32 = a2;
  v33 = v62;
  (*(v14 + 32))(v30 + v29, v31, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB70, &qword_221BE5AB0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v69;

  v38 = v61;

  v39 = v60;

  sub_221B27210(v67, v65, v38, v64, v37, v63, v39, &unk_221BE5AA8, v27, sub_221B62F08, v30, &qword_27CFBBB68, &qword_221BE5A98, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v41 = v40;
  *v33 = sub_221B62F0C;
  *(v33 + 1) = v40;
  *(v33 + 2) = sub_221B60950;
  *(v33 + 3) = v40;
  v42 = v70;
  v72(&v33[*(v70 + 40)], v40 + *(*v40 + 120), v13);
  v43 = &v33[*(v42 + 44)];
  *v43 = sub_221B60958;
  v43[1] = v41;
  v44 = &v33[*(v42 + 48)];
  *v44 = sub_221B6095C;
  v44[1] = v41;
  swift_retain_n();
  os_unfair_lock_lock(v32 + 12);
  sub_221B36700(&v32[14], v32, v68, v33, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v50 = v49;
  v52 = v51;
  os_unfair_lock_unlock(v32 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v53 = *(v71 + 72);
  v54 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_221BD19E0;
  sub_221B62018(v33, v55 + v54, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v50, v52, v55);
  sub_221B5D0A4(v50, v52);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v33, &qword_27CFB76C8);
}

uint64_t sub_221B35E60(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a6;
  v66 = a5;
  v69 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v10 = *(v9 - 8);
  v70 = v9 - 8;
  v71 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = (&v58 - v12);
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v64 = &v58 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB0, &qword_221BE5F98);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v67 = &v58 - v23;
  (*(v24 + 16))(v22);
  v25 = *&a2[6]._os_unfair_lock_opaque;
  v65 = *&a2[4]._os_unfair_lock_opaque;
  v61 = v25;
  v72 = *(v14 + 16);
  v68 = a3;
  v72(v19, a3, v13);
  v26 = *&a2[10]._os_unfair_lock_opaque;
  v63 = *&a2[8]._os_unfair_lock_opaque;
  v60 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v66;
  *(v27 + 24) = a6;
  v28 = swift_allocObject();
  swift_weakInit();
  v72(v16, a3, v13);
  v29 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = v16;
  v32 = a2;
  v33 = v62;
  (*(v14 + 32))(v30 + v29, v31, v13);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBCB8, &qword_221BE5FB0);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = v69;

  v38 = v61;

  v39 = v60;

  sub_221B27210(v67, v65, v38, v64, v37, v63, v39, &unk_221BE5FA8, v27, sub_221B6289C, v30, &qword_27CFBBCB0, &qword_221BE5F98, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  v41 = v40;
  *v33 = sub_221B628A0;
  v33[1] = v40;
  v33[2] = sub_221B628C4;
  v33[3] = v40;
  v42 = v70;
  v72(v33 + *(v70 + 40), v40 + *(*v40 + 120), v13);
  v43 = (v33 + *(v42 + 44));
  *v43 = sub_221B628CC;
  v43[1] = v41;
  v44 = (v33 + *(v42 + 48));
  *v44 = sub_221B628E8;
  v44[1] = v41;
  swift_retain_n();
  os_unfair_lock_lock(v32 + 12);
  sub_221B36700(&v32[14], v32, v68, v33, v45, v46, v47, v48, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);
  v50 = v49;
  v52 = v51;
  os_unfair_lock_unlock(v32 + 12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAE8, &unk_221BE55D8);
  v53 = *(v71 + 72);
  v54 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_221BD19E0;
  sub_221B62018(v33, v55 + v54, &qword_27CFB76C8, &unk_221BE8C60);
  sub_221B33B40(v50, v52, v55);
  sub_221B5D0A4(v50, v52);

  swift_setDeallocating();
  sub_221B58C10();
  return sub_2219EC58C(v33, &qword_27CFB76C8);
}

os_unfair_lock_s *sub_221B363A8()
{
  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 12);
    OUTLINED_FUNCTION_207_4();
    sub_221B36428(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, vars0, vars8);
    os_unfair_lock_unlock(v1 + 12);
  }

  return result;
}

void sub_221B36428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v61 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD8, &unk_221BE55B0);
  OUTLINED_FUNCTION_8_1(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v31);
  v60 = v59 - v32;
  v33 = sub_221BCC558();
  v34 = OUTLINED_FUNCTION_0_2(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  v40 = v59 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_1_38();
    swift_once();
  }

  v41 = sub_221BCCD88();
  __swift_project_value_buffer(v41, qword_27CFDEDC8);
  (*(v36 + 16))(v40, v24, v33);

  v42 = sub_221BCCD68();
  v43 = sub_221BCDA58();

  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_20_6();
    v44 = swift_slowAlloc();
    v59[1] = v20;
    v45 = v44;
    OUTLINED_FUNCTION_19_6();
    v46 = swift_slowAlloc();
    v59[0] = v24;
    a10 = v46;
    *v45 = 136315394;
    *(v45 + 4) = sub_2219A6360(*(v26 + 16), *(v26 + 24), &a10);
    *(v45 + 12) = 2080;
    OUTLINED_FUNCTION_0_44();
    sub_221B62E9C(v47, v48);
    sub_221BCE168();
    OUTLINED_FUNCTION_40_4();
    v49 = *(v36 + 8);
    v50 = OUTLINED_FUNCTION_221();
    v51(v50);
    v52 = OUTLINED_FUNCTION_194_3();
    sub_2219A6360(v52, v53, v54);
    OUTLINED_FUNCTION_124_2();

    *(v45 + 14) = v40;
    _os_log_impl(&dword_221989000, v42, v43, "[%s] Removing <%s> from active calls", v45, 0x16u);
    swift_arrayDestroy();
    v24 = v59[0];
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {

    v55 = *(v36 + 8);
    v56 = OUTLINED_FUNCTION_221();
    v57(v56);
  }

  v58 = v60;
  sub_2219A09DC(v24, v60);
  sub_2219EC58C(v58, &qword_27CFBBAD8);
  OUTLINED_FUNCTION_53_5();
}

void sub_221B36700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_55_4();
  a19 = v21;
  a20 = v22;
  v67 = v24;
  v68 = v23;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD8, &unk_221BE55B0);
  OUTLINED_FUNCTION_8_1(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  v66 = v62 - v33;
  v34 = sub_221BCC558();
  v35 = OUTLINED_FUNCTION_0_2(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_9_5();
  v64 = v40 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = v62 - v43;
  if (qword_27CFB7378 != -1)
  {
    OUTLINED_FUNCTION_1_38();
    swift_once();
  }

  v45 = sub_221BCCD88();
  __swift_project_value_buffer(v45, qword_27CFDEDC8);
  v46 = *(v37 + 16);
  v65 = v26;
  v63 = v46;
  v46(v44, v26, v34);

  v47 = sub_221BCCD68();
  v48 = sub_221BCDA58();

  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_20_6();
    swift_slowAlloc();
    v62[1] = v20;
    OUTLINED_FUNCTION_67_6();
    v62[0] = swift_slowAlloc();
    a10 = v62[0];
    *v20 = 136315394;
    v49 = sub_2219A6360(*(v28 + 16), *(v28 + 24), &a10);
    OUTLINED_FUNCTION_327_0(v49);
    OUTLINED_FUNCTION_0_44();
    sub_221B62E9C(v50, v51);
    sub_221BCE168();
    OUTLINED_FUNCTION_40_4();
    (*(v37 + 8))(v44, v34);
    v52 = OUTLINED_FUNCTION_194_3();
    v55 = sub_2219A6360(v52, v53, v54);

    *(v20 + 14) = v55;
    _os_log_impl(&dword_221989000, v47, v48, "[%s] Enqueuing call <%s> to active calls", v20, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  else
  {

    (*(v37 + 8))(v44, v34);
  }

  v56 = v64;
  v63(v64, v65, v34);
  v57 = v66;
  sub_221B62018(v67, v66, &qword_27CFB76C8, &unk_221BE8C60);
  v58 = OUTLINED_FUNCTION_0_0();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v60);
  v61 = v68;
  sub_221BC5BD0(v57, v56);
  sub_221B5D0C8(*(v61 + 8), *(v61 + 16));
  OUTLINED_FUNCTION_53_5();
}

void sub_221B36A58()
{
  OUTLINED_FUNCTION_21();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAD8, &unk_221BE55B0);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_9_5();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_221BCC558();
  v13 = OUTLINED_FUNCTION_0_2(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_1_38();
      swift_once();
    }

    v22 = sub_221BCCD88();
    OUTLINED_FUNCTION_178(v22, qword_27CFDEDC8);
    (*(v15 + 16))(v19, v1, v12);

    v23 = sub_221BCCD68();
    v24 = sub_221BCDA58();

    if (os_log_type_enabled(v23, v24))
    {
      OUTLINED_FUNCTION_20_6();
      v25 = swift_slowAlloc();
      v54 = v11;
      v26 = v25;
      OUTLINED_FUNCTION_19_6();
      v52 = swift_slowAlloc();
      v55 = v52;
      *v26 = 136315394;
      v53 = v1;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);

      v29 = OUTLINED_FUNCTION_70();
      sub_2219A6360(v29, v30, v31);
      OUTLINED_FUNCTION_97_1();

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;
      OUTLINED_FUNCTION_0_44();
      sub_221B62E9C(v32, v33);
      v34 = sub_221BCE168();
      v35 = *(v15 + 8);
      v36 = OUTLINED_FUNCTION_14();
      v37(v36);
      v38 = OUTLINED_FUNCTION_0_0();
      sub_2219A6360(v38, v39, v40);
      OUTLINED_FUNCTION_66_2();

      *(v26 + 14) = v34;
      v1 = v53;
      _os_log_impl(&dword_221989000, v23, v24, "[%s] Cancelling <%s> (parent cancelled)", v26, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
      v11 = v54;
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      v41 = *(v15 + 8);
      v42 = OUTLINED_FUNCTION_14();
      v43(v42);
    }

    os_unfair_lock_lock((v21 + 48));
    sub_221B36EB4((v21 + 56), v1, v11);
    os_unfair_lock_unlock((v21 + 48));
    sub_221B62018(v11, v8, &qword_27CFBBAD8, &unk_221BE55B0);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
    if (__swift_getEnumTagSinglePayload(v8, 1, v44) == 1)
    {
      sub_2219EC58C(v11, &qword_27CFBBAD8);

      sub_2219EC58C(v8, &qword_27CFBBAD8);
    }

    else
    {
      v45 = v8 + *(v44 + 36);
      v47 = *v45;
      v46 = *(v45 + 8);

      sub_2219EC58C(v8, &qword_27CFB76C8);
      sub_221BCD7B8();
      OUTLINED_FUNCTION_76_4();
      sub_221B62E9C(v48, v49);
      OUTLINED_FUNCTION_15_0();
      v50 = swift_allocError();
      sub_221BCD268();
      v47(v50);

      sub_2219EC58C(v11, &qword_27CFBBAD8);
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_221B36EB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_221B9EA30(a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
    OUTLINED_FUNCTION_2_1(v9);
    sub_221B62018(v8 + *(v10 + 72) * v7, a3, &qword_27CFB76C8, &unk_221BE8C60);
    v11 = a3;
    v12 = 0;
    v13 = 1;
    v14 = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
    OUTLINED_FUNCTION_108();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_221B36F90(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v49 = sub_221BCC558();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v49);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v40 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB76C8, &unk_221BE8C60);
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v42 = &v39 - v13;
  MEMORY[0x28223BE20](v14);
  v41 = &v39 - v15;
  v16 = *(a1 + 16);
  v53 = MEMORY[0x277D84F90];
  sub_2219A3154(0, v16, 0);
  v17 = a1 + 64;
  v18 = v53;
  v19 = -1;
  v20 = -1 << *(a1 + 32);
  if (-v20 < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(a1 + 64);
  v22 = (63 - v20) >> 6;
  v50 = a1;
  v48 = v3;
  v45 = v16;
  if (v16)
  {
    v43 = v3 + 32;
    v44 = v6;

    v23 = 0;
    v16 = 0;
    v24 = v44;
    while (1)
    {
      v52 = v18;
      if (!v21)
      {
        break;
      }

LABEL_10:
      v26 = *(a1 + 56);
      v27 = v46;
      sub_221B62018(v26 + *(v47 + 72) * (__clz(__rbit64(v21)) | (v16 << 6)), v46, &qword_27CFB76C8, &unk_221BE8C60);
      swift_getAtKeyPath();
      sub_2219EC58C(v27, &qword_27CFB76C8);
      v18 = v52;
      v53 = v52;
      v29 = *(v52 + 16);
      v28 = *(v52 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_2219A3154(v28 > 1, v29 + 1, 1);
        v18 = v53;
      }

      ++v23;
      v21 &= v21 - 1;
      *(v18 + 16) = v29 + 1;
      v3 = v48;
      (*(v48 + 32))(v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29, v24, v49);
      a1 = v50;
      if (v23 == v45)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v25 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_27;
      }

      v21 = *(v17 + 8 * v25);
      ++v16;
      if (v21)
      {
        v16 = v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_15:
    v52 = v3 + 32;
    v30 = v40;
    if (v21)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v31 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v31 >= v22)
      {

        return v18;
      }

      v21 = *(v17 + 8 * v31);
      ++v16;
      if (v21)
      {
        v16 = v31;
        do
        {
LABEL_20:
          v32 = *(a1 + 56) + *(v47 + 72) * (__clz(__rbit64(v21)) | (v16 << 6));
          v33 = v42;
          sub_221B62018(v32, v42, &qword_27CFB76C8, &unk_221BE8C60);
          v34 = v33;
          v35 = v41;
          sub_221B61EB0(v34, v41, &qword_27CFB76C8, &unk_221BE8C60);
          swift_getAtKeyPath();
          sub_2219EC58C(v35, &qword_27CFB76C8);
          v53 = v18;
          v37 = *(v18 + 16);
          v36 = *(v18 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_2219A3154(v36 > 1, v37 + 1, 1);
            v18 = v53;
          }

          v21 &= v21 - 1;
          *(v18 + 16) = v37 + 1;
          (*(v48 + 32))(v18 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37, v30, v49);
          a1 = v50;
        }

        while (v21);
      }
    }
  }

  __break(1u);
LABEL_27:

  __break(1u);
  return result;
}

uint64_t sub_221B3743C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 368) = v7;
  *(v1 + 240) = v8;
  *(v1 + 248) = v2;
  *(v1 + 224) = v9;
  *(v1 + 232) = v10;
  *(v1 + 216) = v11;
  *(v1 + 256) = *v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_210();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBA0, &qword_221BE5C28);
  OUTLINED_FUNCTION_8_1(v15);
  v17 = *(v16 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_210();
  *(v1 + 280) = *v6;
  *(v1 + 370) = *(v6 + 16);
  *(v1 + 371) = *v4;
  *(v1 + 372) = v4[1];
  v18 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_221B37554()
{
  v117 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 370);
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBA8, &qword_221BE5C30);
  OUTLINED_FUNCTION_10();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v3 + 208) = 0;
  *(v3 + 216) = v6;
  v7 = sub_221BC5570(6);
  v9 = v8;
  v114 = v2;
  v115 = v1;
  v116 = v5;
  sub_2219EBEE4(v4, v0 + 16);
  v113[0] = 91;
  v113[1] = 0xE100000000000000;
  sub_221A1C70C(v2, v1, v5);
  v10 = OUTLINED_FUNCTION_17_6();
  MEMORY[0x223DA31F0](v10);
  MEMORY[0x223DA31F0](8285, 0xE200000000000000);
  v11 = _s15DeviceDiscoveryCMa(0);
  OUTLINED_FUNCTION_174_2(v11);
  v12 = swift_allocObject();
  v13 = sub_221B6855C(&v114, v0 + 16, 91, 0xE100000000000000, v12);
  *(v0 + 296) = v13;
  v14 = v13;
  v107 = v3;
  LOBYTE(v3) = *(v0 + 372);
  LOBYTE(v4) = *(v0 + 371);
  v15 = *(v0 + 240);
  v16 = *(v0 + 248);
  v17 = *(v0 + 368);
  v19 = *(v0 + 224);
  v18 = *(v0 + 232);
  *(v16 + 32) = *(v0 + 216);
  *(v16 + 40) = v19;
  *(v16 + 48) = v14;
  sub_2219A1B08(v18, v16 + 56);
  v111 = v7;
  *(v16 + 96) = v7;
  *(v16 + 104) = v9;
  *(v16 + 128) = v4;
  *(v16 + 129) = v3;
  sub_2219EBEE4(v15, v16 + 136);
  *(v16 + 200) = v17;
  v20 = qword_27CFB73C0;

  v112 = v14;

  v110 = v9;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v22 = *(v0 + 280);
  v21 = *(v0 + 288);
  v23 = *(v0 + 240);
  v24 = *(v0 + 248);
  v25 = *(v0 + 224);
  v26 = *(v0 + 370);
  v27 = sub_221BCCD88();
  *(v0 + 304) = __swift_project_value_buffer(v27, qword_27CFDEE88);
  sub_2219EBEE4(v23, v0 + 80);
  sub_221A1C70C(v22, v21, v26);

  v28 = sub_221BCCD68();
  v29 = sub_221BCDA98();

  sub_2219A1B7C(v22, v21, v26);
  if (os_log_type_enabled(v28, v29))
  {
    v105 = v29;
    log = v28;
    v30 = OUTLINED_FUNCTION_296_1();
    v113[0] = swift_slowAlloc();
    *v30 = 136315906;
    v32 = *(v16 + 96);
    v31 = *(v16 + 104);

    v33 = OUTLINED_FUNCTION_70();
    sub_2219A6360(v33, v34, v35);
    OUTLINED_FUNCTION_97_1();

    *(v30 + 4) = v32;
    *(v30 + 12) = 2080;
    sub_2219EBEE4(v0 + 80, v0 + 144);
    v36 = *(v0 + 200);
    if (v36)
    {
      v37 = *(v0 + 192);
      v114 = 0;
      v115 = 0xE000000000000000;
      sub_221BCDE68();

      v114 = 0xD00000000000001ALL;
      v115 = 0x8000000221BF0BB0;
      MEMORY[0x223DA31F0](v37, v36);
      MEMORY[0x223DA31F0](62, 0xE100000000000000);
      v39 = v114;
      v38 = v115;
    }

    else
    {
      v38 = 0xED00003E72657355;
      v39 = 0x746E65727275433CLL;
    }

    v42 = *(v0 + 280);
    v41 = *(v0 + 288);
    v43 = *(v0 + 216);
    v44 = *(v0 + 224);
    v45 = *(v0 + 370);
    sub_2219EBE90(v0 + 144);
    sub_2219EBE90(v0 + 80);
    v46 = sub_2219A6360(v39, v38, v113);

    *(v30 + 14) = v46;
    *(v30 + 22) = 2080;
    sub_2219A6360(v43, v44, v113);
    OUTLINED_FUNCTION_124_2();

    *(v30 + 24) = v38;
    *(v30 + 32) = 2080;
    v114 = v42;
    v115 = v41;
    v116 = v45;
    sub_221A1C70C(v42, v41, v45);
    v47 = IntentsServices.DevicePredicate.description.getter();
    sub_2219A1B7C(v114, v115, v116);
    v48 = OUTLINED_FUNCTION_70();
    sub_2219A6360(v48, v49, v50);
    OUTLINED_FUNCTION_97_1();

    *(v30 + 34) = v47;
    _os_log_impl(&dword_221989000, log, v105, "[%s] Initializing a remote dispatcher for: %s, clientLabel=%s, devicePredicate=%s", v30, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    v51 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v51);
  }

  else
  {
    v40 = *(v0 + 224);

    sub_2219EBE90(v0 + 80);
  }

  if (qword_27CFB7268 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Entitlement.Validator();
  OUTLINED_FUNCTION_178(v52, qword_27CFBBA30);
  Entitlement.Validator.validate()();
  v53 = *(v0 + 370);
  v54 = *(v0 + 280);
  loga = *(v0 + 288);
  if (v55)
  {
    v56 = *(v0 + 232);
    v57 = *(v0 + 240);

    sub_2219A1B7C(v54, loga, v53);
    sub_2219EBE90(v57);
    __swift_destroy_boxed_opaque_existential_0(v56);
    v58 = *(v0 + 248);

    v60 = *(v0 + 264);
    v59 = *(v0 + 272);

    OUTLINED_FUNCTION_25();

    return v61();
  }

  else
  {
    v101 = *(v0 + 272);
    v102 = *(v0 + 264);
    v104 = *(v0 + 280);
    v63 = *(v0 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBB0, &qword_221BE5C38);
    OUTLINED_FUNCTION_20_0();
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_221BD19E0;
    v65 = _s15WiFiErrorSourceCMa();
    OUTLINED_FUNCTION_268_1();
    swift_allocObject();
    OUTLINED_FUNCTION_124_2();

    v66 = sub_221A34414();
    *(v64 + 56) = v65;
    *(v64 + 64) = &off_283516968;
    *(v64 + 32) = v66;
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBB8, &qword_221BE5C40);
    OUTLINED_FUNCTION_174_2(v67);
    swift_allocObject();
    OUTLINED_FUNCTION_171_0();

    swift_retain_n();
    v99 = sub_221B2EB44(sub_221B613B0, v63, v111, v110, v64, sub_221B613A8, v63);
    *(v0 + 312) = v99;
    v68 = *(v107 + 24);
    *(v107 + 24) = v99;

    v69 = *(v16 + 96);
    *(v0 + 320) = v69;
    v70 = *(v16 + 104);
    *(v0 + 328) = v70;
    OUTLINED_FUNCTION_10();
    v106 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_265_1();
    v103 = v53;
    v100 = swift_allocObject();
    v100[2] = v69;
    v100[3] = v70;
    v100[4] = v106;
    OUTLINED_FUNCTION_10();
    v71 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_265_1();
    v72 = swift_allocObject();
    v72[2] = v69;
    v72[3] = v70;
    v72[4] = v71;
    OUTLINED_FUNCTION_10();
    v73 = swift_allocObject();
    swift_weakInit();
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC0, &qword_221BE5C48);
    v75 = swift_allocBox();
    v77 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC8, &qword_221BE5C50);
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
    *v77 = 0;
    v82 = *(v74 + 28);
    swift_bridgeObjectRetain_n();

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBD0, &qword_221BE5C58);
    OUTLINED_FUNCTION_8_1(v83);
    bzero(v77 + v82, *(v84 + 64));
    sub_221B61EB0(v101, v77 + v82, &qword_27CFBBBA0, &qword_221BE5C28);
    v85 = sub_221BCD7F8();
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v85);
    OUTLINED_FUNCTION_265_1();
    v89 = swift_allocObject();
    v89[2] = 0;
    v89[3] = 0;
    v89[4] = v75;

    OUTLINED_FUNCTION_153();
    sub_2219F7E3C();
    v91 = v90;
    *(v0 + 336) = v90;
    OUTLINED_FUNCTION_108();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v85);
    OUTLINED_FUNCTION_403();
    v95 = swift_allocObject();
    v95[2] = 0;
    v95[3] = 0;
    v95[4] = v99;
    v95[5] = v75;
    v95[6] = v111;
    v95[7] = v110;
    v95[8] = sub_221B613CC;
    v95[9] = v100;
    v95[10] = sub_221B61490;
    v95[11] = v73;
    v95[12] = sub_221B6144C;
    v95[13] = v72;

    OUTLINED_FUNCTION_153();
    sub_2219F7E3C();

    v96 = *(v107 + 16);
    *(v107 + 16) = v91;

    sub_221B39BDC(v112);
    OUTLINED_FUNCTION_20_0();
    v97 = swift_allocObject();
    *(v0 + 344) = v97;
    *(v97 + 16) = v111;
    *(v97 + 24) = v110;
    *(v97 + 32) = v104;
    *(v97 + 40) = loga;
    *(v97 + 48) = v103;
    *(v97 + 56) = v112;
    *(v97 + 64) = v91;

    v98 = swift_task_alloc();
    *(v0 + 352) = v98;
    *v98 = v0;
    v98[1] = sub_221B38054;

    return sub_221B3A80C(sub_221B3A80C, 0x8AC7230489E80000, 0, &unk_221BE5C88, v97);
  }
}

uint64_t sub_221B38054()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 352);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[45] = v0;

  if (!v0)
  {
    v9 = v3[43];
    v10 = v3[41];
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B38160()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[37];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];

  sub_2219EBE90(v5);
  __swift_destroy_boxed_opaque_existential_0(v6);
  v8 = v0[33];
  v7 = v0[34];

  OUTLINED_FUNCTION_290_1();
  v9 = v0[31];
  OUTLINED_FUNCTION_253();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_221B38210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_100_0();
  OUTLINED_FUNCTION_113_0();
  v17 = *(v16 + 360);
  v18 = *(v16 + 344);

  *(v16 + 208) = v17;
  v19 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if (swift_dynamicCast())
  {
    v20 = *(v16 + 328);
    v22 = *(v16 + 304);
    v21 = *(v16 + 312);
    v23 = *(v16 + 296);

    v24 = sub_221B67D7C();
    sub_221B31344(v24);

    v25 = sub_221BCCD68();
    v26 = sub_221BCDA58();

    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v16 + 328);
    v28 = *(v16 + 336);
    if (v27)
    {
      v31 = *(v16 + 312);
      v30 = *(v16 + 320);
      v32 = *(v16 + 248);
      a10 = *(v16 + 296);
      a11 = *(v16 + 240);
      a12 = *(v16 + 232);
      v33 = OUTLINED_FUNCTION_74_0();
      OUTLINED_FUNCTION_68();
      OUTLINED_FUNCTION_110_2();
      *v33 = 136315138;
      v34 = OUTLINED_FUNCTION_312_0();
      v37 = sub_2219A6360(v34, v35, v36);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_221989000, v25, v26, "[%s] Timed out waiting for device discovery in init(), returning non-connected instance", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v38 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v38);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();

      sub_2219EBE90(a11);
      v39 = a12;
    }

    else
    {
      v60 = *(v16 + 312);
      v61 = *(v16 + 296);
      v63 = *(v16 + 240);
      v62 = *(v16 + 248);
      v64 = *(v16 + 232);

      sub_2219EBE90(v63);
      v39 = v64;
    }

    __swift_destroy_boxed_opaque_existential_0(v39);

    v66 = *(v16 + 264);
    v65 = *(v16 + 272);

    OUTLINED_FUNCTION_290_1();
    v67 = *(v16 + 248);
    OUTLINED_FUNCTION_28_0();

    return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    v41 = *(v16 + 328);
    v40 = *(v16 + 336);
    v42 = *(v16 + 312);
    v43 = *(v16 + 296);
    v45 = *(v16 + 240);
    v44 = *(v16 + 248);
    v46 = *(v16 + 232);

    sub_2219EBE90(v45);
    __swift_destroy_boxed_opaque_existential_0(v46);

    v47 = *(v16 + 360);
    v48 = *(v16 + 248);

    v50 = *(v16 + 264);
    v49 = *(v16 + 272);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_28_0();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

void *sub_221B384E4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &__dst[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC98, &qword_221BE5DD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &__dst[-1] - v10;
  v12 = sub_221BCD028();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &__dst[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &__dst[-1] - v18;
  __src[0] = a1;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
    sub_2219EC58C(v11, &qword_27CFBBC98);
LABEL_8:

    v23 = a1;
    return a1;
  }

  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  (*(v13 + 32))(v19, v11, v12);
  if ((sub_221BBEED0() & 1) == 0)
  {
    (*(v13 + 8))(v19, v12);
    goto LABEL_8;
  }

  if (a2 <= 3)
  {
    (*(v13 + 8))(v19, v12);
    return 0;
  }

  (*(v13 + 104))(v16, *MEMORY[0x277CD8F10], v12);
  v21 = sub_221BBF060(v16);
  v22 = *(v13 + 8);
  v22(v16, v12);
  if (!v21)
  {
    v22(v19, v12);
    goto LABEL_8;
  }

  sub_221B388D4();
  memcpy(__dst, __src, 0x50uLL);
  v26 = __dst[3];
  v25 = __dst[4];

  sub_221B616E0(__dst);
  sub_221A0E704();
  a1 = swift_allocError();
  v28 = v27;
  *v27 = v26;
  v27[1] = v25;
  v29 = sub_221BCD7F8();
  v28[2] = 0;
  v28[3] = 0;
  *(v28 + 32) = 0;
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_2219F8C64();
  v22(v19, v12);
  return a1;
}

void sub_221B388D4()
{
  OUTLINED_FUNCTION_55_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB90, &unk_221BE6390);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_97_3();
  v8 = sub_221BCCEE8();
  v9 = OUTLINED_FUNCTION_0_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_5();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  os_unfair_lock_lock((v0 + 112));
  v20 = *(v0 + 120);
  v21 = v20;
  os_unfair_lock_unlock((v0 + 112));
  if (!v20)
  {
    v22 = *(v0 + 48);
    v23 = OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery__selectedEndpoint;
    OUTLINED_FUNCTION_237_2();
    swift_beginAccess();
    sub_221B62018(v22 + v23, v1, &qword_27CFBBB90, &unk_221BE6390);
    if (__swift_getEnumTagSinglePayload(v1, 1, v8) != 1)
    {
      v25 = *(v11 + 32);
      v26 = OUTLINED_FUNCTION_258_1();
      v27(v26);
      v28 = OUTLINED_FUNCTION_308_0(v11);
      v29(v28, v19, v8);
      sub_221B93FD0(v16, v3);
      (*(v11 + 8))(v19, v8);
      goto LABEL_5;
    }

    sub_2219EC58C(v1, &qword_27CFBBB90);
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v24 = 6;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 9;
  }

  swift_willThrow();
LABEL_5:
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221B38AF8()
{
  v1 = sub_221BCDFC8();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B38BB4, 0, 0);
}

uint64_t sub_221B38BB4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);
  sub_221BCE258();
  OUTLINED_FUNCTION_58_4(&dword_221BE91A8);
  v8 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_286_0(v3);
  *v4 = v5;
  v4[1] = sub_221B38C68;
  v6 = *(v0 + 32);
  OUTLINED_FUNCTION_236_1(0xD02AB486CEDC0000);
  OUTLINED_FUNCTION_27_0();

  return v8();
}

uint64_t sub_221B38C68()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v3 + 48) = v0;

  v12 = *(v8 + 8);
  v13 = OUTLINED_FUNCTION_103_2();
  v14(v13);
  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

  else
  {
    v19 = *(v3 + 32);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27);
  }
}

uint64_t sub_221B38DE0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_221B38E3C(uint64_t a1, uint64_t a2)
{
  sub_221BCCFE8();
  v4 = sub_221BCCFC8();
  v5 = sub_221B38EBC(a1, a2, v4);

  return v5;
}

uint64_t sub_221B38EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v56 = a2;
  v58 = a1;
  v55 = sub_221BCC558();
  v57 = *(v55 - 8);
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v55);
  MEMORY[0x28223BE20](v6);
  v53 = &v43 - v7;
  v9 = v3[21];
  v8 = v3[22];
  __swift_project_boxed_opaque_existential_0(v3 + 18, v9);
  v10 = *(v8 + 8);
  v11 = sub_221BCCF68();
  v10(&v59, sub_221B3C2D8, 0, v11, v9, v8);
  if (!v4)
  {
    v12 = v3[13];
    v50 = v3[12];
    v51 = v59;
    v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v12;
    v52 = 0;
    v13 = sub_221BCCEA8();
    v47 = v14;
    v48 = v13;
    v49 = type metadata accessor for RemoteAppIntentsActor();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = v57;
    v17 = v53;
    v18 = v55;
    v44 = *(v57 + 16);
    v44(v53, v56, v55);
    v19 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = v46;
    *(v21 + 16) = v50;
    *(v21 + 24) = v22;
    v23 = v18;
    v24 = v22;
    (*(v16 + 32))(v21 + v19, v17, v23);
    v25 = (v21 + v20);
    v26 = v47;
    *v25 = v48;
    v25[1] = v26;
    *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v15;
    sub_221B62E9C(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);

    v27 = v52;
    v5 = sub_221BCC658();

    if (v27)
    {
    }

    else
    {
      v29 = v44;
      v52 = 0;
      v30 = v55;
      v31 = v56;
      if (qword_27CFB73C0 != -1)
      {
        swift_once();
      }

      v32 = sub_221BCCD88();
      __swift_project_value_buffer(v32, qword_27CFDEE88);
      v33 = v45;
      v29(v45, v31, v30);
      v34 = v24;

      v35 = sub_221BCCD68();
      v36 = sub_221BCDA98();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v59 = v38;
        *v37 = 136315394;
        *(v37 + 4) = sub_2219A6360(v50, v34, &v59);
        *(v37 + 12) = 2080;
        sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
        v39 = sub_221BCE168();
        v41 = v40;
        (*(v57 + 8))(v33, v30);
        v42 = sub_2219A6360(v39, v41, &v59);

        *(v37 + 14) = v42;
        _os_log_impl(&dword_221989000, v35, v36, "[%s] Remote actor %s created", v37, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v38, -1, -1);
        MEMORY[0x223DA4C00](v37, -1, -1);
      }

      else
      {

        (*(v57 + 8))(v33, v30);
      }
    }
  }

  return v5;
}

uint64_t sub_221B393C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_221BCD7D8();
  v4[7] = sub_221BCD7C8();
  v6 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221B39460, v6, v5);
}

void sub_221B39460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v18 = *(v12 + 48);
  v17 = *(v12 + 56);

  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v20 = Strong;
  if (Strong)
  {
    os_unfair_lock_lock(Strong + 52);
    v21 = sub_221BAAFE8(*&v20[54]._os_unfair_lock_opaque);
    sub_2219A69A0(v21);
    OUTLINED_FUNCTION_418();
    while (1)
    {
      if (v13 == v14)
      {

        os_unfair_lock_unlock(v20 + 52);

        goto LABEL_14;
      }

      if (v15)
      {
        v25 = OUTLINED_FUNCTION_63_3();
        v22 = MEMORY[0x223DA3BF0](v25);
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v22 = *(v21 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      v23 = *(v22 + 24);
      if (v23)
      {
        v24 = *(v22 + 32);

        v23(v22);

        sub_22198B60C(v23);
      }

      else
      {
      }

      ++v14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    **(v12 + 40) = v20 == 0;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_95_0();

    v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }
}

void sub_221B395B4()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_97_3();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v13 = sub_221BCCD88();
  OUTLINED_FUNCTION_178(v13, qword_27CFDEE88);

  v14 = sub_221BCCD68();
  v15 = sub_221BCDA98();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_74_0();
    v17 = OUTLINED_FUNCTION_68();
    v24 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2219A6360(v8, v6, &v24);
    _os_log_impl(&dword_221989000, v14, v15, v2, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v18 = sub_221BCD7F8();
  OUTLINED_FUNCTION_21_6(v0, v19, v20, v18);
  sub_221BCD7D8();
  OUTLINED_FUNCTION_75();

  v21 = sub_221BCD7C8();
  OUTLINED_FUNCTION_265_1();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v4;
  OUTLINED_FUNCTION_153();
  sub_2219F82D4();

  OUTLINED_FUNCTION_22();
}

uint64_t sub_221B39784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_221BCD7D8();
  v4[7] = sub_221BCD7C8();
  v6 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221B3981C, v6, v5);
}

void sub_221B3981C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v18 = *(v12 + 48);
  v17 = *(v12 + 56);

  OUTLINED_FUNCTION_237_2();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v20 = Strong;
  if (Strong)
  {
    os_unfair_lock_lock(Strong + 52);
    v21 = sub_221BAAFE8(*&v20[54]._os_unfair_lock_opaque);
    sub_2219A69A0(v21);
    OUTLINED_FUNCTION_418();
    while (1)
    {
      if (v13 == v14)
      {

        os_unfair_lock_unlock(v20 + 52);

        goto LABEL_14;
      }

      if (v15)
      {
        v25 = OUTLINED_FUNCTION_63_3();
        v22 = MEMORY[0x223DA3BF0](v25);
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_18;
        }

        v22 = *(v21 + 8 * v14 + 32);
      }

      if (__OFADD__(v14, 1))
      {
        break;
      }

      v23 = *(v22 + 40);
      if (v23)
      {
        v24 = *(v22 + 48);

        v23(v22);

        sub_22198B60C(v23);
      }

      else
      {
      }

      ++v14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_14:
    **(v12 + 40) = v20 == 0;
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_95_0();

    v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }
}

void sub_221B39970(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v10 = sub_221BCCD88();
  __swift_project_value_buffer(v10, qword_27CFDEE88);
  OUTLINED_FUNCTION_75();

  v11 = a1;
  v12 = sub_221BCCD68();
  v13 = sub_221BCDA78();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_20_6();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = OUTLINED_FUNCTION_68();
    v30 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_2219A6360(*(v2 + 96), *(v2 + 104), &v30);
    *(v14 + 12) = 2112;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v18;
    *v15 = v18;
    _os_log_impl(&dword_221989000, v12, v13, "[%s] Invalidated with error: %@", v14, 0x16u);
    sub_2219EC58C(v15, &unk_27CFB7630);
    v19 = OUTLINED_FUNCTION_9_10();
    MEMORY[0x223DA4C00](v19);
    __swift_destroy_boxed_opaque_existential_0(v16);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  os_unfair_lock_lock((v2 + 112));
  *(v2 + 120) = a1;
  v20 = a1;
  os_unfair_lock_unlock((v2 + 112));
  v21 = *(v2 + 48);
  sub_221B67E48(1);
  v22 = sub_221BCD7F8();
  OUTLINED_FUNCTION_21_6(v9, v23, v24, v22);
  sub_221BCD7D8();
  OUTLINED_FUNCTION_75();

  v25 = a1;
  v26 = sub_221BCD7C8();
  OUTLINED_FUNCTION_268_1();
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v2;
  v27[5] = a1;
  OUTLINED_FUNCTION_153();
  sub_2219F7E3C();

  OUTLINED_FUNCTION_445();
}

uint64_t sub_221B39BDC(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = (a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onAttached);
  v4 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onAttached);
  v5 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onAttached + 8);
  *v3 = sub_221B61A5C;
  v3[1] = v2;

  sub_22198B60C(v4);

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = (a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onDetached);
  v8 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onDetached);
  v9 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onDetached + 8);
  *v7 = sub_221B61A64;
  v7[1] = v6;

  sub_22198B60C(v8);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = (a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onFailed);
  v12 = *(a1 + OBJC_IVAR____TtCC18AppIntentsServices26RemoteAppIntentsDispatcher15DeviceDiscovery_onFailed);
  v13 = v11[1];
  *v11 = sub_221B61A6C;
  v11[1] = v10;

  sub_22198B60C(v12);
}

uint64_t sub_221B39D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = a7;
  *(v8 + 280) = a8;
  *(v8 + 105) = a6;
  *(v8 + 256) = a4;
  *(v8 + 264) = a5;
  *(v8 + 240) = a2;
  *(v8 + 248) = a3;
  *(v8 + 232) = a1;
  v9 = sub_221BCCD88();
  *(v8 + 288) = v9;
  v10 = *(v9 - 8);
  *(v8 + 296) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B39EA4, 0, 0);
}

uint64_t sub_221B39EA4()
{
  OUTLINED_FUNCTION_67();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v1 = __swift_project_value_buffer(*(v0 + 288), qword_27CFDEE88);
  *(v0 + 344) = v1;
  if (qword_27CFB7278 != -1)
  {
    v1 = swift_once();
  }

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 105);
  OUTLINED_FUNCTION_194_0(v1, &qword_27CFDE610);
  v7 = swift_allocObject();
  *(v0 + 352) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  *(v7 + 32) = v6;
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  v20 = *(v0 + 272);
  OUTLINED_FUNCTION_21_6(v2, v8, v9, v10);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = swift_task_alloc();
  *(v0 + 360) = v15;
  *(v15 + 16) = v5;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v20;
  sub_221A1C70C(v5, v4, v6);
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221B3A004()
{
  OUTLINED_FUNCTION_230();
  v1 = v0[44];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[38];
  v8 = v0[30];
  v7 = v0[31];
  (*(v0[37] + 16))(v6, v0[43], v0[36]);
  sub_221B62018((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  v9 = OUTLINED_FUNCTION_120();
  sub_221B62018(v9, v10, v11, v12);
  sub_221B62018(v5, v4, &qword_27CFB7F58, &unk_221BD27E0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  OUTLINED_FUNCTION_174_2(v13);
  swift_allocObject();

  *&v14 = OUTLINED_FUNCTION_396_0();
  v35 = v14;
  v15 = OUTLINED_FUNCTION_63_3();
  v0[46] = sub_2219CBEFC(v15, v16, v17, v6, v18, v1, 0, 0, v35, *(&v35 + 1), v0 + 19);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v19 = v0[45];
  v0[27] = v13;
  v0[28] = &off_28351D968;
  v20 = OUTLINED_FUNCTION_305_0();
  v0[47] = v20;
  OUTLINED_FUNCTION_395_0(v20);
  v21 = *(MEMORY[0x277D85A70] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[48] = v22;
  *v22 = v23;
  v22[1] = sub_221B3A23C;
  v24 = v0[29];
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_10_16();
  OUTLINED_FUNCTION_109();

  return MEMORY[0x282200908](v25, v26, v27, v28, v29, v30, v31, v32);
}

uint64_t sub_221B3A23C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 384);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 376);
  }

  else
  {
    v10 = *(v3 + 376);

    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B3A364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = v10[45];
  v12 = v10[46];
  v13 = v10[44];
  v15 = v10[41];
  v14 = v10[42];
  v17 = v10[39];
  v16 = v10[40];
  v18 = v10[38];

  sub_2219EC58C(v16, &qword_27CFB7F58);
  sub_2219EC58C(v14, &qword_27CFB7F60);
  sub_2219EC58C((v10 + 14), qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B3A454()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 368);

  return sub_2219EC58C(v0 + 192, qword_27CFB7A80);
}

unint64_t sub_221B3A4A8()
{
  sub_221BCDE68();

  v0 = IntentsServices.DevicePredicate.description.getter();
  MEMORY[0x223DA31F0](v0);

  return 0xD000000000000029;
}

uint64_t sub_221B3A540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 64) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  return MEMORY[0x2822009F8](sub_221B3A56C, 0, 0);
}

uint64_t sub_221B3A56C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 64);
  sub_221B3A724();
  sub_221B67C54();
  v6 = *(MEMORY[0x277D857E0] + 4);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_221B3A620;
  v8 = *(v0 + 48);

  return MEMORY[0x282200460]();
}

uint64_t sub_221B3A620()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 56);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B3A724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 0x7250656369766564;
  *(inited + 40) = 0xEF65746163696465;
  v1 = IntentsServices.DevicePredicate.description.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  sub_221BCD2C8();
  sub_221B25E10();
}

uint64_t sub_221B3A80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_221B3A834, 0, 0);
}

uint64_t sub_221B3A834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v12 = *(v10 + 24);
  v11 = *(v10 + 32);
  v13 = swift_task_alloc();
  *(v10 + 56) = v13;
  *(v13 + 16) = *(v10 + 40);
  *(v13 + 32) = v12;
  *(v13 + 40) = v11;
  v14 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v10 + 64) = v15;
  *v15 = v16;
  OUTLINED_FUNCTION_264_0(v15);
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822008A0](v17, v18, v19, 0xD000000000000020, v20, v21, v13, v22, a9, a10);
}

void *sub_221B3A924()
{
  v1 = v0;
  v2 = v0[6];

  sub_221B67E48(0);

  v3 = v1[2];

  v4 = v1[3];

  v5 = v1[5];

  v6 = v1[6];

  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v7 = v1[13];

  sub_2219EC58C((v1 + 15), &unk_27CFBBB98);
  sub_2219EBE90((v1 + 17));
  v8 = v1[27];

  return v1;
}

uint64_t sub_221B3A9BC()
{
  sub_221B3A924();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

void sub_221B3AA14()
{
  os_unfair_lock_lock((v0 + 112));
  v1 = *(v0 + 120);
  v2 = v1;
  os_unfair_lock_unlock((v0 + 112));
  if (v1)
  {
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v3 = v1;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = 3;
    swift_willThrow();
  }
}

uint64_t sub_221B3AA8C()
{
  OUTLINED_FUNCTION_1_5();
  v1[29] = v2;
  v1[30] = v0;
  v3 = sub_221BCCD88();
  v1[31] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[32] = v4;
  v6 = *(v5 + 64);
  v1[33] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  v1[34] = OUTLINED_FUNCTION_372();
  v1[35] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  v1[36] = OUTLINED_FUNCTION_372();
  v1[37] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_221B3ABA0()
{
  OUTLINED_FUNCTION_8_0();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v1 = __swift_project_value_buffer(v0[31], qword_27CFDEE88);
  v0[38] = v1;
  if (qword_27CFB7280 != -1)
  {
    v1 = swift_once();
  }

  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[30];
  OUTLINED_FUNCTION_194_0(v1, &qword_27CFDE670);
  v0[39] = *(v4 + 96);
  v0[40] = *(v4 + 104);
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_21_6(v2, v5, v6, v7);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B3ACB0()
{
  OUTLINED_FUNCTION_200_0();
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v5 = v0[35];
  v4 = v0[36];
  v6 = v0[33];
  (*(v0[32] + 16))(v6, v0[38], v0[31]);
  sub_221B62018((v0 + 14), (v0 + 19), qword_27CFB7A80, &unk_221BD2800);
  v7 = OUTLINED_FUNCTION_14();
  sub_221B62018(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_17_6();
  sub_221B62018(v11, v12, v13, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBB78, &qword_221BE5B50);
  OUTLINED_FUNCTION_174_2(v15);
  swift_allocObject();

  *&v16 = OUTLINED_FUNCTION_396_0();
  v35 = v16;
  v17 = OUTLINED_FUNCTION_0_0();
  v0[41] = sub_2219CBEFC(v17, v18, v19, v6, 0, 0, 0, 0, v35, *(&v35 + 1), v0 + 19);
  if (qword_27CFB7338 != -1)
  {
    OUTLINED_FUNCTION_93();
  }

  v20 = v0[30];
  v0[27] = v15;
  v0[28] = &off_28351D968;
  v21 = OUTLINED_FUNCTION_305_0();
  v0[42] = v21;
  OUTLINED_FUNCTION_395_0(v21);
  v22 = *(MEMORY[0x277D85A70] + 4);

  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[43] = v23;
  *v23 = v24;
  v23[1] = sub_221B3AED0;
  v25 = v0[29];
  OUTLINED_FUNCTION_201_0();
  OUTLINED_FUNCTION_10_16();

  return MEMORY[0x282200908](v26, v27, v28, v29, v30, v31, v32, v33);
}

uint64_t sub_221B3AED0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 344);
  v7 = *(v5 + 336);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 352) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B3B004()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];

  sub_2219EC58C(v4, &qword_27CFB7F58);
  sub_2219EC58C(v3, &qword_27CFB7F60);
  sub_2219EC58C((v0 + 14), qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_253();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_221B3B0E0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[35];

  sub_2219EC58C(v3, &qword_27CFB7F58);
  sub_2219EC58C(v2, &qword_27CFB7F60);
  OUTLINED_FUNCTION_207_4();
  sub_2219EC58C(v4, v5);
  OUTLINED_FUNCTION_207_4();
  sub_2219EC58C(v6, v7);
  v8 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221B3B19C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  OUTLINED_FUNCTION_25();
  v7 = v0[44];

  return v6();
}

uint64_t sub_221B3B228(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2219EC5F0;

  return sub_221B3B38C(a1, a2, 0, &unk_221BE5B60, 0);
}

uint64_t sub_221B3B2F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221A352B0();
}

uint64_t sub_221B3B38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B3B4, 0, 0);
}

uint64_t sub_221B3B3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v26 = *(v25 + 24);
  v14[9] = v26;
  if (!v26)
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v52 = swift_allocError();
    *v53 = v15;
    v53[1] = v12;
    OUTLINED_FUNCTION_71_5(v52, v53);
    swift_willThrow();
    goto LABEL_2;
  }

  v27 = v14[4];
  v28 = v14[5];
  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v29 = OUTLINED_FUNCTION_370_0();
  OUTLINED_FUNCTION_360(v29);
  v30 = sub_221B25D60();
  v14[11] = v30;
  OUTLINED_FUNCTION_160_2(v30);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_184_2(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v14[13] = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_404(v41);
  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v43, v44, v45, v46, v47, v48, v49, v50);
}

uint64_t sub_221B3B52C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B3B654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B67C, 0, 0);
}

uint64_t sub_221B3B67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v26 = *(v25 + 24);
  v14[9] = v26;
  if (!v26)
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v53 = swift_allocError();
    *v54 = v15;
    v54[1] = v12;
    OUTLINED_FUNCTION_71_5(v53, v54);
    swift_willThrow();
    goto LABEL_2;
  }

  v27 = v14[4];
  v28 = v14[5];
  sub_221BCCFE8();

  v29 = OUTLINED_FUNCTION_370_0();
  OUTLINED_FUNCTION_360(v29);
  v30 = sub_221B25D60();
  v14[11] = v30;
  OUTLINED_FUNCTION_160_2(v30);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_358_0(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = *(MEMORY[0x277D85A70] + 4);
  v41 = swift_task_alloc();
  v14[13] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8048, &qword_221BE5700);
  OUTLINED_FUNCTION_234_2();
  *v41 = v42;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_24_10(v43);
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v44, v45, v46, v47, v48, v49, v50, v51);
}

uint64_t sub_221B3B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B83C, 0, 0);
}

uint64_t sub_221B3B83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v26 = *(v25 + 24);
  v14[9] = v26;
  if (!v26)
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v52 = swift_allocError();
    *v53 = v15;
    v53[1] = v12;
    OUTLINED_FUNCTION_71_5(v52, v53);
    swift_willThrow();
    goto LABEL_2;
  }

  v27 = v14[4];
  v28 = v14[5];
  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v29 = OUTLINED_FUNCTION_370_0();
  OUTLINED_FUNCTION_360(v29);
  v30 = sub_221B25D60();
  v14[11] = v30;
  OUTLINED_FUNCTION_160_2(v30);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_184_2(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v14[13] = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_404(v41);
  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v43, v44, v45, v46, v47, v48, v49, v50);
}

uint64_t sub_221B3B9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3B9DC, 0, 0);
}

uint64_t sub_221B3B9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v26 = *(v25 + 24);
  v14[9] = v26;
  if (!v26)
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v52 = swift_allocError();
    *v53 = v15;
    v53[1] = v12;
    OUTLINED_FUNCTION_71_5(v52, v53);
    swift_willThrow();
    goto LABEL_2;
  }

  v27 = v14[4];
  v28 = v14[5];
  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v29 = OUTLINED_FUNCTION_370_0();
  OUTLINED_FUNCTION_360(v29);
  v30 = sub_221B25D60();
  v14[11] = v30;
  OUTLINED_FUNCTION_160_2(v30);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_184_2(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v14[13] = v41;
  *v41 = v42;
  OUTLINED_FUNCTION_404(v41);
  OUTLINED_FUNCTION_54_8();
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v43, v44, v45, v46, v47, v48, v49, v50);
}

uint64_t sub_221B3BB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  return MEMORY[0x2822009F8](sub_221B3BB7C, 0, 0);
}

uint64_t sub_221B3BB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_383_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v13)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_382();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_136_5();
  v26 = *(v25 + 24);
  v14[9] = v26;
  if (!v26)
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v53 = swift_allocError();
    *v54 = v15;
    v54[1] = v12;
    OUTLINED_FUNCTION_71_5(v53, v54);
    swift_willThrow();
    goto LABEL_2;
  }

  v27 = v14[4];
  v28 = v14[5];
  sub_221BCCFE8();

  v29 = OUTLINED_FUNCTION_370_0();
  OUTLINED_FUNCTION_360(v29);
  v30 = sub_221B25D60();
  v14[11] = v30;
  OUTLINED_FUNCTION_160_2(v30);
  v31 = swift_task_alloc();
  OUTLINED_FUNCTION_358_0(v31, v32, v33, v34, v35, v36, v37, v38, v39);
  v40 = *(MEMORY[0x277D85A70] + 4);
  v41 = swift_task_alloc();
  v14[13] = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8140, &qword_221BD2A80);
  OUTLINED_FUNCTION_234_2();
  *v41 = v42;
  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_24_10(v43);
  OUTLINED_FUNCTION_298_0();

  return MEMORY[0x282200908](v44, v45, v46, v47, v48, v49, v50, v51);
}

uint64_t sub_221B3BD14()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 112) = v0;

  OUTLINED_FUNCTION_320();

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B3BE3C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B3BE94()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);

  v2 = *(v0 + 112);
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B3BEF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = *a2;
  return MEMORY[0x2822009F8](sub_221B3BF40, 0, 0);
}

uint64_t sub_221B3BF40()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_374();
  if (v1)
  {
LABEL_2:
    OUTLINED_FUNCTION_25();

    return v4();
  }

  OUTLINED_FUNCTION_136_5();
  v7 = *(v6 + 24);
  v2[10] = v7;
  if (!v7)
  {
    OUTLINED_FUNCTION_319_0();
    OUTLINED_FUNCTION_15_0();
    v24 = swift_allocError();
    *v25 = v3;
    v25[1] = v0;
    OUTLINED_FUNCTION_71_5(v24, v25);
    swift_willThrow();
    goto LABEL_2;
  }

  v8 = v2[9];
  v9 = v2[4];
  v10 = v2[5];
  sub_221BCCFE8();
  OUTLINED_FUNCTION_75();

  v2[11] = OUTLINED_FUNCTION_370_0();
  v11 = sub_221BB0710();
  v2[12] = v11;
  OUTLINED_FUNCTION_160_2(v11);
  v12 = swift_task_alloc();
  v2[13] = v12;
  *(v12 + 16) = *(v8 + 80);
  *(v12 + 24) = v7;
  *(v12 + 32) = v10;
  *(v12 + 40) = v26;
  v13 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v2[14] = v14;
  *v14 = v15;
  OUTLINED_FUNCTION_404(v14);
  OUTLINED_FUNCTION_54_8();

  return MEMORY[0x282200908](v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_221B3C0EC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[15] = v0;

  v10 = v3[12];
  v9 = v3[13];
  v11 = v3[11];

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B3C224()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B3C27C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 80);

  v2 = *(v0 + 120);
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B3C2D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC90, &qword_221BE5DC8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v9 - v5;
  MEMORY[0x223DA4440](v4);
  swift_unknownObjectRetain();
  sub_221BCD008();
  v7 = sub_221BCD018();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2219EC58C(v6, &qword_27CFBBC90);
  }

  else
  {
    sub_221BCCFF8();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  nw_parameters_set_application_id();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_221BCCF68();
  result = sub_221BCCF78();
  *a1 = result;
  return result;
}

uint64_t sub_221B3C424(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v38 = a5;
  v39 = a7;
  v37 = a2;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB73C0 != -1)
  {
    swift_once();
  }

  v16 = sub_221BCCD88();
  __swift_project_value_buffer(v16, qword_27CFDEE88);
  (*(v12 + 16))(v15, a4, v11);

  v17 = a1;
  v18 = sub_221BCCD68();
  v19 = sub_221BCDA78();

  if (os_log_type_enabled(v18, v19))
  {
    v36 = a4;
    v20 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v20 = 136315906;
    *(v20 + 4) = sub_2219A6360(v37, a3, v40);
    *(v20 + 12) = 2080;
    sub_221B62E9C(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v21 = sub_221BCE168();
    v23 = v22;
    (*(v12 + 8))(v15, v11);
    v24 = sub_2219A6360(v21, v23, v40);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    *(v20 + 24) = sub_2219A6360(v38, a6, v40);
    *(v20 + 32) = 2112;
    if (a1)
    {
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v20 + 34) = v26;
    v28 = v34;
    *v34 = v27;
    _os_log_impl(&dword_221989000, v18, v19, "[%s] Remote actor %s with endpoint %s invalidated: %@", v20, 0x2Au);
    sub_2219EC58C(v28, &unk_27CFB7630);
    MEMORY[0x223DA4C00](v28, -1, -1);
    v29 = v35;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v29, -1, -1);
    MEMORY[0x223DA4C00](v20, -1, -1);

    a4 = v36;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v31 = *(result + 24);

    if (v31)
    {
      if (a1)
      {
        v32 = a1;
        sub_221B2F598(a4, a1);
      }
    }
  }

  return result;
}

uint64_t sub_221B3C800(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v2 = v1;
    if (qword_27CFB73C0 != -1)
    {
      swift_once();
    }

    v3 = sub_221BCCD88();
    __swift_project_value_buffer(v3, qword_27CFDEE88);

    v4 = sub_221BCCD68();
    v5 = sub_221BCDA78();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2219A6360(*(v2 + 96), *(v2 + 104), &v9);
      _os_log_impl(&dword_221989000, v4, v5, "[%s] Local intent dispatching not supported. Use a local dispatcher.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DA4C00](v7, -1, -1);
      MEMORY[0x223DA4C00](v6, -1, -1);
    }

    sub_221A0E704();
    swift_allocError();
    *v8 = 7;
    *(v8 + 8) = 0;
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = 9;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B3C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B318AC(a1, a3, a4, a5);
}

uint64_t sub_221B3CA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31AD4(a1, a3, a4, a5);
}

uint64_t sub_221B3CB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31C04(a1, a3, a4, a5);
}

uint64_t sub_221B3CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31D34(a1, a3, a4, a5);
}

uint64_t sub_221B3CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2219EC5F0;

  return sub_221B31E64(a1, a3, a4, a5);
}

uint64_t sub_221B3CDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_2219EC5F0;

  return sub_221A309FC(a1, a3, a4, a5, a6);
}

uint64_t sub_221B3CEA4()
{
  v2 = v0;
  type metadata accessor for RemoteAppIntentsDispatcherFacade();
  OUTLINED_FUNCTION_20_0();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_97_1();
  sub_221B71A20(v3);
  OUTLINED_FUNCTION_55_1();

  os_unfair_lock_lock((v0 + 208));
  v4 = *(v0 + 216);
  sub_221B3CF0C();
  os_unfair_lock_unlock(v2 + 52);
  return v1;
}

uint64_t sub_221B3CF50(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_221B3CFC0, 0, 0);
}

uint64_t sub_221B3CFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_8_0();
  v18 = *(v17 + 24);
  v19 = swift_task_alloc();
  *(OUTLINED_FUNCTION_414(v19) + 16) = v18;
  v20 = *(MEMORY[0x277D859E0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v17 + 40) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_264_0(v21);
  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_65_7();

  return MEMORY[0x2822007B8](v23, v24, v25, 0xD00000000000003ELL, v26, v27, v16, v28, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221B3D0A0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;

  OUTLINED_FUNCTION_25();

  return v6();
}

void sub_221B3D19C(uint64_t a1, os_unfair_lock_t lock)
{
  os_unfair_lock_lock(lock);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC0, &qword_221BE5C48) + 28);
  sub_2219EC58C(lock + v4, &unk_27CFBBBA0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC8, &qword_221BE5C50);
  (*(*(v5 - 8) + 16))(lock + v4, a1, v5);
  __swift_storeEnumTagSinglePayload(lock + v4, 0, 1, v5);

  os_unfair_lock_unlock(lock);
}

uint64_t sub_221B3D274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v22;
  *(v8 + 64) = v20;
  *(v8 + 80) = v21;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC8, &qword_221BE5C50);
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC20, &qword_221BE5D30);
  *(v8 + 128) = v12;
  v13 = *(v12 - 8);
  *(v8 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBC28, &qword_221BE5D38);
  *(v8 + 152) = v15;
  v16 = *(v15 - 8);
  *(v8 + 160) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBBC0, &qword_221BE5C48);
  *(v8 + 184) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_221B3D450, 0, 0);
}

uint64_t sub_221B3D450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_252();
  v36 = v15;
  OUTLINED_FUNCTION_14_3();
  v16 = *(v13 + 168);
  v18 = *(v13 + 136);
  v17 = *(v13 + 144);
  v19 = *(v13 + 128);
  v20 = *(v13 + 32);
  sub_221B74748(0xD000000000000013, 0x8000000221BE5360);
  sub_221BCD838();
  v21 = *(v18 + 8);
  v22 = OUTLINED_FUNCTION_103_2();
  v23(v22);
  *(v13 + 25) = 0;
  v24 = *(MEMORY[0x277D85798] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v13 + 192) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_189_3(v25);
  OUTLINED_FUNCTION_65_7();
  OUTLINED_FUNCTION_253();

  return MEMORY[0x2822003E8](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, v13, v14, v36);
}

uint64_t sub_221B3D528()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 192);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B3D60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_100_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_113_0();
  a22 = v24;
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  switch(v28)
  {
    case 0:
      v29 = 0;
      v30 = *(v24 + 25);
      if (v30 == 1)
      {
        goto LABEL_27;
      }

      if (*(v24 + 25))
      {
        LOBYTE(v30) = 1;
        v55 = 56;
        v56 = 64;
        v28 = 0;
        goto LABEL_26;
      }

      v31 = *(v24 + 176);
      v32 = *(v24 + 184);
      os_unfair_lock_lock(v32);
      v33 = *(v31 + 28);
      if (qword_27CFB73C0 != -1)
      {
        OUTLINED_FUNCTION_4_22();
      }

      v34 = *(v24 + 48);
      v35 = sub_221BCCD88();
      __swift_project_value_buffer(v35, qword_27CFDEE88);
      OUTLINED_FUNCTION_171_0();

      v36 = sub_221BCCD68();
      v37 = sub_221BCDA98();

      if (os_log_type_enabled(v36, v37))
      {
        a10 = *(v24 + 40);
        a11 = *(v24 + 48);
        a12 = &type_layout_string_18AppIntentsServices06RemoteaB10DispatcherC19ActorChangeListenerV;
        OUTLINED_FUNCTION_20_6();
        v34 = swift_slowAlloc();
        OUTLINED_FUNCTION_19_6();
        a13 = swift_slowAlloc();
        *v34 = 136315394;
        v38 = sub_2219A6360(a10, a11, &a13);
        *(v34 + 14) = OUTLINED_FUNCTION_295_0(v38, v39, v40, v41, v42);
        OUTLINED_FUNCTION_328_0();
        _os_log_impl(v43, v44, v45, v46, v47, 0x16u);
        OUTLINED_FUNCTION_136();
        OUTLINED_FUNCTION_29_1();
        MEMORY[0x223DA4C00]();
        v48 = OUTLINED_FUNCTION_9_10();
        MEMORY[0x223DA4C00](v48);
      }

      if (!OUTLINED_FUNCTION_439())
      {
        v49 = OUTLINED_FUNCTION_317_0();
        v50(v49);
        sub_221BCD798();
        (*(v34 + 8))(v36, v37);
        v37 = *(v24 + 104);
      }

      v51 = *(v24 + 184);
      sub_2219EC58C(v32 + v33, &unk_27CFBBBA0);
      LOBYTE(v30) = 1;
      OUTLINED_FUNCTION_108();
      __swift_storeEnumTagSinglePayload(v52, v53, v54, v37);
      v55 = 56;
      v56 = 64;
      goto LABEL_24;
    case 1:
      v57 = *(v24 + 80);
      (*(v24 + 72))(*(v24 + 16));
      sub_221B61B30(v27, 1);
      goto LABEL_12;
    case 2:
      if (*(v24 + 25))
      {
        v28 = 2;
        v55 = 88;
        v56 = 96;
        LOBYTE(v30) = 2;
      }

      else
      {
        v69 = *(v24 + 176);
        v70 = *(v24 + 184);
        os_unfair_lock_lock(v70);
        v71 = *(v69 + 28);
        if (qword_27CFB73C0 != -1)
        {
          OUTLINED_FUNCTION_4_22();
        }

        v72 = *(v24 + 48);
        v73 = sub_221BCCD88();
        __swift_project_value_buffer(v73, qword_27CFDEE88);
        OUTLINED_FUNCTION_171_0();

        v74 = sub_221BCCD68();
        v75 = sub_221BCDA98();

        if (os_log_type_enabled(v74, v75))
        {
          a10 = *(v24 + 40);
          a11 = *(v24 + 48);
          a12 = &type_layout_string_18AppIntentsServices06RemoteaB10DispatcherC19ActorChangeListenerV;
          OUTLINED_FUNCTION_20_6();
          v72 = swift_slowAlloc();
          OUTLINED_FUNCTION_19_6();
          a13 = swift_slowAlloc();
          *v72 = 136315394;
          v76 = sub_2219A6360(a10, a11, &a13);
          *(v72 + 14) = OUTLINED_FUNCTION_295_0(v76, v77, v78, v79, v80);
          OUTLINED_FUNCTION_328_0();
          _os_log_impl(v81, v82, v83, v84, v85, 0x16u);
          OUTLINED_FUNCTION_136();
          OUTLINED_FUNCTION_29_1();
          MEMORY[0x223DA4C00]();
          v86 = OUTLINED_FUNCTION_9_10();
          MEMORY[0x223DA4C00](v86);
        }

        if (!OUTLINED_FUNCTION_439())
        {
          v87 = OUTLINED_FUNCTION_317_0();
          v88(v87);
          sub_221BCD798();
          (*(v72 + 8))(v74, v75);
          v75 = *(v24 + 104);
        }

        v51 = *(v24 + 184);
        sub_2219EC58C(v70 + v71, &unk_27CFBBBA0);
        OUTLINED_FUNCTION_108();
        __swift_storeEnumTagSinglePayload(v89, v90, v91, v75);
        LOBYTE(v30) = 2;
        v55 = 88;
        v56 = 96;
LABEL_24:
        os_unfair_lock_unlock(v51);
      }

LABEL_26:
      v92 = *(v24 + v56);
      (*(v24 + v55))();
      v29 = v28;
LABEL_27:
      sub_221B61B30(v27, v29);
      *(v24 + 25) = v30;
      goto LABEL_28;
    case 3:
LABEL_28:
      v93 = *(MEMORY[0x277D85798] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_26_0();
      *(v24 + 192) = v94;
      *v94 = v95;
      OUTLINED_FUNCTION_189_3();
      OUTLINED_FUNCTION_65_7();
      OUTLINED_FUNCTION_28_0();

      result = MEMORY[0x2822003E8](v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16);
      break;
    default:
LABEL_12:
      v58 = *(v24 + 144);
      v59 = *(v24 + 120);
      (*(*(v24 + 160) + 8))(*(v24 + 168), *(v24 + 152));

      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_28_0();

      result = v61(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14, a15, a16);
      break;
  }

  return result;
}

uint64_t sub_221B3DAE0()
{
  sub_221BCE308();
  MEMORY[0x223DA4060](0);
  return sub_221BCE358();
}

uint64_t sub_221B3DB2C()
{
  sub_221BCE308();
  MEMORY[0x223DA4060](0);
  return sub_221BCE358();
}

uint64_t sub_221B3DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B3DB98()
{
  OUTLINED_FUNCTION_384_0();
  v11 = v1;
  OUTLINED_FUNCTION_14_3();
  v2 = *(v0 + 88);
  sub_221B3DE08(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), (v0 + 16));
  v3 = *(v0 + 24);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 104) = v3;
  v4 = *(v0 + 40);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 120) = v4;
  OUTLINED_FUNCTION_58_4(&unk_221BE89F8);
  v10 = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 128) = v6;
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_110_4(v6);

  return v10(v8);
}

uint64_t sub_221B3DC54()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[16];
  v6 = v4[15];
  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v12 + 136) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_221B3DDE4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 136);
  return v2();
}

void sub_221B3DE08(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  memcpy(__dst, a2, 0xC4uLL);
  type metadata accessor for RemoteAppIntentsDispatcher.PerformAppIntentDelegateWrapper();
  OUTLINED_FUNCTION_265_1();
  swift_allocObject();
  v11 = sub_221B401B8(a3, a4);
  v12 = v11[2];
  sub_2219EB748(a1, v15);
  OUTLINED_FUNCTION_416();
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = v15[1];
  *(v13 + 24) = v15[0];
  *(v13 + 40) = v14;
  *(v13 + 56) = v16;
  memcpy((v13 + 64), __dst, 0xC4uLL);
  *(v13 + 264) = v11;
  swift_unknownObjectRetain();

  sub_2219EB864(__dst, v15);
  sub_221B43298(0, v12, &unk_221BE56D8, v13, a5);
}

uint64_t sub_221B3DF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 136) = *a3;
  *(v4 + 72) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B3DF50()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_287_0();
  sub_221B3E18C(v1, v2, v3);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A08);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_110_4(v5);

  return v9(v7);
}

uint64_t sub_221B3DFFC()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[11];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v12 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

void sub_221B3E18C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a2;
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v19[0] = v8;
  v19[1] = v7;
  v19[2] = v9;
  v19[3] = v10;
  v20[0] = v6;
  v21 = *(a2 + 8);

  v11 = OUTLINED_FUNCTION_103_2();
  sub_221998178(v11, v12);
  sub_221B4BCE0(v19, (a1 + 4), v20, &v22);

  v13 = OUTLINED_FUNCTION_103_2();
  sub_2219982C4(v13, v14);
  v16 = v23;
  v15 = v24;
  sub_221B5D5F8(a1, v19);
  v17 = swift_allocObject();
  memcpy((v17 + 16), v19, 0xA2uLL);
  *(v17 + 184) = v3;
  OUTLINED_FUNCTION_49();
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 32) = v16;
  *(v18 + 40) = v15;
  *(v18 + 48) = sub_221B5D654;
  *(v18 + 56) = v17;

  sub_221B43598(1, v15, &unk_221BE5678, v18, a3);
}

uint64_t sub_221B3E2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  *(v4 + 136) = *a3;
  *(v4 + 72) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B3E2EC()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_287_0();
  sub_221B3E528(v1, v2, v3);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(dword_221BE8A18);
  v9 = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_110_4(v5);

  return v9(v7);
}

uint64_t sub_221B3E398()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[15];
  v6 = v4[14];
  v7 = v4[13];
  v8 = v4[12];
  v9 = v4[11];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v12 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

void sub_221B3E528(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v17[0] = v7;
  v17[1] = v6;
  v18 = v8;
  v19 = v9;
  v15[0] = v5;
  v16 = *(a2 + 8);

  sub_221998178(v8, v9);
  sub_221B4BCE0(v17, (a1 + 4), v15, &v20);
  v10 = v18;
  v11 = v19;

  sub_2219982C4(v10, v11);
  v13 = v21;
  v12 = v22;
  OUTLINED_FUNCTION_49();
  v14 = swift_allocObject();
  *(v14 + 16) = v20;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  *(v14 + 48) = sub_221B4C054;
  *(v14 + 56) = 0;

  sub_221B43728(1, v12, &unk_221BE5478, v14, a3);
}

uint64_t sub_221B3E634()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221B3E6DC();
}

uint64_t sub_221B3E6DC()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 232) = v4;
  *(v1 + 240) = v0;
  v5 = sub_221BCCD88();
  *(v1 + 248) = v5;
  OUTLINED_FUNCTION_18_4(v5);
  *(v1 + 256) = v6;
  v8 = *(v7 + 64);
  *(v1 + 264) = OUTLINED_FUNCTION_210();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  *(v1 + 272) = OUTLINED_FUNCTION_372();
  *(v1 + 280) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_372();
  v15 = swift_task_alloc();
  v16 = *v3;
  v17 = v3[1];
  *(v1 + 296) = v15;
  *(v1 + 304) = v16;
  *(v1 + 312) = v17;
  *(v1 + 320) = *(v3 + 1);
  v18 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_221B3E804()
{
  OUTLINED_FUNCTION_271_1();
  OUTLINED_FUNCTION_67();
  v1 = *(*(v0 + 240) + 129);
  *(v0 + 105) = v1;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v2 = __swift_project_value_buffer(*(v0 + 248), qword_27CFDEE88);
  *(v0 + 336) = v2;
  if (qword_27CFB72E8 != -1)
  {
    v2 = swift_once();
  }

  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  v9 = *(v0 + 240);
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDEB50);
  *(v0 + 344) = v9[12];
  *(v0 + 352) = v9[13];
  *(v0 + 360) = v9[4];
  *(v0 + 368) = v9[5];
  OUTLINED_FUNCTION_49();
  v10 = swift_allocObject();
  *(v0 + 376) = v10;
  *(v10 + 16) = v1;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v3;
  *(v10 + 56) = v9;
  sub_221BCCD08();
  OUTLINED_FUNCTION_143_4();
  OUTLINED_FUNCTION_21_6(v7, v11, v12, v13);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = swift_task_alloc();
  *(v0 + 384) = v18;
  v18[2] = v6;
  v18[3] = v5;
  v18[4] = v4;
  v18[5] = v3;
  v18[6] = v9;

  v19 = OUTLINED_FUNCTION_118_0();
  sub_221998178(v19, v20);

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_272_0();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221B3EBC0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *(v5 + 400);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  *(v3 + 416) = v0;

  if (!v0)
  {
    sub_2219EC58C(v3 + 192, qword_27CFB7A80);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221B3ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = v10[48];
  v12 = v10[49];
  v13 = v10[47];
  v15 = v10[36];
  v14 = v10[37];
  v17 = v10[34];
  v16 = v10[35];
  v18 = v10[33];

  sub_2219EC58C(v16, &qword_27CFB7F58);
  sub_2219EC58C(v14, &qword_27CFB7F60);
  sub_2219EC58C((v10 + 14), qword_27CFB7A80);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_152();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B3EDE4()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[37];
  v5 = v0[35];

  sub_2219EC58C(v5, &qword_27CFB7F58);
  sub_2219EC58C(v4, &qword_27CFB7F60);
  OUTLINED_FUNCTION_338_0((v0 + 14));
  OUTLINED_FUNCTION_338_0((v0 + 24));

  v6 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221B3EEB4()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[36];
  v1 = v0[37];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[33];

  OUTLINED_FUNCTION_25();
  v7 = v0[52];

  return v6();
}

uint64_t sub_221B3EF58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  if (v3)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = *a1;
    v8 = a1[1];
    v9 = v2[5];
    v18 = v2[4];
    v11 = v2[12];
    v10 = v2[13];
    v17[0] = v7;
    v17[1] = v8;
    v17[2] = v5;
    v17[3] = v6;
    v12 = type metadata accessor for RemoteAppNotificationStream(0);
    OUTLINED_FUNCTION_174_2(v12);
    swift_allocObject();

    swift_retain_n();

    v13 = sub_221B74F7C(v3, v18, v9, v11, v10, v17);
    a2[3] = v12;
    a2[4] = sub_221B62E9C(&qword_27CFBBB58, type metadata accessor for RemoteAppNotificationStream);

    *a2 = v13;
  }

  else
  {
    sub_2219ACB94();
    OUTLINED_FUNCTION_15_0();
    v15 = swift_allocError();
    *v16 = 0xD000000000000027;
    v16[1] = 0x8000000221BF0A50;
    OUTLINED_FUNCTION_71_5(v15, v16);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_221B3F0C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221B3F1B4();
}

uint64_t sub_221B3F1B4()
{
  OUTLINED_FUNCTION_1_5();
  v1[31] = v20;
  v1[32] = v0;
  v1[29] = v2;
  v1[30] = v3;
  v1[27] = v4;
  v1[28] = v5;
  v1[25] = v6;
  v1[26] = v7;
  v1[24] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  v1[33] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v12);
  v14 = *(v13 + 64);
  v1[34] = OUTLINED_FUNCTION_210();
  v15 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_221B3F27C()
{
  v1 = *(*(v0 + 256) + 129);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v2 = sub_221BCCD88();
  v3 = __swift_project_value_buffer(v2, qword_27CFDEE88);
  if (qword_27CFB72E0 != -1)
  {
    v3 = swift_once();
  }

  v27 = *(v0 + 272);
  v28 = *(v0 + 264);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  v29 = *(v0 + 240);
  v30 = *(v0 + 248);
  v6 = *(v0 + 224);
  v26 = *(v0 + 216);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  OUTLINED_FUNCTION_194_0(v3, &qword_27CFDEAF0);
  v33 = v4[13];
  v34 = v4[12];
  v31 = v4[5];
  v32 = v4[4];
  v9 = OUTLINED_FUNCTION_285_1();
  sub_2219EB748(v9, v10);
  OUTLINED_FUNCTION_206_0();
  v11 = swift_allocObject();
  v12 = *(v0 + 128);
  *(v11 + 24) = *(v0 + 112);
  *(v0 + 280) = v11;
  *(v11 + 16) = v1;
  *(v11 + 40) = v12;
  *(v11 + 56) = *(v0 + 144);
  *(v11 + 64) = v8;
  *(v11 + 72) = v7;
  *(v11 + 80) = v6;
  *(v11 + 88) = v5;
  *(v11 + 96) = v4;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0;
  *(v0 + 152) = 0u;
  *(v0 + 105) = v1;
  v13 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v27, v14, v15, v13);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = swift_task_alloc();
  *(v0 + 288) = v20;
  v20[2] = v26;
  v20[3] = v8;
  v20[4] = v7;
  v20[5] = v6;
  v20[6] = v5;
  v20[7] = v4;

  v21 = swift_task_alloc();
  *(v0 + 296) = v21;
  type metadata accessor for AppIntentFetchOptionsResult();
  *v21 = v0;
  v21[1] = sub_221B3F50C;
  v23 = *(v0 + 264);
  v22 = *(v0 + 272);
  v24 = *(v0 + 192);
  OUTLINED_FUNCTION_232();

  return sub_221BB0014();
}

uint64_t sub_221B3F50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = v15[37];
  v17 = v15[36];
  v18 = v15[35];
  v19 = v15[34];
  v20 = v15[33];
  v21 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v22 = v21;
  v13[38] = v10;

  sub_2219EC58C(v20, &qword_27CFB7F58);
  sub_2219EC58C(v19, &qword_27CFB7F60);
  sub_2219EC58C((v13 + 19), qword_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {
    v28 = v13[33];
    v27 = v13[34];

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_221B3F6E8()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0[33];
  v1 = v0[34];

  OUTLINED_FUNCTION_25();
  v4 = v0[38];

  return v3();
}

uint64_t sub_221B3F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2219EC5F0;

  return sub_221B3DB7C(a1, a2, a3, a4, a5);
}

uint64_t sub_221B3F814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_221B3DF28(a1, a2, a3);
}

uint64_t sub_221B3F8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219EC5F0;

  return sub_221B3E2C4(a1, a2, a3);
}

uint64_t sub_221B3F974()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return sub_221B3FA34();
}

uint64_t sub_221B3FA34()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[30] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v1[35] = OUTLINED_FUNCTION_210();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  v1[36] = OUTLINED_FUNCTION_210();
  v12 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221B3FAEC()
{
  OUTLINED_FUNCTION_113_0();
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  v1 = sub_221BCCD88();
  v2 = __swift_project_value_buffer(v1, qword_27CFDEE88);
  if (qword_27CFB72D8 != -1)
  {
    v2 = swift_once();
  }

  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 248);
  v7 = *(v0 + 256);
  OUTLINED_FUNCTION_194_0(v2, &qword_27CFDEA90);
  v23 = *(v6 + 104);
  v24 = *(v6 + 96);
  v21 = *(v6 + 40);
  v22 = *(v6 + 32);
  sub_2219EAFE0(v8, v0 + 112);
  OUTLINED_FUNCTION_403();
  v9 = swift_allocObject();
  *(v0 + 296) = v9;
  memcpy((v9 + 16), (v0 + 112), 0x58uLL);
  *(v9 + 104) = v6;
  *(v0 + 216) = 0u;
  *(v0 + 232) = 0;
  *(v0 + 200) = 0u;
  *(v0 + 105) = *(v6 + 129);
  v10 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v3, v11, v12, v10);
  v13 = sub_221BCCCD8();
  OUTLINED_FUNCTION_102_5(v13);
  v14 = swift_task_alloc();
  *(v0 + 304) = v14;
  v14[2] = v5;
  v14[3] = v8;
  v14[4] = v6;

  v15 = swift_task_alloc();
  *(v0 + 312) = v15;
  sub_221BCDC98();
  *v15 = v0;
  v15[1] = sub_221B3FD20;
  v17 = *(v0 + 280);
  v16 = *(v0 + 288);
  v18 = *(v0 + 240);
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_28_0();

  return sub_221BB0014();
}

uint64_t sub_221B3FD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_21_0();
  v13 = v12;
  OUTLINED_FUNCTION_17_3();
  *v14 = v13;
  v16 = v15[39];
  v17 = v15[38];
  v18 = v15[37];
  v19 = v15[36];
  v20 = v15[35];
  v21 = *v11;
  OUTLINED_FUNCTION_0_5();
  *v22 = v21;
  v13[40] = v10;

  sub_2219EC58C(v20, &qword_27CFB7F58);
  sub_2219EC58C(v19, &qword_27CFB7F60);
  sub_2219EC58C((v13 + 25), qword_27CFB7A80);
  if (v10)
  {
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }

  else
  {
    v28 = v13[35];
    v27 = v13[36];

    OUTLINED_FUNCTION_166();
    OUTLINED_FUNCTION_152();

    return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
  }
}

uint64_t sub_221B3FEFC()
{
  OUTLINED_FUNCTION_1_5();
  v2 = v0[35];
  v1 = v0[36];

  OUTLINED_FUNCTION_25();
  v4 = v0[40];

  return v3();
}

uint64_t sub_221B3FF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_221BCD7D8();
  v5[4] = sub_221BCD7C8();
  v7 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221B40014, v7, v6);
}

uint64_t sub_221B40014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = v12[4];
  v14 = v12[2];

  os_unfair_lock_lock((v14 + 208));
  v33 = v14;
  v15 = sub_221BAAFE8(*(v14 + 216));
  result = sub_2219A69A0(v15);
  v17 = result;
  for (i = 0; v17 != i; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v24 = OUTLINED_FUNCTION_420();
      result = MEMORY[0x223DA3BF0](v24);
      v19 = result;
    }

    else
    {
      if (i >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v19 = *(v15 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    v20 = *(v19 + 56);
    if (v20)
    {
      v21 = v12[3];
      v22 = *(v19 + 64);

      v20(v19, v21);

      v23 = OUTLINED_FUNCTION_120();
      result = sub_22198B60C(v23);
    }

    else
    {
    }
  }

  os_unfair_lock_unlock(v33 + 52);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_95_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v33, a10, a11, a12);
}

uint64_t sub_221B40150@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  if (v2)
  {
    v3 = 0;
    v4 = *(v1 + 184);
  }

  else
  {
    v4 = 0;
    v3 = 2;
  }

  *a1 = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

BOOL sub_221B4017C()
{
  os_unfair_lock_lock((v0 + 112));
  v1 = *(v0 + 120) == 0;
  os_unfair_lock_unlock((v0 + 112));
  return v1;
}

void *sub_221B401B8(uint64_t a1, uint64_t a2)
{
  _s13ProgressTasksO21TimeoutSignalProviderCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v2[2] = v5;
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

uint64_t sub_221B40208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40228, 0, 0);
}

uint64_t sub_221B40228()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  v0 = *(OUTLINED_FUNCTION_55_1() + 8);
  OUTLINED_FUNCTION_43_1();
  v10 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_286_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_47_6(v5);

  return v8(v7);
}

uint64_t sub_221B40324()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B40430(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40450, 0, 0);
}

uint64_t sub_221B40450()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  v0 = *(OUTLINED_FUNCTION_55_1() + 16);
  OUTLINED_FUNCTION_43_1();
  v10 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_286_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_47_6(v5);

  return v8(v7);
}

uint64_t sub_221B4054C()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B40654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 24))(a1, a2, a3, ObjectType, v8);
  v11 = *(v10 + 16);
  if (v11)
  {
    v25 = MEMORY[0x277D84F90];
    sub_2219A30D4(0, v11, 0);
    v12 = v25;
    v13 = (v10 + 64);
    do
    {
      v14 = *(v13 - 3);
      v24 = *(v13 - 4);
      v23 = *(v13 - 16);
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = swift_allocObject();
      v17[2] = v22;
      v17[3] = v15;
      v17[4] = v16;
      v18 = *(v25 + 16);
      v19 = *(v25 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_2219A30D4((v19 > 1), v18 + 1, 1);
      }

      *(v25 + 16) = v18 + 1;
      v20 = v25 + 40 * v18;
      *(v20 + 32) = v24;
      *(v20 + 40) = v14;
      *(v20 + 48) = v23;
      *(v20 + 56) = &unk_221BE5B20;
      *(v20 + 64) = v17;
      v13 += 5;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_221B407F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221B40818, 0, 0);
}

uint64_t sub_221B40818()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[4];
  v0[6] = *(v0[3] + 16);
  sub_221BA6564();
  v8 = (v1 + *v1);
  v2 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_221B40914;
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_221B40914()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B40A0C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 48);
  sub_221BA9A08();
  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221B40A64()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 48);
  sub_221BA9A08();
  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_221B40AC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40AE0, 0, 0);
}

uint64_t sub_221B40AE0()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  v0 = *(OUTLINED_FUNCTION_55_1() + 32);
  OUTLINED_FUNCTION_43_1();
  v10 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_286_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_47_6(v5);

  return v8(v7);
}

uint64_t sub_221B40BDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40BFC, 0, 0);
}

uint64_t sub_221B40BFC()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  v0 = *(OUTLINED_FUNCTION_55_1() + 40);
  OUTLINED_FUNCTION_43_1();
  v10 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_286_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_47_6(v5);

  return v8(v7);
}

uint64_t sub_221B40CF8()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B40E00()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);
  sub_221BA9A08();
  OUTLINED_FUNCTION_290_1();
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t sub_221B40E60()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);
  sub_221BA9A08();
  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 48);

  return v2();
}

uint64_t sub_221B40EBC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221B40EDC, 0, 0);
}

uint64_t sub_221B40EDC()
{
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_278_1();
  OUTLINED_FUNCTION_386_0();
  v0 = *(OUTLINED_FUNCTION_55_1() + 48);
  OUTLINED_FUNCTION_43_1();
  v10 = v1 + *v1;
  v3 = *(v2 + 4);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_286_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_47_6(v5);

  return v8(v7);
}

uint64_t sub_221B40FD8()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = v4;
  OUTLINED_FUNCTION_17_3();
  *v6 = v5;
  v8 = *(v7 + 40);
  v9 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v10 = v9;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3 & 1;
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B410E4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);
  sub_221BA9A08();
  OUTLINED_FUNCTION_290_1();
  v3 = *(v0 + 56);

  return v2(v3);
}

uint64_t sub_221B41144()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 32);
  sub_221BA9A08();
  OUTLINED_FUNCTION_290_1();
  v3 = *(v0 + 48);

  return v2(0);
}

uint64_t sub_221B411A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_221B411CC()
{
  v0 = sub_221B411A4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_221B41230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B62F60;

  return sub_221B40208(a1);
}

uint64_t sub_221B412C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B62F64;

  return sub_221B40430(a1);
}

uint64_t sub_221B4135C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B62F60;

  return sub_221B40AC0(a1);
}

uint64_t sub_221B413F0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B41484;

  return sub_221B40BDC(a1);
}

uint64_t sub_221B41484()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  OUTLINED_FUNCTION_290_1();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_221B41570(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221B41604;

  return sub_221B40EBC(a1);
}

uint64_t sub_221B41604()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  OUTLINED_FUNCTION_21_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  OUTLINED_FUNCTION_290_1();
  if (v0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v3 & 1;
  }

  return v8(v9);
}

uint64_t sub_221B416F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[63] = a5;
  v6[64] = a6;
  v6[61] = a3;
  v6[62] = a4;
  v6[59] = a1;
  v6[60] = a2;
  v7 = sub_221BCCD88();
  v6[65] = v7;
  v8 = *(v7 - 8);
  v6[66] = v8;
  v9 = *(v8 + 64) + 15;
  v6[67] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221B41848, 0, 0);
}

uint64_t sub_221B41848()
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v1 = *(*(v0 + 488) + 129);
  *(v0 + 212) = v1;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_4_22();
  }

  *(v0 + 576) = __swift_project_value_buffer(*(v0 + 520), qword_27CFDEE88);
  if (qword_27CFB7288 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 568);
  v3 = *(v0 + 552);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  v6 = *(v0 + 480);
  memcpy((v0 + 216), &qword_27CFDE6D0, 0x59uLL);
  *(v0 + 584) = v5[12];
  *(v0 + 592) = v5[13];
  *(v0 + 600) = v5[4];
  *(v0 + 608) = v5[5];
  v24 = *(v0 + 504);
  v7 = OUTLINED_FUNCTION_190_1();
  sub_2219EB748(v7, v8);
  OUTLINED_FUNCTION_416();
  v9 = swift_allocObject();
  *(v0 + 616) = v9;
  *(v9 + 16) = v1;
  v10 = *(v0 + 328);
  *(v9 + 24) = *(v0 + 312);
  *(v9 + 40) = v10;
  *(v9 + 56) = *(v0 + 344);
  memcpy((v9 + 64), v24, 0xC4uLL);
  *(v9 + 264) = v5;
  v11 = sub_221BCCD08();
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0;
  OUTLINED_FUNCTION_21_6(v2, v12, v13, v11);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = swift_task_alloc();
  *(v0 + 624) = v18;
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;
  *(v18 + 32) = v5;
  *(v18 + 40) = v24;
  sub_2219EB864(v24, v0 + 16);

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_238();

  return MEMORY[0x2822009F8](v19, v20, v21);
}