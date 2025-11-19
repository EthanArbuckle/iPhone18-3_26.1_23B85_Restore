unint64_t sub_23DE33D24()
{
  result = qword_280DAE998;
  if (!qword_280DAE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE998);
  }

  return result;
}

unint64_t sub_23DE33D7C()
{
  result = qword_280DAE980;
  if (!qword_280DAE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE980);
  }

  return result;
}

unint64_t sub_23DE33DDC()
{
  result = qword_280DAE978;
  if (!qword_280DAE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE978);
  }

  return result;
}

unint64_t sub_23DE33E3C()
{
  result = qword_280DAE990;
  if (!qword_280DAE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE990);
  }

  return result;
}

unint64_t sub_23DE33E94()
{
  result = qword_280DAE988;
  if (!qword_280DAE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE988);
  }

  return result;
}

unint64_t sub_23DE33EEC()
{
  result = qword_280DAE970;
  if (!qword_280DAE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE970);
  }

  return result;
}

unint64_t sub_23DE33F40()
{
  result = qword_280DAE968;
  if (!qword_280DAE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE968);
  }

  return result;
}

unint64_t sub_23DE33F98()
{
  result = qword_280DAE960;
  if (!qword_280DAE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE960);
  }

  return result;
}

uint64_t sub_23DE34040@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE38D00();
  *a1 = result;
  return result;
}

uint64_t sub_23DE340BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_23DE38B84() & 1;
}

uint64_t sub_23DE340E4()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_23DE3410C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23DE34110()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE34150()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE34190()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE341F0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE34228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  v7 = OUTLINED_FUNCTION_80(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    OUTLINED_FUNCTION_83(*(a3 + 28));
    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23DE342DC()
{
  OUTLINED_FUNCTION_82();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  result = OUTLINED_FUNCTION_80(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v7, v8, v0, v9);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }

  return result;
}

uint64_t sub_23DE3437C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E1FD46C();
  v7 = OUTLINED_FUNCTION_80(v6);
  if (*(v8 + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    OUTLINED_FUNCTION_83(*(a3 + 20));
    return (v10 + 1);
  }
}

uint64_t sub_23DE34418()
{
  OUTLINED_FUNCTION_82();
  v4 = sub_23E1FD46C();
  result = OUTLINED_FUNCTION_80(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_54();

    return __swift_storeEnumTagSinglePayload(v7, v8, v0, v9);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_23DE344AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DE344EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
  OUTLINED_FUNCTION_12(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23DE34620(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE346B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE347C4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23DE34814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C388, &qword_23E224188);
  OUTLINED_FUNCTION_21(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23DE348B8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE3497C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23DE62924();
  *a2 = result;
  return result;
}

uint64_t sub_23DE34A5C()
{
  v1 = sub_23E1FC08C();
  OUTLINED_FUNCTION_6_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C6A8, &qword_23E224768);
  OUTLINED_FUNCTION_6_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);

  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_23DE34C34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23DE702E8();
  *a2 = result;
  return result;
}

uint64_t sub_23DE34C88()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE34E5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE34EF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE3518C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35274@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23DEA2B68();
  *a2 = result;
  return result;
}

uint64_t sub_23DE352A4()
{
  _Block_release(*(v0 + 24));

  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_23DE352E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_161_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_23DE353C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_23E1FB75C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE35450(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_23E1FB75C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE355B4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23DE702E8();
  *a2 = result;
  return result;
}

void *sub_23DE355E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_23DEBB498();
  *a2 = result;
  return result;
}

uint64_t sub_23DE35610()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35658()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CF98, &qword_23E2272C8);
  OUTLINED_FUNCTION_6_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_23DE35A8C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_23DE35B20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23DE35C2C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35D10()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35DA4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE35DEC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D1D8, &unk_23E228000);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_23DE35E8C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DE35ED4()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED4BD4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23DE35F00()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5134();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23DE35F2C()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED51C0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_23DE35F58()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5110();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35F80()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED519C();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35FA8()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5228();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35FD0()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED524C();
  *v0 = result;
  return result;
}

uint64_t sub_23DE35FF8()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5270();
  *v0 = result;
  return result;
}

uint64_t sub_23DE36020()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED5294();
  *v0 = result;
  return result;
}

uint64_t sub_23DE36048()
{
  OUTLINED_FUNCTION_7_7();
  result = sub_23DED52B8();
  *v0 = result;
  return result;
}

uint64_t sub_23DE361A0()
{
  v1 = sub_23E1FBFBC();
  OUTLINED_FUNCTION_6_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  OUTLINED_FUNCTION_6_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;

  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_23DE362FC()
{
  v1 = sub_23E1FBFBC();
  OUTLINED_FUNCTION_6_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = v5 + *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D590, &qword_23E2294B8);
  OUTLINED_FUNCTION_6_0(v8);
  v10 = v9;
  v12 = v11;
  v13 = *(v10 + 80);
  v14 = (v7 + v13) & ~v13;
  v15 = *(v12 + 64);
  v16 = v4 | v13;
  (*(v3 + 8))(v0 + v5, v1);
  (*(v10 + 8))(v0 + v14, v8);

  return MEMORY[0x2821FE8E8](v0, v14 + v15, v16 | 7);
}

uint64_t sub_23DE36438()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE36480()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D500, &qword_23E229468);
  OUTLINED_FUNCTION_37_2(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23DE36534()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DE3656C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_174_1();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_23DE365A8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE36698()
{
  MEMORY[0x23EF07580](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23DE366D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_23DE36770()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23DE367B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E1FD46C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    v9 = v8 - 1;
    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_23DE36868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23E1FD46C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_23DE36950()
{
  sub_23E1FDCCC();
}

char *sub_23DE36A28(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_25(a3, result);
  }

  return result;
}

uint64_t sub_23DE36A4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23DF2F758();
  *a2 = result;
  return result;
}

uint64_t sub_23DE36A7C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23DE36AC8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23DE36C8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *sub_23DE36CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_23DE36D0C()
{
  v0 = sub_23E1FBFBC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v143 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23E1FC1DC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222330;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x800000023E24DDF0;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = inited;
  v13 = v9;
  v14 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v15 = qword_280DAE278;
  v155 = qword_280DAE278;
  v16 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v17 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v19 = v18;
  v20 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v154 = v20;
  v12[10] = v19;
  v21 = *MEMORY[0x277D7CC18];
  v12[13] = v20;
  v12[14] = v21;
  *&v159 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v22 = swift_initStackObject();
  v152 = xmmword_23E222340;
  *(v22 + 16) = xmmword_23E222340;
  v23 = *MEMORY[0x277D7CC30];
  *(v22 + 32) = *MEMORY[0x277D7CC30];
  v24 = v21;
  v25 = v23;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v26 = [v15 bundleURL];
  v27 = v7;
  v28 = v26;
  sub_23E1FBF9C();

  v29 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  v30 = v3;
  sub_23DE477A0();
  *(v22 + 64) = v154;
  *(v22 + 40) = v31;
  type metadata accessor for DescriptionKey(0);
  sub_23DE38160(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v32 = sub_23E1FDABC();
  v33 = v159;
  v12[15] = sub_23DF3BE54(v32);
  v34 = *MEMORY[0x277D7CB48];
  v12[18] = v33;
  v12[19] = v34;
  v12[20] = 1851881795;
  v12[21] = 0xE400000000000000;
  v35 = *MEMORY[0x277D7CB60];
  v36 = MEMORY[0x277D837D0];
  v12[23] = MEMORY[0x277D837D0];
  v12[24] = v35;
  v12[28] = v36;
  v12[25] = 0xD000000000000010;
  v12[26] = 0x800000023E24DEA0;
  v37 = v34;
  v38 = v35;
  v12[29] = sub_23E1FDBDC();
  v12[30] = 0xD000000000000051;
  v12[31] = 0x800000023E24DEE0;
  v39 = *MEMORY[0x277D7CDD0];
  v12[33] = v36;
  v12[34] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB80, &unk_23E2240E0);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_23E222350;
  *(v40 + 32) = 0x75736F6C63736944;
  *(v40 + 40) = 0xEF6C6576654C6572;
  *(v40 + 48) = 0x63696C627550;
  *(v40 + 56) = 0xE600000000000000;
  *(v40 + 72) = v36;
  *(v40 + 80) = 0x656C7069746C754DLL;
  *(v40 + 88) = 0xE800000000000000;
  v41 = MEMORY[0x277D839B0];
  *(v40 + 96) = 0;
  *(v40 + 120) = v41;
  *(v40 + 128) = 0x614E74757074754FLL;
  *(v40 + 136) = 0xEA0000000000656DLL;
  v42 = v39;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  v150 = v27;
  sub_23E1FC14C();
  v43 = [v155 bundleURL];
  v151 = v30;
  sub_23E1FBF9C();

  v44 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v40 + 144) = v45;
  *(v40 + 168) = v154;
  *(v40 + 176) = 0x7365707954;
  *(v40 + 184) = 0xE500000000000000;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(v40 + 216) = v46;
  v158 = v46;
  *(v40 + 192) = &unk_285023010;
  v47 = MEMORY[0x277D837D0];
  v48 = sub_23E1FDABC();
  v12[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C790, &qword_23E224B60);
  v12[35] = v48;
  v144 = v12;
  v12[39] = sub_23E1FDBDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA70, &qword_23E222780);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_23E222360;
  *(v49 + 32) = 0xD000000000000014;
  *(v49 + 40) = 0x800000023E24DFA0;
  v50 = sub_23DE38DA8(0, &qword_27E32BA78, 0x277D7C6E0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA80, &qword_23E222788);
  v51 = swift_initStackObject();
  v159 = xmmword_23E222370;
  *(v51 + 16) = xmmword_23E222370;
  v52 = *MEMORY[0x277D7CE20];
  v53 = MEMORY[0x277D7CE70];
  *(v51 + 32) = *MEMORY[0x277D7CE20];
  *(v51 + 40) = &unk_285023070;
  v54 = *v53;
  *(v51 + 64) = v46;
  *(v51 + 72) = v54;
  *(v51 + 104) = v47;
  *(v51 + 80) = 0xD00000000000001FLL;
  *(v51 + 88) = 0x800000023E24DFC0;
  _s3__C3KeyVMa_0(0);
  v56 = v55;
  v157 = sub_23DE38160(&qword_280DAE748, _s3__C3KeyVMa_0);
  v57 = v52;
  v58 = v54;
  v59 = v57;
  v60 = v58;
  v61 = v59;
  v62 = v60;
  v63 = sub_23E1FDABC();
  *(v49 + 48) = sub_23DF3BE9C(v63);
  *(v49 + 56) = 0xD000000000000013;
  *(v49 + 64) = 0x800000023E24DFE0;
  v64 = swift_initStackObject();
  *(v64 + 16) = v159;
  *(v64 + 32) = v61;
  *(v64 + 40) = &unk_2850230A0;
  v65 = v158;
  *(v64 + 64) = v158;
  *(v64 + 72) = v62;
  *(v64 + 104) = MEMORY[0x277D837D0];
  *(v64 + 80) = 0xD000000000000015;
  *(v64 + 88) = 0x800000023E24E000;
  v66 = v61;
  v67 = v62;
  v148 = v56;
  v68 = sub_23E1FDABC();
  v156 = v50;
  *(v49 + 72) = sub_23DF3BE9C(v68);
  *(v49 + 80) = 0xD000000000000015;
  *(v49 + 88) = 0x800000023E24E020;
  v69 = swift_allocObject();
  *(v69 + 16) = v159;
  *(v69 + 32) = v66;
  *(v69 + 40) = &unk_2850230D0;
  *(v69 + 64) = v65;
  *(v69 + 72) = v67;
  *(v69 + 104) = MEMORY[0x277D837D0];
  *(v69 + 80) = 0xD000000000000020;
  *(v69 + 88) = 0x800000023E24E040;
  v70 = v66;
  v71 = v67;
  v72 = sub_23E1FDABC();
  v73 = sub_23DF3BE9C(v72);
  v145 = 0xD000000000000011;
  *(v49 + 96) = v73;
  *(v49 + 104) = 0xD000000000000011;
  *(v49 + 112) = 0x800000023E24E070;
  v74 = swift_allocObject();
  *(v74 + 16) = v159;
  *(v74 + 32) = v70;
  *(v74 + 40) = &unk_285023100;
  *(v74 + 64) = v65;
  *(v74 + 72) = v71;
  *(v74 + 104) = MEMORY[0x277D837D0];
  *(v74 + 80) = 0xD000000000000023;
  *(v74 + 88) = 0x800000023E24E090;
  v75 = v70;
  v76 = v71;
  v77 = sub_23E1FDABC();
  *(v49 + 120) = sub_23DF3BE9C(v77);
  *(v49 + 128) = 0x77736E4165746164;
  *(v49 + 136) = 0xEA00000000007265;
  v78 = swift_allocObject();
  *(v78 + 16) = v159;
  *(v78 + 32) = v75;
  *(v78 + 40) = &unk_285023130;
  *(v78 + 64) = v65;
  *(v78 + 72) = v76;
  *(v78 + 104) = MEMORY[0x277D837D0];
  v146 = 0xD00000000000001CLL;
  *(v78 + 80) = 0xD00000000000001CLL;
  *(v78 + 88) = 0x800000023E24E0C0;
  v79 = v75;
  v80 = v76;
  v81 = sub_23E1FDABC();
  *(v49 + 144) = sub_23DF3BE9C(v81);
  *(v49 + 152) = 0xD000000000000010;
  *(v49 + 160) = 0x800000023E24E0E0;
  v82 = swift_allocObject();
  v149 = xmmword_23E222380;
  *(v82 + 16) = xmmword_23E222380;
  *(v82 + 32) = v79;
  *(v82 + 40) = &unk_285023160;
  v83 = v158;
  *(v82 + 64) = v158;
  *(v82 + 72) = v80;
  *(v82 + 80) = 0xD00000000000001BLL;
  *(v82 + 88) = 0x800000023E24E100;
  v84 = *MEMORY[0x277D7CE78];
  v85 = MEMORY[0x277D837D0];
  *(v82 + 104) = MEMORY[0x277D837D0];
  *(v82 + 112) = v84;
  *(v82 + 144) = v85;
  *(v82 + 120) = 5001813;
  *(v82 + 128) = 0xE300000000000000;
  v86 = v79;
  v87 = v80;
  v88 = v84;
  v89 = sub_23E1FDABC();
  *(v49 + 168) = sub_23DF3BE9C(v89);
  strcpy((v49 + 176), "numberAnswer");
  *(v49 + 189) = 0;
  *(v49 + 190) = -5120;
  v90 = swift_allocObject();
  *(v90 + 16) = v159;
  *(v90 + 32) = v86;
  *(v90 + 40) = &unk_285023190;
  *(v90 + 64) = v83;
  *(v90 + 72) = v87;
  v91 = MEMORY[0x277D837D0];
  *(v90 + 104) = MEMORY[0x277D837D0];
  *(v90 + 80) = 0xD00000000000001ELL;
  *(v90 + 88) = 0x800000023E24E120;
  v143 = v86;
  v92 = v87;
  v93 = sub_23E1FDABC();
  *(v49 + 192) = sub_23DF3BE9C(v93);
  *(v49 + 200) = 0x6E6F697473657571;
  *(v49 + 208) = 0xE800000000000000;
  v94 = swift_allocObject();
  *(v94 + 16) = v152;
  *(v94 + 64) = v91;
  v95 = v145;
  *(v94 + 32) = v92;
  *(v94 + 40) = v95;
  *(v94 + 48) = 0x800000023E24E140;
  v96 = v92;
  v97 = sub_23E1FDABC();
  *(v49 + 216) = sub_23DF3BE9C(v97);
  strcpy((v49 + 224), "stringAnswer");
  *(v49 + 237) = 0;
  *(v49 + 238) = -5120;
  v98 = swift_allocObject();
  *(v98 + 16) = v149;
  v99 = v143;
  *(v98 + 32) = v143;
  *(v98 + 40) = &unk_2850231C0;
  *(v98 + 64) = v158;
  *(v98 + 72) = v96;
  *(v98 + 80) = 0xD000000000000018;
  *(v98 + 88) = 0x800000023E24E160;
  v100 = *MEMORY[0x277D7CE80];
  *(v98 + 104) = MEMORY[0x277D837D0];
  *(v98 + 112) = v100;
  v143 = v99;
  v145 = v96;
  v101 = v100;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v102 = [v155 bundleURL];
  sub_23E1FBF9C();

  v103 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v98 + 144) = v154;
  *(v98 + 120) = v104;
  v105 = sub_23E1FDABC();
  *(v49 + 240) = sub_23DF3BE9C(v105);
  *(v49 + 248) = 0x77736E41656D6974;
  *(v49 + 256) = 0xEA00000000007265;
  v106 = swift_allocObject();
  *(v106 + 16) = v159;
  v107 = v143;
  *(v106 + 32) = v143;
  *(v106 + 40) = &unk_2850231F0;
  v108 = v158;
  v110 = v145;
  v109 = v146;
  *(v106 + 64) = v158;
  *(v106 + 72) = v110;
  v111 = MEMORY[0x277D837D0];
  *(v106 + 104) = MEMORY[0x277D837D0];
  *(v106 + 80) = v109;
  *(v106 + 88) = 0x800000023E24E1B0;
  v112 = sub_23E1FDABC();
  *(v49 + 264) = sub_23DF3BE9C(v112);
  *(v49 + 272) = 1701869940;
  *(v49 + 280) = 0xE400000000000000;
  v113 = swift_allocObject();
  *(v113 + 16) = v149;
  *(v113 + 32) = v107;
  *(v113 + 40) = &unk_285023220;
  v114 = *MEMORY[0x277D7CE58];
  *(v113 + 64) = v108;
  *(v113 + 72) = v114;
  v115 = v114;
  v116 = v111;
  v117 = sub_23E1FDABC();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA90, &qword_23E222790);
  *(v113 + 80) = v117;
  *(v113 + 104) = v118;
  *(v113 + 112) = v110;
  *(v113 + 144) = v116;
  *(v113 + 120) = 0x547475706E494657;
  *(v113 + 128) = 0xEB00000000657079;
  v119 = sub_23E1FDABC();
  *(v49 + 288) = sub_23DF3BE9C(v119);
  *(v49 + 296) = 0x6577736E416C7275;
  *(v49 + 304) = 0xE900000000000072;
  v120 = swift_allocObject();
  v121 = MEMORY[0x277D7CE40];
  *(v120 + 16) = v152;
  v122 = *v121;
  *(v120 + 32) = v122;
  *(v120 + 64) = MEMORY[0x277D839B0];
  *(v120 + 40) = 1;
  v123 = v122;
  v124 = sub_23E1FDABC();
  *(v49 + 312) = sub_23DF3BE9C(v124);
  v125 = sub_23E1FDABC();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BA98, &qword_23E222798);
  v127 = v144;
  v144[40] = v125;
  v128 = *MEMORY[0x277D7CB98];
  v127[43] = v126;
  v127[44] = v128;
  v129 = v128;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v130 = [v155 bundleURL];
  sub_23E1FBF9C();

  v131 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v133 = v132;
  v134 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v135 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  v127[45] = v134;
  v136 = *MEMORY[0x277D7CF20];
  v127[48] = v135;
  v127[49] = v136;
  v127[50] = &unk_285023330;
  v137 = *MEMORY[0x277D7D030];
  v138 = v158;
  v127[53] = v158;
  v127[54] = v137;
  v127[58] = v138;
  v127[55] = &unk_285023360;
  type metadata accessor for Key(0);
  sub_23DE38160(&qword_280DAEDE0, type metadata accessor for Key);
  v139 = v136;
  v140 = v137;
  v141 = sub_23E1FDABC();
  return sub_23DF3BF9C(v141);
}

