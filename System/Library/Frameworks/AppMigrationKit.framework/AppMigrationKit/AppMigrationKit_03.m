uint64_t _t_ThrowsPosixError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AEE0, &qword_29EB19140);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5D6C();
  sub_29EB14FEC();
  if (!v2)
  {
    v17 = 0;
    sub_29EAF5C18();
    sub_29EB14DFC();
    v11 = v18;
    v16 = 1;
    sub_29EAF5E14();
    sub_29EB14DFC();
    (*(v6 + 8))(v9, v5);
    v12 = v15;
    *a2 = v11;
    *(a2 + 4) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAF4F60()
{
  v2 = sub_29EB1402C();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();
  *(v1 + 44) = *(v0 + 4);

  return MEMORY[0x2A1C73D48](sub_29EAF4904, 0, 0);
}

uint64_t sub_29EAF5024(_BYTE *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 40) = *a1;
  v4 = *v2;
  *(v3 + 41) = *v2;
  v5 = *(v2 + 1);
  *(v3 + 32) = v4;
  *(v3 + 36) = v5;
  return MEMORY[0x2A1C73D48](sub_29EAF5060, 0, 0);
}

uint64_t sub_29EAF5060()
{
  if (sub_29EAB0548(*(v0 + 40), *(v0 + 41)))
  {
    v1 = sub_29EAF6CA4();
    v7 = (*(v1 + 24) + **(v1 + 24));
    v2 = *(*(v1 + 24) + 4);
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_29EAF51C4;
    v4 = *(v0 + 16);

    return v7(v4, v1);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_29EAF51C4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_29EAF52B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 2;
  *(a3 + 4) = 2;
  return result;
}

uint64_t _t_ThrowsGenericError.message.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t _t_ThrowsGenericError.perform()()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 8);
  *(v1 + 24) = v2;

  return MEMORY[0x2A1C73D48](sub_29EAF53A8, 0, 0);
}

uint64_t sub_29EAF53A8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_29EABCDBC();
  swift_allocError();
  *v3 = v2;
  v3[1] = v1;
  v3[2] = 0;
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

unint64_t static _t_ThrowsGenericError.example.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for _t_ThrowsGenericError;
  result = sub_29EAC3928();
  *(a1 + 32) = result;
  *a1 = 1;
  strcpy((a1 + 8), "Error thrown");
  *(a1 + 21) = 0;
  *(a1 + 22) = -5120;
  return result;
}

uint64_t sub_29EAF54A8()
{
  if (*v0)
  {
    result = 0x6567617373656DLL;
  }

  else
  {
    result = 0x6F6974617265706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_29EAF54E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v6 || (sub_29EB14EBC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_29EB14EBC();

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

uint64_t sub_29EAF55CC(uint64_t a1)
{
  v2 = sub_29EAF5E68();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAF5608(uint64_t a1)
{
  v2 = sub_29EAF5E68();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t _t_ThrowsGenericError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AEF0, &qword_29EB19150);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5E68();
  sub_29EB14FFC();
  v16 = v9;
  v15 = 0;
  sub_29EAF5BC4();
  sub_29EB14E6C();
  if (!v2)
  {
    v14 = 1;
    sub_29EB14E3C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t _t_ThrowsGenericError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AF00, &unk_29EB19158);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAF5E68();
  sub_29EB14FEC();
  if (!v2)
  {
    v18 = 0;
    sub_29EAF5C18();
    sub_29EB14DFC();
    v11 = v19;
    v17 = 1;
    v13 = sub_29EB14DCC();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAF59A8()
{
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 8);
  *(v1 + 24) = v2;

  return MEMORY[0x2A1C73D48](sub_29EAF6D98, 0, 0);
}

uint64_t sub_29EAF5A18(_BYTE *a1)
{
  *(v2 + 32) = *a1;
  *(v2 + 33) = *v1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *(v1 + 8);
  *(v2 + 24) = v3;
  return MEMORY[0x2A1C73D48](sub_29EAF5A4C, 0, 0);
}

uint64_t sub_29EAF5A4C()
{
  if (sub_29EAB0548(*(v0 + 32), *(v0 + 33)))
  {
    v2 = *(v0 + 16);
    v1 = *(v0 + 24);
    sub_29EABCDBC();

    swift_allocError();
    *v3 = v2;
    v3[1] = v1;
    v3[2] = 0;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EAF5B10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  *a3 = 1;
  strcpy((a3 + 8), "Error thrown");
  *(a3 + 21) = 0;
  *(a3 + 22) = -5120;
  return result;
}

unint64_t sub_29EAF5B70()
{
  result = qword_2A187AE78;
  if (!qword_2A187AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE78);
  }

  return result;
}

unint64_t sub_29EAF5BC4()
{
  result = qword_2A187AE80;
  if (!qword_2A187AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE80);
  }

  return result;
}

unint64_t sub_29EAF5C18()
{
  result = qword_2A187AE90;
  if (!qword_2A187AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AE90);
  }

  return result;
}

unint64_t sub_29EAF5C6C()
{
  result = qword_2A187AEA0;
  if (!qword_2A187AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEA0);
  }

  return result;
}

unint64_t sub_29EAF5CC0()
{
  result = qword_2A187AEB8;
  if (!qword_2A187AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEB8);
  }

  return result;
}

unint64_t sub_29EAF5D14()
{
  result = qword_2A187A640;
  if (!qword_2A187A640)
  {
    sub_29EB1402C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187A640);
  }

  return result;
}

unint64_t sub_29EAF5D6C()
{
  result = qword_2A187AED0;
  if (!qword_2A187AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AED0);
  }

  return result;
}

unint64_t sub_29EAF5DC0()
{
  result = qword_2A187AED8;
  if (!qword_2A187AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AED8);
  }

  return result;
}

unint64_t sub_29EAF5E14()
{
  result = qword_2A187AEE8;
  if (!qword_2A187AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEE8);
  }

  return result;
}

unint64_t sub_29EAF5E68()
{
  result = qword_2A187AEF8;
  if (!qword_2A187AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AEF8);
  }

  return result;
}

unint64_t sub_29EAF5EBC(uint64_t a1)
{
  result = sub_29EAC3A78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF5F10()
{
  result = qword_2A187AF08;
  if (!qword_2A187AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF08);
  }

  return result;
}

unint64_t sub_29EAF5F64()
{
  result = qword_2A187AF10;
  if (!qword_2A187AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF10);
  }

  return result;
}

unint64_t sub_29EAF5FB8(uint64_t a1)
{
  result = sub_29EAC3A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF600C(uint64_t a1)
{
  result = sub_29EAC39D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF6060()
{
  result = qword_2A187AF18;
  if (!qword_2A187AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF18);
  }

  return result;
}

unint64_t sub_29EAF60B4()
{
  result = qword_2A187AF20;
  if (!qword_2A187AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF20);
  }

  return result;
}

unint64_t sub_29EAF6108(uint64_t a1)
{
  result = sub_29EAC397C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29EAF615C()
{
  result = qword_2A187AF28;
  if (!qword_2A187AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF28);
  }

  return result;
}

unint64_t sub_29EAF61B0()
{
  result = qword_2A187AF30;
  if (!qword_2A187AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF30);
  }

  return result;
}

unint64_t sub_29EAF6204(uint64_t a1)
{
  result = sub_29EAC3928();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29EAF6258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_29EAF6294()
{
  result = qword_2A187AF38;
  if (!qword_2A187AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF38);
  }

  return result;
}

unint64_t sub_29EAF62E8()
{
  result = qword_2A187AF40;
  if (!qword_2A187AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _t_ThrowsPosixError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && a1[8])
  {
    return (*a1 + 251);
  }

  v3 = *a1;
  v4 = v3 >= 6;
  v5 = v3 - 6;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _t_ThrowsPosixError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_29EAF6414(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAF645C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t dispatch thunk of _t_GenericInjectionMessage.perform()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAAAE5C;

  return v9(a1, a2);
}

uint64_t getEnumTagSinglePayload for AppContentMetrics.MetricType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppContentMetrics.MetricType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_29EAF6780()
{
  result = qword_2A187AF48;
  if (!qword_2A187AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF48);
  }

  return result;
}

unint64_t sub_29EAF67D8()
{
  result = qword_2A187AF50;
  if (!qword_2A187AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF50);
  }

  return result;
}

unint64_t sub_29EAF6830()
{
  result = qword_2A187AF58;
  if (!qword_2A187AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF58);
  }

  return result;
}

unint64_t sub_29EAF6888()
{
  result = qword_2A187AF60;
  if (!qword_2A187AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF60);
  }

  return result;
}

unint64_t sub_29EAF68E0()
{
  result = qword_2A187AF68;
  if (!qword_2A187AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF68);
  }

  return result;
}

unint64_t sub_29EAF6938()
{
  result = qword_2A187AF70;
  if (!qword_2A187AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF70);
  }

  return result;
}

unint64_t sub_29EAF6990()
{
  result = qword_2A187AF78;
  if (!qword_2A187AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF78);
  }

  return result;
}

unint64_t sub_29EAF69E8()
{
  result = qword_2A187AF80;
  if (!qword_2A187AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF80);
  }

  return result;
}

unint64_t sub_29EAF6A40()
{
  result = qword_2A187AF88;
  if (!qword_2A187AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF88);
  }

  return result;
}

unint64_t sub_29EAF6A98()
{
  result = qword_2A187AF90;
  if (!qword_2A187AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF90);
  }

  return result;
}

unint64_t sub_29EAF6AF0()
{
  result = qword_2A187AF98;
  if (!qword_2A187AF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AF98);
  }

  return result;
}

unint64_t sub_29EAF6B48()
{
  result = qword_2A187AFA0;
  if (!qword_2A187AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFA0);
  }

  return result;
}

unint64_t sub_29EAF6BA0()
{
  result = qword_2A187AFA8;
  if (!qword_2A187AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFA8);
  }

  return result;
}

unint64_t sub_29EAF6BF8()
{
  result = qword_2A187AFB0;
  if (!qword_2A187AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFB0);
  }

  return result;
}

unint64_t sub_29EAF6C50()
{
  result = qword_2A187AFB8;
  if (!qword_2A187AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFB8);
  }

  return result;
}

unint64_t sub_29EAF6CA4()
{
  result = qword_2A187AFC0;
  if (!qword_2A187AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFC0);
  }

  return result;
}

unint64_t sub_29EAF6CF8()
{
  result = qword_2A187AFC8;
  if (!qword_2A187AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFC8);
  }

  return result;
}

void sub_29EAF6D9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_29EAF6E0C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_29EAF6E78()
{
  v0 = sub_29EB1454C();
  __swift_allocate_value_buffer(v0, qword_2A187AFD0);
  __swift_project_value_buffer(v0, qword_2A187AFD0);
  type metadata accessor for MigrationStagedDataController();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B010, &unk_29EB19CC0);
  sub_29EB146FC();
  return sub_29EB1453C();
}

uint64_t MigrationStagedDataController.__allocating_init(dataclass:)()
{
  v0 = swift_allocObject();
  MigrationStagedDataController.init(dataclass:)();
  return v0;
}

uint64_t MigrationStagedDataController.init(dataclass:)()
{
  v1 = objc_allocWithZone(MEMORY[0x29EDBA170]);
  v2 = sub_29EB1467C();
  v3 = [v1 initWithServiceName_];

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  [v3 resume];
  *(v0 + 16) = v3;
  return v0;
}

uint64_t MigrationStagedDataController.deinit()
{
  [*(v0 + 16) invalidate];

  return v0;
}

uint64_t MigrationStagedDataController.__deallocating_deinit()
{
  [*(v0 + 16) invalidate];

  return MEMORY[0x2A1C73398](v0, 24, 7);
}

uint64_t sub_29EAF70F8()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  v3 = *(MEMORY[0x29EDCA478] + 4);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_29EAF71F0;
  v5 = MEMORY[0x29EDC9A98];

  return MEMORY[0x2A1C73C80](v0 + 6, 0, 0, 0xD000000000000010, 0x800000029EB1C570, sub_29EAF7900, v2, v5);
}

uint64_t sub_29EAF71F0()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v4 = sub_29EAF7328;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_29EAF730C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAF7328()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2(0);
}

uint64_t sub_29EAF7390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v5 = sub_29EB13FFC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EB1400C();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B018, &qword_29EB19CE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v39 - v14;
  v16 = *(a2 + 16);
  v17 = *(v12 + 16);
  v45 = a1;
  v39 = v17;
  v17(v15, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  v20 = *(v12 + 32);
  v20(v19 + v18, v15, v11);
  v51 = sub_29EAFB148;
  v52 = v19;
  aBlock = MEMORY[0x29EDCA5F8];
  v48 = 1107296256;
  v49 = sub_29EAF6D9C;
  v50 = &block_descriptor_64;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v21);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  if (swift_dynamicCast())
  {
    v24 = v46;
    v39(v15, v45, v11);
    v25 = swift_allocObject();
    v20(v25 + v18, v15, v11);
    v51 = sub_29EAFB15C;
    v52 = v25;
    aBlock = MEMORY[0x29EDCA5F8];
    v48 = 1107296256;
    v49 = sub_29EAF798C;
    v50 = &block_descriptor_70_0;
    v26 = _Block_copy(&aBlock);

    [v24 getHasAvailableDataWithDataclass:v40 completion:v26];
    _Block_release(v26);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_2A187A348 != -1)
    {
      swift_once();
    }

    v28 = sub_29EB1454C();
    __swift_project_value_buffer(v28, qword_2A187AFD0);
    v29 = sub_29EB1452C();
    v30 = sub_29EB14A5C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v46 = v23;
      aBlock = v32;
      *v31 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B008, &qword_29EB19CB8);
      v33 = sub_29EB146FC();
      v35 = sub_29EABC674(v33, v34, &aBlock);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29EAA5000, v29, v30, "Connection does not conform to %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x29EDA8150](v32, -1, -1);
      MEMORY[0x29EDA8150](v31, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    v36 = v41;
    v37 = v44;
    sub_29EB1415C();
    v38 = sub_29EB13F9C();
    (*(v43 + 8))(v36, v37);
    aBlock = v38;
    return sub_29EB148BC();
  }
}

uint64_t sub_29EAF7908(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B018, &qword_29EB19CE0);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B018, &qword_29EB19CE0);
    return sub_29EB148CC();
  }
}

void sub_29EAF798C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t MigrationStagedDataController.importAvailableData(progressBlock:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAF7A28, 0, 0);
}

uint64_t sub_29EAF7A28()
{
  v1 = 0xD000000000000053;
  v2 = *(v0 + 88);
  v3 = [objc_opt_self() progressWithTotalUnitCount_];
  *(v0 + 112) = v3;
  if (v2)
  {
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = type metadata accessor for ProgressObserver();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_observationBlock];
    *v8 = v5;
    v8[1] = v4;
    *&v7[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress] = v3;
    sub_29EAF88A0(v5);
    v9 = v3;
    sub_29EAF88A0(v5);
    *(v0 + 72) = v7;
    *(v0 + 80) = v6;
    v10 = v9;
    v11 = objc_msgSendSuper2((v0 + 72), sel_init);
    v12 = sub_29EB1467C();
    [v10 addObserver:v11 forKeyPath:v12 options:0 context:0];

    sub_29EAFAB14(v5);
    v13 = v11;
  }

  else
  {
    v11 = 0;
  }

  *(v0 + 120) = v11;
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  v15 = 0x800000029EB1C590;
  *(v0 + 40) = 0xD000000000000053;
  *(v0 + 48) = 0x800000029EB1C590;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v16 = *(v0 + 16);
    v17 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v17);
    v15 = v18;
  }

  *(v0 + 136) = v15;
  v19 = swift_task_alloc();
  *(v0 + 144) = v19;
  *v19 = v0;
  v19[1] = sub_29EAF7CBC;
  v20 = *(v0 + 104);

  return sub_29EAF81BC(v19, v1, v15, v3, sub_29EAF80D8, v14);
}

uint64_t sub_29EAF7CBC()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v6 = sub_29EAF7E90;
  }

  else
  {
    v6 = sub_29EAF7E28;
  }

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29EAF7E28()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29EAF7E90()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);
  v3 = *(v0 + 152);

  return v2();
}

id sub_29EAF7EF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a2, v8);
  v13 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_29EAFB0B4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_58;
  v15 = _Block_copy(aBlock);
  v16 = a4;

  v17 = [a1 importAvailableDataWithDataclass:a3 completion:v15];
  _Block_release(v15);
  return v17;
}

uint64_t sub_29EAF80E0(id a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress);
    v5 = sub_29EB1467C();
    [v3 removeObserver:a2 forKeyPath:v5];
  }

  if (a1)
  {
    v6 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
    return sub_29EB148CC();
  }
}

uint64_t sub_29EAF81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  return MEMORY[0x2A1C73D48](sub_29EAF81E4, 0, 0);
}

uint64_t sub_29EAF81E4()
{
  v21 = v0;
  if (qword_2A187A348 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_29EB1454C();
  *(v0 + 64) = __swift_project_value_buffer(v2, qword_2A187AFD0);

  v3 = sub_29EB1452C();
  v4 = sub_29EB14A4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_29EABC674(v6, v5, &v20);
    _os_log_impl(&dword_29EAA5000, v3, v4, "Starting to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v9 = *(v0 + 56);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v12 = *(v0 + 16);
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  v14 = *(v0 + 40);
  *(v13 + 16) = v9;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  *(v13 + 40) = v14;
  *(v13 + 56) = v10;
  v15 = swift_task_alloc();
  *(v0 + 80) = v15;
  v15[2] = v10;
  v15[3] = v12;
  v15[4] = v11;
  v16 = *(MEMORY[0x29EDCA470] + 4);
  v17 = swift_task_alloc();
  *(v0 + 88) = v17;
  *v17 = v0;
  v17[1] = sub_29EAF8430;
  v18 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C78](v17, &unk_29EB19CD8, v13, sub_29EAFAE78, v15, 0, 0, v18);
}

uint64_t sub_29EAF8430()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_29EAF86DC;
  }

  else
  {
    v6 = *(v2 + 72);
    v5 = *(v2 + 80);

    v4 = sub_29EAF8554;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAF8554()
{
  v15 = v0;
  v1 = v0[8];
  v2 = v0[3];

  v3 = sub_29EB1452C();
  v4 = sub_29EB14A4C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_29EABC674(v6, v5, &v14);
    *(v7 + 12) = 2080;
    v9 = sub_29EB146FC();
    v11 = sub_29EABC674(v9, v10, &v14);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_29EAA5000, v3, v4, "Finished %s -- %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_29EAF86DC()
{
  v22 = v0;
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[3];

  v6 = v1;
  v7 = sub_29EB1452C();
  v8 = sub_29EB14A5C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[12];
    v11 = v0[2];
    v10 = v0[3];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_29EABC674(v11, v10, &v21);
    *(v12 + 12) = 2112;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_29EAA5000, v7, v8, "Failed to %s -- %@", v12, 0x16u);
    sub_29EAAE590(v13);
    MEMORY[0x29EDA8150](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x29EDA8150](v14, -1, -1);
    MEMORY[0x29EDA8150](v12, -1, -1);
  }

  v17 = v0[12];
  swift_willThrow();
  v18 = v0[1];
  v19 = v0[12];

  return v18();
}

uint64_t sub_29EAF88A0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t MigrationStagedDataController.stageMigrationData(url:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2A1C73D48](sub_29EAF88D0, 0, 0);
}

uint64_t sub_29EAF88D0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v1[2].i64[0] = 0;
  v2 = *(MEMORY[0x29EDCA478] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_29EAF89C4;
  v4 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v3, 0, 0, 0xD000000000000018, 0x800000029EB1C610, sub_29EAFAB24, v1, v4);
}

uint64_t sub_29EAF89C4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_29EAF33BC;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_29EAC3E4C;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAF8AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a4;
  v47 = a3;
  v6 = sub_29EB13FFC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29EB1400C();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v44 - v16;
  v18 = *(a2 + 16);
  v19 = *(v14 + 16);
  v52 = a1;
  v45 = v19;
  v19(v17, a1, v13);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v21 = swift_allocObject();
  v22 = *(v14 + 32);
  v51 = v13;
  v44 = v22;
  v22(v21 + v20, v17, v13);
  v58 = sub_29EAFAD10;
  v59 = v21;
  aBlock = MEMORY[0x29EDCA5F8];
  v55 = 1107296256;
  v56 = sub_29EAF6D9C;
  v57 = &block_descriptor_35;
  v23 = _Block_copy(&aBlock);

  v24 = [v18 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v23);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  if (swift_dynamicCast())
  {
    v26 = v53;
    v49 = sub_29EAADFF0();
    v50 = v37;
    v38 = sub_29EB141BC();
    v39 = sub_29EB142BC();
    v40 = v51;
    v45(v17, v52, v51);
    v41 = swift_allocObject();
    v44(v41 + v20, v17, v40);
    v58 = sub_29EACDDD8;
    v59 = v41;
    aBlock = MEMORY[0x29EDCA5F8];
    v55 = 1107296256;
    v56 = sub_29EAF6E0C;
    v57 = &block_descriptor_41;
    v42 = _Block_copy(&aBlock);

    [v26 stageMigrationDataWithDataclass:v46 url:v38 sandboxExtension:v39 completion:v42];
    swift_unknownObjectRelease();
    _Block_release(v42);

    return sub_29EAAD010(v49, v50);
  }

  else
  {
    if (qword_2A187A348 != -1)
    {
      swift_once();
    }

    v27 = sub_29EB1454C();
    __swift_project_value_buffer(v27, qword_2A187AFD0);
    v28 = sub_29EB1452C();
    v29 = sub_29EB14A5C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v25;
      aBlock = v31;
      *v30 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B008, &qword_29EB19CB8);
      v32 = sub_29EB146FC();
      v34 = sub_29EABC674(v32, v33, &aBlock);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_29EAA5000, v28, v29, "Connection does not conform to %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x29EDA8150](v31, -1, -1);
      MEMORY[0x29EDA8150](v30, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    v35 = v50;
    sub_29EB1415C();
    v36 = sub_29EB13F9C();
    (*(v49 + 8))(v12, v35);
    aBlock = v36;
    return sub_29EB148BC();
  }
}

uint64_t sub_29EAF90B8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_2A187A348 != -1)
  {
    swift_once();
  }

  v7 = sub_29EB1454C();
  __swift_project_value_buffer(v7, qword_2A187AFD0);
  v8 = a1;
  v9 = sub_29EB1452C();
  v10 = sub_29EB14A5C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_29EAA5000, v9, v10, "Failed getting available data -- %@", v11, 0xCu);
    sub_29EAAE590(v12);
    MEMORY[0x29EDA8150](v12, -1, -1);
    MEMORY[0x29EDA8150](v11, -1, -1);
  }

  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_29EB148BC();
}

uint64_t MigrationStagedDataController.importAvailableData(targetBundleID:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAF925C, 0, 0);
}

uint64_t sub_29EAF925C()
{
  v1 = 0xD000000000000053;
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = 0;
  *(v0 + 40) = 0xD000000000000053;
  v5 = 0x800000029EB1C590;
  *(v0 + 48) = 0x800000029EB1C590;
  *(v0 + 56) = 40;
  *(v0 + 64) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 32) & 1) == 0)
  {
    v6 = *(v0 + 16);
    v7 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v7);
    v5 = v8;
  }

  *(v0 + 104) = v5;
  v9 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  *(v0 + 112) = v9;
  v10 = swift_task_alloc();
  *(v0 + 120) = v10;
  *v10 = v0;
  v10[1] = sub_29EAF9410;
  v11 = *(v0 + 88);

  return sub_29EAF81BC(v10, v1, v5, v9, sub_29EAFAB30, v4);
}

uint64_t sub_29EAF9410()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_29EAF9540;
  }

  else
  {
    v6 = v2[13];
    v5 = v2[14];
    v7 = v2[12];

    v4 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAF9540()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);
  v4 = *(v0 + 128);

  return v3();
}

id sub_29EAF95B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = aBlock - v11;
  v13 = sub_29EB1467C();
  (*(v9 + 16))(v12, a2, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v12, v8);
  aBlock[4] = sub_29EACD6C4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6E0C;
  aBlock[3] = &block_descriptor_29;
  v16 = _Block_copy(aBlock);

  v17 = [a1 importAvailableDataWithTargetBundleID:v13 dataclass:a5 completion:v16];
  _Block_release(v16);

  return v17;
}

uint64_t static MigrationStagedDataController.clearConsentChecks(bundleID:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2A1C73D48](sub_29EAF97C8, 0, 0);
}

uint64_t sub_29EAF97C8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_allocWithZone(MEMORY[0x29EDBA170]);
  v4 = sub_29EB1467C();
  v5 = [v3 initWithServiceName_];
  v0[4] = v5;

  v6 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  [v5 resume];
  v7 = swift_task_alloc();
  v0[5] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v8 = *(MEMORY[0x29EDCA478] + 4);
  v9 = swift_task_alloc();
  v0[6] = v9;
  *v9 = v0;
  v9[1] = sub_29EAF9974;
  v10 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v9, 0, 0, 0xD00000000000001DLL, 0x800000029EB1C630, sub_29EAFAB3C, v7, v10);
}

