uint64_t sub_2369F45FC@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2369F4654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2369F46CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2369F4748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_236A2EDB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2369F47F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_236A2EDB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2369F48A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_236A2ED44();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2369F494C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_236A2ED44();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2369F4AD4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2369F4B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236A2EDD4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2369F4BF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_236A2EDD4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2369F4CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236A2EDB4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 <= 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(a1 + *(a3 + 28));
    }

    v14 = v13 - 2;
    if (v12 >= 2)
    {
      return v14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2369F4D74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_236A2EDB4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2369F4E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_236A2EDB4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2369F4EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_236A2EDB4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2369F4F88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_236A2ED44();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2369F5034(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_236A2ED44();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2369F50D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  result = sub_236A26D84(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t static TokenHandoff.handoffUTToken(tokenData:advertisedItemID:hasSKANAdData:)()
{
  v0 = sub_236A2EE14();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_236A15354();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2369F3000, v6, v7, "This SPI is no longer available", v8, 2u);
    MEMORY[0x2383B5900](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  sub_2369F539C();
  swift_allocError();
  *v9 = 0;
  return swift_willThrow();
}

unint64_t sub_2369F539C()
{
  result = qword_27DE60C60;
  if (!qword_27DE60C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60C60);
  }

  return result;
}

uint64_t static TokenHandoff.handoffUTToken(tokenData:advertisedItemID:skanEnvironment:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = *a4;
  if (v8 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8 & 1;
  }

  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2369F54B4;

  return sub_236A1CBF8(a3, a1, a2, v9);
}

uint64_t sub_2369F54B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static TokenHandoff.handoffUTMetrics(eventsData:advertisedItemID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2369F64E4;

  return sub_236A1CE8C(a3, a1, a2, 2);
}

uint64_t sub_2369F56A0()
{
  if (*v0)
  {
    result = 0x69746375646F7270;
  }

  else
  {
    result = 0x6D706F6C65766564;
  }

  *v0;
  return result;
}

uint64_t sub_2369F56E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D706F6C65766564 && a2 == 0xEB00000000746E65;
  if (v6 || (sub_236A2F334() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746375646F7270 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_236A2F334();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2369F57E8(uint64_t a1)
{
  v2 = sub_2369F5DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2369F5824(uint64_t a1)
{
  v2 = sub_2369F5DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2369F586C(uint64_t a1)
{
  v2 = sub_2369F5EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2369F58A8(uint64_t a1)
{
  v2 = sub_2369F5EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2369F58E4(uint64_t a1)
{
  v2 = sub_2369F5E50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2369F5920(uint64_t a1)
{
  v2 = sub_2369F5E50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TokenHandoff.SKAdNetworkEnvironment.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60C68, &qword_236A2FB40);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60C70, &qword_236A2FB48);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60C78, &qword_236A2FB50);
  v11 = *(v10 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2369F5DFC();
  sub_236A2F404();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2369F5E50();
    v18 = v22;
    sub_236A2F234();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2369F5EA4();
    sub_236A2F234();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t TokenHandoff.SKAdNetworkEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

uint64_t sub_2369F5C80()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

uint64_t sub_2369F5CC8()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

uint64_t sub_2369F5D24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2369F5DFC()
{
  result = qword_27DE60C80;
  if (!qword_27DE60C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60C80);
  }

  return result;
}

unint64_t sub_2369F5E50()
{
  result = qword_27DE60C88;
  if (!qword_27DE60C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60C88);
  }

  return result;
}

unint64_t sub_2369F5EA4()
{
  result = qword_27DE60C90;
  if (!qword_27DE60C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60C90);
  }

  return result;
}

unint64_t sub_2369F5EFC()
{
  result = qword_27DE60C98;
  if (!qword_27DE60C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60C98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TokenHandoff(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TokenHandoff(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2369F6070(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2369F6090(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

void type metadata accessor for Decimal()
{
  if (!qword_27DE60CA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DE60CA0);
    }
  }
}

uint64_t getEnumTagSinglePayload for PostbackUpdate.ConversionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PostbackUpdate.ConversionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2369F6280()
{
  result = qword_27DE60CA8;
  if (!qword_27DE60CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60CA8);
  }

  return result;
}

unint64_t sub_2369F62D8()
{
  result = qword_27DE60CB0;
  if (!qword_27DE60CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60CB0);
  }

  return result;
}

unint64_t sub_2369F6330()
{
  result = qword_27DE60CB8;
  if (!qword_27DE60CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60CB8);
  }

  return result;
}

unint64_t sub_2369F6388()
{
  result = qword_27DE60CC0;
  if (!qword_27DE60CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60CC0);
  }

  return result;
}

unint64_t sub_2369F63E0()
{
  result = qword_27DE60CC8;
  if (!qword_27DE60CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60CC8);
  }

  return result;
}

unint64_t sub_2369F6438()
{
  result = qword_27DE60CD0;
  if (!qword_27DE60CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60CD0);
  }

  return result;
}

unint64_t sub_2369F6490()
{
  result = qword_27DE60CD8;
  if (!qword_27DE60CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60CD8);
  }

  return result;
}

uint64_t static AppImpression.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_236A2F334();
}

uint64_t AppImpression.hash(into:)()
{
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76));
  v2 = *v1;
  v3 = v1[1];

  return sub_236A2EEC4();
}

uint64_t AppImpression.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 68);
  v4 = sub_236A2EDD4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppImpression.keyID.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AppImpression.adNetworkID.getter()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 68);
  v2 = (v0 + *(type metadata accessor for AppImpressionPayload() + 40) + v1);
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t AppImpression.timestamp.getter()
{
  v1 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 68);
  v2.n128_f64[0] = *(v1 + *(type metadata accessor for AppImpressionPayload() + 32)) / 1000.0;

  return MEMORY[0x28211DA50](v2);
}

uint64_t AppImpression.compactJWSRepresentation.getter()
{
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AppImpression.init(compactJWS:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_236A2EE14();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369F69D8, 0, 0);
}

uint64_t sub_2369F69D8()
{
  v1 = v0[9];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for AppImpressionPayload();
  v5 = sub_2369F70D0();
  v6 = sub_2369F7124();
  v7 = sub_2369F921C(&qword_281316510, type metadata accessor for AppImpressionPayload);
  v8 = sub_2369F921C(&qword_281316518, type metadata accessor for AppImpressionPayload);

  sub_236A202A8(v3, v2, v4, v5, v6, v7, v8, v1);
  v0[10] = 0;
  v9 = v0[8];
  v10 = v0[2];
  sub_2369F9070(v0[9], v10);
  v11 = v10 + *(v9 + 68);
  v12 = *(v11 + *(v4 + 24));
  v13 = (v11 + *(v4 + 40));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  v0[11] = v16;
  *v16 = v0;
  v16[1] = sub_2369F6D64;
  v17 = v0[3];
  v18 = v0[4];

  return sub_236A0B8C4(v12, v17, v18, v14, v15);
}

uint64_t sub_2369F6D64()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[4];

    return MEMORY[0x2822009F8](sub_2369F6ED0, 0, 0);
  }

  else
  {
    v5 = v3[9];
    v6 = v3[7];
    v7 = v3[4];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2369F6ED0()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v5 = sub_236A150C0();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x2383B5800](v1);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered an error while initializing impression: %@.", v8, 0xCu);
    sub_2369F90E0(v9, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v9, -1, -1);
    MEMORY[0x2383B5900](v8, -1, -1);
  }

  v11 = v0[10];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];

  (*(v13 + 8))(v12, v14);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v1, v15);
  swift_willThrow();

  if (!v11)
  {
    sub_2369F90E0(v0[2], &qword_27DE60CE0, &qword_236A2FF00);
  }

  v16 = v0[9];
  v17 = v0[7];

  v18 = v0[1];

  return v18();
}

unint64_t sub_2369F70D0()
{
  result = qword_281316520;
  if (!qword_281316520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316520);
  }

  return result;
}

unint64_t sub_2369F7124()
{
  result = qword_281316528;
  if (!qword_281316528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316528);
  }

  return result;
}

void AppImpression.init(compactJWS:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for AppImpressionPayload();
  v11 = sub_2369F70D0();
  v12 = sub_2369F7124();
  v13 = sub_2369F921C(&qword_281316510, type metadata accessor for AppImpressionPayload);
  v14 = sub_2369F921C(&qword_281316518, type metadata accessor for AppImpressionPayload);
  sub_236A202A8(a1, a2, v10, v11, v12, v13, v14, v9);
  if (v3)
  {
    sub_2369F539C();
    swift_allocError();
    sub_236A01840(v3, v15);
    swift_willThrow();
  }

  else
  {
    sub_2369F9070(v9, v17);
  }
}

uint64_t AppImpression.hashValue.getter()
{
  sub_236A2F3B4();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76));
  v2 = *v1;
  v3 = v1[1];
  sub_236A2EEC4();
  return sub_236A2F3D4();
}

uint64_t sub_2369F737C(uint64_t a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_236A2F334();
}

uint64_t sub_2369F73F8()
{
  sub_236A2F3B4();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76));
  v2 = *v1;
  v3 = v1[1];
  sub_236A2EEC4();
  return sub_236A2F3D4();
}

uint64_t sub_2369F7458()
{
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76));
  v2 = *v1;
  v3 = v1[1];

  return sub_236A2EEC4();
}

uint64_t sub_2369F74AC()
{
  sub_236A2F3B4();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 76));
  v2 = *v1;
  v3 = v1[1];
  sub_236A2EEC4();
  return sub_236A2F3D4();
}

uint64_t sub_2369F7508@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00) + 68);
  v4 = sub_236A2EDD4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppImpression.beginView()()
{
  v1[2] = v0;
  v2 = sub_236A2EE14();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369F7650, 0, 0);
}

uint64_t sub_2369F7650()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  v3 = v1 + *(v2 + 68);
  v4 = *(v3 + *(type metadata accessor for AppImpressionPayload() + 24));
  v5 = (v1 + *(v2 + 76));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_2369F7734;

  return sub_236A0BC4C(v4, v6, v7);
}

