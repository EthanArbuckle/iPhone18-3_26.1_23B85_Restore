uint64_t sub_24029E938()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_2402A7378();
}

uint64_t get_enum_tag_for_layout_string_16AppleCareSupport14TelemetryEventC3KeyO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24029E994(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24029E9F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

void *sub_24029EA40(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_24029EA74()
{
  result = qword_27E3C8F30;
  if (!qword_27E3C8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F30);
  }

  return result;
}

uint64_t sub_24029EAC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a4 == 4)
      {
        return 1;
      }

      return 0;
    }

    if (a2 == 5)
    {
      return a4 == 5;
    }

    if (a2 == 6)
    {
      return a4 == 6;
    }
  }

  if (a4 < 7)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_2402A7888();
  }
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

uint64_t sub_24029EBBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24029EC04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24029EC7C()
{
  if (qword_27E3C8A80 != -1)
  {
    swift_once();
  }

  v0[3] = [objc_opt_self() sessionWithConfiguration_];
  v1 = *(MEMORY[0x277CC9D18] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_24029ED7C;
  v3 = v0[2];

  return MEMORY[0x28211ECF8](v3, 0);
}

uint64_t sub_24029ED7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 32);
  v10 = *v4;
  *(*v4 + 40) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_24029EEF0, 0, 0);
  }

  else
  {

    v11 = *(v10 + 8);

    return v11(a1, a2, a3);
  }
}

uint64_t sub_24029EEF0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

uint64_t sub_24029EF54@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() defaultStore];
  v5 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  v6 = sub_24029D62C(MEMORY[0x277D84F90]);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8F38, &qword_2402A9260);
  a2[4] = &off_28522DC28;
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = v4;
  *(result + 24) = v5;
  *(result + 32) = a1;
  *(result + 40) = v6;
  return result;
}

uint64_t sub_24029F01C()
{
  v0 = sub_2402A70C8();
  if (!v0)
  {
    goto LABEL_5;
  }

  if (!*(v0 + 16))
  {

LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  sub_24029CFE8(0xD000000000000010, 0x80000002402A9B20);
  v2 = v1;

  return v2 & 1;
}

void *sub_24029F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D70, &unk_2402A8DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2402A91F0;
  *(v10 + 56) = &type metadata for UserAgentHeadersProvider;
  *(v10 + 64) = &off_28522DBB8;
  *(v10 + 96) = &type metadata for TransactionIDHeadersProvider;
  *(v10 + 104) = &off_28522D5F0;
  *(v10 + 136) = &type metadata for ContentTypeHeadersProvider;
  *(v10 + 144) = &off_28522D970;
  *(v10 + 176) = &type metadata for AnisetteHeadersProvider;
  *(v10 + 184) = &off_28522CF60;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2402A8810;
  *(inited + 56) = &type metadata for BAAHeadersProvider;
  *(inited + 64) = &off_28522D9E8;
  result = sub_240299F38(inited);
  *a5 = v10;
  a5[1] = a1;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a4;
  return result;
}