uint64_t sub_29EAF9974()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_29EAF9AF4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_29EAF9A90;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EAF9A90()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EAF9AF4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

void sub_29EAF9B60(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a4;
  v19[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = v19 - v9;
  v20 = *(v7 + 16);
  v20(v19 - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v19[0] = *(v7 + 32);
  (v19[0])(v12 + v11, v10, v6);
  v28 = sub_29EAFAC7C;
  v29 = v12;
  aBlock = MEMORY[0x29EDCA5F8];
  v25 = 1107296256;
  v26 = sub_29EAF6D9C;
  v27 = &block_descriptor_7;
  v13 = _Block_copy(&aBlock);

  v14 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  swift_dynamicCast();
  v15 = v23;
  v16 = sub_29EB1467C();
  v20(v10, v21, v6);
  v17 = swift_allocObject();
  (v19[0])(v17 + v11, v10, v6);
  v28 = sub_29EACDDD8;
  v29 = v17;
  aBlock = MEMORY[0x29EDCA5F8];
  v25 = 1107296256;
  v26 = sub_29EAF6E0C;
  v27 = &block_descriptor_23;
  v18 = _Block_copy(&aBlock);

  [v15 clearConsentChecksWithBundleID:v16 completion:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

uint64_t sub_29EAF9E70(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  return sub_29EB148BC();
}

uint64_t sub_29EAF9EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2A1C73D48](sub_29EAF9EEC, 0, 0);
}

uint64_t sub_29EAF9EEC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = v5;
  v6 = *(MEMORY[0x29EDCA478] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_29EAF9FF4;
  v8 = *(v0 + 16);
  v9 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v8, 0, 0, 0xD000000000000053, 0x800000029EB1C590, sub_29EAFAE84, v3, v9);
}

uint64_t sub_29EAF9FF4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EAFA130, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_29EAFA130()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

void sub_29EAFA194(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, void *a7)
{
  v47 = a7;
  v48 = a6;
  v49 = a5;
  v11 = sub_29EB13FFC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29EB1400C();
  v52 = *(v50 - 8);
  v14 = *(v52 + 64);
  MEMORY[0x2A1C7C4A8](v50);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v46 - v20;
  v22 = *(a2 + 16);
  (*(v18 + 16))(&v46 - v20, a1, v17);
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = swift_allocObject();
  v46 = a3;
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;
  (*(v18 + 32))(v24 + v23, v21, v17);
  aBlock[4] = sub_29EAFAF64;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EAF6D9C;
  aBlock[3] = &block_descriptor_52;
  v25 = _Block_copy(aBlock);

  v26 = [v22 remoteObjectProxyWithErrorHandler_];
  _Block_release(v25);
  sub_29EB14BCC();
  swift_unknownObjectRelease();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B000, &qword_29EB19CB0);
  if (swift_dynamicCast())
  {
    v28 = v49(v53, a1);
    if (v28)
    {
      v29 = v28;
      v30 = v47;
      [v47 addChild:v28 withPendingUnitCount:{objc_msgSend(v47, sel_totalUnitCount)}];
      if ([v30 isCancelled])
      {
        if (qword_2A187A348 != -1)
        {
          swift_once();
        }

        v31 = sub_29EB1454C();
        __swift_project_value_buffer(v31, qword_2A187AFD0);

        v32 = sub_29EB1452C();
        v33 = sub_29EB14A5C();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          aBlock[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_29EABC674(v46, a4, aBlock);
          _os_log_impl(&dword_29EAA5000, v32, v33, "Parent progress of %s is already cancelled. Immediately cancelling child", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          MEMORY[0x29EDA8150](v35, -1, -1);
          MEMORY[0x29EDA8150](v34, -1, -1);
        }

        [v29 cancel];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_2A187A348 != -1)
    {
      swift_once();
    }

    v36 = sub_29EB1454C();
    __swift_project_value_buffer(v36, qword_2A187AFD0);
    v37 = sub_29EB1452C();
    v38 = sub_29EB14A5C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v53 = v27;
      aBlock[0] = v40;
      *v39 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B008, &qword_29EB19CB8);
      v41 = sub_29EB146FC();
      v43 = sub_29EABC674(v41, v42, aBlock);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_29EAA5000, v37, v38, "Connection does not conform to %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x29EDA8150](v40, -1, -1);
      MEMORY[0x29EDA8150](v39, -1, -1);
    }

    sub_29EB13FBC();
    sub_29EABCE10(MEMORY[0x29EDCA190]);
    sub_29EACD300();
    v44 = v50;
    sub_29EB1415C();
    v45 = sub_29EB13F9C();
    (*(v52 + 8))(v16, v44);
    aBlock[0] = v45;
    sub_29EB148BC();
  }
}

uint64_t sub_29EAFA7C8(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_2A187A348 != -1)
  {
    swift_once();
  }

  v6 = sub_29EB1454C();
  __swift_project_value_buffer(v6, qword_2A187AFD0);

  v7 = a1;
  v8 = sub_29EB1452C();
  v9 = sub_29EB14A5C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_29EABC674(a2, a3, &v17);
    *(v10 + 12) = 2112;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_29EAA5000, v8, v9, "Failed %s -- %@", v10, 0x16u);
    sub_29EAAE590(v11);
    MEMORY[0x29EDA8150](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x29EDA8150](v12, -1, -1);
    MEMORY[0x29EDA8150](v10, -1, -1);
  }

  v17 = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  return sub_29EB148BC();
}

void sub_29EAFA9B0(void *a1, uint64_t a2, unint64_t a3)
{
  [a1 cancel];
  if (qword_2A187A348 != -1)
  {
    swift_once();
  }

  v5 = sub_29EB1454C();
  __swift_project_value_buffer(v5, qword_2A187AFD0);

  oslog = sub_29EB1452C();
  v6 = sub_29EB14A3C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_29EABC674(a2, a3, &v10);
    _os_log_impl(&dword_29EAA5000, oslog, v6, "Cancelling %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x29EDA8150](v8, -1, -1);
    MEMORY[0x29EDA8150](v7, -1, -1);
  }
}

uint64_t sub_29EAFAB14(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_29EAFAB4C()
{
  result = qword_2A187AFE8;
  if (!qword_2A187AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFE8);
  }

  return result;
}

unint64_t sub_29EAFABA4()
{
  result = qword_2A187AFF0;
  if (!qword_2A187AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187AFF8, &qword_29EB19BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AFF0);
  }

  return result;
}

uint64_t sub_29EAFAC7C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8) + 80);

  return sub_29EAF9E70(a1);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EAFADA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_29EAAAE5C;

  return sub_29EAF9EC0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_29EAFAE94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EAFAF64(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_29EAFA7C8(a1, v4, v5);
}

uint64_t sub_29EAFAFE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EAFB0B4(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_29EAF80E0(a1, v4);
}

uint64_t sub_29EAFB15C(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B018, &qword_29EB19CE0) - 8) + 80);

  return sub_29EAF7908(a1, a2);
}

uint64_t MigrationAppIdentifier.StoreIdentifier.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MigrationAppIdentifier.StoreIdentifier.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_29EAFB2F4()
{
  result = qword_2A187B020;
  if (!qword_2A187B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B020);
  }

  return result;
}

unint64_t sub_29EAFB408()
{
  result = qword_2A187B028;
  if (!qword_2A187B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B028);
  }

  return result;
}

uint64_t ResourcesImportRequest.sourceAppIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
}

uint64_t ResourcesImportRequest.sourceVersion.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

__n128 ResourcesImportRequest.init(sourceAppIdentifier:sourceVersion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

void sub_29EAFB524(void *a1)
{
  v3 = (v1 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest);
  v5 = *(v1 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest);
  v4 = *(v1 + OBJC_IVAR___AMKResourcesImportRequest_resourcesImportRequest + 8);
  v7 = v3[2];
  v6 = v3[3];
  v9 = v3[4];
  v8 = v3[5];
  v10 = type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier];
  *v12 = v5;
  *(v12 + 1) = v4;
  *(v12 + 2) = v7;
  *(v12 + 3) = v6;
  *(v12 + 4) = v9;
  *(v12 + 5) = v8;
  v19.receiver = v11;
  v19.super_class = v10;

  v13 = objc_msgSendSuper2(&v19, sel_init);
  v14 = sub_29EB1467C();
  [a1 encodeObject:v13 forKey:{v14, v19.receiver, v19.super_class}];

  v15 = v3[6];
  v16 = v3[7];
  v17 = sub_29EB1467C();
  v18 = sub_29EB1467C();
  [a1 encodeObject:v17 forKey:v18];
}

uint64_t ResourcesImportRequest.XPCHelper.init(coder:)(void *a1)
{
  type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v3 = v2;
    sub_29EAB77D4();
    v4 = sub_29EB14B3C();
    if (v4)
    {
      v7 = 0;
      v5 = v4;
      sub_29EB1469C();
    }
  }

  type metadata accessor for ResourcesImportRequest.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id ResourcesImportRequest.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResourcesImportRequest.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResourcesImportRequest.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29EAFB9B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EAFB9F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of ResourcesImporting.importResources(at:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EAAAE5C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DataclassResourcesImporting.importResources(at:importRequest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EACCD1C;

  return v13(a1, a2, a3, a4);
}

__n128 AppResourcesMetrics.deviceToDeviceTransferMetrics.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  result = *(v1 + 40);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  a1[1].n128_u64[1] = v3;
  a1[2].n128_u8[0] = v4;
  a1[2].n128_u64[1] = v5;
  return result;
}

__n128 AppResourcesMetrics.XPCHelper.appResourcesMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___AMKAppExtensionMetrics_appResourcesMetrics;
  v3 = *(v1 + OBJC_IVAR___AMKAppExtensionMetrics_appResourcesMetrics + 48);
  *(a1 + 32) = *(v1 + OBJC_IVAR___AMKAppExtensionMetrics_appResourcesMetrics + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = *(v2 + 80);
  result = *v2;
  v5 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v5;
  return result;
}

void sub_29EAFBE28(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKAppExtensionMetrics_appResourcesMetrics;
  v4 = *(v1 + OBJC_IVAR___AMKAppExtensionMetrics_appResourcesMetrics);
  v5 = sub_29EB14BBC();
  v6 = sub_29EB1467C();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v3 + 8);
  v8 = sub_29EB14BBC();
  v9 = sub_29EB1467C();
  [a1 encodeObject:v8 forKey:v9];

  v10 = *(v3 + 16);
  v11 = sub_29EB14FCC();
  v12 = sub_29EB1467C();
  [a1 encodeObject:v11 forKey:v12];

  v13 = *(v3 + 24);
  v14 = sub_29EB14FCC();
  v15 = sub_29EB1467C();
  [a1 encodeObject:v14 forKey:v15];

  v16 = *(v3 + 32);
  v17 = sub_29EB14FCC();
  v18 = sub_29EB1467C();
  [a1 encodeObject:v17 forKey:v18];

  v19 = *(v3 + 40);
  v20 = *(v3 + 48);
  v21 = *(v3 + 56);
  v22 = *(v3 + 64);
  v23 = *(v3 + 72);
  v24 = *(v3 + 80);
  v25 = type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
  v26 = objc_allocWithZone(v25);
  v27 = &v26[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics];
  *v27 = v19;
  *(v27 + 1) = v20;
  v27[16] = v21;
  *(v27 + 3) = v22;
  v27[32] = v23;
  *(v27 + 5) = v24;
  v30.receiver = v26;
  v30.super_class = v25;
  v28 = objc_msgSendSuper2(&v30, sel_init);
  v29 = sub_29EB1467C();
  [a1 encodeObject:v28 forKey:v29];
}

id AppResourcesMetrics.XPCHelper.init(coder:)(void *a1)
{
  v2 = v1;
  sub_29EAC44F8();
  v4 = sub_29EB14B3C();
  if (v4)
  {
    v5 = v4;
    if (!sub_29EB14BAC())
    {
      v6 = sub_29EB14B3C();
      if (v6)
      {
        v7 = v6;
        v8 = sub_29EB14BAC();
        if (v8 <= 1 && (v9 = v8, (v10 = sub_29EB14B3C()) != 0))
        {
          v11 = v10;
          v12 = sub_29EB14B3C();
          if (v12)
          {
            v13 = v12;
            v14 = sub_29EB14B3C();
            if (v14)
            {
              v15 = v14;
              type metadata accessor for DeviceToDeviceTransferMetrics.XPCHelper();
              v16 = sub_29EB14B3C();
              if (v16)
              {
                v17 = v16;
                v31 = sub_29EB14FBC();
                v30 = sub_29EB14FBC();
                v18 = sub_29EB14FBC();

                v19 = v17[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 16];
                v20 = *&v17[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 24];
                v21 = v17[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 32];
                v22 = *&v17[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics + 40];
                v29 = *&v17[OBJC_IVAR___AMKDeviceToDeviceTransferMetrics_deviceToDeviceTransferMetrics];

                v33 = v21;
                v23 = &v2[OBJC_IVAR___AMKAppExtensionMetrics_appResourcesMetrics];
                *v23 = 0;
                *(v23 + 1) = v9;
                *(v23 + 2) = v31;
                *(v23 + 3) = v30;
                *(v23 + 4) = v18;
                *(v23 + 40) = v29;
                v23[56] = v19;
                *(v23 + 8) = v20;
                v23[72] = v21;
                *(v23 + 10) = v22;
                v32.receiver = v2;
                v32.super_class = type metadata accessor for AppResourcesMetrics.XPCHelper();
                v24 = objc_msgSendSuper2(&v32, sel_init);

                return v24;
              }

              v28 = v7;
              v27 = v11;
              v26 = v13;
              v5 = v15;
            }

            else
            {
              v28 = v5;
              v27 = v7;
              v26 = v11;
              v5 = v13;
            }
          }

          else
          {
            v27 = v5;
            v26 = v7;
            v5 = v11;
          }
        }

        else
        {
          v26 = v5;
          v5 = v7;
        }
      }
    }
  }

  type metadata accessor for AppResourcesMetrics.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id AppResourcesMetrics.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppResourcesMetrics.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppResourcesMetrics.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_29EAFC53C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29EAFC590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

double AppContentMetrics.init(serializedDataMetrics:)@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[24];
  v4 = *(a1 + 4);
  v5 = a1[40];
  v6 = *(a1 + 6);
  *a2 = 0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 8);
  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0;
  *(a2 + 120) = 2;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  return result;
}

double AppContentMetrics.init(metrictype:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 2;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  return result;
}

__n128 AppContentMetrics.init(appResourcesMetrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  v2 = *(a1 + 48);
  *(a2 + 96) = *(a1 + 32);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 64);
  *(a2 + 144) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 64) = *a1;
  *(a2 + 80) = v4;
  return result;
}

uint64_t AppContentMetrics.MetricType.hashValue.getter()
{
  v1 = *v0;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v1);
  return sub_29EB14FAC();
}

__n128 AppContentMetrics.serializedDataMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v3;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

__n128 AppContentMetrics.appResourcesMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *(a1 + 32) = *(v1 + 96);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 128);
  *(a1 + 80) = *(v1 + 144);
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 AppContentMetrics.XPCHelper.appContentMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics;
  v3 = *(v1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics + 112);
  *(a1 + 96) = *(v1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics + 96);
  *(a1 + 112) = v3;
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = *(v2 + 144);
  v4 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  result = *v2;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  return result;
}

void sub_29EAFC848(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics;
  *(v1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics);
  *(v1 + OBJC_IVAR___AMKAppMetrics_appContentMetrics);
  v4 = sub_29EB1467C();

  v5 = sub_29EB1467C();
  [a1 encodeObject:v4 forKey:v5];

  v6 = *(v3 + 32);
  v7 = 0x29F37F000;
  if (v6 != 2)
  {
    v8 = *(v3 + 56);
    v9 = *(v3 + 48);
    v10 = *(v3 + 40);
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = *(v3 + 8);
    v14 = type metadata accessor for SerializedDataMetrics.XPCHelper();
    v15 = objc_allocWithZone(v14);
    v16 = &v15[OBJC_IVAR___AMKSerializedDataMetrics_serializedDataMetrics];
    *v16 = v13 & 1;
    *(v16 + 1) = v11;
    *(v16 + 2) = v12;
    v7 = 0x29F37F000uLL;
    v16[24] = v6 & 1;
    *(v16 + 4) = v10;
    v16[40] = v9 & 1;
    *(v16 + 6) = v8;
    v29.receiver = v15;
    v29.super_class = v14;
    v17 = objc_msgSendSuper2(&v29, sel_init);
    v18 = sub_29EB1467C();
    [a1 encodeObject:v17 forKey:v18];
  }

  v19 = *(v3 + 120);
  v36 = *(v3 + 112);
  v20 = *(v3 + 80);
  v33 = *(v3 + 64);
  v34 = v20;
  v35 = *(v3 + 96);
  v21 = *(v3 + 128);
  v32 = *(v3 + 144);
  v31 = v21;
  if (v19 != 2)
  {
    v22 = type metadata accessor for AppResourcesMetrics.XPCHelper();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR___AMKAppExtensionMetrics_appResourcesMetrics];
    v25 = v36;
    v26 = v35;
    *(v24 + 1) = v34;
    *(v24 + 2) = v26;
    *v24 = v33;
    *(v24 + 6) = v25;
    *(v24 + 7) = v19;
    *(v24 + 4) = v31;
    *(v24 + 10) = v32;
    v30.receiver = v23;
    v30.super_class = v22;
    v27 = objc_msgSendSuper2(&v30, *(v7 + 2544));
    v28 = sub_29EB1467C();
    [a1 encodeObject:v27 forKey:v28];
  }
}

uint64_t AppContentMetrics.XPCHelper.init(coder:)(void *a1)
{
  sub_29EAB77D4();
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v5 = 0;
    v6 = 0;
    v3 = v2;
    sub_29EB1469C();
  }

  type metadata accessor for AppContentMetrics.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id AppContentMetrics.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppContentMetrics.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppContentMetrics.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29EAFCFB4()
{
  result = qword_2A187B060;
  if (!qword_2A187B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B060);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_29EAFD03C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[152])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_29EAFD080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *MigrationRequestWithOptions.init(destinationPlatform:options:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

uint64_t static MigrationDefaultSupportedOptions.allCases.getter()
{
  if (qword_2A187A350 != -1)
  {
    swift_once();
  }
}

uint64_t MigrationDefaultSupportedOptions.init(rawValue:)@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_29EAFD274@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 8);

  *a2 = 1;
  return result;
}

void sub_29EAFD300()
{
  sub_29EB14F8C();
  sub_29EB14D2C();
  __break(1u);
}

void sub_29EAFD368()
{
  sub_29EB14F8C();
  sub_29EB14D2C();
  __break(1u);
}