uint64_t sub_2369F7734()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2369F7870, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2369F7870()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_236A150C0();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered error while starting view for impression: %@.", v9, 0xCu);
    sub_2369F90E0(v10, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[3];

  (*(v14 + 8))(v13, v15);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v12, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t AppImpression.endView()()
{
  v1[2] = v0;
  v2 = sub_236A2EE14();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369F7B04, 0, 0);
}

uint64_t sub_2369F7B04()
{
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  v3 = v1 + *(v2 + 68);
  v4 = *(v3 + *(type metadata accessor for AppImpressionPayload() + 24));
  v5 = (v1 + *(v2 + 76));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = sub_2369F7BE8;

  return sub_236A0BEC8(v4, v6, v7);
}

uint64_t sub_2369F7BE8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2369F7D24, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2369F7D24()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_236A150C0();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered error while ending view for impression: %@.", v9, 0xCu);
    sub_2369F90E0(v10, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  v15 = v0[3];

  (*(v14 + 8))(v13, v15);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v12, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t AppImpression.handleTap()()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369F7F94, 0, 0);
}

uint64_t sub_2369F7F94()
{
  v1 = v0[3];
  v2 = sub_236A2ED44();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2369F806C;
  v5 = v0[2];
  v4 = v0[3];

  return sub_2369F8244(v4);
}

uint64_t sub_2369F806C()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[5] = v0;

  sub_2369F90E0(v3, &qword_27DE60CF0, &qword_236A2FF30);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2369F81E0, 0, 0);
  }

  else
  {
    v5 = v4[3];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_2369F81E0()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_2369F8244(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_236A2EE14();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_236A2ED44();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369F8360, 0, 0);
}

uint64_t sub_2369F8360()
{
  sub_236A2EFC4();
  *(v0 + 80) = sub_236A2EFB4();
  v2 = sub_236A2EF84();

  return MEMORY[0x2822009F8](sub_2369F83F4, v2, v1);
}

uint64_t sub_2369F83F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  sub_236A2ED24();
  v5 = objc_allocWithZone(MEMORY[0x277D754D8]);
  v6 = sub_236A2ED34();
  v7 = sub_236A2EE64();
  v8 = sub_236A2EE64();
  v9 = [v5 initWithSourceIdentifier:0 destinationURL:v6 sourceDescription:v7 purchaser:v8];

  (*(v4 + 8))(v2, v3);
  v10 = [v9 toUISClickAttribution];
  v11 = [v10 eventMessage];
  v0[11] = v11;
  if (v11)
  {

    v12 = sub_2369F859C;
  }

  else
  {
    sub_2369F539C();
    v0[14] = swift_allocError();
    *v13 = 1;
    swift_willThrow();

    v12 = sub_2369F879C;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_2369F859C()
{
  v1 = v0[3];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  v3 = v1 + *(v2 + 68);
  v4 = *(v3 + *(type metadata accessor for AppImpressionPayload() + 24));
  v5 = (v1 + *(v2 + 76));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_2369F8688;
  v9 = v0[11];
  v10 = v0[2];

  return sub_236A0C300(v4, v6, v7, v9, v10);
}

uint64_t sub_2369F8688()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2369F89F8;
  }

  else
  {
    v3 = sub_2369F897C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2369F879C()
{
  v1 = v0[14];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = sub_236A150C0();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x2383B5800](v1);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered an error while processing tap for impression: %@.", v8, 0xCu);
    sub_2369F90E0(v9, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v9, -1, -1);
    MEMORY[0x2383B5900](v8, -1, -1);
  }

  v11 = v0[9];
  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];

  (*(v13 + 8))(v12, v14);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v1, v15);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2369F897C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2369F89F8()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = sub_236A150C0();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x2383B5800](v1);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered an error while processing tap for impression: %@.", v8, 0xCu);
    sub_2369F90E0(v9, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v9, -1, -1);
    MEMORY[0x2383B5900](v8, -1, -1);
  }

  v11 = *(v0 + 72);
  v13 = *(v0 + 40);
  v12 = *(v0 + 48);
  v14 = *(v0 + 32);

  (*(v13 + 8))(v12, v14);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v1, v15);
  swift_willThrow();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t AppImpression.handleTap(reengagementURL:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369F8C7C, 0, 0);
}

uint64_t sub_2369F8C7C()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = sub_236A2ED44();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2369F8DAC;
  v7 = v0[3];
  v6 = v0[4];

  return sub_2369F8244(v6);
}

