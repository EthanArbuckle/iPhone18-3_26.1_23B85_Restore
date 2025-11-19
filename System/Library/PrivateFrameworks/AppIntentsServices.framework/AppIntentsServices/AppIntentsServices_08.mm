uint64_t sub_221A2EBAC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (*(result + 8))
  {
    v3 = 0;
  }

  else
  {
    v4 = result;
    v5 = *result;
    v6 = *(result + 16);

    *v4 = v5;
    v3 = 1;
    *(v4 + 8) = 1;
    *(v4 + 16) = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_221A2EC10(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_0_7();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  OUTLINED_FUNCTION_0_7();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 + 32);
  v22 = sub_221BCE398();
  OUTLINED_FUNCTION_0_7();
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v27 = &v30 - v26;
  (*(v28 + 16))(&v30 - v26, a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v19, v27, v12);
    return sub_221BCD788();
  }

  else
  {
    (*(v5 + 32))(v10, v27, v3);
    return sub_221BCD798();
  }
}

uint64_t *sub_221A2EE34()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v5 = sub_221BCD7A8();
  OUTLINED_FUNCTION_11_4(v5);
  (*(v6 + 8))(v1 + v3);
  OUTLINED_FUNCTION_5_14();
  v8 = *(v1 + *(v7 + 104) + 8);

  OUTLINED_FUNCTION_5_14();
  v10 = *(v1 + *(v9 + 112) + 8);

  OUTLINED_FUNCTION_5_14();
  v12 = *(v11 + 120);
  v13 = sub_221BCC558();
  OUTLINED_FUNCTION_11_4(v13);
  (*(v14 + 8))(v1 + v12);
  OUTLINED_FUNCTION_5_14();
  v16 = *(v15 + 128);
  v17 = *(v2 + 80);
  _s9ActorCallC10InvocationVMa();
  v18 = sub_221BCC898();
  sub_221BB7E98(v18);
  OUTLINED_FUNCTION_5_14();
  v20 = *(v1 + *(v19 + 136) + 8);

  OUTLINED_FUNCTION_5_14();
  v22 = *(v1 + *(v21 + 144));

  OUTLINED_FUNCTION_5_14();
  v24 = v1 + *(v23 + 152);
  sub_221A01F0C(v24 + 8, qword_27CFB8C40, &qword_221BD6938);
  v25 = *(v24 + 24);

  return v1;
}

uint64_t sub_221A2F000()
{
  sub_221A2EE34();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_221A2F098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8BA8, &qword_221BD6868);
  sub_221BB7E98(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB8BB0, qword_221BD6870);
  sub_221BB7E98(v3);
  v4 = *(a1 + 24);
}

void sub_221A2F104(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v29 = *a2;
  v9 = *(v29 + 80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  if (*a1)
  {
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v18 = sub_221BCCD88();
    __swift_project_value_buffer(v18, qword_27CFDEDC8);

    v19 = sub_221BCCD68();
    v20 = sub_221BCDA78();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v31 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2219A6360(*(a2 + *(*a2 + 112)), *(a2 + *(*a2 + 112) + 8), &v31);
      _os_log_impl(&dword_221989000, v19, v20, "[%s] ERROR: evaluateRetries called while retry task already pending", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DA4C00](v22, -1, -1);
      MEMORY[0x223DA4C00](v21, -1, -1);
    }
  }

  else
  {
    v23 = sub_221BCD7F8();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v23);
    (*(v10 + 16))(v13, a5, v9);
    v24 = (*(v10 + 80) + 72) & ~*(v10 + 80);
    v25 = swift_allocObject();
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    *(v25 + 4) = v9;
    *(v25 + 5) = *(v29 + 88);
    *(v25 + 6) = a3;
    v26 = v30;
    *(v25 + 7) = a2;
    *(v25 + 8) = v26;
    (*(v10 + 32))(&v25[v24], v13, v9);

    sub_2219F8C64();
    *a1 = v27;
  }
}

uint64_t sub_221A2F458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
  v12[1] = sub_221A2F588;

  return MEMORY[0x282200430](v13);
}

uint64_t sub_221A2F588()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 88) = v0;

  if (v0)
  {
    v7 = sub_221A2F92C;
  }

  else
  {
    v7 = sub_221A2F68C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221A2F68C()
{
  if (sub_221BCD8A8())
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32();
    }

    v2 = v0[3];
    v3 = sub_221BCCD88();
    __swift_project_value_buffer(v3, qword_27CFDEDC8);

    v4 = sub_221BCCD68();
    v5 = sub_221BCDA68();
    if (OUTLINED_FUNCTION_83_2(v5))
    {
      v6 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_10_8(4.8152e-34);
      v8 = OUTLINED_FUNCTION_35_5(*(v7 + 112), v38);
      OUTLINED_FUNCTION_1_31(v8);
      v10 = *(v9 + 120);
      sub_221BCC558();
      sub_2219AC8D8();
      OUTLINED_FUNCTION_18_8();
      v11 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_17_9(v11);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_4_15();
      *(v6 + 24) = v1;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v12, v13, v14, v15, v16, 0x20u);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
      v32 = v0[3];
    }
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32();
    }

    v17 = v0[3];
    v18 = sub_221BCCD88();
    __swift_project_value_buffer(v18, qword_27CFDEDC8);

    v19 = sub_221BCCD68();
    v20 = sub_221BCDA68();
    if (OUTLINED_FUNCTION_83_2(v20))
    {
      v21 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_105();
      OUTLINED_FUNCTION_10_8(4.8152e-34);
      v23 = OUTLINED_FUNCTION_35_5(*(v22 + 112), v38);
      OUTLINED_FUNCTION_1_31(v23);
      v25 = *(v24 + 120);
      sub_221BCC558();
      sub_2219AC8D8();
      OUTLINED_FUNCTION_18_8();
      v26 = OUTLINED_FUNCTION_24_6();
      OUTLINED_FUNCTION_17_9(v26);
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_4_15();
      *(v21 + 24) = v1;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v27, v28, v29, v30, v31, 0x20u);
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
      v33 = v0[3];
    }

    v34 = v0[3];
    sub_221A2C56C(v0[5]);
  }

  v35 = v0[8];

  OUTLINED_FUNCTION_4_3();

  return v36();
}

uint64_t sub_221A2F92C()
{
  v3 = *(v0 + 88);
  *(v0 + 16) = v3;
  v4 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = v3;
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    if (qword_27CFB7378 != -1)
    {
      OUTLINED_FUNCTION_0_32();
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 24);
    v13 = sub_221BCCD88();
    __swift_project_value_buffer(v13, qword_27CFDEDC8);

    v14 = v11;
    v15 = sub_221BCCD68();
    v16 = sub_221BCDA78();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 88);
      v18 = OUTLINED_FUNCTION_44_2();
      swift_slowAlloc();
      OUTLINED_FUNCTION_19_7();
      *v18 = 136315906;
      v19 = OUTLINED_FUNCTION_33_3((v2 + *(*v2 + 112)), v45, v47);
      OUTLINED_FUNCTION_31_6(v19);
      v21 = *(v20 + 120);
      v22 = sub_221BCC558();
      sub_2219AC8D8();
      sub_221BCE168();
      OUTLINED_FUNCTION_40_4();

      v23 = OUTLINED_FUNCTION_23_7();
      sub_2219A6360(v23, v22, v24);
      OUTLINED_FUNCTION_45_5();
      OUTLINED_FUNCTION_4_15();
      OUTLINED_FUNCTION_34_4(v25, v26, v27, v28, v29, v30, v31, v32, v46, v48);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 34) = v33;
      *v1 = v33;
      OUTLINED_FUNCTION_3_18();
      _os_log_impl(v34, v35, v36, v37, v38, 0x2Au);
      sub_221A01F0C(v1, &unk_27CFB7630, qword_221BD0790);
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_49_0();
      OUTLINED_FUNCTION_13_4();
      OUTLINED_FUNCTION_20_1();
    }

    else
    {
      v39 = *(v0 + 24);
    }

    v40 = *(v0 + 88);
    v41 = *(v0 + 24);
    sub_221A2C788(v40);
  }

  v42 = *(v0 + 64);

  OUTLINED_FUNCTION_4_3();

  return v43();
}

uint64_t sub_221A2FBB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_221A2FBF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_221A2FC54()
{
  OUTLINED_FUNCTION_27_7();
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v6[1] = sub_221A2FD24;
  v8 = OUTLINED_FUNCTION_6_12();

  return sub_221A2D320(v8, v9, v10, v11, v12);
}

uint64_t sub_221A2FD24()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_221A2FE08()
{
  OUTLINED_FUNCTION_27_7();
  v2 = (*(v1 + 80) + 64) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[6];
  v5 = v0[7];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_15(v6);
  *v7 = v8;
  v7[1] = sub_221A30280;
  v9 = OUTLINED_FUNCTION_6_12();

  return sub_221A2D898(v9, v10, v11, v12, v5, v13);
}

void sub_221A2FEE4(void *a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  else if (!(a2 >> 62))
  {
  }
}

uint64_t sub_221A2FF40()
{
  OUTLINED_FUNCTION_27_7();
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_15(v7);
  *v8 = v9;
  v8[1] = sub_221A2FD24;
  v10 = OUTLINED_FUNCTION_6_12();

  return sub_221A2F458(v10, v11, v12, v13, v5, v6, v14);
}

unint64_t sub_221A30030()
{
  v0 = sub_221A300F8();
  if (v1 <= 0x3F)
  {
    v2 = sub_221BCC558();
    if (v3 > 0x3F)
    {
      return v2;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

unint64_t sub_221A300F8()
{
  result = qword_27CFB8CC8;
  if (!qword_27CFB8CC8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27CFB8CC8);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_18AppIntentsServices06RemoteaB10DispatcherC22ActorCallRetryStrategyV7OutcomeO(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_221A3015C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 16))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_221A301CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *sub_221A30248(uint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8;
    v3 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = 8 * (a2 - 2);
    v3 = 0x8000000000000000;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_32()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_31(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  v3 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_9(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_2219A6360(v1, v2, va);
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return sub_221BCE168();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_21_5()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24_6()
{
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

uint64_t OUTLINED_FUNCTION_31_6(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  v3 = *v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_3@<X0>(uint64_t *a1@<X8>, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v4 = *a1;
  v5 = a1[1];

  return sub_2219A6360(v4, v5, va);
}

id OUTLINED_FUNCTION_34_4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 24) = a10;
  *(v10 + 32) = 2112;

  return v11;
}

uint64_t OUTLINED_FUNCTION_35_5@<X0>(uint64_t a1@<X8>, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = (v2 + a1);
  v5 = *v4;
  v6 = v4[1];

  return sub_2219A6360(v5, v6, va);
}

uint64_t OUTLINED_FUNCTION_39_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_43_5()
{
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[8];
}

uint64_t OUTLINED_FUNCTION_44_2()
{
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_5()
{
}

uint64_t sub_221A30520(uint64_t a1)
{
  result = sub_221BCCD88();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = _s23DistributedActorManagerC5StateVMa();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_221A30634(uint64_t a1, char a2)
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

uint64_t sub_221A30750(uint64_t a1)
{
  v2 = v1;
  v4 = sub_221BCCEE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v2, a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v15 = *v12;
      v19 = 0;
      v20 = 0xE000000000000000;
      sub_221BCDE68();
      MEMORY[0x223DA31F0](0xD000000000000013, 0x8000000221BEDC10);
      v18[1] = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCE018();
      MEMORY[0x223DA31F0](41, 0xE100000000000000);

      return v19;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    (*(v5 + 32))(v9, v12, v4);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_221BCDE68();
    MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEDC50);
    sub_221BCE018();
    MEMORY[0x223DA31F0](41, 0xE100000000000000);
    v16 = v19;
    (*(v5 + 8))(v9, v4);
  }

  return v16;
}

uint64_t sub_221A309FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  OUTLINED_FUNCTION_27_0();
  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A30A30()
{
  v1 = *(v0[7] + 40);
  v0[8] = v1;
  if (v1)
  {

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[9] = v2;
    *v2 = v3;
    v2[1] = sub_221A30B68;
    v4 = v0[5];
    v5 = v0[6];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];

    return sub_221A30D20();
  }

  else
  {
    sub_2219ACB94();
    swift_allocError();
    *v10 = 0xD00000000000001BLL;
    *(v10 + 8) = 0x8000000221BEDBD0;
    *(v10 + 16) = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_25();

    return v11();
  }
}

uint64_t sub_221A30B68()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = *(v2 + 72);
  v4 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A30C68()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221A30CC4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221A30D20()
{
  OUTLINED_FUNCTION_1_5();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v1[8] = *v0;
  v7 = sub_221BCC558();
  v1[9] = v7;
  v8 = *(v7 - 8);
  v1[10] = v8;
  v9 = *(v8 + 64) + 15;
  v1[11] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221A30E08()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v15 = *(v0 + 32);
  sub_221BCC548();
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  *(v6 + 48) = v15;
  v7 = swift_allocObject();
  *(v0 + 104) = v7;
  swift_weakInit();
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  v8[2] = *(v3 + 80);
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v1;
  v9 = *(MEMORY[0x277D85A10] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v10;
  *v10 = v11;
  v10[1] = sub_221A30F74;
  v12 = *(v0 + 48);
  v13 = *(v0 + 16);

  return MEMORY[0x282200830](v13, &unk_221BD6D60, v6, sub_221A34090, v8, 0, 0, v12);
}

uint64_t sub_221A30F74()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = v2[15];
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  v3[16] = v0;

  if (!v0)
  {
    v7 = v3[13];
    v8 = v3[14];
    v9 = v3[12];
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221A31090()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_25();

  return v1();
}

uint64_t sub_221A31108()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];

  (*(v6 + 8))(v4, v5);

  OUTLINED_FUNCTION_25();
  v8 = v0[16];

  return v7();
}

void sub_221A311B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a3;
  v108 = a2;
  v105 = a1;
  v8 = *(*v5 + 80);
  v9 = _s12AnyActorCallVMa();
  OUTLINED_FUNCTION_0_7();
  v103 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v89 - v14;
  v16 = sub_221BCDC98();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v89 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v89 - v24;
  OUTLINED_FUNCTION_0_7();
  v99 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v100 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v104 = v32;
  v34 = *(v33 + 64);
  v36 = MEMORY[0x28223BE20](v35);
  v93 = &v89 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v92 = &v89 - v39;
  MEMORY[0x28223BE20](v38);
  v91 = &v89 - v40;
  v98 = v8;
  v113 = v8;
  v114 = a4;
  v115 = a5;
  KeyPath = swift_getKeyPath();
  v110 = a4;
  v111 = a5;
  v112 = KeyPath;
  v42 = sub_221BCC558();
  v102 = a4;
  v97 = v42;
  v101 = a5;
  v44 = sub_221A3318C(sub_221A34250, v109, a4, v42, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v43);

  if (*(v44 + 16))
  {
    v94 = v20;
    v95 = AssociatedTypeWitness;
    v45 = v44;
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v46 = sub_221BCCD88();
    __swift_project_value_buffer(v46, qword_27CFDEDC8);

    v47 = v105;
    v48 = v108;
    sub_221A342A0(v105, v108);

    v49 = sub_221BCCD68();
    v50 = sub_221BCDA58();

    sub_221A3427C(v47, v48);
    v96 = v45;

    v90 = v50;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v118 = v89;
      *v51 = 136315650;
      *(v51 + 4) = sub_2219A6360(v106[2].isa, v106[3].isa, &v118);
      *(v51 + 12) = 2080;
      v116 = v47;
      v117 = v108;
      sub_221A342A0(v47, v108);
      _s23DistributedActorManagerC17ActorAvailabilityOMa();
      v106 = v49;
      swift_getWitnessTable();
      v52 = sub_221BCD3E8();
      v54 = sub_2219A6360(v52, v53, &v118);

      *(v51 + 14) = v54;
      *(v51 + 22) = 2080;
      v55 = v51;
      v56 = MEMORY[0x223DA33D0](v96, v97);
      v58 = v57;

      v59 = sub_2219A6360(v56, v58, &v118);

      *(v51 + 24) = v59;
      v60 = v106;
      _os_log_impl(&dword_221989000, v106, v90, "[%s] Applying state %s to %s", v55, 0x20u);
      v61 = v89;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v61, -1, -1);
      MEMORY[0x223DA4C00](v55, -1, -1);
    }

    else
    {
    }

    v62 = v95;
    v63 = v94;
    switch(v108)
    {
      case 1:
        v72 = OUTLINED_FUNCTION_0_33();
        v73(v72);
        v74 = v93;
        sub_221BCD598();
        swift_getAssociatedConformanceWitness();
        v75 = (v103 + 32);
        for (i = (v103 + 8); ; (*i)(v15, v9))
        {
          sub_221BCDCB8();
          OUTLINED_FUNCTION_13_8(v63);
          if (v68)
          {
            break;
          }

          v77 = (*v75)(v15, v63, v9);
          v78 = *(v15 + 1);
          (*v15)(v77);
          v79 = &v15[*(v9 + 36)];
          v80 = *(v79 + 1);
          (*v79)(v47);
        }

        (*(v104 + 8))(v74, v62);
        break;
      case 2:
        v81 = OUTLINED_FUNCTION_0_33();
        v82(v81);
        v66 = v92;
        sub_221BCD598();
        swift_getAssociatedConformanceWitness();
        v83 = (v103 + 32);
        for (j = (v103 + 8); ; (*j)(v15, v9))
        {
          sub_221BCDCB8();
          OUTLINED_FUNCTION_13_8(v23);
          if (v68)
          {
            break;
          }

          v85 = (*v83)(v15, v23, v9);
          v86 = *(v15 + 1);
          (*v15)(v85);
          v87 = &v15[*(v9 + 40)];
          v88 = *(v87 + 1);
          (*v87)(v47);
        }

        goto LABEL_19;
      case 3:
        return;
      default:
        v64 = OUTLINED_FUNCTION_0_33();
        v65(v64);
        v66 = v91;
        sub_221BCD598();
        swift_getAssociatedConformanceWitness();
        v67 = (v103 + 8);
        while (1)
        {
          sub_221BCDCB8();
          OUTLINED_FUNCTION_13_8(v25);
          if (v68)
          {
            break;
          }

          v70 = *(v25 + 2);
          v69 = *(v25 + 3);
          v71 = *v67;

          v71(v25, v9);
          v116 = v47;
          v70(&v116);
        }

LABEL_19:
        (*(v104 + 8))(v66, v62);
        break;
    }
  }

  else
  {
  }
}

uint64_t sub_221A31A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_221A31A6C, 0, 0);
}

uint64_t sub_221A31A6C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 48);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  *(v3 + 48) = v5;
  v6 = *(MEMORY[0x277D85A40] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 80) = v7;
  *v7 = v8;
  v7[1] = sub_221A31B70;
  v9 = *(v0 + 64);
  v10 = *(v0 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_221A31B70()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 72);

    OUTLINED_FUNCTION_25();

    return v11();
  }
}

uint64_t sub_221A31C94()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_25();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_221A31CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v72 = a6;
  v73 = a3;
  v64 = a5;
  v65 = a4;
  v62 = a1;
  v9 = *(*a2 + 80);
  v69 = _s12AnyActorCallVMa();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v70 = v67;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v69 - 8);
  v66 = (&v54 - v11);
  v71 = sub_221BCC558();
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v71);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v59 = &v54 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB82A0, &qword_221BD0D20);
  v17 = sub_221BCD7A8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v54 - v20;
  v61 = &v54 - v20;
  v55 = v9;
  v63 = _s9ActorCallCMa();
  (*(v18 + 16))(v21, v62, v17);
  v22 = *(a2 + 24);
  v62 = *(a2 + 16);
  v57 = v22;
  v23 = *(v12 + 16);
  v24 = v16;
  v25 = v73;
  v23(v24, v73, v71);
  v26 = *(a2 + 40);
  v58 = *(a2 + 32);
  v56 = v26;
  v27 = swift_allocObject();
  v27[2] = v9;
  v27[3] = a7;
  v28 = a7;
  v29 = v72;
  v27[4] = v64;
  v27[5] = v29;
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = v60;
  v32 = v25;
  v33 = v71;
  v23(v60, v32, v71);
  v34 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = v55;
  *(v35 + 3) = v28;
  *(v35 + 4) = v30;
  (*(v12 + 32))(&v35[v34], v31, v33);
  v36 = v65;

  v37 = v56;

  v38 = v57;

  sub_221A2CF18(v61, v62, v38, v59, v36, v58, v37, &unk_221BD6D78, v27, sub_221A341D0, v35);

  v40 = v66;
  sub_221A2C3C4(v39, v66);
  os_unfair_lock_lock((a2 + 48));
  sub_221A32770(a2 + 56, a2, v73, v40, &v74);
  os_unfair_lock_unlock((a2 + 48));
  v41 = v74;
  v42 = v75;
  v43 = v69;
  sub_221BCE178();
  v44 = *(v67 + 72);
  v45 = v70;
  v46 = *(v70 + 80);
  swift_allocObject();
  v47 = sub_221BCD698();
  v48 = v45;
  (*(v45 + 16))(v49, v40, v43);
  v50 = v43;
  v51 = sub_221BCD748();
  v74 = v47;
  WitnessTable = swift_getWitnessTable();
  sub_221A311B0(v41, v42, &v74, v51, WitnessTable);
  sub_221A3427C(v41, v42);

  return (*(v48 + 8))(v40, v50);
}

uint64_t sub_221A32208(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2219CA70C;

  return v9(a1, v5);
}