uint64_t sub_29EAFD3CC@<X0>(void *a1@<X8>)
{
  if (qword_2A187A350 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_2A187B070;
}

uint64_t MigrationRequestWithOptions.destinationPlatform.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RawMigrationRequest.destinationPlatform.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void *RawMigrationRequest.init(destinationPlatform:options:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = a2;
  return result;
}

uint64_t sub_29EAFD474@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v82 = a3;
  v4 = a2;
  v73 = a4;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](a1);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v77 = &v70 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_29EB14B6C();
  v13 = *(*(v87 - 8) + 64);
  v14 = MEMORY[0x2A1C7C4A8](v87);
  v86 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v85 = &v70 - v17;
  v18 = 0;
  v19 = a1[2];
  v20 = *(v19 + 64);
  v75 = v19 + 64;
  v72 = *a1;
  v71 = a1[1];
  v79 = v19;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v74 = (v21 + 63) >> 6;
  v88 = TupleTypeMetadata2;
  v76 = v6 + 16;
  v90 = (v6 + 32);
  v83 = (v16 + 32);
  v84 = TupleTypeMetadata2 - 8;
  v78 = v6;
  v80 = (v6 + 8);
  v24 = MEMORY[0x29EDCA198];
  v81 = v4;
  v89 = v10;
  if ((v22 & v20) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v91 = v24;
    v28 = v4;
    v29 = v18;
LABEL_15:
    v32 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v33 = v32 | (v29 << 6);
    v35 = v78;
    v34 = v79;
    v36 = v77;
    (*(v78 + 16))(v77, *(v79 + 48) + *(v78 + 72) * v33, v28);
    v37 = (*(v34 + 56) + 16 * v33);
    v39 = *v37;
    v38 = v37[1];
    v40 = v88;
    v41 = v86;
    v42 = &v86[*(v88 + 48)];
    v43 = *(v35 + 32);
    v4 = v28;
    v43(v86, v36, v28);
    *v42 = v39;
    v42[1] = v38;
    v44 = *(v40 - 8);
    (*(v44 + 56))(v41, 0, 1, v40);
    sub_29EAB0308(v39, v38);
    v31 = v29;
    v45 = v41;
    v10 = v89;
    v24 = v91;
LABEL_16:
    v46 = v85;
    (*v83)(v85, v45, v87);
    if ((*(v44 + 48))(v46, 1, v40) == 1)
    {

      v68 = v73;
      v69 = v71;
      *v73 = v72;
      v68[1] = v69;
      v68[2] = v24;
      return result;
    }

    v91 = v31;
    v47 = &v46[*(v40 + 48)];
    v48 = *v47;
    v49 = v47[1];
    (*v90)(v10, v46, v4);
    sub_29EB147DC();
    v51 = v93;
    v50 = v94;
    sub_29EAB0308(v48, v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v24;
    v54 = sub_29EABC4C0(v51, v50);
    v55 = v24[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      break;
    }

    v58 = v53;
    if (v24[3] >= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v53)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_29EAFE0F4();
        if (v58)
        {
          goto LABEL_5;
        }
      }

LABEL_24:
      v24 = v92;
      v92[(v54 >> 6) + 8] |= 1 << v54;
      v61 = (v24[6] + 16 * v54);
      *v61 = v51;
      v61[1] = v50;
      v62 = (v24[7] + 16 * v54);
      *v62 = v48;
      v62[1] = v49;
      sub_29EAAD010(v48, v49);
      v4 = v81;
      v10 = v89;
      (*v80)(v89, v81);
      v63 = v24[2];
      v64 = __OFADD__(v63, 1);
      v65 = v63 + 1;
      if (v64)
      {
        goto LABEL_33;
      }

      v24[2] = v65;
      v18 = v91;
      if (!v23)
      {
LABEL_7:
        if (v74 <= v18 + 1)
        {
          v30 = v18 + 1;
        }

        else
        {
          v30 = v74;
        }

        v31 = (v30 - 1);
        while (1)
        {
          v29 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v29 >= v74)
          {
            v40 = v88;
            v44 = *(v88 - 8);
            v66 = v86;
            (*(v44 + 56))(v86, 1, 1, v88);
            v45 = v66;
            v23 = 0;
            goto LABEL_16;
          }

          v23 = *(v75 + 8 * v29);
          v18 = (v18 + 1);
          if (v23)
          {
            v91 = v24;
            v28 = v4;
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }
    }

    else
    {
      sub_29EAFE278(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_29EABC4C0(v51, v50);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_34;
      }

      v54 = v59;
      if ((v58 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_5:

      v24 = v92;
      v25 = (v92[7] + 16 * v54);
      v26 = *v25;
      v27 = v25[1];
      *v25 = v48;
      v25[1] = v49;
      sub_29EAAD010(v26, v27);
      sub_29EAAD010(v48, v49);
      v4 = v81;
      v10 = v89;
      (*v80)(v89, v81);
      v18 = v91;
      if (!v23)
      {
        goto LABEL_7;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_29EB14EFC();
  __break(1u);
  return result;
}

void sub_29EAFDACC(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKRawMigrationRequest_request;
  v4 = *(v1 + OBJC_IVAR___AMKRawMigrationRequest_request);
  v5 = *(v1 + OBJC_IVAR___AMKRawMigrationRequest_request + 8);
  v6 = sub_29EB1467C();
  v7 = sub_29EB1467C();
  [a1 encodeObject:v6 forKey:v7];

  v8 = *(v3 + 16);
  v9 = sub_29EB1461C();
  v10 = sub_29EB1467C();
  [a1 encodeObject:v9 forKey:v10];
}

uint64_t RawMigrationRequest.XPCHelper.init(coder:)(void *a1)
{
  sub_29EABD730(0, &qword_2A187B080, 0x29EDBA0F8);
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_29EB1469C();
  }

  type metadata accessor for RawMigrationRequest.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id RawMigrationRequest.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RawMigrationRequest.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RawMigrationRequest.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_29EAFDF0C()
{
  result = qword_2A187B0A0;
  if (!qword_2A187B0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B0A0);
  }

  return result;
}

unint64_t sub_29EAFDF64()
{
  result = qword_2A187B0A8;
  if (!qword_2A187B0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_2A187B0B0, &qword_29EB1A108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B0A8);
  }

  return result;
}

uint64_t sub_29EAFDFD8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_29EAFE0F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187B140, &qword_29EB1A270);
  v2 = *v0;
  v3 = sub_29EB14D4C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_29EAB0308(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_29EAFE278(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187B140, &qword_29EB1A270);
  v36 = a2;
  result = sub_29EB14D5C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_29EAB0308(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_29EB14F8C();
      sub_29EB1473C();
      result = sub_29EB14FAC();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void static MigrationStatus.importStatus.getter(uint64_t *a1@<X8>)
{
  v2 = sub_29EB1422C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EAFE7F0();
  v8 = sub_29EB1423C();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  sub_29EABD730(0, &unk_2A187B150, 0x29EDBA000);
  type metadata accessor for MigrationStatus.SerializedMigrationStatus();
  v11 = sub_29EB14A7C();
  sub_29EAAD010(v8, v10);
  if (v11)
  {
    v7 = *&v11[OBJC_IVAR___AMKSerializedMigrationStatus_error];
    v12 = v7;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v7;
}

uint64_t sub_29EAFE7F0()
{
  v0 = sub_29EB1418C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29EB1422C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v17 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 URLsForDirectory:14 inDomains:1];

  v15 = sub_29EB1486C();
  if (*(v15 + 16))
  {

    if (*(v15 + 16))
    {
      (*(v6 + 16))(v10, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      (*(v6 + 32))(v12, v10, v5);
      v17[0] = 0xD000000000000012;
      v17[1] = 0x800000029EB1C8E0;
      (*(v1 + 104))(v4, *MEMORY[0x29EDB9B10], v0);
      sub_29EAAD404();
      sub_29EB1421C();
      (*(v1 + 8))(v4, v0);
      return (*(v6 + 8))(v12, v5);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void static MigrationStatus.clearImportStatus()()
{
  v14[1] = *MEMORY[0x29EDCA608];
  v0 = sub_29EB1422C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  sub_29EAFE7F0();
  v6 = sub_29EB141BC();
  (*(v1 + 8))(v4, v0);
  v14[0] = 0;
  LODWORD(v0) = [v5 removeItemAtURL:v6 error:v14];

  v7 = v14[0];
  if (v0)
  {
    v8 = *MEMORY[0x29EDCA608];

    v9 = v7;
  }

  else
  {
    v13 = v14[0];
    v10 = v14[0];
    v11 = sub_29EB1417C();

    swift_willThrow();
    v12 = *MEMORY[0x29EDCA608];
  }
}

id sub_29EAFEE30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationStatus.SerializedMigrationStatus();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EAFEE74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29EAFEEC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_29EAFEF18(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_29EAFEF30(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_29EAFEF60(void *a1)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = sub_29EB1418C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29EB1422C();
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MigrationStatus.SerializedMigrationStatus();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___AMKSerializedMigrationStatus_error] = a1;
  v14 = a1;
  v29.receiver = v13;
  v29.super_class = v12;
  v15 = objc_msgSendSuper2(&v29, sel_init);
  v16 = objc_opt_self();
  v28[0] = 0;
  v17 = [v16 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v28];
  v18 = v28[0];
  if (v17)
  {
    v19 = sub_29EB142CC();
    v25 = v1;
    v20 = v19;
    v22 = v21;

    v28[0] = 0xD000000000000012;
    v28[1] = 0x800000029EB1C8E0;
    (*(v4 + 104))(v7, *MEMORY[0x29EDB9B10], v3);
    sub_29EAAD404();
    sub_29EB1421C();
    (*(v4 + 8))(v7, v3);
    sub_29EB142DC();
    (*(v26 + 8))(v11, v27);

    sub_29EAAD010(v20, v22);
  }

  else
  {
    v23 = v18;
    sub_29EB1417C();

    swift_willThrow();
  }

  v24 = *MEMORY[0x29EDCA608];
}

uint64_t TransferInfo.init(size:itemCount:errorCount:version:compressed:supportedOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

__n128 PreflightInfo.init(serializedDataInfo:resourcesInfo:supportsUploadContent:supportedDestinationAppIdentifiers:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v5;
  *(a5 + 32) = *(a1 + 32);
  v6 = *(a2 + 16);
  *(a5 + 56) = *a2;
  v7 = *(a2 + 48);
  *(a5 + 48) = *(a1 + 48);
  *(a5 + 72) = v6;
  result = *(a2 + 32);
  *(a5 + 88) = result;
  *(a5 + 104) = v7;
  *(a5 + 112) = a3;
  *(a5 + 120) = a4;
  return result;
}

uint64_t TransferInfo.version.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_29EAFF2F0()
{
  v1 = *v0;
  v2 = 1702521203;
  v3 = 0x6E6F6973726576;
  v4 = 0x73736572706D6F63;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E756F436D657469;
  if (v1 != 1)
  {
    v5 = 0x756F43726F727265;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29EAFF3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EB010F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EAFF3E8(uint64_t a1)
{
  v2 = sub_29EAFF70C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EAFF424(uint64_t a1)
{
  v2 = sub_29EAFF70C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t TransferInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B180, &qword_29EB1A2F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v18 = v1[2];
  v19 = v8;
  v16 = v1[4];
  v17 = v10;
  v15[3] = *(v1 + 40);
  v11 = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAFF70C();
  sub_29EB14FFC();
  v27 = 0;
  v13 = v20;
  sub_29EB14E7C();
  if (!v13)
  {
    v26 = 1;
    sub_29EB14E5C();
    v25 = 2;
    sub_29EB14E5C();
    v24 = 3;
    sub_29EB14E3C();
    v23 = 4;
    sub_29EB14E4C();
    v21 = v11;
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B190, &qword_29EB1A2F8);
    sub_29EAFFA80(&qword_2A187B198);
    sub_29EB14E6C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_29EAFF70C()
{
  result = qword_2A187B188;
  if (!qword_2A187B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B188);
  }

  return result;
}

uint64_t TransferInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1A0, &qword_29EB1A300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EAFF70C();
  sub_29EB14FEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = 0;
  v11 = sub_29EB14E0C();
  v31 = 1;
  v12 = sub_29EB14DEC();
  v30 = 2;
  v25 = sub_29EB14DEC();
  v29 = 3;
  v23 = sub_29EB14DCC();
  v24 = v13;
  v28 = 4;
  v22 = sub_29EB14DDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B190, &qword_29EB1A2F8);
  v27 = 5;
  sub_29EAFFA80(&qword_2A187B1A8);
  sub_29EB14DFC();
  v14 = (v6 + 8);
  v16 = v22 & 1;
  (*v14)(v9, v5);
  v17 = v25;
  v18 = v26;
  *a2 = v11;
  *(a2 + 8) = v12;
  v19 = v23;
  v20 = v24;
  *(a2 + 16) = v17;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = v16;
  *(a2 + 48) = v18;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_29EAFFA80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2A187B190, &qword_29EB1A2F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PreflightInfo.serializedDataInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_29EAA8ECC(v2, v3, v4, v5, v6);
}

uint64_t PreflightInfo.resourcesInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_29EAA8ECC(v2, v3, v4, v5, v6);
}

void sub_29EAFFB84(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKTransferInfo_transferInfo;
  v4 = *(v1 + OBJC_IVAR___AMKTransferInfo_transferInfo);
  v5 = sub_29EB14FCC();
  v6 = sub_29EB1467C();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v3 + 8);
  v8 = sub_29EB1467C();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = *(v3 + 16);
  v10 = sub_29EB1467C();
  [a1 encodeInteger:v9 forKey:v10];

  v11 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = sub_29EB1467C();
  v14 = sub_29EB1467C();
  [a1 encodeObject:v13 forKey:v14];

  v15 = *(v3 + 40);
  v16 = sub_29EB1467C();
  [a1 encodeBool:v15 forKey:v16];

  v17 = *(v3 + 48);
  v18 = sub_29EB1485C();
  v19 = sub_29EB1467C();
  [a1 encodeObject:v18 forKey:v19];
}

uint64_t TransferInfo.XPCHelper.init(coder:)(void *a1)
{
  sub_29EABD730(0, &qword_2A187AD40, 0x29EDBA070);
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v3 = v2;
    [v2 unsignedLongLongValue];

    v4 = sub_29EB14B3C();
    if (v4)
    {
      v5 = v4;
      [v4 integerValue];

      sub_29EABD730(0, &qword_2A187B080, 0x29EDBA0F8);
      v6 = sub_29EB14B3C();
      if (v6)
      {
        v9 = 0;
        v7 = v6;
        sub_29EB1469C();
      }
    }
  }

  type metadata accessor for TransferInfo.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id TransferInfo.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_29EB001FC(void *a1)
{
  v3 = v1 + OBJC_IVAR___AMKPreflightInfo_preflightInfo;
  v38 = *(v1 + OBJC_IVAR___AMKPreflightInfo_preflightInfo + 16);
  v40 = *(v1 + OBJC_IVAR___AMKPreflightInfo_preflightInfo);
  v4 = *(v1 + OBJC_IVAR___AMKPreflightInfo_preflightInfo + 32);
  v5 = *(v1 + OBJC_IVAR___AMKPreflightInfo_preflightInfo + 40);
  v6 = *(v1 + OBJC_IVAR___AMKPreflightInfo_preflightInfo + 48);
  v7 = type metadata accessor for TransferInfo.XPCHelper();
  v8 = objc_allocWithZone(v7);
  v9 = 0x29F37F000uLL;
  if (v4)
  {
    v10 = &v8[OBJC_IVAR___AMKTransferInfo_transferInfo];
    *v10 = v40;
    *(v10 + 1) = v38;
    *(v10 + 4) = v4;
    v10[40] = v5 & 1;
    *(v10 + 6) = v6;
    v43.receiver = v8;
    v43.super_class = v7;

    v11 = objc_msgSendSuper2(&v43, sel_init);
  }

  else
  {
    swift_deallocPartialClassInstance();
    v11 = 0;
  }

  v12 = sub_29EB1467C();
  [a1 encodeObject:v11 forKey:v12];

  v39 = *(v3 + 72);
  v41 = *(v3 + 56);
  v13 = *(v3 + 88);
  v14 = *(v3 + 96);
  v15 = *(v3 + 104);
  v16 = objc_allocWithZone(v7);
  if (v13)
  {
    v17 = &v16[OBJC_IVAR___AMKTransferInfo_transferInfo];
    *v17 = v41;
    *(v17 + 1) = v39;
    *(v17 + 4) = v13;
    v17[40] = v14 & 1;
    *(v17 + 6) = v15;
    v44.receiver = v16;
    v44.super_class = v7;

    v18 = objc_msgSendSuper2(&v44, sel_init);
  }

  else
  {
    swift_deallocPartialClassInstance();
    v18 = 0;
  }

  v19 = sub_29EB1467C();
  [a1 encodeObject:v18 forKey:v19];

  v20 = *(v3 + 112);
  v21 = sub_29EB1467C();
  [a1 encodeBool:v20 forKey:v21];

  v22 = *(v3 + 120);
  v23 = *(v22 + 16);
  if (v23)
  {
    v42 = a1;
    v46 = MEMORY[0x29EDCA190];
    sub_29EB14C9C();
    v24 = type metadata accessor for MigrationAppIdentifier.XPCHelper();
    v25 = (v22 + 72);
    do
    {
      v27 = *(v25 - 5);
      v26 = *(v25 - 4);
      v28 = *(v25 - 3);
      v29 = *(v25 - 2);
      v30 = v9;
      v32 = *(v25 - 1);
      v31 = *v25;
      v33 = objc_allocWithZone(v24);
      v34 = &v33[OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier];
      *v34 = v27;
      *(v34 + 1) = v26;
      *(v34 + 2) = v28;
      *(v34 + 3) = v29;
      *(v34 + 4) = v32;
      *(v34 + 5) = v31;
      v9 = v30;
      v45.receiver = v33;
      v45.super_class = v24;

      objc_msgSendSuper2(&v45, (v30 + 2936));
      sub_29EB14C6C();
      v35 = *(v46 + 16);
      sub_29EB14CAC();
      sub_29EB14CBC();
      sub_29EB14C7C();
      v25 += 6;
      --v23;
    }

    while (v23);
    a1 = v42;
  }

  type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v36 = sub_29EB1485C();

  v37 = sub_29EB1467C();
  [a1 encodeObject:v36 forKey:v37];
}

char *PreflightInfo.XPCHelper.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for TransferInfo.XPCHelper();
  v4 = sub_29EB14B3C();
  v5 = sub_29EB14B3C();
  v6 = sub_29EB1467C();
  v7 = [a1 decodeBoolForKey_];

  type metadata accessor for MigrationAppIdentifier.XPCHelper();
  v8 = sub_29EB14B5C();
  v9 = v8;
  if (!v8)
  {

    type metadata accessor for PreflightInfo.XPCHelper();
    swift_deallocPartialClassInstance();
    return v9;
  }

  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_20:

    v12 = MEMORY[0x29EDCA190];
    v33 = &qword_2A187B000;
    if (v4)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v10 = sub_29EB14D3C();
  if (!v10)
  {
    goto LABEL_20;
  }

LABEL_4:
  v63 = MEMORY[0x29EDCA190];
  result = sub_29EB00B6C(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v47 = v4;
    v48 = v5;
    v49 = v7;
    v50 = a1;
    v52 = v1;
    v12 = v63;
    v54 = v9;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      v59 = v10;
      do
      {
        v14 = MEMORY[0x29EDA72C0](v13, v54);
        v15 = *(v14 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier + 8);
        v56 = *(v14 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier);
        v17 = *(v14 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier + 16);
        v16 = *(v14 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier + 24);
        v19 = *(v14 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier + 32);
        v18 = *(v14 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier + 40);

        swift_unknownObjectRelease();
        v63 = v12;
        v21 = *(v12 + 16);
        v20 = *(v12 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_29EB00B6C((v20 > 1), v21 + 1, 1);
          v12 = v63;
        }

        ++v13;
        *(v12 + 16) = v21 + 1;
        v22 = (v12 + 48 * v21);
        v22[4] = v56;
        v22[5] = v15;
        v22[6] = v17;
        v22[7] = v16;
        v22[8] = v19;
        v22[9] = v18;
      }

      while (v59 != v13);
    }

    else
    {
      v23 = (v9 + 32);
      do
      {
        v60 = v10;
        v24 = (*v23 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier);
        v26 = *v24;
        v25 = v24[1];
        v28 = v24[2];
        v27 = v24[3];
        v29 = v24[5];
        v57 = v24[4];
        v63 = v12;
        v31 = *(v12 + 16);
        v30 = *(v12 + 24);

        if (v31 >= v30 >> 1)
        {
          sub_29EB00B6C((v30 > 1), v31 + 1, 1);
          v12 = v63;
        }

        *(v12 + 16) = v31 + 1;
        v32 = (v12 + 48 * v31);
        v32[4] = v26;
        v32[5] = v25;
        v32[6] = v28;
        v32[7] = v27;
        v32[8] = v57;
        v32[9] = v29;
        ++v23;
        v10 = v60 - 1;
      }

      while (v60 != 1);
    }

    v2 = v52;
    a1 = v50;
    v7 = v49;
    v4 = v47;
    v5 = v48;
    v33 = &qword_2A187B000;
    if (v47)
    {
LABEL_17:
      v34 = &v4[v33[54]];
      v55 = *(v34 + 1);
      v58 = *v34;
      v35 = v34[40];
      v36 = *(v34 + 6);
      v61 = *(v34 + 4);

      if (v5)
      {
LABEL_18:
        v37 = &v5[v33[54]];
        v51 = *(v37 + 1);
        v53 = *v37;
        v38 = *(v37 + 4);
        v39 = v37[40];
        v40 = v2;
        v41 = v7;
        v42 = v35;
        v43 = v5;
        v5 = *(v37 + 6);

        v44 = v51;
        v45 = v53;
        v35 = v42;
        v7 = v41;
        v2 = v40;
LABEL_23:
        v46 = &v2[OBJC_IVAR___AMKPreflightInfo_preflightInfo];
        *v46 = v58;
        *(v46 + 1) = v55;
        *(v46 + 4) = v61;
        *(v46 + 5) = v35;
        *(v46 + 6) = v36;
        *(v46 + 56) = v45;
        *(v46 + 72) = v44;
        *(v46 + 11) = v38;
        *(v46 + 12) = v39;
        *(v46 + 13) = v5;
        v46[112] = v7;
        *(v46 + 15) = v12;
        v62.receiver = v2;
        v62.super_class = type metadata accessor for PreflightInfo.XPCHelper();
        v9 = objc_msgSendSuper2(&v62, sel_init);

        return v9;
      }

LABEL_22:
      v38 = 0;
      v39 = 0;
      v44 = 0uLL;
      v45 = 0uLL;
      goto LABEL_23;
    }

LABEL_21:
    v61 = 0;
    v35 = 0;
    v36 = 0;
    v55 = 0u;
    v58 = 0u;
    if (v5)
    {
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

id sub_29EB00AC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_29EB00B4C(char *a1, int64_t a2, char a3)
{
  result = sub_29EB00EE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EB00B6C(char *a1, int64_t a2, char a3)
{
  result = sub_29EB00FD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_29EB00B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB00BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_29EB00C54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB00C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EB00DE0()
{
  result = qword_2A187B1C8;
  if (!qword_2A187B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B1C8);
  }

  return result;
}

unint64_t sub_29EB00E38()
{
  result = qword_2A187B1D0;
  if (!qword_2A187B1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B1D0);
  }

  return result;
}

unint64_t sub_29EB00E90()
{
  result = qword_2A187B1D8;
  if (!qword_2A187B1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B1D8);
  }

  return result;
}

char *sub_29EB00EE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1E0, &qword_29EB175A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

char *sub_29EB00FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A358, &qword_29EB164A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_29EB010F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F436D657469 && a2 == 0xE900000000000074 || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F43726F727265 && a2 == 0xEA0000000000746ELL || (sub_29EB14EBC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_29EB14EBC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEA00000000006465 || (sub_29EB14EBC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029EB1C900 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_29EB14EBC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_29EB01330(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v25 = &v34 - v24;
  v26 = sub_29EB149BC();
  if (!v26)
  {
    return sub_29EB1487C();
  }

  v48 = v26;
  v52 = sub_29EB14CDC();
  v39 = sub_29EB14CEC();
  sub_29EB14C8C();
  result = sub_29EB149AC();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_29EB149EC();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_29EB14CCC();
      result = sub_29EB149DC();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SerializedDataExportStream.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2A1C73D48](sub_29EB01774, v3, 0);
}

uint64_t sub_29EB01774()
{
  sub_29EB1493C();
  v1 = v0[3];
  v2 = v0[2];
  v3 = *(*(*(v0[4] + 8) + 8) + 8);
  v4 = sub_29EB149BC();
  v0[6] = v4;
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = v0[5];
    v13 = v0[2];
    v14 = swift_task_alloc();
    v0[7] = v14;
    *(v14 + 16) = *(v0 + 3);
    *(v14 + 32) = v12;
    *(v14 + 40) = v13;
    v16 = sub_29EB05678(&qword_2A187A730, v15, type metadata accessor for SerializedDataExportStream);
    v17 = *(MEMORY[0x29EDCA470] + 4);
    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    *(v4 + 8) = sub_29EB01914;
    v8 = v0[5];
    v5 = &unk_29EB1A5C0;
    v7 = sub_29EAB7084;
    v11 = MEMORY[0x29EDCA180] + 8;
    v6 = v14;
    v9 = v12;
    v10 = v16;
  }

  return MEMORY[0x2A1C73C78](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_29EB01914()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_29EB01AF0;
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 40);

    v5 = sub_29EB01A3C;
    v4 = v7;
  }

  return MEMORY[0x2A1C73D48](v5, v4, 0);
}

void sub_29EB01A3C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v1 + 152);
  v4 = __CFADD__(v3, v2);
  v5 = v3 + v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v1 + 152) = v5;
  v6 = *(v1 + 144);
  if (v6)
  {
    v7 = v0[6];
    v8 = v6;
    v9 = [v8 completedUnitCount];
    if (!__OFADD__(v9, v7))
    {
      [v8 setCompletedUnitCount_];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:
  v10 = v0[1];

  v10();
}

uint64_t sub_29EB01AF0()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_29EB01B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a4;
  *(v5 + 88) = v4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a3;
  *(v5 + 96) = *a2;
  *(v5 + 104) = *(a2 + 8);
  return MEMORY[0x2A1C73D48](sub_29EB01B88, 0, 0);
}

uint64_t sub_29EB01B88()
{
  v14 = v0;
  v1 = *(v0 + 72);
  v11 = *(v0 + 80);
  v12 = *(v0 + 96);
  v13 = *(v0 + 104);
  sub_29EB02390(&v12, (v0 + 16));
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = *(v0 + 24);
  v2 = *(v11 + 48);
  v10 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_29EAAEFB4;
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);

  return v10(v8, v0 + 40, v7, v5);
}

uint64_t sub_29EB01CD4()
{
  v4 = *MEMORY[0x29EDCA608];
  *(v1 + 24) = v0;
  v2 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB01D64, v0, 0);
}

uint64_t sub_29EB01D64()
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = v0[3];
  v2 = v1[14];
  v0[4] = v2;
  if (v2)
  {
    v0[5] = v1[16];
    v0[6] = v1[15];
    v3 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73D48](sub_29EB01EDC, 0, 0);
  }

  else
  {
    v4 = v1[17];
    v0[2] = 0;
    v5 = [v4 closeAndReturnError_];
    v6 = v0[2];
    if (v5)
    {
      v13 = v0[1];
      v7 = v6;
      v8 = *MEMORY[0x29EDCA608];
      v9 = v13;
    }

    else
    {
      v10 = v6;
      sub_29EB1417C();

      swift_willThrow();
      v9 = v0[1];
      v11 = *MEMORY[0x29EDCA608];
    }

    return v9();
  }
}

uint64_t sub_29EB01EDC()
{
  v9 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = v1;
  *(v2 + 24) = vextq_s8(v3, v3, 8uLL);
  v4 = *(MEMORY[0x29EDCA478] + 4);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_29EB02004;
  v6 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v5, 0, 0, 0x292865736F6C63, 0xE700000000000000, sub_29EB04B0C, v2, v7);
}

uint64_t sub_29EB02004()
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_29EB022E8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_29EB02154;
  }

  v6 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB02154()
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 24);
  v2 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB021E0, v1, 0);
}

uint64_t sub_29EB021E0()
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(v0[3] + 136);
  v0[2] = 0;
  v2 = [v1 closeAndReturnError_];
  v3 = v0[2];
  if (v2)
  {
    v10 = v0[1];
    v4 = v3;
    v5 = *MEMORY[0x29EDCA608];
    v6 = v10;
  }

  else
  {
    v7 = v3;
    sub_29EB1417C();

    swift_willThrow();
    v6 = v0[1];
    v8 = *MEMORY[0x29EDCA608];
  }

  return v6();
}

uint64_t sub_29EB022E8()
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];
  v4 = *MEMORY[0x29EDCA608];

  return v3();
}

void *sub_29EB02390@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v6 = *a1;
  v8[0] = a1[2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A650, &unk_29EB1A790);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_29EAB72B4(&qword_2A187A658, &qword_2A187A650, &unk_29EB1A790);
  v3 = sub_29EB147CC();

  v8[0] = v3;
  sub_29EB1488C();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v4 = sub_29EB1464C();
  v8[0] = v6;
  v8[1] = v2;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return MigrationRequestWithOptions.init(destinationPlatform:options:)(v8, v4, a2);
}

uint64_t sub_29EB025C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v26 = a3;
  v27 = a4;
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_29EB14B6C();
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x2A1C7C4A8](v25);
  v12 = &v25 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v16 = &v25 - v15;
  v29 = a1;
  v30 = a2;
  swift_getAssociatedConformanceWitness();

  sub_29EB147EC();
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v12, v25);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v28, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v19 = *(v13 + 32);
    v19(v16, v12, AssociatedTypeWitness);
    v20 = swift_getTupleTypeMetadata2();
    v21 = v28;
    v22 = &v28[*(v20 + 48)];
    v19(v28, v16, AssociatedTypeWitness);
    v24 = v26;
    v23 = v27;
    *v22 = v26;
    v22[1] = v23;
    (*(*(v20 - 8) + 56))(v21, 0, 1, v20);
    return sub_29EAB0308(v24, v23);
  }
}

uint64_t sub_29EB028AC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_29EB147DC();
}

uint64_t sub_29EB02950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  return MEMORY[0x2A1C73D48](sub_29EB02970, a2, 0);
}

uint64_t sub_29EB02970()
{
  v1 = *(v0 + 56);
  v2 = v1[14];
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = v1[16];
    *(v0 + 96) = v3;
    v4 = v1[15];
    *(v0 + 104) = v4;

    v5 = v3;
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_29EB02AF4;
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 64);

    return sub_29EB030B4(v9, v2, v4, v5, v7, v8);
  }

  else
  {
    v11 = *(v0 + 64);
    *(v0 + 128) = v1[17];
    v13 = *(v0 + 72);
    *(v0 + 40) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, v11);

    return MEMORY[0x2A1C73D48](sub_29EB02C20, 0, 0);
  }
}

uint64_t sub_29EB02AF4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_29EB02F7C;
  }

  else
  {
    v6 = sub_29EB02F04;
  }

  return MEMORY[0x2A1C73D48](v6, v5, 0);
}