uint64_t sub_2369F8DAC()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  sub_2369F90E0(v3, &qword_27DE60CF0, &qword_236A2FF30);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2369F8F20, 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_2369F8F20()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_2369F8F8C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_2369F8FEC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_2369F8FFC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2369F9070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE0, &qword_236A2FF00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2369F90E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for AppImpression()
{
  result = qword_281316588;
  if (!qword_281316588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2369F921C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2369F928C()
{
  sub_2369F92F8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2369F92F8()
{
  if (!qword_2813163E0[0])
  {
    type metadata accessor for AppImpressionPayload();
    sub_2369F70D0();
    sub_2369F7124();
    sub_2369F921C(&qword_281316510, type metadata accessor for AppImpressionPayload);
    sub_2369F921C(&qword_281316518, type metadata accessor for AppImpressionPayload);
    v0 = type metadata accessor for JWS();
    if (!v1)
    {
      atomic_store(v0, qword_2813163E0);
    }
  }
}

AdAttributionKit::ConversionType_optional __swiftcall ConversionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_236A2F104();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ConversionType.rawValue.getter()
{
  v1 = 0x6F6C6E776F646572;
  if (*v0 != 1)
  {
    v1 = 0x656761676E656572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64616F6C6E776F64;
  }
}

uint64_t sub_2369F94B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F6C6E776F646572;
  v4 = 0xEA00000000006461;
  if (v2 != 1)
  {
    v3 = 0x656761676E656572;
    v4 = 0xEC000000746E656DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6F6C6E776F646572;
  v8 = 0xEA00000000006461;
  if (*a2 != 1)
  {
    v7 = 0x656761676E656572;
    v8 = 0xEC000000746E656DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x64616F6C6E776F64;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_236A2F334();
  }

  return v11 & 1;
}

unint64_t sub_2369F95D4()
{
  result = qword_27DE60D08;
  if (!qword_27DE60D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D08);
  }

  return result;
}

uint64_t sub_2369F9628()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_2369F96D8()
{
  *v0;
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_2369F9774()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

void sub_2369F982C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000006461;
  v5 = 0x6F6C6E776F646572;
  if (v2 != 1)
  {
    v5 = 0x656761676E656572;
    v4 = 0xEC000000746E656DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64616F6C6E776F64;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for ConversionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversionType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

ValueMetadata *type metadata accessor for ConversionType()
{
  return &type metadata for ConversionType;
}

{
  return &type metadata for ConversionType;
}

AdAttributionKit::CoarseConversionValue_optional __swiftcall CoarseConversionValue.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_236A2F104();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CoarseConversionValue.rawValue.getter()
{
  v1 = 7827308;
  if (*v0 != 1)
  {
    v1 = 0x6D756964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t sub_2369F9ADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7827308;
  if (v2 != 1)
  {
    v4 = 0x6D756964656DLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1751607656;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (*a2 != 1)
  {
    v8 = 0x6D756964656DLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1751607656;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_236A2F334();
  }

  return v11 & 1;
}

uint64_t sub_2369F9BC0()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_2369F9C50()
{
  *v0;
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_2369F9CCC()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

void sub_2369F9D64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7827308;
  if (v2 != 1)
  {
    v5 = 0x6D756964656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1751607656;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static Postback.reengagementOpenURLParameter.getter()
{
  v0 = sub_236A1DDB8();
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static Postback.updateConversionValue(_:lockPostback:)(uint64_t a1, char a2)
{
  v5 = sub_236A2EE14();
  *(v2 + 56) = v5;
  v6 = *(v5 - 8);
  *(v2 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 16) = a1;
  *(v2 + 24) = 3;
  *(v2 + 25) = a2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  v8 = swift_task_alloc();
  *(v2 + 80) = v8;
  *v8 = v2;
  v8[1] = sub_2369F9FAC;

  return sub_236A25FA4();
}

uint64_t sub_2369F9FAC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2369FA0E8, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2369FA0E8()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = sub_236A153BC();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered error while updating postback: %@", v9, 0xCu);
    sub_2369FB91C(v10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];

  (*(v14 + 8))(v13, v15);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v12, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t static Postback.updateConversionValue(_:coarseConversionValue:lockPostback:)(uint64_t a1, _BYTE *a2, char a3)
{
  v7 = sub_236A2EE14();
  *(v3 + 136) = v7;
  v8 = *(v7 - 8);
  *(v3 + 144) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  v10 = a3 & 1;
  if (*a2)
  {
    if (*a2 == 1)
    {
      *(v3 + 56) = a1;
      *(v3 + 64) = 1;
      *(v3 + 65) = v10;
      *(v3 + 80) = 0;
      *(v3 + 88) = 0;
      *(v3 + 72) = 0;
      v11 = swift_task_alloc();
      *(v3 + 160) = v11;
      *v11 = v3;
      v11[1] = sub_2369FA49C;
    }

    else
    {
      *(v3 + 16) = a1;
      *(v3 + 24) = 2;
      *(v3 + 25) = v10;
      *(v3 + 40) = 0;
      *(v3 + 48) = 0;
      *(v3 + 32) = 0;
      v13 = swift_task_alloc();
      *(v3 + 168) = v13;
      *v13 = v3;
      v13[1] = sub_2369FA5EC;
    }
  }

  else
  {
    *(v3 + 96) = a1;
    *(v3 + 104) = 0;
    *(v3 + 105) = v10;
    *(v3 + 120) = 0;
    *(v3 + 128) = 0;
    *(v3 + 112) = 0;
    v12 = swift_task_alloc();
    *(v3 + 176) = v12;
    *v12 = v3;
    v12[1] = sub_2369FA73C;
  }

  return sub_236A25FA4();
}

uint64_t sub_2369FA49C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;

    return MEMORY[0x2822009F8](sub_2369FA88C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 152);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_2369FA5EC()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;

    return MEMORY[0x2822009F8](sub_2369FA88C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 152);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_2369FA73C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 184) = v0;

    return MEMORY[0x2822009F8](sub_2369FA88C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 152);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_2369FA88C()
{
  v1 = v0[23];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = sub_236A153BC();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered error while updating postback: %@", v9, 0xCu);
    sub_2369FB91C(v10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v12 = v0[23];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];

  (*(v14 + 8))(v13, v15);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v12, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t static Postback.updateConversionValue(_:)(uint64_t *a1)
{
  v3 = sub_236A2EE14();
  *(v1 + 56) = v3;
  v4 = *(v3 - 8);
  *(v1 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  *(v1 + 136) = *(a1 + 8);
  *(v1 + 137) = *(a1 + 9);
  *(v1 + 88) = *(a1 + 1);
  *(v1 + 104) = a1[4];

  return MEMORY[0x2822009F8](sub_2369FAB34, 0, 0);
}

uint64_t sub_2369FAB34()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 137);
  v4 = *(v0 + 136);
  v5 = *(v0 + 80);
  v9 = *(v0 + 88);

  v6 = sub_2369FAF90();
  *(v0 + 112) = v6;
  *(v0 + 16) = v5;
  *(v0 + 24) = v3;
  *(v0 + 25) = v4;
  *(v0 + 32) = v6;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_2369FAC2C;

  return sub_236A25FA4();
}

uint64_t sub_2369FAC2C()
{
  v2 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_2369FADB8;
  }

  else
  {
    v3 = sub_2369FAD40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2369FAD40()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2369FADB8()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  v7 = sub_236A153BC();
  (*(v5 + 16))(v4, v7, v6);
  MEMORY[0x2383B5800](v1);
  v8 = sub_236A2EDF4();
  v9 = sub_236A2F024();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    MEMORY[0x2383B5800](v10);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&dword_2369F3000, v8, v9, "Encountered error while updating postback: %@", v11, 0xCu);
    sub_2369FB91C(v12);
    MEMORY[0x2383B5900](v12, -1, -1);
    MEMORY[0x2383B5900](v11, -1, -1);
  }

  v14 = v0[16];
  v16 = v0[8];
  v15 = v0[9];
  v17 = v0[7];

  (*(v16 + 8))(v15, v17);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v14, v18);
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_2369FAF90()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v36 = *(v1 + 16);
  if (!v36)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = 0;
  v35 = v1 + 32;
  v3 = MEMORY[0x277D84FA0];
  while ((*(v35 + v2) & 1) != 0)
  {
    v7 = *(v3 + 40);
    sub_236A2F3B4();
    sub_236A2EEC4();
    v8 = sub_236A2F3D4();
    v9 = -1 << *(v3 + 32);
    v10 = v8 & ~v9;
    if ((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      while (!*(*(v3 + 48) + v10) || *(*(v3 + 48) + v10) == 1)
      {
        v12 = sub_236A2F334();

        if (v12)
        {
          goto LABEL_8;
        }

        v10 = (v10 + 1) & v11;
        if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_48:

      goto LABEL_8;
    }

LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + 16);
    if (*(v3 + 24) <= v14)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_2369FBE18(v14 + 1);
      }

      else
      {
        sub_2369FC4D4(v14 + 1);
      }

      v28 = *(v3 + 40);
      sub_236A2F3B4();
      sub_236A2EEC4();
      v29 = sub_236A2F3D4();
      v30 = -1 << *(v3 + 32);
      v10 = v29 & ~v30;
      if ((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
      {
        v31 = ~v30;
        while (!*(*(v3 + 48) + v10) || *(*(v3 + 48) + v10) == 1)
        {
          v32 = sub_236A2F334();

          if (v32)
          {
            goto LABEL_55;
          }

          v10 = (v10 + 1) & v31;
          if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        goto LABEL_54;
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2369FC394();
    }

LABEL_45:
    *(v3 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v10;
    *(*(v3 + 48) + v10) = 2;
    v33 = *(v3 + 16);
    v5 = __OFADD__(v33, 1);
    v6 = v33 + 1;
    if (v5)
    {
      goto LABEL_53;
    }

LABEL_7:
    *(v3 + 16) = v6;
LABEL_8:
    if (++v2 == v36)
    {
      return v3;
    }
  }

  sub_2369FBB94(v37, 0);
  v15 = *(v3 + 40);
  sub_236A2F3B4();
  sub_236A2EEC4();
  v16 = sub_236A2F3D4();
  v17 = -1 << *(v3 + 32);
  v18 = v16 & ~v17;
  if ((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    while (!*(*(v3 + 48) + v18) || *(*(v3 + 48) + v18) == 2)
    {
      v20 = sub_236A2F334();

      if (v20)
      {
        goto LABEL_8;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_48;
  }

LABEL_25:
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v3 + 16);
  if (*(v3 + 24) > v22)
  {
    if ((v21 & 1) == 0)
    {
      sub_2369FC394();
    }

LABEL_6:
    *(v3 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v18;
    *(*(v3 + 48) + v18) = 1;
    v4 = *(v3 + 16);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    goto LABEL_7;
  }

  if (v21)
  {
    sub_2369FBE18(v22 + 1);
  }

  else
  {
    sub_2369FC4D4(v22 + 1);
  }

  v23 = *(v3 + 40);
  sub_236A2F3B4();
  sub_236A2EEC4();
  v24 = sub_236A2F3D4();
  v25 = -1 << *(v3 + 32);
  v18 = v24 & ~v25;
  if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    goto LABEL_6;
  }

  v26 = ~v25;
  while (!*(*(v3 + 48) + v18) || *(*(v3 + 48) + v18) == 2)
  {
    v27 = sub_236A2F334();

    if (v27)
    {
      goto LABEL_55;
    }

    v18 = (v18 + 1) & v26;
    if (((*(v3 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_54:

LABEL_55:
  result = sub_236A2F354();
  __break(1u);
  return result;
}

AdAttributionKit::PostbackUpdate::ConversionType_optional __swiftcall PostbackUpdate.ConversionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_236A2F104();

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

uint64_t PostbackUpdate.ConversionType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656761676E656572;
  }

  else
  {
    result = 0x6C6C6174736E69;
  }

  *v0;
  return result;
}

uint64_t sub_2369FB5AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656761676E656572;
  }

  else
  {
    v4 = 0x6C6C6174736E69;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEC000000746E656DLL;
  }

  if (*a2)
  {
    v6 = 0x656761676E656572;
  }

  else
  {
    v6 = 0x6C6C6174736E69;
  }

  if (*a2)
  {
    v7 = 0xEC000000746E656DLL;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_236A2F334();
  }

  return v9 & 1;
}

uint64_t sub_2369FB65C()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_2369FB6E8()
{
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_2369FB760()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_2369FB7E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_236A2F104();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2369FB848(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6174736E69;
  if (*v1)
  {
    v2 = 0x656761676E656572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC000000746E656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t PostbackUpdate.conversionTag.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PostbackUpdate.init(fineConversionValue:lockPostback:coarseConversionValue:conversionTypes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 9) = v5;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 16) = a4;
  return result;
}

uint64_t PostbackUpdate.init(fineConversionValue:lockPostback:conversionTag:coarseConversionValue:conversionTypes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 9) = v7;
  *(a7 + 16) = a6;
  return result;
}

uint64_t sub_2369FB91C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CE8, &qword_236A2FF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2369FB988()
{
  result = qword_27DE60D10;
  if (!qword_27DE60D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D10);
  }

  return result;
}

unint64_t sub_2369FB9E0()
{
  result = qword_27DE60D18;
  if (!qword_27DE60D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D18);
  }

  return result;
}

ValueMetadata *type metadata accessor for CoarseConversionValue()
{
  return &type metadata for CoarseConversionValue;
}

{
  return &type metadata for CoarseConversionValue;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2369FBA68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2369FBAC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2369FBB40()
{
  result = qword_27DE60D20;
  if (!qword_27DE60D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D20);
  }

  return result;
}

uint64_t sub_2369FBB94(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_236A2F3B4();
  v20 = v2;
  v21 = a1;
  sub_236A2EEC4();

  v7 = sub_236A2F3D4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_21:
    v17 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_2369FC0D0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
    goto LABEL_24;
  }

  v10 = ~v8;
  while (!*(*(v5 + 48) + v9))
  {
    v12 = 0xE800000000000000;
    v11 = 0x64616F6C6E776F64;
    v13 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v13 == 1)
    {
      v14 = 0x6F6C6E776F646572;
    }

    else
    {
      v14 = 0x6761676E652D6572;
    }

    if (v13 == 1)
    {
      v15 = 0xEA00000000006461;
    }

    else
    {
      v15 = 0xED0000746E656D65;
    }

    if (v11 == v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = sub_236A2F334();

    if (v16)
    {
      goto LABEL_23;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v9) == 1)
  {
    v11 = 0x6F6C6E776F646572;
    v12 = 0xEA00000000006461;
    v13 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v11 = 0x6761676E652D6572;
  v12 = 0xED0000746E656D65;
  v13 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v15 = 0xE800000000000000;
  if (v11 != 0x64616F6C6E776F64)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v12 != v15)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_24:
  *v21 = a2;
  return result;
}

uint64_t sub_2369FBE18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60D28, &unk_236A303A0);
  result = sub_236A2F0B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_236A2F3B4();
      sub_236A2EEC4();

      result = sub_236A2F3D4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2369FC0D0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_2369FBE18(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_2369FC394();
        goto LABEL_28;
      }

      sub_2369FC4D4(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_236A2F3B4();
    sub_236A2EEC4();

    result = sub_236A2F3D4();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0x6F6C6E776F646572;
            v13 = 0xEA00000000006461;
            v14 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0x6761676E652D6572;
            v13 = 0xED0000746E656D65;
            v14 = v5;
            if (!v5)
            {
LABEL_24:
              v16 = 0xE800000000000000;
              if (v12 == 0x64616F6C6E776F64)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v13 = 0xE800000000000000;
          v12 = 0x64616F6C6E776F64;
          v14 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 0x6F6C6E776F646572;
        }

        else
        {
          v15 = 0x6761676E652D6572;
        }

        if (v14 == 1)
        {
          v16 = 0xEA00000000006461;
        }

        else
        {
          v16 = 0xED0000746E656D65;
        }

        if (v12 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_236A2F334();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = sub_236A2F354();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

void *sub_2369FC394()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60D28, &unk_236A303A0);
  v2 = *v0;
  v3 = sub_236A2F0A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2369FC4D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60D28, &unk_236A303A0);
  result = sub_236A2F0B4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_236A2F3B4();
      sub_236A2EEC4();

      result = sub_236A2F3D4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t static PurchaseIntake.isEligibleForPurchaseProcessing(appItemID:)(uint64_t a1)
{
  v1[2] = a1;
  v3 = sub_236A2EE14();
  v1[3] = v3;
  v4 = *(v3 - 8);
  v1[4] = v4;
  v5 = *(v4 + 64) + 15;
  v1[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  v6[1] = sub_2369FC854;

  return sub_236A18624(a1);
}

uint64_t sub_2369FC854(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2369FC9AC, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1 & 1);
  }
}

uint64_t sub_2369FC9AC()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_236A15510();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Failed to check eligibility for purchase processing: %@", v9, 0xCu);
    sub_2369FB91C(v10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[3];

  (*(v13 + 8))(v12, v14);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_2369FCB7C;
  v16 = v0[7];
  v17 = v0[2];

  return sub_2369FDCD4(v16, v17);
}

uint64_t sub_2369FCB7C()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2369FCC78, 0, 0);
}

uint64_t sub_2369FCC78()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t static PurchaseIntake.reportPurchaseIntakeFailure(_:appItemID:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2369F54B4;

  return sub_2369FDCD4(a1, a2);
}

uint64_t static PurchaseIntake.processPurchase(_:appItemID:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_236A2EE14();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_236A2EDB4();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for InAppPurchaseDetails();
  v2[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369FCEE4, 0, 0);
}

uint64_t sub_2369FCEE4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  *(v0 + 120) = *v6;
  *(v0 + 136) = v7;
  v22 = *(v6 + 32);
  v23 = *(v6 + 24);
  v21 = *(v6 + 40);
  v8 = type metadata accessor for PurchaseIntake.InAppPurchase();
  (*(v4 + 16))(v3, v6 + v8[7], v5);
  v9 = *(v6 + v8[8]);
  v10 = (v6 + v8[9]);
  v11 = v10[1];
  v20 = *v10;
  v12 = *(v6 + v8[10]);
  if (v12 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v12 & 1;
  }

  v14 = *(v0 + 136);
  *v1 = *(v0 + 120);
  *(v1 + 16) = v14;
  *(v1 + 24) = v23;
  *(v1 + 32) = v22;
  *(v1 + 40) = v21;
  (*(v4 + 32))(v1 + v2[7], v3, v5);
  *(v1 + v2[8]) = v9;
  v15 = (v1 + v2[9]);
  *v15 = v20;
  v15[1] = v11;
  *(v1 + v2[10]) = v13;

  v16 = swift_task_alloc();
  *(v0 + 96) = v16;
  *v16 = v0;
  v16[1] = sub_2369FD09C;
  v17 = *(v0 + 88);
  v18 = *(v0 + 24);

  return sub_236A18A14(v18, v17);
}

uint64_t sub_2369FD09C()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2369FD230;
  }

  else
  {
    v3 = sub_2369FD1B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2369FD1B0()
{
  sub_2369FE0EC(v0[11]);
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2369FD230()
{
  v1 = v0[13];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_2369FE0EC(v0[11]);
  v5 = sub_236A15510();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[13];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Failed to process In-App Purchase: %@", v9, 0xCu);
    sub_2369FB91C(v10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];

  (*(v13 + 8))(v12, v14);
  v15 = swift_task_alloc();
  v0[14] = v15;
  *v15 = v0;
  v15[1] = sub_2369FD408;
  v16 = v0[13];
  v17 = v0[3];

  return sub_2369FDCD4(v16, v17);
}

uint64_t sub_2369FD408()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2369FD504, 0, 0);
}

uint64_t sub_2369FD504()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t static PurchaseIntake.processInAppPurchase(_:appItemID:)()
{
  v1 = sub_236A2EE14();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2369FD640, 0, 0);
}

uint64_t sub_2369FD640()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_236A15510();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_236A2EDF4();
  v6 = sub_236A2F024();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2369F3000, v5, v6, "This method has been replaced with the non-throwing variant of processPurchase(_:appItemID:)", v7, 2u);
    MEMORY[0x2383B5900](v7, -1, -1);
  }

  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t PurchaseIntake.InAppPurchase.price.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return result;
}