os_unfair_lock_s *sub_221A3230C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    os_unfair_lock_lock(result + 12);
    sub_221A32398(&v4[14], v4, a2);
    os_unfair_lock_unlock(v4 + 12);
  }

  return result;
}

uint64_t sub_221A32398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*a2 + 80);
  v32 = _s12AnyActorCallVMa();
  v8 = sub_221BCDC98();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v31 = v30 - v10;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v16 = sub_221BCCD88();
  __swift_project_value_buffer(v16, qword_27CFDEDC8);
  v17 = *(v12 + 16);
  v35 = a3;
  v17(v15, a3, v11);

  v18 = sub_221BCCD68();
  v19 = sub_221BCDA58();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30[2] = v3;
    v21 = v20;
    v22 = swift_slowAlloc();
    v30[1] = a1;
    v23 = v22;
    v36 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_2219A6360(*(a2 + 16), *(a2 + 24), &v36);
    *(v21 + 12) = 2080;
    sub_221A340A0(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v24 = sub_221BCE168();
    v26 = v25;
    (*(v12 + 8))(v15, v11);
    v27 = sub_2219A6360(v24, v26, &v36);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_221989000, v18, v19, "[%s] Removing <%s> from active calls", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v23, -1, -1);
    MEMORY[0x223DA4C00](v21, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  sub_221A340A0(&qword_27CFB9420, MEMORY[0x277CC95F0]);
  sub_221BCD2D8();
  v28 = v31;
  sub_221BCD2B8();
  return (*(v33 + 8))(v28, v34);
}

id sub_221A32770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v41 = a4;
  v44 = a1;
  v45 = a5;
  v8 = *(*a2 + 80);
  v43 = _s12AnyActorCallVMa();
  v9 = sub_221BCDC98();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = v37 - v11;
  v12 = sub_221BCC558();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v39 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = v37 - v17;
  if (qword_27CFB7378 != -1)
  {
    swift_once();
  }

  v19 = sub_221BCCD88();
  __swift_project_value_buffer(v19, qword_27CFDEDC8);
  v20 = *(v13 + 16);
  v40 = a3;
  v38 = v20;
  v20(v18, a3, v12);

  v21 = sub_221BCCD68();
  v22 = sub_221BCDA58();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v37[1] = v5;
    v24 = v23;
    v37[0] = swift_slowAlloc();
    v46 = v37[0];
    *v24 = 136315394;
    *(v24 + 4) = sub_2219A6360(*(a2 + 16), *(a2 + 24), &v46);
    *(v24 + 12) = 2080;
    sub_221A340A0(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v25 = sub_221BCE168();
    v27 = v26;
    (*(v13 + 8))(v18, v12);
    v28 = sub_2219A6360(v25, v27, &v46);

    *(v24 + 14) = v28;
    _os_log_impl(&dword_221989000, v21, v22, "[%s] Enqueuing call <%s> to active calls", v24, 0x16u);
    v29 = v37[0];
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v29, -1, -1);
    MEMORY[0x223DA4C00](v24, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v18, v12);
  }

  v38(v39, v40, v12);
  v31 = v42;
  v30 = v43;
  (*(*(v43 - 8) + 16))(v42, v41, v43);
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v30);
  sub_221A340A0(&qword_27CFB9420, MEMORY[0x277CC95F0]);
  sub_221BCD2D8();
  v32 = v44;
  sub_221BCD2F8();
  v33 = *(v32 + 8);
  v34 = v45;
  *v45 = v33;
  v35 = *(v32 + 16);
  *(v34 + 8) = v35;
  return sub_221A342A0(v33, v35);
}

void sub_221A32BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a2;
  v48 = a3;
  v49 = _s12AnyActorCallVMa();
  v5 = sub_221BCDC98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = sub_221BCC558();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v46 = a4;
    v47 = v12;
    if (qword_27CFB7378 != -1)
    {
      swift_once();
    }

    v20 = sub_221BCCD88();
    __swift_project_value_buffer(v20, qword_27CFDEDC8);
    (*(v14 + 16))(v17, v50, v13);

    v21 = sub_221BCCD68();
    v22 = sub_221BCDA58();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v45 = v5;
      v24 = v23;
      v43 = swift_slowAlloc();
      v51[0] = v43;
      *v24 = 136315394;
      v44 = v6;
      v25 = *(v19 + 16);
      v26 = *(v19 + 24);

      v27 = sub_2219A6360(v25, v26, v51);

      *(v24 + 4) = v27;
      *(v24 + 12) = 2080;
      sub_221A340A0(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
      v28 = sub_221BCE168();
      v30 = v29;
      (*(v14 + 8))(v17, v13);
      v31 = sub_2219A6360(v28, v30, v51);
      v6 = v44;

      *(v24 + 14) = v31;
      _os_log_impl(&dword_221989000, v21, v22, "[%s] Cancelling <%s> (parent cancelled)", v24, 0x16u);
      v32 = v43;
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v32, -1, -1);
      v33 = v24;
      v5 = v45;
      MEMORY[0x223DA4C00](v33, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v17, v13);
    }

    os_unfair_lock_lock((v19 + 48));
    v34 = v47;
    sub_221A330DC((v19 + 56));
    os_unfair_lock_unlock((v19 + 48));
    (*(v6 + 16))(v9, v34, v5);
    v35 = v49;
    if (__swift_getEnumTagSinglePayload(v9, 1, v49) == 1)
    {
      v36 = *(v6 + 8);
      v36(v34, v5);

      v36(v9, v5);
    }

    else
    {
      v37 = &v9[*(v35 + 36)];
      v39 = *v37;
      v38 = *(v37 + 1);
      v40 = *(*(v35 - 8) + 8);

      v40(v9, v35);
      sub_221BCD7B8();
      sub_221A340A0(&qword_27CFB9070, MEMORY[0x277D85678]);
      v41 = swift_allocError();
      sub_221BCD268();
      v39(v41);

      (*(v6 + 8))(v34, v5);
    }
  }
}

uint64_t sub_221A330DC(uint64_t *a1)
{
  v1 = *a1;
  sub_221BCC558();
  _s12AnyActorCallVMa();
  sub_221A340A0(&qword_27CFB9420, MEMORY[0x277CC95F0]);
  return sub_221BCD2E8();
}

uint64_t sub_221A3318C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v17;
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v60 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v58 = &v45 - v21;
  v22 = sub_221BCDC98();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v45 - v28;
  v30 = *(*(a4 - 1) + 64);
  v31 = MEMORY[0x28223BE20](v27);
  v59 = &v45 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v56 = *(a3 - 8);
  v34 = *(v56 + 64);
  MEMORY[0x28223BE20](v33);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x28223BE20](v65);
  v38 = &v45 - v37;
  v39 = sub_221BCD5A8();
  v66 = sub_221BCDF68();
  v61 = sub_221BCDF78();
  sub_221BCDF18();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_221BCD598();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_221BCDCB8();
      result = __swift_getEnumTagSinglePayload(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v29, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v29, AssociatedTypeWitness);
      sub_221BCDF58();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_221BCDCB8();
    if (__swift_getEnumTagSinglePayload(v26, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v26, v47);
      return v66;
    }

    (*v42)(v44, v26, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_221BCDF58();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

void *sub_221A337F8()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[3];

  v4 = v1[5];

  v5 = *(v2 + 80);
  _s23DistributedActorManagerC11CallManagerC6_StateVMa();
  OUTLINED_FUNCTION_6_13();
  v6 = sub_221BCC898();
  sub_221BB7E98(v6);
  return v1;
}

uint64_t sub_221A3385C()
{
  sub_221A337F8();

  return MEMORY[0x2821FE8D8](v0, 73, 7);
}

char *sub_221A33890()
{
  v1 = v0;
  v2 = *v0;

  v3 = *(v1 + 4);

  v4 = *(v1 + 5);

  v5 = *(v1 + 7);

  v6 = *(v1 + 8);

  v7 = qword_27CFB8CD0;
  v8 = sub_221BCCD88();
  OUTLINED_FUNCTION_11_4(v8);
  (*(v9 + 8))(&v1[v7]);
  sub_221BCC558();
  v10 = *(v2 + 80);
  _s23DistributedActorManagerC11NamedStreamVMa();
  OUTLINED_FUNCTION_2_26();
  sub_221A340A0(v11, v12);
  sub_221BCD2D8();
  OUTLINED_FUNCTION_6_13();
  v13 = sub_221BCC898();
  sub_221BB7E98(v13);
  v14 = *(*v1 + 144);
  v15 = _s23DistributedActorManagerC5StateVMa();
  OUTLINED_FUNCTION_11_4(v15);
  (*(v16 + 8))(&v1[v14]);
  return v1;
}

uint64_t sub_221A339EC()
{
  sub_221A33890();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_221A33B18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices06RemoteaB10DispatcherC23DistributedActorManagerC0G12AvailabilityOy_x_G(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_221A33B70(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_221A33BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221A33BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  _s23DistributedActorManagerC17ActorAvailabilityOMa();
  result = sub_221BCD828();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221A33CBC()
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

uint64_t sub_221A33D0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_221A33D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_221A33D90(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void sub_221A33DA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  _s23DistributedActorManagerC17ActorAvailabilityOMa();
  if (v2 <= 0x3F)
  {
    sub_221A33E90();
    if (v3 <= 0x3F)
    {
      _s23DistributedActorManagerC20EndpointAvailabilityOMa();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221A33E90()
{
  if (!qword_27CFB8FE0[0])
  {
    sub_221BCC558();
    v0 = sub_221BCDC98();
    if (!v1)
    {
      atomic_store(v0, qword_27CFB8FE0);
    }
  }
}

unint64_t sub_221A33EE8()
{
  result = sub_221BCCEE8();
  if (v1 <= 0x3F)
  {
    result = sub_221A33F64();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221A33F64()
{
  result = qword_27CFB9068;
  if (!qword_27CFB9068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFB9068);
  }

  return result;
}

uint64_t sub_221A33FC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v2 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_2219CA70C;

  return sub_221A31A40(a1, v5, v6, v7, v9, v8, v4);
}

uint64_t sub_221A340A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221A340F8(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v3 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_2219EC5F0;

  return sub_221A32208(a1, a2, v9);
}

os_unfair_lock_s *sub_221A341D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_221BCC558() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_221A3230C(v4, v5);
}

void sub_221A3427C(void *a1, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
  }

  else if (!a2)
  {
    swift_unknownObjectRelease();
  }
}

id sub_221A342A0(id result, char a2)
{
  if (a2 == 2 || a2 == 1)
  {
    return result;
  }

  if (!a2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_33()
{
  v1 = *(*(v0 - 272) + 16);
  result = *(v0 - 264);
  v3 = *(v0 - 208);
  v4 = *(v0 - 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_9()
{

  return sub_221BCDE68();
}

void sub_221A34364()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);

    v1(v3);

    sub_22198B60C(v1);
  }
}

void sub_221A343C0(void *a1)
{
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
  v4 = a1;

  sub_221A34364();
}

uint64_t sub_221A34414()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9078, &qword_221BD6DD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  if (qword_27CFB7320 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9080, &qword_221BE95A0);
  sub_221BCCDC8();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_221A34948();
  v7 = sub_221BCCE08();

  (*(v3 + 8))(v6, v2);
  v8 = *(v1 + 32);
  *(v1 + 32) = v7;

  return v1;
}

uint64_t sub_221A345C4(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_221A34624(v1);
  }

  return result;
}

void sub_221A34624(char a1)
{
  v2 = v1;
  v4 = *v2;
  if (qword_27CFB7320 != -1)
  {
    OUTLINED_FUNCTION_0_34();
  }

  if (*(qword_27CFDED00 + OBJC_IVAR____TtC18AppIntentsServices11WiFiMonitor_isAvailable) == 1)
  {
    v5 = v2[5];
    if ((a1 & 1) == 0)
    {
      if (v5)
      {
        return;
      }

      sub_221A0E704();
      v14 = swift_allocError();
      *v15 = 0xD000000000000016;
      *(v15 + 8) = 0x8000000221BEDCF0;
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 5;
      goto LABEL_13;
    }

    if (!v5)
    {
      return;
    }

LABEL_12:
    v14 = 0;
LABEL_13:

    sub_221A343C0(v14);
    return;
  }

  if (qword_27CFB73C0 != -1)
  {
    swift_once();
  }

  v6 = sub_221BCCD88();
  __swift_project_value_buffer(v6, qword_27CFDEE88);
  v7 = sub_221BCCD68();
  v8 = sub_221BCDA78();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_221BCE478();
    v13 = sub_2219A6360(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_221989000, v7, v8, "%s: Unable to monitor Wi-Fi availability", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DA4C00](v10, -1, -1);
    MEMORY[0x223DA4C00](v9, -1, -1);
  }

  if (v2[5])
  {
    goto LABEL_12;
  }
}

uint64_t sub_221A34874(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_22198B60C(v5);
}

uint64_t sub_221A348B8()
{
  v1 = *(v0 + 24);
  sub_22198B60C(*(v0 + 16));
  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_221A348E8()
{
  sub_221A348B8();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t sub_221A34948()
{
  result = qword_27CFB9088;
  if (!qword_27CFB9088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFB9078, &qword_221BD6DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFB9088);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_34()
{

  return swift_once();
}

void sub_221A349E4(uint64_t a1, uint64_t a2, void (*a3)(id, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_69_1();
  os_unfair_lock_lock((v4 + 16));
  v6 = v4;
  v7 = *(v4 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 24);
  a3(v6, v3, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = v11;
  os_unfair_lock_unlock((v4 + 16));
  v9 = *(v4 + 32);
  if (v9)
  {
    v10 = *(v4 + 40);
    v9(v6, v3);
  }
}

void *sub_221A34A8C(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 16));
  v3 = sub_221A34AE4((v1 + 24), a1);
  os_unfair_lock_unlock((v1 + 16));
  return v3;
}

void *sub_221A34AE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(*a1 + 16))
  {
    return 0;
  }

  v3 = sub_221B9EA30(a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_221A34B38(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    v7 = OUTLINED_FUNCTION_170_0();

    return sub_2219B1AB0(v7, v8);
  }

  else
  {
    v10 = a2;

    return sub_22198B620(v5, a2);
  }
}

uint64_t RemoteAppIntentsActor.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_id;
  v4 = sub_221BCD0B8();
  v5 = OUTLINED_FUNCTION_2_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t RemoteAppIntentsActor.__allocating_init(actorSystem:transactionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  RemoteAppIntentsActor.init(actorSystem:transactionDelegate:)(a1, a2, a3);
  return v9;
}

uint64_t RemoteAppIntentsActor.init(actorSystem:transactionDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = sub_221BCD0B8();
  v6 = OUTLINED_FUNCTION_0_2(v33);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v13 = v12 - v11;
  v14 = sub_221BCCD88();
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v22 = v21 - v20;
  swift_defaultActor_initialize();
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v23 = __swift_project_value_buffer(v14, qword_27CFDEDB0);
  (*(v17 + 16))(v22, v23, v14);
  sub_221BCCCE8();
  v24 = v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate;
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v34 = OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem;
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_actorSystem) = a1;
  type metadata accessor for RemoteAppIntentsActor();
  sub_221BCCFE8();
  OUTLINED_FUNCTION_67_3();
  sub_221A58E78(v25, v26);
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v27, v28);

  sub_221BCC618();
  (*(v8 + 32))(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_id, v13, v33);
  type metadata accessor for DeviceStateHelper();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_deviceState) = sub_221BAD888();
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB90B8, &qword_221BD6E00);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore) = sub_221A02CA8(sub_221A52AFC, v29, sub_221A52B04, v30);
  type metadata accessor for RemoteFileStore();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore) = swift_allocObject();
  _s17LNConnectionStoreCMa();
  swift_allocObject();
  v31 = swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore) = sub_221A5B430(v31, a3);
  *(v24 + 8) = a3;
  swift_unknownObjectWeakAssign();
  v37 = *(v4 + v34);

  sub_221BCC5F8();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_221A350D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ActorTransactionOperation();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v12 = sub_221BCC558();
  (*(*(v12 - 8) + 16))(v10, a2, v12);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_221BCDE68();

  v17 = 0xD000000000000016;
  v18 = 0x8000000221BEE170;
  v13 = sub_221A660C4();
  MEMORY[0x223DA31F0](v13);

  v14 = v18;
  v15 = &v10[*(v7 + 28)];
  *v15 = v17;
  v15[1] = v14;
  (*(a4 + 8))(v10, ObjectType, a4);
  return sub_221A58CC0();
}

uint64_t sub_221A352B0()
{
  OUTLINED_FUNCTION_1_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_221BCC6C8();
  v1[4] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_210();
  v7 = sub_221BCD088();
  v1[7] = v7;
  OUTLINED_FUNCTION_18_4(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_210();
  v11 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221A353A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_67();
  v16 = v15[3];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[9];
    OUTLINED_FUNCTION_98_2(v15[3]);
    sub_221A52BAC();
    sub_221A52C00();
    OUTLINED_FUNCTION_23_8();
    sub_221BCD078();
    v18 = v15[9];
    sub_221BCD048();
    v24 = v15[6];
    OUTLINED_FUNCTION_99_1();
    sub_221BCC6D8();
    v25 = *(MEMORY[0x277CD8E30] + 4);
    v26 = swift_task_alloc();
    v15[10] = v26;
    type metadata accessor for RemoteAppIntentsActor();
    OUTLINED_FUNCTION_0_35();
    sub_221A58E78(v27, v28);
    OUTLINED_FUNCTION_58_2();
    *v26 = v29;
    v26[1] = sub_221A35594;
    v30 = v15[9];
    v31 = v15[6];
    v33 = v15[2];
    v32 = v15[3];
    OUTLINED_FUNCTION_74_1(v34);
    OUTLINED_FUNCTION_6_8(v35);
    OUTLINED_FUNCTION_123_0();

    return MEMORY[0x282125BC0](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15);
  }

  else
  {
    v19 = v15[3];
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_124_0();

    return MEMORY[0x2822009F8](v20, v21, v22);
  }
}

uint64_t sub_221A35594()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 88) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A3568C()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_70();
  v6(v5);
  v7 = v0[9];
  v8 = v0[6];

  OUTLINED_FUNCTION_4_3();

  return v9();
}

uint64_t sub_221A35728()
{
  OUTLINED_FUNCTION_1_5();
  sub_221A3582C(*(v0 + 16));
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221A35794()
{
  OUTLINED_FUNCTION_8_0();
  v1 = OUTLINED_FUNCTION_219_0();
  v2(v1);
  v3 = v0[11];
  v4 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_25();

  return v5();
}

int64x2_t sub_221A3582C@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(1uLL);
  *a1 = result;
  return result;
}

uint64_t sub_221A3583C()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8398, &qword_221BD3098);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A35990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_67();
  v16 = v15[4];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[15];
    v18 = v15[12];
    v19 = v15[8];
    v20 = v15[9];
    v21 = v15[3];
    OUTLINED_FUNCTION_98_2(v15[4]);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_211_0();
    v22 = sub_221A58E78(&unk_27CFBB300, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
    OUTLINED_FUNCTION_212(&qword_27CFB83A0);
    OUTLINED_FUNCTION_36_6();
    if (v17)
    {
      v25 = OUTLINED_FUNCTION_49_5();
      v26(v25);
      v27 = OUTLINED_FUNCTION_18_9();
      v28(v27);

      OUTLINED_FUNCTION_20_3();

      return v29();
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v23, v22);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v24 = v15[15];
      sub_221BCD048();
      v34 = v15[7];
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v35 = *(MEMORY[0x277CD8E30] + 4);
      v36 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v36);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v37, v38);
      OUTLINED_FUNCTION_58_2();
      *v24 = v39;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v40);
      OUTLINED_FUNCTION_6_8(v41);
      OUTLINED_FUNCTION_152();

      return MEMORY[0x282125BC0](v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v31 = swift_task_alloc();
    v32 = OUTLINED_FUNCTION_75_3(v31);
    *v32 = v33;
    OUTLINED_FUNCTION_15_4(v32);

    return sub_221A36054();
  }
}

uint64_t sub_221A35C68()
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

uint64_t sub_221A35D60()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v7 = OUTLINED_FUNCTION_48_3();
  v8(v7);
  v9 = OUTLINED_FUNCTION_53_6();
  v10(v9);
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[7];

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_125_1();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_221A35E28()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  v2 = v0[18];
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[7];

  OUTLINED_FUNCTION_166();

  return v9();
}

uint64_t sub_221A35F80()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  v4 = *(v2 + 8);
  v5 = OUTLINED_FUNCTION_70();
  v6(v5);
  v7 = v0[17];
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[7];
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221A36054()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_168_0(v9);
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(v10);
  v0[24] = v11;
  OUTLINED_FUNCTION_18_4(v11);
  v0[25] = v12;
  v0[26] = *(v13 + 64);
  v0[27] = OUTLINED_FUNCTION_210();
  v14 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_221A36154(uint64_t a1)
{
  v2 = (*(v1 + 160) + *(*(v1 + 192) + 32));
  v3 = *(v2 + 17);
  if (qword_27CFB6CE8 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(a1, &unk_27CFDD280);
  v28 = v2[1];
  v29 = *v2;
  v31 = *(v2 + 16);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v5 = *(v1 + 208);
  v4 = *(v1 + 216);
  v6 = *(v1 + 200);
  v7 = *(v1 + 176);
  v8 = *(v1 + 184);
  v10 = *(v1 + 160);
  v9 = *(v1 + 168);
  v11 = sub_221BCCD88();
  __swift_project_value_buffer(v11, qword_27CFDEE88);
  sub_221A56250();
  v12 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v1 + 224) = v13;
  *(v13 + 16) = v3;
  sub_221A58D34();
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 112) = 0u;
  v14 = *(v2 + 17);
  v15 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v8, v16, v17, v15);
  v18 = sub_221BCCCD8();
  OUTLINED_FUNCTION_21_6(v7, v19, v20, v18);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v21, v22);
  OUTLINED_FUNCTION_284();
  *(v1 + 232) = sub_221BCC668();
  v23 = swift_task_alloc();
  *(v1 + 240) = v23;
  *(v23 + 16) = v10;
  *(v23 + 24) = v9;
  OUTLINED_FUNCTION_58_4(dword_221BD8148);
  v27 = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 248) = v25;
  *v25 = v26;
  OUTLINED_FUNCTION_55_5(v25);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_69_2();

  __asm { BR              X8 }
}