uint64_t sub_29EB02C20()
{
  v1 = v0[16];
  v2 = swift_task_alloc();
  v0[17] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = *(MEMORY[0x29EDCA478] + 4);
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_29EB02D18;
  v5 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v4, 0, 0, 0xD000000000000017, 0x800000029EB1B830, sub_29EAB70E0, v2, v5);
}

uint64_t sub_29EB02D18()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_29EB02E34;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_29EAB51D8;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB02E34()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);

  return MEMORY[0x2A1C73D48](sub_29EB02EA0, v2, 0);
}

uint64_t sub_29EB02EA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[19];
  v2 = v0[1];

  return v2();
}

uint64_t sub_29EB02F04()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29EB02F7C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = *(v0 + 120);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29EB02FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_29EAAAE5C;

  return sub_29EB02950(a1, v7, v6, v4, v5);
}

uint64_t sub_29EB030B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2A1C73D48](sub_29EB030DC, 0, 0);
}

uint64_t sub_29EB030DC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 48);
  *(v3 + 32) = v4;
  *(v3 + 48) = v1;
  *(v3 + 56) = v2;
  v5 = *(MEMORY[0x29EDCA478] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_29EB031E0;
  v7 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C80](v6, 0, 0, 0xD000000000000017, 0x800000029EB1B830, sub_29EB05774, v3, v7);
}

uint64_t sub_29EB031E0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_29EB032FC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_29EAC1308;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB032FC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

void sub_29EB03360(uint64_t a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 136);
  v9[0] = 0;
  v2 = [v1 closeAndReturnError_];
  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x29EDCA608];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_29EB1417C();

    swift_willThrow();
    v8 = *MEMORY[0x29EDCA608];
  }
}

uint64_t sub_29EB03478(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 != 15)
  {
    v4 = a2 >> 62;
    if ((a2 >> 62) > 1)
    {
      if (v4 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(result + 16);
      v8 = *(result + 24);
      v7 = v8 - v9;
      if (__OFSUB__(v8, v9))
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      if (!v4)
      {
        v5 = result;
        v6 = a2;
        v7 = BYTE6(a2);
LABEL_13:
        result = swift_beginAccess();
        v10 = *(a3 + 16);
        v11 = *(v10 + 16);
        v12 = __CFADD__(v11, v7);
        v13 = v11 + v7;
        if (!v12)
        {
          *(v10 + 16) = v13;
          swift_endAccess();
          sub_29EAB708C();
          sub_29EB14A2C();
          return sub_29EAB6218(v5, v6);
        }

        __break(1u);
        goto LABEL_17;
      }

      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      v7 = HIDWORD(result) - result;
    }

    v5 = result;
    v6 = a2;
    result = sub_29EAB0308(result, a2);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    v5 = result;
    v6 = a2;
    v7 = 0;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_29EB035A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a3;
  v27 = a4;
  v28 = sub_29EB145AC();
  v31 = *(v28 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29EB145CC();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v25 - v16;
  (*(v14 + 16))(&v25 - v16, a1, v13);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  *(v19 + 2) = a2;
  *(v19 + 3) = v20;
  *(v19 + 4) = v21;
  (*(v14 + 32))(&v19[v18], v17, v13);
  aBlock[4] = sub_29EB04BF8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_8;
  v22 = _Block_copy(aBlock);

  v21;
  sub_29EB145BC();
  v32 = MEMORY[0x29EDCA190];
  sub_29EB05678(&qword_2A187A630, 255, MEMORY[0x29EDCA248]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8C0, &unk_29EB16D10);
  sub_29EAB72B4(&qword_2A187A638, &unk_2A187A8C0, &unk_29EB16D10);
  v23 = v28;
  sub_29EB14BDC();
  MEMORY[0x29EDA7130](0, v12, v8, v22);
  _Block_release(v22);
  (*(v31 + 8))(v8, v23);
  (*(v29 + 8))(v12, v30);
}

uint64_t sub_29EB03968()
{
  sub_29EB1434C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  return sub_29EB148CC();
}

uint64_t sub_29EB039F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v26 = a3;
  v27 = a4;
  v6 = sub_29EB145AC();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29EB145CC();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1E8, &qword_29EB1A780);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v26 - v17;
  (*(v15 + 16))(&v26 - v17, a1, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  v21 = (v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v26;
  v22 = v27;
  *v21 = a2;
  v21[1] = v23;
  v21[2] = v22;
  aBlock[4] = sub_29EB04D40;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_25;
  v24 = _Block_copy(aBlock);

  v22;
  sub_29EB145BC();
  v31 = MEMORY[0x29EDCA190];
  sub_29EB05678(&qword_2A187A630, 255, MEMORY[0x29EDCA248]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8C0, &unk_29EB16D10);
  sub_29EAB72B4(&qword_2A187A638, &unk_2A187A8C0, &unk_29EB16D10);
  sub_29EB14BDC();
  MEMORY[0x29EDA7130](0, v13, v9, v24);
  _Block_release(v24);
  (*(v30 + 8))(v9, v6);
  (*(v28 + 8))(v13, v29);
}

uint64_t sub_29EB03DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a4;
  v38 = a7;
  v36 = a3;
  v45 = a2;
  v42 = sub_29EB145AC();
  v44 = *(v42 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_29EB145CC();
  v41 = *(v43 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x2A1C7C4A8](v43);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v35 - v18;
  v20 = *(a6 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, a5, a6);
  (*(v15 + 16))(v19, a1, v14);
  v23 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v24 = (v21 + v23 + *(v15 + 80)) & ~*(v15 + 80);
  v25 = swift_allocObject();
  v26 = a6;
  v28 = v37;
  v27 = v38;
  *(v25 + 2) = a6;
  *(v25 + 3) = v27;
  v29 = v36;
  *(v25 + 4) = v45;
  *(v25 + 5) = v29;
  *(v25 + 6) = v28;
  (*(v20 + 32))(&v25[v23], v22, v26);
  (*(v15 + 32))(&v25[v24], v19, v14);
  aBlock[4] = sub_29EB058E8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29EABE4EC;
  aBlock[3] = &block_descriptor_44_0;
  v30 = _Block_copy(aBlock);

  v28;
  v31 = v39;
  sub_29EB145BC();
  v46 = MEMORY[0x29EDCA190];
  sub_29EB05678(&qword_2A187A630, 255, MEMORY[0x29EDCA248]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8C0, &unk_29EB16D10);
  sub_29EAB72B4(&qword_2A187A638, &unk_2A187A8C0, &unk_29EB16D10);
  v32 = v40;
  v33 = v42;
  sub_29EB14BDC();
  MEMORY[0x29EDA7130](0, v31, v32, v30);
  _Block_release(v30);
  (*(v44 + 8))(v32, v33);
  (*(v41 + 8))(v31, v43);
}

uint64_t sub_29EB0426C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_29EB14B6C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = v15 - v11;
  v13 = *(a6 - 8);
  (*(v13 + 16))(v15 - v11, a4, a6);
  (*(v13 + 56))(v12, 0, 1, a6);
  sub_29EB1433C();
  (*(v9 + 8))(v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  return sub_29EB148CC();
}

uint64_t SerializedDataExportStream.deinit()
{
  v7[1] = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 136);
  v7[0] = 0;
  if ([v1 closeAndReturnError_])
  {
    v2 = v7[0];
  }

  else
  {
    v3 = v7[0];
    v4 = sub_29EB1417C();

    swift_willThrow();
  }

  sub_29EB0450C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  swift_defaultActor_destroy();
  v5 = *MEMORY[0x29EDCA608];
  return v0;
}

void sub_29EB0450C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t SerializedDataExportStream.__deallocating_deinit()
{
  SerializedDataExportStream.deinit();

  return MEMORY[0x2A1C73CE8](v0);
}

uint64_t dispatch thunk of SerializedDataExportingWithOptions.exportSerializedData(to:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_29EAB73B4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SerializedDataExportingWithOptions.serializedDataSizeEstimate.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB0544;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DataclassSerializedDataExporting.serializedDataItemCount.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB0544;

  return v9(a1, a2);
}

uint64_t dispatch thunk of DataclassSerializedDataExporting.serializedDataErrorCount.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29EAB0010;

  return v9(a1, a2);
}

uint64_t sub_29EB04A74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB04ABC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_29EB04B18()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29EB04BF8()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_29EB03968();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29EB04C84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1E8, &qword_29EB1A780);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  v7 = *(v0 + v5 + 8);

  return MEMORY[0x2A1C733A0](v0, v5 + 24, v3 | 7);
}

uint64_t sub_29EB04D40()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1E8, &qword_29EB1A780) - 8);
  v3 = *(*(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1E8, &qword_29EB1A780);
  return sub_29EB148CC();
}

uint64_t sub_29EB04E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  return sub_29EB025C4(a1, a2, a3, a4, a5);
}

uint64_t sub_29EB04E10(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness);
  v8 = &v13[-v7];
  swift_checkMetadataState();
  sub_29EB14C3C();
  v14 = a1;
  v15 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = sub_29EB01330(sub_29EB05754, v13, AssociatedTypeWitness, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9F80], AssociatedConformanceWitness, MEMORY[0x29EDC9F90], v10);
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  return v11;
}

void sub_29EB04FD0(void *a1, uint64_t a2)
{
  v36 = a1;
  v32 = a2;
  v28 = sub_29EB1438C();
  v30 = *(v28 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v35 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29EB1437C();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x2A1C7C4A8](v33);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29EB14AAC();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v34);
  v27 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29EB14A9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = sub_29EB145CC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  type metadata accessor for SerializedDataExportStream.CompressionContext.WrappedBytesWritten();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = sub_29EAADFA4();
  v26[1] = "ppedBytesWritten";
  v26[2] = v14;

  sub_29EB145BC();
  v38 = MEMORY[0x29EDCA190];
  sub_29EB05678(&qword_2A187A8F8, 255, MEMORY[0x29EDCA288]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A900, &unk_29EB17678);
  v15 = v28;
  sub_29EAB72B4(&qword_2A187A908, &qword_2A187A900, &unk_29EB17678);
  v16 = v32;
  sub_29EB14BDC();
  (*(v6 + 104))(v27, *MEMORY[0x29EDCA2A8], v34);
  v17 = v30;
  v27 = sub_29EB14ACC();
  v18 = swift_allocObject();
  v34 = v13;
  *(v18 + 16) = v13;
  (*(v31 + 104))(v29, *MEMORY[0x29EDC9808], v33);
  (*(v17 + 16))(v35, v16, v15);
  v19 = swift_allocObject();
  v20 = v36;
  *(v19 + 16) = v18;
  *(v19 + 24) = v20;
  v21 = sub_29EB1435C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v24 = v20;
  v25 = v37;
  sub_29EB1436C();
  (*(v17 + 8))(v16, v15);

  if (v25)
  {
  }
}

uint64_t sub_29EB054D0(_BYTE *a1, void *a2, void *a3)
{
  v7 = sub_29EB1438C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SerializedDataExportStream();
  v12 = swift_allocObject();
  LOBYTE(a1) = *a1;
  swift_defaultActor_initialize();
  *(v12 + 136) = a2;
  *(v12 + 144) = a3;
  *(v12 + 152) = 0;
  if (a1)
  {
    *(v12 + 112) = 0;
    *(v12 + 120) = 0;
    *(v12 + 128) = 0;
  }

  else
  {
    (*(v8 + 104))(v11, *MEMORY[0x29EDC9810], v7);
    v13 = a3;
    v14 = a2;
    sub_29EB04FD0(v14, v11);
    if (v3)
    {

      swift_defaultActor_destroy();
      swift_deallocPartialClassInstance();
    }

    else
    {
      v18 = v15;
      v19 = v16;
      v20 = v17;

      *(v12 + 112) = v18;
      *(v12 + 120) = v19;
      *(v12 + 128) = v20;
    }
  }

  return v12;
}

uint64_t sub_29EB05678(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_29EB056C0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 24, 7);
}

uint64_t sub_29EB056F8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t sub_29EB05754()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29EB028AC();
}

uint64_t sub_29EB05784()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 32);

  v13 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2A1C733A0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_29EB058E8()
{
  v1 = v0[2];
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A628, &unk_29EB16D30) - 8);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_29EB0426C(v5, v6, v7, v0 + v2, v8, v1);
}

void *MigrationAppIdentifier.init(storeIdentifier:bundleIdentifier:platform:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = result[1];
  v6 = *a4;
  v7 = a4[1];
  *a5 = *result;
  a5[1] = v5;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = v6;
  a5[5] = v7;
  return result;
}

uint64_t MigrationAppIdentifier.storeIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t MigrationAppIdentifier.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MigrationAppIdentifier.platform.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;
}

uint64_t sub_29EB05A44()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6D726F6674616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65644965726F7473;
  }
}

uint64_t sub_29EB05AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29EB068D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29EB05AD8(uint64_t a1)
{
  v2 = sub_29EB05D48();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29EB05B14(uint64_t a1)
{
  v2 = sub_29EB05D48();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t MigrationAppIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B1F0, &qword_29EB1A7B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB05D48();

  sub_29EB14FFC();
  v23 = v8;
  v24 = v9;
  v25 = 0;
  sub_29EB05D9C();
  v13 = v22;
  sub_29EB14E6C();

  if (!v13)
  {
    v14 = v18;
    v15 = v19;
    LOBYTE(v23) = 1;
    sub_29EB14E3C();
    v23 = v15;
    v24 = v14;
    v25 = 2;
    sub_29EB05DF0();

    sub_29EB14E6C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_29EB05D48()
{
  result = qword_2A187B1F8;
  if (!qword_2A187B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B1F8);
  }

  return result;
}

unint64_t sub_29EB05D9C()
{
  result = qword_2A187B200;
  if (!qword_2A187B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B200);
  }

  return result;
}

unint64_t sub_29EB05DF0()
{
  result = qword_2A187B208;
  if (!qword_2A187B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B208);
  }

  return result;
}

uint64_t MigrationAppIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B210, &qword_29EB1A7B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_29EB05D48();
  sub_29EB14FEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_29EB060EC();
  sub_29EB14DFC();
  v11 = v23;
  v22 = v24;
  LOBYTE(v23) = 1;
  v19 = sub_29EB14DCC();
  v20 = v11;
  v21 = v12;
  v25 = 2;
  sub_29EB06140();
  sub_29EB14DFC();
  (*(v6 + 8))(v9, v5);
  v13 = v23;
  v14 = v24;
  v15 = v19;
  v16 = v21;
  v17 = v22;
  *a2 = v20;
  a2[1] = v17;
  a2[2] = v15;
  a2[3] = v16;
  a2[4] = v13;
  a2[5] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_29EB060EC()
{
  result = qword_2A187B218;
  if (!qword_2A187B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B218);
  }

  return result;
}

unint64_t sub_29EB06140()
{
  result = qword_2A187B220;
  if (!qword_2A187B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B220);
  }

  return result;
}

void sub_29EB061D4(void *a1)
{
  v3 = (v1 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier);
  v4 = *(v1 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier);
  v5 = *(v1 + OBJC_IVAR___AMKAppIdentifier_platformAppIdentifier + 8);
  v6 = sub_29EB1467C();
  v7 = sub_29EB1467C();
  [a1 encodeObject:v6 forKey:v7];

  v8 = v3[2];
  v9 = v3[3];
  v10 = sub_29EB1467C();
  v11 = sub_29EB1467C();
  [a1 encodeObject:v10 forKey:v11];

  v12 = v3[4];
  v13 = v3[5];
  v14 = sub_29EB1467C();
  v15 = sub_29EB1467C();
  [a1 encodeObject:v14 forKey:v15];
}

uint64_t MigrationAppIdentifier.XPCHelper.init(coder:)(void *a1)
{
  sub_29EAB77D4();
  v2 = sub_29EB14B3C();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_29EB1469C();
  }

  type metadata accessor for MigrationAppIdentifier.XPCHelper();
  swift_deallocPartialClassInstance();
  return 0;
}

id MigrationAppIdentifier.XPCHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MigrationAppIdentifier.XPCHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MigrationAppIdentifier.XPCHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EB06664(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB066AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29EB067D0()
{
  result = qword_2A187B230;
  if (!qword_2A187B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B230);
  }

  return result;
}

unint64_t sub_29EB06828()
{
  result = qword_2A187B238;
  if (!qword_2A187B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B238);
  }

  return result;
}

unint64_t sub_29EB06880()
{
  result = qword_2A187B240;
  if (!qword_2A187B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B240);
  }

  return result;
}

uint64_t sub_29EB068D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65644965726F7473 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_29EB14EBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000029EB1CB00 == a2 || (sub_29EB14EBC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_29EB14EBC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t AppMigrationError.hashValue.getter()
{
  v1 = *v0;
  sub_29EB14F8C();
  MEMORY[0x29EDA7610](v1);
  return sub_29EB14FAC();
}

unint64_t sub_29EB06A88()
{
  result = qword_2A187B250;
  if (!qword_2A187B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B250);
  }

  return result;
}

id sub_29EB06AEC(uint64_t a1)
{
  v12[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29EB141BC();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_29EB1422C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_29EB1417C();

    swift_willThrow();
    v9 = sub_29EB1422C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t sub_29EB06C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  if ((v8 & *(a3 + 64)) != 0)
  {
LABEL_7:
    sub_29EB14D2C();
    __break(1u);
  }

  else
  {
    v4 = a2;
    v5 = a1;
    v9 = ((v7 + 63) >> 6) - 1;
    v10 = 72;
    while (v9)
    {
      v11 = *(a3 + v10);
      --v9;
      v10 += 8;
      if (v11)
      {
        goto LABEL_7;
      }
    }
  }

  *a4 = v5;
  a4[1] = v4;
  a4[2] = MEMORY[0x29EDCA198];
  return result;
}

uint64_t AppMigrationTester.__allocating_init(platform:)(uint64_t *a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EABB354;

  return AppMigrationTester.init(platform:)(a1);
}

uint64_t AppMigrationTester.init(platform:)(uint64_t *a1)
{
  v2[9] = v1;
  v4 = sub_29EB1446C();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v9 = a1[1];
  v2[12] = v7;
  v2[13] = v8;
  v2[14] = v9;

  return MEMORY[0x2A1C73D48](sub_29EB06EA0, 0, 0);
}

uint64_t sub_29EB06EA0()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[9];
  swift_defaultActor_initialize();
  *(v3 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__importController) = 0;
  *(v3 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__exportController) = 0;
  *(v3 + 112) = v2;
  *(v3 + 120) = v1;
  sub_29EABD730(0, &qword_2A187B268, 0x29EDB93F8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v5 = [ObjCClassFromMetadata bundleRecordForCurrentProcess];
  v0[15] = v5;
  if (!v5)
  {
    return sub_29EB14D2C();
  }

  v6 = v5;
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    return sub_29EB14D2C();
  }

  v8 = [v7 applicationExtensionRecords];
  sub_29EABD730(0, &qword_2A187B270, 0x29EDB93E8);
  sub_29EB0739C();
  v9 = sub_29EB1496C();

  if ((v9 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_29EB14BEC();
    v10 = sub_29EB1497C();
    v9 = v0[2];
    v13 = v0[3];
    v14 = v0[4];
    v15 = v0[5];
    v16 = v0[6];
  }

  else
  {
    v17 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v9 + 56);

    v15 = 0;
  }

  v20 = (v14 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v21 = v15;
  v22 = v16;
  v23 = v15;
  if (!v16)
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        goto LABEL_27;
      }

      v22 = *(v13 + 8 * v23);
      ++v21;
      if (v22)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x2A1C73D48](v10, v11, v12);
  }

LABEL_16:
  v24 = (v22 - 1) & v22;
  v25 = *(*(v9 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
  v0[16] = v25;
  if (!v25)
  {
LABEL_27:
    sub_29EB07404();

    return sub_29EB14D2C();
  }

  while (1)
  {
    v27 = [v25 extensionPointRecord];
    v28 = [v27 identifier];

    v29 = sub_29EB146AC();
    v31 = v30;

    if (v29 == 0xD000000000000017 && 0x800000029EB1AF10 == v31)
    {
      break;
    }

    v33 = sub_29EB14EBC();

    if (v33)
    {
      goto LABEL_30;
    }

    v15 = v23;
    v16 = v24;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v26 = sub_29EB14BFC();
    if (v26)
    {
      v0[8] = v26;
      swift_dynamicCast();
      v25 = v0[7];
      v23 = v15;
      v24 = v16;
      v0[16] = v25;
      if (v25)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

LABEL_30:
  v35 = v0[14];
  v37 = v0[11];
  v36 = v0[12];
  v38 = v0[9];
  v39 = v0[10];
  sub_29EB07404();

  v40 = v25;
  sub_29EB1444C();
  (*(v37 + 32))(v38 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester_extensionIdentity, v36, v39);
  v10 = sub_29EB07324;
  v11 = v38;
  v12 = 0;

  return MEMORY[0x2A1C73D48](v10, v11, v12);
}

uint64_t sub_29EB07324()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);

  v3 = *(v0 + 8);
  v4 = *(v0 + 72);

  return v3(v4);
}

unint64_t sub_29EB0739C()
{
  result = qword_2A187B278;
  if (!qword_2A187B278)
  {
    sub_29EABD730(255, &qword_2A187B270, 0x29EDB93E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187B278);
  }

  return result;
}

uint64_t sub_29EB0740C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_29EB1418C();
  v22 = *(v3 - 8);
  v4 = v22;
  v5 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187A5C8, &qword_29EB16CE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v21 - v10;
  v12 = sub_29EB1422C();
  v23 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = NSTemporaryDirectory();
  sub_29EB146AC();

  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = *MEMORY[0x29EDB9B10];
  v19 = *(v4 + 104);
  v19(v7, v18, v3);
  sub_29EB1420C();
  v27 = v24;
  v28 = v25;
  v19(v7, v18, v3);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v22 + 8))(v7, v3);
  return (*(v13 + 8))(v16, v23);
}

uint64_t AppMigrationTester.deinit()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester_extensionIdentity;
  v3 = sub_29EB1446C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__importController);

  v5 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__exportController);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AppMigrationTester.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester_extensionIdentity;
  v3 = sub_29EB1446C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__importController);

  v5 = *(v0 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__exportController);

  swift_defaultActor_destroy();

  return MEMORY[0x2A1C73CE8](v0);
}

uint64_t sub_29EB077D8(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v3[2] = a1;
  v3[3] = v4;
  v3[4] = *v4;
  v6 = sub_29EB1446C();
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v3[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  v3[8] = v9;
  v3[9] = v10;
  v3[10] = v11;

  return MEMORY[0x2A1C73D48](sub_29EB078D8, 0, 0);
}

uint64_t sub_29EB078D8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = *(v0[6] + 16);
  v4(v2, v0[2], v3);
  v5 = type metadata accessor for ImportExtensionController();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v4(v1, v2, v3);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_29EB079D8;
  v9 = v0[7];

  return ExtensionController.init(identity:)(v9);
}

uint64_t sub_29EB079D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = *(v4 + 80);

    v8 = sub_29EB13F80;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_29EB13F7C;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t AppMigrationTester.AppImportController.importResources(from:importRequest:progress:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 344) = a3;
  *(v4 + 352) = v3;
  *(v4 + 336) = a1;
  v5 = a2[1];
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  v6 = a2[3];
  *(v4 + 48) = a2[2];
  *(v4 + 64) = v6;
  return MEMORY[0x2A1C73D48](sub_29EB07B3C, 0, 0);
}

uint64_t sub_29EB07B3C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 16);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v7 = *(v0 + 64);
    v8 = *(v0 + 72);
  }

  else
  {
    v9 = [objc_opt_self() mainBundle];
    v10 = [v9 bundleIdentifier];

    if (v10)
    {
      v4 = sub_29EB146AC();
      v3 = v11;

      v7 = 0;
      v8 = 0xE000000000000000;
      v5 = 0x64696F72646E61;
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      v6 = 0xE700000000000000;
    }

    else
    {
      v4 = 0;
      v7 = 0;
      v5 = 0x64696F72646E61;
      v3 = 0xE000000000000000;
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      v6 = 0xE700000000000000;
      v8 = 0xE000000000000000;
    }
  }

  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  *(v0 + 96) = v4;
  *(v0 + 104) = v3;
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  *(v0 + 136) = v8;
  v14 = *(v12 + 16);
  v15 = *(v0 + 96);
  *(v0 + 144) = *(v0 + 80);
  *(v0 + 160) = v15;
  v16 = *(v0 + 128);
  *(v0 + 176) = *(v0 + 112);
  *(v0 + 192) = v16;
  if (v13)
  {
    sub_29EABD778(v0 + 16, v0 + 272, &qword_2A187B288, &qword_29EB1AAB8);
    v17 = v13;
  }

  else
  {
    v18 = objc_allocWithZone(MEMORY[0x29EDBA0B8]);
    sub_29EABD778(v0 + 16, v0 + 208, &qword_2A187B288, &qword_29EB1AAB8);
    v17 = [v18 init];
  }

  *(v0 + 360) = v17;
  v19 = v13;
  v20 = swift_task_alloc();
  *(v0 + 368) = v20;
  *v20 = v0;
  v20[1] = sub_29EB07D5C;
  v21 = *(v0 + 336);

  return sub_29EACA3DC(v21, (v0 + 144), v17);
}