uint64_t PurchaseIntake.InAppPurchase.currencyCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PurchaseIntake.InAppPurchase.purchaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PurchaseIntake.InAppPurchase() + 28);
  v4 = sub_236A2EDB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PurchaseIntake.InAppPurchase.purchaseType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PurchaseIntake.InAppPurchase();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t PurchaseIntake.InAppPurchase.subscriptionDuration.getter()
{
  v1 = (v0 + *(type metadata accessor for PurchaseIntake.InAppPurchase() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PurchaseIntake.InAppPurchase.offerType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PurchaseIntake.InAppPurchase();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t PurchaseIntake.InAppPurchase.amountCharged.getter()
{
  v1 = (v0 + *(type metadata accessor for PurchaseIntake.InAppPurchase() + 44));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 4);
  return result;
}

uint64_t PurchaseIntake.InAppPurchase.storefront.getter()
{
  v1 = (v0 + *(type metadata accessor for PurchaseIntake.InAppPurchase() + 48));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t PurchaseIntake.InAppPurchase.init(price:quantity:currencyCode:purchaseDate:purchaseType:subscriptionDuration:offerType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12)
{
  v14 = *a8;
  v15 = *a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v16 = type metadata accessor for PurchaseIntake.InAppPurchase();
  v17 = v16[7];
  v18 = sub_236A2EDB4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a9 + v17, a7, v18);
  *(a9 + v16[8]) = v14;
  v20 = (a9 + v16[9]);
  *v20 = a10;
  v20[1] = a11;
  *(a9 + v16[10]) = v15;
  v21 = MEMORY[0x2383B50F0](0);
  v22 = a9 + v16[11];
  *v22 = v21;
  *(v22 + 8) = v23;
  *(v22 + 16) = v24;
  result = (*(v19 + 8))(a7, v18);
  v26 = (a9 + v16[12]);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  return result;
}

uint64_t PurchaseIntake.InAppPurchase.init(amountCharged:currencyCode:storefront:purchaseDate:purchaseType:subscriptionDuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v33 = *a10;
  v21 = type metadata accessor for PurchaseIntake.InAppPurchase();
  v22 = a9 + v21[11];
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  v23 = (a9 + v21[12]);
  *v23 = a6;
  v23[1] = a7;
  v24 = v21[7];
  v25 = sub_236A2EDB4();
  v26 = *(v25 - 8);
  (*(v26 + 16))(a9 + v24, a8, v25);
  *(a9 + v21[8]) = v33;
  v27 = (a9 + v21[9]);
  *v27 = a11;
  v27[1] = a12;
  v28 = MEMORY[0x2383B50F0](0);
  v30 = v29;
  LODWORD(a4) = v31;
  result = (*(v26 + 8))(a8, v25);
  *a9 = v28;
  *(a9 + 8) = v30;
  *(a9 + 16) = a4;
  *(a9 + 24) = 0;
  *(a9 + v21[10]) = 2;
  return result;
}

uint64_t PurchaseIntake.InAppPurchase.InAppPurchaseType.hashValue.getter()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

uint64_t PurchaseIntake.InAppPurchase.OfferType.hashValue.getter()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

uint64_t sub_2369FDCD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_236A2EE14();
  v2[2] = v5;
  v6 = *(v5 - 8);
  v2[3] = v6;
  v7 = *(v6 + 64) + 15;
  v2[4] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_2369FDDD0;

  return sub_236A18E48(a2, a1);
}

uint64_t sub_2369FDDD0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2369FDF0C, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2369FDF0C()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  v5 = sub_236A15510();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[6];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    MEMORY[0x2383B5800](v9);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_2369F3000, v6, v7, "Failed to report purchase intake failure: %@", v10, 0xCu);
    sub_2369FB91C(v11);
    MEMORY[0x2383B5900](v11, -1, -1);
    MEMORY[0x2383B5900](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);
  v13 = v0[4];

  v14 = v0[1];

  return v14();
}