uint64_t sub_24029F1A4()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24029F200(uint64_t a1, uint64_t a2)
{
  v4 = sub_2402A7218();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24029F280(uint64_t a1, uint64_t a2)
{
  v4 = sub_2402A7218();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for HandoffResponse()
{
  result = qword_27E3C8F40;
  if (!qword_27E3C8F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24029F33C()
{
  result = sub_2402A7218();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24029F3A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_2402A7218();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8F50, &qword_2402A92D8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for HandoffResponse();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24029F9CC();
  v19 = v26;
  sub_2402A7968();
  if (!v19)
  {
    v20 = v24;
    sub_24029FA84(&qword_27E3C8F60);
    sub_2402A7848();
    (*(v8 + 8))(v12, v7);
    (*(v20 + 32))(v17, v25, v3);
    sub_24029FA20(v17, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24029F61C()
{
  sub_2402A7938();
  sub_2402A73F8();
  return sub_2402A7958();
}

uint64_t sub_24029F690()
{
  sub_2402A7938();
  sub_2402A73F8();
  return sub_2402A7958();
}

uint64_t sub_24029F6E4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2402A7818();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_24029F774@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2402A7818();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_24029F7D8(uint64_t a1)
{
  v2 = sub_24029F9CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24029F814(uint64_t a1)
{
  v2 = sub_24029F9CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24029F868(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8F68, &qword_2402A92E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24029F9CC();
  sub_2402A7978();
  sub_2402A7218();
  sub_24029FA84(&qword_27E3C8F70);
  sub_2402A7868();
  return (*(v3 + 8))(v7, v2);
}

unint64_t sub_24029F9CC()
{
  result = qword_27E3C8F58;
  if (!qword_27E3C8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F58);
  }

  return result;
}

uint64_t sub_24029FA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HandoffResponse();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24029FA84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2402A7218();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandoffResponse.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HandoffResponse.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_24029FBAC()
{
  result = qword_27E3C8F78;
  if (!qword_27E3C8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F78);
  }

  return result;
}

unint64_t sub_24029FC04()
{
  result = qword_27E3C8F80;
  if (!qword_27E3C8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F80);
  }

  return result;
}

unint64_t sub_24029FC5C()
{
  result = qword_27E3C8F88;
  if (!qword_27E3C8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8F88);
  }

  return result;
}

uint64_t Clock.measureInheritingActorContext(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24029FDA4, 0, 0);
}

uint64_t sub_24029FDA4()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[3];
  sub_2402A78D8();
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_24029FEA4;
  v8 = v0[4];

  return v10();
}

uint64_t sub_24029FEA4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2402A00C4;
  }

  else
  {
    v3 = sub_24029FFB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24029FFB8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = v0[2];
  sub_2402A78D8();
  swift_getAssociatedConformanceWitness();
  sub_2402A7718();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2402A00C4()
{
  v1 = v0[10];
  (*(v0[9] + 8))(v0[11], v0[8]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_2402A014C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_2402A76E8();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A021C, 0, 0);
}

uint64_t sub_2402A021C()
{
  v1 = v0[10];
  v2 = v0[4];
  v0[11] = sub_2402A7708();
  v0[12] = sub_2402A08AC(&qword_27E3C8D18, MEMORY[0x277D85928]);
  sub_2402A78D8();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2402A0318;
  v5 = v0[5];
  v4 = v0[6];

  return sub_240291444(v5, v4);
}

uint64_t sub_2402A0318()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2402A08F8;
  }

  else
  {
    v3 = sub_2402A08F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2402A042C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_2402A76E8();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A04FC, 0, 0);
}

uint64_t sub_2402A04FC()
{
  v1 = v0[10];
  v2 = v0[4];
  v0[11] = sub_2402A7708();
  v0[12] = sub_2402A08AC(&qword_27E3C8D18, MEMORY[0x277D85928]);
  sub_2402A78D8();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_2402A05F8;
  v5 = v0[5];
  v4 = v0[6];

  return sub_24029AAF8(v5, v4);
}

uint64_t sub_2402A05F8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_2402A0824;
  }

  else
  {
    v3 = sub_2402A070C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2402A070C()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[4];
  sub_2402A78D8();
  sub_2402A08AC(&qword_27E3C8D20, MEMORY[0x277D858F8]);
  sub_2402A7718();
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  v9 = v0[2];
  v10 = v0[3];

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_2402A0824()
{
  v1 = v0[9];
  (*(v0[8] + 8))(v0[10], v0[7]);

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_2402A08AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2402A0944()
{
  v1 = sub_24029D62C(&unk_28522CD38);
  sub_24029DDD0(&unk_28522CD58);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2402A09D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2402A7708();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2402A0A94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2402A7708();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CompositeHTTPHeadersProvider()
{
  result = qword_27E3C8F90;
  if (!qword_27E3C8F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2402A0B84()
{
  sub_2402A0C08();
  if (v0 <= 0x3F)
  {
    sub_2402A7708();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2402A0C08()
{
  if (!qword_27E3C8FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8D78, &qword_2402A94B0);
    v0 = sub_2402A7448();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3C8FA0);
    }
  }
}

uint64_t sub_2402A0C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[4] = a3;
  v7 = sub_2402A76E8();
  v5[7] = v7;
  v8 = *(v7 - 8);
  v5[8] = v8;
  v9 = *(v8 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = sub_2402A7468();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[11] = v10;
  v5[12] = v12;

  return MEMORY[0x2822009F8](sub_2402A0D78, v10, v12);
}

uint64_t sub_2402A0D78()
{
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[4];
  v0[13] = sub_2402A7708();
  v0[14] = sub_2402A3704(&qword_27E3C8D18, MEMORY[0x277D85928]);
  sub_2402A78D8();
  v8 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_2402A0ED0;
  v6 = v0[5];

  return v8();
}

uint64_t sub_2402A0ED0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[10], v2[7]);
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_2402A1114;
  }

  else
  {
    v4 = v2[11];
    v5 = v2[12];
    v6 = sub_2402A0FFC;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2402A0FFC()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  sub_2402A78D8();
  sub_2402A3704(&qword_27E3C8D20, MEMORY[0x277D858F8]);
  sub_2402A7718();
  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  v9 = v0[2];
  v10 = v0[3];

  v11 = v0[1];

  return v11(v9, v10);
}

uint64_t sub_2402A1114()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_2402A1180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = sub_2402A7118();
  v5[21] = v6;
  v7 = *(v6 - 8);
  v5[22] = v7;
  v5[23] = *(v7 + 64);
  v5[24] = swift_task_alloc();
  v8 = *(type metadata accessor for CompositeHTTPHeadersProvider() - 8);
  v5[25] = v8;
  v5[26] = *(v8 + 64);
  v5[27] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FA8, &qword_2402A94F0);
  v5[30] = v10;
  v11 = *(v10 - 8);
  v5[31] = v11;
  v12 = *(v11 + 64) + 15;
  v5[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A135C, 0, 0);
}