uint64_t sub_29EB07D5C()
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 360);
  v4 = *v1;
  *(v4 + 376) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EB07EBC, 0, 0);
  }

  else
  {
    sub_29EB07F20(v4 + 80);
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_29EB07EBC()
{
  sub_29EB07F20(v0 + 80);
  v1 = *(v0 + 8);
  v2 = *(v0 + 376);

  return v1();
}

uint64_t AppMigrationTester.AppImportController.importSerializedData(from:importRequest:progress:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 240) = a3;
  *(v4 + 248) = v3;
  *(v4 + 232) = a1;
  v5 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v5;
  *(v4 + 80) = *(a2 + 64);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  return MEMORY[0x2A1C73D48](sub_29EB07FB0, 0, 0);
}

uint64_t sub_29EB07FB0()
{
  v1 = v0[31];
  v2 = [objc_allocWithZone(MEMORY[0x29EDBA098]) init];
  v0[32] = v2;
  v3 = *(v1 + 16);
  v4 = v0[3];
  if (v4)
  {
    v5 = v0[2];
    v6 = v0[4];
    v7 = v0[5];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[10];
  }

  else
  {
    v13 = [objc_opt_self() mainBundle];
    v14 = [v13 bundleIdentifier];

    if (v14)
    {
      v6 = sub_29EB146AC();
      v7 = v15;
    }

    else
    {
      v6 = 0;
      v7 = 0xE000000000000000;
    }

    v16 = v0[31];
    v9 = *(v16 + 24);
    v17 = *(v16 + 32);

    v10 = 0;
    v12 = 0;
    v11 = 0xE000000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v19 = v0[29];
  v18 = v0[30];
  v0[11] = v5;
  v0[12] = v4;
  v0[13] = v6;
  v0[14] = v7;
  v0[15] = v9;
  v0[16] = v8;
  v0[17] = v10;
  v0[18] = v11;
  v0[19] = v12;
  v20 = swift_task_alloc();
  v0[33] = v20;
  v20[2] = v3;
  v20[3] = v2;
  v20[4] = v0 + 11;
  v20[5] = v18;
  v20[6] = v19;
  sub_29EABD778((v0 + 2), (v0 + 20), &qword_2A187B290, &qword_29EB1AAD8);
  v21 = *(MEMORY[0x29EDCA460] + 4);
  v22 = swift_task_alloc();
  v0[34] = v22;
  *v22 = v0;
  v22[1] = sub_29EB081C0;

  return MEMORY[0x2A1C73C68]();
}

uint64_t sub_29EB081C0()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = sub_29EB0834C;
  }

  else
  {
    v5 = *(v2 + 264);
    sub_29EAE3620(v2 + 88);

    v4 = sub_29EB082E8;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB082E8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EB0834C()
{
  v1 = *(v0 + 264);

  sub_29EAE3620(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *(v0 + 280);

  return v2();
}

uint64_t sub_29EB083C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630) - 8) + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB08468, 0, 0);
}

uint64_t sub_29EB08468()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[19];
  v8 = sub_29EB1491C();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v5;
  *(v9 + 40) = v6;
  v10 = *(v3 + 64);
  v12 = *(v3 + 32);
  v11 = *(v3 + 48);
  *(v9 + 64) = *(v3 + 16);
  *(v9 + 80) = v12;
  *(v9 + 96) = v11;
  *(v9 + 112) = v10;
  *(v9 + 48) = *v3;
  *(v9 + 120) = v4;

  v13 = v6;
  sub_29EACD6D0(v3, (v0 + 2));
  v14 = v4;
  sub_29EB08D9C(v2, &unk_29EB1AE30, v9);
  sub_29EABCCEC(v2, &unk_2A187A8A0, &qword_29EB17630);
  v15 = v1[3];
  v16 = __swift_project_boxed_opaque_existential_1(v1, v15);
  v17 = *(v15 - 8);
  v18 = *(v17 + 64) + 15;
  v19 = swift_task_alloc();
  (*(v17 + 16))(v19, v16, v15);
  v0[14] = swift_getAssociatedTypeWitness();
  v0[15] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 11);
  sub_29EB1495C();

  v20 = [v13 fileHandleForWriting];
  v0[26] = v20;
  v21 = sub_29EB1410C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_29EB140EC();
  v0[16] = 0;
  v0[17] = v24 | 0x4000000000000000;
  v25 = swift_task_alloc();
  v0[27] = v25;
  v25[2] = v0 + 11;
  v25[3] = v0 + 16;
  v25[4] = 0x8000;
  v25[5] = v20;
  v25[6] = v7;
  v26 = swift_task_alloc();
  v0[28] = v26;
  *(v26 + 16) = v20;
  v27 = *(MEMORY[0x29EDCA470] + 4);
  v28 = swift_task_alloc();
  v0[29] = v28;
  *v28 = v0;
  v28[1] = sub_29EB087C8;
  v29 = v0[18];
  v30 = MEMORY[0x29EDCA180] + 8;

  return MEMORY[0x2A1C73C78](v29, &unk_29EB1AE40, v25, sub_29EB13EF8, v26, 0, 0, v30);
}

uint64_t sub_29EB087C8()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v8 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_29EB08970;
  }

  else
  {
    v6 = *(v2 + 216);
    v5 = *(v2 + 224);

    v4 = sub_29EB088EC;
  }

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB088EC()
{
  v1 = v0[26];
  sub_29EADB428(v1);

  sub_29EAAD010(v0[16], v0[17]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);

  v2 = v0[1];

  return v2();
}

uint64_t sub_29EB08970()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];

  sub_29EADB428(v3);

  sub_29EAAD010(v0[16], v0[17]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);

  v5 = v0[1];
  v6 = v0[30];

  return v5();
}

uint64_t sub_29EB08A0C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_29EAB73B4;

  return sub_29EB083C0(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_29EB08AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x2A1C73D48](sub_29EB08B08, 0, 0);
}

uint64_t sub_29EB08B08()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = [*(v0 + 96) fileHandleForReading];
  *(v0 + 120) = v3;
  *(v0 + 16) = *v2;
  v5 = *(v2 + 32);
  v4 = *(v2 + 48);
  v6 = *(v2 + 16);
  *(v0 + 80) = *(v2 + 64);
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  *(v0 + 32) = v6;
  v7 = *(v0 + 112);
  if (v1)
  {
    v8 = *(v0 + 112);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  }

  *(v0 + 128) = v8;
  v9 = v7;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_29EB08C34;
  v11 = *(v0 + 88);

  return sub_29EACC604(v3, v0 + 16);
}

uint64_t sub_29EB08C34()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  *(v3 + 144) = v0;

  if (v0)
  {
    v4 = *(v3 + 120);

    return MEMORY[0x2A1C73D48](sub_29EB08D84, 0, 0);
  }

  else
  {
    v5 = *(v3 + 128);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_29EB08D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = v20 - v9;
  sub_29EABD778(a1, v20 - v9, &unk_2A187A8A0, &qword_29EB17630);
  v11 = sub_29EB1491C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29EABCCEC(v10, &unk_2A187A8A0, &qword_29EB17630);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_29EB1489C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_29EB1490C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_29EB08F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v10 = v20 - v9;
  sub_29EABD778(a1, v20 - v9, &unk_2A187A8A0, &qword_29EB17630);
  v11 = sub_29EB1491C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_29EABCCEC(v10, &unk_2A187A8A0, &qword_29EB17630);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_29EB1489C();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_29EB1490C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_29EB09188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *MEMORY[0x29EDCA608];
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  v7 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB09220, 0, 0);
}

uint64_t sub_29EB09220()
{
  v8 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 144);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x29EDCA378] + 4);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_29EB09308;
  v6 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73B18](v0 + 264, v2, v3);
}

uint64_t sub_29EB09308()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_29EB0A090;
  }

  else
  {
    v3 = sub_29EB09448;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB09448()
{
  v32 = *MEMORY[0x29EDCA608];
  if (*(v0 + 265))
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 152);
    v4 = *v2;
    v3 = v2[1];
    *(v0 + 40) = MEMORY[0x29EDB9B70];
    *(v0 + 48) = sub_29EAB708C();
    *(v0 + 16) = v4;
    *(v0 + 24) = v3;
    sub_29EAB0308(v4, v3);
    v5 = swift_task_alloc();
    *(v0 + 200) = v5;
    *(v5 + 16) = v0 + 16;
    *(v5 + 24) = v1;
    v6 = *(MEMORY[0x29EDCA478] + 4);
    v7 = swift_task_alloc();
    *(v0 + 208) = v7;
    *v7 = v0;
    v7[1] = sub_29EB09814;
    v8 = *MEMORY[0x29EDCA608];
    v9 = MEMORY[0x29EDCA180];
    v10 = sub_29EAB70E0;
LABEL_16:

    return MEMORY[0x2A1C73C80](v7, 0, 0, 0xD000000000000017, 0x800000029EB1B830, v10, v5, v9 + 8);
  }

  v11 = *(v0 + 264);
  v12 = *(v0 + 152);
  if (v12[1] >> 62 == 2)
  {
    v13 = *(*v12 + 24);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB38, &qword_29EB180A8);
  *(v0 + 80) = v14;
  *(v0 + 88) = sub_29EAE3B20();
  *(v0 + 56) = v11;
  *(v0 + 267) = *__swift_project_boxed_opaque_existential_1((v0 + 56), v14);
  sub_29EB1427C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v15 = *v12;
  v16 = v12[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) <= 1)
  {
    if (!v17)
    {
      v18 = BYTE6(v16);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (v17 != 2)
  {
    if (!*(v0 + 160))
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v20 = *(v15 + 16);
  v19 = *(v15 + 24);
  v21 = __OFSUB__(v19, v20);
  v18 = v19 - v20;
  if (v21)
  {
    __break(1u);
LABEL_12:
    LODWORD(v18) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
    }

    v18 = v18;
  }

LABEL_14:
  if (v18 == *(v0 + 160))
  {
LABEL_15:
    v22 = *(v0 + 168);
    *(v0 + 120) = MEMORY[0x29EDB9B70];
    *(v0 + 128) = sub_29EAB708C();
    *(v0 + 96) = v15;
    *(v0 + 104) = v16;
    sub_29EAB0308(v15, v16);
    v5 = swift_task_alloc();
    *(v0 + 224) = v5;
    *(v5 + 16) = v0 + 96;
    *(v5 + 24) = v22;
    v23 = *(MEMORY[0x29EDCA478] + 4);
    v7 = swift_task_alloc();
    *(v0 + 232) = v7;
    *v7 = v0;
    v7[1] = sub_29EB09B90;
    v24 = *MEMORY[0x29EDCA608];
    v9 = MEMORY[0x29EDCA180];
    v10 = sub_29EB13F84;
    goto LABEL_16;
  }

LABEL_20:
  v25 = *(v0 + 144);
  v26 = *(v25 + 24);
  v27 = *(v25 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v28 = *(MEMORY[0x29EDCA378] + 4);
  v29 = swift_task_alloc();
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = sub_29EB09308;
  v30 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73B18](v0 + 264, v26, v27);
}

uint64_t sub_29EB09814()
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 208);
  v9 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = sub_29EB09AF8;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_29EB09964;
  }

  v6 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB09964()
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = v0[21];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[17] = 0;
  v2 = [v1 closeAndReturnError_];
  v3 = v0[17];
  if (v2)
  {
    v4 = *(MEMORY[0x29EDCA3D8] + 4);
    v5 = v3;
    v6 = swift_task_alloc();
    v0[31] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187B2D0, &qword_29EB1AE48);
    *v6 = v0;
    v6[1] = sub_29EB09EC8;
    v8 = v0[22];
    v9 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73BD0](v0 + 266, 0, 0, v7);
  }

  else
  {
    v10 = v3;
    sub_29EB1417C();

    swift_willThrow();
    v11 = v0[1];
    v12 = *MEMORY[0x29EDCA608];

    return v11();
  }
}

uint64_t sub_29EB09AF8()
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = v0[25];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[27];
  v3 = v0[1];
  v4 = *MEMORY[0x29EDCA608];

  return v3();
}

uint64_t sub_29EB09B90()
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 232);
  v9 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v4 = sub_29EB09E30;
  }

  else
  {
    v5 = *(v2 + 224);

    v4 = sub_29EB09CE0;
  }

  v6 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB09CE0()
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = *v1;
  v3 = v1[1] >> 62;
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_9;
    }

    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v4 = v2;
    v5 = v2 >> 32;
  }

  if (v5 < v4)
  {
    __break(1u);
  }

LABEL_9:
  v6 = v0[19];
  sub_29EB1427C();
  v7 = v0[18];
  v8 = *(v7 + 24);
  v9 = *(v7 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
  v10 = *(MEMORY[0x29EDCA378] + 4);
  v11 = swift_task_alloc();
  v0[23] = v11;
  *v11 = v0;
  v11[1] = sub_29EB09308;
  v12 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73B18](v0 + 33, v8, v9);
}

uint64_t sub_29EB09E30()
{
  v6 = *MEMORY[0x29EDCA608];
  v1 = v0[28];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = v0[30];
  v3 = v0[1];
  v4 = *MEMORY[0x29EDCA608];

  return v3();
}

uint64_t sub_29EB09EC8()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = sub_29EB0A118;
  }

  else
  {
    v3 = sub_29EB0A008;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0A008()
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 8);
  v2 = *MEMORY[0x29EDCA608];

  return v1();
}

uint64_t sub_29EB0A090()
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 192);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x29EDCA608];

  return v2();
}

uint64_t sub_29EB0A118()
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 256);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x29EDCA608];

  return v2();
}

uint64_t AppMigrationTester.AppImportController.importBrowserData(from:progressBlock:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2A1C73D48](sub_29EB0A1C4, 0, 0);
}

uint64_t sub_29EB0A1C4()
{
  super_class = v0[2].super_class;
  v2 = [objc_opt_self() progressWithTotalUnitCount_];
  v0[4].receiver = v2;
  if (super_class)
  {
    v4 = v0[2].super_class;
    receiver = v0[3].receiver;
    v5 = type metadata accessor for ProgressObserver();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_observationBlock];
    *v7 = v4;
    v7[1] = receiver;
    *&v6[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress] = v2;
    sub_29EAF88A0(v4);
    v8 = v2;
    sub_29EAF88A0(v4);
    v0[1].receiver = v6;
    v0[1].super_class = v5;
    v9 = v8;
    v10 = objc_msgSendSuper2(v0 + 1, sel_init);
    v11 = sub_29EB1467C();
    [v9 addObserver:v10 forKeyPath:v11 options:0 context:0];

    sub_29EAFAB14(v4);
  }

  else
  {
    v10 = 0;
  }

  v0[4].super_class = v10;
  v12 = *(v0[3].super_class + 2);
  v13 = swift_task_alloc();
  v0[5].receiver = v13;
  *v13 = v0;
  v13[1] = sub_29EB0A394;
  v15 = v0[2].receiver;

  return sub_29EACAB64(v15, v14, v2);
}

uint64_t sub_29EB0A394()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_29EB0A568;
  }

  else
  {
    v3 = sub_29EB0A4A8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0A4A8()
{
  v2 = v0[8];
  v1 = v0[9];
  if (v1)
  {
    v3 = *&v1[OBJC_IVAR____TtC15AppMigrationKit16ProgressObserver_progress];
    v4 = sub_29EB1467C();
    [v3 removeObserver:v1 forKeyPath:v4];

    v2 = v4;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_29EB0A568()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);
  v3 = *(v0 + 88);

  return v2();
}

uint64_t AppMigrationTester.AppImportController.registerImportCompletion(with:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x2A1C73D48](sub_29EB0A5F4, 0, 0);
}

uint64_t sub_29EB0A5F4()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_29EB0A694;
  v4 = *(v0 + 24);

  return sub_29EACB4D8(v4);
}

uint64_t sub_29EB0A694()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_29EB0A80C;
  }

  else
  {
    v3 = sub_29EB0A7A8;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0A7A8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29EB0A80C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t AppMigrationTester.importController.getter()
{
  v1[4] = v0;
  v2 = sub_29EB1446C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB0A930, v0, 0);
}

uint64_t sub_29EB0A930()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__importController;
  v0[8] = OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__importController;
  v3 = *(v1 + v2);
  v4 = v0[7];
  if (v3)
  {
    v5 = *(v1 + v2);

    v6 = v0[1];

    return v6(v3);
  }

  else
  {
    (*(v0[6] + 16))(v0[7], v1 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester_extensionIdentity, v0[5]);
    v8 = *(v1 + 120);
    v0[2] = *(v1 + 112);
    v0[3] = v8;
    type metadata accessor for AppMigrationTester.AppImportController();
    swift_allocObject();

    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_29EB0AA90;
    v10 = v0[7];

    return sub_29EB077D8(v10, v0 + 2);
  }
}

uint64_t sub_29EB0AA90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_29EB13F64;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_29EB13F6C;
  }

  return MEMORY[0x2A1C73D48](v8, v7, 0);
}

uint64_t AppMigrationTester.DeviceToDeviceExportProperties.compressedBytes.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t AppMigrationTester.DeviceToDeviceExportProperties.version.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t AppMigrationTester.ResourcesExportResult.extractedResourcesURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29EB1422C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppMigrationTester.ResourcesExportResult.exportProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppMigrationTester.ResourcesExportResult(0) + 20);
  v4 = *(v3 + 16);
  v5 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(v3 + 24);
  *(a1 + 40) = v5;
}

uint64_t AppMigrationTester.SerializedDataExportResult.exportProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 80);
  *a1 = *(v1 + 40);
  *(a1 + 16) = v2;
  *(a1 + 24) = *(v1 + 64);
  *(a1 + 40) = v3;
}

uint64_t sub_29EB0AD00(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v3[2] = a1;
  v3[3] = v4;
  v3[4] = *v4;
  v6 = sub_29EB1446C();
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v3[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  v3[8] = v9;
  v3[9] = v10;
  v3[10] = v11;

  return MEMORY[0x2A1C73D48](sub_29EB0AE00, 0, 0);
}

uint64_t sub_29EB0AE00()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = *(v0[6] + 16);
  v4(v2, v0[2], v3);
  v5 = type metadata accessor for ExportExtensionController();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v4(v1, v2, v3);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_29EB0AF00;
  v9 = v0[7];

  return ExtensionController.init(identity:)(v9);
}

uint64_t sub_29EB0AF00(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = *(v4 + 80);

    v8 = sub_29EB0B10C;
  }

  else
  {
    *(v4 + 104) = a1;
    v8 = sub_29EB0B030;
  }

  return MEMORY[0x2A1C73D48](v8, 0, 0);
}

uint64_t sub_29EB0B030()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v11 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *(v0[6] + 8);
  v7(v0[8], v4);
  v7(v5, v4);
  v6[2] = v1;
  v6[3] = v3;
  v6[4] = v2;

  v8 = v0[1];
  v9 = v0[3];

  return v8(v9);
}

uint64_t sub_29EB0B10C()
{
  v1 = v0[7];
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = *(v0[6] + 8);
  v6(v0[8], v2);
  v6(v5, v2);
  swift_deallocPartialClassInstance();

  v7 = v0[1];
  v8 = v0[12];

  return v7();
}

uint64_t sub_29EB0B1E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x29EDCA608];
  v6[60] = a5;
  v6[61] = v5;
  v6[58] = a3;
  v6[59] = a4;
  v6[56] = a1;
  v6[57] = a2;
  v7 = sub_29EB1422C();
  v6[62] = v7;
  v8 = *(v7 - 8);
  v6[63] = v8;
  v9 = *(v8 + 64) + 15;
  v6[64] = swift_task_alloc();
  v10 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB0B2D4, 0, 0);
}

uint64_t sub_29EB0B2D4()
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[62];
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  type metadata accessor for AppMigrationTester(0);
  sub_29EB0740C(0x656372756F736552, 0xE900000000000073, v1);
  sub_29EB141EC();
  v6 = *(v2 + 8);
  v6(v1, v3);
  v7 = sub_29EB1467C();

  LODWORD(v1) = [v5 fileExistsAtPath_];

  if (!v1)
  {
LABEL_4:
    v15 = v0[61];
    v0[65] = [objc_allocWithZone(MEMORY[0x29EDBA098]) init];
    v0[66] = *(v15 + 16);
    v16 = swift_task_alloc();
    v0[67] = v16;
    *v16 = v0;
    v16[1] = sub_29EB0B5C4;
    v17 = *MEMORY[0x29EDCA608];

    return sub_29EAF03C0((v0 + 18));
  }

  v8 = v0[64];
  v9 = v0[62];
  v10 = [v4 defaultManager];
  sub_29EB0740C(0x656372756F736552, 0xE900000000000073, v8);
  v11 = sub_29EB141BC();
  v6(v8, v9);
  v0[55] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v0 + 55];

  v13 = v0[55];
  if (v12)
  {
    v14 = v13;
    goto LABEL_4;
  }

  v19 = v13;
  sub_29EB1417C();

  swift_willThrow();
  v20 = v0[64];

  v21 = v0[1];
  v22 = *MEMORY[0x29EDCA608];

  return v21();
}

uint64_t sub_29EB0B5C4()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 536);
  v7 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = sub_29EB0B9F0;
  }

  else
  {
    v3 = sub_29EB0B704;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0B704()
{
  v37 = v0;
  v36 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  v5 = *(v0 + 200);
  v6 = *(v0 + 248);
  v7 = *(v0 + 232);
  *(v0 + 288) = *(v0 + 216);
  *(v0 + 304) = v7;
  *(v0 + 320) = v6;
  *(v0 + 272) = v5;
  v8 = *(v0 + 304);
  if (v8)
  {
    v9 = *(v0 + 464);
    v10 = *(v0 + 312);
    v11 = *(v0 + 320);
    v12 = *(v0 + 288);
    *(v0 + 328) = *(v0 + 272);
    *(v0 + 344) = v12;
    *(v0 + 360) = v8;
    *(v0 + 368) = v10 & 1;
    *(v0 + 376) = v11;
    if (v9)
    {
      v13 = *(v0 + 456);
      v14 = *(v0 + 472);
      v15 = v9;
      v16 = v13;
    }

    else
    {
      v19 = *(v0 + 488);
      v16 = *(v19 + 24);
      v15 = *(v19 + 32);
      v20 = *(v0 + 472);
      v13 = *(v0 + 456);

      v14 = MEMORY[0x29EDCA198];
    }

    v21 = *(v0 + 480);
    v32 = *(v0 + 520);
    sub_29EABD778(v0 + 272, v0 + 384, &qword_2A187B2C8, &qword_29EB1AE18);
    sub_29EB13620(v13, v9);
    sub_29EB06C44(v16, v15, v14, &v33);
    v22 = v33;
    v23 = v34;
    *(v0 + 552) = v34;
    v24 = v35;
    *(v0 + 560) = v35;
    v25 = swift_task_alloc();
    *(v0 + 568) = v25;
    *(v25 + 16) = v0 + 16;
    *(v25 + 24) = v32;
    *(v25 + 40) = v22;
    *(v25 + 48) = v23;
    *(v25 + 56) = v24;
    *(v25 + 64) = v21;
    *(v25 + 72) = v0 + 328;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
    v27 = type metadata accessor for AppMigrationTester.ResourcesExportResult(0);
    v28 = *(MEMORY[0x29EDCA460] + 4);
    v29 = swift_task_alloc();
    *(v0 + 576) = v29;
    *v29 = v0;
    v29[1] = sub_29EB0BA88;
    v30 = *(v0 + 448);
    v31 = *MEMORY[0x29EDCA608];
    v39 = v27;

    return MEMORY[0x2A1C73C68](v30, v26, v27, 0, 0, &unk_29EB1AE20, v25, v26);
  }

  else
  {
    result = sub_29EB14D2C();
    v18 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sub_29EB0B9F0()
{
  v6 = *MEMORY[0x29EDCA608];

  v1 = *(v0 + 544);
  v2 = *(v0 + 512);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x29EDCA608];

  return v3();
}

uint64_t sub_29EB0BA88()
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 576);
  v11 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v4 = sub_29EB0BCB8;
  }

  else
  {
    v5 = v2[71];
    v6 = v2[70];
    v7 = v2[69];
    sub_29EACD61C((v2 + 2));

    sub_29EABCCEC((v2 + 34), &qword_2A187B2C8, &qword_29EB1AE18);

    v4 = sub_29EB0BC1C;
  }

  v8 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB0BC1C()
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 512);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x29EDCA608];

  return v2();
}

uint64_t sub_29EB0BCB8()
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[65];

  sub_29EABCCEC((v0 + 34), &qword_2A187B2C8, &qword_29EB1AE18);
  sub_29EACD61C((v0 + 2));

  v5 = v0[73];
  v6 = v0[64];

  v7 = v0[1];
  v8 = *MEMORY[0x29EDCA608];

  return v7();
}

uint64_t sub_29EB0BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *MEMORY[0x29EDCA608];
  *(v8 + 376) = a7;
  *(v8 + 384) = v7;
  *(v8 + 360) = a5;
  *(v8 + 368) = a6;
  *(v8 + 344) = a3;
  *(v8 + 352) = a4;
  *(v8 + 336) = a1;
  v10 = sub_29EB1422C();
  *(v8 + 392) = v10;
  v11 = *(v10 - 8);
  *(v8 + 400) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = *a2;
  *(v8 + 432) = *(a2 + 16);
  v13 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB0BEAC, 0, 0);
}