uint64_t type metadata accessor for PurchaseIntake.InAppPurchase()
{
  result = qword_27DE60D40;
  if (!qword_27DE60D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2369FE0EC(uint64_t a1)
{
  v2 = type metadata accessor for InAppPurchaseDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2369FE14C()
{
  result = qword_27DE60D30;
  if (!qword_27DE60D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D30);
  }

  return result;
}

unint64_t sub_2369FE1A4()
{
  result = qword_27DE60D38;
  if (!qword_27DE60D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D38);
  }

  return result;
}

void sub_2369FE230()
{
  type metadata accessor for Decimal();
  if (v0 <= 0x3F)
  {
    sub_236A2EDB4();
    if (v1 <= 0x3F)
    {
      sub_2369FE33C(319, &qword_27DE60D50);
      if (v2 <= 0x3F)
      {
        sub_2369FE33C(319, &qword_27DE60D58);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2369FE33C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_236A2F054();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for PurchaseIntake.InAppPurchase.InAppPurchaseType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PurchaseIntake.InAppPurchase.InAppPurchaseType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static PostbackProxy.updateConversionValue(_:advertisedItemID:)(uint64_t *a1, uint64_t a2)
{
  v5 = sub_236A2EE14();
  *(v2 + 56) = v5;
  v6 = *(v5 - 8);
  *(v2 + 64) = v6;
  v7 = *(v6 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  *(v2 + 16) = a2;
  *(v2 + 24) = v8;
  *(v2 + 32) = v10;
  *(v2 + 33) = v9;
  *(v2 + 40) = *(a1 + 3);
  v11 = swift_task_alloc();
  *(v2 + 80) = v11;
  *v11 = v2;
  v11[1] = sub_2369FE60C;

  return sub_236A1A39C();
}

uint64_t sub_2369FE60C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2369FE748, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2369FE748()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = sub_236A15584();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered error while updating postback: %@", v9, 0xCu);
    sub_2369FB91C(v10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v12 = v0[11];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];

  (*(v14 + 8))(v13, v15);
  sub_2369F539C();
  swift_allocError();
  sub_236A01840(v12, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

AdAttributionKit::ConversionValueTier_optional __swiftcall ConversionValueTier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_236A2F104();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ConversionValueTier.rawValue.getter()
{
  v1 = 1701734758;
  if (*v0 == 1)
  {
    v1 = 0x657372616F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_2369FE9C0(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701734758;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x657372616F63;
  if (v3 != 1)
  {
    v5 = 1701734758;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE600000000000000;
  if (*a2 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_236A2F334();
  }

  return v11 & 1;
}

unint64_t sub_2369FEAA4()
{
  result = qword_27DE60D60;
  if (!qword_27DE60D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D60);
  }

  return result;
}

uint64_t sub_2369FEAF8()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_2369FEB88()
{
  *v0;
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_2369FEC04()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

void sub_2369FEC9C(uint64_t *a1@<X8>)
{
  v2 = 1701734758;
  v3 = 0xE600000000000000;
  if (*v1 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 1701736302;
    v4 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

ValueMetadata *type metadata accessor for ConversionValueTier()
{
  return &type metadata for ConversionValueTier;
}

{
  return &type metadata for ConversionValueTier;
}

uint64_t static BillingEvent.freeTrial.getter@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x2383B50F0](0);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static BillingEvent.purchase(price:quantity:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 1;
  return result;
}

uint64_t BillingEvent.price.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  return result;
}

uint64_t BillingEvent.OfferType.hashValue.getter()
{
  sub_236A2F3B4();
  MEMORY[0x2383B5470](0);
  return sub_236A2F3D4();
}

uint64_t sub_2369FEDE8()
{
  sub_236A2F3B4();
  MEMORY[0x2383B5470](0);
  return sub_236A2F3D4();
}

uint64_t sub_2369FEE2C()
{
  sub_236A2F3B4();
  MEMORY[0x2383B5470](0);
  return sub_236A2F3D4();
}

uint64_t static AdAnalytics.reportBillingEvent(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = sub_236A2EE14();
  *(v1 + 24) = v3;
  v4 = *(v3 - 8);
  *(v1 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  v6 = type metadata accessor for DeveloperBillingEvent();
  *(v1 + 48) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *(a1 + 24);
  *(v1 + 56) = v8;
  *(v1 + 64) = v9;
  *(v1 + 88) = *(a1 + 32);

  return MEMORY[0x2822009F8](sub_2369FEF6C, 0, 0);
}

uint64_t sub_2369FEF6C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);
  if (*(v0 + 88))
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = *v4;
  *(v2 + 16) = *(v4 + 4);
  *v2 = v6;
  *(v2 + 24) = v1;
  v7 = v2 + *(v3 + 24);
  sub_236A2EDA4();
  *(v2 + *(v3 + 28)) = v5;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_2369FF050;
  v9 = *(v0 + 56);

  return sub_236A05054(v9);
}

uint64_t sub_2369FF050()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[7];
  if (v0)
  {
    sub_2369FF3A4(v5);

    return MEMORY[0x2822009F8](sub_2369FF1CC, 0, 0);
  }

  else
  {
    v6 = v2[5];
    v7 = v2[7];
    sub_2369FF3A4(v5);

    v8 = *(v4 + 8);

    return v8();
  }
}

uint64_t sub_2369FF1CC()
{
  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  v5 = sub_236A1566C();
  (*(v3 + 16))(v2, v5, v4);
  MEMORY[0x2383B5800](v1);
  v6 = sub_236A2EDF4();
  v7 = sub_236A2F024();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    MEMORY[0x2383B5800](v8);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_2369F3000, v6, v7, "Encountered error while reporting billing event: %@", v9, 0xCu);
    sub_2369FB91C(v10);
    MEMORY[0x2383B5900](v10, -1, -1);
    MEMORY[0x2383B5900](v9, -1, -1);
  }

  v12 = v0[10];
  v13 = v0[7];
  v15 = v0[4];
  v14 = v0[5];
  v16 = v0[3];

  (*(v15 + 8))(v14, v16);
  sub_2369FF400();
  swift_allocError();
  sub_236A01948(v12, v17);
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2369FF3A4(uint64_t a1)
{
  v2 = type metadata accessor for DeveloperBillingEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2369FF400()
{
  result = qword_27DE60D68;
  if (!qword_27DE60D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D68);
  }

  return result;
}

unint64_t sub_2369FF458()
{
  result = qword_27DE60D70;
  if (!qword_27DE60D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D70);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2369FF4C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2369FF4E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

AdAttributionKit::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_236A2F104();

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

uint64_t InteractionType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6B63696C63;
  }

  else
  {
    result = 2003134838;
  }

  *v0;
  return result;
}

uint64_t sub_2369FF5DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6B63696C63;
  }

  else
  {
    v4 = 2003134838;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x6B63696C63;
  }

  else
  {
    v6 = 2003134838;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_236A2F334();
  }

  return v9 & 1;
}

unint64_t sub_2369FF67C()
{
  result = qword_27DE60D78;
  if (!qword_27DE60D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60D78);
  }

  return result;
}

uint64_t sub_2369FF6D0()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_2369FF748()
{
  *v0;
  sub_236A2EEC4();
}

uint64_t sub_2369FF7AC()
{
  v1 = *v0;
  sub_236A2F3B4();
  sub_236A2EEC4();

  return sub_236A2F3D4();
}

uint64_t sub_2369FF820@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_236A2F104();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2369FF880(uint64_t *a1@<X8>)
{
  v2 = 2003134838;
  if (*v1)
  {
    v2 = 0x6B63696C63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

ValueMetadata *type metadata accessor for InteractionType()
{
  return &type metadata for InteractionType;
}

{
  return &type metadata for InteractionType;
}

uint64_t sub_2369FF8C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_236A2EFD4();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2369FF994()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_236A2EFD4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t sub_2369FFA18()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = sub_236A2EFD4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_2369FFAF0()
{
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v0);
  return sub_236A2F3D4();
}

uint64_t sub_2369FFB80()
{
  sub_236A2F3B4();
  v1 = *v0;
  sub_2369FF968();
  return sub_236A2F3D4();
}

uint64_t static DeveloperMode.isDeveloperModeEnabled.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2369FFCC0;

  return sub_236A28A48();
}

uint64_t sub_2369FFCC0(char a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;
  *(v5 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2369FFDFC, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1 & 1);
  }
}

uint64_t sub_2369FFDFC()
{
  v1 = *(v0 + 24);
  sub_2369FFEA4();
  swift_allocError();
  sub_236A01A14(v1, v2);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3(0);
}

unint64_t sub_2369FFEA4()
{
  result = qword_27DE60E00;
  if (!qword_27DE60E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60E00);
  }

  return result;
}

uint64_t static DeveloperMode.setDeveloperModeEnabled(_:)(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2369FFF90;

  return sub_236A28C5C(a1);
}

uint64_t sub_2369FFF90()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236A000C4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_236A000C4()
{
  v1 = *(v0 + 24);
  sub_2369FFEA4();
  swift_allocError();
  sub_236A01A14(v1, v2);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t static DeveloperMode.retrieveDeveloperPostbackURL(forBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_236A0021C;

  return sub_236A2906C(a1, a2, a3);
}

uint64_t sub_236A0021C()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236A0133C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t static DeveloperMode.createDevelopmentPostbacks(with:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(type metadata accessor for DevelopmentPostbackConfiguration() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236A003E0, 0, 0);
}

uint64_t sub_236A003E0()
{
  v1 = *(v0 + 16);
  sub_236A0069C(*(v0 + 24));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_236A00480;
  v3 = *(v0 + 24);

  return sub_236A293FC(v3);
}

uint64_t sub_236A00480()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[5] = v0;

  sub_236A0096C(v3);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236A005E4, 0, 0);
  }

  else
  {
    v5 = v4[3];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_236A005E4()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_2369FFEA4();
  swift_allocError();
  sub_236A01A14(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_236A0069C@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v2 = sub_236A2ED44();
  v51 = *(v2 - 8);
  v52 = v2;
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration();
  v6 = v5;
  v7 = *(v1 + *(v5 + 44));
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v47 = v5;
    v48 = v1;
    v54 = MEMORY[0x277D84F90];
    v49 = v7;
    sub_236A01218(0, v8, 0);
    v10 = v49;
    v11 = 0;
    v9 = v54;
    v12 = *(v54 + 16);
    v13 = 16 * v12;
    do
    {
      v14 = *(v10 + v11 + 32);
      v15 = *(v10 + v11 + 40);
      v16 = *(v10 + v11 + 41);
      v17 = *(v10 + v11 + 42);
      v18 = *(v10 + v11 + 43);
      v54 = v9;
      v19 = *(v9 + 24);
      v20 = v12 + 1;
      if (v12 >= v19 >> 1)
      {
        v22 = v13;
        sub_236A01218((v19 > 1), v12 + 1, 1);
        v13 = v22;
        v10 = v49;
        v9 = v54;
      }

      *(v9 + 16) = v20;
      v21 = v9 + v13 + v11;
      *(v21 + 32) = v14;
      *(v21 + 40) = v15;
      *(v21 + 41) = v16;
      *(v21 + 42) = v17;
      *(v21 + 43) = v18;
      v11 += 16;
      v12 = v20;
      --v8;
    }

    while (v8);
    v6 = v47;
    v1 = v48;
  }

  v23 = v1[1];
  v45 = *v1;
  v25 = v50;
  v24 = v51;
  v26 = v52;
  (*(v51 + 16))(v50, v1 + v6[5], v52);
  v27 = (v1 + v6[6]);
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v1 + v6[7]);
  v48 = v28;
  v49 = v30;
  v31 = (v1 + v6[8]);
  v32 = *v31;
  v33 = v31[1];
  LODWORD(v28) = *(v1 + v6[9]);
  v43 = *(v1 + v6[10]);
  v44 = v28;
  v34 = v1 + v6[12];
  v47 = *v34;
  v46 = v34[8];
  v35 = v53;
  *v53 = v45;
  *(v35 + 1) = v23;
  v36 = type metadata accessor for DevelopmentPostbackConfiguration();
  (*(v24 + 32))(&v35[v36[5]], v25, v26);
  v37 = &v35[v36[6]];
  v38 = v49;
  *v37 = v48;
  *(v37 + 1) = v29;
  *&v35[v36[7]] = v38;
  v39 = &v35[v36[8]];
  *v39 = v32;
  *(v39 + 1) = v33;
  LOBYTE(v38) = v43;
  v35[v36[9]] = v44;
  v35[v36[10]] = v38;
  *&v35[v36[11]] = v9;
  v40 = &v35[v36[12]];
  *v40 = v47;
  v40[8] = v46;
}