uint64_t sub_2402A135C()
{
  v1 = **(v0 + 144);
  v2 = *(v1 + 16);
  if (v2)
  {
    v37 = *(v0 + 200);
    v3 = v1 + 32;
    v35 = **(v0 + 136);
    v36 = *(v0 + 176);
    v34 = *(v0 + 184) + 7;
    v4 = sub_2402A74E8();
    v5 = *(v4 - 8);
    v33 = *(v5 + 56);
    v32 = (v5 + 48);
    v31 = (v5 + 8);
    do
    {
      v41 = v2;
      v38 = *(v0 + 232);
      v40 = *(v0 + 224);
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      v9 = *(v0 + 192);
      v10 = *(v0 + 168);
      v39 = *(v0 + 160);
      v11 = *(v0 + 144);
      v12 = *(v0 + 152);
      v33();
      sub_24028C068(v3, v0 + 16);
      sub_2402A30DC(v11, v8);
      (*(v36 + 16))(v9, v12, v10);
      v13 = (*(v37 + 80) + 72) & ~*(v37 + 80);
      v14 = (v7 + *(v36 + 80) + v13) & ~*(v36 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      sub_24029CC34((v0 + 16), v15 + 32);
      sub_2402A32D0(v8, v15 + v13);
      (*(v36 + 32))(v15 + v14, v9, v10);
      *(v15 + ((v34 + v14) & 0xFFFFFFFFFFFFFFF8)) = v39;
      sub_2402A34C0(v38, v40);
      LODWORD(v13) = (*v32)(v40, 1, v4);

      v17 = *(v0 + 224);
      if (v13 == 1)
      {
        sub_2402A3530(*(v0 + 224));
        if (*v16)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_2402A74D8();
        (*v31)(v17, v4);
        if (*v16)
        {
LABEL_8:
          v20 = *(v15 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_2402A7468();
          v19 = v21;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_9:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
      v22 = v19 | v18;
      if (v19 | v18)
      {
        v22 = v0 + 56;
        *(v0 + 56) = 0;
        *(v0 + 64) = 0;
        *(v0 + 72) = v18;
        *(v0 + 80) = v19;
      }

      v6 = *(v0 + 232);
      *(v0 + 88) = 1;
      *(v0 + 96) = v22;
      *(v0 + 104) = v35;
      swift_task_create();

      sub_2402A3530(v6);
      v3 += 40;
      v2 = v41 - 1;
    }

    while (v41 != 1);
  }

  v23 = *(v0 + 256);
  v24 = **(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  sub_2402A7538();
  *(v0 + 264) = MEMORY[0x277D84F98];
  v25 = sub_2402A3598();
  v26 = *(MEMORY[0x277D856D0] + 4);
  v27 = swift_task_alloc();
  *(v0 + 272) = v27;
  *v27 = v0;
  v27[1] = sub_2402A1790;
  v28 = *(v0 + 256);
  v29 = *(v0 + 240);

  return MEMORY[0x282200308](v0 + 112, v29, v25);
}

uint64_t sub_2402A1790()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v7 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v4 = v2[33];
    (*(v2[31] + 8))(v2[32], v2[30]);

    v5 = sub_2402A1C88;
  }

  else
  {
    v5 = sub_2402A18C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2402A18C4()
{
  v1 = v0[14];
  v53 = v0 + 14;
  v2 = v0[33];
  if (v1)
  {
    v3 = v0[33];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[15] = v2;
    v5 = v1 + 64;
    v6 = -1 << *(v1 + 32);
    if (-v6 < 64)
    {
      v7 = ~(-1 << -v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v1 + 64);
    v49 = -1 << *(v1 + 32);
    v9 = (63 - v6) >> 6;

    v13 = 0;
    v50 = v0;
    v51 = v1;
    v14 = v0[33];
    for (i = isUniquelyReferenced_nonNull_native; ; i = 1)
    {
      if (!v8)
      {
        v20 = v13;
        while (1)
        {
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_33;
          }

          if (v19 >= v9)
          {
            break;
          }

          v8 = *(v5 + 8 * v19);
          ++v20;
          if (v8)
          {
            goto LABEL_14;
          }
        }

        sub_2402A35FC();

        v50[33] = v14;
        v37 = sub_2402A3598();
        v38 = *(MEMORY[0x277D856D0] + 4);
        v39 = swift_task_alloc();
        v50[34] = v39;
        *v39 = v50;
        v39[1] = sub_2402A1790;
        v40 = v50[32];
        v11 = v50[30];
        v10 = v53;
        v12 = v37;

        return MEMORY[0x282200308](v10, v11, v12);
      }

      v19 = v13;
LABEL_14:
      v21 = (v19 << 10) | (16 * __clz(__rbit64(v8)));
      v22 = (*(v1 + 48) + v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = (*(v1 + 56) + v21);
      v26 = v25[1];
      v52 = *v25;

      v10 = sub_24029CFE8(v24, v23);
      v27 = v14[2];
      v28 = (v11 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return MEMORY[0x282200308](v10, v11, v12);
      }

      v31 = v11;
      if (v14[3] >= v30)
      {
        if ((i & 1) == 0)
        {
          v48 = v10;
          sub_24028ADF0();
          v10 = v48;
        }
      }

      else
      {
        sub_24028A51C(v30, i & 1);
        v32 = v53[1];
        v10 = sub_24029CFE8(v24, v23);
        if ((v31 & 1) != (v11 & 1))
        {

          return sub_2402A78C8();
        }
      }

      v8 &= v8 - 1;
      v14 = v53[1];
      if (v31)
      {
        v16 = v10;

        v17 = (v14[7] + 16 * v16);
        v18 = v17[1];
        *v17 = v52;
        v17[1] = v26;
      }

      else
      {
        v14[(v10 >> 6) + 8] |= 1 << v10;
        v33 = (v14[6] + 16 * v10);
        *v33 = v24;
        v33[1] = v23;
        v34 = (v14[7] + 16 * v10);
        *v34 = v52;
        v34[1] = v26;
        v35 = v14[2];
        v29 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v29)
        {
          goto LABEL_34;
        }

        v14[2] = v36;
      }

      v13 = v19;
      v1 = v51;
    }
  }

  v41 = v0[29];
  v43 = v0[27];
  v42 = v0[28];
  v44 = v0[24];
  v45 = v0[16];
  (*(v0[31] + 8))(v0[32], v0[30]);
  *v45 = v2;

  v46 = v0[1];

  return v46();
}

uint64_t sub_2402A1C88()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[27];
  v5 = v0[24];

  v6 = v0[1];
  v7 = v0[35];

  return v6();
}

uint64_t sub_2402A1D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v7[18] = a1;
  v8 = *(*(sub_2402A79C8() - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v9 = *(*(sub_2402A79A8() - 8) + 64) + 15;
  v7[24] = swift_task_alloc();
  v10 = *(*(sub_2402A7A18() - 8) + 64) + 15;
  v7[25] = swift_task_alloc();
  v11 = sub_2402A7A28();
  v7[26] = v11;
  v12 = *(v11 - 8);
  v7[27] = v12;
  v13 = *(v12 + 64) + 15;
  v7[28] = swift_task_alloc();
  v14 = sub_2402A7318();
  v7[29] = v14;
  v15 = *(v14 - 8);
  v7[30] = v15;
  v16 = *(v15 + 64) + 15;
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402A1ED4, 0, 0);
}

uint64_t sub_2402A1ED4()
{
  v30 = v0;
  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = *(v0 + 152);
  v5 = __swift_project_value_buffer(v2, qword_27E3CA818);
  *(v0 + 264) = v5;
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  sub_24028C068(v4, v0 + 16);
  v7 = sub_2402A72F8();
  v8 = sub_2402A7598();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 256);
  v12 = *(v0 + 232);
  v11 = *(v0 + 240);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    v15 = *(v0 + 40);
    v16 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
    v28 = v10;
    v17 = (*(v16 + 8))(v15, v16);
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v20 = sub_240299328(v17, v19, &v29);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_240288000, v7, v8, "Computing headers using %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CBE530](v14, -1, -1);
    MEMORY[0x245CBE530](v13, -1, -1);

    (*(v11 + 8))(v28, v12);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v22 = *(v0 + 152);
  v21 = *(v0 + 160);
  *(v0 + 136) = 0;
  v23 = *(type metadata accessor for CompositeHTTPHeadersProvider() + 20);
  v24 = swift_task_alloc();
  *(v0 + 288) = v24;
  v25 = *(v0 + 168);
  *(v24 + 16) = v0 + 136;
  *(v24 + 24) = v22;
  *(v24 + 32) = v25;
  v26 = swift_task_alloc();
  *(v0 + 296) = v26;
  *v26 = v0;
  v26[1] = sub_2402A21BC;

  return sub_2402A0C6C(0, 0, &unk_2402A9518, v24);
}

uint64_t sub_2402A21BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 296);
  v8 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v9 = sub_2402A28E4;
  }

  else
  {
    v10 = v6[36];
    v6[39] = a2;
    v6[40] = a1;

    v9 = sub_2402A22F8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2402A22F8()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v0[41] = (*(v4 + 8))(v3, v4);
  v0[42] = v5;

  return MEMORY[0x2822009F8](sub_2402A2398, v1, 0);
}

uint64_t sub_2402A2398()
{
  v10 = v0;
  v2 = v0[41];
  v1 = v0[42];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[22];
  v6 = sub_2402A7A48();
  sub_2402A7A48();
  *&v9[3] = MEMORY[0x277D839F8];
  *&v9[4] = &off_28522D750;
  v9[0] = v7 * 1.0e-18 + v6;
  swift_beginAccess();

  sub_24028F660(v9, v2, v1);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2402A24A4, 0, 0);
}