uint64_t sub_29EB0BEAC()
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  type metadata accessor for AppMigrationTester(0);
  sub_29EB0740C(0x656372756F736552, 0xE900000000000073, v1);
  sub_29EB141EC();
  v6 = *(v2 + 8);
  v6(v1, v3);
  v7 = sub_29EB1467C();

  LODWORD(v1) = [v5 fileExistsAtPath_];

  if (!v1)
  {
LABEL_4:
    v15 = v0[48];
    v0[55] = [objc_allocWithZone(MEMORY[0x29EDBA098]) init];
    v0[56] = *(v15 + 16);
    v16 = swift_task_alloc();
    v0[57] = v16;
    *v16 = v0;
    v16[1] = sub_29EB0C19C;
    v17 = *MEMORY[0x29EDCA608];

    return sub_29EAF03C0((v0 + 18));
  }

  v8 = v0[51];
  v9 = v0[49];
  v10 = [v4 defaultManager];
  sub_29EB0740C(0x656372756F736552, 0xE900000000000073, v8);
  v11 = sub_29EB141BC();
  v6(v8, v9);
  v0[41] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v0 + 41];

  v13 = v0[41];
  if (v12)
  {
    v14 = v13;
    goto LABEL_4;
  }

  v19 = v13;
  sub_29EB1417C();

  swift_willThrow();
  v20 = v0[51];

  v21 = v0[1];
  v22 = *MEMORY[0x29EDCA608];

  return v21();
}

uint64_t sub_29EB0C19C()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_29EB0C874;
  }

  else
  {
    v3 = sub_29EB0C2DC;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0C2DC()
{
  v52 = v0;
  v51 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  *(v0 + 472) = v5;
  *(v0 + 480) = v6;
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  *(v0 + 488) = v7;
  *(v0 + 496) = v8;
  v9 = *(v0 + 104);
  v10 = *(v0 + 112);
  *(v0 + 504) = v9;
  *(v0 + 512) = v10;
  v11 = *(v0 + 120);
  *(v0 + 520) = v11;
  if (v9)
  {
    v12 = *(v0 + 424);
    *(v0 + 272) = v5;
    *(v0 + 280) = v6;
    *(v0 + 288) = v7;
    *(v0 + 296) = v8;
    *(v0 + 304) = v9;
    *(v0 + 312) = v10 & 1;
    *(v0 + 320) = v11;
    if (v12)
    {
      v13 = *(v0 + 432);
      v14 = *(v0 + 416);

      v15 = v14;
      v16 = v13;
      v17 = v12;
      v18 = v14;
    }

    else
    {
      v22 = *(v0 + 376);
      v21 = *(v0 + 384);
      v24 = *(v0 + 360);
      v23 = *(v0 + 368);
      v25 = *(v0 + 352);
      v26 = *(v21 + 32);
      v45 = *(v21 + 24);
      v46 = v26;
      sub_29EAA8ECC(v5, v6, v7, v8, v9);

      v27 = sub_29EB1460C();
      MigrationRequestWithOptions.init(destinationPlatform:options:)(&v45, v27, &v48);
      v18 = v48;
      v17 = v49;
      v16 = v50;
      v12 = *(v0 + 424);
      v28 = *(v0 + 432);
      v15 = *(v0 + 416);
    }

    v30 = *(v0 + 368);
    v29 = *(v0 + 376);
    v32 = *(v0 + 352);
    v31 = *(v0 + 360);
    v33 = *(v0 + 344);
    v48 = v18;
    v49 = v17;
    v50 = v16;
    v44 = *(v0 + 440);
    sub_29EB13620(v15, v12);
    sub_29EAFD474(&v48, v32, v29, &v45);
    v34 = v45;
    v35 = v46;
    *(v0 + 528) = v46;
    v36 = v47;
    *(v0 + 536) = v47;
    v37 = swift_task_alloc();
    *(v0 + 544) = v37;
    *(v37 + 16) = v0 + 16;
    *(v37 + 24) = v44;
    *(v37 + 40) = v34;
    *(v37 + 48) = v35;
    *(v37 + 56) = v36;
    *(v37 + 64) = v33;
    *(v37 + 72) = v0 + 272;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
    v39 = type metadata accessor for AppMigrationTester.ResourcesExportResult(0);
    v40 = *(MEMORY[0x29EDCA460] + 4);
    v41 = swift_task_alloc();
    *(v0 + 552) = v41;
    *v41 = v0;
    v41[1] = sub_29EB0C618;
    v42 = *(v0 + 336);
    v43 = *MEMORY[0x29EDCA608];
    v54 = v39;

    return MEMORY[0x2A1C73C68](v42, v38, v39, 0, 0, &unk_29EB1ADF8, v37, v38);
  }

  else
  {
    result = sub_29EB14D2C();
    v20 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sub_29EB0C618()
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 552);
  v18 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = sub_29EB0C90C;
  }

  else
  {
    v5 = v2[67];
    v6 = v2[66];
    v15 = v2[65];
    v16 = v2[68];
    v8 = v2[63];
    v7 = v2[64];
    v10 = v2[61];
    v9 = v2[62];
    v12 = v2[59];
    v11 = v2[60];
    sub_29EACD61C((v2 + 2));

    sub_29EAA8FB8(v12, v11, v10, v9, v8);

    v4 = sub_29EB0C7D8;
  }

  v13 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB0C7D8()
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 408);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x29EDCA608];

  return v2();
}

uint64_t sub_29EB0C874()
{
  v6 = *MEMORY[0x29EDCA608];

  v1 = *(v0 + 464);
  v2 = *(v0 + 408);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x29EDCA608];

  return v3();
}

uint64_t sub_29EB0C90C()
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = v0[68];
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v9 = v0[59];
  v8 = v0[60];
  v10 = v0[55];

  sub_29EAA8FB8(v9, v8, v7, v6, v5);
  sub_29EACD61C((v0 + 2));

  v11 = v0[70];
  v12 = v0[51];

  v13 = v0[1];
  v14 = *MEMORY[0x29EDCA608];

  return v13();
}

uint64_t sub_29EB0CA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *MEMORY[0x29EDCA608];
  v8[114] = v18;
  v8[113] = v17;
  v8[112] = a8;
  v8[111] = a7;
  v8[110] = a6;
  v8[109] = a5;
  v8[108] = a4;
  v8[107] = a3;
  v8[106] = a2;
  v8[105] = a1;
  v9 = sub_29EB1422C();
  v8[115] = v9;
  v10 = *(v9 - 8);
  v8[116] = v10;
  v11 = *(v10 + 64) + 15;
  v8[117] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630) - 8) + 64) + 15;
  v8[118] = swift_task_alloc();
  v13 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB0CB70, 0, 0);
}

uint64_t sub_29EB0CB70()
{
  v42 = *MEMORY[0x29EDCA608];
  v1 = v0[118];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  v6 = v0[109];
  v7 = v0[108];
  v8 = v0[107];
  v40 = v0[106];
  v41 = v0[117];
  v9 = sub_29EB1491C();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v12 = v8[6];
  v11 = v8[7];
  v13 = v8[5];
  *(v10 + 96) = v8[4];
  *(v10 + 112) = v13;
  *(v10 + 128) = v12;
  *(v10 + 144) = v11;
  v14 = v8[1];
  v15 = v8[2];
  v16 = v8[3];
  *(v10 + 32) = *v8;
  *(v10 + 48) = v14;
  *(v10 + 64) = v15;
  *(v10 + 80) = v16;
  *(v10 + 160) = v7;
  *(v10 + 168) = v6;
  *(v10 + 176) = v5;
  *(v10 + 184) = v4;
  *(v10 + 192) = v3;
  *(v10 + 200) = v2;
  v17 = v7;

  sub_29EAB83AC(v8, (v0 + 81));
  v18 = v2;

  sub_29EB08F8C(v1, &unk_29EB1AE08, v10);
  sub_29EABCCEC(v1, &unk_2A187A8A0, &qword_29EB17630);
  type metadata accessor for AppMigrationTester(0);
  sub_29EB0740C(0x656372756F736552, 0xE900000000000073, v41);
  v19 = [v17 fileHandleForReading];
  v20 = objc_allocWithZone(AMKArchiveReader);
  v0[104] = 0;
  v21 = [v20 initWithFileHandle:v19 error:v0 + 104];
  v0[119] = v21;
  v22 = v0[104];
  if (v21)
  {
    v23 = v21;
    v24 = v0[117];
    v25 = v22;

    v26 = swift_task_alloc();
    v0[120] = v26;
    *(v26 + 16) = v23;
    *(v26 + 24) = v24;
    v27 = swift_task_alloc();
    v0[121] = v27;
    *(v27 + 16) = v23;
    v28 = *(MEMORY[0x29EDCA470] + 4);
    v29 = swift_task_alloc();
    v0[122] = v29;
    *v29 = v0;
    v29[1] = sub_29EB0CF20;
    v30 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73C78](v0 + 97, &unk_29EB16A40, v26, sub_29EB13CE4, v27, 0, 0, &type metadata for ResourcesExtractorMetrics);
  }

  else
  {
    v31 = v0[117];
    v32 = v0[116];
    v33 = v0[115];
    v34 = v22;
    sub_29EB1417C();

    swift_willThrow();
    (*(v32 + 8))(v31, v33);
    v35 = v0[118];
    v36 = v0[117];

    v37 = v0[1];
    v38 = *MEMORY[0x29EDCA608];

    return v37();
  }
}

uint64_t sub_29EB0CF20()
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 976);
  v10 = *v1;
  *(*v1 + 984) = v0;

  if (v0)
  {
    v4 = sub_29EB0D2AC;
  }

  else
  {
    v5 = *(v2 + 968);
    v6 = *(v2 + 960);

    v4 = sub_29EB0D07C;
  }

  v7 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB0D07C()
{
  v7 = *MEMORY[0x29EDCA608];
  v1 = *(MEMORY[0x29EDCA3D8] + 4);
  v2 = swift_task_alloc();
  *(v0 + 992) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B2B8, &qword_29EB1ADD0);
  *v2 = v0;
  v2[1] = sub_29EB0D16C;
  v4 = *(v0 + 848);
  v5 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73BD0](v0 + 16, 0, 0, v3);
}

uint64_t sub_29EB0D16C()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 992);
  v7 = *v1;
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v3 = sub_29EB0D6B8;
  }

  else
  {
    v3 = sub_29EB0D398;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0D2AC()
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = v0[121];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[117];
  v5 = v0[116];
  v6 = v0[115];

  (*(v5 + 8))(v4, v6);
  v7 = v0[123];
  v8 = v0[118];
  v9 = v0[117];

  v10 = v0[1];
  v11 = *MEMORY[0x29EDCA608];

  return v10();
}

uint64_t sub_29EB0D398()
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = *(v0 + 112);
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  *(v0 + 432) = v2;
  *(v0 + 448) = v1;
  v4 = *(v0 + 128);
  v6 = *(v0 + 144);
  v5 = *(v0 + 160);
  *(v0 + 464) = v6;
  *(v0 + 480) = v5;
  v8 = *(v0 + 48);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  *(v0 + 368) = v8;
  *(v0 + 384) = v7;
  v10 = *(v0 + 64);
  v12 = *(v0 + 80);
  v11 = *(v0 + 96);
  *(v0 + 400) = v12;
  *(v0 + 416) = v11;
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  *(v0 + 336) = v14;
  *(v0 + 352) = v13;
  *(v0 + 272) = v2;
  *(v0 + 288) = v4;
  v15 = *(v0 + 160);
  *(v0 + 304) = v6;
  *(v0 + 320) = v15;
  *(v0 + 208) = v8;
  *(v0 + 224) = v10;
  *(v0 + 240) = v12;
  *(v0 + 256) = v3;
  *(v0 + 176) = v14;
  *(v0 + 192) = v9;
  if (sub_29EB13930(v0 + 176) == 1)
  {
    v16 = *(v0 + 952);
    v17 = *(v0 + 936);
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);
    sub_29EABCDBC();
    swift_allocError();
    *v20 = 0x697274656D206F4ELL;
    v20[1] = 0xEA00000000007363;
    v20[2] = 0;
LABEL_5:
    swift_willThrow();

    (*(v18 + 8))(v17, v19);
    v22 = *(v0 + 944);
    v23 = *(v0 + 936);

    v24 = *(v0 + 8);
    v25 = *MEMORY[0x29EDCA608];
    goto LABEL_6;
  }

  v16 = *(v0 + 952);
  if (*(v0 + 328))
  {
    v17 = *(v0 + 936);
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);
    v21 = *(v0 + 328);
    goto LABEL_5;
  }

  v27 = *(v0 + 288);
  *(v0 + 592) = *(v0 + 272);
  *(v0 + 608) = v27;
  *(v0 + 624) = *(v0 + 304);
  *(v0 + 640) = *(v0 + 320);
  v28 = *(v0 + 224);
  *(v0 + 528) = *(v0 + 208);
  *(v0 + 544) = v28;
  v29 = *(v0 + 256);
  *(v0 + 560) = *(v0 + 240);
  *(v0 + 576) = v29;
  v30 = *(v0 + 192);
  *(v0 + 496) = *(v0 + 176);
  *(v0 + 512) = v30;
  if (sub_29EB13954((v0 + 496)) == 1)
  {
    sub_29EABCCEC(v0 + 336, &qword_2A187B2C0, &unk_29EB1ADD8);
LABEL_11:
    v31 = 0;
LABEL_12:
    v32 = 0;
    v33 = 1;
    goto LABEL_13;
  }

  if ((*(v0 + 496) & 1) == 0)
  {
    if (*(v0 + 208) == 2)
    {
      goto LABEL_11;
    }

    v42 = *(v0 + 224);
    v43 = (v0 + 216);
    v31 = *(v0 + 200);
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (*(v0 + 296) == 2)
  {
    goto LABEL_11;
  }

  LOBYTE(v42) = *(v0 + 312);
  v43 = (v0 + 304);
  v31 = *(v0 + 288);
  if (v31 < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v42)
  {
    goto LABEL_12;
  }

  v32 = *v43;
  if (*v43 < 0)
  {
    goto LABEL_25;
  }

  v33 = 0;
LABEL_13:
  v34 = *(v0 + 912);
  v35 = *v34;
  if (*v34 < 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v36 = *(v0 + 944);
  v37 = *(v0 + 840);
  v39 = v34[3];
  v38 = v34[4];
  (*(*(v0 + 928) + 32))(v37, *(v0 + 936), *(v0 + 920));
  v40 = v37 + *(type metadata accessor for AppMigrationTester.ResourcesExportResult(0) + 20);
  *v40 = v31;
  *(v40 + 8) = v32;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v39;
  *(v40 + 40) = v38;

  v24 = *(v0 + 8);
  v41 = *MEMORY[0x29EDCA608];
LABEL_6:

  return v24();
}

uint64_t sub_29EB0D6B8()
{
  v10 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 936);
  v2 = *(v0 + 928);
  v3 = *(v0 + 920);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 1000);
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);

  v7 = *(v0 + 8);
  v8 = *MEMORY[0x29EDCA608];

  return v7();
}

uint64_t sub_29EB0D788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[54] = v10;
  v8[55] = v11;
  v8[52] = a7;
  v8[53] = a8;
  v8[50] = a5;
  v8[51] = a6;
  v8[48] = a1;
  v8[49] = a4;
  return MEMORY[0x2A1C73D48](sub_29EB0D7BC, 0, 0);
}

uint64_t sub_29EB0D7BC()
{
  v1 = 0xD000000000000055;
  v2 = *(v0 + 392);
  if (!*(v2 + 88))
  {
    return sub_29EB14D2C();
  }

  v3 = *(v2 + 56);
  v4 = *(v0 + 440);
  v5 = *(v2 + 96);
  v6 = [*(v0 + 400) fileHandleForWriting];
  *(v0 + 448) = v6;
  v7 = v5 & 1;
  v8 = *(v0 + 440);
  if (v4)
  {
    v9 = *(v0 + 440);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  }

  *(v0 + 456) = v9;
  v11 = *(v0 + 416);
  v12 = v8;
  v13 = swift_task_alloc();
  *(v0 + 464) = v13;
  v14 = *(v0 + 424);
  *(v13 + 16) = v6;
  *(v13 + 24) = v11;
  *(v13 + 32) = v14;
  *(v13 + 48) = v3;
  *(v13 + 56) = 0;
  *(v13 + 64) = v7;
  v15 = 0x800000029EB1BDC0;
  *(v0 + 352) = 0xD000000000000055;
  *(v0 + 360) = 0x800000029EB1BDC0;
  *(v0 + 368) = 40;
  *(v0 + 376) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 344) & 1) == 0)
  {
    v16 = *(v0 + 328);
    v17 = sub_29EB147BC();
    v1 = MEMORY[0x29EDA6DA0](v17);
    v15 = v18;
  }

  *(v0 + 472) = v15;
  v19 = swift_task_alloc();
  *(v0 + 480) = v19;
  *(v19 + 16) = sub_29EAF21FC;
  *(v19 + 24) = v13;
  v20 = swift_task_alloc();
  *(v0 + 488) = v20;
  *v20 = v0;
  v20[1] = sub_29EB0DA5C;
  v21 = *(v0 + 408);

  return sub_29EAC6340(v0 + 16, v1, v15, v6, v9, sub_29EB13F68, v19);
}

uint64_t sub_29EB0DA5C()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  v4 = *(v2 + 472);

  if (v0)
  {
    v5 = sub_29EB0DC50;
  }

  else
  {
    v5 = sub_29EB0DB80;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EB0DB80()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 384);

  v5 = *(v0 + 168);
  v6 = *(v0 + 32);
  *v4 = *(v0 + 16);
  *(v4 + 16) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v9 = *(v0 + 96);
  *(v4 + 64) = *(v0 + 80);
  *(v4 + 80) = v9;
  *(v4 + 32) = v7;
  *(v4 + 48) = v8;
  v10 = *(v0 + 112);
  v11 = *(v0 + 128);
  v12 = *(v0 + 144);
  *(v4 + 144) = *(v0 + 160);
  *(v4 + 112) = v11;
  *(v4 + 128) = v12;
  *(v4 + 96) = v10;

  v13 = *(v0 + 400);
  *(*(v0 + 384) + 152) = v5;
  sub_29EB12420(v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29EB0DC50()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 384);

  sub_29EAF21C8(v0 + 176);
  v6 = *(v0 + 192);
  *v5 = *(v0 + 176);
  *(v5 + 16) = v6;
  v7 = *(v0 + 208);
  v8 = *(v0 + 224);
  v9 = *(v0 + 256);
  *(v5 + 64) = *(v0 + 240);
  *(v5 + 80) = v9;
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  v10 = *(v0 + 272);
  v11 = *(v0 + 288);
  v12 = *(v0 + 304);
  *(v5 + 144) = *(v0 + 320);
  *(v5 + 112) = v11;
  *(v5 + 128) = v12;
  *(v5 + 96) = v10;

  v13 = *(v0 + 400);
  *(*(v0 + 384) + 152) = v1;
  sub_29EB12420(v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t AppMigrationTester.AppExportController.exportResources(request:progress:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAAAE5C;

  return sub_29EB0B1E0(a1, v6, v7, v8, a3);
}

uint64_t AppMigrationTester.AppExportController.exportResources<A>(request:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v14;
  v15 = swift_task_alloc();
  *(v7 + 40) = v15;
  *v15 = v7;
  v15[1] = sub_29EB0DEE4;

  return sub_29EB0BD98(a1, v7 + 16, a3, a4, a5, a6, a7);
}

uint64_t sub_29EB0DEE4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EB0E018, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t AppMigrationTester.AppExportController.preflight()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2A1C73D48](sub_29EB0E050, 0, 0);
}

uint64_t sub_29EB0E050()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_29EAB3120;
  v3 = v0[2];

  return sub_29EAF03C0(v3);
}

uint64_t sub_29EB0E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x29EDCA608];
  v6[46] = a5;
  v6[47] = v5;
  v6[44] = a3;
  v6[45] = a4;
  v6[42] = a1;
  v6[43] = a2;
  v7 = sub_29EB1422C();
  v6[48] = v7;
  v8 = *(v7 - 8);
  v6[49] = v8;
  v9 = *(v8 + 64) + 15;
  v6[50] = swift_task_alloc();
  v10 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB0E1E0, 0, 0);
}

uint64_t sub_29EB0E1E0()
{
  v23 = *MEMORY[0x29EDCA608];
  v1 = v0[49];
  v2 = v0[50];
  v3 = v0[48];
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  type metadata accessor for AppMigrationTester(0);
  sub_29EB0740C(0x7A696C6169726553, 0xEE00617461446465, v2);
  sub_29EB141EC();
  v6 = *(v1 + 8);
  v6(v2, v3);
  v7 = sub_29EB1467C();

  LODWORD(v2) = [v5 fileExistsAtPath_];

  if (!v2)
  {
LABEL_4:
    v15 = v0[47];
    v0[51] = [objc_allocWithZone(MEMORY[0x29EDBA098]) init];
    v0[52] = *(v15 + 16);
    v16 = swift_task_alloc();
    v0[53] = v16;
    *v16 = v0;
    v16[1] = sub_29EB0E4E4;
    v17 = *MEMORY[0x29EDCA608];

    return sub_29EAF03C0((v0 + 2));
  }

  v8 = v0[50];
  v9 = v0[48];
  v10 = [v4 defaultManager];
  sub_29EB0740C(0x7A696C6169726553, 0xEE00617461446465, v8);
  v11 = sub_29EB141BC();
  v6(v8, v9);
  v0[41] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v0 + 41];

  v13 = v0[41];
  if (v12)
  {
    v14 = v13;
    goto LABEL_4;
  }

  v19 = v13;
  sub_29EB1417C();

  swift_willThrow();
  v20 = v0[50];

  v21 = v0[1];
  v22 = *MEMORY[0x29EDCA608];

  return v21();
}

uint64_t sub_29EB0E4E4()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 424);
  v7 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_29EB0E8FC;
  }

  else
  {
    v3 = sub_29EB0E624;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0E624()
{
  v37 = v0;
  v36 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  *(v0 + 440) = v5;
  *(v0 + 448) = v6;
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  *(v0 + 456) = v7;
  *(v0 + 464) = v8;
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  *(v0 + 472) = v9;
  *(v0 + 480) = v10;
  v11 = *(v0 + 192);
  *(v0 + 488) = v11;
  if (v9)
  {
    v12 = *(v0 + 352);
    *(v0 + 272) = v5;
    *(v0 + 280) = v6;
    *(v0 + 288) = v7;
    *(v0 + 296) = v8;
    *(v0 + 304) = v9;
    *(v0 + 312) = v10 & 1;
    *(v0 + 320) = v11;

    sub_29EACD61C(v0 + 144);
    if (v12)
    {
      v13 = *(v0 + 352);
      v14 = *(v0 + 344);
      v15 = *(v0 + 360);
      v16 = v13;
      v17 = v14;
    }

    else
    {
      v20 = *(v0 + 376);
      v17 = *(v20 + 24);
      v16 = *(v20 + 32);
      v13 = *(v0 + 352);
      v21 = *(v0 + 360);
      v14 = *(v0 + 344);

      v15 = MEMORY[0x29EDCA198];
    }

    v22 = *(v0 + 368);
    v32 = *(v0 + 408);
    sub_29EB13620(v14, v13);
    sub_29EB06C44(v17, v16, v15, &v33);
    v23 = v33;
    v24 = v34;
    v25 = v35;
    *(v0 + 496) = v34;
    *(v0 + 504) = v25;
    v26 = swift_task_alloc();
    *(v0 + 512) = v26;
    *(v26 + 16) = v32;
    *(v26 + 32) = v23;
    *(v26 + 40) = v24;
    *(v26 + 48) = v25;
    *(v26 + 56) = v0 + 272;
    *(v26 + 64) = (v10 & 1) == 0;
    *(v26 + 72) = v22;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
    v28 = *(MEMORY[0x29EDCA460] + 4);
    v29 = swift_task_alloc();
    *(v0 + 520) = v29;
    *v29 = v0;
    v29[1] = sub_29EB0E994;
    v30 = *(v0 + 336);
    v31 = *MEMORY[0x29EDCA608];
    v39 = &type metadata for AppMigrationTester.SerializedDataExportResult;

    return MEMORY[0x2A1C73C68](v30, v27, &type metadata for AppMigrationTester.SerializedDataExportResult, 0, 0, &unk_29EB1ADE8, v26, v27);
  }

  else
  {
    result = sub_29EB14D2C();
    v19 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sub_29EB0E8FC()
{
  v6 = *MEMORY[0x29EDCA608];

  v1 = *(v0 + 432);
  v2 = *(v0 + 400);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x29EDCA608];

  return v3();
}

uint64_t sub_29EB0E994()
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 520);
  v19 = *v1;
  *(*v1 + 528) = v0;

  if (v0)
  {
    v4 = sub_29EB0EBD4;
  }

  else
  {
    v6 = v2[63];
    v5 = v2[64];
    v8 = v2[61];
    v7 = v2[62];
    v10 = v2[59];
    v9 = v2[60];
    v12 = v2[57];
    v11 = v2[58];
    v15 = v2 + 55;
    v13 = v2[55];
    v14 = v15[1];

    sub_29EAA8FB8(v13, v14, v12, v11, v10);

    v4 = sub_29EB0EB3C;
  }

  v16 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB0EB3C()
{
  v5 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 400);

  v2 = *(v0 + 8);
  v3 = *MEMORY[0x29EDCA608];

  return v2();
}