void sub_221A36400()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_125_1();
  }

  else
  {
    v11 = v3[29];
    v12 = v3[30];
    v14 = v3[27];
    v13 = v3[28];
    v16 = v3[22];
    v15 = v3[23];
    swift_unknownObjectRelease();

    sub_221A01F0C(v16, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v15, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C((v3 + 14), qword_27CFB7A80, &unk_221BD2800);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_125_1();

    v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_221A3658C(char a1)
{
  strcpy(v10, "Performing: ");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  v8 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
  v9 = sub_221A58E78(&qword_27CFB92C0, type metadata accessor for AppIntentsProtocol.PerformAction.Request);
  __swift_allocate_boxed_opaque_existential_1(v7);
  sub_221A56250();
  __swift_project_boxed_opaque_existential_0(v7, v8);
  v6 = a1 & 1;
  v2 = sub_221AE77A0(&v6);
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_0(v7);
  MEMORY[0x223DA31F0](v2, v4);

  return v10[0];
}

uint64_t sub_221A3669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[183] = a4;
  v4[182] = a3;
  v4[181] = a2;
  v4[180] = a1;
  return MEMORY[0x2822009F8](sub_221A366C8, a4, 0);
}

uint64_t sub_221A366C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  v11 = *(v10 + 1464);
  v12 = *(v10 + 1456);
  v13 = *(v10 + 1448);
  sub_221B707F8();
  sub_221B62F44();

  OUTLINED_FUNCTION_174_0();
  sub_221A4F364();
  if (v13)
  {
    v14 = *(v10 + 1440);
    sub_221BCC328();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_123_0();

    return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
  }

  sub_2219EB748(*(v10 + 1456), v10 + 1304);
  sub_22198B358((v10 + 1304), v10 + 1344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8098, qword_221BD38F0);
  if (swift_dynamicCast())
  {
    v24 = *(v10 + 1456);
    v25 = *(v10 + 1192);
    v26 = *(v10 + 1200);
    *(v10 + 1472) = v26;
    v27 = *(v10 + 1208);
    *(v10 + 1480) = v27;
    v28 = *(v10 + 1232);
    *(v10 + 1496) = v28;
    v29 = *(v10 + 1240);
    *(v10 + 1504) = v29;
    *(v10 + 1248) = v25;
    *(v10 + 1256) = v26;
    *(v10 + 1264) = v27;
    v30 = *(v10 + 1216);
    *(v10 + 1488) = v30;
    *(v10 + 1272) = v30;
    *(v10 + 1288) = v28;
    *(v10 + 1296) = v29;
    v31 = type metadata accessor for AppIntentsProtocol.PerformAction.Request(0);
    v32 = v31[7];
    memcpy((v10 + 232), (v24 + v32), 0xD7uLL);
    memcpy((v10 + 448), (v24 + v32), 0xD7uLL);
    v33 = v31[6];
    v34 = (v24 + v31[8]);
    v35 = *v34;
    v36 = v34[1];
    v37 = *(v34 + 16);
    LOBYTE(v34) = *(v34 + 17);
    *(v10 + 1416) = v35;
    *(v10 + 1424) = v36;
    *(v10 + 1432) = v37;
    *(v10 + 1433) = v34;
    *(v10 + 231) = *(v24 + v31[9]);
    sub_221A0E888(v10 + 232, v10 + 664);

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v10 + 1512) = v38;
    *v38 = v39;
    v38[1] = sub_221A36A58;
    v40 = *(v10 + 1464);
    v41 = *(v10 + 1440);
    OUTLINED_FUNCTION_123_0();

    return sub_221A398A4();
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v57 = *(v10 + 1440);
      sub_2219A1218();
      OUTLINED_FUNCTION_15_0();
      v58 = swift_allocError();
      OUTLINED_FUNCTION_118_1(v59, 8);
      v60 = sub_221BCC328();
      OUTLINED_FUNCTION_103_1(v60);
      OUTLINED_FUNCTION_52_2();

      __swift_destroy_boxed_opaque_existential_0((v10 + 1344));
      goto LABEL_3;
    }

    v43 = *(v10 + 1456);
    memcpy((v10 + 984), (v10 + 880), 0x68uLL);
    memcpy((v10 + 1088), (v10 + 880), 0x68uLL);
    v44 = *(v43 + 24);
    v45 = *(v43 + 32);
    v46 = OUTLINED_FUNCTION_70();
    __swift_project_boxed_opaque_existential_0(v46, v47);
    v48 = *(v45 + 8);
    v49 = OUTLINED_FUNCTION_4();
    v50(v49);
    v51 = *(v10 + 1384);
    *(v10 + 1520) = *(v10 + 1392);
    sub_2219982C4(*(v10 + 1400), *(v10 + 1408));
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v10 + 1528) = v52;
    *v52 = v53;
    v52[1] = sub_221A36C70;
    v54 = *(v10 + 1464);
    v55 = *(v10 + 1440);
    OUTLINED_FUNCTION_123_0();

    return sub_221A3930C();
  }
}

uint64_t sub_221A36A58()
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v2;
  v4 = v1[189];
  v5 = v1[188];
  v6 = v1[187];
  v7 = v1[186];
  v8 = v1[185];
  v9 = v1[184];
  v10 = v1[183];
  *v3 = *v0;

  v11 = v1[178];

  memcpy(v2 + 2, v2 + 56, 0xD7uLL);
  sub_221A0E8E4((v2 + 2));

  v12 = OUTLINED_FUNCTION_221();
  sub_2219982C4(v12, v13);

  OUTLINED_FUNCTION_95_0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A36C18()
{
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221A36C70()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[191];
  v3 = v1[190];
  v4 = v1[183];
  v5 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v6 = v5;

  return MEMORY[0x2822009F8](sub_221A36D8C, v4, 0);
}

uint64_t sub_221A36D8C()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219EB9FC(v0 + 984);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221A36DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 240) = v27;
  *(v8 + 248) = v28;
  *(v8 + 224) = v25;
  *(v8 + 232) = v26;
  *(v8 + 208) = v23;
  *(v8 + 216) = v24;
  *(v8 + 353) = v22;
  *(v8 + 200) = v21;
  *(v8 + 184) = v20;
  *(v8 + 168) = v19;
  *(v8 + 152) = v18;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 352) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v11 = sub_221BCCD88();
  *(v8 + 272) = v11;
  v12 = *(v11 - 8);
  *(v8 + 280) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A36F84, v15, v14);
}

uint64_t sub_221A36F84()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[28];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_221_0(v2);
  if (v1)
  {
    v4 = v0[28];
    v3 = v0[29];
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[38] = v6;
  v0[39] = v5;
  v7 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A371DC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *(v5 + 328);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  v3[43] = v0;

  if (v0)
  {
    v10 = v3[38];
    v11 = v3[39];
    v12 = sub_221A3739C;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v10 = v3[38];
    v11 = v3[39];
    v12 = sub_221A37314;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_221A37314()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v4 = v0[33];

  OUTLINED_FUNCTION_4_3();

  return v6();
}

uint64_t sub_221A3739C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37];
  v5 = v0[32];
  v4 = v0[33];

  sub_221A01F0C((v0 + 7), qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();
  v7 = v0[43];

  return v6();
}

uint64_t sub_221A37440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 280) = v27;
  *(v8 + 288) = v28;
  *(v8 + 264) = v25;
  *(v8 + 272) = v26;
  *(v8 + 248) = v23;
  *(v8 + 256) = v24;
  *(v8 + 130) = v22;
  *(v8 + 240) = v21;
  *(v8 + 208) = v19;
  *(v8 + 224) = v20;
  *(v8 + 192) = v18;
  *(v8 + 176) = a6;
  *(v8 + 184) = a8;
  *(v8 + 129) = a7;
  *(v8 + 160) = a4;
  *(v8 + 168) = a5;
  *(v8 + 144) = a2;
  *(v8 + 152) = a3;
  *(v8 + 136) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v11 = sub_221BCCD88();
  *(v8 + 312) = v11;
  v12 = *(v11 - 8);
  *(v8 + 320) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A375D4, v15, v14);
}

uint64_t sub_221A375D4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 264);
  v2 = swift_task_alloc();
  *(v0 + 336) = v2;
  *(v2 + 16) = *(v0 + 280);
  if (v1)
  {
    v4 = *(v0 + 264);
    v3 = *(v0 + 272);
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  *(v0 + 344) = v6;
  *(v0 + 352) = v5;
  v7 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A3787C()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 376);
  v7 = *(v5 + 368);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  v3[48] = v0;

  if (v0)
  {
    v10 = v3[43];
    v11 = v3[44];
    v12 = sub_221A37A68;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v10 = v3[43];
    v11 = v3[44];
    v12 = sub_221A379B4;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_221A379B4()
{
  OUTLINED_FUNCTION_104();
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 296);
  v4 = *(v0 + 304);
  v6 = *(v0 + 136);

  v7 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = *(v0 + 96);

  *v6 = v11;
  *(v6 + 16) = v10;
  *(v6 + 32) = v7;
  OUTLINED_FUNCTION_4_3();

  return v8();
}

uint64_t sub_221A37A68()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[45];
  v2 = v0[41];
  v3 = v0[42];
  v5 = v0[37];
  v4 = v0[38];

  sub_221A01F0C((v0 + 7), qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();
  v7 = v0[48];

  return v6();
}

uint64_t sub_221A37B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v26;
  *(v8 + 256) = v27;
  *(v8 + 232) = v24;
  *(v8 + 240) = v25;
  *(v8 + 216) = v22;
  *(v8 + 224) = v23;
  *(v8 + 106) = v21;
  *(v8 + 200) = v20;
  *(v8 + 184) = v19;
  *(v8 + 168) = v18;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 105) = a6;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v11 = sub_221BCCD88();
  *(v8 + 280) = v11;
  v12 = *(v11 - 8);
  *(v8 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A37C9C, v15, v14);
}

uint64_t sub_221A37C9C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[29];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_218_0(v2);
  if (v1)
  {
    v4 = v0[29];
    v3 = v0[30];
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[39] = v6;
  v0[40] = v5;
  v7 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A37ECC()
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
  v3[44] = v0;

  if (v0)
  {
    v10 = v3[39];
    v11 = v3[40];
    v12 = sub_221A58F34;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v10 = v3[39];
    v11 = v3[40];
    v12 = sub_221A58F1C;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_221A38004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 240) = v27;
  *(v8 + 248) = v28;
  *(v8 + 224) = v25;
  *(v8 + 232) = v26;
  *(v8 + 208) = v23;
  *(v8 + 216) = v24;
  *(v8 + 353) = v22;
  *(v8 + 200) = v21;
  *(v8 + 184) = v20;
  *(v8 + 168) = v19;
  *(v8 + 152) = v18;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 352) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v11 = sub_221BCCD88();
  *(v8 + 272) = v11;
  v12 = *(v11 - 8);
  *(v8 + 280) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A3819C, v15, v14);
}

uint64_t sub_221A3819C()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[28];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_221_0(v2);
  if (v1)
  {
    v4 = v0[28];
    v3 = v0[29];
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[38] = v6;
  v0[39] = v5;
  v7 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A383EC()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *(v5 + 328);
  v8 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v9 = v8;
  v3[43] = v0;

  if (v0)
  {
    v10 = v3[38];
    v11 = v3[39];
    v12 = sub_221A58F04;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v10 = v3[38];
    v11 = v3[39];
    v12 = sub_221A58F14;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_221A38524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v26;
  *(v8 + 256) = v27;
  *(v8 + 232) = v24;
  *(v8 + 240) = v25;
  *(v8 + 216) = v22;
  *(v8 + 224) = v23;
  *(v8 + 106) = v21;
  *(v8 + 200) = v20;
  *(v8 + 184) = v19;
  *(v8 + 168) = v18;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 105) = a6;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v11 = sub_221BCCD88();
  *(v8 + 280) = v11;
  v12 = *(v11 - 8);
  *(v8 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A386B4, v15, v14);
}

uint64_t sub_221A386B4()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[29];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_218_0(v2);
  if (v1)
  {
    v4 = v0[29];
    v3 = v0[30];
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[39] = v6;
  v0[40] = v5;
  v7 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A388E4()
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
  v3[44] = v0;

  if (v0)
  {
    v10 = v3[39];
    v11 = v3[40];
    v12 = sub_221A38ABC;
  }

  else
  {
    sub_221A01F0C((v3 + 7), qword_27CFB7A80, &unk_221BD2800);
    v10 = v3[39];
    v11 = v3[40];
    v12 = sub_221A38A1C;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_221A38A1C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 328);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);

  v6 = *(v0 + 96);
  v7 = *(v0 + 104);

  v8 = *(v0 + 8);
  OUTLINED_FUNCTION_125_1();

  return v12(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_221A38ABC()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[41];
  v2 = v0[37];
  v3 = v0[38];
  v5 = v0[33];
  v4 = v0[34];

  sub_221A01F0C((v0 + 7), qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();
  v7 = v0[44];

  return v6();
}

uint64_t sub_221A38B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v26;
  *(v8 + 256) = v27;
  *(v8 + 232) = v24;
  *(v8 + 240) = v25;
  *(v8 + 216) = v22;
  *(v8 + 224) = v23;
  *(v8 + 106) = v21;
  *(v8 + 200) = v20;
  *(v8 + 184) = v19;
  *(v8 + 168) = v18;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 105) = a6;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v11 = sub_221BCCD88();
  *(v8 + 280) = v11;
  v12 = *(v11 - 8);
  *(v8 + 288) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A38CF0, v15, v14);
}

uint64_t sub_221A38CF0()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[29];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_218_0(v2);
  if (v1)
  {
    v4 = v0[29];
    v3 = v0[30];
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[39] = v6;
  v0[40] = v5;
  v7 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A38F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 240) = v27;
  *(v8 + 248) = v28;
  *(v8 + 224) = v25;
  *(v8 + 232) = v26;
  *(v8 + 208) = v23;
  *(v8 + 216) = v24;
  *(v8 + 353) = v22;
  *(v8 + 200) = v21;
  *(v8 + 184) = v20;
  *(v8 + 168) = v19;
  *(v8 + 152) = v18;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 352) = a7;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680) - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v11 = sub_221BCCD88();
  *(v8 + 272) = v11;
  v12 = *(v11 - 8);
  *(v8 + 280) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  swift_getObjectType();
  v15 = sub_221BCD778();

  return MEMORY[0x2822009F8](sub_221A390B8, v15, v14);
}