uint64_t sub_2402A24A4()
{
  v49 = v0;
  v37 = v0[39];
  v38 = v0[40];
  v44 = v0[34];
  v46 = v0[35];
  v1 = v0[28];
  v41 = v0[29];
  v42 = v0[33];
  v2 = v0[27];
  v36 = v0[26];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[23];
  v39 = v0[31];
  v40 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D28, &qword_2402A8D78);
  v6 = *(sub_2402A79F8() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2402A8C10;
  sub_2402A79E8();
  sub_2402A79D8();
  sub_24029A7D8(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2402A7A08();
  sub_2402A7998();
  sub_2402A79B8();
  sub_2402A7988();
  sub_2402A3704(&qword_27E3C8D30, MEMORY[0x277CC9FF0]);
  sub_2402A7A38();
  (*(v2 + 8))(v1, v36);
  v11 = v0[15];
  v10 = v0[16];
  v44(v39, v42, v41);
  sub_24028C068(v40, (v0 + 7));

  v12 = sub_2402A72F8();
  v13 = sub_2402A7598();

  v14 = os_log_type_enabled(v12, v13);
  v16 = v0[30];
  v15 = v0[31];
  v17 = v0[29];
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136315394;
    v43 = v11;
    v47 = v17;
    v48 = v19;
    v21 = v0[10];
    v20 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v21);
    v45 = v15;
    v22 = (*(v20 + 8))(v21, v20);
    v24 = v23;
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v25 = sub_240299328(v22, v24, &v48);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_240299328(v43, v10, &v48);
    _os_log_impl(&dword_240288000, v12, v13, "Computed headers using %s in %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CBE530](v19, -1, -1);
    MEMORY[0x245CBE530](v18, -1, -1);

    result = (*(v16 + 8))(v45, v47);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    result = __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  v27 = v0[17];
  if (v27)
  {
    v29 = v0[31];
    v28 = v0[32];
    v30 = v0[28];
    v32 = v0[24];
    v31 = v0[25];
    v33 = v0[23];
    v34 = v0[18];

    *v34 = v27;

    v35 = v0[1];

    return v35();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2402A28E4()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[28];
  v6 = v0[24];
  v7 = v0[25];
  v18 = v0[23];
  v8 = v0[19];

  v9 = v0[17];

  v10 = v8[3];
  v11 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v10);
  v12 = (*(v11 + 8))(v10, v11);
  v14 = v13;
  sub_2402A36B0();
  swift_allocError();
  *v15 = v12;
  v15[1] = v14;
  v15[2] = v1;
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_2402A2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2402A2A48, 0, 0);
}