uint64_t sub_23DE38014(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_280DAEDE0, type metadata accessor for Key);
  v3 = sub_23DE38160(&unk_27E32BA20, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38160(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23DE381A8(uint64_t a1)
{
  v2 = sub_23DE38160(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v3 = sub_23DE38160(&qword_27E32BDB8, type metadata accessor for DescriptionKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38264(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_280DAE748, _s3__C3KeyVMa_0);
  v3 = sub_23DE38160(&qword_27E32BDB0, _s3__C3KeyVMa_0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DE3410C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23DE3834C(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD90, type metadata accessor for WFExecutionPlatform);
  v3 = sub_23DE38160(&qword_27E32BD98, type metadata accessor for WFExecutionPlatform);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38408()
{
  v1 = OUTLINED_FUNCTION_0();
  result = sub_23DED39C0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_23DE38430(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD60, type metadata accessor for WFCoercionOptionName);
  v3 = sub_23DE38160(&qword_27E32BD68, type metadata accessor for WFCoercionOptionName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE384EC(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD70, type metadata accessor for IOSurfacePropertyKey);
  v3 = sub_23DE38160(&qword_27E32BD78, type metadata accessor for IOSurfacePropertyKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE385A8(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BD80, type metadata accessor for PDFDocumentWriteOption);
  v3 = sub_23DE38160(&qword_27E32BD88, type metadata accessor for PDFDocumentWriteOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38664(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BDA0, type metadata accessor for FileAttributeKey);
  v3 = sub_23DE38160(&qword_27E32BDA8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38720(uint64_t a1)
{
  v2 = sub_23DE38160(&unk_280DAE2C0, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v3 = sub_23DE38160(&qword_27E32BD58, type metadata accessor for LNSystemEntityProtocolIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE387DC(uint64_t a1)
{
  v2 = sub_23DE38160(qword_280DAE3A0, type metadata accessor for LNPlatformName);
  v3 = sub_23DE38160(&unk_27E32BD48, type metadata accessor for LNPlatformName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38898@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23E1FDBDC();

  *a2 = v5;
  return result;
}

uint64_t sub_23DE388E0(uint64_t a1)
{
  v2 = sub_23DE38160(&qword_27E32BA08, type metadata accessor for BMUseCaseIdentifier);
  v3 = sub_23DE38160(&unk_27E32BA10, type metadata accessor for BMUseCaseIdentifier);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23DE38ABC()
{
  sub_23E1FDC1C();
  sub_23E1FDCCC();
}

uint64_t sub_23DE38B10()
{
  sub_23E1FDC1C();
  sub_23E1FE84C();
  sub_23E1FDCCC();
  v0 = sub_23E1FE87C();

  return v0;
}

uint64_t sub_23DE38B84()
{
  v0 = sub_23E1FDC1C();
  v2 = v1;
  if (v0 == sub_23E1FDC1C() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_23E1FE75C();
  }

  return v5 & 1;
}

uint64_t sub_23DE38C08(uint64_t a1, id *a2)
{
  v3 = sub_23E1FDC0C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23DE38C88(uint64_t a1, id *a2)
{
  result = sub_23E1FDBFC();
  *a2 = 0;
  return result;
}

uint64_t sub_23DE38D00()
{
  sub_23E1FDC1C();
  v0 = sub_23E1FDBDC();

  return v0;
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

uint64_t sub_23DE38DA8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23DE38EA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23DE38EC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_23DE39698()
{
  v0 = sub_23E1FDC1C();
  v1 = MEMORY[0x23EF04540](v0);

  return v1;
}

void sub_23DE396E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_23DE39798()
{
  v65 = sub_23E1FC77C();
  v62 = *(v65 - 8);
  v0 = *(v62 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = (&v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = sub_23E1FBFBC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23E1FC1DC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = sub_23DE38DA8(0, &unk_27E32D190, 0x277D7C0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E2235A0;
  v9 = *MEMORY[0x277D7CB18];
  v10 = MEMORY[0x277D837D0];
  *(inited + 32) = *MEMORY[0x277D7CB18];
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x800000023E24E2A0;
  v11 = *MEMORY[0x277D7CB80];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v11;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v67 = qword_280DAE278;
  v14 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v15 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v17 = v16;
  v18 = sub_23DE38DA8(0, &unk_27E32D160, 0x277CCAEB8);
  v66 = v18;
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D7CC18];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v60 = sub_23DE38DA8(0, &unk_27E32BA40, 0x277D7C0A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D170, &unk_23E222760);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_23E222340;
  v21 = *MEMORY[0x277D7CC30];
  *(v20 + 32) = *MEMORY[0x277D7CC30];
  v22 = v19;
  v23 = v21;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v24 = [v67 bundleURL];
  v61 = v5;
  sub_23E1FBF9C();

  v25 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(v20 + 64) = v66;
  *(v20 + 40) = v26;
  type metadata accessor for DescriptionKey(0);
  sub_23DE39F84(&unk_27E32BA50, type metadata accessor for DescriptionKey);
  v27 = sub_23E1FDABC();
  v28 = v60;
  *(inited + 120) = sub_23DF3BE54(v27);
  v29 = *MEMORY[0x277D7CB28];
  *(inited + 144) = v28;
  *(inited + 152) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA60, &unk_23E222770);
  *(inited + 160) = &unk_2850233B0;
  v31 = *MEMORY[0x277D7CB48];
  *(inited + 184) = v30;
  *(inited + 192) = v31;
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v32 = *MEMORY[0x277D7CB60];
  v33 = MEMORY[0x277D837D0];
  *(inited + 224) = MEMORY[0x277D837D0];
  *(inited + 232) = v32;
  *(inited + 240) = 0x79616C70736964;
  *(inited + 248) = 0xE700000000000000;
  v34 = *MEMORY[0x277D7CB90];
  *(inited + 264) = v33;
  *(inited + 272) = v34;
  v35 = v29;
  v36 = v31;
  v37 = v32;
  v38 = v34;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v39 = v67;
  v40 = [v67 bundleURL];
  sub_23E1FBF9C();

  v41 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  *(inited + 280) = v42;
  v43 = *MEMORY[0x277D7CB98];
  *(inited + 304) = v66;
  *(inited + 312) = v43;
  v44 = v43;
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  v45 = [v39 bundleURL];
  sub_23E1FBF9C();

  v46 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v48 = v47;
  v49 = [objc_allocWithZone(MEMORY[0x277D7C0C0]) initWithString_];

  v50 = sub_23DE38DA8(0, &unk_27E32BAA0, 0x277D7C0C0);
  *(inited + 320) = v49;
  v51 = *MEMORY[0x277D7CF20];
  *(inited + 344) = v50;
  *(inited + 352) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_23E2235B0;
  v54 = v64;
  v53 = v65;
  *v64 = 2;
  (*(v62 + 104))(v54, *MEMORY[0x277D7BEE0], v53);
  v55 = objc_allocWithZone(sub_23E1FC79C());
  v56 = v51;
  *(v52 + 32) = sub_23E1FC78C();
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BF50, &unk_23E2235C0);
  *(inited + 360) = v52;
  type metadata accessor for Key(0);
  sub_23DE39F84(&qword_280DAEDE0, type metadata accessor for Key);
  v57 = sub_23E1FDABC();
  return sub_23DF3BF9C(v57);
}

uint64_t sub_23DE39F84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23DE39FCC(char a1)
{
  if (a1)
  {
    v3 = *v1;
    v4 = sub_23E1FDBDC();
    v5 = [v3 BOOLForKey_];

    if ((v5 & 1) == 0)
    {
      v6 = sub_23E1FDBDC();
      [v3 setBool:1 forKey:v6];
    }
  }

  v7 = *v1;
  v8 = sub_23E1FDBDC();
  [v7 setBool:a1 & 1 forKey:v8];
}

uint64_t sub_23DE3A0E8()
{
  v1 = [objc_allocWithZone(type metadata accessor for StageManagerSettingsClient()) init];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23DE3A1C4(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE3A258;

  return sub_23DE3A0D4();
}

uint64_t sub_23DE3A258()
{
  OUTLINED_FUNCTION_4();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *(*v1 + 24);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  v9 = *(v5 + 16);
  if (v2)
  {
    v10 = sub_23E1FBEBC();

    v11 = OUTLINED_FUNCTION_1();
    v12(v11, 0, v10);

    _Block_release(v9);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_1();
    v14(v13, v4, 0);
    _Block_release(v9);
  }

  v15 = *(v7 + 8);

  return v15();
}

id sub_23DE3A3BC()
{
  v1 = OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager;
  v2 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = v0;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_23DE3B02C(0xD000000000000015, 0x800000023E24E530);
  if (result)
  {
    v7 = *(v0 + v1);
    *(v4 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_23DE3A484()
{
  v0 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v1 = sub_23E1FDBDC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_23DE3A544()
{
  v1 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v2 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_6(v2, sel_setBool_forKey_);

  v3 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager) = v1;
}

id sub_23DE3A5F4()
{
  v0 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v1 = sub_23E1FDBDC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_23DE3A6B4()
{
  v1 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v2 = sub_23E1FDBDC();
  OUTLINED_FUNCTION_6(v2, sel_setBool_forKey_);

  v3 = *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  *(v0 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager) = v1;
}

id sub_23DE3A730()
{
  *&v0[OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StageManagerSettingsClient();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DE3A794()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StageManagerSettingsClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23DE3A814()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 16);
  v2 = sub_23DE3A3BC();
  OUTLINED_FUNCTION_5();
  v3 = sub_23E1FDBDC();
  v4 = [v2 BOOLForKey_];

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_23DE3A93C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23DE3A9E4;

  return sub_23DE3A7FC();
}

uint64_t sub_23DE3A9E4(char a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  v8 = v5[4];
  v9 = v5[2];
  v10 = *v2;
  *v7 = *v2;

  v11 = v5[3];
  if (v3)
  {
    v12 = sub_23E1FBEBC();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(v11, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v13 = v10[1];

  return v13();
}

uint64_t sub_23DE3AB6C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return OUTLINED_FUNCTION_0_0(sub_23DE3AB88);
}

uint64_t sub_23DE3AB88()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = sub_23DE3A3BC();
  sub_23DE39FCC(v2);
  v3 = *(v1 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager);
  *(v1 + OBJC_IVAR___WFStageManagerSettingsClient____lazy_storage___manager) = v6;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23DE3ACC0(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_23DE3AD7C;

  return sub_23DE3AB6C(a1);
}

uint64_t sub_23DE3AD7C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[4];
  v7 = v3[2];
  v8 = *v1;
  *v5 = *v1;

  v9 = v3[3];
  if (v2)
  {
    v10 = sub_23E1FBEBC();

    v11 = OUTLINED_FUNCTION_1();
    v12(v11, v10);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_1();
    v14(v13, 0);
  }

  _Block_release(v4[3]);
  v15 = v8[1];

  return v15();
}

uint64_t sub_23DE3AEE8()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23DE3B210;

  return sub_23DE3ACC0(v2, v4, v3);
}

uint64_t sub_23DE3AF98()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_3(v4);

  return v6(v5);
}

id sub_23DE3B02C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_23E1FDBDC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_23DE3B090()
{
  OUTLINED_FUNCTION_4();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_3(v4);

  return v6(v5);
}

uint64_t sub_23DE3B124()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_2();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

id OUTLINED_FUNCTION_6(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

id sub_23DE3B294(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FDBDC();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32CB70, &qword_23E2236E0);
    v8 = sub_23E1FDA9C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for LogOutUserAction();
  v9 = objc_msgSendSuper2(&v11, sel_initWithIdentifier_definition_serializedParameters_, v7, a3, v8);

  if (v9)
  {
  }

  return v9;
}

id sub_23DE3B40C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogOutUserAction();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_23DE3B468()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LogOutUserAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

int *ParameterStateToTypedValueContext.init(typeId:isInt:isEnum:enumTypeDefs:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_23DE4829C(a1, a5, &qword_27E32BFD0, &qword_23E223710);
  result = type metadata accessor for ParameterStateToTypedValueContext(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = a4;
  return result;
}

void ParameterStateToTypedValueContext.init(from:)()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v50 = v2;
  v49 = sub_23E1FD41C();
  v3 = OUTLINED_FUNCTION_6_0(v49);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  v11 = sub_23E1FD46C();
  v12 = OUTLINED_FUNCTION_6_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_59();
  v19 = (v17 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - v21;
  sub_23E1FD3EC();
  v23 = sub_23E1FD43C();
  v24 = swift_allocBox();
  v25 = *MEMORY[0x277D72CA0];
  OUTLINED_FUNCTION_21(v23);
  (*(v26 + 104))();
  *v19 = v24;
  (*(v14 + 104))(v19, *MEMORY[0x277D72D50], v11);
  LOBYTE(v23) = sub_23E1FD45C();
  v27 = *(v14 + 8);
  v27(v19, v11);
  v51 = v11;
  v27(v22, v11);
  v28 = type metadata accessor for ParameterStateToTypedValueContext(0);
  v29 = v49;
  v30 = v50;
  *(v50 + v28[5]) = v23 & 1;
  v31 = *(v5 + 16);
  v52 = v1;
  v48 = v31;
  v31(v10, v1, v29);
  v32 = v29;
  LODWORD(v22) = (*(v5 + 88))(v10, v29);
  LODWORD(v1) = *MEMORY[0x277D72B48];
  v33 = v5;
  v34 = v5;
  v35 = v32;
  v36 = *(v34 + 8);
  v36(v10, v35);
  v37 = v28[6];
  if (v22 == v1)
  {
    v38 = v30;
    *(v30 + v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD8, &qword_23E223718);
    v39 = *(v33 + 72);
    v40 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_23E222340;
    v42 = v52;
    v48(v41 + v40, v52, v35);
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v38 = v30;
    *(v30 + v37) = 0;
    v43 = v52;
  }

  *(v38 + v28[7]) = v41;
  sub_23E1FD3EC();
  v36(v43, v35);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v51);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE3B8D0()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
  {
    goto LABEL_5;
  }

  v1 = [ObjCClassFromMetadata processingValueClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C148, &qword_23E223958);
  v2 = sub_23E1FDDEC();

  if (!*(v2 + 16))
  {

LABEL_5:
    v3 = 0x8000000000000000;
    goto LABEL_6;
  }

  v3 = *(v2 + 32);

LABEL_6:
  sub_23DE47518();
  swift_allocError();
  *v4 = v3;
  return swift_willThrow();
}

uint64_t sub_23DE3B9A4()
{
  OUTLINED_FUNCTION_23();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[2] = v5;
  v1[3] = v6;
  v7 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_42();
  v10 = sub_23E1FE12C();
  v1[9] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_42();
  v14 = sub_23E1FCA0C();
  v1[12] = v14;
  OUTLINED_FUNCTION_8(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_42();
  v18 = sub_23E1FD43C();
  v1[15] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_42();
  v22 = sub_23E1FD42C();
  v1[18] = v22;
  OUTLINED_FUNCTION_8(v22);
  v1[19] = v23;
  v25 = *(v24 + 64);
  v1[20] = OUTLINED_FUNCTION_42();
  v26 = sub_23E1FD9BC();
  v1[21] = v26;
  OUTLINED_FUNCTION_8(v26);
  v1[22] = v27;
  v29 = *(v28 + 64);
  v1[23] = OUTLINED_FUNCTION_91();
  v1[24] = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_23DE3BBAC()
{
  v2 = v0[7];
  sub_23DE38DA8(0, &qword_280DAE6B8, 0x277D7C6A0);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_280DAE670, 0x277D7C6B0), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    v2 = v0[3];
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v3 = swift_dynamicCastObjCClass();
    v0[25] = v3;
    if (v3)
    {
      v4 = v0[4];
      v5 = v0[5];
      v6 = v0[3];
      OUTLINED_FUNCTION_49();
      v0[26] = sub_23E1FDBDC();
      sub_23E1FDECC();
      v0[27] = sub_23E1FDEBC();
      OUTLINED_FUNCTION_37();
      sub_23E1FDE6C();
      OUTLINED_FUNCTION_78();

      return MEMORY[0x2822009F8](sub_23DE3C2A0, v7, v8);
    }

    OUTLINED_FUNCTION_63();
    v10 = MEMORY[0x277D72CD0];
    goto LABEL_11;
  }

  sub_23DE38DA8(0, &unk_280DAE6A8, 0x277D7C920);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &unk_280DAE660, 0x277D7C928), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    OUTLINED_FUNCTION_63();
    v10 = MEMORY[0x277D72CE0];
LABEL_11:
    (*(v9 + 104))(v2, *v10);
    v11 = *MEMORY[0x277D72B88];
    v12 = sub_23E1FD41C();
    OUTLINED_FUNCTION_5_0(v12);
    v14 = *(v13 + 104);
    v15 = OUTLINED_FUNCTION_54();
    v16(v15);
    goto LABEL_12;
  }

  sub_23DE38DA8(0, &qword_280DAE618, 0x277D7C5B0);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_280DAE610, 0x277D7C250), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()) || (sub_23DE38DA8(0, &qword_280DAE648, 0x277D7C510), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()) || (sub_23DE38DA8(0, &qword_280DAE620, 0x277D7C530), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    v18 = v0[6];
    v19 = v0[2];
    sub_23DE3B8D0();
    goto LABEL_12;
  }

  sub_23DE38DA8(0, &qword_280DAE718, off_278C01638);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_60();
    v27 = MEMORY[0x277D72BB8];
LABEL_23:
    v28 = OUTLINED_FUNCTION_69(v27);
    v29(v28);
    sub_23E1FD3FC();
LABEL_35:
    v33 = *(v1 + 8);
    v34 = OUTLINED_FUNCTION_54();
    v35(v34);
    goto LABEL_12;
  }

  sub_23DE38DA8(0, &qword_27E32C110, 0x277D7CA88);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_30();
    v30 = MEMORY[0x277D72CF8];
LABEL_34:
    v31 = OUTLINED_FUNCTION_69(v30);
    v32(v31);
    sub_23E1FD40C();
    goto LABEL_35;
  }

  sub_23DE38DA8(0, &qword_27E32C118, 0x277D7C7A0);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_30();
    v30 = MEMORY[0x277D72C78];
    goto LABEL_34;
  }

  sub_23DE38DA8(0, &qword_27E32C120, 0x277D7C328);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_30();
    v30 = MEMORY[0x277D72C58];
    goto LABEL_34;
  }

  sub_23DE38DA8(0, &qword_27E32C128, 0x277D7C390);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_30();
    v30 = MEMORY[0x277D72CF0];
    goto LABEL_34;
  }

  sub_23DE38DA8(0, &qword_27E32C130, 0x277D7C710);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_30();
    v30 = MEMORY[0x277D72C90];
    goto LABEL_34;
  }

  sub_23DE38DA8(0, &qword_280DAE638, 0x277D7C4B8);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_60();
    v27 = MEMORY[0x277D72C28];
    goto LABEL_23;
  }

  sub_23DE38DA8(0, &qword_280DAE640, off_278C015A0);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_60();
    v27 = MEMORY[0x277D72BD8];
    goto LABEL_23;
  }

  sub_23DE38DA8(0, &unk_280DAE628, 0x277D7C518);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_63();
    v10 = MEMORY[0x277D72C60];
    goto LABEL_11;
  }

  sub_23DE38DA8(0, &unk_280DAE320, 0x277D7C610);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype())
  {
    OUTLINED_FUNCTION_63();
    v10 = MEMORY[0x277D72D00];
    goto LABEL_11;
  }

  sub_23DE38DA8(0, &qword_280DAE318, 0x277D7C310);
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastMetatype() || (sub_23DE38DA8(0, &qword_280DAE330, 0x277D7C338), OUTLINED_FUNCTION_20(), swift_dynamicCastMetatype()))
  {
    OUTLINED_FUNCTION_63();
    v10 = MEMORY[0x277D72CB8];
    goto LABEL_11;
  }

  if (dynamic_cast_existential_1_conditional(v2))
  {
    v37 = v0[13];
    v36 = v0[14];
    v38 = v0[12];
    v39 = v0[2];
    sub_23E1FC9EC();
    sub_23E1FC9DC();
    sub_23E1FC94C();
    v40 = *(v37 + 8);
    v41 = OUTLINED_FUNCTION_45();
    v42(v41);
  }

  else
  {
    v43 = v0[7];
    sub_23DE38DA8(0, &qword_27E32C138, off_278C014B8);
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastMetatype())
    {
      sub_23DE47518();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v53 = v43 | 0x4000000000000000;
      swift_willThrow();
      v21 = v0[23];
      v20 = v0[24];
      v22 = v0[20];
      v23 = v0[17];
      v24 = v0[14];
      v25 = v0[11];
      v26 = v0[8];

      OUTLINED_FUNCTION_19();
      goto LABEL_13;
    }

    v44 = v0[24];
    v46 = v0[10];
    v45 = v0[11];
    v47 = v0[8];
    v48 = v0[9];
    v49 = v0[2];
    sub_23DE38DA8(0, &qword_27E32C140, 0x277CFC3E0);
    sub_23E1FE0EC();
    sub_23E1FD9EC();
    sub_23E1FC9EC();
    sub_23E1FE0DC();
    static WFContentItem.toolkitTypeDefinition(context:)(v45, v49);
    v50 = *(v46 + 8);
    v51 = OUTLINED_FUNCTION_79();
    v52(v51);
  }

LABEL_12:
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_7();
LABEL_13:

  return v17();
}

uint64_t sub_23DE3C2A0()
{
  OUTLINED_FUNCTION_23();
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];

  v0[28] = [v3 parameterMetadataForIdentifier_];

  v4 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE3C324()
{
  v1 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 184);
    v2 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    v6 = *(v0 + 24);
    v7 = [*(v0 + 224) valueType];
    sub_23E1FE05C();

    (*(v5 + 104))(v3, *MEMORY[0x277D733C0], v4);
    OUTLINED_FUNCTION_79();
    LOBYTE(v7) = sub_23E1FD9AC();

    v8 = *(v5 + 8);
    v8(v3, v4);
    v8(v2, v4);
    if (v7)
    {
      v9 = MEMORY[0x277D72CA0];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = MEMORY[0x277D72CD0];
LABEL_6:
  (*(*(v0 + 128) + 104))(*(v0 + 16), *v9, *(v0 + 120));
  v10 = *MEMORY[0x277D72B88];
  v11 = sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0(v11);
  v13 = *(v12 + 104);
  v14 = OUTLINED_FUNCTION_54();
  v15(v14);
  OUTLINED_FUNCTION_62();

  OUTLINED_FUNCTION_7();

  return v16();
}

uint64_t WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)()
{
  OUTLINED_FUNCTION_23();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v8 = type metadata accessor for ParameterToTypedValueContext(0);
  v1[9] = v8;
  OUTLINED_FUNCTION_25(v8);
  v10 = *(v9 + 64);
  v1[10] = OUTLINED_FUNCTION_42();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  OUTLINED_FUNCTION_25(v11);
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_42();
  v14 = sub_23E1FD46C();
  v1[12] = v14;
  OUTLINED_FUNCTION_8(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_42();
  v18 = sub_23E1FE17C();
  v1[15] = v18;
  OUTLINED_FUNCTION_8(v18);
  v1[16] = v19;
  v21 = *(v20 + 64);
  v1[17] = OUTLINED_FUNCTION_42();
  v22 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v22);
  v24 = *(v23 + 64);
  v1[18] = OUTLINED_FUNCTION_42();
  v25 = sub_23E1FD9BC();
  OUTLINED_FUNCTION_25(v25);
  v27 = *(v26 + 64);
  v1[19] = OUTLINED_FUNCTION_42();
  v28 = sub_23E1FE37C();
  v1[20] = v28;
  OUTLINED_FUNCTION_8(v28);
  v1[21] = v29;
  v31 = *(v30 + 64);
  v1[22] = OUTLINED_FUNCTION_42();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000);
  OUTLINED_FUNCTION_25(v32);
  v34 = *(v33 + 64);
  v1[23] = OUTLINED_FUNCTION_42();
  v35 = sub_23E1FD86C();
  v1[24] = v35;
  OUTLINED_FUNCTION_8(v35);
  v1[25] = v36;
  v38 = *(v37 + 64);
  v1[26] = OUTLINED_FUNCTION_42();
  v39 = sub_23E1FC1DC();
  v1[27] = v39;
  OUTLINED_FUNCTION_8(v39);
  v1[28] = v40;
  v42 = *(v41 + 64);
  v1[29] = OUTLINED_FUNCTION_42();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE8, &qword_23E223730);
  v1[30] = v43;
  OUTLINED_FUNCTION_8(v43);
  v1[31] = v44;
  v46 = *(v45 + 64);
  v1[32] = OUTLINED_FUNCTION_42();
  v47 = sub_23E1FD8DC();
  v1[33] = v47;
  OUTLINED_FUNCTION_8(v47);
  v1[34] = v48;
  v50 = *(v49 + 64);
  v1[35] = OUTLINED_FUNCTION_91();
  v1[36] = swift_task_alloc();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFF0, &qword_23E223738);
  OUTLINED_FUNCTION_25(v51);
  v53 = *(v52 + 64);
  v1[37] = OUTLINED_FUNCTION_42();
  v54 = sub_23E1FD72C();
  v1[38] = v54;
  OUTLINED_FUNCTION_8(v54);
  v1[39] = v55;
  v57 = *(v56 + 64);
  v1[40] = OUTLINED_FUNCTION_91();
  v1[41] = swift_task_alloc();
  v58 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v58, v59, v60);
}