uint64_t sub_221A390B8()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[28];
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_221_0(v2);
  if (v1)
  {
    v4 = v0[28];
    v3 = v0[29];
    swift_getObjectType();
    sub_221BCD778();
    OUTLINED_FUNCTION_182_0();
  }

  else
  {
    OUTLINED_FUNCTION_176_0();
  }

  v0[38] = v6;
  v0[39] = v5;
  v7 = OUTLINED_FUNCTION_177_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_221A3930C()
{
  OUTLINED_FUNCTION_1_5();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  memcpy(v1 + 10, v5, 0x68uLL);
  v6 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_221A39374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_268();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_67();
  a16 = v18;
  if (qword_27CFB7370 != -1)
  {
    OUTLINED_FUNCTION_1_20();
  }

  v22 = sub_221BCCD88();
  __swift_project_value_buffer(v22, qword_27CFDEDB0);
  v23 = sub_221BCCD68();
  v24 = sub_221BCDA98();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_288();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_285();
    v26 = swift_slowAlloc();
    a10 = v26;
    *v25 = 136315138;
    v27 = static Instrumentation.currentActivityId.getter();
    sub_2219A6360(v27, v28, &a10);
    OUTLINED_FUNCTION_277();

    *(v25 + 4) = v19;
    _os_log_impl(&dword_221989000, v23, v24, "%sPerforming LNURLLaunchRequest", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v29 = sub_2219B5FDC();
  v30 = [objc_allocWithZone(MEMORY[0x277D23CC8]) initWithAction_];
  v18[35] = v30;

  v18[2] = v18;
  v31 = OUTLINED_FUNCTION_266();
  v18[30] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
  v18[23] = MEMORY[0x277D85DD0];
  v18[24] = 1107296256;
  v18[25] = sub_2219C5280;
  v18[26] = &block_descriptor_5;
  v18[27] = v31;
  [v30 performWithCompletionHandler_];
  OUTLINED_FUNCTION_123_0();

  return MEMORY[0x282200938](v32);
}

uint64_t sub_221A39588()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  OUTLINED_FUNCTION_181();
  v5 = *(v4 + 272);
  if (v6)
  {
    v7 = sub_221A3975C;
  }

  else
  {
    v7 = sub_221A39694;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_221A39694()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[35];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  *(v4 + 112) = 0;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *v4 = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0;

  *(v4 + 120) = 0;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0;
  *(v4 + 224) = v3;
  *(v4 + 232) = v2;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_284();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_25();
  v7 = v5;

  return v7();
}

uint64_t sub_221A3975C()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[35];
  v2 = v0[36];
  swift_willThrow();

  if (qword_27CFB7348 != -1)
  {
    OUTLINED_FUNCTION_98();
  }

  if (sub_221BB85FC(v0[32], v0[33]))
  {
    v3 = v0[36];
    v4 = v0[31];
    sub_2219A1218();
    OUTLINED_FUNCTION_15_0();
    v5 = swift_allocError();
    OUTLINED_FUNCTION_118_1(v6, 3);
  }

  else
  {
    v3 = v0[36];
    v18 = v0[32];
    v17 = v0[33];
    v4 = v0[31];
    sub_2219ACADC();
    OUTLINED_FUNCTION_15_0();
    v5 = swift_allocError();
    *v19 = v18;
    *(v19 + 8) = v17;
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    *(v19 + 32) = 1;
  }

  v7 = sub_221BCC328();

  *v4 = v7;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_52_2();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_221A398A4()
{
  OUTLINED_FUNCTION_8_0();
  v3 = v2;
  v5 = v4;
  v7 = *(v6 + 16);
  *(v1 + 232) = *v6;
  *(v1 + 304) = v8;
  *(v1 + 312) = v0;
  *(v1 + 288) = v9;
  *(v1 + 296) = v10;
  *(v1 + 248) = v7;
  *(v1 + 264) = *(v6 + 32);
  *(v1 + 280) = *(v6 + 48);
  memcpy((v1 + 16), v11, 0xD7uLL);
  *(v1 + 320) = *v5;
  *(v1 + 231) = *(v5 + 16);
  *(v1 + 360) = *(v5 + 17);
  *(v1 + 361) = *v3;
  v12 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A39960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v38 = *(v16 + 360);
  v39 = *(v16 + 361);
  v17 = *(v16 + 231);
  v19 = *(v16 + 320);
  v18 = *(v16 + 328);
  v20 = *(v16 + 312);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v21, v22);
  v37 = *(v16 + 296);
  *(v16 + 336) = sub_221BCC668();
  v23 = swift_task_alloc();
  *(v16 + 344) = v23;
  *(v23 + 16) = v16 + 16;
  *(v23 + 24) = v20;
  *(v23 + 32) = v16 + 232;
  *(v23 + 40) = v37;
  *(v23 + 56) = v19;
  *(v23 + 64) = v18;
  *(v23 + 72) = v17;
  *(v23 + 73) = v38;
  *(v23 + 74) = v39;
  v24 = *(MEMORY[0x277D859E0] + 4);
  v25 = swift_task_alloc();
  *(v16 + 352) = v25;
  type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  OUTLINED_FUNCTION_58_2();
  *v25 = v26;
  v25[1] = sub_221A0AB98;
  v27 = *(v16 + 288);
  OUTLINED_FUNCTION_88_2();

  return MEMORY[0x2822007B8](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_221A39B04(void *a1, char *a2, char *a3, uint64_t *a4, uint64_t a5, void *a6, char *a7, uint64_t *a8, unsigned __int16 a9, unsigned __int8 a10)
{
  v124 = a6;
  v131 = a1;
  v132 = a3;
  v138 = *MEMORY[0x277D85DE8];
  v129 = type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
  v15 = *(*(v129 - 1) + 64);
  MEMORY[0x28223BE20](v129);
  v128 = (&v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_221BCC558();
  v125 = *(v17 - 8);
  v126 = v17;
  v18 = v125[8];
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v122 = &v111 - v22;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8500, &unk_221BD38D0);
  v116 = *(v130 - 1);
  v23 = *(v116 + 64);
  MEMORY[0x28223BE20](v130);
  v123 = &v111 - v24;
  if (qword_27CFB7370 != -1)
  {
    swift_once();
  }

  v25 = sub_221BCCD88();
  v26 = __swift_project_value_buffer(v25, qword_27CFDEDB0);
  sub_221A0E888(a2, v137);
  v117 = v26;
  v27 = sub_221BCCD68();
  v28 = sub_221BCDA98();
  sub_221A0E8E4(a2);
  v29 = os_log_type_enabled(v27, v28);
  v120 = a8;
  v121 = v21;
  v118 = a5;
  v119 = a7;
  v127 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v136[0] = v31;
    *v30 = 136315394;
    v32 = static Instrumentation.currentActivityId.getter();
    v34 = sub_2219A6360(v32, v33, v136);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    memcpy(v137, a2, 0xD7uLL);
    sub_221A0E888(a2, v134);
    v35 = sub_221BCD3D8();
    v37 = sub_2219A6360(v35, v36, v136);

    *(v30 + 14) = v37;
    _os_log_impl(&dword_221989000, v27, v28, "%sPerforming LNAction with options: %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v31, -1, -1);
    MEMORY[0x223DA4C00](v30, -1, -1);
  }

  type metadata accessor for RemoteAppIntentsActor();
  sub_221A58E78(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
  sub_221BCC648();
  if (!v137[3])
  {
    sub_221A01F0C(v137, &qword_27CFB9218, &qword_221BD7E88);
    sub_2219ACB94();
    v40 = swift_allocError();
    *v41 = 0xD000000000000017;
    *(v41 + 8) = 0x8000000221BEDE30;
    *(v41 + 16) = 3;
    swift_willThrow();
LABEL_10:
    *v128 = sub_221BCC328();
    swift_storeEnumTagMultiPayload();
    sub_221BCD798();

    goto LABEL_11;
  }

  sub_22198B358(v137, v134);
  if (qword_27CFB7348 != -1)
  {
    swift_once();
  }

  v38 = sub_221BB8738(qword_27CFDED38, *a4, a4[1], a4[4], a4[5]);
  v39 = v127;
  v43 = v38;
  v44 = a4[6];
  v45 = *(v44 + 16);
  if (v45)
  {
    v115 = v38;
    v46 = v127;
    v137[0] = MEMORY[0x277D84F90];
    sub_221BCDF28();
    v47 = (v44 + 48);
    do
    {
      v48 = *(v47 - 2);
      v49 = *(v47 - 1);
      v50 = *v47;
      v47 += 5;
      objc_allocWithZone(MEMORY[0x277D238D8]);
      v51 = v50;

      sub_2219A62D8(v48, v49, v50);
      sub_221BCDEF8();
      v52 = *(v137[0] + 2);
      sub_221BCDF38();
      sub_221BCDF48();
      sub_221BCDF08();
      --v45;
    }

    while (v45);
    v39 = v46;
    v43 = v115;
  }

  v53 = *(v39 + 12);
  if (v53)
  {
    v54 = *(v39 + 11);
    v55 = [objc_allocWithZone(MEMORY[0x277D23BC8]) init];
    sub_221A55F28(v54, v53, v55);
  }

  else
  {
    v55 = 0;
  }

  v56 = [objc_opt_self() policyWithActionMetadata:v43 signals:v55];

  sub_2219A1D20(0, &qword_27CFB77D8, 0x277D238D8);
  v57 = sub_221BCD658();

  v58 = [v56 actionWithParameters_];

  v137[0] = 0;
  v59 = [v56 connectionWithError_];
  v60 = v137[0];
  if (!v59)
  {
    v108 = v137[0];
    v40 = sub_221BCC338();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v134);
    goto LABEL_10;
  }

  v61 = v59;
  v115 = v58;
  v129 = v56;
  LODWORD(v128) = a10;
  HIDWORD(v114) = a9;
  (*(v116 + 16))(v123, v131, v130);
  v62 = v132;
  v116 = *&v132[OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore];
  v63 = *&v132[OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore];
  v131 = v43;

  v64 = v61;
  v65 = v60;
  v66 = [v64 bundleIdentifier];
  v67 = sub_221BCD388();
  v112 = v68;
  v113 = v67;

  v69 = v118;
  sub_2219A1B08(v118, v136);
  v70 = v124;
  v71 = v122;
  v130 = v125[2];
  v130(v122, v124, v126);
  v72 = *&v62[OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore];
  v133[0] = BYTE5(v114) & 1;
  sub_2219A1B08(v134, v135);
  v73 = v127;
  memcpy(v137, v127 + 112, 0x64uLL);
  v74 = objc_allocWithZone(_s29PerformActionExecutorDelegateCMa());

  v109 = v72;
  v75 = v64;
  sub_221A6645C(v131, v123, v64, v116, v63, v113, v112, v136, v71, v109, v133, v135, v137, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
  v77 = v76;
  sub_221A349E4(v76, v70, sub_221B9FDDC);
  memcpy(v137, v73, 0xD7uLL);
  v78 = v69[3];
  v79 = v69[4];
  __swift_project_boxed_opaque_existential_0(v69, v78);
  v80 = sub_2219AD2F4(v78, v79);
  v81 = 0;
  if (v128 != 11)
  {
    LOBYTE(v136[0]) = v128;
    v81 = sub_221AE7140();
  }

  v82 = sub_221AE7294(v119, v120, v80, v81);

  v83 = v115;
  v132 = v82;
  v84 = [v75 executorForAction:v115 options:v82 delegate:v77];
  [v84 perform];
  v85 = v121;
  v86 = v126;
  v130(v121, v124, v126);
  v87 = v84;
  v88 = sub_221BCCD68();
  v89 = sub_221BCDA98();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v130 = v75;
    v91 = v90;
    v128 = swift_slowAlloc();
    v137[0] = v128;
    *v91 = 136315650;
    v92 = static Instrumentation.currentActivityId.getter();
    LODWORD(v127) = v89;
    v94 = sub_2219A6360(v92, v93, v137);

    *(v91 + 4) = v94;
    *(v91 + 12) = 2080;
    sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v95 = sub_221BCE168();
    v97 = v96;
    v124 = v77;
    v98 = v85;
    v99 = v125[1];
    v99(v98, v86);
    v100 = sub_2219A6360(v95, v97, v137);

    *(v91 + 14) = v100;
    *(v91 + 22) = 2080;
    v101 = [v87 identifier];
    v102 = v122;
    sub_221BCC528();

    v103 = sub_221BCE168();
    v105 = v104;
    v99(v102, v86);
    v106 = sub_2219A6360(v103, v105, v137);

    *(v91 + 24) = v106;
    _os_log_impl(&dword_221989000, v88, v127, "%sexecutionIdentifier: %s, LNActionExecutor: %s", v91, 0x20u);
    v107 = v128;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v107, -1, -1);
    MEMORY[0x223DA4C00](v91, -1, -1);
  }

  else
  {

    (v125[1])(v85, v86);
  }

  __swift_destroy_boxed_opaque_existential_0(v134);
LABEL_11:
  v42 = *MEMORY[0x277D85DE8];
}

uint64_t sub_221A3A6D8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83B0, &qword_221BD3140);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A3A82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_2(v18);
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_221();
    sub_221A56250();
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2();
    v19 = sub_221A58E78(&unk_27CFBB2B0, type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse);
    OUTLINED_FUNCTION_212(&qword_27CFB83B8);
    OUTLINED_FUNCTION_36_6();
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_49_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_18_9();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v20, v19);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v16[15];
      sub_221BCD048();
      v39 = v16[7];
      sub_221BCC6D8();
      v40 = *(MEMORY[0x277CD8E30] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v41);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v42, v43);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_75_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A3ABDC();
  }
}

uint64_t sub_221A3AAE4()
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

uint64_t sub_221A3ABDC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_168_0(v9);
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(v10);
  OUTLINED_FUNCTION_18_4(v11);
  v0[24] = v12;
  v0[26] = OUTLINED_FUNCTION_158_0(*(v13 + 64));
  v14 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A3ACD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_104();
  if (qword_27CFB6CF0 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v16, &unk_27CFDD2E0);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_73_4();
  __swift_project_value_buffer(v17, qword_27CFDEE88);
  OUTLINED_FUNCTION_68_1();
  OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_91_2();
  v18 = OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_203_0(v18);
  OUTLINED_FUNCTION_152_0();
  sub_221BCCD08();
  *&v19 = OUTLINED_FUNCTION_40_5();
  *(v14 + 112) = v19;
  OUTLINED_FUNCTION_21_6(v15, v20, v21, v22);
  sub_221BCCCD8();
  v23 = OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_21_6(v23, v24, v25, v26);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v27, v28);
  OUTLINED_FUNCTION_183_0();
  v29 = sub_221BCC668();
  v30 = OUTLINED_FUNCTION_107_2(v29);
  OUTLINED_FUNCTION_92_2(v30);
  OUTLINED_FUNCTION_58_4(dword_221BD8148);
  v45 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v14 + 240) = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_55_5(v32);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_206();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, v45, a11, a12, a13, a14);
}

uint64_t sub_221A3AEA4()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000038, 0x8000000221BEE130);
  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  return 0;
}

uint64_t sub_221A3AF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ActionConfirmationResponse(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A3B010, a3, 0);
}

uint64_t sub_221A3B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_258();
  if (v17)
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    v19 = v18[5];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_206();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = *(v18[3] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);
  v30 = sub_221A34A8C(v18[4]);
  v18[6] = v30;
  if (!v30)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v47 = OUTLINED_FUNCTION_254();
    v48 = __swift_project_value_buffer(v47, qword_27CFDEDB0);
    OUTLINED_FUNCTION_68_1();
    OUTLINED_FUNCTION_0_0();
    sub_221A56250();
    v49 = sub_221BCCD68();
    v50 = sub_221BCDA78();
    v51 = OUTLINED_FUNCTION_83_2(v50);
    v52 = v18[5];
    if (v51)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_75_1();
      OUTLINED_FUNCTION_121_0();
      *v48 = 136315394;
      v53 = static Instrumentation.currentActivityId.getter();
      OUTLINED_FUNCTION_260(v53, v54, v55);
      OUTLINED_FUNCTION_106_1();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_10_10();
      sub_221A58E78(v56, v57);
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_146_0();
      v58 = OUTLINED_FUNCTION_120();
      sub_2219A6360(v58, v59, v60);
      OUTLINED_FUNCTION_171_0();

      *(v48 + 14) = v52;
      OUTLINED_FUNCTION_42_2(&dword_221989000, v61, v62, "%sNo delegate found for %s");
      OUTLINED_FUNCTION_49_0();
      v63 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v63);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_146_0();
    }

    v64 = v18[2];
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_42_5(v66, 2);
    v67 = sub_221BCC328();
    OUTLINED_FUNCTION_103_1(v67);
    OUTLINED_FUNCTION_52_2();

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v31, v32);
  OUTLINED_FUNCTION_170_0();
  v33 = sub_221BCC668();
  OUTLINED_FUNCTION_36_3(v33);
  v34 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_38_0(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_73_2(v36);
  OUTLINED_FUNCTION_35_3();
  *v16 = v37;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_206();

  return MEMORY[0x2822007B8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A3B2C0()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[3];
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  swift_unknownObjectRelease();

  v8 = OUTLINED_FUNCTION_39_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A3B3F8()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83C0, &qword_221BD31F8);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A3B54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_2(v18);
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_221();
    sub_221A56250();
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2();
    v19 = sub_221A58E78(&unk_27CFBB280, type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse);
    OUTLINED_FUNCTION_212(&qword_27CFB83C8);
    OUTLINED_FUNCTION_36_6();
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_49_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_18_9();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v20, v19);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v16[15];
      sub_221BCD048();
      v39 = v16[7];
      OUTLINED_FUNCTION_252_0();
      v40 = *(MEMORY[0x277CD8E30] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v41);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v42, v43);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_75_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A3B7F8();
  }
}

uint64_t sub_221A3B7F8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_168_0(v9);
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(v10);
  OUTLINED_FUNCTION_18_4(v11);
  v0[24] = v12;
  v0[26] = OUTLINED_FUNCTION_158_0(*(v13 + 64));
  v14 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A3B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_104();
  if (qword_27CFB6CF8 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v16, &unk_27CFDD340);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_73_4();
  __swift_project_value_buffer(v17, qword_27CFDEE88);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_91_2();
  v18 = OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_203_0(v18);
  OUTLINED_FUNCTION_152_0();
  sub_221BCCD08();
  *&v19 = OUTLINED_FUNCTION_40_5();
  *(v14 + 112) = v19;
  OUTLINED_FUNCTION_21_6(v15, v20, v21, v22);
  sub_221BCCCD8();
  v23 = OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_21_6(v23, v24, v25, v26);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v27, v28);
  OUTLINED_FUNCTION_183_0();
  v29 = sub_221BCC668();
  v30 = OUTLINED_FUNCTION_107_2(v29);
  OUTLINED_FUNCTION_92_2(v30);
  OUTLINED_FUNCTION_58_4(dword_221BD8148);
  v45 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v14 + 240) = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_55_5(v32);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_206();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, v45, a11, a12, a13, a14);
}

uint64_t sub_221A3BAC0()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000032, 0x8000000221BEE0F0);
  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  return 0;
}

uint64_t sub_221A3BB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ConfirmationResponse(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A3BC2C, a3, 0);
}

uint64_t sub_221A3BC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_258();
  if (v17)
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    v19 = v18[5];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_206();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = *(v18[3] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);
  v30 = sub_221A34A8C(v18[4]);
  v18[6] = v30;
  if (!v30)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v47 = OUTLINED_FUNCTION_254();
    v48 = __swift_project_value_buffer(v47, qword_27CFDEDB0);
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_0_0();
    sub_221A56250();
    v49 = sub_221BCCD68();
    v50 = sub_221BCDA78();
    v51 = OUTLINED_FUNCTION_83_2(v50);
    v52 = v18[5];
    if (v51)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_75_1();
      OUTLINED_FUNCTION_121_0();
      *v48 = 136315394;
      v53 = static Instrumentation.currentActivityId.getter();
      OUTLINED_FUNCTION_260(v53, v54, v55);
      OUTLINED_FUNCTION_106_1();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_10_10();
      sub_221A58E78(v56, v57);
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_145_0();
      v58 = OUTLINED_FUNCTION_120();
      sub_2219A6360(v58, v59, v60);
      OUTLINED_FUNCTION_171_0();

      *(v48 + 14) = v52;
      OUTLINED_FUNCTION_42_2(&dword_221989000, v61, v62, "%sNo delegate found for %s");
      OUTLINED_FUNCTION_49_0();
      v63 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v63);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_145_0();
    }

    v64 = v18[2];
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_42_5(v66, 2);
    v67 = sub_221BCC328();
    OUTLINED_FUNCTION_103_1(v67);
    OUTLINED_FUNCTION_52_2();

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v31, v32);
  OUTLINED_FUNCTION_170_0();
  v33 = sub_221BCC668();
  OUTLINED_FUNCTION_36_3(v33);
  v34 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_38_0(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_73_2(v36);
  OUTLINED_FUNCTION_35_3();
  *v16 = v37;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_206();

  return MEMORY[0x2822007B8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A3BEDC()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83F0, &qword_221BD3430);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A3C030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_2(v18);
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_221();
    sub_221A56250();
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2();
    v19 = sub_221A58E78(&unk_27CFBB250, type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse);
    OUTLINED_FUNCTION_212(&qword_27CFB83F8);
    OUTLINED_FUNCTION_36_6();
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_49_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_18_9();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v20, v19);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v16[15];
      sub_221BCD048();
      v39 = v16[7];
      sub_221BCC6D8();
      v40 = *(MEMORY[0x277CD8E30] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v41);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v42, v43);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_75_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A3C2E8();
  }
}

uint64_t sub_221A3C2E8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_168_0(v9);
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(v10);
  OUTLINED_FUNCTION_18_4(v11);
  v0[24] = v12;
  v0[26] = OUTLINED_FUNCTION_158_0(*(v13 + 64));
  v14 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A3C3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_104();
  if (qword_27CFB6D00 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v16, &unk_27CFDD3A0);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_73_4();
  __swift_project_value_buffer(v17, qword_27CFDEE88);
  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_91_2();
  v18 = OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_203_0(v18);
  OUTLINED_FUNCTION_152_0();
  sub_221BCCD08();
  *&v19 = OUTLINED_FUNCTION_40_5();
  *(v14 + 112) = v19;
  OUTLINED_FUNCTION_21_6(v15, v20, v21, v22);
  sub_221BCCCD8();
  v23 = OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_21_6(v23, v24, v25, v26);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v27, v28);
  OUTLINED_FUNCTION_183_0();
  v29 = sub_221BCC668();
  v30 = OUTLINED_FUNCTION_107_2(v29);
  OUTLINED_FUNCTION_92_2(v30);
  OUTLINED_FUNCTION_58_4(dword_221BD8148);
  v45 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v14 + 240) = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_55_5(v32);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_206();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, v45, a11, a12, a13, a14);
}

void sub_221A3C5B0()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_125_1();
  }

  else
  {
    v11 = v3[28];
    v12 = v3[29];
    v14 = v3[26];
    v13 = v3[27];
    v16 = v3[22];
    v15 = v3[23];
    swift_unknownObjectRelease();

    sub_221A01F0C(v16, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v15, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C((v3 + 14), qword_27CFB7A80, &unk_221BD2800);

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_125_1();

    v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_221A3C73C()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000033, 0x8000000221BEE0B0);
  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  return 0;
}

uint64_t sub_221A3C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ContinueInAppResponse(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A3C8A8, a3, 0);
}

uint64_t sub_221A3C8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_258();
  if (v17)
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    v19 = v18[5];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_206();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = *(v18[3] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);
  v30 = sub_221A34A8C(v18[4]);
  v18[6] = v30;
  if (!v30)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v47 = OUTLINED_FUNCTION_254();
    v48 = __swift_project_value_buffer(v47, qword_27CFDEDB0);
    OUTLINED_FUNCTION_64_3();
    OUTLINED_FUNCTION_0_0();
    sub_221A56250();
    v49 = sub_221BCCD68();
    v50 = sub_221BCDA78();
    v51 = OUTLINED_FUNCTION_83_2(v50);
    v52 = v18[5];
    if (v51)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_75_1();
      OUTLINED_FUNCTION_121_0();
      *v48 = 136315394;
      v53 = static Instrumentation.currentActivityId.getter();
      OUTLINED_FUNCTION_260(v53, v54, v55);
      OUTLINED_FUNCTION_106_1();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_10_10();
      sub_221A58E78(v56, v57);
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_144_0();
      v58 = OUTLINED_FUNCTION_120();
      sub_2219A6360(v58, v59, v60);
      OUTLINED_FUNCTION_171_0();

      *(v48 + 14) = v52;
      OUTLINED_FUNCTION_42_2(&dword_221989000, v61, v62, "%sNo delegate found for %s");
      OUTLINED_FUNCTION_49_0();
      v63 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v63);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_144_0();
    }

    v64 = v18[2];
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_42_5(v66, 2);
    v67 = sub_221BCC328();
    OUTLINED_FUNCTION_103_1(v67);
    OUTLINED_FUNCTION_52_2();

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v31, v32);
  OUTLINED_FUNCTION_170_0();
  v33 = sub_221BCC668();
  OUTLINED_FUNCTION_36_3(v33);
  v34 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_38_0(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_73_2(v36);
  OUTLINED_FUNCTION_35_3();
  *v16 = v37;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_206();

  return MEMORY[0x2822007B8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A3CB58()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v2 = v1[9];
  v3 = v1[8];
  v4 = v1[7];
  v5 = v1[3];
  v6 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;

  swift_unknownObjectRelease();

  v8 = OUTLINED_FUNCTION_39_3();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_221A3CC90()
{
  OUTLINED_FUNCTION_1_5();

  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_4_3();

  return v2();
}

uint64_t sub_221A3CCF0()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83D0, &qword_221BD32B8);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A3CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_2(v18);
    OUTLINED_FUNCTION_63_4();
    OUTLINED_FUNCTION_221();
    sub_221A56250();
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2();
    v19 = sub_221A58E78(&unk_27CFBB220, type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse);
    OUTLINED_FUNCTION_212(&qword_27CFB83D8);
    OUTLINED_FUNCTION_36_6();
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_49_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_18_9();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v20, v19);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v16[15];
      sub_221BCD048();
      v39 = v16[7];
      OUTLINED_FUNCTION_252_0();
      v40 = *(MEMORY[0x277CD8E30] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v41);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v42, v43);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_75_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A3D0F0();
  }
}

uint64_t sub_221A3D0F0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_168_0(v9);
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(v10);
  OUTLINED_FUNCTION_18_4(v11);
  v0[24] = v12;
  v0[26] = OUTLINED_FUNCTION_158_0(*(v13 + 64));
  v14 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A3D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_104();
  if (qword_27CFB6D08 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v16, &unk_27CFDD400);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_73_4();
  __swift_project_value_buffer(v17, qword_27CFDEE88);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_91_2();
  v18 = OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_203_0(v18);
  OUTLINED_FUNCTION_152_0();
  sub_221BCCD08();
  *&v19 = OUTLINED_FUNCTION_40_5();
  *(v14 + 112) = v19;
  OUTLINED_FUNCTION_21_6(v15, v20, v21, v22);
  sub_221BCCCD8();
  v23 = OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_21_6(v23, v24, v25, v26);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v27, v28);
  OUTLINED_FUNCTION_183_0();
  v29 = sub_221BCC668();
  v30 = OUTLINED_FUNCTION_107_2(v29);
  OUTLINED_FUNCTION_92_2(v30);
  OUTLINED_FUNCTION_58_4(dword_221BD8148);
  v45 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v14 + 240) = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_55_5(v32);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_206();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, v45, a11, a12, a13, a14);
}

uint64_t sub_221A3D3B8()
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000034, 0x8000000221BEE070);
  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  return 0;
}