uint64_t sub_29EB0EBD4()
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = v0[63];
  v16 = v0[64];
  v3 = v0[61];
  v2 = v0[62];
  v5 = v0[59];
  v4 = v0[60];
  v7 = v0[57];
  v6 = v0[58];
  v9 = v0[55];
  v8 = v0[56];
  v10 = v0[51];

  sub_29EAA8FB8(v9, v8, v7, v6, v5);

  v11 = v0[66];
  v12 = v0[50];

  v13 = v0[1];
  v14 = *MEMORY[0x29EDCA608];

  return v13();
}

uint64_t sub_29EB0ECD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *MEMORY[0x29EDCA608];
  *(v8 + 376) = a7;
  *(v8 + 384) = v7;
  *(v8 + 360) = a5;
  *(v8 + 368) = a6;
  *(v8 + 344) = a3;
  *(v8 + 352) = a4;
  *(v8 + 336) = a1;
  v10 = sub_29EB1422C();
  *(v8 + 392) = v10;
  v11 = *(v10 - 8);
  *(v8 + 400) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = *a2;
  *(v8 + 432) = *(a2 + 16);
  v13 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB0EDEC, 0, 0);
}

uint64_t sub_29EB0EDEC()
{
  v23 = *MEMORY[0x29EDCA608];
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[49];
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  type metadata accessor for AppMigrationTester(0);
  sub_29EB0740C(0x7A696C6169726553, 0xEE00617461446465, v2);
  sub_29EB141EC();
  v6 = *(v1 + 8);
  v6(v2, v3);
  v7 = sub_29EB1467C();

  LODWORD(v2) = [v5 fileExistsAtPath_];

  if (!v2)
  {
LABEL_4:
    v15 = v0[48];
    v0[55] = [objc_allocWithZone(MEMORY[0x29EDBA098]) init];
    v0[56] = *(v15 + 16);
    v16 = swift_task_alloc();
    v0[57] = v16;
    *v16 = v0;
    v16[1] = sub_29EB0F0F0;
    v17 = *MEMORY[0x29EDCA608];

    return sub_29EAF03C0((v0 + 2));
  }

  v8 = v0[51];
  v9 = v0[49];
  v10 = [v4 defaultManager];
  sub_29EB0740C(0x7A696C6169726553, 0xEE00617461446465, v8);
  v11 = sub_29EB141BC();
  v6(v8, v9);
  v0[41] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v0 + 41];

  v13 = v0[41];
  if (v12)
  {
    v14 = v13;
    goto LABEL_4;
  }

  v19 = v13;
  sub_29EB1417C();

  swift_willThrow();
  v20 = v0[51];

  v21 = v0[1];
  v22 = *MEMORY[0x29EDCA608];

  return v21();
}

uint64_t sub_29EB0F0F0()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 456);
  v7 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = sub_29EB0C874;
  }

  else
  {
    v3 = sub_29EB0F230;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB0F230()
{
  v50 = v0;
  v49 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v1;
  v2 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v2;
  v3 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v3;
  v4 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v4;
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  *(v0 + 472) = v5;
  *(v0 + 480) = v6;
  v7 = *(v0 + 160);
  v8 = *(v0 + 168);
  *(v0 + 488) = v7;
  *(v0 + 496) = v8;
  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  *(v0 + 504) = v9;
  *(v0 + 512) = v10;
  v11 = *(v0 + 192);
  *(v0 + 520) = v11;
  if (v9)
  {
    v12 = *(v0 + 424);
    *(v0 + 272) = v5;
    *(v0 + 280) = v6;
    *(v0 + 288) = v7;
    *(v0 + 296) = v8;
    *(v0 + 304) = v9;
    *(v0 + 312) = v10 & 1;
    *(v0 + 320) = v11;

    sub_29EACD61C(v0 + 144);
    if (v12)
    {
      v13 = *(v0 + 424);
      v14 = *(v0 + 416);
      v15 = *(v0 + 432);
      v16 = v13;
      v17 = v14;
    }

    else
    {
      v21 = *(v0 + 376);
      v20 = *(v0 + 384);
      v23 = *(v0 + 360);
      v22 = *(v0 + 368);
      v24 = *(v0 + 352);
      v25 = *(v20 + 32);
      v43 = *(v20 + 24);
      v44 = v25;

      v26 = sub_29EB1460C();
      MigrationRequestWithOptions.init(destinationPlatform:options:)(&v43, v26, &v46);
      v17 = v46;
      v16 = v47;
      v15 = v48;
      v13 = *(v0 + 424);
      v27 = *(v0 + 432);
      v14 = *(v0 + 416);
    }

    v28 = *(v0 + 368);
    v29 = *(v0 + 376);
    v31 = *(v0 + 352);
    v30 = *(v0 + 360);
    v32 = *(v0 + 344);
    v46 = v17;
    v47 = v16;
    v48 = v15;
    v42 = *(v0 + 440);
    sub_29EB13620(v14, v13);
    sub_29EAFD474(&v46, v31, v29, &v43);
    v33 = v43;
    v34 = v44;
    *(v0 + 528) = v44;
    v35 = v45;
    *(v0 + 536) = v45;
    v36 = swift_task_alloc();
    *(v0 + 544) = v36;
    *(v36 + 16) = v42;
    *(v36 + 32) = v33;
    *(v36 + 40) = v34;
    *(v36 + 48) = v35;
    *(v36 + 56) = v0 + 272;
    *(v36 + 64) = (v10 & 1) == 0;
    *(v36 + 72) = v32;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AA48, &qword_29EB17EF0);
    v38 = *(MEMORY[0x29EDCA460] + 4);
    v39 = swift_task_alloc();
    *(v0 + 552) = v39;
    *v39 = v0;
    v39[1] = sub_29EB0F548;
    v40 = *(v0 + 336);
    v41 = *MEMORY[0x29EDCA608];
    v52 = &type metadata for AppMigrationTester.SerializedDataExportResult;

    return MEMORY[0x2A1C73C68](v40, v37, &type metadata for AppMigrationTester.SerializedDataExportResult, 0, 0, &unk_29EB1ADB0, v36, v37);
  }

  else
  {
    result = sub_29EB14D2C();
    v19 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sub_29EB0F548()
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *v1;
  v3 = *(*v1 + 552);
  v19 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v4 = sub_29EB0F6F8;
  }

  else
  {
    v5 = v2[68];
    v6 = v2[67];
    v7 = v2[66];
    v8 = v2[65];
    v10 = v2[63];
    v9 = v2[64];
    v12 = v2[61];
    v11 = v2[62];
    v15 = v2 + 59;
    v13 = v2[59];
    v14 = v15[1];

    sub_29EAA8FB8(v13, v14, v12, v11, v10);

    v4 = sub_29EB0C7D8;
  }

  v16 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v4, 0, 0);
}

uint64_t sub_29EB0F6F8()
{
  v17 = *MEMORY[0x29EDCA608];
  v16 = v0[68];
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v5 = v0[63];
  v4 = v0[64];
  v7 = v0[61];
  v6 = v0[62];
  v9 = v0[59];
  v8 = v0[60];
  v10 = v0[55];

  sub_29EAA8FB8(v9, v8, v7, v6, v5);

  v11 = v0[70];
  v12 = v0[51];

  v13 = v0[1];
  v14 = *MEMORY[0x29EDCA608];

  return v13();
}

uint64_t sub_29EB0F804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *MEMORY[0x29EDCA608];
  *(v8 + 984) = v24;
  *(v8 + 1243) = v23;
  *(v8 + 976) = a8;
  *(v8 + 968) = a7;
  *(v8 + 960) = a6;
  *(v8 + 952) = a5;
  *(v8 + 944) = a4;
  *(v8 + 936) = a3;
  *(v8 + 928) = a2;
  *(v8 + 920) = a1;
  v9 = sub_29EB1418C();
  *(v8 + 992) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1000) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 1008) = swift_task_alloc();
  v12 = sub_29EB14A0C();
  *(v8 + 1016) = v12;
  v13 = *(v12 - 8);
  *(v8 + 1024) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 1032) = swift_task_alloc();
  v15 = sub_29EB1422C();
  *(v8 + 1040) = v15;
  v16 = *(v15 - 8);
  *(v8 + 1048) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  *(v8 + 1088) = swift_task_alloc();
  *(v8 + 1096) = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A187A8A0, &qword_29EB17630) - 8) + 64) + 15;
  *(v8 + 1104) = swift_task_alloc();
  v19 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](sub_29EB0FA4C, 0, 0);
}

uint64_t sub_29EB0FA4C()
{
  v141 = v0;
  v140 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 1104);
  v136 = *(v0 + 1088);
  v138 = *(v0 + 1080);
  v2 = *(v0 + 1048);
  v133 = *(v0 + 1096);
  v134 = *(v0 + 1040);
  v131 = *(v0 + 1243);
  v3 = *(v0 + 976);
  v4 = *(v0 + 968);
  v5 = *(v0 + 960);
  v6 = *(v0 + 952);
  v7 = *(v0 + 944);
  v8 = *(v0 + 936);
  v127 = *(v0 + 984);
  v129 = *(v0 + 928);
  v9 = sub_29EB1491C();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;
  *(v10 + 48) = v6;
  *(v10 + 56) = v5;
  *(v10 + 64) = v4;
  v11 = *v3;
  v12 = *(v3 + 16);
  v13 = *(v3 + 32);
  *(v10 + 120) = *(v3 + 48);
  *(v10 + 104) = v13;
  *(v10 + 88) = v12;
  *(v10 + 72) = v11;
  v131 &= 1u;
  *(v10 + 128) = v131;
  *(v10 + 136) = v127;
  v14 = v8;

  sub_29EB138D4(v3, v0 + 648);
  v15 = v127;
  sub_29EB08F8C(v1, &unk_29EB1ADC0, v10);
  sub_29EABCCEC(v1, &unk_2A187A8A0, &qword_29EB17630);
  type metadata accessor for AppMigrationTester(0);
  sub_29EB0740C(0x7A696C6169726553, 0xEE00617461446465, v133);
  v16 = *(v2 + 16);
  v16(v136, v133, v134);
  v17 = type metadata accessor for SerializedDataWriter(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  *(swift_allocObject() + OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize) = 52428800;
  v16(v138, v136, v134);
  v139 = v131;
  *(v0 + 1112) = sub_29EAE5D1C(v138, 1, &v139);
  v20 = *(v0 + 1088);
  v21 = *(v0 + 1048);
  v22 = *(v0 + 1040);
  v23 = *(v0 + 1032);
  v24 = *(v0 + 1024);
  v25 = *(v0 + 1016);
  v26 = *(v0 + 936);
  v27 = *(v21 + 8);
  *(v0 + 1120) = v27;
  *(v0 + 1128) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v20, v22);
  *(v0 + 1136) = [v26 fileHandleForReading];
  sub_29EB14A1C();
  v28 = sub_29EB149FC();
  v30 = v29;
  v32 = v31;
  (*(v24 + 8))(v23, v25);
  *(v0 + 744) = v28;
  *(v0 + 752) = v30;
  *(v0 + 760) = v32;
  v33 = sub_29EB1410C();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = sub_29EB140EC();
  *(v0 + 792) = 0;
  *(v0 + 800) = v36 | 0x4000000000000000;
  *(v0 + 1144) = OBJC_IVAR____TtC15AppMigrationKit20SerializedDataWriter_chunkSize;
  *(v0 + 1152) = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunkHandle;
  *(v0 + 1160) = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_currentChunk;
  *(v0 + 1168) = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_forWriting;
  *(v0 + 1176) = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_chunkStageDirectory;
  *(v0 + 1184) = OBJC_IVAR____TtC15AppMigrationKit21SerializedDataChunker_compressionScheme;
  v37 = *(v0 + 752);
  if (v37 == *(v0 + 760))
  {
LABEL_69:
    v123 = *(MEMORY[0x29EDB9A80] + 4);
    v124 = swift_task_alloc();
    *(v0 + 1192) = v124;
    *v124 = v0;
    v124[1] = sub_29EB105DC;
    v125 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v38 = 0x29F37F000;
    while (1)
    {
      v39 = *v37;
      *(v0 + 752) = v37 + 1;
      if (*(v0 + 800) >> 62 == 2)
      {
        v40 = *(*(v0 + 792) + 24);
      }

      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB38, &qword_29EB180A8);
      *(v0 + 728) = v41;
      *(v0 + 736) = sub_29EAE3B20();
      *(v0 + 704) = v39;
      *(v0 + 1242) = *__swift_project_boxed_opaque_existential_1((v0 + 704), v41);
      sub_29EB1427C();
      __swift_destroy_boxed_opaque_existential_1((v0 + 704));
      v42 = *(v0 + 792);
      v43 = *(v0 + 800) >> 62;
      if (v43 > 1)
      {
        if (v43 != 2)
        {
          goto LABEL_4;
        }

        v46 = *(v42 + 16);
        v45 = *(v42 + 24);
        v47 = __OFSUB__(v45, v46);
        v44 = v45 - v46;
        if (v47)
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (!v43)
        {
          goto LABEL_4;
        }

        LODWORD(v44) = HIDWORD(v42) - v42;
        if (__OFSUB__(HIDWORD(v42), v42))
        {
          goto LABEL_82;
        }

        v44 = v44;
      }

      if (v44 != 0x8000)
      {
        goto LABEL_4;
      }

      v48 = *(v0 + 1112);
      v49 = *(v48 + *(v0 + 1152));
      if (!v49)
      {
        break;
      }

      v50 = *(v48 + *(v0 + 1144));
      v51 = [v49 *(v38 + 2928)];
      v137 = v50;
      v52 = v50 - v51;
      if (v50 < v51)
      {
        goto LABEL_83;
      }

      v53 = 0;
      v126 = v42 >> 32;
      v128 = v42;
      v54 = __OFSUB__(HIDWORD(v42), v42);
      v132 = v54;
      v130 = HIDWORD(v42) - v42;
      v135 = v42;
      while (1)
      {
        if (v43 == 1)
        {
          v66 = v130;
          if (v132)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v68 = *(v42 + 16);
          v67 = *(v42 + 24);
          v47 = __OFSUB__(v67, v68);
          v66 = v67 - v68;
          if (v47)
          {
            goto LABEL_75;
          }
        }

        if ((v66 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        if (v66 >= v52)
        {
          v69 = v52;
        }

        else
        {
          v69 = v66;
        }

        v70 = *(*(v0 + 1112) + *(v0 + 1152));
        if (!v70)
        {
          goto LABEL_85;
        }

        if (v69 < v53)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }

        if (v43 == 2)
        {
          v71 = *(v42 + 16);
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_78;
          }

          v72 = *(v42 + 24);
        }

        else
        {
          v72 = v126;
          v71 = v128;
          if ((v128 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }
        }

        if ((v72 & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        if (v72 < v71)
        {
          goto LABEL_68;
        }

        v73 = v70;
        *(v0 + 808) = sub_29EB1429C();
        *(v0 + 816) = v74;
        sub_29EAB708C();
        sub_29EB14A2C();
        sub_29EAAD010(*(v0 + 808), *(v0 + 816));

        if (v43 == 2)
        {
          v76 = *(v42 + 16);
          v75 = *(v42 + 24);
          v47 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v47)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v77 = v130;
          if (v132)
          {
            goto LABEL_79;
          }
        }

        if (v77 < 1 || v52 >= v77)
        {
          break;
        }

        v78 = *(v0 + 1160);
        v79 = *(v0 + 1112);
        v80 = *(v79 + v78);
        v65 = __CFADD__(v80, 1);
        v81 = v80 + 1;
        if (v65)
        {
          goto LABEL_73;
        }

        v82 = *(v0 + 1184);
        v83 = *(v0 + 1168);
        *(v79 + v78) = v81;
        v84 = *(v79 + v83);
        v85 = *(v79 + v82);
        if (v84 == 1)
        {
          if (v85)
          {
            *(v0 + 896) = v81;
            sub_29EB14E8C();
          }

          else
          {
            *(v0 + 904) = v81;
            *(v0 + 840) = sub_29EB14E8C();
            *(v0 + 848) = v86;
            MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
            MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
            v87 = *(v0 + 840);
            v88 = *(v0 + 848);
          }

          v55 = *(v0 + 1128);
          v56 = *(v0 + 1120);
          v57 = *(v0 + 1072);
          v58 = *(v0 + 1040);
          v59 = *(v0 + 1112) + *(v0 + 1176);
          sub_29EB141CC();

          sub_29EB141FC();
          v56(v57, v58);
          sub_29EB1471C();

          v60 = sub_29EB1456C();

          v61 = [objc_allocWithZone(MEMORY[0x29EDB9FB0]) initWithFileDescriptor:v60 closeOnDealloc:1];
        }

        else
        {
          if (v85)
          {
            *(v0 + 872) = v81;
            sub_29EB14E8C();
          }

          else
          {
            *(v0 + 888) = v81;
            *(v0 + 824) = sub_29EB14E8C();
            *(v0 + 832) = v89;
            MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
            MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
            v90 = *(v0 + 824);
            v91 = *(v0 + 832);
          }

          v92 = *(v0 + 1064);
          v93 = *(v0 + 1112) + *(v0 + 1176);
          sub_29EB141CC();

          v94 = sub_29EB141BC();
          v95 = objc_opt_self();
          *(v0 + 880) = 0;
          v61 = [v95 fileHandleForReadingFromURL:v94 error:v0 + 880];

          v96 = *(v0 + 880);
          v97 = *(v0 + 1128);
          v98 = *(v0 + 1120);
          v99 = *(v0 + 1064);
          v100 = *(v0 + 1040);
          if (!v61)
          {
            v104 = v96;
            sub_29EB1417C();

            swift_willThrow();
            v98(v99, v100);
            v105 = *(v0 + 1128);
            v106 = *(v0 + 1120);
            v107 = *(v0 + 1112);
            v108 = *(v0 + 1096);
            v109 = *(v0 + 1040);

            v110 = *(v0 + 744);
            swift_unknownObjectRelease();
            v106(v108, v109);
            sub_29EAAD010(*(v0 + 792), *(v0 + 800));
            v111 = *(v0 + 1104);
            v112 = *(v0 + 1096);
            v113 = *(v0 + 1088);
            v114 = *(v0 + 1080);
            v115 = *(v0 + 1072);
            v116 = *(v0 + 1064);
            v117 = *(v0 + 1056);
            v118 = *(v0 + 1032);
            v119 = *(v0 + 1008);

            v120 = *(v0 + 8);
            v121 = *MEMORY[0x29EDCA608];

            return v120();
          }

          v101 = v96;
          v98(v99, v100);
        }

        v53 = v52;
        v62 = *(v0 + 1152);
        v63 = *(v0 + 1112);
        v64 = *(v63 + v62);
        *(v63 + v62) = v61;

        v42 = v135;
        v65 = __CFADD__(v52, v137);
        v52 += v137;
        if (v65)
        {
          goto LABEL_74;
        }
      }

      v102 = *(v0 + 792);
      v103 = *(v0 + 800) >> 62;
      if (v103 > 1)
      {
        v38 = 0x29F37F000;
        if (v103 == 2 && *(v102 + 24) < *(v102 + 16))
        {
          goto LABEL_84;
        }
      }

      else
      {
        v38 = 0x29F37F000uLL;
        if (v103 && v102 >> 32 < v102)
        {
          goto LABEL_84;
        }
      }

      sub_29EB1427C();
LABEL_4:
      v37 = *(v0 + 752);
      if (v37 == *(v0 + 760))
      {
        goto LABEL_69;
      }
    }

    __break(1u);
  }

  return MEMORY[0x2A1C5A720]();
}

uint64_t sub_29EB105DC(__int16 a1)
{
  v9 = *MEMORY[0x29EDCA608];
  v4 = *v2;
  v5 = *(*v2 + 1192);
  v10 = *v2;
  *(*v2 + 1200) = v1;

  if (v1)
  {
    v6 = sub_29EB1072C;
  }

  else
  {
    *(v4 + 1240) = a1;
    v6 = sub_29EB10880;
  }

  v7 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v6, 0, 0);
}

uint64_t sub_29EB1072C()
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1040);

  v6 = *(v0 + 744);
  swift_unknownObjectRelease();
  v2(v4, v5);
  sub_29EAAD010(*(v0 + 792), *(v0 + 800));
  v7 = *(v0 + 1200);
  v8 = *(v0 + 1104);
  v9 = *(v0 + 1096);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1072);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 1008);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x29EDCA608];

  return v17();
}

uint64_t sub_29EB10880()
{
  v104 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 1240);
  v2 = *(v0 + 792);
  v3 = *(v0 + 800);
  if ((v1 & 0x100) != 0)
  {
    v73 = swift_task_alloc();
    *(v0 + 1208) = v73;
    *v73 = v0;
    v73[1] = sub_29EB1112C;
    v74 = *(v0 + 1112);
    v75 = *MEMORY[0x29EDCA608];

    return sub_29EAE637C(v2, v3);
  }

  v4 = *(v0 + 1200);
  v5 = v1;