uint64_t sub_23DE3C8B0()
{
  v1 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v2 = swift_dynamicCastObjCClass();
  *(v0 + 336) = v2;
  if (v2)
  {
    v3 = [*(v0 + 24) key];
    if (!v3)
    {
      sub_23E1FDC1C();
      sub_23E1FDBDC();
      OUTLINED_FUNCTION_37();
    }

    *(v0 + 344) = v3;
    *(v0 + 352) = sub_23E1FDECC();
    *(v0 + 360) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();
    v6 = sub_23DE3CC74;
    goto LABEL_5;
  }

  v7 = *(v0 + 32);
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v8 = swift_dynamicCastObjCClass();
  *(v0 + 464) = v8;
  if (v8)
  {
    v9 = *(v0 + 64);
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = *(v0 + 64);
      swift_unknownObjectRetain();
      v13 = [v11 value];
      *(v0 + 472) = v13;
      if (v13)
      {
        sub_23E1FDECC();
        *(v0 + 480) = sub_23E1FDEBC();
        OUTLINED_FUNCTION_37();
        sub_23E1FDE6C();
        OUTLINED_FUNCTION_78();
        v6 = sub_23DE3DD60;
LABEL_5:

        return MEMORY[0x2822009F8](v6, v4, v5);
      }

      v28 = *(v0 + 64);
      swift_unknownObjectRelease();
    }

    v29 = *(v0 + 64);
    ObjectType = swift_getObjectType();
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 576) = v31;
    *v31 = v32;
    v20 = OUTLINED_FUNCTION_4_0(v31);
    v27 = ObjectType;
    goto LABEL_19;
  }

  v14 = *(v0 + 24);
  swift_getObjectType();
  if (!dynamic_cast_existential_1_conditional(v14))
  {
LABEL_16:
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 600) = v18;
    *v18 = v19;
    v20 = OUTLINED_FUNCTION_4_0(v18);
    v27 = 0xF000000000000007;
LABEL_19:

    return sub_23DE3FD40(v20, v27, v21, v22, v23, v24, v25, v26);
  }

  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  sub_23DE48254(*(v0 + 40), v16, &qword_27E32BFD0, &qword_23E223710);
  OUTLINED_FUNCTION_93(v16, 1, v15);
  if (v17)
  {
    sub_23DE481FC(*(v0 + 88), &qword_27E32BFD0, &qword_23E223710);
    goto LABEL_16;
  }

  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 96);
  v37 = *(v0 + 72);
  v36 = *(v0 + 80);
  v38 = *(v0 + 64);
  v39 = *(v0 + 24);
  (*(v34 + 32))(v33, *(v0 + 88), v35);
  (*(v34 + 16))(v36, v33, v35);
  *(v36 + *(v37 + 20)) = v38;
  swift_unknownObjectRetain();
  v40 = v39;
  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 584) = v41;
  *v41 = v42;
  v41[1] = sub_23DE3EABC;
  v43 = *(v0 + 80);
  OUTLINED_FUNCTION_35();

  return sub_23DE47120();
}

uint64_t sub_23DE3CC74()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];

  v0[46] = [v2 parameterMetadataForIdentifier_];

  v4 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23DE3CCF8()
{
  OUTLINED_FUNCTION_4();
  v1 = *(v0 + 368);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = [v1 wf_parameterDefinition];
  *(v0 + 376) = v2;
  if (!v2)
  {

LABEL_7:
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 456) = v7;
    *v7 = v8;
    v9 = OUTLINED_FUNCTION_4_0(v7);
    v16 = 0x8000000000000020;
    goto LABEL_8;
  }

  v3 = v2;
  objc_opt_self();
  OUTLINED_FUNCTION_38();
  v4 = swift_dynamicCastObjCClass();
  v5 = *(v0 + 64);
  if (v4 && (objc_opt_self(), OUTLINED_FUNCTION_20(), v6 = swift_dynamicCastObjCClass(), v5 = *(v0 + 64), !v6))
  {
    sub_23DE38DA8(0, &qword_27E32C010, 0x277D7C678);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D180, &qword_23E223780);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23E2235B0;
    *(v18 + 32) = v5;
    swift_unknownObjectRetain();
    v5 = sub_23DE44928();
  }

  else
  {
    swift_unknownObjectRetain();
  }

  *(v0 + 384) = v5;
  v19 = [v3 linkValueFromParameterState:v5 action:*(v0 + 336)];
  *(v0 + 392) = v19;
  if (v19)
  {
    v20 = *(v0 + 352);
    *(v0 + 400) = sub_23E1FDEBC();
    OUTLINED_FUNCTION_37();
    sub_23E1FDE6C();
    OUTLINED_FUNCTION_78();

    return MEMORY[0x2822009F8](sub_23DE3CF48, v21, v22);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_31();
  *(v0 + 440) = v23;
  *v23 = v24;
  v9 = OUTLINED_FUNCTION_4_0(v23);
  v16 = 0x8000000000000028;
LABEL_8:

  return sub_23DE3FD40(v9, v16, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_23DE3CF48()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[50];
  v2 = v0[42];

  v0[51] = [v2 fullyQualifiedLinkActionIdentifier];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE3CFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  v21 = v20[51];
  v22 = [v21 bundleIdentifier];

  v23 = sub_23E1FDC1C();
  v25 = v24;

  sub_23E1FD24C();
  sub_23E1FD22C();
  v20[52] = sub_23E1FD23C();
  v26 = v20[35];
  v95 = v20[36];
  v97 = v20[34];
  v27 = v20[32];
  v101 = v20[33];
  v103 = v20[37];
  v28 = v20[30];
  v29 = v20[31];
  v99 = v20[29];

  sub_23E1FD8CC();
  swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *v27 = v30;
  (*(v29 + 104))(v27, *MEMORY[0x277D721C8], v28);
  sub_23DE478FC(&qword_27E32BFF8, MEMORY[0x277D73330]);
  sub_23DE4816C(&unk_27E32C000, &qword_27E32BFE8, &qword_23E223730);
  sub_23E1FD26C();

  (*(v29 + 8))(v27, v28);
  v31 = *(v97 + 8);
  v31(v26, v101);
  sub_23E1FC14C();
  sub_23E1FD25C();
  v32 = v20[37];
  v33 = v20[38];
  v34 = v20[36];
  v35 = v20[33];
  (*(v20[28] + 8))(v20[29], v20[27]);
  v31(v34, v35);
  OUTLINED_FUNCTION_93(v32, 1, v33);
  if (!v55)
  {
    v53 = v20[5];
    (*(v20[39] + 32))(v20[41], v20[37], v20[38]);
    v54 = type metadata accessor for ParameterStateToTypedValueContext(0);
    v56 = OUTLINED_FUNCTION_61(v54);
    if (!v55)
    {
LABEL_14:
      v75 = v20[46];
      v76 = v20[22];
      v78 = v20[18];
      v77 = v20[19];
      (*(v20[39] + 16))(v20[40], v20[41], v20[38]);
      v79 = [v75 valueType];
      sub_23E1FE05C();

      sub_23E1FD9EC();
      sub_23E1FE36C();
      v80 = *(MEMORY[0x277D7C060] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      v20[53] = v81;
      *v81 = v82;
      v81[1] = sub_23DE3D67C;
      v83 = v20[49];
      v84 = v20[22];
      OUTLINED_FUNCTION_35();
      OUTLINED_FUNCTION_41();

      return MEMORY[0x2821E49D8](v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, v95, v97, v99, v101, v103, a17, a18, a19, a20);
    }

    v57 = v20[5];
    v58 = *(v57 + *(v56 + 28));
    v59 = v20[23];
    if (v58)
    {
      *(swift_task_alloc() + 16) = v57;
      sub_23DE44E18(sub_23DE4756C, v58, v59);

      v60 = sub_23E1FD41C();
      OUTLINED_FUNCTION_93(v59, 1, v60);
      if (!v55)
      {
        v61 = *(v60 - 8);
        if ((*(v61 + 88))(v20[23], v60) == *MEMORY[0x277D72B48])
        {
          v63 = v20[25];
          v62 = v20[26];
          v64 = v20[24];
          (*(v61 + 96))(v20[23], v60);
          v65 = *(v63 + 32);
          v66 = OUTLINED_FUNCTION_50();
          v68 = v67(v66);
          MEMORY[0x23EF04040](v68);
          v69 = *(v63 + 8);
          v70 = OUTLINED_FUNCTION_79();
          v71(v70);
        }

        else
        {
          (*(v61 + 8))(v20[23], v60);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v72 = sub_23E1FD41C();
      OUTLINED_FUNCTION_73(v59, v73, v74, v72);
    }

    sub_23DE481FC(v20[23], &qword_27E32BFE0, &unk_23E22A000);
    goto LABEL_14;
  }

  v37 = v20[48];
  v36 = v20[49];
  v39 = v20[46];
  v38 = v20[47];
  sub_23DE481FC(v20[37], &qword_27E32BFF0, &qword_23E223738);
  sub_23DE47518();
  OUTLINED_FUNCTION_29();
  v40 = swift_allocError();
  *v41 = 0x8000000000000008;
  v104 = v40;
  swift_willThrow();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_1_0();
  v93 = v43;
  v94 = v42;
  v96 = v20[17];
  v98 = v20[14];
  v100 = v20[11];
  v102 = v20[10];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, v93, v94, v96, v98, v100, v102, v104, a17, a18, a19, a20);
}

uint64_t sub_23DE3D67C()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[53];
  v6 = v4[22];
  v7 = v4[21];
  v8 = v4[20];
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v11 + 432) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_50();
  v14(v13);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_23DE3D7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_75();

  swift_unknownObjectRelease();
  v21 = *(v20 + 8);
  v22 = OUTLINED_FUNCTION_45();
  v23(v22);
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3D8D0()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 440);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 448) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE3D9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v20 = v18[47];
  v19 = v18[48];
  v21 = v18[46];
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_57();
  v22 = v20[57];
  v55 = *v21;

  OUTLINED_FUNCTION_24();
  v24 = *(v23 + 328);
  v25 = v20[40];
  v26 = v20[37];
  v27 = v20[36];
  v28 = v20[35];
  v29 = v20[32];
  v30 = v20[29];
  v31 = v20[26];
  v32 = v20[23];
  v49 = v20[22];
  OUTLINED_FUNCTION_24();
  v50 = *(v33 + 152);
  OUTLINED_FUNCTION_24();
  v51 = *(v34 + 144);
  OUTLINED_FUNCTION_24();
  v52 = *(v35 + 136);
  OUTLINED_FUNCTION_24();
  v53 = *(v36 + 112);
  OUTLINED_FUNCTION_24();
  v54 = *(v37 + 88);
  OUTLINED_FUNCTION_24();
  v39 = *(v38 + 80);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, a16, v55, a18, a19, a20);
}

uint64_t sub_23DE3DD60()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[60];
  v2 = v0[58];

  v0[61] = [v2 intentDescription];
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23DE3DDDC()
{
  OUTLINED_FUNCTION_23();
  if (*(v0 + 488))
  {
    v1 = [*(v0 + 24) key];
    if (!v1)
    {
      sub_23E1FDC1C();
      sub_23E1FDBDC();
      OUTLINED_FUNCTION_37();
    }

    v2 = [*(v0 + 488) slotByName_];
    *(v0 + 496) = v2;

    if (v2)
    {
      v3 = [v2 wf:*(v0 + 472) contentItemForValue:?];
      *(v0 + 504) = v3;
      if (v3)
      {
        v4 = *(v0 + 136);
        v5 = *(v0 + 48);
        sub_23E1FE16C();
        v6 = *(MEMORY[0x277D7C038] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        *(v0 + 512) = v7;
        *v7 = v8;
        v7[1] = sub_23DE3E018;
        v9 = *(v0 + 136);
        v10 = OUTLINED_FUNCTION_35();

        return MEMORY[0x2821E48C8](v10);
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v0 + 528) = v23;
      *v23 = v24;
      v13 = OUTLINED_FUNCTION_4_0(v23);
      v20 = 0x8000000000000040;
    }

    else
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      *(v0 + 544) = v21;
      *v21 = v22;
      v13 = OUTLINED_FUNCTION_4_0(v21);
      v20 = 0x8000000000000038;
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_31();
    *(v0 + 560) = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_4_0(v11);
    v20 = 0x8000000000000030;
  }

  return sub_23DE3FD40(v13, v20, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_23DE3E018()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[64];
  v6 = v4[17];
  v7 = v4[16];
  v8 = v4[15];
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v11 + 520) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_50();
  v14(v13);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_23DE3E168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 496);
  v20 = *(v18 + 488);
  OUTLINED_FUNCTION_77(*(v18 + 504));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E260()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 528);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 536) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE3E358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 488);
  OUTLINED_FUNCTION_77(*(v18 + 496));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E448()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 544);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 552) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE3E540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_77(*(v18 + 488));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E62C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 560);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 568) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE3E724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 472);
  v20 = *(v18 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3E80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_57();
  v22 = v20[72];
  v55 = *v21;

  OUTLINED_FUNCTION_24();
  v24 = *(v23 + 328);
  v25 = v20[40];
  v26 = v20[37];
  v27 = v20[36];
  v28 = v20[35];
  v29 = v20[32];
  v30 = v20[29];
  v31 = v20[26];
  v32 = v20[23];
  v49 = v20[22];
  OUTLINED_FUNCTION_24();
  v50 = *(v33 + 152);
  OUTLINED_FUNCTION_24();
  v51 = *(v34 + 144);
  OUTLINED_FUNCTION_24();
  v52 = *(v35 + 136);
  OUTLINED_FUNCTION_24();
  v53 = *(v36 + 112);
  OUTLINED_FUNCTION_24();
  v54 = *(v37 + 88);
  OUTLINED_FUNCTION_24();
  v39 = *(v38 + 80);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, a16, v55, a18, a19, a20);
}

uint64_t sub_23DE3EABC()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 584);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 592) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE3EBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_87();
  sub_23DE47474(v18);
  v20 = *(v19 + 8);
  v21 = OUTLINED_FUNCTION_54();
  v22(v21);
  OUTLINED_FUNCTION_3_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_26();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_23DE3ECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_87();
  sub_23DE47474(v18);
  v21 = *(v20 + 8);
  v22 = OUTLINED_FUNCTION_54();
  v23(v22);
  v33 = *(v19 + 592);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_23DE3EDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_57();
  v22 = v20[75];
  v55 = *v21;

  OUTLINED_FUNCTION_24();
  v24 = *(v23 + 328);
  v25 = v20[40];
  v26 = v20[37];
  v27 = v20[36];
  v28 = v20[35];
  v29 = v20[32];
  v30 = v20[29];
  v31 = v20[26];
  v32 = v20[23];
  v49 = v20[22];
  OUTLINED_FUNCTION_24();
  v50 = *(v33 + 152);
  OUTLINED_FUNCTION_24();
  v51 = *(v34 + 144);
  OUTLINED_FUNCTION_24();
  v52 = *(v35 + 136);
  OUTLINED_FUNCTION_24();
  v53 = *(v36 + 112);
  OUTLINED_FUNCTION_24();
  v54 = *(v37 + 88);
  OUTLINED_FUNCTION_24();
  v39 = *(v38 + 80);

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, v49, v50, v51, v52, v53, v54, a16, v55, a18, a19, a20);
}

uint64_t sub_23DE3F058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v20 = v18[47];
  v19 = v18[48];
  v21 = v18[46];
  swift_unknownObjectRelease();

  v31 = v18[56];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, v31, a16, a17, a18);
}

uint64_t sub_23DE3F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_75();

  swift_unknownObjectRelease();
  v22 = *(v21 + 8);
  v23 = OUTLINED_FUNCTION_45();
  v24(v23);
  v34 = *(v18 + 432);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, v34, a16, a17, a18);
}

uint64_t sub_23DE3F25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = v18[59];
  v20 = v18[8];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v30 = v18[71];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, v30, a16, a17, a18);
}