uint64_t sub_236A0096C(uint64_t a1)
{
  v2 = type metadata accessor for DevelopmentPostbackConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DeveloperMode.transmitDevelopmentPostbacks()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_236A0021C;

  return sub_236A29514();
}

uint64_t static DeveloperMode.clearDevelopmentPostbacks()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_236A0021C;

  return sub_236A29620();
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.postbackURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration() + 20);
  v4 = sub_236A2ED44();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration()
{
  result = qword_27DE60E10;
  if (!qword_27DE60E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.marketplaceID.getter()
{
  v1 = (v0 + *(type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.countryCode.getter()
{
  v1 = (v0 + *(type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.interactionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration();
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.conversionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration();
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.measurementWindowConfigurations.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration() + 44));
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.conversionTag.getter()
{
  v1 = (v0 + *(type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t DeveloperMode.DevelopmentPostbackConfiguration.init(bundleID:postbackURL:marketplaceID:sourceID:countryCode:interactionType:conversionType:measurementWindowConfigurations:conversionTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, char *a10, char *a11, uint64_t a12, uint64_t a13, char a14)
{
  v19 = *a10;
  v20 = *a11;
  *a9 = a1;
  *(a9 + 1) = a2;
  v21 = type metadata accessor for DeveloperMode.DevelopmentPostbackConfiguration();
  v22 = v21[5];
  v23 = sub_236A2ED44();
  result = (*(*(v23 - 8) + 32))(&a9[v22], a3, v23);
  v25 = &a9[v21[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *&a9[v21[7]] = a6;
  v26 = &a9[v21[8]];
  *v26 = a7;
  *(v26 + 1) = a8;
  a9[v21[9]] = v19;
  a9[v21[10]] = v20;
  *&a9[v21[11]] = a12;
  v27 = &a9[v21[12]];
  *v27 = a13;
  v27[8] = a14 & 1;
  return result;
}

uint64_t DeveloperModeError.hashValue.getter()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

unint64_t sub_236A00F48()
{
  result = qword_27DE60E08;
  if (!qword_27DE60E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60E08);
  }

  return result;
}

void sub_236A00FE4()
{
  sub_236A2ED44();
  if (v0 <= 0x3F)
  {
    sub_236A010FC(319, &qword_27DE60E20, &type metadata for DeveloperMode.MeasurementWindowConfiguration, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_236A010FC(319, &qword_27DE60E28, MEMORY[0x277D84D38], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_236A010FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DeveloperMode.MeasurementWindowConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DeveloperMode.MeasurementWindowConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

char *sub_236A01218(char *a1, int64_t a2, char a3)
{
  result = sub_236A01238(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_236A01238(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60E30, &unk_236A30AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

unint64_t AdAttributionKitError.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v5 = 0x6E776F6E6B6E55;
    v6 = 0xD00000000000001ALL;
    if (v1 != 2)
    {
      v6 = 0xD000000000000033;
    }

    if (*v0)
    {
      v5 = 0xD000000000000024;
    }

    if (*v0 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000003ALL;
    if (v1 != 7)
    {
      v2 = 0xD000000000000027;
    }

    if (v1 == 6)
    {
      v2 = 0xD000000000000036;
    }

    v3 = 0xD000000000000034;
    if (v1 != 4)
    {
      v3 = 0xD000000000000036;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t AdAttributionKitError.hashValue.getter()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

unint64_t sub_236A014F8()
{
  result = qword_27DE60E38;
  if (!qword_27DE60E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60E38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdAttributionKitError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AdAttributionKitError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t AdAnalyticsError.description.getter()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t AdAnalyticsError.hashValue.getter()
{
  v1 = *v0;
  sub_236A2F3B4();
  MEMORY[0x2383B5470](v1);
  return sub_236A2F3D4();
}

unint64_t sub_236A01784()
{
  result = qword_27DE60E40;
  if (!qword_27DE60E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60E40);
  }

  return result;
}

unint64_t sub_236A017D8()
{
  v1 = 0xD00000000000001ELL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000019;
  }

  *v0;
  return result;
}

uint64_t sub_236A01840@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  MEMORY[0x2383B5800]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60E48, &qword_236A31230);
  result = swift_dynamicCast();
  if (result)
  {
    LOBYTE(v5) = v6;
  }

  else
  {
    MEMORY[0x2383B5800](a1);
    result = swift_dynamicCast();
    if (result)
    {
      LOBYTE(v5) = byte_236A30D62[v6];
    }

    else
    {
      MEMORY[0x2383B5800](a1);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = 0x5040306uLL >> (8 * v6);
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_236A01948@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  MEMORY[0x2383B5800]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60E48, &qword_236A31230);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6;
  }

  else
  {
    MEMORY[0x2383B5800](a1);
    result = swift_dynamicCast();
    if (result)
    {
      if (v6 == 13)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2 * (v6 == 14);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_236A01A14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  MEMORY[0x2383B5800]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60E48, &qword_236A31230);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v6;
  }

  else
  {
    MEMORY[0x2383B5800](a1);
    result = swift_dynamicCast();
    if (result)
    {
      if (v6 == 11)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2 * (v6 == 12);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  *a2 = v5;
  return result;
}

AdAttributionKit::ImpressionIntake::InteractionType_optional __swiftcall ImpressionIntake.InteractionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_236A2F104();

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

uint64_t ImpressionIntake.InteractionType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6B63696C63;
  }

  else
  {
    result = 2003134838;
  }

  *v0;
  return result;
}

unint64_t sub_236A01C2C()
{
  result = qword_27DE60E50;
  if (!qword_27DE60E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60E50);
  }

  return result;
}

uint64_t sub_236A01C80@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_236A2F104();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_236A01DB0()
{
  result = qword_27DE60E58;
  if (!qword_27DE60E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60E58);
  }

  return result;
}

uint64_t sub_236A01E04()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v1 = sub_236A2EE64();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &unk_2849A80F8;
  v5 = [v3 interfaceWithProtocol_];

  [v2 setExportedInterface_];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
  [v2 setExportedObject_];

  v7 = &unk_2849A89B0;
  v8 = [v3 interfaceWithProtocol_];

  [v2 setRemoteObjectInterface_];
  v16 = sub_236A02084;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler_];
  _Block_release(v9);
  v16 = sub_236A020D4;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_236A02090;
  v15 = &block_descriptor_24;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler_];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for DeveloperModeServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_27DE6C200 = result;
  return result;
}

uint64_t sub_236A02090(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_236A020E0(const char *a1)
{
  if (qword_281315F10 != -1)
  {
    swift_once();
  }

  v2 = sub_236A2EE14();
  __swift_project_value_buffer(v2, qword_2813177A0);
  oslog = sub_236A2EDF4();
  v3 = sub_236A2F024();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2369F3000, oslog, v3, a1, v4, 2u);
    MEMORY[0x2383B5900](v4, -1, -1);
  }
}

uint64_t sub_236A021D0()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_236A02290()
{
  result = sub_236A022D4();
  qword_27DE6C208 = result;
  return result;
}

uint64_t sub_236A022D4()
{
  v18 = &type metadata for FeatureFlag;
  v19 = sub_236A02614();
  v0 = sub_236A2EDE4();
  __swift_destroy_boxed_opaque_existential_1(&v15);
  if (v0)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v2 = sub_236A2EE64();
    v3 = [v1 initWithMachServiceName:v2 options:0];

    v4 = objc_opt_self();
    v5 = [v4 interfaceWithProtocol_];
    [v3 setExportedInterface_];

    v6 = [objc_allocWithZone(type metadata accessor for XPCClient()) init];
    [v3 setExportedObject_];

    v7 = [v4 interfaceWithProtocol_];
    [v3 setRemoteObjectInterface_];

    v19 = sub_236A02084;
    v20 = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_236A02090;
    v18 = &block_descriptor_0;
    v8 = _Block_copy(&v15);
    [v3 setInterruptionHandler_];
    _Block_release(v8);
    v19 = sub_236A020D4;
    v20 = 0;
    v15 = MEMORY[0x277D85DD0];
    v16 = 1107296256;
    v17 = sub_236A02090;
    v18 = &block_descriptor_6;
    v9 = _Block_copy(&v15);
    [v3 setInvalidationHandler_];
    _Block_release(v9);
    [v3 resume];
    type metadata accessor for PostbackUpdateTestingServiceConnection();
    result = swift_allocObject();
    *(result + 16) = v3;
  }

  else
  {
    if (qword_281315F10 != -1)
    {
      swift_once();
    }

    v11 = sub_236A2EE14();
    __swift_project_value_buffer(v11, qword_2813177A0);
    v12 = sub_236A2EDF4();
    v13 = sub_236A2F024();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2369F3000, v12, v13, "Testing feature flag is not enabled", v14, 2u);
      MEMORY[0x2383B5900](v14, -1, -1);
    }

    return 0;
  }

  return result;
}

unint64_t sub_236A02614()
{
  result = qword_2813163D0;
  if (!qword_2813163D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813163D0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A026D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_236A02720, 0, 0);
}

uint64_t sub_236A02720()
{
  v1 = *(v0 + 16);
  v2 = sub_236A2ECF4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  type metadata accessor for DeveloperBillingEvent();
  sub_236A08A58(&qword_27DE60FA0, type metadata accessor for DeveloperBillingEvent);
  v5 = sub_236A2ECD4();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v17 = *(v0 + 24);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v14 = v0;
  v14[1] = sub_236A0292C;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08AA0, v12, v15);
}

uint64_t sub_236A0292C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_236A02AB0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_236A02A48;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A02A48()
{
  sub_236A08300(*(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_236A02AB0()
{
  v1 = v0[9];
  sub_236A08300(v0[7], v0[8]);

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_236A02B20(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_236A02B6C, 0, 0);
}

uint64_t sub_236A02B6C()
{
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A089EC();
  v4 = sub_236A2ECD4();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v13 = v0;
  v13[1] = sub_236A02D38;

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08A40, v11, v14);
}

uint64_t sub_236A02D38()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_236A08C84;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_236A08C90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A02E54(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_236A02EA0, 0, 0);
}

uint64_t sub_236A02EA0()
{
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A08914();
  v4 = sub_236A2ECD4();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_236A03060;
  v14 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08998, v11, v14);
}

uint64_t sub_236A03060()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_236A031E4;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_236A0317C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A0317C()
{
  sub_236A08300(*(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_236A031E4()
{
  v1 = v0[8];
  sub_236A08300(v0[6], v0[7]);

  v2 = v0[10];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_236A03258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_236A032A4, 0, 0);
}

uint64_t sub_236A032A4()
{
  v1 = *(v0 + 16);
  v2 = sub_236A2ECF4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  type metadata accessor for InAppPurchaseDetails();
  sub_236A08A58(&qword_27DE60F90, type metadata accessor for InAppPurchaseDetails);
  v5 = sub_236A2ECD4();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v17 = *(v0 + 24);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v14 = v0;
  v14[1] = sub_236A034B0;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08980, v12, v15);
}

uint64_t sub_236A034B0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_236A08C80;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_236A08CD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A035CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_236A03618, 0, 0);
}

uint64_t sub_236A03618()
{
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A08914();
  v4 = sub_236A2ECD4();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v13 = v0;
  v13[1] = sub_236A02D38;

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08968, v11, v14);
}

uint64_t sub_236A037E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return MEMORY[0x2822009F8](sub_236A03830, 0, 0);
}

uint64_t sub_236A03830()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = sub_236A2ECF4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A088A8();
  v7 = sub_236A2ECD4();
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v19 = *(v0 + 64);

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v16 = v0;
  v16[1] = sub_236A03A14;

  return MEMORY[0x2822008A0](v0 + 136, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A088FC, v14, v17);
}

uint64_t sub_236A03A14()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_236A08C88;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_236A08CDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A03B30(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 90) = a1;
  *(v4 + 40) = *v3;
  return MEMORY[0x2822009F8](sub_236A03B80, 0, 0);
}

uint64_t sub_236A03B80()
{
  *(v0 + 89) = *(v0 + 90);
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A0883C();
  v4 = sub_236A2ECD4();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v8 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v9;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v13 = v0;
  v13[1] = sub_236A02D38;

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08890, v11, v14);
}

uint64_t sub_236A03D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = *v3;
  return MEMORY[0x2822009F8](sub_236A03DB4, 0, 0);
}