uint64_t sub_221A3D48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.DisambiguationResponse(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A3D524, a3, 0);
}

uint64_t sub_221A3D524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_258();
  if (v17)
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    v19 = v18[5];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_206();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = *(v18[3] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);
  v30 = sub_221A34A8C(v18[4]);
  v18[6] = v30;
  if (!v30)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v47 = OUTLINED_FUNCTION_254();
    v48 = __swift_project_value_buffer(v47, qword_27CFDEDB0);
    OUTLINED_FUNCTION_63_4();
    OUTLINED_FUNCTION_0_0();
    sub_221A56250();
    v49 = sub_221BCCD68();
    v50 = sub_221BCDA78();
    v51 = OUTLINED_FUNCTION_83_2(v50);
    v52 = v18[5];
    if (v51)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_75_1();
      OUTLINED_FUNCTION_121_0();
      *v48 = 136315394;
      v53 = static Instrumentation.currentActivityId.getter();
      OUTLINED_FUNCTION_260(v53, v54, v55);
      OUTLINED_FUNCTION_106_1();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_10_10();
      sub_221A58E78(v56, v57);
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_143_0();
      v58 = OUTLINED_FUNCTION_120();
      sub_2219A6360(v58, v59, v60);
      OUTLINED_FUNCTION_171_0();

      *(v48 + 14) = v52;
      OUTLINED_FUNCTION_42_2(&dword_221989000, v61, v62, "%sNo delegate found for %s");
      OUTLINED_FUNCTION_49_0();
      v63 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v63);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_143_0();
    }

    v64 = v18[2];
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_42_5(v66, 2);
    v67 = sub_221BCC328();
    OUTLINED_FUNCTION_103_1(v67);
    OUTLINED_FUNCTION_52_2();

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v31, v32);
  OUTLINED_FUNCTION_170_0();
  v33 = sub_221BCC668();
  OUTLINED_FUNCTION_36_3(v33);
  v34 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_38_0(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_73_2(v36);
  OUTLINED_FUNCTION_35_3();
  *v16 = v37;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_206();

  return MEMORY[0x2822007B8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A3D7D4()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB83E0, &qword_221BD3378);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A3D928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_2(v18);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_221();
    sub_221A56250();
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2();
    v19 = sub_221A58E78(&unk_27CFBB1F0, type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse);
    OUTLINED_FUNCTION_212(&qword_27CFB83E8);
    OUTLINED_FUNCTION_36_6();
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_49_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_18_9();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v20, v19);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v16[15];
      sub_221BCD048();
      v39 = v16[7];
      OUTLINED_FUNCTION_252_0();
      v40 = *(MEMORY[0x277CD8E30] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v41);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v42, v43);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_75_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A3DBD4();
  }
}

uint64_t sub_221A3DBD4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_168_0(v9);
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(v10);
  OUTLINED_FUNCTION_18_4(v11);
  v0[24] = v12;
  v0[26] = OUTLINED_FUNCTION_158_0(*(v13 + 64));
  v14 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A3DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_104();
  if (qword_27CFB6D18 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v16, &unk_27CFDD4C0);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_73_4();
  __swift_project_value_buffer(v17, qword_27CFDEE88);
  OUTLINED_FUNCTION_62_3();
  OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_91_2();
  v18 = OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_203_0(v18);
  OUTLINED_FUNCTION_152_0();
  sub_221BCCD08();
  *&v19 = OUTLINED_FUNCTION_40_5();
  *(v14 + 112) = v19;
  OUTLINED_FUNCTION_21_6(v15, v20, v21, v22);
  sub_221BCCCD8();
  v23 = OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_21_6(v23, v24, v25, v26);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v27, v28);
  OUTLINED_FUNCTION_183_0();
  v29 = sub_221BCC668();
  v30 = OUTLINED_FUNCTION_107_2(v29);
  OUTLINED_FUNCTION_92_2(v30);
  OUTLINED_FUNCTION_58_4(dword_221BD8148);
  v45 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v14 + 240) = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_55_5(v32);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_206();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, v45, a11, a12, a13, a14);
}

unint64_t sub_221A3DE9C()
{
  sub_221BCDE68();

  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  return 0xD00000000000002CLL;
}

uint64_t sub_221A3DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.ChoiceResponse(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A3E004, a3, 0);
}

uint64_t sub_221A3E004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_258();
  if (v17)
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    v19 = v18[5];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_206();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = *(v18[3] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);
  v30 = sub_221A34A8C(v18[4]);
  v18[6] = v30;
  if (!v30)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v47 = OUTLINED_FUNCTION_254();
    v48 = __swift_project_value_buffer(v47, qword_27CFDEDB0);
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_0_0();
    sub_221A56250();
    v49 = sub_221BCCD68();
    v50 = sub_221BCDA78();
    v51 = OUTLINED_FUNCTION_83_2(v50);
    v52 = v18[5];
    if (v51)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_75_1();
      OUTLINED_FUNCTION_121_0();
      *v48 = 136315394;
      v53 = static Instrumentation.currentActivityId.getter();
      OUTLINED_FUNCTION_260(v53, v54, v55);
      OUTLINED_FUNCTION_106_1();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_10_10();
      sub_221A58E78(v56, v57);
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_142_0();
      v58 = OUTLINED_FUNCTION_120();
      sub_2219A6360(v58, v59, v60);
      OUTLINED_FUNCTION_171_0();

      *(v48 + 14) = v52;
      OUTLINED_FUNCTION_42_2(&dword_221989000, v61, v62, "%sNo delegate found for %s");
      OUTLINED_FUNCTION_49_0();
      v63 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v63);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_142_0();
    }

    v64 = v18[2];
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_42_5(v66, 2);
    v67 = sub_221BCC328();
    OUTLINED_FUNCTION_103_1(v67);
    OUTLINED_FUNCTION_52_2();

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v31, v32);
  OUTLINED_FUNCTION_170_0();
  v33 = sub_221BCC668();
  OUTLINED_FUNCTION_36_3(v33);
  v34 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_38_0(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_73_2(v36);
  OUTLINED_FUNCTION_35_3();
  *v16 = v37;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_206();

  return MEMORY[0x2822007B8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A3E2B4()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8400, &qword_221BD7290);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A3E408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_2(v18);
    OUTLINED_FUNCTION_61_4();
    OUTLINED_FUNCTION_221();
    sub_221A56250();
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2();
    v19 = sub_221A58E78(&unk_27CFBB1D0, type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse);
    OUTLINED_FUNCTION_212(&qword_27CFB8408);
    OUTLINED_FUNCTION_36_6();
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_49_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_18_9();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v20, v19);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v16[15];
      sub_221BCD048();
      v39 = v16[7];
      sub_221BCC6D8();
      v40 = *(MEMORY[0x277CD8E30] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v41);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v42, v43);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_75_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A3E6C0();
  }
}

uint64_t sub_221A3E6C0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  v0[22] = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  v9 = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_168_0(v9);
  v11 = type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(v10);
  OUTLINED_FUNCTION_18_4(v11);
  v0[24] = v12;
  v0[26] = OUTLINED_FUNCTION_158_0(*(v13 + 64));
  v14 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_221A3E7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_172_0();
  OUTLINED_FUNCTION_104();
  if (qword_27CFB6D10 != -1)
  {
    v16 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(v16, &unk_27CFDD460);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v17 = OUTLINED_FUNCTION_73_4();
  __swift_project_value_buffer(v17, qword_27CFDEE88);
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_253_0();
  OUTLINED_FUNCTION_91_2();
  v18 = OUTLINED_FUNCTION_262();
  OUTLINED_FUNCTION_203_0(v18);
  OUTLINED_FUNCTION_152_0();
  sub_221BCCD08();
  *&v19 = OUTLINED_FUNCTION_40_5();
  *(v14 + 112) = v19;
  OUTLINED_FUNCTION_21_6(v15, v20, v21, v22);
  sub_221BCCCD8();
  v23 = OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_21_6(v23, v24, v25, v26);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v27, v28);
  OUTLINED_FUNCTION_183_0();
  v29 = sub_221BCC668();
  v30 = OUTLINED_FUNCTION_107_2(v29);
  OUTLINED_FUNCTION_92_2(v30);
  OUTLINED_FUNCTION_58_4(dword_221BD8148);
  v45 = v31;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v14 + 240) = v32;
  *v32 = v33;
  OUTLINED_FUNCTION_55_5(v32);
  OUTLINED_FUNCTION_24_7();
  OUTLINED_FUNCTION_17_10();
  OUTLINED_FUNCTION_206();

  return v42(v34, v35, v36, v37, v38, v39, v40, v41, a9, v45, a11, a12, a13, a14);
}

unint64_t sub_221A3E988()
{
  sub_221BCDE68();

  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v0 = sub_221BCE168();
  MEMORY[0x223DA31F0](v0);

  return 0xD000000000000030;
}

uint64_t sub_221A3EA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = *(*(type metadata accessor for AppIntentsProtocol.PerformAction.NeedsValueResponse(0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221A3EAF0, a3, 0);
}

uint64_t sub_221A3EAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_240_0();
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_258();
  if (v17)
  {
    OUTLINED_FUNCTION_257();
    OUTLINED_FUNCTION_251_0();
    OUTLINED_FUNCTION_250_0();
    OUTLINED_FUNCTION_52_2();
LABEL_3:
    v19 = v18[5];

    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_206();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  v29 = *(v18[3] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);
  v30 = sub_221A34A8C(v18[4]);
  v18[6] = v30;
  if (!v30)
  {
    if (qword_27CFB7370 != -1)
    {
      OUTLINED_FUNCTION_1_20();
    }

    v47 = OUTLINED_FUNCTION_254();
    v48 = __swift_project_value_buffer(v47, qword_27CFDEDB0);
    OUTLINED_FUNCTION_61_4();
    OUTLINED_FUNCTION_0_0();
    sub_221A56250();
    v49 = sub_221BCCD68();
    v50 = sub_221BCDA78();
    v51 = OUTLINED_FUNCTION_83_2(v50);
    v52 = v18[5];
    if (v51)
    {
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_75_1();
      OUTLINED_FUNCTION_121_0();
      *v48 = 136315394;
      v53 = static Instrumentation.currentActivityId.getter();
      OUTLINED_FUNCTION_260(v53, v54, v55);
      OUTLINED_FUNCTION_106_1();
      OUTLINED_FUNCTION_43_3();
      OUTLINED_FUNCTION_10_10();
      sub_221A58E78(v56, v57);
      OUTLINED_FUNCTION_107_1();
      OUTLINED_FUNCTION_92_1();
      OUTLINED_FUNCTION_141_0();
      v58 = OUTLINED_FUNCTION_120();
      sub_2219A6360(v58, v59, v60);
      OUTLINED_FUNCTION_171_0();

      *(v48 + 14) = v52;
      OUTLINED_FUNCTION_42_2(&dword_221989000, v61, v62, "%sNo delegate found for %s");
      OUTLINED_FUNCTION_49_0();
      v63 = OUTLINED_FUNCTION_74_3();
      MEMORY[0x223DA4C00](v63);
      OUTLINED_FUNCTION_29_1();
      MEMORY[0x223DA4C00]();
    }

    else
    {

      OUTLINED_FUNCTION_141_0();
    }

    v64 = v18[2];
    sub_221A0E704();
    OUTLINED_FUNCTION_15_0();
    v65 = swift_allocError();
    OUTLINED_FUNCTION_42_5(v66, 2);
    v67 = sub_221BCC328();
    OUTLINED_FUNCTION_103_1(v67);
    OUTLINED_FUNCTION_52_2();

    goto LABEL_3;
  }

  OUTLINED_FUNCTION_163_0();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v31, v32);
  OUTLINED_FUNCTION_170_0();
  v33 = sub_221BCC668();
  OUTLINED_FUNCTION_36_3(v33);
  v34 = OUTLINED_FUNCTION_113_1();
  OUTLINED_FUNCTION_38_0(v34);
  v35 = *(MEMORY[0x277D859E0] + 4);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_73_2(v36);
  OUTLINED_FUNCTION_35_3();
  *v16 = v37;
  OUTLINED_FUNCTION_94_2();
  OUTLINED_FUNCTION_13_5();
  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_206();

  return MEMORY[0x2822007B8](v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_221A3EDA0()
{
  OUTLINED_FUNCTION_1_5();
  v3 = OUTLINED_FUNCTION_126_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v7 = OUTLINED_FUNCTION_210();
  v8 = OUTLINED_FUNCTION_169_0(v7);
  v9 = type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse(v8);
  OUTLINED_FUNCTION_72_2(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_210();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB90E8, &qword_221BD7338);
  v0[10] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v16 = OUTLINED_FUNCTION_210();
  v17 = OUTLINED_FUNCTION_235_0(v16);
  v0[13] = v17;
  OUTLINED_FUNCTION_18_4(v17);
  v0[14] = v18;
  v20 = *(v19 + 64);
  v0[15] = OUTLINED_FUNCTION_210();
  v21 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_221A3EEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v17 = v16[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_32_6();
    OUTLINED_FUNCTION_98_2(v18);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_3_13();
    OUTLINED_FUNCTION_77_2();
    v19 = sub_221A58E78(&unk_27CFBB1A0, type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse);
    OUTLINED_FUNCTION_212(&qword_27CFB90F0);
    OUTLINED_FUNCTION_36_6();
    if (v15)
    {
      v22 = OUTLINED_FUNCTION_49_5();
      v23(v22);
      v24 = OUTLINED_FUNCTION_18_9();
      v25(v24);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
    }

    else
    {
      OUTLINED_FUNCTION_234_0();
      OUTLINED_FUNCTION_3_19();
      sub_221A58E78(v20, v19);
      OUTLINED_FUNCTION_11_10(&qword_27CFB83A8);
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v16[15];
      sub_221BCD048();
      v39 = v16[7];
      sub_221BCC6D8();
      v40 = *(MEMORY[0x277CD8E30] + 4);
      v41 = swift_task_alloc();
      OUTLINED_FUNCTION_127_2(v41);
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v42, v43);
      OUTLINED_FUNCTION_58_2();
      *v21 = v44;
      OUTLINED_FUNCTION_19_8();
      OUTLINED_FUNCTION_74_1(v45);
      OUTLINED_FUNCTION_6_8(v46);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v35 = swift_task_alloc();
    v36 = OUTLINED_FUNCTION_75_3(v35);
    *v36 = v37;
    OUTLINED_FUNCTION_15_4(v36);
    OUTLINED_FUNCTION_45_2();

    return sub_221A3F1B4();
  }
}

uint64_t sub_221A3F1B4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_149_0(v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v3);
  v5 = *(v4 + 64);
  *(v0 + 176) = OUTLINED_FUNCTION_210();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  *(v0 + 184) = OUTLINED_FUNCTION_210();
  v9 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A3F264(uint64_t a1)
{
  if (qword_27CFB6D20 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(a1, &qword_27CFDD520);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = *(v1 + 160);
  v4 = *(v1 + 168);
  v6 = *(v1 + 152);
  v7 = sub_221BCCD88();
  __swift_project_value_buffer(v7, qword_27CFDEE88);
  sub_221BCCD08();
  *&v8 = OUTLINED_FUNCTION_40_5();
  *(v1 + 112) = v8;
  OUTLINED_FUNCTION_21_6(v3, v9, v10, v11);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = swift_task_alloc();
  *(v16 + 16) = v4;
  *(v16 + 24) = v5;
  v23 = v16;
  OUTLINED_FUNCTION_27_0();
  sub_221A3F804(v17, v18, v19, 0, 0, 0, v20, 0, 0, 0, 0, 0, v1 + 112, 0, v3, v2, sub_221A58468, v23);

  sub_221A01F0C(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_221A01F0C(v3, &qword_27CFB7F60, &qword_221BD6680);
  sub_221A01F0C(v1 + 112, qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();

  return v21();
}

void sub_221A3F44C(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for AppIntentsProtocol.PerformAction.UnknownRequestResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_221A4F364();
  if (v3)
  {
    v9 = sub_221BCC328();

    *a3 = v9;
    type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v10 = *(a1 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_inFlightPerformStore);
    v11 = sub_221A34A8C(a2);
    if (v11)
    {
      v12 = v11;
      sub_221A663E8();
      sub_2219A1218();
      v13 = swift_allocError();
      *v14 = 4;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = 5;
      v15 = sub_221BCC328();

      *a3 = v15;
      type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
      swift_storeEnumTagMultiPayload();
      v16 = v13;
    }

    else
    {
      if (qword_27CFB7370 != -1)
      {
        swift_once();
      }

      v17 = sub_221BCCD88();
      __swift_project_value_buffer(v17, qword_27CFDEDB0);
      sub_221A56250();
      v18 = sub_221BCCD68();
      v19 = sub_221BCDA78();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v31 = v21;
        *v20 = 136315394;
        v22 = static Instrumentation.currentActivityId.getter();
        v24 = sub_2219A6360(v22, v23, &v31);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2080;
        sub_221BCC558();
        sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
        v25 = sub_221BCE168();
        v27 = v26;
        sub_221A58CC0();
        v28 = sub_2219A6360(v25, v27, &v31);

        *(v20 + 14) = v28;
        _os_log_impl(&dword_221989000, v18, v19, "%sNo delegate found for %s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v21, -1, -1);
        MEMORY[0x223DA4C00](v20, -1, -1);
      }

      else
      {

        sub_221A58CC0();
      }

      sub_221A0E704();
      v29 = swift_allocError();
      *v30 = 2;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      *(v30 + 32) = 9;
      *a3 = sub_221BCC328();
      type metadata accessor for AppIntentsProtocol.PerformAction.Response(0);
      swift_storeEnumTagMultiPayload();
      v16 = v29;
    }
  }
}

uint64_t sub_221A3F804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t), uint64_t a18)
{
  v50 = a3;
  v51 = a6;
  v49 = a5;
  v53 = a4;
  v54 = a2;
  v58 = a7;
  v57 = a18;
  v55 = a1;
  v56 = a17;
  v52 = a14;
  v47 = a11;
  v48 = a10;
  v45 = a16;
  v46 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v42 = &v42 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v43 = &v42 - v23;
  v24 = sub_221BCCD88();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v44 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  sub_221A1C558();
  sub_221A1C558();
  sub_221A1C558();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92B8, &qword_221BD8130);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v45 = swift_allocObject();
  v31 = v49;

  v32 = v50;

  v33 = v51;
  sub_22198BEB8(v51);
  v34 = v48;
  sub_22198BEB8(a9);
  v35 = v47;
  v36 = v46;
  sub_22198BEB8(v47);
  if (v52)
  {
    v37 = 258;
  }

  else
  {
    v37 = 2;
  }

  v38 = sub_2219CBEFC(v54, v32, v55, v44, v33, a8, a9, v34, v35, v36, v59, v53, v31, v37, v43, v42);
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  v59[3] = v28;
  v59[4] = &off_28351D968;
  v59[0] = v38;
  sub_221A1C558();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7A80, &unk_221BD2800);
  v39 = swift_task_localValuePush();
  sub_2219EC600(v39);
  v40 = v59[7];
  sub_221A50954(v38, v56, v57, sub_221B62F00);
  if (v40)
  {
    sub_2219CBFE8();
    swift_willThrow();
  }

  else
  {
    sub_2219CC71C();
  }

  swift_task_localValuePop();

  return sub_221A01F0C(v59, qword_27CFB7A80, &unk_221BD2800);
}

uint64_t sub_221A3FC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, void (*a17)(uint64_t), uint64_t a18)
{
  v51 = a3;
  v52 = a6;
  v50 = a5;
  v54 = a4;
  v55 = a2;
  v59 = a7;
  v58 = a18;
  v56 = a1;
  v57 = a17;
  v53 = a14;
  v48 = a11;
  v49 = a10;
  v46 = a16;
  v47 = a12;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v43 = &v43 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v44 = &v43 - v23;
  v24 = sub_221BCCD88();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v45 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))();
  sub_221A1C558();
  sub_221A1C558();
  sub_221A1C558();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB92A0, &qword_221BD80B0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v46 = swift_allocObject();
  v31 = v50;

  v32 = v51;

  v33 = v52;
  sub_22198BEB8(v52);
  v34 = v49;
  sub_22198BEB8(a9);
  v35 = v48;
  v36 = v47;
  sub_22198BEB8(v48);
  if (v53)
  {
    v37 = 258;
  }

  else
  {
    v37 = 2;
  }

  v38 = sub_2219CBEFC(v55, v32, v56, v45, v33, a8, a9, v34, v35, v36, v60, v54, v31, v37, v44, v43);
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  v60[3] = v28;
  v60[4] = &off_28351D968;
  v60[0] = v38;
  sub_221A1C558();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7A80, &unk_221BD2800);
  v39 = swift_task_localValuePush();
  sub_2219EC600(v39);
  v40 = v59;
  v41 = v60[7];
  sub_221A50954(v38, v57, v58, sub_221B62F00);
  if (v41)
  {
    sub_2219CC010(v41);
    swift_willThrow();
  }

  else
  {
    sub_2219CC758(v40);
  }

  swift_task_localValuePop();

  return sub_221A01F0C(v60, qword_27CFB7A80, &unk_221BD2800);
}