uint64_t sub_23DE3F350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_77(*(v18 + 488));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28 = *(v18 + 552);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18);
}

uint64_t sub_23DE3F448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v19 = *(v18 + 488);
  OUTLINED_FUNCTION_77(*(v18 + 496));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v29 = *(v18 + 536);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, v29, a16, a17, a18);
}

uint64_t sub_23DE3F544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_32();
  v20 = v18[62];
  v19 = v18[63];
  v21 = v18[61];
  v22 = v18[59];
  v23 = v18[8];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v33 = v18[65];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_26();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, v33, a16, a17, a18);
}

uint64_t sub_23DE3F66C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
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

uint64_t sub_23DE3F6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a2;
  v61 = a1;
  v53 = a4;
  v79 = sub_23E1FD95C();
  v5 = *(v79 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v79);
  v78 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23E1FD86C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E1FD41C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v68 = *(a3 + 16);
  if (v68)
  {
    v67 = 0;
    v22 = *(v14 + 16);
    v21 = v14 + 16;
    v73 = a3 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v74 = v22;
    v23 = 0;
    v72 = (v21 + 72);
    v71 = *MEMORY[0x277D72B48];
    v64 = (v9 + 32);
    v65 = (v21 + 80);
    v77 = v5 + 16;
    v75 = (v21 - 8);
    v76 = (v5 + 8);
    v66 = (v9 + 8);
    v70 = *(v21 + 56);
    v24 = v68;
    v58 = v5;
    v57 = v8;
    v56 = v12;
    v55 = v13;
    v54 = v21;
    v60 = &v52 - v19;
    v59 = v18;
    do
    {
      v25 = v74;
      v74(v20, (v73 + v70 * v23), v13);
      v25(v18, v20, v13);
      v26 = (*v72)(v18, v13);
      if (v26 == v71)
      {
        v69 = v23;
        (*v65)(v18, v13);
        v27 = (*v64)(v12, v18, v8);
        v28 = *(MEMORY[0x23EF04040](v27) + 16);

        if (v28)
        {
          v30 = MEMORY[0x23EF04040](v29);
          v31 = *(v30 + 16);
          if (v31)
          {
            v80[0] = MEMORY[0x277D84F90];
            sub_23DE63E2C();
            v32 = v80[0];
            v33 = *(v5 + 80);
            v63 = v30;
            v34 = v30 + ((v33 + 32) & ~v33);
            v35 = *(v5 + 72);
            v36 = *(v5 + 16);
            do
            {
              v37 = v78;
              v38 = v79;
              v36(v78, v34, v79);
              v39 = sub_23E1FD94C();
              v41 = v40;
              (*v76)(v37, v38);
              v80[0] = v32;
              v42 = *(v32 + 16);
              if (v42 >= *(v32 + 24) >> 1)
              {
                sub_23DE63E2C();
                v32 = v80[0];
              }

              *(v32 + 16) = v42 + 1;
              v43 = v32 + 16 * v42;
              *(v43 + 32) = v39;
              *(v43 + 40) = v41;
              v34 += v35;
              --v31;
            }

            while (v31);

            v5 = v58;
            v8 = v57;
            v12 = v56;
            v13 = v55;
          }

          else
          {

            v32 = MEMORY[0x277D84F90];
          }

          v80[0] = v61;
          v80[1] = v62;
          MEMORY[0x28223BE20](v45);
          *(&v52 - 2) = v80;
          v46 = v67;
          v47 = sub_23DEDEAA0(sub_23DE482E4, (&v52 - 4), v32);

          v18 = v59;
          if (v47)
          {
            v51 = v60;
            sub_23E1FD3EC();
            (*v66)(v12, v8);
            (*v75)(v51, v13);
            v48 = 0;
            goto LABEL_18;
          }

          v67 = v46;
          (*v66)(v12, v8);
          v20 = v60;
          (*v75)(v60, v13);
          v24 = v68;
          v23 = v69;
        }

        else
        {
          (*v66)(v12, v8);
          (*v75)(v20, v13);
          v23 = v69;
        }
      }

      else
      {
        v44 = *v75;
        (*v75)(v20, v13);
        v44(v18, v13);
        v24 = v68;
      }

      ++v23;
    }

    while (v23 != v24);
  }

  v48 = 1;
LABEL_18:
  v49 = sub_23E1FD46C();
  return __swift_storeEnumTagSinglePayload(v53, v48, 1, v49);
}

uint64_t sub_23DE3FD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  v9 = sub_23E1FE17C();
  v8[9] = v9;
  v10 = *(v9 - 8);
  v8[10] = v10;
  v11 = *(v10 + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();
  v12 = sub_23E1FC9BC();
  v8[14] = v12;
  v13 = *(v12 - 8);
  v8[15] = v13;
  v14 = *(v13 + 64) + 15;
  v8[16] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C180, &unk_23E224340) - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v16 = sub_23E1FC6FC();
  v8[18] = v16;
  v17 = *(v16 - 8);
  v8[19] = v17;
  v18 = *(v17 + 64) + 15;
  v8[20] = swift_task_alloc();
  v19 = sub_23E1FC08C();
  v8[21] = v19;
  v20 = *(v19 - 8);
  v8[22] = v20;
  v21 = *(v20 + 64) + 15;
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C188, &unk_23E223990) - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v23 = sub_23E1FD82C();
  v8[26] = v23;
  v24 = *(v23 - 8);
  v8[27] = v24;
  v25 = *(v24 + 64) + 15;
  v8[28] = swift_task_alloc();
  v26 = *(*(sub_23E1FDA1C() - 8) + 64) + 15;
  v8[29] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C038, qword_23E2237B0) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720) - 8) + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v29 = sub_23E1FD03C();
  v8[33] = v29;
  v30 = *(v29 - 8);
  v8[34] = v30;
  v31 = *(v30 + 64) + 15;
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE0, &unk_23E22A000) - 8) + 64) + 15;
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v33 = sub_23E1FD41C();
  v8[42] = v33;
  v34 = *(v33 - 8);
  v8[43] = v34;
  v35 = *(v34 + 64) + 15;
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710) - 8) + 64) + 15;
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v37 = sub_23E1FD46C();
  v8[50] = v37;
  v38 = *(v37 - 8);
  v8[51] = v38;
  v39 = *(v38 + 64) + 15;
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE402CC, 0, 0);
}