uint64_t sub_236A03DB4()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = sub_236A2ECF4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A087D0();
  v7 = sub_236A2ECD4();
  *(v0 + 96) = v7;
  *(v0 + 104) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 80);
  v11 = *(v0 + 88);
  v19 = *(v0 + 64);

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = *(MEMORY[0x277D85A40] + 4);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v16 = v0;
  v16[1] = sub_236A03F98;

  return MEMORY[0x2822008A0](v0 + 136, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08824, v14, v17);
}

uint64_t sub_236A03F98()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_236A0411C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_236A040B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A040B4()
{
  sub_236A08300(*(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_236A0411C()
{
  v1 = v0[14];
  sub_236A08300(v0[12], v0[13]);

  v2 = v0[16];
  v3 = v0[1];

  return v3();
}

uint64_t sub_236A0418C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_236A041D8, 0, 0);
}

uint64_t sub_236A041D8()
{
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A08728();
  v4 = sub_236A2ECD4();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v13 = v0;
  v13[1] = sub_236A043A4;

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A0877C, v11, v14);
}

uint64_t sub_236A043A4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_236A044C0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_236A0317C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A044C0()
{
  v1 = v0[8];
  sub_236A08300(v0[6], v0[7]);

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_236A04530(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_236A0457C, 0, 0);
}

uint64_t sub_236A0457C()
{
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A0841C();
  v4 = sub_236A2ECD4();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_236A0473C;
  v14 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08710, v11, v14);
}

uint64_t sub_236A0473C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_236A08C8C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_236A08C90;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A04858(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x2822009F8](sub_236A048A4, 0, 0);
}

uint64_t sub_236A048A4()
{
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A0841C();
  v4 = sub_236A2ECD4();
  *(v0 + 48) = v4;
  *(v0 + 56) = v5;
  v6 = v4;
  v7 = v5;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  v16 = *(v0 + 16);

  v10 = *(v9 + 16);
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v16;
  *(v11 + 40) = v6;
  *(v11 + 48) = v7;
  *(v11 + 56) = v8;
  v12 = *(MEMORY[0x277D85A40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v13 = v0;
  v13[1] = sub_236A02D38;

  return MEMORY[0x2822008A0](v0 + 88, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A0864C, v11, v14);
}

uint64_t sub_236A04A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_236A04ABC, 0, 0);
}

uint64_t sub_236A04ABC()
{
  v1 = sub_236A2ECF4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  sub_236A0841C();
  v4 = sub_236A2ECD4();
  v6 = v5;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;

  v7 = *(v0 + 48);
  v8 = *(*(v0 + 40) + 16);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  v10 = *(v0 + 24);
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 40) = v4;
  *(v9 + 48) = v6;
  *(v9 + 56) = v7;
  v11 = *(MEMORY[0x277D85A40] + 4);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30);
  *v12 = v0;
  v12[1] = sub_236A04C7C;
  v14 = *(v0 + 16);

  return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A08470, v9, v13);
}

uint64_t sub_236A04C7C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_236A02AB0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_236A04D98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_236A04D98()
{
  sub_236A08300(v0[7], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_236A04DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_236A04E48, 0, 0);
}

uint64_t sub_236A04E48()
{
  v1 = *(v0 + 16);
  v2 = sub_236A2ECF4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  type metadata accessor for DevelopmentPostbackConfiguration();
  sub_236A08A58(&qword_27DE60F10, type metadata accessor for DevelopmentPostbackConfiguration);
  v5 = sub_236A2ECD4();
  *(v0 + 56) = v5;
  *(v0 + 64) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v17 = *(v0 + 24);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x277D85A40] + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F18, &qword_236A31100);
  *v14 = v0;
  v14[1] = sub_236A034B0;

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD000000000000023, 0x8000000236A36DF0, sub_236A082E8, v12, v15);
}

uint64_t sub_236A05074()
{
  if (qword_27DE60ED8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_236A0516C;
  v2 = *(v0 + 16);

  return sub_236A026D4(v2, sub_236A080E8, 0);
}

uint64_t sub_236A0516C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_236A05260(uint64_t a1)
{
  v2 = sub_236A081C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A0529C(uint64_t a1)
{
  v2 = sub_236A081C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A052D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60EF0, qword_236A30FB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A081C4();
  sub_236A2F404();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_236A05414(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v26 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_137;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F60, &qword_236A31170);
  if (swift_dynamicCast() && v33)
  {
    v35 = v33;
    v26(v13, v32, v9);
    v21 = swift_allocObject();
    v18(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(&v35, v22, v29, sub_236A08CD0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v23 = swift_allocError();
    *v24 = 3;
    v34[0] = v23;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A05730(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v26 = v14;
  v14(v13, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v18 = *(v10 + 32);
  v18(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_126;
  v19 = _Block_copy(aBlock);

  v20 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v19);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F60, &qword_236A31170);
  if (swift_dynamicCast() && v33)
  {
    v35 = v33;
    v26(v13, v32, v9);
    v21 = swift_allocObject();
    v18(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(&v35, v22, v29, sub_236A08CD0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v23 = swift_allocError();
    *v24 = 3;
    v34[0] = v23;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A05A4C(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F50, &qword_236A31158);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A089B0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_115;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F70, &qword_236A31190);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A089C4, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A05D60(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_104;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F70, &qword_236A31190);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A06074(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_93;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F70, &qword_236A31190);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A06388(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_82;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F80, &qword_236A311A8);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A0669C(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_71;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F70, &qword_236A31190);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A069B0(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_60;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F60, &qword_236A31170);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A06CC4(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08794;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_49;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F60, &qword_236A31170);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A087A8, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A06FD8(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F50, &qword_236A31158);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CCC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_38;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F28, &unk_236A31118);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD4, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A072EC(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_27;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F28, &unk_236A31118);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A07600(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F40, &qword_236A31138);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A084A0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_16;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F28, &unk_236A31118);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A084B4, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A07914(uint64_t a1, void *a2, void (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v27 = a5;
  v28 = a6;
  v29 = a4;
  v30 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = *(v10 + 16);
  v31 = a1;
  v14(&v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v25 = *(v10 + 32);
  v25(v17 + v15, v13, v9);
  aBlock[4] = sub_236A08CC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_236A10144;
  aBlock[3] = &block_descriptor_1;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_236A2F074();
  swift_unknownObjectRelease();
  sub_236A0836C(aBlock, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F28, &unk_236A31118);
  if (swift_dynamicCast())
  {
    v34 = v32;
    v14(v13, v31, v9);
    v20 = swift_allocObject();
    v25(v20 + v15, v13, v9);
    v21 = v27;
    *(v20 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
    v30(&v34, v21, v28, sub_236A08CD0, v20);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_236A083C8();
    v22 = swift_allocError();
    *v23 = 3;
    v33[0] = v22;
    sub_236A2EF94();
  }

  return __swift_destroy_boxed_opaque_existential_1(aBlock);
}

uint64_t sub_236A07C28(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_281315F10 != -1)
  {
    swift_once();
  }

  v7 = sub_236A2EE14();
  __swift_project_value_buffer(v7, qword_2813177A0);
  MEMORY[0x2383B5800](a1);
  v8 = sub_236A2EDF4();
  v9 = sub_236A2F024();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    MEMORY[0x2383B5800](a1);
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_2369F3000, v8, v9, "Error fetching remote object proxy: %{public}@", v10, 0xCu);
    sub_2369F90E0(v11, &qword_27DE60CE8, &qword_236A2FF10);
    MEMORY[0x2383B5900](v11, -1, -1);
    MEMORY[0x2383B5900](v10, -1, -1);
  }

  sub_236A083C8();
  swift_allocError();
  *v13 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_236A2EF94();
}

uint64_t sub_236A07DD4()
{
  v0 = sub_236A107F4();
  v1 = v0;
  if ((v0 & 0x100) != 0)
  {
    sub_236A083C8();
    swift_allocError();
    *v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F50, &qword_236A31158);
    return sub_236A2EF94();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F50, &qword_236A31158);
    return sub_236A2EFA4();
  }
}

uint64_t sub_236A07E78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v15 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F48, &qword_236A31140);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  sub_236A10424(v15 - v9);
  sub_236A0856C(v10, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v8;
    sub_236A083C8();
    v12 = swift_allocError();
    *v13 = v11;
    v15[1] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F40, &qword_236A31138);
    sub_236A2EF94();
  }

  else
  {
    sub_236A085DC(v8, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F40, &qword_236A31138);
    sub_236A2EFA4();
  }

  return sub_2369F90E0(v10, &qword_27DE60F48, &qword_236A31140);
}

uint64_t sub_236A08044()
{
  v0 = sub_236A101AC();
  v1 = v0;
  if ((v0 & 0x100) != 0)
  {
    sub_236A083C8();
    swift_allocError();
    *v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
    return sub_236A2EF94();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F20, &unk_236A31108);
    return sub_236A2EFA4();
  }
}

void sub_236A080E8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v8 = sub_236A2ED64();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_236A2E344;
  v10[3] = &block_descriptor_143;
  v9 = _Block_copy(v10);

  [v7 reportDeveloperBillingEvent:v8 reply:v9];
  _Block_release(v9);
}