uint64_t sub_221A40094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v50 = a6;
  v46 = a5;
  v52 = a4;
  v48 = a3;
  v53 = a2;
  v54 = a1;
  v55 = a7;
  v51 = a14;
  v45 = a11;
  v49 = a10;
  v47 = a9;
  v44 = a16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v41 = &v40 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v42 = &v40 - v23;
  v24 = sub_221BCCD88();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v43 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a17;
  v58 = a18;
  (*(v27 + 16))();
  sub_221A1C558();
  sub_221A1C558();
  sub_221A1C558();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8AD8, &unk_221BD66A0);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v44 = swift_allocObject();
  v31 = v46;

  v32 = v48;

  v33 = v50;
  sub_22198BEB8(v50);
  v34 = v47;
  v35 = v49;
  sub_22198BEB8(v47);
  v36 = v45;
  sub_22198BEB8(v45);
  if (v51)
  {
    v37 = 258;
  }

  else
  {
    v37 = 2;
  }

  v38 = sub_2219CBEFC(v53, v32, v54, v43, v33, a8, v34, v35, v36, a12, v59, v52, v31, v37, v42, v41);
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  v59[3] = v28;
  v59[4] = &off_28351D968;
  v59[0] = v38;
  sub_221A1C558();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7A80, &unk_221BD2800);
  swift_task_localValuePush();
  sub_221A52340(v38, sub_221A57434, v56);
  swift_task_localValuePop();

  return sub_221A01F0C(v59, qword_27CFB7A80, &unk_221BD2800);
}

uint64_t sub_221A404D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v50 = a6;
  v46 = a5;
  v52 = a4;
  v48 = a3;
  v53 = a2;
  v54 = a1;
  v55 = a7;
  v51 = a14;
  v45 = a11;
  v49 = a10;
  v47 = a9;
  v44 = a16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v41 = &v40 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v42 = &v40 - v23;
  v24 = sub_221BCCD88();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v43 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a17;
  v57 = a18;
  (*(v27 + 16))();
  sub_221A1C558();
  sub_221A1C558();
  sub_221A1C558();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9290, &unk_221BD8088);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v44 = swift_allocObject();
  v31 = v46;

  v32 = v48;

  v33 = v50;
  sub_22198BEB8(v50);
  v34 = v47;
  v35 = v49;
  sub_22198BEB8(v47);
  v36 = v45;
  sub_22198BEB8(v45);
  if (v51)
  {
    v37 = 258;
  }

  else
  {
    v37 = 2;
  }

  v38 = sub_2219CBEFC(v53, v32, v54, v43, v33, a8, v34, v35, v36, a12, v58, v52, v31, v37, v42, v41);
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  v58[3] = v28;
  v58[4] = &off_28351D968;
  v58[0] = v38;
  sub_221A1C558();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7A80, &unk_221BD2800);
  swift_task_localValuePush();
  sub_221A523DC(v38, sub_221A57434, v55);
  swift_task_localValuePop();

  return sub_221A01F0C(v58, qword_27CFB7A80, &unk_221BD2800);
}

uint64_t sub_221A4090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v50 = a6;
  v46 = a5;
  v52 = a4;
  v48 = a3;
  v53 = a2;
  v54 = a1;
  v55 = a7;
  v51 = a14;
  v45 = a11;
  v49 = a10;
  v47 = a9;
  v44 = a16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v41 = &v40 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v42 = &v40 - v23;
  v24 = sub_221BCCD88();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v43 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a17;
  v58 = a18;
  (*(v27 + 16))();
  sub_221A1C558();
  sub_221A1C558();
  sub_221A1C558();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9268, &qword_221BD7FC8);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  v44 = swift_allocObject();
  v31 = v46;

  v32 = v48;

  v33 = v50;
  sub_22198BEB8(v50);
  v34 = v47;
  v35 = v49;
  sub_22198BEB8(v47);
  v36 = v45;
  sub_22198BEB8(v45);
  if (v51)
  {
    v37 = 258;
  }

  else
  {
    v37 = 2;
  }

  v38 = sub_2219CBEFC(v53, v32, v54, v43, v33, a8, v34, v35, v36, a12, v59, v52, v31, v37, v42, v41);
  if (qword_27CFB7338 != -1)
  {
    swift_once();
  }

  v59[3] = v28;
  v59[4] = &off_28351D968;
  v59[0] = v38;
  sub_221A1C558();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7A80, &unk_221BD2800);
  swift_task_localValuePush();
  sub_221A52504(v38, sub_221A57434, v56);
  swift_task_localValuePop();

  return sub_221A01F0C(v59, qword_27CFB7A80, &unk_221BD2800);
}

uint64_t sub_221A40D48()
{
  OUTLINED_FUNCTION_1_5();
  v1[40] = v2;
  v1[41] = v0;
  v1[39] = v3;
  v4 = sub_221BCC6C8();
  v1[42] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[43] = v5;
  v7 = *(v6 + 64);
  v1[44] = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8410, &qword_221BD35A8);
  v1[45] = v8;
  OUTLINED_FUNCTION_18_4(v8);
  v1[46] = v9;
  v11 = *(v10 + 64);
  v1[47] = OUTLINED_FUNCTION_210();
  v12 = sub_221BCD088();
  v1[48] = v12;
  OUTLINED_FUNCTION_18_4(v12);
  v1[49] = v13;
  v15 = *(v14 + 64);
  v1[50] = OUTLINED_FUNCTION_210();
  v16 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_221A40E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_67();
  v16 = v15[41];
  if (swift_distributed_actor_is_remote())
  {
    v17 = v15[50];
    v18 = v15[47];
    v19 = v15[40];
    OUTLINED_FUNCTION_98_2(v15[41]);
    sub_221A0D54C(v19, (v15 + 2));
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    sub_221BCC6E8();
    sub_221A0D5A8();
    sub_221A0D5FC();
    OUTLINED_FUNCTION_70_3();
    v20 = v15[50];
    if (v17)
    {
      v22 = v15[48];
      v23 = v15[49];
      (*(v15[46] + 8))(v15[47], v15[45]);
      v24 = OUTLINED_FUNCTION_71_2();
      v25(v24);
      v26 = v15[50];
      v27 = v15[47];
      v28 = v15[44];

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_124_0();

      return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
    }

    else
    {
      sub_221A0D650();
      sub_221A0D6A4();
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v21 = v15[50];
      sub_221BCD048();
      v43 = v15[44];
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v44 = *(MEMORY[0x277CD8E30] + 4);
      v45 = swift_task_alloc();
      v15[51] = v45;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v46, v47);
      OUTLINED_FUNCTION_58_2();
      *v45 = v48;
      v45[1] = sub_221A41124;
      v49 = v15[50];
      v50 = v15[44];
      v51 = v15[41];
      OUTLINED_FUNCTION_270(v52, MEMORY[0x277D84AC0]);
      OUTLINED_FUNCTION_9_6();
      OUTLINED_FUNCTION_123_0();

      return MEMORY[0x282125BC0](v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v15[53] = v38;
    *v38 = v39;
    v38[1] = sub_221A412F0;
    v40 = v15[40];
    v41 = v15[41];
    OUTLINED_FUNCTION_124_0();

    return sub_221A4151C();
  }
}

uint64_t sub_221A41124()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 416) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4121C()
{
  OUTLINED_FUNCTION_104();
  v1 = OUTLINED_FUNCTION_196_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = *(v0 + 304);
  v14 = *(v0 + 288);
  v15 = *(v0 + 272);
  v8 = *(v0 + 400);
  v9 = *(v0 + 376);
  v10 = *(v0 + 352);
  v11 = *(v0 + 312);

  *v11 = v15;
  *(v11 + 16) = v14;
  *(v11 + 32) = v7;
  OUTLINED_FUNCTION_4_3();

  return v12();
}

uint64_t sub_221A412F0()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_81_0();
  v2 = v0;
  OUTLINED_FUNCTION_0_5();
  *v3 = v0;
  v4 = *(v0 + 424);
  v5 = *v1;
  *v3 = *v1;

  v6 = *(v0 + 264);
  v7 = *(v0 + 400);
  v8 = *(v0 + 376);
  v9 = *(v0 + 352);
  v10 = *(v0 + 312);
  v13 = *(v2 + 248);
  v14 = *(v2 + 232);

  *v10 = v14;
  *(v10 + 16) = v13;
  *(v10 + 32) = v6;
  v11 = *(v5 + 8);

  return v11();
}

uint64_t sub_221A41470()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v1 = OUTLINED_FUNCTION_196_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_48_3();
  v4(v3);
  v5 = OUTLINED_FUNCTION_53_6();
  v6(v5);
  v7 = v0[52];
  v8 = v0[50];
  v9 = v0[47];
  v10 = v0[44];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_221A4151C()
{
  OUTLINED_FUNCTION_1_5();
  v1[52] = v2;
  v1[53] = v0;
  v1[51] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v4);
  v6 = *(v5 + 64);
  v1[54] = OUTLINED_FUNCTION_210();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  v1[55] = OUTLINED_FUNCTION_210();
  v10 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_221A415D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_192_0();
  v68 = v30;
  OUTLINED_FUNCTION_57_2();
  if (qword_27CFB6D28 != -1)
  {
    swift_once();
  }

  v31 = *(v28 + 416);
  memcpy((v28 + 232), &unk_27CFDD580, 0x59uLL);
  v66 = *(v31 + 64);
  v67 = *(v31 + 56);
  v69 = *(v31 + 72);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
    v31 = *(v28 + 416);
  }

  v32 = *(v28 + 432);
  v33 = *(v28 + 440);
  v34 = *(v28 + 424);
  v35 = sub_221BCCD88();
  __swift_project_value_buffer(v35, qword_27CFDEE88);
  v36 = OUTLINED_FUNCTION_222_0();
  sub_221A0D54C(v36, v37);
  v38 = swift_allocObject();
  *(v28 + 448) = v38;
  memcpy((v38 + 16), (v28 + 16), 0xD2uLL);
  *(v28 + 328) = 0u;
  *(v28 + 344) = 0u;
  *(v28 + 360) = 0;
  v39 = *(v31 + 73);
  v40 = sub_221BCCD08();
  OUTLINED_FUNCTION_21_6(v33, v41, v42, v40);
  v43 = sub_221BCCCD8();
  OUTLINED_FUNCTION_21_6(v32, v44, v45, v43);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v46, v47);
  OUTLINED_FUNCTION_295();
  OUTLINED_FUNCTION_242_0();
  *(v28 + 456) = v48;
  v49 = swift_task_alloc();
  *(v28 + 464) = v49;
  *(v49 + 16) = v34;
  *(v49 + 24) = v31;
  OUTLINED_FUNCTION_58_4(&unk_221BD80E0);
  v65 = v50;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v28 + 472) = v51;
  *v51 = v52;
  v51[1] = sub_221A4180C;
  v53 = *(v28 + 424);
  v70 = *(v28 + 440);
  v71 = *(v28 + 432);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_286();
  OUTLINED_FUNCTION_147_0();

  return v62(v54, v55, v56, v57, v58, v59, v60, v61, v65, v66, v67, a12, a13, a14, a15, a16, a17, a18, a19, v28, v29, v68, sub_221A58094, v38, a25, a26, a27, a28);
}

void sub_221A4180C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 472);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_125_1();
  }

  else
  {
    v11 = *(v3 + 456);
    v12 = *(v3 + 464);
    v14 = *(v3 + 440);
    v13 = *(v3 + 448);
    v15 = *(v3 + 432);
    v16 = *(v3 + 408);
    swift_unknownObjectRelease();

    sub_221A01F0C(v15, &qword_27CFB7F58, &unk_221BD27E0);
    sub_221A01F0C(v14, &qword_27CFB7F60, &qword_221BD6680);
    sub_221A01F0C(v3 + 328, qword_27CFB7A80, &unk_221BD2800);
    v17 = *(v3 + 400);
    v18 = *(v3 + 384);
    *v16 = *(v3 + 368);
    *(v16 + 16) = v18;
    *(v16 + 32) = v17;

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_125_1();

    v20(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_221A419A4(uint64_t a1)
{
  strcpy(v9, "Performing: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v2 = *(a1 + 73);
  v8[3] = &type metadata for AppIntentsProtocol.PerformQuery.Request;
  v8[4] = sub_221A582DC();
  v8[0] = swift_allocObject();
  sub_221A0D54C(a1, v8[0] + 16);
  __swift_project_boxed_opaque_existential_0(v8, &type metadata for AppIntentsProtocol.PerformQuery.Request);
  v7 = v2;
  v3 = sub_221AE7C60(&v7);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(v8);
  MEMORY[0x223DA31F0](v3, v5);

  return v9[0];
}

uint64_t sub_221A41A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[143] = a4;
  v4[142] = a3;
  v4[141] = a2;
  v4[140] = a1;
  return MEMORY[0x2822009F8](sub_221A41AA4, a3, 0);
}

uint64_t sub_221A41AA4()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = *(v0 + 1136);
  sub_221A4F364();
  v11 = *(v0 + 1136);
  type metadata accessor for RemoteAppIntentsActor();
  OUTLINED_FUNCTION_0_35();
  sub_221A58E78(v12, v13);
  sub_221BCC648();
  if (*(v0 + 992))
  {
    v14 = *(v0 + 1144);
    sub_22198B358((v0 + 968), v0 + 928);
    v15 = *v14;
    *(v0 + 1152) = *v14;
    v16 = v14[1];
    *(v0 + 1160) = v16;
    v17 = v14[2];
    v18 = v14[3];
    *(v0 + 1008) = v15;
    *(v0 + 1016) = v16;
    *(v0 + 1024) = v17;
    *(v0 + 1032) = v18;
    sub_2219AC930((v14 + 10), v0 + 424);
    type metadata accessor for LocalQueryExecutor();
    *(v0 + 1168) = swift_initStackObject();

    v19 = OUTLINED_FUNCTION_4();
    sub_221998178(v19, v20);
    *(v0 + 1176) = sub_2219AA560((v0 + 1008), (v0 + 424));
    v21 = *(v14 + 32);
    v22 = v14[5];
    *(v0 + 1184) = v22;
    v23 = v14[6];
    *(v0 + 1192) = v23;
    *(v0 + 1072) = v21;
    *(v0 + 1080) = v22;
    *(v0 + 1088) = v23;

    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 1200) = v24;
    *v24 = v25;
    v24[1] = sub_221A41CE0;
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return sub_2219AA698(v26);
  }

  else
  {
    sub_221A01F0C(v0 + 968, &qword_27CFB9218, &qword_221BD7E88);
    sub_2219ACB94();
    OUTLINED_FUNCTION_15_0();
    swift_allocError();
    *v28 = 0xD000000000000017;
    *(v28 + 8) = 0x8000000221BEDE30;
    *(v28 + 16) = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_269();
    OUTLINED_FUNCTION_213_0();
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_253();

    return v3(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t sub_221A41CE0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_17_3();
  *v4 = v3;
  v6 = *(v5 + 1200);
  *v4 = *v1;
  v3[151] = v7;
  v3[152] = v0;

  if (v0)
  {
    v8 = v3[142];
    v9 = v3[136];

    v10 = sub_221A42B5C;
  }

  else
  {
    v8 = v3[142];
    v11 = v3[136];

    v10 = sub_221A41E00;
  }

  return MEMORY[0x2822009F8](v10, v8, 0);
}

uint64_t sub_221A41E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v14 = v12[147];
  v15 = *(v12[142] + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_lnConnectionStore);
  v16 = sub_2219AA20C();
  v17 = v16;
  v18 = v12[151];
  if (v19)
  {
    v20 = v12[147];
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v12 + 116);

    v21 = v12[140];
    v22 = sub_221BCC328();

    *v21 = v22;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = 1;
LABEL_12:
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_238();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }

  v23 = sub_221A5AE84(v16, v12 + 116);
  v12[153] = v23;
  sub_2219AC8CC(v17);
  v24 = [v18 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_2219A1D20(0, &unk_27CFBB9D0, 0x277D23780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v40 = v12[151];
    OUTLINED_FUNCTION_188_0();
    OUTLINED_FUNCTION_187_0(OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);

    sub_221A5C708(v12 + 76);
    sub_221A57690((v12 + 70), (v12 + 81));
    OUTLINED_FUNCTION_206_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_193_0(v41);
    OUTLINED_FUNCTION_66_1();
    sub_221BB8ED4(v40, v42, v23);
    v44 = v43;

    sub_221A56FC4((v12 + 70));
    __swift_destroy_boxed_opaque_existential_0(v12 + 116);

    *v13 = v44;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0;
    goto LABEL_12;
  }

  v25 = v12[137];
  v12[154] = v25;
  v26 = *(*(v23 + 16) + qword_27CFBCA58);
  v12[155] = v26;
  v27 = qword_27CFB7368;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v12[149];
  v30 = sub_221BCBC4C(qword_27CFDEDA8);
  v12[156] = v30;
  v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v32 = [objc_allocWithZone(MEMORY[0x277D23B38]) initWithPageSize_];
  v12[157] = v32;

  if (v29)
  {
    v33 = v12[149];
    v34 = v12[148];
    sub_2219A1D20(0, &qword_27CFB7D68, 0x277D237C8);

    v35 = sub_221AE94F4(v34, v33);
    v36 = [objc_allocWithZone(MEMORY[0x277D23C18]) initWithContentType:v35 preferredExtractionType:1];

    [v32 setExportConfiguration_];
  }

  v12[2] = v12;
  OUTLINED_FUNCTION_282((v12 + 138));
  v37 = OUTLINED_FUNCTION_265();
  v12[99] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9260, &qword_221BD7FC0);
  v12[96] = v37;
  v12[92] = MEMORY[0x277D85DD0];
  v12[93] = 1107296256;
  v12[94] = sub_221A34BBC;
  v12[95] = &block_descriptor_295;
  [v28 createAsyncIteratorForSequence:v25 options:v32 completionHandler:v12 + 92];
  OUTLINED_FUNCTION_238();

  return MEMORY[0x282200938](v38);
}

uint64_t sub_221A421F8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1264) = *(v3 + 48);
  OUTLINED_FUNCTION_181();
  v5 = *(v4 + 1136);
  if (v6)
  {
    v7 = sub_221A42BD0;
  }

  else
  {
    v7 = sub_221A42304;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_221A42304()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[155];
  v2 = v0[138];
  v0[159] = v2;
  v3 = [v2 reference];
  v0[160] = v3;
  v0[10] = v0;
  v0[15] = v0 + 139;
  v0[11] = sub_221A42448;
  v4 = swift_continuation_init();
  v0[107] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9250, &qword_221BD7F58);
  v0[104] = v4;
  v0[100] = MEMORY[0x277D85DD0];
  v0[101] = 1107296256;
  v0[102] = sub_221A42E8C;
  v0[103] = &block_descriptor_298;
  [v1 nextAsyncIteratorResults:v3 completionHandler:v0 + 100];
  OUTLINED_FUNCTION_253();

  return MEMORY[0x282200938](v5);
}

uint64_t sub_221A42448()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1288) = *(v3 + 112);
  OUTLINED_FUNCTION_181();
  v5 = *(v4 + 1136);
  if (v6)
  {
    v7 = sub_221A42C74;
  }

  else
  {
    v7 = sub_221A42554;
  }

  return MEMORY[0x2822009F8](v7, v5, 0);
}

uint64_t sub_221A42554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v16 = *(v12 + 1280);
  v17 = *(v12 + 1248);
  v18 = *(v12 + 1112);
  *(v12 + 1296) = v18;

  if (sub_2219A69A0(v18) >= v17)
  {
    v24 = *(v12 + 1272);
    OUTLINED_FUNCTION_220_0();
    v45 = [v24 reference];

    v25 = *(v12 + 1208);
    v26 = *(v12 + 1224);
    v27 = *(v12 + 1176);
    v28 = *(v12 + 1160);
    v29 = *(v12 + 1152);
    v30 = *(v12 + 1136);
    v31 = *(v12 + 1128);
    v32 = *(v12 + 1120);
    sub_221A42F34(*(v12 + 1144));
    v33 = *(v30 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);
    *(v12 + 560) = v26;
    *(v12 + 568) = v29;
    *(v12 + 576) = v28;
    *(v12 + 584) = v33;
    *(v12 + 592) = 0u;

    sub_221A5C708((v12 + 608));
    sub_221A57690(v12 + 560, v12 + 648);
    OUTLINED_FUNCTION_206_0();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_193_0(v34);
    OUTLINED_FUNCTION_66_1();
    sub_221BB8ED4(v25, v35, v33);
    OUTLINED_FUNCTION_277();

    sub_221A56FC4(v12 + 560);
    __swift_destroy_boxed_opaque_existential_0((v12 + 928));

    *v32 = v28;
    *(v32 + 8) = 0;
    *(v32 + 16) = v45;
    *(v32 + 24) = v18;
    *(v32 + 32) = 0;
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_95_0();

    return v37(v36, v37, v38, v39, v40, v41, v42, v43, v45, a10, a11, a12);
  }

  else
  {
    v19 = *(v12 + 1240);
    v20 = *(v12 + 1232);
    *(v12 + 144) = v12;
    *(v12 + 152) = sub_221A427BC;
    v21 = swift_continuation_init();
    *(v12 + 920) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB80B8, &qword_221BD29A0);
    *(v12 + 896) = v21;
    *(v12 + 864) = MEMORY[0x277D85DD0];
    *(v12 + 872) = 1107296256;
    *(v12 + 880) = sub_2219C5280;
    *(v12 + 888) = &block_descriptor_301;
    [v19 releaseAsyncSequence:v20 completionHandler:v12 + 864];
    OUTLINED_FUNCTION_95_0();

    return MEMORY[0x282200938](v22);
  }
}