LABEL_3:
  if (v3 >> 62 == 2)
  {
    v6 = *(v2 + 24);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187AB38, &qword_29EB180A8);
  *(v0 + 728) = v7;
  *(v0 + 736) = sub_29EAE3B20();
  *(v0 + 704) = v5;
  *(v0 + 1242) = *__swift_project_boxed_opaque_existential_1((v0 + 704), v7);
  sub_29EB1427C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 704));
  v8 = *(v0 + 792);
  v9 = *(v0 + 800) >> 62;
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_62;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    v13 = __OFSUB__(v11, v12);
    v10 = v11 - v12;
    if (v13)
    {
      goto LABEL_88;
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_62;
    }

    LODWORD(v10) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
    }

    v10 = v10;
  }

  if (v10 != 0x8000)
  {
    goto LABEL_62;
  }

  v14 = *(v0 + 1112);
  v15 = *(v14 + *(v0 + 1152));
  if (!v15)
  {
    __break(1u);
    return MEMORY[0x2A1C5A720]();
  }

  v16 = *(v14 + *(v0 + 1144));
  v17 = [v15 offsetInFile];
  v103 = v16;
  v18 = v16 - v17;
  if (v16 < v17)
  {
    goto LABEL_89;
  }

  v19 = 0;
  v98 = v8 >> 32;
  v99 = v8;
  v20 = __OFSUB__(HIDWORD(v8), v8);
  v101 = v20;
  v100 = HIDWORD(v8) - v8;
  v102 = v8;
  while (1)
  {
    if (v9 == 1)
    {
      v32 = v100;
      if (v101)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v34 = *(v8 + 16);
      v33 = *(v8 + 24);
      v13 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v13)
      {
        goto LABEL_79;
      }
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v32 >= v18)
    {
      v35 = v18;
    }

    else
    {
      v35 = v32;
    }

    v36 = *(*(v0 + 1112) + *(v0 + 1152));
    if (!v36)
    {
      goto LABEL_91;
    }

    if (v35 < v19)
    {
      goto LABEL_75;
    }

    if (v9 == 2)
    {
      v37 = *(v8 + 16);
      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      v38 = *(v8 + 24);
    }

    else
    {
      v38 = v98;
      v37 = v99;
      if ((v99 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if (v38 < v37)
    {
      goto LABEL_74;
    }

    v39 = v36;
    *(v0 + 808) = sub_29EB1429C();
    *(v0 + 816) = v40;
    sub_29EAB708C();
    sub_29EB14A2C();
    if (v4)
    {

      sub_29EAAD010(*(v0 + 808), *(v0 + 816));
      goto LABEL_69;
    }

    sub_29EAAD010(*(v0 + 808), *(v0 + 816));

    if (v9 == 2)
    {
      v42 = *(v8 + 16);
      v41 = *(v8 + 24);
      v13 = __OFSUB__(v41, v42);
      v43 = v41 - v42;
      if (v13)
      {
        goto LABEL_82;
      }
    }

    else
    {
      v43 = v100;
      if (v101)
      {
        goto LABEL_83;
      }
    }

    if (v43 < 1 || v18 >= v43)
    {
      v68 = *(v0 + 792);
      v69 = *(v0 + 800) >> 62;
      if (v69 > 1)
      {
        if (v69 != 2)
        {
          goto LABEL_61;
        }

        v70 = *(v68 + 16);
        v71 = *(v68 + 24);
      }

      else
      {
        if (!v69)
        {
LABEL_61:
          sub_29EB1427C();
          v4 = 0;
LABEL_62:
          v72 = *(v0 + 752);
          if (v72 == *(v0 + 760))
          {
            goto LABEL_84;
          }

          v5 = *v72;
          *(v0 + 752) = v72 + 1;
          v2 = *(v0 + 792);
          v3 = *(v0 + 800);
          goto LABEL_3;
        }

        v70 = v68;
        v71 = v68 >> 32;
      }

      if (v71 >= v70)
      {
        goto LABEL_61;
      }

      goto LABEL_90;
    }

    v44 = *(v0 + 1160);
    v45 = *(v0 + 1112);
    v46 = *(v45 + v44);
    v31 = __CFADD__(v46, 1);
    v47 = v46 + 1;
    if (v31)
    {
      goto LABEL_76;
    }

    v48 = *(v0 + 1184);
    v49 = *(v0 + 1168);
    *(v45 + v44) = v47;
    v50 = *(v45 + v49);
    v51 = *(v45 + v48);
    if (v50 == 1)
    {
      if (v51)
      {
        *(v0 + 896) = v47;
        sub_29EB14E8C();
      }

      else
      {
        *(v0 + 904) = v47;
        *(v0 + 840) = sub_29EB14E8C();
        *(v0 + 848) = v52;
        MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
        MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
        v53 = *(v0 + 840);
        v54 = *(v0 + 848);
      }

      v21 = *(v0 + 1128);
      v22 = *(v0 + 1120);
      v23 = *(v0 + 1072);
      v24 = *(v0 + 1040);
      v25 = *(v0 + 1112) + *(v0 + 1176);
      sub_29EB141CC();

      sub_29EB141FC();
      v22(v23, v24);
      sub_29EB1471C();

      v26 = sub_29EB1456C();

      v27 = [objc_allocWithZone(MEMORY[0x29EDB9FB0]) initWithFileDescriptor:v26 closeOnDealloc:1];
    }

    else
    {
      if (v51)
      {
        *(v0 + 872) = v47;
        sub_29EB14E8C();
      }

      else
      {
        *(v0 + 888) = v47;
        *(v0 + 824) = sub_29EB14E8C();
        *(v0 + 832) = v55;
        MEMORY[0x29EDA6DF0](46, 0xE100000000000000);
        MEMORY[0x29EDA6DF0](7367034, 0xE300000000000000);
        v56 = *(v0 + 824);
        v57 = *(v0 + 832);
      }

      v58 = *(v0 + 1064);
      v59 = *(v0 + 1112) + *(v0 + 1176);
      sub_29EB141CC();

      v60 = sub_29EB141BC();
      v61 = objc_opt_self();
      *(v0 + 880) = 0;
      v27 = [v61 fileHandleForReadingFromURL:v60 error:v0 + 880];

      v62 = *(v0 + 880);
      v63 = *(v0 + 1128);
      v64 = *(v0 + 1120);
      v65 = *(v0 + 1064);
      v66 = *(v0 + 1040);
      if (!v27)
      {
        v77 = v62;
        sub_29EB1417C();

        swift_willThrow();
        v64(v65, v66);
LABEL_69:
        v78 = *(v0 + 1128);
        v79 = *(v0 + 1120);
        v80 = *(v0 + 1112);
        v81 = *(v0 + 1096);
        v82 = *(v0 + 1040);

        v83 = *(v0 + 744);
        swift_unknownObjectRelease();
        v79(v81, v82);
        sub_29EAAD010(*(v0 + 792), *(v0 + 800));
        v84 = *(v0 + 1104);
        v85 = *(v0 + 1096);
        v86 = *(v0 + 1088);
        v87 = *(v0 + 1080);
        v88 = *(v0 + 1072);
        v89 = *(v0 + 1064);
        v90 = *(v0 + 1056);
        v91 = *(v0 + 1032);
        v92 = *(v0 + 1008);

        v93 = *(v0 + 8);
        v94 = *MEMORY[0x29EDCA608];

        return v93();
      }

      v67 = v62;
      v64(v65, v66);
    }

    v19 = v18;
    v28 = *(v0 + 1152);
    v29 = *(v0 + 1112);
    v30 = *(v29 + v28);
    *(v29 + v28) = v27;

    v4 = 0;
    v8 = v102;
    v31 = __CFADD__(v18, v103);
    v18 += v103;
    if (v31)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  v95 = *(MEMORY[0x29EDB9A80] + 4);
  v96 = swift_task_alloc();
  *(v0 + 1192) = v96;
  *v96 = v0;
  v96[1] = sub_29EB105DC;
  v97 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C5A720]();
}

uint64_t sub_29EB1112C()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 1208);
  v7 = *v1;
  *(*v1 + 1216) = v0;

  if (v0)
  {
    v3 = sub_29EB11C44;
  }

  else
  {
    v3 = sub_29EB1126C;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB1126C()
{
  v47 = *MEMORY[0x29EDCA608];
  v46 = *(v0 + 1216);
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1112);
  v3 = *(v0 + 1056);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 992);
  v7 = *(v2 + *(v0 + 1184));
  v8 = *(v2 + *(v0 + 1160));
  v9 = *(v2 + *(v0 + 1144));
  *(v0 + 856) = 0x736566696E616D2ELL;
  *(v0 + 864) = 0xE900000000000074;
  (*(v5 + 104))(v4, *MEMORY[0x29EDB9B10], v6);
  sub_29EAAD404();
  sub_29EB1421C();
  (*(v5 + 8))(v4, v6);
  v10 = sub_29EB1408C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_29EB1407C();
  *(v0 + 768) = v7;
  *(v0 + 776) = v8;
  *(v0 + 784) = v9;
  sub_29EAE9068();
  v13 = sub_29EB1406C();
  if (v46)
  {
    v15 = *(v0 + 1128);
    v16 = *(v0 + 1120);
    v17 = *(v0 + 1112);
    v18 = *(v0 + 1096);
    v19 = *(v0 + 1056);
    v20 = *(v0 + 1040);

    v16(v19, v20);
    v21 = *(v0 + 744);
    swift_unknownObjectRelease();
    v16(v18, v20);
    sub_29EAAD010(*(v0 + 792), *(v0 + 800));
    v25 = *(v0 + 1104);
    v26 = *(v0 + 1096);
    v27 = *(v0 + 1088);
    v28 = *(v0 + 1080);
    v29 = *(v0 + 1072);
    v30 = *(v0 + 1064);
    v31 = *(v0 + 1056);
    v32 = *(v0 + 1032);
    v33 = *(v0 + 1008);

    v34 = *(v0 + 8);
    v35 = *MEMORY[0x29EDCA608];

    return v34();
  }

  else
  {
    v22 = v13;
    v23 = v14;
    v24 = *(v0 + 1056);
    sub_29EB142DC();
    v37 = *(v0 + 1128);
    v38 = *(v0 + 1120);
    v39 = *(v0 + 1056);
    v40 = *(v0 + 1040);

    sub_29EAAD010(v22, v23);
    v38(v39, v40);
    v41 = *(MEMORY[0x29EDCA3D8] + 4);
    v42 = swift_task_alloc();
    *(v0 + 1224) = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A187B2B8, &qword_29EB1ADD0);
    *v42 = v0;
    v42[1] = sub_29EB11650;
    v44 = *(v0 + 928);
    v45 = *MEMORY[0x29EDCA608];

    return MEMORY[0x2A1C73BD0](v0 + 16, 0, 0, v43);
  }
}

uint64_t sub_29EB11650()
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*v1 + 1224);
  v7 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v3 = sub_29EB11D98;
  }

  else
  {
    v3 = sub_29EB11790;
  }

  v4 = *MEMORY[0x29EDCA608];

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29EB11790()
{
  v80 = *MEMORY[0x29EDCA608];
  v2 = *(v0 + 112);
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  *(v0 + 432) = v2;
  *(v0 + 448) = v1;
  v4 = *(v0 + 128);
  v6 = *(v0 + 144);
  v5 = *(v0 + 160);
  *(v0 + 464) = v6;
  *(v0 + 480) = v5;
  v8 = *(v0 + 48);
  v7 = *(v0 + 64);
  v9 = *(v0 + 32);
  *(v0 + 368) = v8;
  *(v0 + 384) = v7;
  v10 = *(v0 + 64);
  v12 = *(v0 + 80);
  v11 = *(v0 + 96);
  *(v0 + 400) = v12;
  *(v0 + 416) = v11;
  v13 = *(v0 + 32);
  v14 = *(v0 + 16);
  *(v0 + 336) = v14;
  *(v0 + 352) = v13;
  *(v0 + 272) = v2;
  *(v0 + 288) = v4;
  v15 = *(v0 + 160);
  *(v0 + 304) = v6;
  *(v0 + 320) = v15;
  *(v0 + 208) = v8;
  *(v0 + 224) = v10;
  *(v0 + 240) = v12;
  *(v0 + 256) = v3;
  *(v0 + 176) = v14;
  *(v0 + 192) = v9;
  if (sub_29EB13930(v0 + 176) == 1)
  {
    v16 = *(v0 + 1136);
    v17 = *(v0 + 1128);
    v18 = *(v0 + 1120);
    v19 = *(v0 + 1112);
    v20 = *(v0 + 1096);
    v21 = *(v0 + 1040);
    sub_29EABCDBC();
    swift_allocError();
    *v22 = 0x697274656D206F4ELL;
    v22[1] = 0xEA00000000007363;
    v22[2] = 0;
LABEL_5:
    swift_willThrow();

    v26 = *(v0 + 744);
    swift_unknownObjectRelease();
    v18(v20, v21);
LABEL_6:
    sub_29EAAD010(*(v0 + 792), *(v0 + 800));
    v27 = *(v0 + 1104);
    v28 = *(v0 + 1096);
    v29 = *(v0 + 1088);
    v30 = *(v0 + 1080);
    v31 = *(v0 + 1072);
    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1032);
    v35 = *(v0 + 1008);

    v36 = *(v0 + 8);
    v37 = *MEMORY[0x29EDCA608];
    goto LABEL_7;
  }

  if (*(v0 + 328))
  {
    v16 = *(v0 + 1136);
    v23 = *(v0 + 1128);
    v18 = *(v0 + 1120);
    v24 = *(v0 + 1112);
    v20 = *(v0 + 1096);
    v21 = *(v0 + 1040);
    v25 = *(v0 + 328);
    goto LABEL_5;
  }

  v39 = *(v0 + 1232);
  sub_29EAE4A18(*(v0 + 1096), 0, (v0 + 912));
  if (v39)
  {
    v40 = *(v0 + 1128);
    v41 = *(v0 + 1120);
    v42 = *(v0 + 1112);
    v43 = *(v0 + 1096);
    v44 = *(v0 + 1040);

    sub_29EABCCEC(v0 + 336, &qword_2A187B2C0, &unk_29EB1ADD8);
    v45 = *(v0 + 744);
    swift_unknownObjectRelease();
    v41(v43, v44);
    goto LABEL_6;
  }

  v46 = *(v0 + 912);
  v47 = *(v0 + 288);
  *(v0 + 592) = *(v0 + 272);
  *(v0 + 608) = v47;
  *(v0 + 624) = *(v0 + 304);
  *(v0 + 640) = *(v0 + 320);
  v48 = *(v0 + 224);
  *(v0 + 528) = *(v0 + 208);
  *(v0 + 544) = v48;
  v49 = *(v0 + 256);
  *(v0 + 560) = *(v0 + 240);
  *(v0 + 576) = v49;
  v50 = *(v0 + 192);
  *(v0 + 496) = *(v0 + 176);
  *(v0 + 512) = v50;
  if (sub_29EB13954((v0 + 496)) == 1)
  {
    goto LABEL_13;
  }

  if (*(v0 + 496) == 1)
  {
    if (*(v0 + 296) != 2)
    {
      LOBYTE(v64) = *(v0 + 312);
      v65 = (v0 + 304);
      v66 = (v0 + 288);
      goto LABEL_22;
    }

LABEL_13:
    v51 = 0;
LABEL_14:
    v77 = 0;
    v76 = 1;
    goto LABEL_15;
  }

  if (*(v0 + 208) == 2)
  {
    goto LABEL_13;
  }

  v64 = *(v0 + 224);
  v65 = (v0 + 216);
  v66 = (v0 + 200);
LABEL_22:
  v51 = *v66;
  if (v51 < 0)
  {
    __break(1u);
  }

  if (v64)
  {
    goto LABEL_14;
  }

  if (*v65 < 0)
  {
    goto LABEL_28;
  }

  v77 = *v65;
  v76 = 0;
LABEL_15:
  v78 = v51;
  v79 = v46;
  v52 = *(v0 + 976);
  v53 = *v52;
  if (*v52 < 0)
  {
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v54 = *(v0 + 1136);
  v55 = *(v0 + 1120);
  v56 = *(v0 + 1112);
  v67 = *(v0 + 1128);
  v68 = *(v0 + 1104);
  v57 = *(v0 + 1096);
  v69 = *(v0 + 1088);
  v70 = *(v0 + 1080);
  v71 = *(v0 + 1072);
  v72 = *(v0 + 1064);
  v58 = *(v0 + 1040);
  v73 = *(v0 + 1056);
  v74 = *(v0 + 1032);
  v75 = *(v0 + 1008);
  v59 = *(v0 + 920);
  v61 = v52[3];
  v60 = v52[4];
  *(v59 + 24) = type metadata accessor for SerializedDataReader(0);
  *(v59 + 32) = sub_29EB13968();

  sub_29EABCCEC(v0 + 336, &qword_2A187B2C0, &unk_29EB1ADD8);
  *v59 = v79;
  v62 = *(v0 + 744);
  swift_unknownObjectRelease();
  v55(v57, v58);
  *(v59 + 40) = v78;
  *(v59 + 48) = v77;
  *(v59 + 56) = v76;
  *(v59 + 64) = v53;
  *(v59 + 72) = v61;
  *(v59 + 80) = v60;
  sub_29EAAD010(*(v0 + 792), *(v0 + 800));

  v36 = *(v0 + 8);
  v63 = *MEMORY[0x29EDCA608];
LABEL_7:

  return v36();
}

uint64_t sub_29EB11C44()
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1040);

  v6 = *(v0 + 744);
  swift_unknownObjectRelease();
  v2(v4, v5);
  sub_29EAAD010(*(v0 + 792), *(v0 + 800));
  v7 = *(v0 + 1216);
  v8 = *(v0 + 1104);
  v9 = *(v0 + 1096);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1072);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 1008);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x29EDCA608];

  return v17();
}

uint64_t sub_29EB11D98()
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1120);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1096);
  v5 = *(v0 + 1040);

  v6 = *(v0 + 744);
  swift_unknownObjectRelease();
  v2(v4, v5);
  sub_29EAAD010(*(v0 + 792), *(v0 + 800));
  v7 = *(v0 + 1232);
  v8 = *(v0 + 1104);
  v9 = *(v0 + 1096);
  v10 = *(v0 + 1088);
  v11 = *(v0 + 1080);
  v12 = *(v0 + 1072);
  v13 = *(v0 + 1064);
  v14 = *(v0 + 1056);
  v15 = *(v0 + 1032);
  v16 = *(v0 + 1008);

  v17 = *(v0 + 8);
  v18 = *MEMORY[0x29EDCA608];

  return v17();
}

uint64_t sub_29EB11EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 345) = v11;
  *(v8 + 432) = v10;
  *(v8 + 440) = v12;
  *(v8 + 416) = a7;
  *(v8 + 424) = a8;
  *(v8 + 400) = a5;
  *(v8 + 408) = a6;
  *(v8 + 384) = a1;
  *(v8 + 392) = a4;
  return MEMORY[0x2A1C73D48](sub_29EB11F2C, 0, 0);
}

uint64_t sub_29EB11F2C()
{
  v1 = *(v0 + 440);
  v2 = [*(v0 + 392) fileHandleForWriting];
  *(v0 + 448) = v2;
  v3 = *(v0 + 440);
  if (v1)
  {
    v4 = *(v0 + 440);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  }

  v5 = 0xD000000000000055;
  *(v0 + 456) = v4;
  v6 = *(v0 + 345);
  v7 = *(v0 + 408);
  v8 = **(v0 + 432);
  v9 = v3;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  v11 = *(v0 + 416);
  *(v10 + 16) = v2;
  *(v10 + 24) = v7;
  *(v10 + 32) = v11;
  *(v10 + 48) = v8;
  *(v10 + 56) = v6 & 1;
  v12 = 0x800000029EB1BDC0;
  *(v0 + 352) = 0xD000000000000055;
  *(v0 + 360) = 0x800000029EB1BDC0;
  *(v0 + 368) = 40;
  *(v0 + 376) = 0xE100000000000000;
  sub_29EACA2AC();
  sub_29EACA300();
  sub_29EB1466C();
  if ((*(v0 + 344) & 1) == 0)
  {
    v13 = *(v0 + 328);
    v14 = sub_29EB147BC();
    v5 = MEMORY[0x29EDA6DA0](v14);
    v12 = v15;
  }

  *(v0 + 472) = v12;
  v16 = swift_task_alloc();
  *(v0 + 480) = v16;
  *(v16 + 16) = sub_29EAF2188;
  *(v16 + 24) = v10;
  v17 = swift_task_alloc();
  *(v0 + 488) = v17;
  *v17 = v0;
  v17[1] = sub_29EB12154;
  v18 = *(v0 + 400);

  return sub_29EAC6340(v0 + 16, v5, v12, v2, v4, sub_29EB139C0, v16);
}

uint64_t sub_29EB12154()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v7 = *v1;
  *(*v1 + 496) = v0;

  v4 = *(v2 + 472);

  if (v0)
  {
    v5 = sub_29EB12344;
  }

  else
  {
    v5 = sub_29EB12278;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

uint64_t sub_29EB12278()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 448);
  v4 = *(v0 + 384);

  v5 = *(v0 + 168);
  v6 = *(v0 + 32);
  *v4 = *(v0 + 16);
  *(v4 + 16) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  v9 = *(v0 + 96);
  *(v4 + 64) = *(v0 + 80);
  *(v4 + 80) = v9;
  *(v4 + 32) = v7;
  *(v4 + 48) = v8;
  v10 = *(v0 + 112);
  v11 = *(v0 + 128);
  v12 = *(v0 + 144);
  *(v4 + 144) = *(v0 + 160);
  *(v4 + 112) = v11;
  *(v4 + 128) = v12;
  *(v4 + 96) = v10;

  v13 = *(v0 + 392);
  *(*(v0 + 384) + 152) = v5;
  sub_29EB12420(v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_29EB12344()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 448);
  v5 = *(v0 + 384);

  sub_29EAF21C8(v0 + 176);
  v6 = *(v0 + 192);
  *v5 = *(v0 + 176);
  *(v5 + 16) = v6;
  v7 = *(v0 + 208);
  v8 = *(v0 + 224);
  v9 = *(v0 + 256);
  *(v5 + 64) = *(v0 + 240);
  *(v5 + 80) = v9;
  *(v5 + 32) = v7;
  *(v5 + 48) = v8;
  v10 = *(v0 + 272);
  v11 = *(v0 + 288);
  v12 = *(v0 + 304);
  *(v5 + 144) = *(v0 + 320);
  *(v5 + 112) = v11;
  *(v5 + 128) = v12;
  *(v5 + 96) = v10;

  v13 = *(v0 + 392);
  *(*(v0 + 384) + 152) = v1;
  sub_29EB12420(v13);
  v14 = *(v0 + 8);

  return v14();
}

void sub_29EB12420(void *a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v1 = [a1 fileHandleForWriting];
  v9[0] = 0;
  v2 = [v1 closeAndReturnError_];

  v3 = v9[0];
  if (v2)
  {
    v4 = *MEMORY[0x29EDCA608];

    v5 = v3;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_29EB1417C();

    swift_willThrow();
    v8 = *MEMORY[0x29EDCA608];
  }
}

uint64_t AppMigrationTester.AppExportController.exportSerializedData(request:progress:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_29EAB73B4;

  return sub_29EB0E0EC(a1, v6, v7, v8, a3);
}

uint64_t AppMigrationTester.AppExportController.exportSerializedData<A>(request:progress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a2 + 16);
  *(v7 + 16) = *a2;
  *(v7 + 32) = v14;
  v15 = swift_task_alloc();
  *(v7 + 40) = v15;
  *v15 = v7;
  v15[1] = sub_29EB126D0;

  return sub_29EB0ECD8(a1, v7 + 16, a3, a4, a5, a6, a7);
}

uint64_t sub_29EB126D0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EB13F78, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t AppMigrationTester.AppExportController.uploadContent(request:progress:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 56) = *a1;
  *(v3 + 72) = *(a1 + 16);
  return MEMORY[0x2A1C73D48](sub_29EB12834, 0, 0);
}

uint64_t sub_29EB12834()
{
  v21 = v0;
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  if (v1)
  {
    v4 = v0[9];
    v5 = v0[8];
    v6 = v2;
  }

  else
  {
    v6 = v3[3];
    v5 = v3[4];
    v7 = v0[9];

    v4 = MEMORY[0x29EDCA198];
  }

  v8 = v0[5];
  sub_29EB13620(v2, v1);
  sub_29EB06C44(v6, v5, v4, &v18);
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v0[10] = v19;
  v0[11] = v11;
  v12 = v3[2];
  v0[2] = v9;
  v0[3] = v10;
  v0[4] = v11;
  v13 = v0[5];
  if (v8)
  {
    v14 = v0[5];
  }

  else
  {
    v14 = [objc_allocWithZone(MEMORY[0x29EDBA0B8]) init];
  }

  v0[12] = v14;
  v15 = v13;
  v16 = swift_task_alloc();
  v0[13] = v16;
  *v16 = v0;
  v16[1] = sub_29EB129AC;

  return sub_29EAF2230(v0 + 2);
}

uint64_t sub_29EB129AC()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29EB12B08, 0, 0);
  }

  else
  {
    v4 = *(v3 + 88);
    v5 = *(v3 + 80);

    v6 = *(v3 + 8);

    return v6();
  }
}

uint64_t sub_29EB12B08()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_29EB12B78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_29EB12BA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2A1C73398](v0, 40, 7);
}

uint64_t AppMigrationTester.exportController.getter()
{
  v1[4] = v0;
  v2 = sub_29EB1446C();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29EB12CA4, v0, 0);
}

uint64_t sub_29EB12CA4()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__exportController;
  v0[8] = OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester__exportController;
  v3 = *(v1 + v2);
  v4 = v0[7];
  if (v3)
  {
    v5 = *(v1 + v2);

    v6 = v0[1];

    return v6(v3);
  }

  else
  {
    (*(v0[6] + 16))(v0[7], v1 + OBJC_IVAR____TtC15AppMigrationKit18AppMigrationTester_extensionIdentity, v0[5]);
    v8 = *(v1 + 120);
    v0[2] = *(v1 + 112);
    v0[3] = v8;
    type metadata accessor for AppMigrationTester.AppExportController();
    swift_allocObject();

    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_29EB12E04;
    v10 = v0[7];

    return sub_29EB0AD00(v10, v0 + 2);
  }
}

uint64_t sub_29EB12E04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_29EB12FBC;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_29EB12F30;
  }

  return MEMORY[0x2A1C73D48](v8, v7, 0);
}

uint64_t sub_29EB12F30()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[11];

  v4 = v0[11];
  v5 = v0[7];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_29EB12FBC()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_29EB130B0()
{
  result = sub_29EB1446C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of AppMigrationTester.__allocating_init(platform:)(uint64_t a1)
{
  v4 = *(v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EABD634;

  return v8(a1);
}

uint64_t sub_29EB132A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB132E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EB13358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29EB1422C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_29EB1342C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_29EB1422C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = (a2 - 1);
  }

  return result;
}

uint64_t sub_29EB134E8()
{
  result = sub_29EB1422C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29EB1355C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB135A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EB13620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_29EB13664(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v11 = *(v2 + 64);
  v12 = *(v2 + 72);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_29EAB73B4;

  return sub_29EB0F804(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29EB1375C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  return MEMORY[0x2A1C733A0](v0, 144, 7);
}

uint64_t sub_29EB137CC(uint64_t a1)
{
  v15 = *(v1 + 16);
  v13 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 128);
  v10 = *(v1 + 136);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29EAB73B4;

  return sub_29EB11EEC(a1, v15, v13, v4, v5, v6, v7, v8);
}

uint64_t sub_29EB13930(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29EB13954(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_29EB13968()
{
  result = qword_2A187AB90;
  if (!qword_2A187AB90)
  {
    type metadata accessor for SerializedDataReader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A187AB90);
  }

  return result;
}

uint64_t sub_29EB139C8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_29EAB73B4;

  return sub_29EB0CA20(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_29EB13AB8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {

    v2 = *(v0 + 80);
  }

  if (*(v0 + 120))
  {

    v3 = *(v0 + 136);
  }

  v4 = *(v0 + 152);

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  return MEMORY[0x2A1C733A0](v0, 208, 7);
}

uint64_t sub_29EB13B48(uint64_t a1)
{
  v4 = v1[3];
  v13 = v1[2];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  v8 = v1[23];
  v10 = v1[24];
  v9 = v1[25];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_29EAAAE5C;

  return sub_29EB0D788(a1, v13, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t sub_29EB13C38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_29EAB73B4;

  return sub_29EAAA768(a1, v5, v4);
}

uint64_t sub_29EB13CEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2A1C733A0](v0, 128, 7);
}

uint64_t sub_29EB13D5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[15];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAB73B4;

  return sub_29EB08AE4(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_29EB13E30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_29EAB73B4;

  return sub_29EB09188(a1, v4, v5, v6, v7, v8);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}