unint64_t sub_236A081C4()
{
  result = qword_27DE60EF8;
  if (!qword_27DE60EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60EF8);
  }

  return result;
}

unint64_t sub_236A0823C()
{
  result = qword_27DE60F00;
  if (!qword_27DE60F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F00);
  }

  return result;
}

unint64_t sub_236A08294()
{
  result = qword_27DE60F08;
  if (!qword_27DE60F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F08);
  }

  return result;
}

uint64_t sub_236A08300(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_236A0836C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_236A083C8()
{
  result = qword_27DE60F30;
  if (!qword_27DE60F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F30);
  }

  return result;
}

unint64_t sub_236A0841C()
{
  result = qword_27DE60F38;
  if (!qword_27DE60F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F38);
  }

  return result;
}

uint64_t sub_236A084B4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F40, &qword_236A31138) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_236A07E78();
}

uint64_t sub_236A0856C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60F48, &qword_236A31140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236A085DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60CF0, &qword_236A2FF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_236A08664(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return a5(a1, a2, v5 + v10, *(v5 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_236A08728()
{
  result = qword_27DE60F58;
  if (!qword_27DE60F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F58);
  }

  return result;
}

unint64_t sub_236A087D0()
{
  result = qword_27DE60F68;
  if (!qword_27DE60F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F68);
  }

  return result;
}

unint64_t sub_236A0883C()
{
  result = qword_2813160B8;
  if (!qword_2813160B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160B8);
  }

  return result;
}

unint64_t sub_236A088A8()
{
  result = qword_27DE60F78;
  if (!qword_27DE60F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F78);
  }

  return result;
}

unint64_t sub_236A08914()
{
  result = qword_27DE60F88;
  if (!qword_27DE60F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F88);
  }

  return result;
}

unint64_t sub_236A089EC()
{
  result = qword_27DE60F98;
  if (!qword_27DE60F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60F98);
  }

  return result;
}

uint64_t sub_236A08A58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_7Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_236A08D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E6967676F6CLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_236A2F334();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_236A08D98(uint64_t a1)
{
  v2 = sub_236A09060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A08DD4(uint64_t a1)
{
  v2 = sub_236A09060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A08E10(uint64_t a1)
{
  v2 = sub_236A090B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A08E4C(uint64_t a1)
{
  v2 = sub_236A090B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A08E88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60FA8, &qword_236A311F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60FB0, &qword_236A311F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A09060();
  sub_236A2F404();
  sub_236A090B4();
  sub_236A2F234();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_236A09060()
{
  result = qword_27DE60FB8;
  if (!qword_27DE60FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60FB8);
  }

  return result;
}

unint64_t sub_236A090B4()
{
  result = qword_27DE60FC0;
  if (!qword_27DE60FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60FC0);
  }

  return result;
}

unint64_t sub_236A09120()
{
  if (*v0)
  {
    result = 6778732;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_236A09158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x8000000236A36E60 == a2 || (sub_236A2F334() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_236A2F334();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_236A09240(uint64_t a1)
{
  v2 = sub_236A0A724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A0927C(uint64_t a1)
{
  v2 = sub_236A0A724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A092B8(uint64_t a1)
{
  v2 = sub_236A0A7CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A092F4(uint64_t a1)
{
  v2 = sub_236A0A7CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A09340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6778732 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_236A2F334();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_236A093C8(uint64_t a1)
{
  v2 = sub_236A0A778();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A09404(uint64_t a1)
{
  v2 = sub_236A0A778();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A09440(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60FC8, &qword_236A31200);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60FD0, &qword_236A31208);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60FD8, &qword_236A31210);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A0A724();
  v18 = v24;
  sub_236A2F404();
  if (v18)
  {
    v26 = 1;
    sub_236A0A778();
    sub_236A2F234();
    sub_236A2F2C4();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    sub_236A0A7CC();
    sub_236A2F234();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_236A0974C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_236A0A820(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_236A097D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_236A2F334();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_236A09860(uint64_t a1)
{
  v2 = sub_236A0AD2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_236A0989C(uint64_t a1)
{
  v2 = sub_236A0AD2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_236A098D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60FE8, &qword_236A31218);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A0AD2C();
  sub_236A2F404();
  v13[0] = a2;
  v13[1] = a3;
  sub_236A0AD80();
  sub_236A2F304();
  return (*(v7 + 8))(v10, v6);
}

void *sub_236A09A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_236A0ADD4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_236A09A8C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE60FF8, &unk_236A31220);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_236A311D0;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  sub_236A09B10(v4);
}

uint64_t sub_236A09B10(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v3 = sub_236A2ECF4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_236A2ECE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61000, &unk_236A35160);
  sub_236A0AF48();
  v6 = sub_236A2ECD4();
  v8 = v7;

  v9 = sub_236A2ED64();
  [v2 handleMessages_];

  return sub_236A08300(v6, v8);
}

uint64_t sub_236A09DD4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_236A09E30(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_236A09E30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236A09EFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_236A0836C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_236A09EFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_236A0A008(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_236A2F0F4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_236A0A008(uint64_t a1, unint64_t a2)
{
  v4 = sub_236A0A054(a1, a2);
  sub_236A0A184(&unk_2849A2D48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_236A0A054(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_236A0A270(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_236A2F0F4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_236A2EF04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236A0A270(v10, 0);
        result = sub_236A2F0C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_236A0A184(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_236A0A2E4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_236A0A270(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61060, &qword_236A31A18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_236A0A2E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61060, &qword_236A31A18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_236A0A3D8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61090, &qword_236A31A48);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61098, &unk_236A31A50);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A09060();
  sub_236A2F3F4();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_236A2F214();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if (sub_236A2A2A4() || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_236A2F0E4();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40) + 48);
    *v19 = &type metadata for MessageRegistration;
    sub_236A2F124();
    sub_236A2F0D4();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_236A090B4();
  sub_236A2F114();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_236A0A724()
{
  result = qword_281316140[0];
  if (!qword_281316140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281316140);
  }

  return result;
}

unint64_t sub_236A0A778()
{
  result = qword_27DE60FE0;
  if (!qword_27DE60FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60FE0);
  }

  return result;
}

unint64_t sub_236A0A7CC()
{
  result = qword_281316118;
  if (!qword_281316118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281316118);
  }

  return result;
}

uint64_t sub_236A0A820(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61070, &qword_236A31A28);
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61078, &qword_236A31A30);
  v33 = *(v6 - 8);
  v7 = *(v33 + 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61080, &qword_236A31A38);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v37 = a1;
  v17 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_236A0A724();
  v18 = v36;
  sub_236A2F3F4();
  if (!v18)
  {
    v32 = v6;
    v19 = v35;
    v36 = v11;
    v20 = sub_236A2F214();
    v21 = (2 * *(v20 + 16)) | 1;
    v38 = v20;
    v39 = v20 + 32;
    v40 = 0;
    v41 = v21;
    v22 = sub_236A2E284();
    v23 = v10;
    v17 = v14;
    if (v22 == 2 || v40 != v41 >> 1)
    {
      v25 = v10;
      v26 = sub_236A2F0E4();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61088, &qword_236A31A40) + 48);
      *v28 = &type metadata for XPCClientMessage.MessageType;
      sub_236A2F124();
      sub_236A2F0D4();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
      swift_willThrow();
      (*(v36 + 8))(v14, v25);
      swift_unknownObjectRelease();
    }

    else if (v22)
    {
      v42 = 1;
      sub_236A0A778();
      sub_236A2F114();
      v24 = v36;
      v33 = v14;
      v17 = sub_236A2F1B4();
      (*(v34 + 8))(v5, v19);
      (*(v24 + 8))(v33, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      sub_236A0A7CC();
      sub_236A2F114();
      v31 = v36;
      (*(v33 + 1))(v9, v32);
      (*(v31 + 8))(v14, v10);
      swift_unknownObjectRelease();
      v17 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return v17;
}

unint64_t sub_236A0AD2C()
{
  result = qword_2813160F8;
  if (!qword_2813160F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813160F8);
  }

  return result;
}

unint64_t sub_236A0AD80()
{
  result = qword_27DE60FF0;
  if (!qword_27DE60FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE60FF0);
  }

  return result;
}

void *sub_236A0ADD4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE61068, &qword_236A31A20);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_236A0AD2C();
  sub_236A2F3F4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_236A0B864();
    sub_236A2F1F4();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}