uint64_t sub_23DE402CC()
{
  v505 = v0;
  v4 = v0;
  v5 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 value];
    if (v7 && (v5 = v7, v8 = [v7 number], v5, v8))
    {
      v9 = [v8 BOOLValue];
    }

    else
    {
      v9 = 0;
    }

    OUTLINED_FUNCTION_40();
    v10 = sub_23E1FD39C();
    v11 = swift_allocBox();
    *v12 = v9;
    v13 = *MEMORY[0x277D72988];
    OUTLINED_FUNCTION_21(v10);
    v15 = *(v14 + 104);
    goto LABEL_10;
  }

  v16 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = v0[4];
    v20 = *(v19 + *(type metadata accessor for ParameterStateToTypedValueContext(0) + 20));
    v21 = [v18 number];
    v5 = v4[2];
    if (v20 == 1)
    {
LABEL_9:
      v22 = [v21 integerValue];

      v23 = sub_23E1FD39C();
      v11 = swift_allocBox();
      *v24 = v22;
      v25 = *MEMORY[0x277D72978];
      v15 = *(*(v23 - 8) + 104);
LABEL_10:
      v15();
      *v5 = v11;
LABEL_11:
      v26 = MEMORY[0x277D72A58];
LABEL_12:
      v27 = *v26;
      v28 = sub_23E1FD3AC();
      OUTLINED_FUNCTION_5_0(v28);
      (*(v29 + 104))(v5, v27);
      v31 = v4[54];
      v30 = v4[55];
      v33 = v4[52];
      v32 = v4[53];
      v35 = v4[48];
      v34 = v4[49];
      v36 = v4;
      v39 = v4 + 46;
      v38 = v4[46];
      v37 = v39[1];
      v40 = v36[44];
      v41 = v36[45];
      v445 = v36[41];
      v446 = v36[40];
      v447 = v36[39];
      v448 = v36[38];
      v449 = v36[37];
      v450 = v36[36];
      v451 = v36[35];
      v452 = v36[32];
      v453 = v36[31];
      v454 = v36[30];
      v455 = v36[29];
      v457 = v36[28];
      log = v36[25];
      v464 = v36[24];
      v468 = v36[23];
      v472 = v36[20];
      v475 = v36[17];
      v478 = v36[16];
      v484 = v36[13];
      v491 = v36[12];
      v498 = v36[11];

      OUTLINED_FUNCTION_7();
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  v44 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v46 = v45;
    v47 = v0[4];
    v48 = *(v47 + *(type metadata accessor for ParameterStateToTypedValueContext(0) + 20));
    v49 = [v46 number];
    v21 = v49;
    if (v48 == 1)
    {
      if (v49)
      {
        v5 = v4[2];
        goto LABEL_9;
      }
    }

    else if (v49)
    {
      v5 = v4[2];
LABEL_32:
      [v21 doubleValue];
      v95 = v94;

      v96 = sub_23E1FD39C();
      v97 = swift_allocBox();
      *v98 = v95;
      (*(*(v96 - 8) + 104))(v98, *MEMORY[0x277D729A8], v96);
LABEL_33:
      *v5 = v97;
      goto LABEL_11;
    }

    goto LABEL_96;
  }

  v50 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v51 = swift_dynamicCastObjCClass();
  if (v51)
  {
    v52 = v51;
    v5 = v0[4];
    v53 = type metadata accessor for ParameterStateToTypedValueContext(0);
    v54 = OUTLINED_FUNCTION_61(v53);
    if (v55)
    {
      v5 = *(v5 + *(v54 + 28));
      if (v5)
      {
        v56 = v0[49];
        v57 = v0[50];
        v58 = [v52 string];
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_70();

        v59 = OUTLINED_FUNCTION_66();
        sub_23DE3F6E8(v59, v60, v5, v61);

        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_93(v62, v63, v64);
        if (v55)
        {
          v65 = v4[41];
          v66 = v4[42];
          sub_23DE481FC(v4[49], &qword_27E32BFD0, &qword_23E223710);
          sub_23DF194E0(v5, v65);
          OUTLINED_FUNCTION_53();
          OUTLINED_FUNCTION_93(v67, v68, v69);
          if (v55)
          {
            v70 = v4[39];
            v72 = v4[5];
            v71 = v4[6];
            sub_23DE481FC(v4[41], &qword_27E32BFE0, &unk_23E22A000);
            v73 = *MEMORY[0x277D7A4D0];
            sub_23E1FCB9C();
            v74 = v72;
            v75 = v71;
            v76 = sub_23E1FD02C();
            v77 = sub_23E1FE1BC();

            v78 = os_log_type_enabled(v76, v77);
            v80 = v4[33];
            v79 = v4[34];
            if (v78)
            {
              v499 = v4[39];
              v82 = v4[5];
              v81 = v4[6];
              v83 = swift_slowAlloc();
              v504[0] = swift_slowAlloc();
              *v83 = 136315394;
              v84 = [v82 key];
              sub_23E1FDC1C();

              v85 = OUTLINED_FUNCTION_85();
              v88 = sub_23DE56B40(v85, v86, v87);

              *(v83 + 4) = v88;
              *(v83 + 12) = 2080;
              v89 = [v81 identifier];
              v90 = sub_23E1FDC1C();
              v92 = v91;

              v93 = sub_23DE56B40(v90, v92, v504);

              *(v83 + 14) = v93;
              _os_log_impl(&dword_23DE30000, v76, v77, "Unable to find any enumeration type identifier for %s in %s", v83, 0x16u);
              swift_arrayDestroy();
              OUTLINED_FUNCTION_56();
              OUTLINED_FUNCTION_56();

              (*(v79 + 8))(v499, v80);
            }

            else
            {

              v249 = *(v79 + 8);
              v250 = OUTLINED_FUNCTION_86();
              v252(v250, v251);
            }

            sub_23DE47518();
            OUTLINED_FUNCTION_29();
            swift_allocError();
            OUTLINED_FUNCTION_43();
            v256 = v255 - 8;
            goto LABEL_97;
          }

          v215 = v4[46];
          v214 = v4[47];
          v216 = v4[42];
          v217 = v4[43];
          v218 = v4[38];
          v220 = v4[5];
          v219 = v4[6];
          (*(v217 + 32))(v214, v4[41], v216);
          v221 = *MEMORY[0x277D7A4D0];
          sub_23E1FCB9C();
          (*(v217 + 16))(v215, v214, v216);
          v222 = v220;
          v223 = v219;
          v224 = sub_23E1FD02C();
          v225 = sub_23E1FE1BC();

          if (os_log_type_enabled(v224, v225))
          {
            v227 = v4[54];
            v228 = v4[51];
            v465 = v4[46];
            v469 = v4[50];
            v229 = v4[43];
            v473 = v4[42];
            v487 = v4[34];
            v494 = v4[33];
            v501 = v4[38];
            v480 = v225;
            v231 = v4[5];
            v230 = v4[6];
            v232 = swift_slowAlloc();
            v504[0] = swift_slowAlloc();
            *v232 = 136315650;
            v233 = [v231 key];
            v234 = sub_23E1FDC1C();
            loga = v224;
            v235 = v4;
            v237 = v236;

            v238 = sub_23DE56B40(v234, v237, v504);

            *(v232 + 4) = v238;
            *(v232 + 12) = 2080;
            v239 = [v230 identifier];
            v240 = sub_23E1FDC1C();
            v242 = v241;

            v243 = sub_23DE56B40(v240, v242, v504);

            *(v232 + 14) = v243;
            *(v232 + 22) = 2080;
            sub_23E1FD3EC();
            sub_23E1FD44C();
            (*(v228 + 8))(v227, v469);
            v244 = *(v229 + 8);
            v244(v465, v473);
            v245 = OUTLINED_FUNCTION_33();
            v248 = sub_23DE56B40(v245, v246, v247);

            *(v232 + 24) = v248;
            _os_log_impl(&dword_23DE30000, loga, v480, "Unable to match enumeration type identifier for %s in %s, falling back to %s", v232, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();

            (*(v487 + 8))(v501, v494);
          }

          else
          {
            v257 = v4[46];
            v258 = v4[42];
            v259 = v4[43];
            v260 = v4[38];
            v261 = v4[33];
            v262 = v4[34];

            v244 = *(v259 + 8);
            v235 = v4;
            v263 = OUTLINED_FUNCTION_33();
            (v244)(v263);
            (*(v262 + 8))(v260, v261);
          }

          v264 = v235[55];
          v5 = v235[47];
          v265 = v235[42];
          sub_23E1FD3EC();
          v266 = OUTLINED_FUNCTION_33();
          (v244)(v266);
          v4 = v235;
        }

        else
        {
          (*(v4[51] + 32))(v4[55], v4[49], v4[50]);
        }

        v268 = v4[54];
        v267 = v4[55];
        v270 = v4[50];
        v269 = v4[51];
        v481 = v270;
        v271 = v4[32];
        v272 = v4[30];
        v495 = v4[26];
        OUTLINED_FUNCTION_40();
        sub_23E1FD2AC();
        v502 = swift_allocBox();
        (*(v269 + 16))(v268, v267, v270);
        v273 = v4;
        v274 = [v52 string];
        sub_23E1FDC1C();

        v275 = [v52 string];
        sub_23E1FDC1C();

        v276 = sub_23E1FD7BC();
        OUTLINED_FUNCTION_73(v272, v277, v278, v276);
        v4 = v273;
        sub_23E1FD7DC();
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v279, v280, v281, v495);
        sub_23E1FD29C();
        (*(v269 + 8))(v267, v481);
LABEL_71:
        *v5 = v502;
        v26 = MEMORY[0x277D729E8];
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_40();
    v99 = sub_23E1FD39C();
    v11 = swift_allocBox();
    v101 = v100;
    v102 = [v52 string];
    sub_23E1FDC1C();
    OUTLINED_FUNCTION_70();

    *v101 = v2;
    v101[1] = v3;
    v103 = MEMORY[0x277D729B8];
LABEL_35:
    v104 = *v103;
    OUTLINED_FUNCTION_21(v99);
    v15 = *(v105 + 104);
    goto LABEL_10;
  }

  v106 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v107 = swift_dynamicCastObjCClass();
  if (v107)
  {
    v108 = [v107 value];
    if (v108)
    {
      v109 = v108;
      v5 = v0[4];
      v110 = type metadata accessor for ParameterStateToTypedValueContext(0);
      v111 = OUTLINED_FUNCTION_61(v110);
      if (!v55 || (v5 = *(v5 + *(v111 + 28))) == 0)
      {
        OUTLINED_FUNCTION_40();
        v188 = sub_23E1FD39C();
        v97 = swift_allocBox();
        v190 = v189;
        sub_23E1FDC1C();
        OUTLINED_FUNCTION_70();

        *v190 = v2;
        v190[1] = v3;
        v191 = *MEMORY[0x277D729B8];
        OUTLINED_FUNCTION_21(v188);
        (*(v192 + 104))(v190, v193, v188);
        goto LABEL_33;
      }

      v114 = v0[31];
      v115 = v0[26];
      v116 = v0[5];
      OUTLINED_FUNCTION_73(v114, v112, v113, v115);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v117 = v4[3];
        objc_opt_self();
        OUTLINED_FUNCTION_38();
        if (swift_dynamicCastObjCClass())
        {
          v119 = v4[31];
          v118 = v4[32];
          v120 = v4[29];
          v121 = v4[3];
          v122 = v4[5];
          swift_unknownObjectRetain();
          sub_23E1FDA0C();
          sub_23E1FD7AC();
          sub_23DE481FC(v119, &qword_27E32C020, &unk_23E229720);
          sub_23DE4829C(v118, v119, &qword_27E32C020, &unk_23E229720);
        }
      }

      v123 = v4[50];
      v124 = v4[48];
      sub_23E1FDC1C();
      OUTLINED_FUNCTION_70();
      v125 = v109;
      v126 = OUTLINED_FUNCTION_66();
      sub_23DE3F6E8(v126, v127, v5, v128);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_93(v129, v130, v131);
      if (v55)
      {
        v132 = v4[42];
        v133 = v4[40];
        sub_23DE481FC(v4[48], &qword_27E32BFD0, &qword_23E223710);
        sub_23DF194E0(v5, v133);
        OUTLINED_FUNCTION_53();
        OUTLINED_FUNCTION_93(v134, v135, v136);
        if (v55)
        {
          v137 = v4[40];
          v138 = v4[37];
          v140 = v4[5];
          v139 = v4[6];

          sub_23DE481FC(v137, &qword_27E32BFE0, &unk_23E22A000);
          v141 = *MEMORY[0x277D7A4D0];
          sub_23E1FCB9C();
          v142 = v140;
          v143 = v139;
          v144 = sub_23E1FD02C();
          v145 = sub_23E1FE1BC();

          v146 = os_log_type_enabled(v144, v145);
          v147 = v4[37];
          v149 = v4[33];
          v148 = v4[34];
          v150 = v4[31];
          if (v146)
          {
            v485 = v4[31];
            v151 = v4;
            v154 = v4 + 5;
            v153 = v4[5];
            v152 = v154[1];
            v492 = v125;
            v155 = swift_slowAlloc();
            v504[0] = swift_slowAlloc();
            *v155 = 136315394;
            v156 = [v153 key];
            v500 = v149;
            v157 = sub_23E1FDC1C();
            v479 = v147;
            v159 = v158;

            v4 = v151;
            v160 = sub_23DE56B40(v157, v159, v504);

            *(v155 + 4) = v160;
            *(v155 + 12) = 2080;
            v161 = [v152 identifier];
            sub_23E1FDC1C();

            v162 = OUTLINED_FUNCTION_45();
            v165 = sub_23DE56B40(v162, v163, v164);

            *(v155 + 14) = v165;
            _os_log_impl(&dword_23DE30000, v144, v145, "Unable to find any enumeration type identifier for %s in %s", v155, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_56();
            OUTLINED_FUNCTION_56();

            (*(v148 + 8))(v479, v500);
            sub_23DE47518();
            OUTLINED_FUNCTION_29();
            swift_allocError();
            OUTLINED_FUNCTION_43();
            OUTLINED_FUNCTION_55(v167, v168, v166 - 8);

            v169 = v485;
          }

          else
          {

            v352 = *(v148 + 8);
            v353 = OUTLINED_FUNCTION_45();
            v354(v353);
            sub_23DE47518();
            OUTLINED_FUNCTION_29();
            v355 = swift_allocError();
            OUTLINED_FUNCTION_55(v355, v356, 0x8000000000000010);

            v169 = v150;
          }

          sub_23DE481FC(v169, &qword_27E32C020, &unk_23E229720);
          goto LABEL_98;
        }

        v496 = v125;
        v290 = v4[44];
        v289 = v4[45];
        v292 = v4[42];
        v291 = v4[43];
        v293 = v4[36];
        v295 = v4[5];
        v294 = v4[6];
        (*(v291 + 32))(v289, v4[40], v292);
        v296 = *MEMORY[0x277D7A4D0];
        sub_23E1FCB9C();
        (*(v291 + 16))(v290, v289, v292);
        v297 = v295;
        v298 = v294;
        v299 = sub_23E1FD02C();
        v300 = sub_23E1FE1BC();

        if (os_log_type_enabled(v299, v300))
        {
          v302 = v4[54];
          v476 = v299;
          v303 = v4[51];
          v304 = v4[43];
          logb = v4[44];
          v466 = v4[50];
          v470 = v4[42];
          v503 = v4[36];
          v482 = v4[34];
          v488 = v4[33];
          v305 = v4[5];
          v456 = v4[6];
          v306 = swift_slowAlloc();
          v504[0] = swift_slowAlloc();
          *v306 = 136315650;
          v307 = [v305 key];
          v308 = sub_23E1FDC1C();
          v458 = v300;
          v310 = v309;

          v311 = sub_23DE56B40(v308, v310, v504);

          *(v306 + 4) = v311;
          *(v306 + 12) = 2080;
          v312 = [v456 identifier];
          v313 = sub_23E1FDC1C();
          v315 = v314;

          v316 = sub_23DE56B40(v313, v315, v504);

          *(v306 + 14) = v316;
          *(v306 + 22) = 2080;
          sub_23E1FD3EC();
          sub_23E1FD44C();
          (*(v303 + 8))(v302, v466);
          v317 = *(v304 + 8);
          v317(logb, v470);
          v318 = OUTLINED_FUNCTION_33();
          v321 = sub_23DE56B40(v318, v319, v320);

          *(v306 + 24) = v321;
          _os_log_impl(&dword_23DE30000, v476, v458, "Unable to match enumeration type identifier for %s in %s, falling back to %s", v306, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_56();
          OUTLINED_FUNCTION_56();

          (*(v482 + 8))(v503, v488);
        }

        else
        {
          v358 = v4[43];
          v357 = v4[44];
          v359 = v4[42];
          v360 = v4[36];
          v361 = v4[33];
          v362 = v4[34];

          v317 = *(v358 + 8);
          v363 = OUTLINED_FUNCTION_33();
          (v317)(v363);
          v364 = *(v362 + 8);
          v365 = OUTLINED_FUNCTION_66();
          v366(v365);
        }

        v367 = v4[53];
        v5 = v4[45];
        v368 = v4[42];
        sub_23E1FD3EC();
        v369 = OUTLINED_FUNCTION_33();
        (v317)(v369);
      }

      else
      {
        v496 = v125;
        (*(v4[51] + 32))(v4[53], v4[48], v4[50]);
      }

      v370 = v4[53];
      v371 = v4[54];
      v372 = v4[50];
      v373 = v4[51];
      v374 = v4[31];
      v375 = v4[32];
      OUTLINED_FUNCTION_40();
      sub_23E1FD2AC();
      v502 = swift_allocBox();
      (*(v373 + 16))(v371, v370, v372);
      sub_23E1FDC1C();

      sub_23DE48254(v374, v375, &qword_27E32C020, &unk_23E229720);
      sub_23E1FD29C();

      (*(v373 + 8))(v370, v372);
      sub_23DE481FC(v374, &qword_27E32C020, &unk_23E229720);
      goto LABEL_71;
    }

LABEL_96:
    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    goto LABEL_97;
  }

  v170 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v171 = swift_dynamicCastObjCClass();
  if (v171)
  {
    if ([v171 value])
    {
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      v172 = swift_dynamicCastObjCClass();
      if (v172)
      {
        v173 = v172;
        swift_unknownObjectRetain();
        v174 = [v173 identifier];
        if (v174)
        {
          v175 = v174;
          sub_23E1FDC1C();
          OUTLINED_FUNCTION_68();

          v176 = [v173 codableDescription];
          v177 = [v176 mainBundleIdentifier];

          if (v177)
          {
            v178 = swift_allocObject();
            sub_23E1FDC1C();
            OUTLINED_FUNCTION_68();

            v178[2] = v1;
            v178[3] = v2;
            v179 = [v173 codableDescription];
            v180 = [v179 typeName];

            if (v180)
            {
              v182 = v4[51];
              v181 = v4[52];
              v183 = v4[50];
              v184 = sub_23E1FDC1C();
              v186 = v185;

              v178[4] = v184;
              v178[5] = v186;
              *v181 = v178;
              (*(v182 + 104))(v181, *MEMORY[0x277D72D28], v183);
              v5 = [v173 displayString];
              sub_23E1FDC1C();

              v187 = [v173 subtitleString];
              if (v187)
              {
                v5 = v187;
                sub_23E1FDC1C();
              }

              v322 = v4[54];
              v323 = v4[51];
              v459 = v4[50];
              logc = v4[52];
              v324 = v4[30];
              v326 = v4[27];
              v325 = v4[28];
              v327 = v4[25];
              v467 = v4[26];
              v471 = v4[32];
              OUTLINED_FUNCTION_40();
              v328 = sub_23E1FD7CC();
              OUTLINED_FUNCTION_73(v327, v329, v330, v328);
              v331 = sub_23E1FD7BC();
              OUTLINED_FUNCTION_73(v324, v332, v333, v331);
              sub_23E1FD7EC();
              sub_23E1FD31C();
              v489 = swift_allocBox();
              (*(v323 + 16))(v322, logc, v459);
              v334 = *(v326 + 16);
              v335 = OUTLINED_FUNCTION_86();
              v336(v335);
              OUTLINED_FUNCTION_64();
              __swift_storeEnumTagSinglePayload(v337, v338, v339, v467);
              sub_23E1FD2BC();
              swift_unknownObjectRelease();
              (*(v326 + 8))(v325, v467);
              (*(v323 + 8))(logc, v459);
              *v5 = v489;
              v26 = MEMORY[0x277D72A38];
              goto LABEL_12;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return MEMORY[0x2821E4720]();
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    v256 = v288 - 16;
LABEL_97:
    OUTLINED_FUNCTION_55(v253, v254, v256);
LABEL_98:
    v377 = v4[54];
    v376 = v4[55];
    v379 = v4[52];
    v378 = v4[53];
    v381 = v4[48];
    v380 = v4[49];
    v382 = v4;
    v383 = v4[47];
    v384 = v382[45];
    v385 = v382[46];
    v386 = v382[44];
    OUTLINED_FUNCTION_0_1();
    v474 = v382[17];
    v477 = v382[16];
    v483 = v382[13];
    v490 = v382[12];
    v497 = v382[11];

    OUTLINED_FUNCTION_19();
LABEL_13:
    OUTLINED_FUNCTION_74();

    __asm { BRAA            X1, X16 }
  }

  v194 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v195 = swift_dynamicCastObjCClass();
  if (v195)
  {
    v196 = [v195 value];
    if (v196)
    {
      v197 = v196;
      v198 = [v197 bundleIdentifier];
      if (v198)
      {
        v199 = v198;
        sub_23E1FDC1C();

        v200 = [v197 localizedName];
        if (v200)
        {
          v201 = v0[32];
          v202 = v0[30];
          v486 = v0[26];
          v5 = v0[2];
          sub_23E1FDC1C();

          v203 = sub_23E1FD39C();
          v493 = swift_allocBox();
          v205 = v204;
          v206 = sub_23E1FD7BC();
          OUTLINED_FUNCTION_73(v202, v207, v208, v206);
          OUTLINED_FUNCTION_85();
          v4 = v0;
          sub_23E1FD7DC();
          OUTLINED_FUNCTION_64();
          __swift_storeEnumTagSinglePayload(v209, v210, v211, v486);
          sub_23E1FD35C();

          v212 = *MEMORY[0x277D72970];
          OUTLINED_FUNCTION_21(v203);
          (*(v213 + 104))(v205);
          *v5 = v493;
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    goto LABEL_96;
  }

  v282 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  if (swift_dynamicCastObjCClass())
  {
    v283 = v0[5];
    [objc_allocWithZone(MEMORY[0x277D7C2B0]) init];
    v284 = objc_allocWithZone(MEMORY[0x277D7C6F8]);
    v0[56] = OUTLINED_FUNCTION_52(v283);
    v285 = *(MEMORY[0x277D7C040] + 4);
    v286 = swift_task_alloc();
    v4[57] = v286;
    sub_23DE38DA8(0, &qword_27E32C1A8, 0x277D7C2A8);
    *v286 = v4;
    v286[1] = sub_23DE42420;
    goto LABEL_74;
  }

  v340 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v341 = swift_dynamicCastObjCClass();
  if (v341)
  {
    v342 = v341;
    v343 = [v341 magnitudeState];
    if (v343)
    {
      v344 = v343;
      v345 = [v343 decimalNumber];

      if (v345)
      {
        v346 = [v342 unitString];
        if (v346)
        {
          v347 = v346;
          v348 = v4[2];
          sub_23E1FDC1C();

          v349 = sub_23E1FD39C();
          swift_allocBox();
          OUTLINED_FUNCTION_70();
          [v345 doubleValue];
          sub_23DE38DA8(0, &qword_27E32C1A0, 0x277CCAD98);
          OUTLINED_FUNCTION_50();
          sub_23DE4483C();
          v5 = v348;
          sub_23E1FBDBC();

          v350 = *MEMORY[0x277D72940];
          OUTLINED_FUNCTION_21(v349);
          (*(v351 + 104))(v3);
          *v348 = v2;
          goto LABEL_11;
        }
      }
    }

    goto LABEL_96;
  }

  v5 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v387 = swift_dynamicCastObjCClass();
  if (v387)
  {
    v388 = [v387 value];
    if (!v388)
    {
      goto LABEL_96;
    }

    v389 = v388;
    if ([v388 isCurrentLocation])
    {
      OUTLINED_FUNCTION_40();
      v99 = sub_23E1FD39C();
      v11 = swift_allocBox();
      sub_23E1FD37C();

      v103 = MEMORY[0x277D729D0];
      goto LABEL_35;
    }

    if (![v389 placemark])
    {
      sub_23DE47518();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_55(v429, v430, v431);

      goto LABEL_98;
    }

    OUTLINED_FUNCTION_40();
    v402 = sub_23E1FD39C();
    swift_allocBox();
    OUTLINED_FUNCTION_68();
    sub_23E1FD38C();

    v403 = MEMORY[0x277D729D0];
    goto LABEL_118;
  }

  v390 = v0;
  v391 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v392 = swift_dynamicCastObjCClass();
  if (v392)
  {
    v393 = [v392 preprocessedDate];
    if (v393)
    {
      v394 = v393;
      v395 = v4[24];
      v396 = v4[21];
      v397 = v4[22];
      v5 = v4[2];
      sub_23E1FC05C();

      v398 = sub_23E1FD39C();
      swift_allocBox();
      OUTLINED_FUNCTION_68();
      (*(v397 + 32))(v399, v395, v396);
      v400 = *MEMORY[0x277D72990];
      OUTLINED_FUNCTION_21(v398);
      (*(v401 + 104))(v2);
LABEL_119:
      *v5 = v1;
      goto LABEL_11;
    }

    v414 = v0[20];
    v415 = v0[21];
    v1 = v4[18];
    v416 = v4[19];
    v417 = v4[17];
    sub_23E1FE34C();
    sub_23E1FC6EC();
    v2 = v418;
    v419 = *(v416 + 8);
    v420 = OUTLINED_FUNCTION_45();
    v421(v420);
    v422 = objc_opt_self();
    v423 = sub_23E1FDBDC();

    v424 = [v422 datesInString:v423 error:0];

    v425 = sub_23E1FDDEC();
    sub_23DF194F8(v425, v417);

    OUTLINED_FUNCTION_53();
    if (__swift_getEnumTagSinglePayload(v426, v427, v428) == 1)
    {
      sub_23DE481FC(v390[17], &qword_27E32C180, &unk_23E224340);
      goto LABEL_96;
    }

    v438 = v390[23];
    v439 = v390[21];
    v5 = v390[2];
    v440 = *(v390[22] + 32);
    v440(v438, v390[17], v439);
    v402 = sub_23E1FD39C();
    swift_allocBox();
    OUTLINED_FUNCTION_68();
    v440(v441, v438, v439);
    v403 = MEMORY[0x277D72990];
LABEL_118:
    v442 = *v403;
    OUTLINED_FUNCTION_21(v402);
    (*(v443 + 104))(v2);
    goto LABEL_119;
  }

  v404 = v0[3];
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v404))
  {
    v405 = v0[16];
    v406 = v4[6];
    v407 = v4[5];
    v408 = v406;
    sub_23E1FC9AC();
    swift_getObjectType();
    v409 = *(MEMORY[0x277D7BFE0] + 4);
    v410 = swift_task_alloc();
    v4[62] = v410;
    *v410 = v4;
    v410[1] = sub_23DE429E4;
    v411 = v4[16];
    v412 = v4[2];
    OUTLINED_FUNCTION_74();

    return MEMORY[0x2821E4720]();
  }

  v432 = v0[5];
  [objc_allocWithZone(MEMORY[0x277D7C2B0]) init];
  v433 = objc_allocWithZone(MEMORY[0x277D7C6F8]);
  v0[64] = OUTLINED_FUNCTION_52(v432);
  v434 = *(MEMORY[0x277D7C040] + 4);
  v435 = swift_task_alloc();
  v0[65] = v435;
  *v435 = v0;
  v435[1] = sub_23DE42C40;
  v436 = v0[8];
  v437 = v0[3];
LABEL_74:
  OUTLINED_FUNCTION_74();

  return MEMORY[0x2821E48E0]();
}

uint64_t sub_23DE42420()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 456);
  *v3 = *v1;
  *(v2 + 464) = v6;
  *(v2 + 472) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE42520()
{
  if (v0[58])
  {
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    if (swift_dynamicCastObjCClass())
    {
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      v0[60] = v1;
      *v1 = v2;
      v1[1] = sub_23DE4278C;
      v3 = OUTLINED_FUNCTION_35();

      return sub_23DE445B0(v3);
    }

    swift_unknownObjectRelease();
  }

  v5 = v0[56];
  sub_23DE47518();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_92(v6, 0x8000000000000048);

  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];
  v11 = v0[48];
  v12 = v0[49];
  v14 = v0[46];
  v13 = v0[47];
  v16 = v0[44];
  v15 = v0[45];
  OUTLINED_FUNCTION_0_1();
  v18 = v0[17];
  v19 = v0[16];
  v20 = v0[13];
  v21 = v0[12];
  v22 = v0[11];

  OUTLINED_FUNCTION_19();

  return v17();
}

uint64_t sub_23DE4278C()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 480);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 488) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE42884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  v33 = *(v32 + 464);

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE429E4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 496);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v8 + 504) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_23DE42ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  (*(v32[15] + 8))(v32[16], v32[14]);
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE42C40()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = *(v4 + 520);
  *v3 = *v1;
  *(v2 + 528) = v6;
  *(v2 + 536) = v0;

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23DE42D44()
{
  v74 = v0;
  v1 = v0[66];
  if (v1)
  {
    objc_opt_self();
    OUTLINED_FUNCTION_38();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = objc_opt_self();
      swift_unknownObjectRetain_n();
      v5 = [v4 itemWithFile_];
      v0[68] = v5;
      if (v5)
      {
        v6 = v0[13];
        v7 = v0[7];
        sub_23E1FE16C();
        v8 = *(MEMORY[0x277D7C038] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        v0[69] = v9;
        *v9 = v10;
        v9[1] = sub_23DE43304;
        v11 = v0[13];
LABEL_15:
        v33 = OUTLINED_FUNCTION_35();

        return MEMORY[0x2821E48C8](v33);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
    }

    sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
    OUTLINED_FUNCTION_37();
    ObjectType = swift_getObjectType();
    v72[0] = v1;
    swift_unknownObjectRetain();
    v26 = sub_23DE448B0(v72);
    v0[71] = v26;
    if (v26)
    {
      v27 = v0[12];
      v28 = v0[7];
      sub_23E1FE16C();
      v29 = *(MEMORY[0x277D7C038] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_31();
      v0[72] = v30;
      *v30 = v31;
      v30[1] = sub_23DE435AC;
      v32 = v0[12];
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v12 = v0[3];
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v0[3];
    swift_unknownObjectRetain();
    v16 = [v14 value];
    v0[74] = v16;
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      objc_opt_self();
      OUTLINED_FUNCTION_38();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
LABEL_10:
        v0[75] = v18;
        v20 = v0[11];
        v21 = v0[7];
        sub_23E1FE16C();
        v22 = *(MEMORY[0x277D7C038] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_31();
        v0[76] = v23;
        *v23 = v24;
        v23[1] = sub_23DE43850;
        v25 = v0[11];
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      sub_23DE38DA8(0, &unk_280DAE750, 0x277CFC2F8);
      OUTLINED_FUNCTION_37();
      ObjectType = swift_getObjectType();
      v72[0] = v17;
      swift_unknownObjectRetain();
      v19 = sub_23DE448B0(v72);
      if (v19)
      {
        v18 = v19;
        goto LABEL_10;
      }

      v65 = v0[3];
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v0[3];
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  v35 = v0[35];
  v36 = v0[5];
  v37 = v0[6];
  v38 = *MEMORY[0x277D7A4E0];
  sub_23E1FCB9C();
  v39 = v36;
  v40 = v37;
  v41 = sub_23E1FD02C();
  v42 = sub_23E1FE19C();

  if (os_log_type_enabled(v41, v42))
  {
    v44 = v0[5];
    v43 = v0[6];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412546;
    *(v45 + 4) = v44;
    *(v45 + 12) = 2112;
    *(v45 + 14) = v43;
    *v46 = v44;
    v46[1] = v43;
    v47 = v44;
    v48 = v43;
    _os_log_impl(&dword_23DE30000, v41, v42, "Unable to guess typed value from parameter state: %@ in %@", v45, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C190, &qword_23E224B70);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_56();
    OUTLINED_FUNCTION_56();
  }

  v49 = v0[66];
  v50 = v0[64];
  v52 = v0[34];
  v51 = v0[35];
  v53 = v0[33];

  v54 = *(v52 + 8);
  v55 = OUTLINED_FUNCTION_45();
  v56(v55);
  sub_23DE47518();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  OUTLINED_FUNCTION_92(v57, 0x8000000000000008);

  swift_unknownObjectRelease();
  v59 = v0[54];
  v58 = v0[55];
  OUTLINED_FUNCTION_39();
  v61 = v0[46];
  v60 = v0[47];
  v63 = v0[44];
  v62 = v0[45];
  OUTLINED_FUNCTION_0_1();
  v67 = v0[17];
  v68 = v0[16];
  v69 = v0[13];
  v70 = v0[12];
  v71 = v0[11];

  OUTLINED_FUNCTION_19();

  return v64();
}

uint64_t sub_23DE43304()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 552);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[70] = v0;

  if (v0)
  {
    v9 = v3[66];
    v10 = v3[13];
    v13 = v3 + 9;
    v11 = v3[9];
    v12 = v13[1];
    swift_unknownObjectRelease();
    v14 = *(v12 + 8);
    v15 = OUTLINED_FUNCTION_54();
    v16(v15);
  }

  else
  {
    (*(v3[10] + 8))(v3[13], v3[9]);
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_23DE43440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  v33 = *(v32 + 528);
  v34 = *(v32 + 512);

  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE435AC()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 576);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[73] = v0;

  if (v0)
  {
    v9 = v3[66];
    v10 = v3[12];
    v13 = v3 + 9;
    v11 = v3[9];
    v12 = v13[1];
    swift_unknownObjectRelease();
    v14 = *(v12 + 8);
    v15 = OUTLINED_FUNCTION_54();
    v16(v15);
  }

  else
  {
    (*(v3[10] + 8))(v3[12], v3[9]);
  }

  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_23DE436E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  v33 = *(v32 + 568);
  v34 = *(v32 + 528);

  OUTLINED_FUNCTION_81();
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE43850()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v5 = v4[76];
  v6 = v4[11];
  v7 = v4[10];
  v8 = v4[9];
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;
  *(v11 + 616) = v0;

  v12 = *(v7 + 8);
  v13 = OUTLINED_FUNCTION_50();
  v14(v13);
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_23DE439A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_67();
  v33 = *(v32 + 592);
  v34 = *(v32 + 512);
  v35 = *(v32 + 24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_48();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_23DE43B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();

  v50 = *(v34 + 472);
  v36 = *(v34 + 432);
  v35 = *(v34 + 440);
  OUTLINED_FUNCTION_39();
  v38 = *(v34 + 368);
  v37 = *(v34 + 376);
  v40 = *(v34 + 352);
  v39 = *(v34 + 360);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v50, a32, a33, a34);
}

uint64_t sub_23DE43C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  v35 = *(v34 + 464);

  swift_unknownObjectRelease();
  v51 = *(v34 + 488);
  v37 = *(v34 + 432);
  v36 = *(v34 + 440);
  OUTLINED_FUNCTION_39();
  v39 = *(v34 + 368);
  v38 = *(v34 + 376);
  v41 = *(v34 + 352);
  v40 = *(v34 + 360);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v51, a32, a33, a34);
}

uint64_t sub_23DE43E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  (*(v34[15] + 8))(v34[16], v34[14]);
  v50 = v34[63];
  v36 = v34[54];
  v35 = v34[55];
  OUTLINED_FUNCTION_39();
  v38 = v34[46];
  v37 = v34[47];
  v40 = v34[44];
  v39 = v34[45];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v50, a32, a33, a34);
}

uint64_t sub_23DE43F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();

  v50 = *(v34 + 536);
  v36 = *(v34 + 432);
  v35 = *(v34 + 440);
  OUTLINED_FUNCTION_39();
  v38 = *(v34 + 368);
  v37 = *(v34 + 376);
  v40 = *(v34 + 352);
  v39 = *(v34 + 360);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v50, a32, a33, a34);
}