uint64_t sub_221A427BC()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *v0;
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 176);
  v2[163] = v5;
  if (v5)
  {
    v6 = v2[162];
    v7 = v2[142];

    v8 = sub_221A42D30;
    v9 = v7;
  }

  else
  {
    v9 = v2[142];
    v8 = sub_221A428D8;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_221A428D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_237();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_104();
  a18 = v20;
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v24 = v20[154];
  v25 = v20[141];
  v26 = sub_221BCCD88();
  __swift_project_value_buffer(v26, qword_27CFDEE88);

  v27 = v24;
  v28 = sub_221BCCD68();
  v29 = sub_221BCDA98();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = v20[154];
    v31 = v20[141];
    v25 = OUTLINED_FUNCTION_103();
    swift_slowAlloc();
    OUTLINED_FUNCTION_121_0();
    *v25 = 136315394;
    v32 = sub_2219CB3C8();
    v34 = sub_2219A6360(v32, v33, &a10);

    *(v25 + 4) = v34;
    *(v25 + 12) = 2080;
    v35 = v30;
    v21 = [v35 description];
    v36 = sub_221BCD388();
    v38 = v37;

    v39 = sub_2219A6360(v36, v38, &a10);

    *(v25 + 14) = v39;
    _os_log_impl(&dword_221989000, v28, v29, "%sReleased AsyncSequence %s", v25, 0x16u);
    OUTLINED_FUNCTION_49_0();
    v40 = OUTLINED_FUNCTION_74_3();
    MEMORY[0x223DA4C00](v40);
    OUTLINED_FUNCTION_29_1();
    MEMORY[0x223DA4C00]();
  }

  v41 = v20[162];
  v42 = v20[159];
  OUTLINED_FUNCTION_220_0();
  v43 = v20[151];
  v44 = sub_221BB89D8(v41);

  OUTLINED_FUNCTION_188_0();
  OUTLINED_FUNCTION_187_0(OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_intentFileStore);

  sub_221A5C708(v20 + 76);
  sub_221A57690((v20 + 70), (v20 + 81));
  OUTLINED_FUNCTION_206_0();
  v45 = swift_allocObject();
  OUTLINED_FUNCTION_193_0(v45);
  OUTLINED_FUNCTION_66_1();
  sub_221BB8ED4(v44, v46, v41);
  v48 = v47;

  sub_221A56FC4((v20 + 70));
  __swift_destroy_boxed_opaque_existential_0(v20 + 116);

  *v27 = v48;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = 0;
  *(v27 + 32) = 0;
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_238();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_221A42B5C()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[147];

  __swift_destroy_boxed_opaque_existential_0(v0 + 116);
  v2 = v0[152];
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_33_4();

  return v3();
}

uint64_t sub_221A42BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v14 = v10[158];
  OUTLINED_FUNCTION_220_0();
  v15 = v10[153];
  v16 = v10[151];
  v17 = v10[147];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v10 + 116);

  v18 = v10[158];
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_152();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221A42C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v13 = v12[161];
  v14 = v12[160];
  v15 = v12[159];
  v16 = v12[157];
  v17 = v12[155];
  v18 = v12[154];
  v19 = v12[153];
  v20 = v12[151];
  v21 = v12[147];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v12 + 116);

  v22 = v12[161];
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_95_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_221A42D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_237();
  OUTLINED_FUNCTION_104();
  v13 = v12[163];
  v14 = v12[159];
  v15 = v12[157];
  v16 = v12[155];
  v17 = v12[154];
  v18 = v12[153];
  v19 = v12[151];
  v20 = v12[147];
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_0(v12 + 116);

  v21 = v12[163];
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_213_0();
  OUTLINED_FUNCTION_33_4();
  OUTLINED_FUNCTION_238();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t *sub_221A42DE4(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a3)
  {
    v9 = a3;
    v10 = OUTLINED_FUNCTION_284();
    v11 = a4;

    return v11(v10);
  }

  if (a2)
  {
    v12 = a2;
    v10 = OUTLINED_FUNCTION_284();
    v11 = a5;

    return v11(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_221A42E8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_2219B1AB0(v4, v5);
  }

  else
  {
    sub_2219A1D20(0, &qword_27CFBB680, 0x277D23958);
    v7 = sub_221BCD668();

    return sub_2219B1AB4(v4, v7);
  }
}

uint64_t sub_221A42F34(uint64_t *a1)
{
  v2 = sub_221B70A1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v5 = *a1;
  v4 = a1[1];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v4;

  v6 = sub_221BCD2C8();
  sub_221BB5788(v6, v2);
  sub_221B62F44();
}

uint64_t sub_221A43008()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  v1[33] = v4;
  v1[34] = v0;
  v1[31] = v5;
  v1[32] = v2;
  v6 = sub_221BCC6C8();
  v1[35] = v6;
  OUTLINED_FUNCTION_18_4(v6);
  v1[36] = v7;
  v9 = *(v8 + 64);
  v1[37] = OUTLINED_FUNCTION_210();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB90F8, &qword_221BD7480);
  v1[38] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v1[39] = v11;
  v13 = *(v12 + 64);
  v1[40] = OUTLINED_FUNCTION_210();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9100, &qword_221BD7488);
  v1[41] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v1[42] = v15;
  v17 = *(v16 + 64);
  v1[43] = OUTLINED_FUNCTION_210();
  v18 = sub_221BCD088();
  v1[44] = v18;
  OUTLINED_FUNCTION_18_4(v18);
  v1[45] = v19;
  v21 = *(v20 + 64);
  v1[46] = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_274();
  v1[8] = *(v3 + 48);
  v22 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v22, v23, v24);
}

uint64_t sub_221A431BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_82_1();
  OUTLINED_FUNCTION_104();
  v16 = *(v15 + 272);
  if (swift_distributed_actor_is_remote())
  {
    v17 = *(v15 + 368);
    v18 = *(v15 + 344);
    v19 = *(v15 + 256);
    OUTLINED_FUNCTION_98_2(*(v15 + 272));
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    *(v15 + 176) = v19[3].n128_u64[0];
    v23 = OUTLINED_FUNCTION_273(v20, v21, v22);
    sub_221A54000(v23, v24);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    sub_221BCC6E8();
    sub_221A5405C();
    sub_221A540B0();
    OUTLINED_FUNCTION_70_3();
    v25 = *(v15 + 368);
    if (v17)
    {
      v26 = *(v15 + 352);
      v27 = *(v15 + 360);
      (*(*(v15 + 336) + 8))(*(v15 + 344), *(v15 + 328));
      v28 = OUTLINED_FUNCTION_71_2();
      v29(v28);
      OUTLINED_FUNCTION_217_0();
      v45 = *(v15 + 296);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_45_2();

      return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
    }

    else
    {
      v39 = *(v15 + 320);
      v40 = *(v15 + 264);
      *(v15 + 240) = v40;
      type metadata accessor for RemoteAppNotificationSink();
      OUTLINED_FUNCTION_277();

      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_129_1();
      sub_221A58E78(v41, v40);
      OUTLINED_FUNCTION_140_0(&qword_27CFB9118);
      OUTLINED_FUNCTION_290();
      v42 = *(v15 + 368);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD068();
      v43 = *(v15 + 368);
      type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse(0);
      sub_221A58E78(&unk_27CFBB360, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      sub_221A58E78(&qword_27CFB9120, type metadata accessor for AppIntentsProtocol.Notifications.StartObservingResponse);
      OUTLINED_FUNCTION_256();
      v44 = *(v15 + 368);
      sub_221BCD048();
      v54 = *(v15 + 296);
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v55 = *(MEMORY[0x277CD8E30] + 4);
      v56 = swift_task_alloc();
      *(v15 + 376) = v56;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v57, v58);
      OUTLINED_FUNCTION_58_2();
      *v56 = v59;
      v56[1] = sub_221A43574;
      v60 = *(v15 + 368);
      v61 = *(v15 + 296);
      v62 = *(v15 + 272);
      v63 = *(v15 + 248);
      OUTLINED_FUNCTION_200();
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x282125BC0](v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v30 = *(v15 + 272);
    v31 = *(v15 + 256);
    v33 = *(v31 + 16);
    v32 = *(v31 + 32);
    v34 = *(v31 + 48);
    *(v15 + 72) = *v31;
    *(v15 + 120) = v34;
    *(v15 + 104) = v32;
    *(v15 + 88) = v33;
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_45_2();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }
}

uint64_t sub_221A43574()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 376);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 384) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4366C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v15 = OUTLINED_FUNCTION_173_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_150_0();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_103_2();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_70();
  v24(v23);
  OUTLINED_FUNCTION_217_0();
  v25 = *(v12 + 296);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_221A43730()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[31];
  sub_221A43938();
  v0[49] = 0;
  OUTLINED_FUNCTION_217_0();
  v4 = v0[37];

  OUTLINED_FUNCTION_4_3();

  return v5();
}

uint64_t sub_221A43800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v15 = OUTLINED_FUNCTION_173_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_150_0();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_103_2();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_70();
  v24(v23);
  v25 = *(v12 + 384);
  OUTLINED_FUNCTION_289();

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_95_0();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_221A438C0()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *(v0 + 392);
  OUTLINED_FUNCTION_289();

  OUTLINED_FUNCTION_25();

  return v2();
}

void sub_221A43938()
{
  OUTLINED_FUNCTION_55_4();
  v48 = v1;
  v49 = v0;
  v47 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v17 = *(v4 + 16);
  v54[0] = *v4;
  v54[1] = v17;
  v54[2] = *(v4 + 32);
  v55 = *(v4 + 48);
  if (qword_27CFB6D40 != -1)
  {
    swift_once();
  }

  memcpy(v53, &unk_27CFDD6A0, sizeof(v53));
  v45 = *(&v54[0] + 1);
  v46 = *&v54[0];
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v18 = sub_221BCCD88();
  __swift_project_value_buffer(v18, qword_27CFDEE88);
  v19 = swift_allocObject();
  v20 = *(v4 + 16);
  *(v19 + 16) = *v4;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v4 + 32);
  *(v19 + 64) = *(v4 + 48);
  sub_221BCCD08();
  *&v21 = OUTLINED_FUNCTION_117_1();
  v51[0] = v21;
  v51[1] = v21;
  v52 = 0;
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_136_0();
  OUTLINED_FUNCTION_108();
  v30 = __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  MEMORY[0x28223BE20](v30);
  sub_221A54000(v54, &v50);
  v43 = sub_221A57DE4;
  v44 = &v40;
  v41 = v16;
  v42 = v10;
  v40 = 0;
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_27_0();
  sub_221A3FC4C(v31, v32, v33, v46, v45, v34, v35, v19, v36, v37, v38, v39, v51, v40, v41, v42, v43, v44);

  sub_221A01F0C(v10, &qword_27CFB7F58, &unk_221BD27E0);
  sub_221A01F0C(v16, &qword_27CFB7F60, &qword_221BD6680);
  sub_221A01F0C(v51, qword_27CFB7A80, &unk_221BD2800);
  OUTLINED_FUNCTION_53_5();
}

unint64_t sub_221A43C20(void *a1)
{
  sub_221BCDE68();

  v2 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v4 = a1[6];

  v6 = sub_221998A0C(v2, v3, v5, v4);
  MEMORY[0x223DA31F0](v6);

  return 0xD000000000000016;
}

void sub_221A43CCC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, unint64_t a5@<X8>)
{
  v48 = a1;
  v49 = a4;
  v58 = a3;
  v47 = a5;
  v7 = type metadata accessor for ActorTransactionOperation();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  sub_221A4F364();
  if (!v5)
  {
    v40 = v7;
    v41 = v13;
    v42 = v10;
    v43 = v12;
    v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v11;
    v46 = a2;
    v17 = *(v58 + 24);
    v18 = *(v58 + 32);
    v20 = *(v58 + 40);
    v19 = *(v58 + 48);

    sub_221A441E8(v17, v18, v20, v19, sub_221B62F44);
    type metadata accessor for AppNotificationEventRegistry();
    v50 = v17;
    v51 = v18;
    v52 = v20;
    v53 = v19;
    sub_221A28734(&v50);

    v21 = v46 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    v23 = v43;
    if (Strong)
    {
      v48 = v20;
      v24 = v17;
      v49 = *(v21 + 8);
      v25 = v42;
      (*(v43 + 16))(v42, v16, v45);
      v50 = 0;
      v51 = 0xE000000000000000;
      swift_unknownObjectRetain();
      sub_221BCDE68();

      v50 = 0x624F797469746E65;
      v51 = 0xEF2E726576726573;
      if (v19)
      {
        v54 = v24;
        v55 = v18;

        MEMORY[0x223DA31F0](46, 0xE100000000000000);
        MEMORY[0x223DA31F0](v48, v19);
        v24 = v54;
        v18 = v55;
      }

      else
      {
      }

      ObjectType = swift_getObjectType();
      MEMORY[0x223DA31F0](v24, v18);

      v27 = v51;
      v28 = &v25[*(v40 + 5)];
      *v28 = v50;
      *(v28 + 1) = v27;
      (*(v49 + 1))(v25, ObjectType);
      swift_unknownObjectRelease();
      sub_221A58CC0();
    }

    type metadata accessor for RemoteAppIntentsActor();
    sub_221A58E78(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
    sub_221BCC648();
    if (v56)
    {
      v48 = v57;
      v39 = v56;
      v40 = __swift_project_boxed_opaque_existential_0(&v54, v56);
      v29 = *(v23 + 16);
      v42 = Strong;
      v30 = v45;
      v29(v44, v16, v45);
      v31 = v23;
      v32 = (*(v23 + 80) + 72) & ~*(v23 + 80);
      v49 = v16;
      v33 = (v41 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      v35 = v58;
      v36 = *(v58 + 16);
      *(v34 + 16) = *v58;
      *(v34 + 32) = v36;
      *(v34 + 48) = *(v35 + 32);
      *(v34 + 64) = *(v35 + 48);
      v37 = *(v31 + 32);
      v37(v34 + v32, v44, v30);
      *(v34 + v33) = v46;
      v38 = v49;
      sub_221A54000(v35, &v50);

      sub_221BCCEF8();

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v54);
      v37(v47, v38, v30);
    }

    else
    {
      swift_unknownObjectRelease();
      sub_221A01F0C(&v54, &qword_27CFB9218, &qword_221BD7E88);
      (*(v23 + 32))(v47, v16, v45);
    }
  }
}

uint64_t sub_221A441E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  OUTLINED_FUNCTION_27();
  sub_221BCD2C8();
  a5();
}

uint64_t sub_221A442AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v69 = &v57 - v10;
  v11 = sub_221BCC558();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - v16;
  if (qword_27CFB73B0 != -1)
  {
    swift_once();
  }

  v18 = sub_221BCCD88();
  __swift_project_value_buffer(v18, qword_27CFDEE58);
  v19 = v12 + 16;
  v67 = *(v12 + 16);
  v67(v17, a3, v11);
  sub_221A54000(a2, v72);
  v20 = a1;
  v21 = sub_221BCCD68();
  v22 = v11;
  v23 = sub_221BCDA78();
  sub_221A57E98(a2);
  v65 = a1;

  v24 = v23;
  if (os_log_type_enabled(v21, v23))
  {
    v60 = v12;
    v25 = v17;
    v26 = v22;
    v61 = v21;
    v62 = v19;
    v63 = a3;
    v64 = a4;
    v27 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v71 = v59;
    *v27 = 136315650;
    v28 = *(a2 + 40);
    v73[0] = *(a2 + 24);
    v73[1] = v28;
    v74 = v28;
    v29 = *(&v73[0] + 1);
    v30 = *&v73[0];
    v31 = *(&v28 + 1);
    if (*(&v28 + 1))
    {
      v32 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_221BCF7F0;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      *(v33 + 48) = v32;
      *(v33 + 56) = v31;
      v70 = v33;
      sub_221A57FE4(v73, v72);
      sub_221A1C558();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v30 = sub_221BCD328();
      v29 = v34;

      sub_221A58040(v73);
    }

    else
    {
    }

    v36 = sub_2219A6360(v30, v29, &v71);

    *(v27 + 4) = v36;
    *(v27 + 12) = 2080;
    sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v37 = v25;
    v38 = sub_221BCE168();
    v40 = v39;
    v12 = v60;
    (*(v60 + 8))(v37, v26);
    v41 = sub_2219A6360(v38, v40, &v71);

    *(v27 + 14) = v41;
    *(v27 + 22) = 2112;
    v35 = v69;
    if (v65)
    {
      v42 = v65;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      v44 = v43;
    }

    else
    {
      v43 = 0;
      v44 = 0;
    }

    a4 = v64;
    a3 = v63;
    v45 = v61;
    *(v27 + 24) = v43;
    v46 = v58;
    *v58 = v44;
    _os_log_impl(&dword_221989000, v45, v24, "Stopping observation for %s/%s on connection interruption: %@", v27, 0x20u);
    sub_221A01F0C(v46, &unk_27CFB7630, qword_221BD0790);
    MEMORY[0x223DA4C00](v46, -1, -1);
    v47 = v59;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v47, -1, -1);
    MEMORY[0x223DA4C00](v27, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v17, v22);
    v26 = v22;
    v35 = v69;
  }

  v48 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v48);
  v49 = v66;
  v67(v66, a3, v26);
  v50 = sub_221A57B4C();
  v51 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v52 = (v68 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 2) = a4;
  *(v53 + 3) = v50;
  *(v53 + 4) = a4;
  (*(v12 + 32))(&v53[v51], v49, v26);
  v54 = &v53[v52];
  v55 = *(a2 + 16);
  *v54 = *a2;
  *(v54 + 1) = v55;
  *(v54 + 2) = *(a2 + 32);
  *(v54 + 6) = *(a2 + 48);

  sub_221A54000(a2, v72);

  sub_2219F8C64();
}

uint64_t sub_221A448E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x2822009F8](sub_221A44904, a4, 0);
}