uint64_t sub_2402A2A48()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2402A2B74;
  v8 = v0[4];
  v7 = v0[5];

  return v10(v8, v7, v2, v3);
}

uint64_t sub_2402A2B74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2402A2CC0, 0, 0);
  }
}

uint64_t sub_2402A2CC0()
{
  v1 = v0[2];
  v2 = *v1;
  *v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2402A2D4C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x2822009F8](sub_2402A2D70, 0, 0);
}

uint64_t sub_2402A2D70()
{
  v1 = *(v0 + 40);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = *(MEMORY[0x277D859B8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_2402A2E7C;

  return MEMORY[0x282200740](v0 + 16, v2, v2, 0, 0, &unk_2402A94E0, v3, v2);
}

uint64_t sub_2402A2E7C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2402A2FB4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2402A2F98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2402A2FB4()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_2402A3018(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24029CC14;

  return sub_2402A1180(a1, a2, v6, v7, v8);
}

uint64_t sub_2402A30DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2402A3140()
{
  v1 = (type metadata accessor for CompositeHTTPHeadersProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 72) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2402A7118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v12 = (v0 + v3);
  v13 = *v12;

  v14 = v1[7];
  v15 = sub_2402A7708();
  (*(*(v15 - 8) + 8))(&v12[v14], v15);
  (*(v6 + 8))(v0 + v8, v5);
  v16 = *(v0 + v10);

  return MEMORY[0x2821FE8E8](v0, v10 + 8, v9 | 7);
}

uint64_t sub_2402A32D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompositeHTTPHeadersProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2402A3334(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CompositeHTTPHeadersProvider() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2402A7118() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_240296080;

  return sub_2402A1D20(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9, v12);
}

uint64_t sub_2402A34C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2402A3530(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2402A3598()
{
  result = qword_27E3C8FB0;
  if (!qword_27E3C8FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8FA8, &qword_2402A94F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FB0);
  }

  return result;
}

uint64_t sub_2402A3604()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24029CC14;

  return sub_2402A2A24(v2, v3, v5, v4);
}

unint64_t sub_2402A36B0()
{
  result = qword_27E3C8FB8;
  if (!qword_27E3C8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FB8);
  }

  return result;
}

uint64_t sub_2402A3704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2402A375C()
{
  sub_2402A7648();

  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_2402A73A8();
  v4 = v3;

  MEMORY[0x245CBD8D0](v2, v4);

  qword_27E3C8FC0 = 0xD00000000000001BLL;
  *algn_27E3C8FC8 = 0x80000002402AA0C0;
  return result;
}

uint64_t sub_2402A383C(uint64_t a1, uint64_t a2)
{
  *(v2 + 344) = a1;
  *(v2 + 352) = a2;
  return MEMORY[0x2822009F8](sub_2402A385C, 0, 0);
}

uint64_t sub_2402A385C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD0, &qword_2402A9578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2402A9530;
  v2 = *MEMORY[0x277D048E0];
  *(inited + 32) = sub_2402A73A8();
  v3 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD00000000000002ALL;
  *(inited + 56) = 0x80000002402AA010;
  v5 = *MEMORY[0x277D048D8];
  *(inited + 80) = sub_2402A73A8();
  *(inited + 88) = v6;
  if (qword_27E3C8A98 != -1)
  {
    swift_once();
  }

  v7 = qword_27E3C8FC0;
  v8 = *algn_27E3C8FC8;
  *(inited + 120) = v3;
  *(inited + 96) = v7;
  *(inited + 104) = v8;
  v9 = *MEMORY[0x277D048E8];
  *(inited + 128) = sub_2402A73A8();
  v10 = MEMORY[0x277D83B88];
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 136) = v11;
  *(inited + 144) = 60;
  v12 = *MEMORY[0x277D04950];
  *(inited + 176) = sub_2402A73A8();
  *(inited + 216) = v10;
  *(inited + 184) = v13;
  *(inited + 192) = 262800;
  v14 = *MEMORY[0x277D048A0];
  *(inited + 224) = sub_2402A73A8();
  *(inited + 232) = v15;

  v16 = sub_2402A5030();
  v18 = v0[43];
  v17 = v0[44];
  type metadata accessor for SecAccessControl(0);
  *(inited + 264) = v19;
  *(inited + 240) = v16;
  v20 = *MEMORY[0x277D04928];
  *(inited + 272) = sub_2402A73A8();
  *(inited + 280) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C8C50, &qword_2402A8778);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2402A8C10;
  v23 = *MEMORY[0x277D04930];
  *(v22 + 32) = sub_2402A73A8();
  *(v22 + 40) = v24;
  v25 = *MEMORY[0x277D04908];
  *(v22 + 48) = sub_2402A73A8();
  *(v22 + 56) = v26;
  *(inited + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD8, &unk_2402A9580);
  *(inited + 288) = v22;
  v27 = sub_24029D740(inited);
  v0[45] = v27;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8E10, &unk_2402A8F40);
  swift_arrayDestroy();
  v28 = swift_task_alloc();
  v0[46] = v28;
  v28[2] = v27;
  v28[3] = v18;
  v28[4] = v17;
  v29 = *(MEMORY[0x277D85A40] + 4);
  v30 = swift_task_alloc();
  v0[47] = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
  *v30 = v0;
  v30[1] = sub_2402A3C34;

  return MEMORY[0x2822008A0](v0 + 42, 0, 0, 0xD000000000000010, 0x80000002402AA040, sub_2402A5190, v28, v31);
}