uint64_t sub_23DE440F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  v35 = *(v34 + 528);
  v36 = *(v34 + 512);

  OUTLINED_FUNCTION_81();
  swift_unknownObjectRelease_n();
  v52 = *(v34 + 560);
  v38 = *(v34 + 432);
  v37 = *(v34 + 440);
  OUTLINED_FUNCTION_39();
  v40 = *(v34 + 368);
  v39 = *(v34 + 376);
  v42 = *(v34 + 352);
  v41 = *(v34 + 360);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v52, a32, a33, a34);
}

uint64_t sub_23DE44274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  v35 = *(v34 + 568);
  v36 = *(v34 + 528);

  swift_unknownObjectRelease();
  v52 = *(v34 + 584);
  v38 = *(v34 + 432);
  v37 = *(v34 + 440);
  OUTLINED_FUNCTION_39();
  v40 = *(v34 + 368);
  v39 = *(v34 + 376);
  v42 = *(v34 + 352);
  v41 = *(v34 + 360);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v52, a32, a33, a34);
}

uint64_t sub_23DE443F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_44();
  v35 = *(v34 + 600);
  v36 = *(v34 + 592);
  v37 = *(v34 + 24);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v53 = *(v34 + 616);
  v39 = *(v34 + 432);
  v38 = *(v34 + 440);
  OUTLINED_FUNCTION_39();
  v41 = *(v34 + 368);
  v40 = *(v34 + 376);
  v43 = *(v34 + 352);
  v42 = *(v34 + 360);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_34();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v53, a32, a33, a34);
}

uint64_t sub_23DE445B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23DE445D0, 0, 0);
}

uint64_t sub_23DE445D0()
{
  OUTLINED_FUNCTION_23();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  sub_23E1FD3AC();
  *v4 = v0;
  v4[1] = sub_23DE446C4;
  v5 = v0[2];
  OUTLINED_FUNCTION_22();

  return MEMORY[0x2822008A0](v6, v7, v8, v9, v10, v11, v2, v12);
}

uint64_t sub_23DE446C4()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v3 = v2;
  OUTLINED_FUNCTION_58();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_22();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 32);

    OUTLINED_FUNCTION_19();

    return v13();
  }
}

uint64_t sub_23DE447E0()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_19();
  v3 = *(v0 + 48);

  return v2();
}

id sub_23DE4483C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_23E1FDBDC();

  v2 = [v0 initWithSymbol_];

  return v2;
}

id sub_23DE448B0(uint64_t *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v2 = sub_23E1FE73C();
  v3 = [swift_getObjCClassFromMetadata() itemWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id sub_23DE44928()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C430, &qword_23E223978);
  v1 = sub_23E1FDDCC();

  v2 = [v0 initWithParameterStates_];

  return v2;
}

uint64_t sub_23DE449AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFE8, &qword_23E223730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_23E1FD8BC();
}

uint64_t sub_23DE44A7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E1FD46C();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x28223BE20](v3);
  v24 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C170, &unk_23E223980);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32BFD0, &qword_23E223710);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_23E1FD3EC();
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v3);
  v18 = *(v7 + 56);
  sub_23DE48254(v17, v10, &qword_27E32BFD0, &qword_23E223710);
  sub_23DE48254(a2, &v10[v18], &qword_27E32BFD0, &qword_23E223710);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) != 1)
  {
    sub_23DE48254(v10, v15, &qword_27E32BFD0, &qword_23E223710);
    if (__swift_getEnumTagSinglePayload(&v10[v18], 1, v3) != 1)
    {
      v20 = v24;
      v21 = v25;
      (*(v25 + 32))(v24, &v10[v18], v3);
      sub_23DE478FC(&qword_27E32C178, MEMORY[0x277D72D58]);
      v19 = sub_23E1FDB2C();
      v22 = *(v21 + 8);
      v22(v20, v3);
      sub_23DE481FC(v17, &qword_27E32BFD0, &qword_23E223710);
      v22(v15, v3);
      sub_23DE481FC(v10, &qword_27E32BFD0, &qword_23E223710);
      return v19 & 1;
    }

    sub_23DE481FC(v17, &qword_27E32BFD0, &qword_23E223710);
    (*(v25 + 8))(v15, v3);
    goto LABEL_6;
  }

  sub_23DE481FC(v17, &qword_27E32BFD0, &qword_23E223710);
  if (__swift_getEnumTagSinglePayload(&v10[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_23DE481FC(v10, &qword_27E32C170, &unk_23E223980);
    v19 = 0;
    return v19 & 1;
  }

  sub_23DE481FC(v10, &qword_27E32BFD0, &qword_23E223710);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_23DE44E18@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a3;
  v18 = a1;
  v5 = sub_23E1FD41C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v19 = a2;
  v11 = *(a2 + 16);
  v12 = (v6 + 8);
  while (1)
  {
    if (v11 == v10)
    {
      v14 = 1;
      v15 = v17;
      return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
    }

    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v5);
    v13 = v18(v9);
    if (v3)
    {
      return (*v12)(v9, v5);
    }

    if (v13)
    {
      break;
    }

    (*v12)(v9, v5);
    ++v10;
  }

  v15 = v17;
  (*(v6 + 32))(v17, v9, v5);
  v14 = 0;
  return __swift_storeEnumTagSinglePayload(v15, v14, 1, v5);
}

uint64_t sub_23DE44FD4@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a1;
  v45 = a2;
  v42 = a3;
  v3 = sub_23E1FC30C();
  v4 = OUTLINED_FUNCTION_6_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_59();
  v49 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v43 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C4D0, &unk_23E224680);
  OUTLINED_FUNCTION_6_0(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C0F0, &qword_23E223940) - 8);
  v22 = *(*v21 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  (*(v15 + 16))(v20, v46, v13);
  v26 = v3;
  sub_23DE4816C(&qword_27E32C0F8, &unk_27E32C4D0, &unk_23E224680);
  sub_23E1FDD9C();
  v27 = v21[11];
  sub_23DE4816C(&unk_27E32C100, &unk_27E32C4D0, &unk_23E224680);
  v28 = (v6 + 16);
  v46 = (v6 + 32);
  for (i = (v6 + 8); ; (*i)(v49, v36))
  {
    sub_23E1FDF8C();
    if (*&v25[v27] == v48[0])
    {
      sub_23DE481FC(v25, &qword_27E32C0F0, &qword_23E223940);
      v39 = 1;
      v40 = v42;
      return __swift_storeEnumTagSinglePayload(v40, v39, 1, v26);
    }

    v30 = sub_23E1FDFAC();
    v31 = v43;
    (*v28)(v43);
    v30(v48, 0);
    sub_23E1FDF9C();
    v32 = v26;
    v33 = *v46;
    v34 = v49;
    v35 = v31;
    v36 = v32;
    (*v46)(v49, v35);
    v37 = v47;
    v38 = v44(v34);
    if (v37)
    {
      (*i)(v49, v36);
      return sub_23DE481FC(v25, &qword_27E32C0F0, &qword_23E223940);
    }

    if (v38)
    {
      break;
    }

    v47 = 0;
    v26 = v36;
  }

  sub_23DE481FC(v25, &qword_27E32C0F0, &qword_23E223940);
  v40 = v42;
  (v33)(v42, v49, v36);
  v26 = v36;
  v39 = 0;
  return __swift_storeEnumTagSinglePayload(v40, v39, 1, v26);
}

uint64_t ParameterToTypedValueContext.init(typeIdentifier:parameterState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23E1FD46C();
  OUTLINED_FUNCTION_5_0(v6);
  (*(v7 + 32))(a3, a1);
  result = type metadata accessor for ParameterToTypedValueContext(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

void sub_23DE45424(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_23DE4830C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DE45A40;
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  [a2 getRecipientsWithPermissionRequestor:0 completionHandler:v11];
  _Block_release(v11);
}

void sub_23DE455D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_23E1FD3AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (&v40 - v13);
  v15 = sub_23E1FD46C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v43 = v19;
    v20 = sub_23DE4D8B0(a1);
    v44 = v16;
    v45 = v15;
    if (!v20)
    {
LABEL_12:
      sub_23E1FD28C();
      v31 = swift_allocBox();
      v32 = sub_23E1FD43C();
      v33 = swift_allocBox();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D72CD8], v32);
      v36 = v43;
      v35 = v44;
      *v43 = v33;
      (*(v35 + 104))(v36, *MEMORY[0x277D72D50], v45);
      sub_23E1FD27C();
      *v14 = v31;
      (*(v8 + 104))(v14, *MEMORY[0x277D729E0], v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
      sub_23E1FDE8C();
      return;
    }

    v21 = v20;
    v52 = MEMORY[0x277D84F90];
    sub_23DE63E4C();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v41 = v14;
      v42 = a4;
      v22 = 0;
      v23 = v52;
      v49 = a1 & 0xC000000000000001;
      v48 = *MEMORY[0x277D729B0];
      v47 = *MEMORY[0x277D72A58];
      v46 = v8 + 32;
      v50 = a1;
      v51 = v7;
      v24 = v21;
      do
      {
        if (v49)
        {
          MEMORY[0x23EF04DD0](v22, a1);
        }

        else
        {
          v25 = *(a1 + 8 * v22 + 32);
        }

        v26 = sub_23E1FD39C();
        v27 = swift_allocBox();
        v29 = v28;
        sub_23E1FD36C();
        (*(*(v26 - 8) + 104))(v29, v48, v26);
        *v12 = v27;
        v7 = v51;
        (*(v8 + 104))(v12, v47, v51);
        v52 = v23;
        v30 = *(v23 + 16);
        if (v30 >= *(v23 + 24) >> 1)
        {
          sub_23DE63E4C();
          v23 = v52;
        }

        ++v22;
        *(v23 + 16) = v30 + 1;
        (*(v8 + 32))(v23 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v30, v12, v7);
        a1 = v50;
      }

      while (v24 != v22);
      v14 = v41;
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    if (a3)
    {
      v37 = a3;
    }

    else
    {
      sub_23DE47518();
      v37 = swift_allocError();
      *v38 = 0x8000000000000048;
    }

    v52 = v37;
    v39 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
    sub_23E1FDE7C();
  }
}

uint64_t sub_23DE45A40(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_23DE38DA8(0, &qword_27E32C1B8, 0x277CD3E90);
    v6 = sub_23E1FDDEC();
  }

  sub_23E1FB7CC();
  v9 = a3;
  v10 = a4;
  v8(v6, a3, a4);
}

void static WFVPNParameterState.typeDefinition(context:)()
{
  OUTLINED_FUNCTION_90();
  v35 = sub_23E1FD52C();
  v0 = OUTLINED_FUNCTION_12(v35);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_15();
  v34 = v4 - v3;
  v5 = sub_23E1FBFBC();
  v6 = OUTLINED_FUNCTION_25(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  v9 = sub_23E1FC1DC();
  v10 = OUTLINED_FUNCTION_25(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  v13 = sub_23E1FD98C();
  v14 = OUTLINED_FUNCTION_25(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15();
  v17 = sub_23E1FD46C();
  v18 = OUTLINED_FUNCTION_25(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15();
  sub_23DE38DA8(0, &unk_280DAE6F0, off_278C018E0);
  sub_23DE4758C();
  v21 = sub_23E1FC95C();
  v22 = MEMORY[0x23EF031E0](v21);
  sub_23E1FDCBC();
  sub_23E1FDCBC();
  sub_23E1FC14C();
  if (qword_280DAE1D8 != -1)
  {
    swift_once();
  }

  v23 = [qword_280DAE278 bundleURL];
  sub_23E1FBF9C();

  v24 = objc_allocWithZone(MEMORY[0x277CCAEB8]);
  sub_23DE477A0();
  v26 = v25;
  v27 = [v22 localize_];

  sub_23E1FDC1C();
  OUTLINED_FUNCTION_50();
  sub_23E1FD97C();
  sub_23DE478FC(&qword_280DAE5B0, MEMORY[0x277D72DC8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32D6E0, &qword_23E223788);
  sub_23DE4816C(&qword_280DAE420, &qword_27E32D6E0, &qword_23E223788);
  sub_23E1FE4EC();
  OUTLINED_FUNCTION_66();
  sub_23E1FD50C();
  v28 = *MEMORY[0x277D72B68];
  v29 = sub_23E1FD41C();
  OUTLINED_FUNCTION_5_0(v29);
  v31 = *(v30 + 104);
  v32 = OUTLINED_FUNCTION_54();
  v33(v32);
  OUTLINED_FUNCTION_76();
}

id static WFVPNParameterState.parameterState(from:)()
{
  v0 = sub_23E1FD39C();
  v1 = OUTLINED_FUNCTION_6_0(v0);
  v119 = v2;
  v120 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15();
  v118 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32D730, &unk_23E223790);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v10);
  v122 = (&v112 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v15);
  v124 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C028, &qword_23E2237A0);
  OUTLINED_FUNCTION_25(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v20);
  v22 = &v112 - v21;
  v23 = sub_23E1FC0EC();
  v24 = OUTLINED_FUNCTION_6_0(v23);
  v126 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_59();
  v123 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v125 = &v112 - v31;
  v32 = sub_23E1FD3AC();
  v33 = OUTLINED_FUNCTION_6_0(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_15();
  v40 = (v39 - v38);
  v41 = sub_23E1FD31C();
  v42 = OUTLINED_FUNCTION_6_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15();
  v49 = (v48 - v47);
  v50 = v35[2];
  v51 = OUTLINED_FUNCTION_79();
  v52(v51);
  v121 = v35[11];
  if ((v121)(v40, v32) == *MEMORY[0x277D72A38])
  {
    v114 = v35[12];
    v115 = v35 + 12;
    v114(v40, v32);
    v53 = *v40;
    v54 = swift_projectBox();
    v116 = v44;
    v117 = v41;
    (*(v44 + 16))(v49, v54, v41);

    sub_23E1FD2DC();
    sub_23E1FC09C();

    if (__swift_getEnumTagSinglePayload(v22, 1, v23) == 1)
    {
      sub_23DE481FC(v22, &qword_27E32C028, &qword_23E2237A0);
LABEL_7:
      v55 = sub_23E1FC87C();
      OUTLINED_FUNCTION_14();
      sub_23DE478FC(v69, v70);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      v71 = *MEMORY[0x277D7BF68];
      OUTLINED_FUNCTION_21(v55);
      (*(v72 + 104))();
      swift_willThrow();
      (*(v116 + 8))(v49, v117);
      return v55;
    }

    v60 = v23;
    v61 = v126;
    (*(v126 + 32))(v125, v22, v60);
    v62 = v124;
    v63 = v49;
    sub_23E1FD2FC();
    v64 = v62;
    v65 = sub_23E1FD82C();
    if (__swift_getEnumTagSinglePayload(v64, 1, v65) == 1)
    {
      v66 = *(v61 + 8);
      v67 = OUTLINED_FUNCTION_85();
      v68(v67);
      sub_23DE481FC(v64, &qword_27E32C020, &unk_23E229720);
      v49 = v63;
      goto LABEL_7;
    }

    v74 = sub_23E1FD7FC();
    v112 = v75;
    v113 = v74;
    OUTLINED_FUNCTION_21(v65);
    v77 = *(v76 + 8);
    v78 = OUTLINED_FUNCTION_54();
    v79(v78);
    v124 = v63;
    v80 = sub_23E1FD2EC();
    v81 = v122;
    sub_23DE46724(0xD000000000000013, 0x800000023E24E5A0, v80, v122);

    OUTLINED_FUNCTION_53();
    if (__swift_getEnumTagSinglePayload(v82, v83, v84) == 1)
    {
      sub_23DE481FC(v81, &unk_27E32D730, &unk_23E223790);
    }

    else
    {
      v85 = OUTLINED_FUNCTION_33();
      if (v121(v85) == *MEMORY[0x277D72A58])
      {
        v86 = OUTLINED_FUNCTION_33();
        (v114)(v86);
        v87 = *v81;
        v88 = swift_projectBox();
        v90 = v118;
        v89 = v119;
        v91 = v120;
        (*(v119 + 16))(v118, v88, v120);
        if ((*(v89 + 88))(v90, v91) == *MEMORY[0x277D729B8])
        {
          (*(v89 + 96))(v90, v91);
          v92 = *v90;
          v93 = v90[1];

          v94 = [objc_opt_self() sharedResolver];
          v95 = objc_allocWithZone(MEMORY[0x277CD3A58]);
          v96 = OUTLINED_FUNCTION_33();
          v98 = sub_23DE47674(v96, v97);
          v99 = [v94 resolvedAppMatchingDescriptor_];

LABEL_17:
          v103 = v116;
          v104 = v126;
          v105 = v123;
          (*(v126 + 16))(v123, v125, v60);
          v106 = objc_allocWithZone(WFVPNConfiguration);
          v107 = v99;
          v108 = sub_23DE476D8(v105, v113, v112, v99);
          v55 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];

          v109 = *(v104 + 8);
          v110 = OUTLINED_FUNCTION_85();
          v111(v110);
          (*(v103 + 8))(v124, v117);
          return v55;
        }

        (*(v89 + 8))(v90, v91);
      }

      else
      {
        v100 = v35[1];
        v101 = OUTLINED_FUNCTION_33();
        v102(v101);
      }
    }

    v99 = 0;
    goto LABEL_17;
  }

  (v35[1])(v40, v32);
  v55 = sub_23E1FC87C();
  OUTLINED_FUNCTION_14();
  sub_23DE478FC(v56, v57);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  v58 = *MEMORY[0x277D7BF70];
  OUTLINED_FUNCTION_21(v55);
  (*(v59 + 104))();
  swift_willThrow();
  return v55;
}

uint64_t sub_23DE46724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23DF1E154(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_23E1FD3AC();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_23E1FD3AC();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_23DE467E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_23DF1E154(a1, a2);
    if (v4)
    {
      OUTLINED_FUNCTION_88(v3);
    }
  }

  return OUTLINED_FUNCTION_49();
}

double sub_23DE4682C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_23DF1E154(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_23DE48110(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_23DE46890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_23DF1E154(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_23DE468D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_23DF21DC0(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    sub_23DE48110(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_23DE4693C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_23DF21DC0();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  return swift_unknownObjectRetain();
}

uint64_t sub_23DE4698C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v2 = sub_23DF1E29C();
    if (v3)
    {
      OUTLINED_FUNCTION_88(v2);
    }
  }

  return OUTLINED_FUNCTION_49();
}

uint64_t WFVPNParameterState.typedValue(with:)()
{
  OUTLINED_FUNCTION_23();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C038, qword_23E2237B0);
  OUTLINED_FUNCTION_25(v3);
  v5 = *(v4 + 64);
  v1[5] = OUTLINED_FUNCTION_42();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  v1[6] = OUTLINED_FUNCTION_42();
  v9 = sub_23E1FC0EC();
  v1[7] = v9;
  OUTLINED_FUNCTION_8(v9);
  v1[8] = v10;
  v12 = *(v11 + 64);
  v1[9] = OUTLINED_FUNCTION_42();
  v13 = sub_23E1FD46C();
  OUTLINED_FUNCTION_25(v13);
  v15 = *(v14 + 64);
  v1[10] = OUTLINED_FUNCTION_42();
  v16 = sub_23E1FD3AC();
  v1[11] = v16;
  OUTLINED_FUNCTION_8(v16);
  v1[12] = v17;
  v19 = *(v18 + 64);
  v1[13] = OUTLINED_FUNCTION_91();
  v1[14] = swift_task_alloc();
  v20 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v20, v21, v22);
}

uint64_t sub_23DE46B50()
{
  v1 = [*(v0 + 24) value];
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 88);
    sub_23E1FDABC();
    v4 = [v2 appDescriptor];
    if (v4)
    {
      v5 = v4;
      v6 = sub_23DE47D18(v4);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        v10 = *(v0 + 112);
        v12 = *(v0 + 88);
        v11 = *(v0 + 96);
        v55 = *(v0 + 104);
        v13 = sub_23E1FD39C();
        v14 = swift_allocBox();
        *v15 = v8;
        v15[1] = v9;
        v16 = *MEMORY[0x277D729B8];
        OUTLINED_FUNCTION_21(v13);
        (*(v17 + 104))();
        *v10 = v14;
        (*(v11 + 104))(v10, *MEMORY[0x277D72A58], v12);
        v18 = *(v11 + 32);
        v19 = OUTLINED_FUNCTION_66();
        v20(v19);
        swift_isUniquelyReferenced_nonNull_native();
        sub_23DE47940(v55, 0xD000000000000013, 0x800000023E24E5A0);
      }
    }

    v56 = *(v0 + 112);
    v57 = *(v0 + 104);
    v33 = *(v0 + 96);
    v34 = *(v0 + 72);
    v35 = *(v0 + 80);
    v36 = *(v0 + 56);
    v37 = *(v0 + 64);
    v38 = *(v0 + 48);
    v51 = *(v0 + 40);
    v39 = *(v0 + 32);
    v53 = *(v0 + 16);
    v54 = *(v0 + 88);
    sub_23E1FD31C();
    v52 = swift_allocBox();
    sub_23DE4758C();
    sub_23E1FC95C();
    v40 = [v2 identifier];
    sub_23E1FC0CC();

    sub_23E1FC0AC();
    (*(v37 + 8))(v34, v36);
    v41 = [v2 title];
    sub_23E1FDC1C();

    v42 = sub_23E1FD7BC();
    OUTLINED_FUNCTION_73(v51, v43, v44, v42);
    sub_23E1FD7DC();
    sub_23E1FD82C();
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
    sub_23E1FD30C();

    *v53 = v52;
    v49 = *MEMORY[0x277D72A38];
    (*(v33 + 104))();

    OUTLINED_FUNCTION_7();
  }

  else
  {
    v21 = *(v0 + 104);
    v22 = *(v0 + 112);
    v23 = *(v0 + 72);
    v24 = *(v0 + 80);
    v26 = *(v0 + 40);
    v25 = *(v0 + 48);
    v27 = sub_23E1FC87C();
    OUTLINED_FUNCTION_14();
    sub_23DE478FC(v28, v29);
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v30 = *MEMORY[0x277D7BF68];
    OUTLINED_FUNCTION_21(v27);
    (*(v31 + 104))();
    swift_willThrow();

    OUTLINED_FUNCTION_19();
  }

  return v32();
}