uint64_t sub_221A44904()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 80) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 88);
    v3 = *(v1 + 8);
    swift_getObjectType();
    v4 = OUTLINED_FUNCTION_243_0();
    v5(v4);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  type metadata accessor for AppNotificationEventRegistry();
  v8 = *(v7 + 40);
  *(v0 + 16) = *(v7 + 24);
  *(v0 + 32) = v8;
  v12 = *(v7 + 24);
  v13 = *(v7 + 40);
  sub_221A57FE4(v0 + 16, v0 + 48);
  OUTLINED_FUNCTION_174_0();
  sub_221A287DC(v9);

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_221A44A08()
{
  OUTLINED_FUNCTION_1_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_221BCC6C8();
  v1[4] = v3;
  OUTLINED_FUNCTION_18_4(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_210();
  v7 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
  v1[7] = v7;
  OUTLINED_FUNCTION_8_1(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_210();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9128, &unk_221BD7540);
  v1[9] = v10;
  OUTLINED_FUNCTION_18_4(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_210();
  v14 = sub_221BCD088();
  v1[12] = v14;
  OUTLINED_FUNCTION_18_4(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_210();
  v18 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_221A44B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = v10[3];
  if (swift_distributed_actor_is_remote())
  {
    v12 = v10[14];
    v13 = v10[11];
    v14 = v10[7];
    v15 = v10[8];
    v16 = v10[2];
    OUTLINED_FUNCTION_98_2(v10[3]);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_211_0();
    sub_221A58E78(&unk_27CFBB330, type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest);
    OUTLINED_FUNCTION_212(&qword_27CFB9130);
    OUTLINED_FUNCTION_36_6();
    if (v12)
    {
      v19 = v10[13];
      (*(v10[10] + 8))(v10[11], v10[9]);
      (*(v19 + 8))(v10[14], v10[12]);
      OUTLINED_FUNCTION_227_0();
      v20 = v10[6];

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_152();

      return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
    }

    else
    {
      v17 = v10[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD068();
      v18 = v10[14];
      sub_221BCD048();
      v35 = v10[6];
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v36 = *(MEMORY[0x277CD8E40] + 4);
      v37 = swift_task_alloc();
      v10[15] = v37;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v38, v39);
      OUTLINED_FUNCTION_58_2();
      *v37 = v40;
      v37[1] = sub_221A44E10;
      v41 = v10[14];
      v42 = v10[6];
      v43 = v10[3];
      OUTLINED_FUNCTION_118_2();
      OUTLINED_FUNCTION_152();

      return MEMORY[0x282125BC8](v44, v45, v46, v47, v48, v49, v50, v51);
    }
  }

  else
  {
    v30 = v10[3];
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v31, v32, v33);
  }
}

uint64_t sub_221A44E10()
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

uint64_t sub_221A44F08()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = OUTLINED_FUNCTION_219_0();
  v8(v7);
  v9 = OUTLINED_FUNCTION_48_3();
  v10(v9);
  v11 = OUTLINED_FUNCTION_53_6();
  v12(v11);
  OUTLINED_FUNCTION_227_0();
  v13 = v0[6];

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_125_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_221A44FC0()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[2];
  v2 = v0[3];
  sub_221A4512C();
  OUTLINED_FUNCTION_227_0();
  v3 = v0[6];

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221A45060()
{
  OUTLINED_FUNCTION_8_0();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = OUTLINED_FUNCTION_219_0();
  v5(v4);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_70();
  v8(v7);
  v9 = v0[16];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[6];

  OUTLINED_FUNCTION_25();

  return v14();
}

void sub_221A4512C()
{
  OUTLINED_FUNCTION_55_4();
  v50 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_225_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_283();
  v14 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(v13);
  v15 = OUTLINED_FUNCTION_0_2(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  if (qword_27CFB6D48 != -1)
  {
    swift_once();
  }

  memcpy(v53, &unk_27CFDD700, sizeof(v53));
  v20 = v4 + *(v14 + 20);
  v21 = *(v20 + 8);
  v49 = *v20;
  v22 = *(v20 + 16);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v23 = sub_221BCCD88();
  __swift_project_value_buffer(v23, qword_27CFDEE88);
  OUTLINED_FUNCTION_27_6();
  sub_221A56250();
  v24 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v25 = swift_allocObject();
  sub_221A58D34();
  sub_221BCCD08();
  *&v26 = OUTLINED_FUNCTION_117_1();
  v51[0] = v26;
  v51[1] = v26;
  v52 = 0;
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  v35 = __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_27_0();
  sub_221A40094(v36, v37, v38, v49, v21, v39, v40, v25, v41, v42, v43, v44, v51, v45, v46, v47, v48, v50);

  sub_221A01F0C(v1, &qword_27CFB7F58, &unk_221BD27E0);
  sub_221A01F0C(v2, &qword_27CFB7F60, &qword_221BD6680);
  sub_221A01F0C(v51, qword_27CFB7A80, &unk_221BD2800);
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221A45460(uint64_t a1)
{
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0xD000000000000012, 0x8000000221BEDFC0);
  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v2 = sub_221BCE168();
  MEMORY[0x223DA31F0](v2);

  MEMORY[0x223DA31F0](0x20726F6620, 0xE500000000000000);
  v3 = type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0);
  sub_221B93ED0(*(a1 + *(v3 + 24)), *(a1 + *(v3 + 24) + 8), *(a1 + *(v3 + 24) + 16), *(a1 + *(v3 + 24) + 24));
  return 0;
}

void sub_221A4556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_221A4F364();
  if (!v3)
  {
    v6 = (a3 + *(type metadata accessor for AppIntentsProtocol.Notifications.StopObservingRequest(0) + 24));
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    v10 = v6[3];
    sub_221A441E8(*v6, v8, v9, v10, sub_221B62F44);
    type metadata accessor for AppNotificationEventRegistry();
    v14[0] = v7;
    v14[1] = v8;
    v14[2] = v9;
    v14[3] = v10;

    sub_221A287DC(v14);

    v11 = a2 + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 16))(a3, ObjectType, v12);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_221A456B0()
{
  OUTLINED_FUNCTION_1_5();
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v3;
  v4 = sub_221BCC6C8();
  v1[6] = v4;
  OUTLINED_FUNCTION_18_4(v4);
  v1[7] = v5;
  v7 = *(v6 + 64);
  v1[8] = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB90F8, &qword_221BD7480);
  v1[9] = v8;
  OUTLINED_FUNCTION_18_4(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = OUTLINED_FUNCTION_210();
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
  v1[12] = restarted;
  OUTLINED_FUNCTION_8_1(restarted);
  v14 = *(v13 + 64);
  v1[13] = OUTLINED_FUNCTION_210();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9138, &unk_221BD75D0);
  v1[14] = v15;
  OUTLINED_FUNCTION_18_4(v15);
  v1[15] = v16;
  v18 = *(v17 + 64);
  v1[16] = OUTLINED_FUNCTION_210();
  v19 = sub_221BCD088();
  v1[17] = v19;
  OUTLINED_FUNCTION_18_4(v19);
  v1[18] = v20;
  v22 = *(v21 + 64);
  v1[19] = OUTLINED_FUNCTION_210();
  v23 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_221A45878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_205();
  OUTLINED_FUNCTION_67();
  v11 = v10[5];
  if (swift_distributed_actor_is_remote())
  {
    v12 = v10[19];
    v13 = v10[16];
    v14 = v10[12];
    v15 = v10[13];
    v16 = v10[3];
    OUTLINED_FUNCTION_98_2(v10[5]);
    OUTLINED_FUNCTION_112_1();
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    OUTLINED_FUNCTION_211_0();
    sub_221A58E78(&unk_27CFBB3C0, type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest);
    OUTLINED_FUNCTION_212(&qword_27CFB9140);
    OUTLINED_FUNCTION_36_6();
    v17 = v10[19];
    if (v12)
    {
      v18 = OUTLINED_FUNCTION_281();
      v19(v18);
      v20 = OUTLINED_FUNCTION_71_2();
      v21(v20);
      OUTLINED_FUNCTION_121_1();
      v32 = v10[11];
      v33 = v10[8];

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_152();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10);
    }

    else
    {
      v27 = v10[11];
      v28 = v10[4];
      v10[2] = v28;
      type metadata accessor for RemoteAppNotificationSink();
      OUTLINED_FUNCTION_277();

      OUTLINED_FUNCTION_186();
      OUTLINED_FUNCTION_129_1();
      sub_221A58E78(v29, v28);
      OUTLINED_FUNCTION_140_0(&qword_27CFB9118);
      OUTLINED_FUNCTION_290();
      v30 = v10[19];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82A0, &qword_221BD0D20);
      sub_221BCD068();
      v31 = v10[19];
      sub_221BCD048();
      v42 = v10[8];
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v43 = *(MEMORY[0x277CD8E40] + 4);
      v44 = swift_task_alloc();
      v10[20] = v44;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v45, v46);
      OUTLINED_FUNCTION_58_2();
      *v44 = v47;
      v44[1] = sub_221A45BCC;
      v48 = v10[19];
      v49 = v10[8];
      v50 = v10[5];
      OUTLINED_FUNCTION_118_2();
      OUTLINED_FUNCTION_152();

      return MEMORY[0x282125BC8](v51, v52, v53, v54, v55, v56, v57, v58);
    }
  }

  else
  {
    v22 = v10[5];
    OUTLINED_FUNCTION_241_0();
    OUTLINED_FUNCTION_152();

    return MEMORY[0x2822009F8](v23, v24, v25);
  }
}

uint64_t sub_221A45BCC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 168) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A45CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v15 = OUTLINED_FUNCTION_178_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_150_0();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_103_2();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_70();
  v24(v23);
  OUTLINED_FUNCTION_121_1();
  v25 = *(v12 + 88);
  v26 = *(v12 + 64);

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_95_0();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_221A45D94()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_221A45F10();
  OUTLINED_FUNCTION_121_1();
  v4 = v0[11];
  v5 = v0[8];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_253();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_221A45E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_104();
  v15 = OUTLINED_FUNCTION_178_0();
  v16(v15);
  v17 = OUTLINED_FUNCTION_150_0();
  v18(v17);
  v19 = *(v14 + 8);
  v20 = OUTLINED_FUNCTION_103_2();
  v21(v20);
  v22 = *(v13 + 8);
  v23 = OUTLINED_FUNCTION_70();
  v24(v23);
  v25 = v12[21];
  OUTLINED_FUNCTION_228_0();
  v26 = v12[11];
  v27 = v12[8];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_95_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

void sub_221A45F10()
{
  OUTLINED_FUNCTION_55_4();
  v49 = v3;
  v50 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_225_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_283();
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(v14);
  v16 = OUTLINED_FUNCTION_0_2(restarted);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  if (qword_27CFB6D50 != -1)
  {
    swift_once();
  }

  memcpy(v53, &unk_27CFDD760, sizeof(v53));
  v21 = v5 + *(restarted + 20);
  v47 = *(v21 + 8);
  v48 = *v21;
  v22 = *(v21 + 16);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v23 = sub_221BCCD88();
  __swift_project_value_buffer(v23, qword_27CFDEE88);
  sub_221A56250();
  v24 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v25 = swift_allocObject();
  sub_221A58D34();
  sub_221BCCD08();
  *&v26 = OUTLINED_FUNCTION_117_1();
  v51[0] = v26;
  v51[1] = v26;
  v52 = 0;
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  v35 = __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_27_0();
  sub_221A40094(v36, v37, v38, v48, v47, v39, v40, v25, v41, v42, v43, v44, v51, v45, v46, v50, v5, v49);

  sub_221A01F0C(v1, &qword_27CFB7F58, &unk_221BD27E0);
  sub_221A01F0C(v2, &qword_27CFB7F60, &qword_221BD6680);
  sub_221A01F0C(v51, qword_27CFB7A80, &unk_221BD2800);
  OUTLINED_FUNCTION_53_5();
}

unint64_t sub_221A46248(uint64_t a1)
{
  sub_221BCDE68();

  v2 = (a1 + *(type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  v7 = sub_221998A0C(v3, v4, v5, v6);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0xD000000000000011, 0x8000000221BEDFA0);
  sub_221BCC558();
  sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
  v8 = sub_221BCE168();
  MEMORY[0x223DA31F0](v8);

  return 0xD00000000000001BLL;
}

void sub_221A46398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
  v9 = *(restarted - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](restarted);
  sub_221A4F364();
  if (!v4)
  {
    v19[0] = v9;
    v19[1] = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = a2;
    v11 = (a3 + *(restarted + 24));
    v13 = *v11;
    v12 = v11[1];
    v23 = a4;
    v14 = v11[2];
    v15 = v11[3];
    sub_221A441E8(v13, v12, v14, v15, sub_221B62F44);
    type metadata accessor for AppNotificationEventRegistry();
    v21[0] = v13;
    v21[1] = v12;
    v21[2] = v14;
    v22 = v15;

    sub_221A28890(v21);

    type metadata accessor for RemoteAppIntentsActor();
    sub_221A58E78(&qword_27CFB90A8, type metadata accessor for RemoteAppIntentsActor);
    v16 = v20;
    sub_221BCC648();
    if (v22)
    {
      __swift_project_boxed_opaque_existential_0(v21, v22);
      sub_221A56250();
      v17 = (v10 + ((*(v19[0] + 80) + 16) & ~*(v19[0] + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
      v18 = swift_allocObject();
      sub_221A58D34();
      *(v18 + v17) = v16;

      sub_221BCCEF8();

      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    else
    {
      sub_221A01F0C(v21, &qword_27CFB9218, &qword_221BD7E88);
    }
  }
}

uint64_t sub_221A46668(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFB82F0, &qword_221BD2C40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - v8;
  restarted = type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(0);
  v54 = *(restarted - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](restarted);
  v55 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  if (qword_27CFB73B0 != -1)
  {
    swift_once();
  }

  v16 = sub_221BCCD88();
  __swift_project_value_buffer(v16, qword_27CFDEE58);
  sub_221A56250();
  sub_221A56250();
  v17 = a1;
  v18 = sub_221BCCD68();
  v19 = sub_221BCDA78();

  if (os_log_type_enabled(v18, v19))
  {
    v50 = v19;
    v52 = a2;
    v53 = v9;
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v20 = 136315650;
    v21 = &v15[*(restarted + 24)];
    v22 = *v21;
    v23 = v21[1];
    v24 = v21[3];
    v51 = v18;
    if (v24)
    {
      v47 = a3;
      v25 = v21[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_221BCF7F0;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      *(v26 + 48) = v25;
      *(v26 + 56) = v24;
      v56 = v26;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v22 = sub_221BCD328();
      v28 = v27;

      sub_221A58CC0();

      v23 = v28;
      a3 = v47;
    }

    else
    {

      sub_221A58CC0();
    }

    v29 = sub_2219A6360(v22, v23, &v57);

    *(v20 + 4) = v29;
    *(v20 + 12) = 2080;
    sub_221BCC558();
    sub_221A58E78(&qword_27CFB7A60, MEMORY[0x277CC95F0]);
    v30 = sub_221BCE168();
    v32 = v31;
    sub_221A58CC0();
    v33 = sub_2219A6360(v30, v32, &v57);

    *(v20 + 14) = v33;
    *(v20 + 22) = 2112;
    v9 = v53;
    if (a1)
    {
      v34 = a1;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      v36 = v35;
    }

    else
    {
      v35 = 0;
      v36 = 0;
    }

    v37 = v51;
    v38 = v50;
    *(v20 + 24) = v35;
    v39 = v48;
    *v48 = v36;
    _os_log_impl(&dword_221989000, v37, v38, "Re-stopping observation for %s/%s on connection interruption: %@", v20, 0x20u);
    sub_221A01F0C(v39, &unk_27CFB7630, qword_221BD0790);
    MEMORY[0x223DA4C00](v39, -1, -1);
    v40 = v49;
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v40, -1, -1);
    MEMORY[0x223DA4C00](v20, -1, -1);
  }

  else
  {

    sub_221A58CC0();
    sub_221A58CC0();
  }

  v41 = sub_221BCD7F8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v41);
  sub_221A56250();
  v42 = sub_221A57B4C();
  v43 = (*(v54 + 80) + 40) & ~*(v54 + 80);
  v44 = swift_allocObject();
  v44[2] = a3;
  v44[3] = v42;
  v44[4] = a3;
  sub_221A58D34();
  swift_retain_n();
  sub_2219F8C64();
}

uint64_t sub_221A46C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_221A46C84, a4, 0);
}

uint64_t sub_221A46C84()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 16) + OBJC_IVAR____TtC18AppIntentsServices21RemoteAppIntentsActor_transactionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 24);
    v3 = *(v1 + 8);
    swift_getObjectType();
    v4 = OUTLINED_FUNCTION_243_0();
    v5(v4);
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 24);
  type metadata accessor for AppNotificationEventRegistry();
  v7 = OUTLINED_FUNCTION_40_3();
  v8 = (v6 + *(type metadata accessor for AppIntentsProtocol.Notifications.RestartObservingRequest(v7) + 24));
  v9 = v8[1];
  v13 = *v8;
  v14 = v8[2];
  v15 = v8[3];

  OUTLINED_FUNCTION_174_0();
  sub_221A287DC(v10);

  OUTLINED_FUNCTION_25();

  return v11();
}

uint64_t sub_221A46D8C()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 248) = v2;
  *(v1 + 256) = v0;
  *(v1 + 240) = v4;
  v5 = sub_221BCC6C8();
  *(v1 + 264) = v5;
  OUTLINED_FUNCTION_18_4(v5);
  *(v1 + 272) = v6;
  v8 = *(v7 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_210();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8358, &qword_221BD2F40);
  *(v1 + 288) = v9;
  OUTLINED_FUNCTION_18_4(v9);
  *(v1 + 296) = v10;
  v12 = *(v11 + 64);
  *(v1 + 304) = OUTLINED_FUNCTION_210();
  v13 = sub_221BCD088();
  *(v1 + 312) = v13;
  OUTLINED_FUNCTION_18_4(v13);
  *(v1 + 320) = v14;
  v16 = *(v15 + 64);
  *(v1 + 328) = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_274();
  *(v1 + 64) = *(v3 + 48);
  v17 = OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_221A46EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_267();
  OUTLINED_FUNCTION_67();
  v16 = *(v15 + 256);
  if (swift_distributed_actor_is_remote())
  {
    v17 = *(v15 + 328);
    v18 = *(v15 + 304);
    v19 = *(v15 + 248);
    OUTLINED_FUNCTION_98_2(*(v15 + 256));
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    *(v15 + 176) = v19[3].n128_u16[0];
    v23 = OUTLINED_FUNCTION_273(v20, v21, v22);
    sub_221A0871C(v23, v24);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_25_4();
    sub_221BCC6E8();
    sub_221A08778();
    sub_221A087CC();
    OUTLINED_FUNCTION_70_3();
    if (v17)
    {
      v28 = *(v15 + 320);
      v27 = *(v15 + 328);
      v30 = *(v15 + 304);
      v29 = *(v15 + 312);
      v31 = *(v15 + 288);
      v32 = *(v15 + 280);
      v33 = OUTLINED_FUNCTION_59_2(*(v15 + 296));
      v34(v33);
      v35 = *(v28 + 8);
      v36 = OUTLINED_FUNCTION_70();
      v37(v36);

      OUTLINED_FUNCTION_20_3();
      OUTLINED_FUNCTION_124_0();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
    }

    else
    {
      v25 = *(v15 + 328);
      sub_221A08820();
      sub_221A08874();
      OUTLINED_FUNCTION_23_8();
      sub_221BCD078();
      v26 = *(v15 + 328);
      sub_221BCD048();
      v56 = *(v15 + 280);
      OUTLINED_FUNCTION_99_1();
      sub_221BCC6D8();
      v57 = *(MEMORY[0x277CD8E30] + 4);
      v58 = swift_task_alloc();
      *(v15 + 336) = v58;
      type metadata accessor for RemoteAppIntentsActor();
      OUTLINED_FUNCTION_0_35();
      sub_221A58E78(v59, v60);
      OUTLINED_FUNCTION_58_2();
      *v58 = v61;
      v58[1] = sub_221A471A4;
      v62 = *(v15 + 328);
      v63 = *(v15 + 280);
      v64 = *(v15 + 256);
      v65 = *(v15 + 240);
      OUTLINED_FUNCTION_74_1(v66);
      OUTLINED_FUNCTION_6_8(v67);
      OUTLINED_FUNCTION_123_0();

      return MEMORY[0x282125BC0](v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15);
    }
  }

  else
  {
    v47 = *(v15 + 248);
    v49 = *(v47 + 16);
    v48 = *(v47 + 32);
    v50 = *(v47 + 48);
    *(v15 + 72) = *v47;
    *(v15 + 120) = v50;
    *(v15 + 104) = v48;
    *(v15 + 88) = v49;
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v15 + 352) = v51;
    *v51 = v52;
    v51[1] = sub_221A47358;
    v53 = *(v15 + 256);
    v54 = *(v15 + 240);
    OUTLINED_FUNCTION_124_0();

    return sub_221A47554();
  }
}

uint64_t sub_221A471A4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 336);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 344) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221A4729C()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];
  v6 = v0[37];
  (*(v0[34] + 8))(v0[35], v0[33]);
  v7 = OUTLINED_FUNCTION_48_3();
  v8(v7);
  v9 = OUTLINED_FUNCTION_53_6();
  v10(v9);
  v11 = v0[41];
  v12 = v0[38];
  v13 = v0[35];

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_125_1();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_221A47358()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_81_0();
  v2 = v0[44];
  v3 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  v5 = v0[41];
  v6 = v0[38];
  v7 = v0[35];

  OUTLINED_FUNCTION_166();

  return v8();
}

uint64_t sub_221A47494()
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_14_3();
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[43];
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[36];
  v7 = v0[35];
  v8 = OUTLINED_FUNCTION_59_2(v0[37]);
  v9(v8);
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_4();
  v12(v11);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_125_1();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_221A47554()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  *(v1 + 264) = v4;
  *(v1 + 272) = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F58, &unk_221BD27E0);
  OUTLINED_FUNCTION_8_1(v5);
  v7 = *(v6 + 64);
  *(v1 + 280) = OUTLINED_FUNCTION_210();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7F60, &qword_221BD6680);
  OUTLINED_FUNCTION_8_1(v8);
  v10 = *(v9 + 64);
  *(v1 + 288) = OUTLINED_FUNCTION_210();
  v11 = *(v3 + 16);
  *(v1 + 112) = *v3;
  *(v1 + 128) = v11;
  *(v1 + 144) = *(v3 + 32);
  *(v1 + 160) = *(v3 + 48);
  v12 = OUTLINED_FUNCTION_67_2();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_221A47620(uint64_t a1)
{
  if (qword_27CFB6D78 != -1)
  {
    a1 = swift_once();
  }

  OUTLINED_FUNCTION_194_0(a1, &unk_27CFDD940);
  v32 = *(v1 + 144);
  v31 = *(v1 + 152);
  v29 = *(v1 + 161);
  v30 = *(v1 + 160);
  if (qword_27CFB73C0 != -1)
  {
    OUTLINED_FUNCTION_1_32();
    swift_once();
  }

  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  v5 = *(v1 + 264);
  v4 = *(v1 + 272);
  v6 = sub_221BCCD88();
  __swift_project_value_buffer(v6, qword_27CFDEE88);
  v7 = swift_allocObject();
  v8 = *(v1 + 128);
  *(v7 + 16) = *(v1 + 112);
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 144);
  *(v7 + 64) = *(v1 + 160);
  sub_221BCCD08();
  *&v9 = OUTLINED_FUNCTION_117_1();
  *(v1 + 240) = v9;
  *(v1 + 256) = 0;
  *(v1 + 224) = v9;
  OUTLINED_FUNCTION_21_6(v3, v10, v11, v12);
  sub_221BCCCD8();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = swift_task_alloc();
  *(v17 + 16) = v1 + 112;
  *(v17 + 24) = v4;
  sub_221A0871C(v1 + 112, v1 + 168);
  OUTLINED_FUNCTION_164_0();
  OUTLINED_FUNCTION_27_0();
  sub_221A404D0(v18, v19, v20, v32, v31, v21, v22, v7, v25, v26, v27, v28, v1 + 224, v29 & 1, v3, v2, sub_221A579A0, v17);

  sub_221A01F0C(v2, &qword_27CFB7F58, &unk_221BD27E0);
  sub_221A01F0C(v3, &qword_27CFB7F60, &qword_221BD6680);
  sub_221A01F0C(v1 + 224, qword_27CFB7A80, &unk_221BD2800);

  OUTLINED_FUNCTION_25();

  return v23();
}

uint64_t sub_221A47884(__int128 *a1)
{
  MEMORY[0x223DA31F0](0x676E696863746546, 0xEA0000000000203ALL);
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  sub_221BCE018();
  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

void sub_221A47920(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_221A47A4C(a1);
  sub_221A4F364();
  if (v2)
  {
    v5 = sub_221BCC328();

    v6 = 0;
    v7 = 0;
    v8 = 0x8000;
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v9 = objc_opt_self();

    v10 = sub_221BCD358();
    v11 = [v9 applicationWithBundleIdentifier_];

    v12 = [v11 isHidden];
    v13 = [v11 isLocked];

    if (v13)
    {
      v14 = 256;
    }

    else
    {
      v14 = 0;
    }

    v8 = v14 | v12;
    v7 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
}

uint64_t sub_221A47A4C(__int128 *a1)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7FF0, &unk_221BD28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  sub_221A57A14(&v4, &v3);
  sub_221BCD2C8();
  sub_221B62F44();
}