uint64_t sub_2402A3C34()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v8 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_2402A3D74;
  }

  else
  {
    v5 = *(v2 + 360);
    v6 = *(v2 + 368);

    v4 = sub_2402A3D58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2402A3D74()
{
  v1 = v0[45];
  v2 = v0[46];

  v3 = v0[48];
  v4 = v0[1];

  return v4();
}

void sub_2402A3DE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = aBlock - v12;
  sub_2402A3FEC(a2);
  v14 = sub_2402A7328();

  (*(v9 + 16))(v13, a1, v8);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v9 + 32))(v16 + v15, v13, v8);
  aBlock[4] = sub_2402A526C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2402A4634;
  aBlock[3] = &block_descriptor_1;
  v17 = _Block_copy(aBlock);
  sub_2402A531C(a3, a4);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v17);
}

uint64_t sub_2402A3FEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C9000, &qword_2402A9598);
    v2 = sub_2402A77F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_24029BBB0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_24029D8F4(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_24029D8F4(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_24029D8F4(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2402A7618();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_24029D8F4(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2402A42B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a2)
  {
    v9 = a1;
    v10 = sub_2402A4548(a2);
    if (v10)
    {
      v11 = v10;
      if (v10 >> 62)
      {
        if (sub_2402A77C8())
        {
          goto LABEL_6;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        v12 = sub_2402A53C4(a4, a5, v9);
        v14 = v13;
        v15 = sub_2402A54FC(v11);
        v17 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C68, &unk_2402A8EF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2402A8C10;
        strcpy((inited + 32), "X-Apple-Baa-S");
        *(inited + 46) = -4864;
        *(inited + 48) = sub_2402A7238();
        *(inited + 56) = v19;
        *(inited + 64) = 0x2D656C7070412D58;
        *(inited + 72) = 0xEB00000000616142;
        *(inited + 80) = sub_2402A7238();
        *(inited + 88) = v20;
        sub_24029D62C(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C70, &qword_2402A88A0);
        swift_arrayDestroy();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
        sub_2402A7488();

        sub_24028DDCC(v15, v17);
        sub_24028DDCC(v12, v14);
      }
    }

    else
    {
    }
  }

  sub_2402A5370();
  swift_allocError();
  *v22 = a3;
  *(v22 + 8) = 2;
  swift_willThrow();
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
  return sub_2402A7478();
}

uint64_t sub_2402A4548(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_2402A7698();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_24029BBB0(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_2402A7678();
    v4 = *(v7 + 16);
    sub_2402A76A8();
    sub_2402A76B8();
    sub_2402A7688();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_2402A4634(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a3)
  {
    v8 = sub_2402A7438();
  }

  else
  {
    v8 = 0;
  }

  v9 = a2;
  v10 = a4;
  v7(a2, v8, a4);
}

void *sub_2402A46E8()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2402A7228();
  v6[0] = 0;
  v1 = [v0 compressedDataUsingAlgorithm:3 error:v6];

  v2 = v6[0];
  if (v1)
  {
    v3 = sub_2402A7248();
  }

  else
  {
    v3 = v2;
    sub_2402A71B8();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

unint64_t sub_2402A47BC(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_2402A7648();

    v7 = 0xD000000000000021;
    if (a1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (a2 == 1)
  {
    sub_2402A7648();

    v7 = 0xD00000000000001CLL;
    if (a1)
    {
      goto LABEL_8;
    }

LABEL_9:
    v3 = 0x3E6C696E3CLL;
    v5 = 0xE500000000000000;
    goto LABEL_10;
  }

  sub_2402A7648();

  v7 = 0xD000000000000024;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_8:
  swift_getErrorValue();
  v3 = sub_2402A78E8();
  v5 = v4;
LABEL_10:
  MEMORY[0x245CBD8D0](v3, v5);

  return v7;
}

uint64_t sub_2402A4934(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C9008, &qword_2402A9720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2402A5910();
  sub_2402A7978();
  v12[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD8, &unk_2402A9580);
  sub_2402A5B0C(&qword_27E3C9018);
  sub_2402A7868();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2402A4AFC()
{
  v1 = v0[2];
  v2 = sub_2402A70E8();
  v0[3] = v2;
  v0[4] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = sub_24029D62C(MEMORY[0x277D84F90]);
    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_2402A4BF4;

    return sub_2402A383C(v7, v8);
  }
}

uint64_t sub_2402A4BF4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_2402A4D84;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_2402A4D1C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2402A4D1C()
{
  sub_24028DDB8(v0[3], v0[4]);
  v1 = v0[7];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_2402A4D84()
{
  sub_24028DDB8(v0[3], v0[4]);
  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t sub_2402A4DE8()
{
  sub_2402A7938();
  sub_2402A73F8();
  return sub_2402A7958();
}

uint64_t sub_2402A4E4C()
{
  sub_2402A7938();
  sub_2402A73F8();
  return sub_2402A7958();
}

uint64_t sub_2402A4E98@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2402A7818();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2402A4F18@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2402A7818();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2402A4F70(uint64_t a1)
{
  v2 = sub_2402A5910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2402A4FAC(uint64_t a1)
{
  v2 = sub_2402A5910();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2402A4FE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_2402A5964(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

SecAccessControlRef sub_2402A5030()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, v6);
  if (!result)
  {
    v1 = v6[0];
    if (v6[0])
    {
      type metadata accessor for CFError(0);
      sub_2402A57F8();
      v2 = swift_allocError();
      *v3 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_2402A5370();
    swift_allocError();
    *v4 = v2;
    *(v4 + 8) = 0;
    swift_willThrow();
    result = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2402A5128(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8E10, &unk_2402A8F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2402A519C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  sub_24028DDCC(*(v0 + 16), *(v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2402A526C(void *a1, uint64_t a2, void *a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FE0, &qword_2402A9590) - 8) + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);

  return sub_2402A42B4(a1, a2, a3, v8, v9);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2402A531C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2402A5370()
{
  result = qword_27E3C8FE8;
  if (!qword_27E3C8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FE8);
  }

  return result;
}

uint64_t sub_2402A53C4(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v4 = *MEMORY[0x277CDC300];
  v5 = sub_2402A7228();
  Signature = SecKeyCreateSignature(a3, v4, v5, v14);

  if (Signature)
  {
    v7 = Signature;
    v8 = sub_2402A7248();
  }

  else
  {
    v9 = v14[0];
    if (v14[0])
    {
      type metadata accessor for CFError(0);
      sub_2402A57F8();
      v8 = swift_allocError();
      *v10 = v9;
    }

    else
    {
      v8 = 0;
    }

    sub_2402A5370();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = 1;
    swift_willThrow();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

char *sub_2402A54FC(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_2402A77C8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v38 = MEMORY[0x277D84F90];
    result = sub_24028B630(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        v7 = MEMORY[0x245CBDB20](v6, a1);
        v8 = SecCertificateCopyData(v7);
        v9 = sub_2402A7248();
        v11 = v10;

        v12 = sub_2402A7238();
        v14 = v13;
        sub_24028DDCC(v9, v11);
        swift_unknownObjectRelease();
        v16 = *(v38 + 16);
        v15 = *(v38 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_24028B630((v15 > 1), v16 + 1, 1);
        }

        ++v6;
        *(v38 + 16) = v16 + 1;
        v17 = v38 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v4 != v6);
    }

    else
    {
      v18 = (a1 + 32);
      do
      {
        v19 = *v18;
        v20 = SecCertificateCopyData(v19);
        v21 = sub_2402A7248();
        v23 = v22;

        v24 = sub_2402A7238();
        v26 = v25;
        sub_24028DDCC(v21, v23);

        v28 = *(v38 + 16);
        v27 = *(v38 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_24028B630((v27 > 1), v28 + 1, 1);
        }

        *(v38 + 16) = v28 + 1;
        v29 = v38 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        ++v18;
        --v4;
      }

      while (v4);
    }

    v2 = v1;
  }

  v30 = sub_2402A7178();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_2402A7168();
  sub_2402A57A4();
  v34 = sub_2402A7158();
  if (v2)
  {
  }

  else
  {
    v36 = v34;
    v37 = v35;

    v33 = sub_2402A46E8();
    sub_24028DDCC(v36, v37);
  }

  return v33;
}

unint64_t sub_2402A57A4()
{
  result = qword_27E3C8FF0;
  if (!qword_27E3C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FF0);
  }

  return result;
}

unint64_t sub_2402A57F8()
{
  result = qword_27E3C8FF8;
  if (!qword_27E3C8FF8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8FF8);
  }

  return result;
}

uint64_t sub_2402A586C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2402A58B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_2402A5910()
{
  result = qword_27E3C9010;
  if (!qword_27E3C9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9010);
  }

  return result;
}

void *sub_2402A5964(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C9020, &qword_2402A9728);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2402A5910();
  sub_2402A7968();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8FD8, &unk_2402A9580);
    sub_2402A5B0C(&qword_27E3C9028);
    sub_2402A7848();
    (*(v4 + 8))(v8, v3);
    v10 = v12[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v10;
}

uint64_t sub_2402A5B0C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8FD8, &unk_2402A9580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2402A5B8C()
{
  result = qword_27E3C9030;
  if (!qword_27E3C9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9030);
  }

  return result;
}

unint64_t sub_2402A5BE4()
{
  result = qword_27E3C9038;
  if (!qword_27E3C9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9038);
  }

  return result;
}

unint64_t sub_2402A5C3C()
{
  result = qword_27E3C9040;
  if (!qword_27E3C9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C9040);
  }

  return result;
}

uint64_t sub_2402A5CBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24028A21C;

  return sub_2402A5D64();
}

uint64_t sub_2402A5D80()
{
  v0[13] = objc_opt_self();
  v0[14] = sub_2402A74B8();
  v0[15] = sub_2402A74A8();
  v2 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_2402A5E28, v2, v1);
}

uint64_t sub_2402A5E28()
{
  v1 = v0[15];
  v2 = v0[13];

  v0[16] = [v2 currentDevice];

  return MEMORY[0x2822009F8](sub_2402A5EB0, 0, 0);
}

uint64_t sub_2402A5EB0()
{
  v1 = *(v0 + 112);
  *(v0 + 136) = sub_2402A74A8();
  v3 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_2402A5F3C, v3, v2);
}

uint64_t sub_2402A5F3C()
{
  v2 = v0[16];
  v1 = v0[17];

  v0[18] = [v2 systemVersion];

  return MEMORY[0x2822009F8](sub_2402A5FC4, 0, 0);
}

uint64_t sub_2402A5FC4()
{
  v1 = v0[18];
  v2 = sub_2402A73A8();
  v4 = v3;

  v5 = _CFCopySystemVersionDictionary();
  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v5;
  sub_24028C320();
  sub_2402A64D0();
  v7 = sub_2402A7338();
  v8 = *MEMORY[0x277CBEC70];
  if (!*MEMORY[0x277CBEC70])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0xC000000000000001) == 0)
  {
    if (*(v7 + 16))
    {
      v14 = sub_24029D060(v8);
      if (v15)
      {
        v10 = *(*(v7 + 56) + 8 * v14);
        swift_unknownObjectRetain();

        goto LABEL_9;
      }
    }

LABEL_14:

LABEL_15:
    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  v9 = v8;
  v10 = sub_2402A77A8();

  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_9:

  v16 = v0[14];
  v0[19] = v4;
  v0[20] = v2;
  v0[12] = v10;
  swift_dynamicCast();
  v17 = v0[11];
  v0[21] = v0[10];
  v0[22] = v17;
  v0[23] = sub_2402A74A8();
  v18 = sub_2402A7468();
  v20 = v19;
  v11 = sub_2402A6174;
  v12 = v18;
  v13 = v20;

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2402A6174()
{
  v1 = v0[23];
  v2 = v0[13];

  v0[24] = [v2 currentDevice];

  return MEMORY[0x2822009F8](sub_2402A61FC, 0, 0);
}

uint64_t sub_2402A61FC()
{
  v1 = *(v0 + 112);
  *(v0 + 200) = sub_2402A74A8();
  v3 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_2402A6288, v3, v2);
}

uint64_t sub_2402A6288()
{
  v2 = v0[24];
  v1 = v0[25];

  v0[26] = [v2 model];

  return MEMORY[0x2822009F8](sub_2402A6310, 0, 0);
}

uint64_t sub_2402A6310()
{
  v1 = v0[26];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = sub_2402A73A8();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C68, &unk_2402A8EF0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6567412D72657355;
  *(inited + 16) = xmmword_2402A8810;
  *(inited + 40) = 0xEA0000000000746ELL;
  sub_2402A7648();

  MEMORY[0x245CBD8D0](v3, v2);

  MEMORY[0x245CBD8D0](0x20534F692FLL, 0xE500000000000000);
  MEMORY[0x245CBD8D0](v5, v4);

  MEMORY[0x245CBD8D0](47, 0xE100000000000000);
  MEMORY[0x245CBD8D0](v6, v8);

  *(inited + 48) = 0x73676E6974746553;
  *(inited + 56) = 0xEB000000002F312FLL;
  v10 = sub_24029D62C(inited);
  swift_setDeallocating();
  sub_24029DDD0(inited + 32);
  v11 = v0[1];

  return v11(v10);
}

unint64_t sub_2402A64D0()
{
  result = qword_27E3C9048[0];
  if (!qword_27E3C9048[0])
  {
    sub_24028C320();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E3C9048);
  }

  return result;
}