uint64_t sub_23DE46FA8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE47040;

  return WFVPNParameterState.typedValue(with:)();
}

uint64_t sub_23DE47040()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_19();

  return v5();
}

uint64_t sub_23DE47120()
{
  OUTLINED_FUNCTION_23();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_23E1FDA1C();
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  v1[5] = OUTLINED_FUNCTION_42();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C020, &unk_23E229720);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  v1[6] = OUTLINED_FUNCTION_42();
  v10 = sub_23E1FD46C();
  v1[7] = v10;
  OUTLINED_FUNCTION_8(v10);
  v1[8] = v11;
  v13 = *(v12 + 64);
  v1[9] = OUTLINED_FUNCTION_42();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_23DE47214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_71();
  v21 = v20[3];
  v22 = *(v21 + *(type metadata accessor for ParameterToTypedValueContext(0) + 20));
  objc_opt_self();
  OUTLINED_FUNCTION_20();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    swift_unknownObjectRetain();
    v25 = [v24 value];
    if (v25)
    {
      v26 = v25;
      a15 = 0;
      a16 = 0;
      sub_23E1FDC0C();
    }

    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_92(v29, v30);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23DE47518();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_92(v27, v28);
  }

  v31 = v20[9];
  v33 = v20[5];
  v32 = v20[6];

  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_41();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_23DE47474(uint64_t a1)
{
  v2 = type metadata accessor for ParameterToTypedValueContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23DE47518()
{
  result = qword_280DAEA68;
  if (!qword_280DAEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEA68);
  }

  return result;
}

unint64_t sub_23DE4758C()
{
  result = qword_27E32C018;
  if (!qword_27E32C018)
  {
    sub_23DE38DA8(255, &unk_280DAE6F0, off_278C018E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C018);
  }

  return result;
}

id sub_23DE475F4(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v10 = [v6 initWithVariableSource:a1 parameter:a2 isInputParameter:a3 & 1 environment:a4 contentAttributionTracker:a5 widgetSizeClass:a6];
  swift_unknownObjectRelease();

  return v10;
}

id sub_23DE47674(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_23E1FDBDC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

id sub_23DE476D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = sub_23E1FC0BC();
  v9 = sub_23E1FDBDC();

  v10 = [v5 initWithIdentifier:v8 title:v9 appDescriptor:a4];

  v11 = sub_23E1FC0EC();
  (*(*(v11 - 8) + 8))(a1, v11);
  return v10;
}

void sub_23DE477A0()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_23E1FDBDC();

  if (!v9)
  {
    v11 = 0;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  v11 = sub_23E1FDBDC();

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = sub_23E1FDBDC();

LABEL_6:
  v13 = sub_23E1FC13C();
  v14 = sub_23E1FBF6C();
  [v1 initWithKey:v10 defaultValue:v11 table:v12 locale:v13 bundleURL:v14];

  v15 = sub_23E1FBFBC();
  OUTLINED_FUNCTION_12(v15);
  (*(v16 + 8))(v3);
  v17 = sub_23E1FC1DC();
  OUTLINED_FUNCTION_12(v17);
  (*(v18 + 8))(v5);
  OUTLINED_FUNCTION_76();
}

uint64_t sub_23DE478FC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23DE47940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23DF1E154(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C160, &qword_23E223970);
  if ((sub_23E1FE66C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_23DF1E154(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_23E1FE7BC();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = *(v16 + 56);
    v18 = sub_23E1FD3AC();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v11;

    return v20(v22, a1, v21);
  }

  else
  {
    sub_23DEC5870(v11, a2, a3, a1, v16);

    return sub_23E1FB7BC();
  }
}

uint64_t sub_23DE47AB4()
{
  OUTLINED_FUNCTION_90();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_23DF1E154(v4, v2);
  OUTLINED_FUNCTION_84(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C158, &qword_23E223968);
  if ((sub_23E1FE66C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  v19 = sub_23DF1E154(v5, v3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_23E1FE7BC();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    v23 = v22[1];
    *v22 = v9;
    v22[1] = v7;
    OUTLINED_FUNCTION_76();
  }

  else
  {
    sub_23DEC58F4(v16, v5, v3, v9, v7, v21);
    OUTLINED_FUNCTION_76();

    return sub_23E1FB7BC();
  }
}

_OWORD *sub_23DE47BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_23DF1E154(a2, a3);
  OUTLINED_FUNCTION_84(v9, v10);
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C150, &qword_23E223960);
  if ((sub_23E1FE66C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = OUTLINED_FUNCTION_86();
  v19 = sub_23DF1E154(v17, v18);
  if ((v15 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_23E1FE7BC();
    __break(1u);
    return result;
  }

  v14 = v19;
LABEL_5:
  v21 = *v4;
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v21 + 56) + 32 * v14));
    v22 = OUTLINED_FUNCTION_49();

    return sub_23DE36CA4(v22, v23);
  }

  else
  {
    sub_23DEC5940(v14, a2, a3, a1, v21);

    return sub_23E1FB7BC();
  }
}

uint64_t sub_23DE47D18(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_23E1FDC1C();

  return v3;
}

void sub_23DE47DA4()
{
  sub_23DE47E38();
  if (v0 <= 0x3F)
  {
    sub_23DE47E90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DE47E38()
{
  if (!qword_27E32C058)
  {
    sub_23E1FD46C();
    v0 = sub_23E1FE42C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E32C058);
    }
  }
}

void sub_23DE47E90()
{
  if (!qword_27E32C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32C068, &qword_23E223868);
    v0 = sub_23E1FE42C();
    if (!v1)
    {
      atomic_store(v0, &qword_27E32C060);
    }
  }
}

unint64_t sub_23DE47F1C()
{
  result = sub_23E1FD46C();
  if (v1 <= 0x3F)
  {
    result = sub_23DE47FA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23DE47FA0()
{
  result = qword_27E32C088;
  if (!qword_27E32C088)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E32C088);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WFParameterStateToolKitConversionError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t storeEnumTagSinglePayload for WFParameterStateToolKitConversionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_23DE480AC(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

unint64_t *sub_23DE480D8(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_23DE48110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23DE4816C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23DE481FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_12(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_23DE48254(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_89(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_0(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_49();
  v9(v8);
  return v4;
}

uint64_t sub_23DE4829C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_89(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_0(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_49();
  v9(v8);
  return v4;
}

void sub_23DE4830C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C1B0, &qword_23E2239A8);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 80);
  v7 = OUTLINED_FUNCTION_86();

  sub_23DE455D8(v7, v8, a3, v9);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_23E1FB7CC();
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void OUTLINED_FUNCTION_0_1()
{
  v2 = v0[41];
  v3 = v0[40];
  v4 = v0[39];
  v5 = v0[38];
  v6 = v0[37];
  v7 = v0[36];
  v8 = v0[35];
  v9 = v0[32];
  v10 = v0[31];
  v11 = v0[30];
  v12 = v0[29];
  v13 = v0[28];
  v14 = v0[25];
  v15 = v0[24];
  v1 = v0[23];
  v16 = v0[20];
}

uint64_t OUTLINED_FUNCTION_1_0()
{
  v2 = v0[40];
  result = v0[41];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[32];
  v7 = v0[29];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[18];
  v12 = v0[19];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  v4 = v0[54];
  v3 = v0[55];
  v6 = v0[52];
  v5 = v0[53];
  v8 = v0[48];
  v7 = v0[49];
  v9 = v0[46];
  v10 = v0[47];
  v12 = v0[44];
  v11 = v0[45];
  v16 = v0[41];
  v17 = v0[40];
  v18 = v0[39];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[35];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[30];
  v26 = v0[29];
  v27 = v0[28];
  v28 = v0[25];
  v29 = v0[24];
  v30 = v0[23];
  v31 = v0[20];
  v13 = v0[16];
  *(v1 - 112) = v0[17];
  *(v1 - 104) = v13;
  v14 = v0[12];
  *(v1 - 96) = v0[13];
  *(v1 - 88) = v14;
  *(v1 - 80) = v0[11];
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];
  v9 = v0[26];
  v10 = v0[22];
  v11 = v0[23];
  v13 = v0[19];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[10];
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v2[7];
  v3 = v2[8];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[3];
  v8 = v2[4];
  return v2[2];
}

uint64_t OUTLINED_FUNCTION_7()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_10()
{
  v3 = v0[16];
  *(v1 - 120) = v0[17];
  *(v1 - 112) = v3;
  v4 = v0[12];
  *(v1 - 104) = v0[13];
  *(v1 - 96) = v4;
  *(v1 - 88) = v0[11];
}

uint64_t OUTLINED_FUNCTION_11()
{
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[10];
}

uint64_t OUTLINED_FUNCTION_17()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 80);
  return result;
}

uint64_t OUTLINED_FUNCTION_18()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_19()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_30()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[2];
}

void OUTLINED_FUNCTION_39()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[48];
  v4 = v0[49];
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_task_alloc();
}

id OUTLINED_FUNCTION_52(void *a1)
{

  return sub_23DE475F4(0, a1, 0, 0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(v3 - 112) = a1;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_56()
{

  JUMPOUT(0x23EF074C0);
}

void OUTLINED_FUNCTION_60()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[2];
}

uint64_t OUTLINED_FUNCTION_62()
{
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
}

void OUTLINED_FUNCTION_63()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[2];
}

uint64_t OUTLINED_FUNCTION_69@<X0>(unsigned int *a1@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 104);
  return v1;
}

uint64_t OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

void OUTLINED_FUNCTION_75()
{
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[41];
  v8 = v0[38];
  v9 = v0[39];
}

void OUTLINED_FUNCTION_77(void *a1@<X8>)
{
  v3 = *(v1 + 472);
  v4 = *(v1 + 64);
}

void OUTLINED_FUNCTION_87()
{
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[3];
}

uint64_t OUTLINED_FUNCTION_88(uint64_t a1)
{
  v3 = (*(v1 + 56) + 16 * a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_23E1FB7BC();
}

uint64_t OUTLINED_FUNCTION_89(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_91()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_92@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;

  return swift_willThrow();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_23DE48C00()
{
  v0 = sub_23E1FB8FC();
  __swift_allocate_value_buffer(v0, qword_27E32C1C0);
  __swift_project_value_buffer(v0, qword_27E32C1C0);
  return sub_23E1FB8DC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static PodcastItem.typeDisplayRepresentation.modify()
{
  if (qword_27E32B8D0 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FB8FC();
  __swift_project_value_buffer(v0, qword_27E32C1C0);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DE48D8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D0, MEMORY[0x277CBA3A0], qword_27E32C1C0);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE48E3C(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D0, MEMORY[0x277CBA3A0], qword_27E32C1C0);
  swift_beginAccess();
  v3 = sub_23E1FB8FC();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t PodcastItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E1FB7BC();
  return OUTLINED_FUNCTION_49();
}

uint64_t PodcastItem.encodedParameters.getter()
{
  v1 = (v0 + *(type metadata accessor for PodcastItem() + 28));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_49();
  sub_23DE48FA8(v4, v5);
  return OUTLINED_FUNCTION_49();
}

uint64_t type metadata accessor for PodcastItem()
{
  result = qword_280DAF558;
  if (!qword_280DAF558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23DE48FA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }

    sub_23E1FB7CC();
  }

  return sub_23E1FB7CC();
}

uint64_t PodcastItem.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v10);
  v11 = sub_23E1FBF0C();
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v15 = sub_23E1FDBAC();
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15();
  sub_23E1FDB9C();
  sub_23E1FDB8C();
  v19 = *(v0 + 16);
  v20 = *(v0 + 24);
  sub_23E1FDB7C();
  sub_23E1FDB8C();
  sub_23E1FBEFC();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v11);
  v24 = type metadata accessor for PodcastItem();
  sub_23DE491B4(v0 + *(v24 + 24), v6);
  return sub_23E1FB76C();
}

