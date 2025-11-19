uint64_t sub_240023320@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2400251AC();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t InferenceResult.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t InferenceResult.summary.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void __swiftcall InferenceResult.init(id:summary:priority:)(AppPredictionToolsInternal::InferenceResult *__return_ptr retstr, Swift::String id, Swift::String_optional summary, Swift::Bool_optional priority)
{
  retstr->id = id;
  retstr->summary = summary;
  retstr->priority = priority;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> InferenceResult.write()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 32);
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_2400252CC();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_24002526C();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_24002525C();
    sub_240023594();
    v13 = sub_24002524C();
    if (v1)
    {
    }

    else
    {
      v15 = v13;
      v16 = v14;

      v17 = sub_24002529C();
      sub_2400235E8(v15, v16);
      sub_2400252EC();

      MEMORY[0x245CB58C0](v2, v3);
      v18 = sub_2400252CC();

      [v9 setObject:v17 forKey:v18];
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_240023594()
{
  result = qword_27E3C38A0;
  if (!qword_27E3C38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C38A0);
  }

  return result;
}

uint64_t sub_2400235E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void static InferenceResult.read(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_2400252CC();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    sub_2400252EC();

    MEMORY[0x245CB58C0](a1, a2);
    v10 = sub_2400252CC();

    v11 = [v9 dataForKey_];

    if (v11)
    {
      v12 = sub_2400252AC();
      v14 = v13;

      v15 = sub_24002523C();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      sub_24002522C();
      sub_24002380C();
      sub_24002521C();
      sub_2400235E8(v12, v14);

      if (!v3)
      {
        *a3 = 0xD000000000000010;
        *(a3 + 8) = 0x80000002400259B0;
        *(a3 + 16) = v18;
        *(a3 + 32) = v19;
      }
    }

    else
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_24002380C()
{
  result = qword_27E3C38A8;
  if (!qword_27E3C38A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C38A8);
  }

  return result;
}

void static InferenceResult.delete(for:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = sub_2400252CC();
  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    sub_2400252EC();

    MEMORY[0x245CB58C0](a1, a2);
    v7 = sub_2400252CC();

    [v6 removeObjectForKey_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_240023990()
{
  v1 = *v0;
  sub_24002536C();
  MEMORY[0x245CB5960](v1);
  return sub_24002538C();
}

uint64_t sub_240023A04()
{
  v1 = *v0;
  sub_24002536C();
  MEMORY[0x245CB5960](v1);
  return sub_24002538C();
}

uint64_t sub_240023A48()
{
  v1 = 0x7972616D6D7573;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_240023A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2400243FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240023AD8(uint64_t a1)
{
  v2 = sub_240023D9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240023B14(uint64_t a1)
{
  v2 = sub_240023D9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InferenceResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C38B0, &qword_2400255B0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v15 = *(v1 + 32);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240023D9C();
  sub_2400253AC();
  v18 = 0;
  v12 = v14[3];
  sub_24002534C();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v17 = 1;
  sub_24002532C();
  v16 = 2;
  sub_24002533C();
  return (*(v4 + 8))(v7, v3);
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

unint64_t sub_240023D9C()
{
  result = qword_27E3C38B8;
  if (!qword_27E3C38B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C38B8);
  }

  return result;
}

uint64_t InferenceResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C38C0, &qword_2400255B8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240023D9C();
  sub_24002539C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v11 = sub_24002531C();
  v13 = v12;
  v21 = v11;
  v23 = 1;
  v19 = sub_2400252FC();
  v20 = v14;
  v22 = 2;
  v15 = sub_24002530C();
  (*(v6 + 8))(v9, v5);
  v16 = v20;
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v19;
  *(a2 + 24) = v16;
  *(a2 + 32) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2400240E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24002412C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InferenceResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2400242F8()
{
  result = qword_27E3C38C8;
  if (!qword_27E3C38C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C38C8);
  }

  return result;
}

unint64_t sub_240024350()
{
  result = qword_27E3C38D0;
  if (!qword_27E3C38D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C38D0);
  }

  return result;
}

unint64_t sub_2400243A8()
{
  result = qword_27E3C38D8;
  if (!qword_27E3C38D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C38D8);
  }

  return result;
}

uint64_t sub_2400243FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24002535C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (sub_24002535C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24002535C();

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

uint64_t ConfigurationAppIntent.favoriteEmoji.getter()
{
  v1 = *v0;
  sub_2400251AC();
  return v3;
}

uint64_t sub_2400245AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];

  sub_2400251BC();
}

void (*ConfigurationAppIntent.favoriteEmoji.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_24002519C();
  return sub_2400246A0;
}

void sub_2400246A0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ConfigurationAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C38E0, &qword_2400257B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v4 = &v20 - v3;
  v5 = sub_24002528C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C38E8, &qword_2400257B8);
  sub_24002527C();
  (*(v6 + 56))(v4, 1, 1, v5);
  v20 = xmmword_2400257A0;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C38F0, &qword_2400257C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v20 - v9;
  v11 = sub_2400252BC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C38F8, &qword_2400257C8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v20 - v13;
  v15 = sub_24002518C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *(*(sub_2400251FC() - 8) + 64);
  MEMORY[0x28223BE20]();
  (*(v18 + 104))(&v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CBA310]);
  result = sub_2400251DC();
  *a1 = result;
  return result;
}

unint64_t sub_240024A58()
{
  result = qword_27E3C3900;
  if (!qword_27E3C3900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C3900);
  }

  return result;
}

unint64_t sub_240024AB0()
{
  result = qword_27E3C3908;
  if (!qword_27E3C3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C3908);
  }

  return result;
}

unint64_t sub_240024B08()
{
  result = qword_27E3C3910;
  if (!qword_27E3C3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C3910);
  }

  return result;
}

unint64_t sub_240024B60()
{
  result = qword_27E3C3918;
  if (!qword_27E3C3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C3918);
  }

  return result;
}

uint64_t sub_240024CA8(uint64_t a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277CBA3B0] + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2400250B8();
  *v5 = v2;
  v5[1] = sub_240024D54;

  return MEMORY[0x28210C3D8](a2, v6);
}

uint64_t sub_240024D54()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictionsAppIntents(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PredictionsAppIntents(_WORD *result, int a2, int a3)
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

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for ConfigurationAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ConfigurationAppIntent(uint64_t result, int a2, int a3)
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

unint64_t sub_2400250B8()
{
  result = qword_27E3C3920;
  if (!qword_27E3C3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C3920);
  }

  return result;
}