id sub_237F856A8()
{
  result = [objc_allocWithZone(MEMORY[0x277D08210]) init];
  qword_27DEE2DB8 = result;
  return result;
}

id static AgeRangeService.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27DEE2DB0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DEE2DB8;
  *a1 = qword_27DEE2DB8;

  return v2;
}

uint64_t sub_237F857B4()
{
  v1 = *v0;
  sub_237F88D98();
  MEMORY[0x2383E3960](v1);
  return sub_237F88DB8();
}

uint64_t sub_237F85848()
{
  v1 = *v0;
  sub_237F88D98();
  MEMORY[0x2383E3960](v1);
  return sub_237F88DB8();
}

uint64_t AgeRangeService.ParentalControls.description.getter()
{
  if (*v0)
  {
    v1 = sub_237F87440(0, 1, 1, MEMORY[0x277D84F90]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_237F87440((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0xD000000000000013;
    *(v4 + 5) = 0x8000000237F89A10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2DC8, &qword_237F89160);
  sub_237F85BBC();
  v5 = sub_237F88C18();

  return v5;
}

BOOL sub_237F859FC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_237F85A2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_237F85A58@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_237F85B44@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
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

unint64_t sub_237F85BBC()
{
  result = qword_27DEE2DD0;
  if (!qword_27DEE2DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE2DC8, &qword_237F89160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2DD0);
  }

  return result;
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

uint64_t sub_237F85C6C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t AgeRangeService.AgeRange.lowerBound.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AgeRangeService.AgeRange.lowerBound.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t AgeRangeService.AgeRange.upperBound.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AgeRangeService.AgeRange.upperBound.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t AgeRangeService.requestAgeRange(ageGates:_:_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 121) = a6;
  *(v8 + 120) = a4;
  *(v8 + 56) = a3;
  *(v8 + 64) = a5;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  v9 = *v7;
  *(v8 + 72) = a7;
  *(v8 + 80) = v9;
  return MEMORY[0x2822009F8](sub_237F85DE4, 0, 0);
}

uint64_t sub_237F85DE4()
{
  v7 = *(v0 + 80);
  v1 = sub_237F863B0(*(v0 + 48), *(v0 + 56), *(v0 + 120) & 1, *(v0 + 64), *(v0 + 121) & 1);
  *(v0 + 88) = v1;
  v2 = *(MEMORY[0x277D08380] + 4);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_237F85EB4;
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);

  return MEMORY[0x28215E698](v1, v4);
}

uint64_t sub_237F85EB4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(v4 + 104) = a1;
  *(v4 + 112) = v1;

  v7 = *(v3 + 88);

  if (v1)
  {
    v8 = sub_237F861CC;
  }

  else
  {
    v8 = sub_237F85FF0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237F85FF0()
{
  v19 = v0;
  if (qword_27DEE2DC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_237F88BB8();
  __swift_project_value_buffer(v2, qword_27DEE38B0);
  v3 = v1;
  v4 = sub_237F88B98();
  v5 = sub_237F88C88();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_237F88C28();
    v13 = v12;

    v14 = sub_237F8764C(v11, v13, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_237F84000, v4, v5, "Successfully fetched ageRange response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383E3C40](v8, -1, -1);
    MEMORY[0x2383E3C40](v7, -1, -1);
  }

  v15 = *(v0 + 104);
  sub_237F86560(*(v0 + 40));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_237F861CC()
{
  v1 = *(v0 + 112);
  type metadata accessor for Code(0);
  *(v0 + 16) = -4003;
  v2 = v1;
  sub_237F88638(&qword_27DEE2DD8, type metadata accessor for Code);
  v3 = sub_237F88B18();

  v4 = *(v0 + 112);
  if (v3)
  {
    v5 = *(v0 + 40);

    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = xmmword_237F89150;
    v6 = *(v0 + 8);
  }

  else
  {
    *(v0 + 24) = v4;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2DE0, &qword_237F89170);
    type metadata accessor for AgeRangeError(0);
    v8 = swift_dynamicCast();
    v9 = *(v0 + 112);
    if (v8)
    {

      v10 = *(v0 + 32);
      sub_237F875C0();
      swift_allocError();
      sub_237F867AC(v11);
      swift_willThrow();

      v12 = *(v0 + 24);
    }

    else
    {

      sub_237F875C0();
      swift_allocError();
      *v13 = 0;
      swift_willThrow();
      v12 = v9;
    }

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_237F863B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v13 = MEMORY[0x277D84F90];
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  MEMORY[0x2383E3800]();
  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_237F88C68();
  }

  sub_237F88C78();
  if ((a3 & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    MEMORY[0x2383E3800]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_237F88C68();
    }

    sub_237F88C78();
  }

  if ((a5 & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    MEMORY[0x2383E3800]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_237F88C68();
    }

    sub_237F88C78();
  }

  return v13;
}

void sub_237F86560(void *a1@<X8>)
{
  v2 = v1;
  if ([v1 response] == 2)
  {
    v4 = 0;
    *a1 = 0;
    a1[1] = 0;
    v5 = 768;
    a1[2] = 0;
LABEL_28:
    a1[3] = v5;
    a1[4] = v4;
    return;
  }

  v6 = [v1 parentalControlsInformation];
  if (!v6)
  {
    v4 = 0;
LABEL_18:
    v16 = [v2 validationLevel] == 2;
    v17 = [v2 lowerbound];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 integerValue];
    }

    else
    {
      v19 = 0;
    }

    v20 = v16 << 8;
    v21 = [v2 upperbound];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 integerValue];
    }

    else
    {
      v23 = 0;
    }

    *a1 = v19;
    a1[1] = v18 == 0;
    if (v22)
    {
      v5 = v20;
    }

    else
    {
      v5 = v20 + 1;
    }

    a1[2] = v23;
    goto LABEL_28;
  }

  v7 = v6;
  sub_237F88978(0, &qword_27DEE2EA0, 0x277CCABB0);
  v8 = sub_237F88C58();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v1;
    v25 = a1;
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_16:
    v4 = 0;