void sub_2402A6530(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2402A68C0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2402A65B8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2402A66F4(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_2402A68C0()
{
  if (!qword_27E3C90D0)
  {
    v0 = sub_2402A7348();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3C90D0);
    }
  }
}

uint64_t sub_2402A691C(uint64_t a1)
{
  sub_2402A7648();
  v2 = (*(*(a1 + 24) + 8))(*(a1 + 16));

  MEMORY[0x245CBD8D0](0xD000000000000011, 0x80000002402AA160);
  return v2;
}

uint64_t sub_2402A69BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v8 = sub_2402A7318();
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  v10 = *(v9 + 64) + 15;
  v4[6] = swift_task_alloc();
  v13 = a3 + 16;
  v11 = *(a3 + 16);
  v12 = *(v13 + 8);
  v14 = *(v12 + 16);
  v4[7] = v11;
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v4[8] = v16;
  *v16 = v4;
  v16[1] = sub_2402A6B50;

  return v18(a1, a2, v11, v12);
}

uint64_t sub_2402A6B50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2402A6CA8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 48);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_2402A6CA8()
{
  v31 = v0;
  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = __swift_project_value_buffer(v4, qword_27E3CA818);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2402A72F8();
  v8 = sub_2402A75A8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[5];
    v28 = v0[4];
    v29 = v0[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v13 = 136315394;
    swift_getMetatypeMetadata();
    v16 = sub_2402A7A78();
    v18 = sub_240299328(v16, v17, &v30);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v10;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_240288000, v7, v8, "Failed to retrieve headers using %s: '%@'. using fallback value.", v13, 0x16u);
    sub_2402A6FDC(v14);
    MEMORY[0x245CBE530](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CBE530](v15, -1, -1);
    MEMORY[0x245CBE530](v13, -1, -1);

    (*(v12 + 8))(v29, v28);
  }

  else
  {
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[4];

    (*(v22 + 8))(v21, v23);
  }

  v24 = *(v0[3] + *(v0[2] + 36));

  v25 = v0[6];

  v26 = v0[1];

  return v26(v24);
}

uint64_t sub_2402A6F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24028A21C;

  return sub_2402A69BC(a1, a2, a3);
}

uint64_t sub_2402A6FDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB8, &qword_2402A8E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for TimeoutError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TimeoutError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}