uint64_t sub_23DE491B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE49224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58[8] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  OUTLINED_FUNCTION_25(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v8);
  v10 = v52 - v9;
  v11 = type metadata accessor for PodcastItem();
  v12 = OUTLINED_FUNCTION_12(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15();
  v17 = (v16 - v15);
  v18 = a1;
  v19 = sub_23DEB4C08(v18);
  if (!v20)
  {

LABEL_11:
    OUTLINED_FUNCTION_18_0();
    result = __swift_storeEnumTagSinglePayload(v47, v48, v49, v11);
    goto LABEL_12;
  }

  v21 = v19;
  v22 = v20;
  v23 = [v18 icon];
  v56 = a2;
  v57 = v22;
  if (v23 && (sub_23DEE1304(v23), v24 >> 60 != 15))
  {
    sub_23E1FB73C();
    v25 = sub_23E1FB75C();
    v26 = 0;
  }

  else
  {
    v25 = sub_23E1FB75C();
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v26, 1, v25);
  v27 = *(v11 + 24);
  sub_23DE4D790(v10, v17 + v27);
  v28 = [v18 uniqueIdentifier];
  v29 = sub_23E1FDC1C();
  v31 = v30;

  *v17 = v29;
  v17[1] = v31;
  v32 = v57;
  v17[2] = v21;
  v17[3] = v32;
  v33 = [v18 intent];
  v34 = [objc_allocWithZone(MEMORY[0x277D7C730]) initWithIntent_];

  if (!v34)
  {

    sub_23DE481FC(v17 + v27, &qword_27E32C208, &unk_23E2239B0);
    goto LABEL_11;
  }

  v52[1] = v31;
  v53 = v27;
  v54 = v2;
  v35 = [objc_allocWithZone(MEMORY[0x277D7C740]) initWithValue_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F8, &qword_23E226D70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  strcpy((inited + 32), "WFPodcastShow");
  *(inited + 46) = -4864;
  v55 = v35;
  *(inited + 48) = [v35 serializedRepresentation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C300, &unk_23E224090);
  OUTLINED_FUNCTION_27_0();
  sub_23E1FDABC();
  v37 = objc_opt_self();
  OUTLINED_FUNCTION_27_0();
  v38 = sub_23E1FDA9C();

  v58[0] = 0;
  v39 = [v37 archivedDataWithRootObject:v38 requiringSecureCoding:1 error:v58];

  v40 = v58[0];
  if (v39)
  {
    v41 = sub_23E1FBFDC();
    v43 = v42;

    v44 = (v17 + *(v11 + 28));
    *v44 = v41;
    v44[1] = v43;
    v45 = v56;
    sub_23DE4AAA8(v17, v56);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v11);
    result = sub_23DE4AB0C(v17);
  }

  else
  {
    v51 = v40;
    sub_23E1FBECC();

    swift_willThrow();

    result = sub_23DE481FC(v17 + v53, &qword_27E32C208, &unk_23E2239B0);
  }

LABEL_12:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23DE49670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CBA470] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23DE47040;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_23DE49738@<X0>(uint64_t *a1@<X8>)
{
  result = PodcastItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DE49760(uint64_t a1)
{
  v2 = sub_23DE4D800(&qword_280DAF0B8, type metadata accessor for PodcastItem);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_23DE497DC(uint64_t a1)
{
  v2 = sub_23DE4D800(&qword_280DAE4D0, type metadata accessor for PodcastItem);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_23DE49878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23DE4D8D0;

  return EmptyPodcastQuery.entities(for:)();
}

uint64_t sub_23DE49904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_23DE499B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_23DE49A78;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_23DE49A78()
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  OUTLINED_FUNCTION_28();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

uint64_t sub_23DE49B68(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_23DE4C184();
  *v6 = v2;
  v6[1] = sub_23DE4D8A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_23DE49C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23DE4D8A8;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_23DE49CD0()
{
  v0 = sub_23E1FBEEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23E1FC1DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_23E1FDBCC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23E1FBF0C();
  __swift_allocate_value_buffer(v9, qword_27E32C1D8);
  __swift_project_value_buffer(v9, qword_27E32C1D8);
  sub_23E1FDB5C();
  sub_23E1FC19C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_23E1FBF1C();
}

uint64_t sub_23DE49EC0(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_23DE49F54(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);
  __swift_project_value_buffer(v5, a3);
  swift_beginAccess();
  v6 = *(*(v5 - 8) + 16);
  v7 = OUTLINED_FUNCTION_49();
  return v8(v7);
}

uint64_t sub_23DE4A038(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  v8 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t static PlayPodcastTopHitAction.title.modify()
{
  if (qword_27E32B8D8 != -1)
  {
    swift_once();
  }

  v0 = sub_23E1FBF0C();
  __swift_project_value_buffer(v0, qword_27E32C1D8);
  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

uint64_t sub_23DE4A1A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D8, MEMORY[0x277CC9130], qword_27E32C1D8);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_23DE4A254(uint64_t a1)
{
  v2 = sub_23DE49EC0(&qword_27E32B8D8, MEMORY[0x277CC9130], qword_27E32C1D8);
  swift_beginAccess();
  v3 = sub_23E1FBF0C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t static PlayPodcastTopHitAction.attributionBundleIdentifier.getter()
{
  OUTLINED_FUNCTION_29_0();
  v0 = qword_27E32C1F0;
  sub_23E1FB7BC();
  return v0;
}

uint64_t static PlayPodcastTopHitAction.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_27E32C1F0 = a1;
  off_27E32C1F8 = a2;
}

uint64_t sub_23DE4A3F4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27E32C1F8;
  *a1 = qword_27E32C1F0;
  a1[1] = v2;
  return sub_23E1FB7BC();
}

uint64_t sub_23DE4A444(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27E32C1F0 = v2;
  off_27E32C1F8 = v1;
  sub_23E1FB7BC();
}

uint64_t sub_23DE4A4A8()
{
  v0 = sub_23E1FC7FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C310, &unk_23E225DA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_23E1FC81C();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32BA30, &qword_23E2240A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E222340;
  v11 = *MEMORY[0x277D7CB68];
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 32) = v11;
  *(inited + 40) = 0xD00000000000001FLL;
  *(inited + 48) = 0x800000023E24E660;
  type metadata accessor for Key(0);
  sub_23DE4D800(&qword_280DAEDE0, type metadata accessor for Key);
  v12 = v11;
  sub_23E1FDABC();
  (*(v1 + 104))(v4, *MEMORY[0x277D7BF40], v0);
  v13 = objc_allocWithZone(sub_23E1FC83C());
  result = sub_23E1FC80C();
  qword_280DAF270 = result;
  return result;
}

uint64_t *sub_23DE4A6E8()
{
  if (qword_280DAF260 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  return &qword_280DAF270;
}

id static PlayPodcastTopHitAction.shortcutsMetadata.getter()
{
  if (qword_280DAF260 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_29_0();
  v0 = qword_280DAF270;

  return v0;
}

void static PlayPodcastTopHitAction.shortcutsMetadata.setter(uint64_t a1)
{
  if (qword_280DAF260 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  swift_beginAccess();
  v2 = qword_280DAF270;
  qword_280DAF270 = a1;
}

uint64_t static PlayPodcastTopHitAction.shortcutsMetadata.modify()
{
  if (qword_280DAF260 != -1)
  {
    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_17_0();
  return OUTLINED_FUNCTION_28_0();
}

id sub_23DE4A868@<X0>(void *a1@<X8>)
{
  sub_23DE4A6E8();
  swift_beginAccess();
  v2 = qword_280DAF270;
  *a1 = qword_280DAF270;

  return v2;
}

void sub_23DE4A8C8(id *a1)
{
  v1 = *a1;
  sub_23DE4A6E8();
  swift_beginAccess();
  v2 = qword_280DAF270;
  qword_280DAF270 = v1;
}

uint64_t sub_23DE4A97C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PodcastItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DE4AAA8(a1, v7);
  v9[1] = *a2;
  sub_23E1FB7CC();
  PlayPodcastTopHitAction.podcast.setter(v7);
}

uint64_t PlayPodcastTopHitAction.podcast.setter(uint64_t a1)
{
  v3 = type metadata accessor for PodcastItem();
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_15();
  v7 = *v1;
  sub_23DE4AAA8(a1, v9 - v8);
  sub_23E1FB5EC();
  return sub_23DE4AB0C(a1);
}

uint64_t sub_23DE4AAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE4AB0C(uint64_t a1)
{
  v2 = type metadata accessor for PodcastItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*PlayPodcastTopHitAction.podcast.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_23E1FB5CC();
  return sub_23DE4ABC8;
}

void sub_23DE4ABC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t PlayPodcastTopHitAction.init()@<X0>(uint64_t *a1@<X8>)
{
  v40 = a1;
  v39 = sub_23E1FB84C();
  v1 = *(v39 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_15();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C218, &unk_23E2262E0);
  v7 = OUTLINED_FUNCTION_25(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C220, &qword_23E2239D0);
  OUTLINED_FUNCTION_25(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C210, &qword_23E225DB0);
  OUTLINED_FUNCTION_25(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_72();
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = sub_23E1FBF0C();
  v22 = OUTLINED_FUNCTION_12(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_15();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C228, &qword_23E2239D8);
  sub_23E1FBEDC();
  sub_23E1FBEDC();
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
  type metadata accessor for PodcastItem();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = sub_23E1FB51C();
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v29);
  OUTLINED_FUNCTION_18_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
  (*(v1 + 104))(v5, *MEMORY[0x277CBA308], v39);
  OUTLINED_FUNCTION_1_1();
  sub_23DE4D800(v36, v37);
  result = sub_23E1FB61C();
  *v40 = result;
  return result;
}

uint64_t sub_23DE4AF68()
{
  OUTLINED_FUNCTION_23();
  v1 = *(v0 + 16);
  sub_23E1FB54C();
  OUTLINED_FUNCTION_19();

  return v2();
}

uint64_t sub_23DE4AFCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23DE47040;

  return PlayPodcastTopHitAction.perform()(a1);
}

uint64_t sub_23DE4B068(uint64_t a1)
{
  v2 = sub_23DE4C4C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t SuggestedPodcastsOptionsProvider.fetchResults()()
{
  OUTLINED_FUNCTION_23();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C220, &qword_23E2239D0);
  OUTLINED_FUNCTION_25(v1);
  v3 = *(v2 + 64) + 15;
  v0[19] = swift_task_alloc();
  v4 = type metadata accessor for PodcastItem();
  v0[20] = v4;
  v5 = *(v4 - 8);
  v0[21] = v5;
  v6 = *(v5 + 64) + 15;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DE4B1BC, 0, 0);
}

uint64_t sub_23DE4B1BC()
{
  sub_23DE38DA8(0, &unk_280DAE288, 0x277D7A0A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = *MEMORY[0x277D7A550];
  v0[24] = *MEMORY[0x277D7A550];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23DE4B318;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C230, &qword_23E2239F0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23DE4B7DC;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [ObjCClassFromMetadata disambiguationEntriesForCollection:v2 limit:10 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23DE4B318()
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_28();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 200) = v4;
  if (v4)
  {
    v5 = sub_23DE4B754;
  }

  else
  {
    v5 = sub_23DE4B420;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_23DE4B420()
{
  v1 = *(v0 + 144);

  sub_23E1FDF0C();
  v2 = sub_23DE4B8A4(v1, 0x277D7A0A8);

  if (v2)
  {
    v20 = *(v0 + 168);
    result = sub_23DE4BFE4(v2);
    v4 = result;
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 == v5)
      {

        goto LABEL_18;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x23EF04DD0](v5, v2);
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        result = *(v2 + 8 * v5 + 32);
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_23DE49224(result, *(v0 + 152));
      v8 = *(v0 + 152);
      if (__swift_getEnumTagSinglePayload(v8, 1, *(v0 + 160)) == 1)
      {
        result = sub_23DE481FC(v8, &qword_27E32C220, &qword_23E2239D0);
        ++v5;
      }

      else
      {
        v9 = *(v0 + 184);
        v19 = *(v0 + 176);
        sub_23DE4BF80(v8, v9);
        sub_23DE4BF80(v9, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_23DE4D698(0, *(v6 + 16) + 1, 1, v6, sub_23DF1DCD8, type metadata accessor for PodcastItem, sub_23DF31794);
          v6 = v13;
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23DE4D698(v10 > 1, v11 + 1, 1, v6, sub_23DF1DCD8, type metadata accessor for PodcastItem, sub_23DF31794);
          v6 = v14;
        }

        v12 = *(v0 + 176);
        *(v6 + 16) = v11 + 1;
        result = sub_23DE4BF80(v12, v6 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v11);
        v5 = v7;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
LABEL_18:
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 152);

    v18 = *(v0 + 8);

    return v18(v6);
  }

  return result;
}

uint64_t sub_23DE4B754()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];

  OUTLINED_FUNCTION_19();

  return v7();
}

uint64_t sub_23DE4B7DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_23DEEC878(v4, v5);
  }

  else
  {
    sub_23DE38DA8(0, &qword_280DAE2E8, 0x277D7A1A8);
    OUTLINED_FUNCTION_20();
    v7 = sub_23E1FDDEC();

    return sub_23DEEC87C(v4, v7);
  }
}

id sub_23DE4B8A4(unint64_t a1, uint64_t *a2)
{
  v10 = MEMORY[0x277D84F90];
  sub_23DE4D8B0();
  sub_23E1FE63C();
  result = sub_23DE4BFE4(a1);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      return v10;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23EF04DD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = *(a1 + 8 * i + 32);
    }

    v7 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = *a2;
    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {

      return 0;
    }

    sub_23E1FE61C();
    v9 = *(v10 + 16);
    sub_23E1FE64C();
    sub_23E1FE65C();
    result = sub_23E1FE62C();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23DE4B9D4(unint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  sub_23DE4D8B0();
  sub_23E1FE63C();
  result = sub_23DE4BFE4(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v7;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x23EF04DD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 8 * i + 32);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    OUTLINED_FUNCTION_20();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    sub_23E1FE61C();
    v6 = *(v7 + 16);
    sub_23E1FE64C();
    sub_23E1FE65C();
    result = sub_23E1FE62C();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23DE4BB0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  sub_23DE63E2C();
  v3 = v11;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_23DE48110(v4, v10);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v11 = v3;
      v5 = *(v3 + 16);
      if (v5 >= *(v3 + 24) >> 1)
      {
        sub_23DE63E2C();
        v3 = v11;
      }

      *(v3 + 16) = v5 + 1;
      v6 = v3 + 16 * v5;
      *(v6 + 32) = v8;
      *(v6 + 40) = v9;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_23DE4BC20(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23E1FE63C();
  v3 = a1 + 32;
  if (!v2)
  {
    return v7;
  }

  while (1)
  {
    sub_23DE48110(v3, v6);
    sub_23DE38DA8(0, &qword_27E32C2B0, 0x277D79FC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23E1FE61C();
    v4 = *(v7 + 16);
    sub_23E1FE64C();
    sub_23E1FE65C();
    sub_23E1FE62C();
    v3 += 32;
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_23DE4BD4C()
{
  OUTLINED_FUNCTION_23();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23DE4D8B4;

  return SuggestedPodcastsOptionsProvider.fetchResults()();
}

uint64_t sub_23DE4BDD8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23DE4BE7C;

  return sub_23DEBEE14();
}

uint64_t sub_23DE4BE7C(uint64_t a1)
{
  OUTLINED_FUNCTION_28();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_23DE4BF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE4BFE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_23E1FE6AC();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_23DE4C008(uint64_t a1)
{
  result = sub_23DE4D800(&qword_280DAE4D0, type metadata accessor for PodcastItem);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE4C184()
{
  result = qword_280DAE4A0;
  if (!qword_280DAE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE4A0);
  }

  return result;
}

unint64_t sub_23DE4C2BC()
{
  result = qword_280DAEF70;
  if (!qword_280DAEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF70);
  }

  return result;
}

unint64_t sub_23DE4C314()
{
  result = qword_280DAEF68;
  if (!qword_280DAEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF68);
  }

  return result;
}

unint64_t sub_23DE4C3B4()
{
  result = qword_280DAEF80;
  if (!qword_280DAEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAEF80);
  }

  return result;
}

unint64_t sub_23DE4C408()
{
  result = qword_280DAE408;
  if (!qword_280DAE408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E32C250, qword_23E223CA0);
    sub_23DE4D800(&unk_280DAF0E8, type metadata accessor for PodcastItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE408);
  }

  return result;
}

unint64_t sub_23DE4C4C0()
{
  result = qword_280DAF248;
  if (!qword_280DAF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF248);
  }

  return result;
}

unint64_t sub_23DE4C518()
{
  result = qword_280DAF240;
  if (!qword_280DAF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF240);
  }

  return result;
}

unint64_t sub_23DE4C570()
{
  result = qword_280DAF258;
  if (!qword_280DAF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAF258);
  }

  return result;
}

unint64_t sub_23DE4C6BC(uint64_t a1)
{
  result = sub_23DE4C6E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23DE4C6E4()
{
  result = qword_27E32C270;
  if (!qword_27E32C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E32C270);
  }

  return result;
}

unint64_t sub_23DE4C73C()
{
  result = qword_280DAE448;
  if (!qword_280DAE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DAE448);
  }

  return result;
}

void sub_23DE4C7B8()
{
  sub_23DE4C83C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23DE4C83C()
{
  if (!qword_280DAF568)
  {
    sub_23E1FB75C();
    v0 = sub_23E1FE42C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DAF568);
    }
  }
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;
  sub_23E1FB7CC();
  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;
  sub_23E1FB7CC();

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for PlayPodcastTopHitAction(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for PlayPodcastTopHitAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VisualIntelligenceFeatureFlags(unsigned int *a1, int a2)
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

_BYTE *sub_23DE4CA2C(_BYTE *result, int a2, int a3)
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

void sub_23DE4CB98()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32CDE0, &unk_23E224050);
      v8 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_16_0(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_1();
        sub_23DF3175C(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4CC50()
{
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v6);
    if (v3)
    {
      v9 = sub_23DF1DC70();
      v10 = *(v9 + 52);
      v11 = (*(v9 + 48) + 7) & 0x1FFFFFFF8;
      v12 = swift_allocObject();
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_7_0();
      v12[2] = v2;
      v12[3] = v13;
      if (v1)
      {
LABEL_9:
        v14 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v14);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v12 + 4, (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4CD50()
{
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E8, qword_23E224070);
      v9 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_7_0();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DE36A28(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2F0, &qword_23E22A420);
    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4CE90(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_7_0();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4CF68()
{
  OUTLINED_FUNCTION_15_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C560, &unk_23E2290D0);
      v9 = OUTLINED_FUNCTION_25_0();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_7_0();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_4_1();
        sub_23DF31CF0(v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    type metadata accessor for WFExecutionPlatform(0);
    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4D024()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2E0, &qword_23E224068);
      v8 = OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_16_0(v9 / 32);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_1();
        sub_23DF31824(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4D1EC()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2A0, &qword_23E224030);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_16_0(v9 / 24);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_1();
        sub_23DF318A4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C2A8, &qword_23E224038);
    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4D2C4()
{
  OUTLINED_FUNCTION_15_0();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_5_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E32C2D0, &unk_23E22A390);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_16_0(v9 / 72);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_4_1();
        sub_23DF318CC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_13_0();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4D3F4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_1();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_25_0();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 16);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_8_0();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_23DE4D698(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_1();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_8_0();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_23DE4D790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E32C208, &unk_23E2239B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DE4D800(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_0_2()
{

  return swift_once();
}

void OUTLINED_FUNCTION_5_1(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_13_0()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return swift_beginAccess();
}

void sub_23DE4DA6C()
{
  OUTLINED_FUNCTION_90();
  v66 = sub_23E1FBD5C();
  v2 = OUTLINED_FUNCTION_6_0(v66);
  v4 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v2);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_69_0();
  MEMORY[0x28223BE20](v10);
  v12 = (&v60 - v11);
  OUTLINED_FUNCTION_5();
  v13 = sub_23E1FDBDC();
  v14 = [v0 parameterStateForKey_];

  if (v14)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = sub_23DE586E0(v15);
      if (v16)
      {
        v17 = sub_23DE4B9D4(v16);

        if (v17)
        {
          v62 = v14;
          v63 = v12;
          v64 = v9;
          v18 = sub_23DE4D8B0(v17);
          v19 = 0;
          v67 = v17 & 0xC000000000000001;
          v65 = MEMORY[0x277D84F90];
          while (1)
          {
            while (1)
            {
              if (v18 == v19)
              {

                v34 = v65;
                v35 = *(v65 + 16);
                if (v35)
                {
                  v68 = MEMORY[0x277D84F90];
                  sub_23DE63E6C();
                  v36 = v68;
                  v37 = (v34 + 40);
                  do
                  {
                    v38 = *(v37 - 1);
                    v39 = *v37;
                    sub_23E1FB7BC();
                    sub_23E1FBD2C();
                    v68 = v36;
                    v41 = *(v36 + 16);
                    v40 = *(v36 + 24);
                    if (v41 >= v40 >> 1)
                    {
                      OUTLINED_FUNCTION_9(v40);
                      OUTLINED_FUNCTION_60_0();
                      sub_23DE63E6C();
                      v36 = v68;
                    }

                    *(v36 + 16) = v41 + 1;
                    v42 = *(v4 + 80);
                    OUTLINED_FUNCTION_31_0();
                    v44 = OUTLINED_FUNCTION_59_0(v36 + v43);
                    v45(v44);
                    v37 += 2;
                    --v35;
                  }

                  while (v35);
                }

                else
                {

                  v36 = MEMORY[0x277D84F90];
                }

                v46 = v66;
                v47 = 0;
                v48 = *(v36 + 16);
                v67 = v4 + 16;
                v63 = (v4 + 32);
                v65 = MEMORY[0x277D84F90];
                while (v48 != v47)
                {
                  if (v47 >= *(v36 + 16))
                  {
                    goto LABEL_46;
                  }

                  v49 = (*(v4 + 80) + 32) & ~*(v4 + 80);
                  v50 = *(v4 + 72);
                  (*(v4 + 16))(v1, v36 + v49 + v50 * v47, v46);
                  v51 = v46;
                  if (sub_23E1FBCCC())
                  {
                    v61 = *v63;
                    v61(v64, v1, v46);
                    v52 = v65;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v54 = v52;
                    v68 = v52;
                    if (isUniquelyReferenced_nonNull_native)
                    {
                      v46 = v51;
                    }

                    else
                    {
                      v55 = *(v52 + 16);
                      OUTLINED_FUNCTION_13_1();
                      sub_23DE63E6C();
                      v46 = v66;
                      v54 = v68;
                    }

                    v57 = *(v54 + 16);
                    v56 = *(v54 + 24);
                    v58 = v57 + 1;
                    if (v57 >= v56 >> 1)
                    {
                      OUTLINED_FUNCTION_9(v56);
                      v65 = v59;
                      sub_23DE63E6C();
                      v58 = v65;
                      v46 = v66;
                      v54 = v68;
                    }

                    ++v47;
                    *(v54 + 16) = v58;
                    v65 = v54;
                    v61((v54 + v49 + v57 * v50), v64, v46);
                  }

                  else
                  {
                    (*(v4 + 8))(v1, v46);
                    ++v47;
                  }
                }

                swift_unknownObjectRelease();
                if (!*(v65 + 16))
                {

                  goto LABEL_22;
                }

                goto LABEL_23;
              }

              if (v67)
              {
                v20 = MEMORY[0x23EF04DD0](v19, v17);
              }

              else
              {
                if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_45;
                }

                v20 = *(v17 + 8 * v19 + 32);
              }

              v21 = v20;
              v22 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
LABEL_45:
                __break(1u);
LABEL_46:
                __break(1u);
                return;
              }

              v23 = [v20 value];
              if (v23)
              {
                break;
              }

LABEL_19:
              ++v19;
            }

            v24 = v23;
            v68 = 0;
            v69 = 0;
            sub_23E1FDC0C();

            v25 = v69;
            if (!v69)
            {
              goto LABEL_19;
            }

            v26 = v68;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v31 = *(v65 + 16);
              OUTLINED_FUNCTION_6_1();
              sub_23DE4CB98();
              v65 = v32;
            }

            v28 = *(v65 + 16);
            v27 = *(v65 + 24);
            if (v28 >= v27 >> 1)
            {
              OUTLINED_FUNCTION_9(v27);
              OUTLINED_FUNCTION_60_0();
              sub_23DE4CB98();
              v65 = v33;
            }

            v29 = v65;
            *(v65 + 16) = v28 + 1;
            v30 = v29 + 16 * v28;
            *(v30 + 32) = v26;
            *(v30 + 40) = v25;
            v19 = v22;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_22:
  sub_23E1FBD4C();
  sub_23DE4DF80();
  OUTLINED_FUNCTION_37();

LABEL_23:
  OUTLINED_FUNCTION_76();
}