LABEL_17:

    v2 = v24;
    a1 = v25;
    goto LABEL_18;
  }

  v9 = sub_237F88D28();
  v24 = v1;
  v25 = a1;
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v9 >= 1)
  {
    v4 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2383E38C0](v10, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      ++v10;
      v14 = sub_237F88CA8();
      v15 = sub_237F88CB8();

      if ((v15 & ((v11 & 1) == 0)) != 0)
      {
        v4 = 1;
        v11 = 1;
      }
    }

    while (v9 != v10);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_237F867AC@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for AgeRangeError(0);
  sub_237F88638(&qword_27DEE2E90, type metadata accessor for AgeRangeError);
  result = sub_237F88B68();
  v3 = v4 - 82;
  *a1 = (v4 + 4014) <= 0xE && ((1 << v3) & 0x570D) == 0 && ((1 << v3) & 0xD2) != 0;
  return result;
}

uint64_t DeclaredAgeRangeAction.callAsFunction(ageGates:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v7 + 72) = a5;
  *(v7 + 80) = v6;
  *(v7 + 129) = a6;
  *(v7 + 128) = a4;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  return MEMORY[0x2822009F8](sub_237F868B0, 0, 0);
}

uint64_t sub_237F868B0()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 80);
  *(swift_task_alloc() + 16) = v0 + 16;
  sub_237F88BE8();

  v2 = *(v0 + 16);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = qword_27DEE2DB0;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_237F863B0(*(v0 + 56), *(v0 + 64), *(v0 + 128) & 1, *(v0 + 72), *(v0 + 129) & 1);
    *(v0 + 96) = v5;
    v6 = *(MEMORY[0x277D08380] + 4);
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_237F86A70;

    return MEMORY[0x28215E698](v5, v4);
  }

  else
  {
    sub_237F875C0();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_237F86A70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v7 = *(v3 + 96);

  if (v1)
  {
    v8 = sub_237F86D94;
  }

  else
  {
    v8 = sub_237F86BAC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_237F86BAC()
{
  v20 = v0;
  if (qword_27DEE2DC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_237F88BB8();
  __swift_project_value_buffer(v2, qword_27DEE38B0);
  v3 = v1;
  v4 = sub_237F88B98();
  v5 = sub_237F88C88();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_237F88C28();
    v13 = v12;

    v14 = sub_237F8764C(v11, v13, &v19);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_237F84000, v4, v5, "Successfully fetched ageRange response: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x2383E3C40](v8, -1, -1);
    MEMORY[0x2383E3C40](v7, -1, -1);
  }

  v15 = *(v0 + 112);
  sub_237F86560(*(v0 + 48));

  v16 = *(v0 + 88);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_237F86D94()
{
  v1 = *(v0 + 120);
  type metadata accessor for Code(0);
  *(v0 + 24) = -4003;
  v2 = v1;
  sub_237F88638(&qword_27DEE2DD8, type metadata accessor for Code);
  v3 = sub_237F88B18();

  v4 = *(v0 + 120);
  if (v3)
  {
    v5 = *(v0 + 48);

    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = xmmword_237F89150;
    v6 = *(v0 + 88);

    v7 = *(v0 + 8);
  }

  else
  {
    *(v0 + 32) = v4;
    v8 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2DE0, &qword_237F89170);
    type metadata accessor for AgeRangeError(0);
    v9 = swift_dynamicCast();
    v10 = *(v0 + 120);
    if (v9)
    {

      v11 = *(v0 + 40);
      sub_237F875C0();
      swift_allocError();
      sub_237F867AC(v12);
      swift_willThrow();

      v13 = *(v0 + 32);
    }

    else
    {

      sub_237F875C0();
      swift_allocError();
      *v14 = 0;
      swift_willThrow();
      v13 = v10;
    }

    v15 = *(v0 + 88);
    v7 = *(v0 + 8);
  }

  return v7();
}

uint64_t EnvironmentValues.requestAgeRange.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237F88BD8();
  v2 = sub_237F88BC8();
  v3 = [v2 scene];

  result = type metadata accessor for DeclaredAgeRangeAction();
  *(a1 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_237F87010(uint64_t a1)
{
  v2 = sub_237F88638(&qword_27DEE2E90, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_237F8707C(uint64_t a1)
{
  v2 = sub_237F88638(&qword_27DEE2E90, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_237F870E8(void *a1, uint64_t a2)
{
  v4 = sub_237F88638(&qword_27DEE2E90, type metadata accessor for AgeRangeError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_237F8719C(uint64_t a1, uint64_t a2)
{
  v4 = sub_237F88638(&qword_27DEE2E90, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_237F87218()
{
  v2 = *v0;
  sub_237F88D98();
  sub_237F88C08();
  return sub_237F88DB8();
}

uint64_t sub_237F87278(uint64_t a1)
{
  v2 = sub_237F88638(&qword_27DEE2E60, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_237F872E4(uint64_t a1)
{
  v2 = sub_237F88638(&qword_27DEE2E60, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_237F87350(uint64_t a1)
{
  v2 = sub_237F88638(&qword_27DEE2E90, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_237F873BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237F88638(&qword_27DEE2E90, type metadata accessor for AgeRangeError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

char *sub_237F87440(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2EA8, &qword_237F89848);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_237F87574(uint64_t a1, unint64_t *a2)
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

unint64_t sub_237F875C0()
{
  result = qword_27DEE2DE8;
  if (!qword_27DEE2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2DE8);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_237F8764C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_237F87718(v11, 0, 0, 1, a1, a2);
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
    sub_237F88918(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_237F87718(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_237F87824(a5, a6);
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
    result = sub_237F88D18();
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

uint64_t sub_237F87824(uint64_t a1, unint64_t a2)
{
  v4 = sub_237F87870(a1, a2);
  sub_237F879A0(&unk_284AE13F8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_237F87870(uint64_t a1, unint64_t a2)
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

  v6 = sub_237F87A8C(v5, 0);
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

  result = sub_237F88D18();
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
        v10 = sub_237F88C38();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_237F87A8C(v10, 0);
        result = sub_237F88CF8();
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

uint64_t sub_237F879A0(uint64_t result)
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

  result = sub_237F87B00(result, v12, 1, v3);
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

void *sub_237F87A8C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2E98, &qword_237F89840);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_237F87B00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE2E98, &qword_237F89840);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_237F87C40(void *a1)
{
  v2 = *(v1 + 16);
  v4 = *v2;
  *v2 = a1;
  v3 = a1;
}

uint64_t type metadata accessor for DeclaredAgeRangeAction()
{
  result = qword_27DEE2E20;
  if (!qword_27DEE2E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_237F87CD4()
{
  result = qword_27DEE2DF0;
  if (!qword_27DEE2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2DF0);
  }

  return result;
}

unint64_t sub_237F87D30()
{
  result = qword_27DEE2DF8;
  if (!qword_27DEE2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2DF8);
  }

  return result;
}

unint64_t sub_237F87D88()
{
  result = qword_27DEE2E00;
  if (!qword_27DEE2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2E00);
  }

  return result;
}

unint64_t sub_237F87DE0()
{
  result = qword_27DEE2E08;
  if (!qword_27DEE2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2E08);
  }

  return result;
}

unint64_t sub_237F87E38()
{
  result = qword_27DEE2E10;
  if (!qword_27DEE2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2E10);
  }

  return result;
}

unint64_t sub_237F87E90()
{
  result = qword_27DEE2E18;
  if (!qword_27DEE2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2E18);
  }

  return result;
}

uint64_t sub_237F87EF0(uint64_t *a1, int a2)
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

uint64_t sub_237F87F38(uint64_t result, int a2, int a3)
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

uint64_t sub_237F87FA8(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_237F8803C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AgeRangeService.ParentalControls(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AgeRangeService.ParentalControls(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
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

uint64_t sub_237F8817C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 25);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_237F881D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AgeRangeService.Response(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for AgeRangeService.Response(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 40))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 25);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 25);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  if (v6 + 1 >= 2)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AgeRangeService.Response(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_237F882FC(uint64_t a1)
{
  v1 = *(a1 + 25);
  if (v1 <= 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 25);
  }

  v3 = v2 - 2;
  if (v1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double sub_237F8831C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xFD)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 - 254;
  }

  else if (a2)
  {
    *(a1 + 25) = a2 + 2;
  }

  return result;
}

uint64_t sub_237F88370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237F88BF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_237F8844C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_237F88BF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_237F88504()
{
  sub_237F88BF8();
  if (v0 <= 0x3F)
  {
    sub_237F88588();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237F88588()
{
  if (!qword_27DEE2E30)
  {
    sub_237F88978(255, &qword_27DEE2E38, 0x277D75940);
    v0 = sub_237F88CD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEE2E30);
    }
  }
}

uint64_t sub_237F88638(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_237F88834()
{
  result = qword_27DEE2E80;
  if (!qword_27DEE2E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE2E80);
  }

  return result;
}

uint64_t sub_237F88918(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_237F88978(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_237F88A00()
{
  v0 = sub_237F88BB8();
  __swift_allocate_value_buffer(v0, qword_27DEE38B0);
  __swift_project_value_buffer(v0, qword_27DEE38B0);
  return sub_237F88BA8();
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