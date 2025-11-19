uint64_t sub_23B7ABE18(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 4144959;
  }

  else
  {
    v2 = 5527621;
  }

  if (*a2)
  {
    v3 = 4144959;
  }

  else
  {
    v3 = 5527621;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_23B7BCC70();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_23B7ABE90()
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

uint64_t sub_23B7ABEF8()
{
  sub_23B7BC830();
}

uint64_t sub_23B7ABF44()
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

uint64_t sub_23B7ABFA8@<X0>(char *a1@<X8>)
{
  v2 = sub_23B7BCBD0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_23B7AC008(uint64_t *a1@<X8>)
{
  v2 = 5527621;
  if (*v1)
  {
    v2 = 4144959;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

uint64_t sub_23B7AC050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD20();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_23B7BCC80();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_0(v9);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_23B7AC124(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD40();
  sub_23B7AC1EC(v2, v3, v4);
  __swift_mutable_project_boxed_opaque_existential_1(v6, v7);
  sub_23B7BCCA0();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_23B7AC1EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    if (a1)
    {
      v5 = 4144959;
    }

    else
    {
      v5 = 5527621;
    }

    MEMORY[0x23EEA8AE0](v5, 0xE300000000000000);

    sub_23B7797D8();
    v6 = sub_23B7BC870();
    MEMORY[0x23EEA8AE0](v6);

    return 0;
  }
}

uint64_t sub_23B7AC2C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B7AC310(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *sub_23B7AC370@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_23B7AC45C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_23B7AC3A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD40();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_23B7AC5E8();
  sub_23B7BCCB0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void *sub_23B7AC45C(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23B7BCD20();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_23B7AC544();
    sub_23B7BCC90();
    v3 = v5;
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_23B7AC544()
{
  result = qword_27E181980;
  if (!qword_27E181980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181980);
  }

  return result;
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

unint64_t sub_23B7AC5E8()
{
  result = qword_27E181988;
  if (!qword_27E181988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181988);
  }

  return result;
}

unint64_t sub_23B7AC650()
{
  result = qword_27E181990;
  if (!qword_27E181990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181990);
  }

  return result;
}

uint64_t sub_23B7AC6B0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_23B7BBAF0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  (*(v11 + 16))(&v27 - v15, a2, v10);
  sub_23B7BBAC0();
  sub_23B7ADB58(&qword_27E1819D8, MEMORY[0x277CD4A90]);
  v17 = sub_23B7BC7B0();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (v17)
  {
    v18(a2, v10);
    v18(v16, v10);
    sub_23B7ADA24(v27, v9);
    v19 = sub_23B7BB9A0();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v9, 1, v19) != 1)
    {
      sub_23B779B38(v9, v7, &qword_27E181360);
      v25 = (*(v20 + 88))(v7, v19);
      if (v25 == *MEMORY[0x277CD4A00])
      {
        v21 = 0;
        goto LABEL_13;
      }

      if (v25 == *MEMORY[0x277CD49F8])
      {
        v21 = 1;
        goto LABEL_13;
      }

      (*(v20 + 8))(v7, v19);
    }

    v21 = 4;
LABEL_13:
    result = sub_23B7AD9BC(v9);
    goto LABEL_14;
  }

  v22 = v27;
  sub_23B7BBAD0();
  v23 = sub_23B7BC7B0();
  v18(v14, v10);
  if (v23)
  {
    v18(a2, v10);
    sub_23B7AD9BC(v22);
    result = (v18)(v16, v10);
    v21 = 2;
  }

  else
  {
    sub_23B7BBAE0();
    v26 = sub_23B7BC7B0();
    v18(a2, v10);
    sub_23B7AD9BC(v22);
    v18(v14, v10);
    result = (v18)(v16, v10);
    if (v26)
    {
      v21 = 3;
    }

    else
    {
      v21 = 4;
    }
  }

LABEL_14:
  *v28 = v21;
  return result;
}

uint64_t sub_23B7ACAB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684099177;
    }

    else
    {
      v4 = 0x656E6F685069;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 6513005;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x6E6F69736976;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684099177;
    }

    else
    {
      v9 = 0x656E6F685069;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x6E6F69736976;
    if (a2 != 3)
    {
      v6 = 1701736302;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 6513005;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_23B7BCC70();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_23B7ACC14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18);
  __swift_allocate_value_buffer(v0, qword_27E181998);
  v1 = __swift_project_value_buffer(v0, qword_27E181998);
  v2 = sub_23B7BB810();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_23B7ACCB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E180868 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18);
  v3 = __swift_project_value_buffer(v2, qword_27E181998);
  return sub_23B779B38(v3, a1, &qword_27E180C18);
}

uint64_t sub_23B7ACD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B7ADAA4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_23B7ACDA8()
{
  sub_23B7AD968();

  return sub_23B7BBFB0();
}

unint64_t sub_23B7ACE10()
{
  result = qword_27E1819B0;
  if (!qword_27E1819B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819B0);
  }

  return result;
}

uint64_t sub_23B7ACE64@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACE10();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.isViewService.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_23B7ACE10();
  sub_23B7BBFB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_23B7ACF88;
}

uint64_t sub_23B7ACFB4(void (*a1)(void))
{
  a1();
  sub_23B7BBFB0();
  return v2;
}

unint64_t sub_23B7ACFFC()
{
  result = qword_27E1819B8;
  if (!qword_27E1819B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819B8);
  }

  return result;
}

uint64_t (*EnvironmentValues.isPackage.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_23B7ACFFC();
  sub_23B7BBFB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_23B7AD120;
}

uint64_t sub_23B7AD168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B7AD428();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.binaryCompatibility.getter()
{
  sub_23B7AD214();

  return sub_23B7BBFB0();
}

unint64_t sub_23B7AD214()
{
  result = qword_27E1819C0;
  if (!qword_27E1819C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819C0);
  }

  return result;
}

uint64_t (*EnvironmentValues.binaryCompatibility.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_23B7AD214();
  sub_23B7BBFB0();
  return sub_23B7AD308;
}

_ManagedAppDistribution_SwiftUI::BinaryCompatibility_optional __swiftcall BinaryCompatibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23B7BCBD0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t BinaryCompatibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 6513005;
  v4 = 0x6E6F69736976;
  if (v1 != 3)
  {
    v4 = 1701736302;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684099177;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23B7AD428()
{
  result = qword_27E1819C8;
  if (!qword_27E1819C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819C8);
  }

  return result;
}

uint64_t sub_23B7AD47C()
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

uint64_t sub_23B7AD540()
{
  sub_23B7BC830();
}

uint64_t sub_23B7AD5F0()
{
  sub_23B7BCCD0();
  sub_23B7BC830();

  return sub_23B7BCD10();
}

void sub_23B7AD6BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6513005;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F69736976;
  if (v2 != 3)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684099177;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_23B7AD73C@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACE10();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BinaryCompatibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryCompatibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23B7AD968()
{
  result = qword_27E1819D0;
  if (!qword_27E1819D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819D0);
  }

  return result;
}

uint64_t sub_23B7AD9BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7ADA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B7ADAA4()
{
  result = qword_27E1819E0;
  if (!qword_27E1819E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C18);
    sub_23B7ADB58(qword_27E1819E8, MEMORY[0x277CC9260]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1819E0);
  }

  return result;
}

uint64_t sub_23B7ADB58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23B7ADBA8()
{
  type metadata accessor for ManagedAppCellContext();
  if (v0 <= 0x3F)
  {
    sub_23B77DA18(319, &qword_27E180C08, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_23B77D9B4();
      if (v2 <= 0x3F)
      {
        sub_23B77DA18(319, &qword_27E180C20, MEMORY[0x277CE02A8]);
        if (v3 <= 0x3F)
        {
          sub_23B77DA6C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_23B7ADCB0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v38 = *(v4 + 84);
  if (v38 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  v7 = *(v6 + 64);
  if (v7 <= 8)
  {
    v7 = 8;
  }

  v40 = v7;
  v8 = *(sub_23B7BB810() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(sub_23B7BC050() - 8);
  v12 = *(v11 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v39 = v12;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80) - 8);
  v14 = *(v13 + 84);
  v15 = *(v4 + 64);
  if (v14 <= v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = *(v13 + 84);
  }

  if (v9)
  {
    v17 = v10;
  }

  else
  {
    v17 = v10 + 1;
  }

  v18 = *(v13 + 80);
  if (v17 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v17;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = *(v6 + 80) & 0xF8 | 7;
  v21 = ((((((((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + v20 + 16;
  v22 = *(v8 + 80) & 0xF8 | 7;
  v23 = v40 + v22 + 1;
  v24 = *(v11 + 80) & 0xF8 | 7;
  v25 = v19 + v24 + 1;
  v26 = v39 + v18 + 1;
  if (a2 <= v16)
  {
    goto LABEL_41;
  }

  v27 = ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18) + *(v13 + 64);
  v28 = 8 * v27;
  if (v27 <= 3)
  {
    v31 = ((a2 - v16 + ~(-1 << v28)) >> v28) + 1;
    if (HIWORD(v31))
    {
      v29 = *(a1 + v27);
      if (!v29)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 > 0xFF)
    {
      v29 = *(a1 + v27);
      if (!*(a1 + v27))
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if (v31 < 2)
    {
LABEL_41:
      if (v5 >= v14)
      {
        if (v38 < 0x7FFFFFFF)
        {
          v37 = *(((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
          if (v37 >= 0xFFFFFFFF)
          {
            LODWORD(v37) = -1;
          }

          return (v37 + 1);
        }

        else
        {
          v36 = *(v4 + 48);

          return v36(a1);
        }
      }

      else
      {
        v35 = *(v13 + 48);

        return v35((v26 + ((v25 + ((v23 + ((a1 + v21) & ~v20)) & ~v22)) & ~v24)) & ~v18);
      }
    }
  }

  v29 = *(a1 + v27);
  if (!*(a1 + v27))
  {
    goto LABEL_41;
  }

LABEL_28:
  v32 = (v29 - 1) << v28;
  if (v27 > 3)
  {
    v32 = 0;
  }

  if (v27)
  {
    if (v27 <= 3)
    {
      v33 = ((*(v13 + 64) + v18 + ((v26 + ((v25 + ((v23 + (v21 & ~v20)) & ~v22)) & ~v24)) & ~v18)) & ~v18) + *(v13 + 64);
    }

    else
    {
      v33 = 4;
    }

    if (v33 > 2)
    {
      if (v33 == 3)
      {
        v34 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v34 = *a1;
      }
    }

    else if (v33 == 1)
    {
      v34 = *a1;
    }

    else
    {
      v34 = *a1;
    }
  }

  else
  {
    v34 = 0;
  }

  return v16 + (v34 | v32) + 1;
}

void sub_23B7AE134(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v40 = v4;
  v41 = *(v4 + 84);
  if (v41 <= 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
  }

  else
  {
    v5 = *(v4 + 84);
  }

  v6 = *(sub_23B7BBCE0() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = 8;
  v9 = *(sub_23B7BB810() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  v12 = *(sub_23B7BC050() - 8);
  if (*(v12 + 64) > 8uLL)
  {
    v8 = *(v12 + 64);
  }

  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80) - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = *(v4 + 64);
  if (v15 <= v5)
  {
    v17 = v5;
  }

  else
  {
    v17 = *(v13 + 84);
  }

  v18 = ((((((((((v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v19 = *(v6 + 80) & 0xF8 | 7;
  v20 = *(v9 + 80) & 0xF8 | 7;
  v21 = v7 + v20 + 1;
  if (v10)
  {
    v22 = v11;
  }

  else
  {
    v22 = v11 + 1;
  }

  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v22 + v23 + 1;
  v25 = *(v13 + 80);
  v26 = v8 + v25 + 1;
  v27 = ((*(v13 + 64) + v25 + ((v26 + ((v24 + ((v21 + ((v18 + v19) & ~v19)) & ~v20)) & ~v23)) & ~v25)) & ~v25) + *(v13 + 64);
  if (a3 <= v17)
  {
    v29 = 0;
    v28 = a1;
  }

  else
  {
    v28 = a1;
    if (v27 <= 3)
    {
      v32 = ((a3 - v17 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v17 < a2)
  {
    v30 = ~v17 + a2;
    if (v27 < 4)
    {
      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v34 = v30 & ~(-1 << (8 * v27));
        bzero(v28, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *v28 = v34;
            if (v29 > 1)
            {
LABEL_63:
              if (v29 == 2)
              {
                *&v28[v27] = v31;
              }

              else
              {
                *&v28[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *v28 = v30;
            if (v29 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *v28 = v34;
        v28[2] = BYTE2(v34);
      }

      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(v28, v27);
      *v28 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v29)
    {
      v28[v27] = v31;
    }

    return;
  }

  if (v29 > 1)
  {
    if (v29 != 2)
    {
      *&v28[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&v28[v27] = 0;
LABEL_43:
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!v29)
  {
    goto LABEL_43;
  }

  v28[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v5 >= v15)
  {
    if (v5 >= a2)
    {
      if (v41 < 0x7FFFFFFF)
      {
        v39 = (&v28[v16 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v39[2] = 0;
          v39[3] = 0;
          *v39 = a2 & 0x7FFFFFFF;
          v39[1] = 0;
        }

        else
        {
          v39[3] = a2 - 1;
        }
      }

      else
      {
        v38 = *(v40 + 56);

        v38(v28, a2);
      }
    }

    else if (((((((((((v16 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      bzero(v28, v18);
      *v28 = ~v5 + a2;
    }
  }

  else
  {
    v35 = ~v25;
    v36 = *(v14 + 56);
    v37 = (v26 + ((v24 + ((v21 + (&v28[v18 + v19] & ~v19)) & ~v20)) & ~v23)) & v35;

    v36(v37, a2);
  }
}

uint64_t sub_23B7AE6C8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_23B7BC700();
}

uint64_t sub_23B7AE898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v3 = sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A80);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v43 = sub_23B7BC5D0();
  v50 = v43;
  WitnessTable = swift_getWitnessTable();
  v47 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  v5 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - v7;
  v50 = v3;
  WitnessTable = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88);
  v52 = type metadata accessor for OfferView();
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v45 = swift_getWitnessTable();
  v46 = v8;
  v50 = v8;
  WitnessTable = v45;
  v9 = swift_getOpaqueTypeMetadata2();
  v36 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = sub_23B7BC050();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = OpaqueTypeMetadata2;
  v19 = sub_23B7BC0A0();
  v40 = *(v19 - 8);
  v41 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v36 - v20;
  sub_23B79A7D4(v18);
  v22 = sub_23B7BC040();
  (*(v16 + 8))(v18, v15);
  if (v22)
  {
    sub_23B7AF054(a1, v12);
    v50 = v46;
    WitnessTable = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_23B7BB698(v12, v9, OpaqueTypeConformance2);
    v24 = *(v36 + 8);
    v24(v12, v9);
    sub_23B7BB698(v14, v9, OpaqueTypeConformance2);
    v25 = v43;
    v50 = v43;
    WitnessTable = v47;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8A34(v12, v9);
    v24(v12, v9);
    v24(v14, v9);
  }

  else
  {
    v26 = v38;
    sub_23B7AF3B4(a1, v38);
    v25 = v43;
    v50 = v43;
    WitnessTable = v47;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = v37;
    v29 = v42;
    sub_23B7BB698(v26, v42, v27);
    v30 = *(v39 + 8);
    v30(v26, v29);
    sub_23B7BB698(v28, v29, v27);
    v50 = v46;
    WitnessTable = v45;
    swift_getOpaqueTypeConformance2();
    sub_23B7B8B2C(v26, v9, v29);
    v30(v26, v29);
    v30(v28, v29);
  }

  v50 = v46;
  WitnessTable = v45;
  v31 = swift_getOpaqueTypeConformance2();
  v50 = v25;
  WitnessTable = v47;
  v32 = swift_getOpaqueTypeConformance2();
  v48 = v31;
  v49 = v32;
  v33 = v41;
  v34 = swift_getWitnessTable();
  sub_23B7BB698(v21, v33, v34);
  return (*(v40 + 8))(v21, v33);
}

uint64_t sub_23B7AF054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = sub_23B7BC150();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v19 = sub_23B7BBE70();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88);
  v21 = type metadata accessor for OfferView();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  v12 = *(a1 + 24);
  v16 = v7;
  v17 = v12;
  v18 = v2;
  sub_23B7BBFE0();
  sub_23B7BC5C0();
  sub_23B7BC140();
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23B7AF3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v15 = sub_23B7BC150();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v19 = sub_23B7BBE70();
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A80);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  v8 = sub_23B7BC5D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  sub_23B7BBFE0();
  v12 = *(a1 + 24);
  v16 = v7;
  v17 = v12;
  v18 = v2;
  sub_23B7BC5C0();
  sub_23B7BC140();
  swift_getWitnessTable();
  sub_23B7BC430();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_23B7AF6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_23B7BBE70();
  v35 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  type metadata accessor for PlatformIconClippingViewModifier();
  v6 = sub_23B7BBE70();
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  sub_23B7BC1F0();
  v9 = sub_23B7BBE70();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v39 = sub_23B7BBE70();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v34 = &v33 - v12;
  v13 = sub_23B7BBE70();
  v42 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v38 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v40 = &v33 - v16;
  sub_23B7BC6A0();
  v17 = *(a1 + 24);
  sub_23B7BC460();
  v52 = v17;
  v53 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  sub_23B79759C(v3, WitnessTable);
  (*(v35 + 8))(v5, v3);
  v19 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v50 = WitnessTable;
  v51 = v19;
  v20 = swift_getWitnessTable();
  sub_23B7BC420();
  (*(v36 + 8))(v8, v6);
  v21 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470]);
  v48 = v20;
  v49 = v21;
  v22 = swift_getWitnessTable();
  v23 = v34;
  sub_23B7BC450();
  (*(v37 + 8))(v11, v9);
  sub_23B7BC250();
  v24 = [objc_opt_self() currentDevice];
  [v24 userInterfaceIdiom];

  v25 = sub_23B781950();
  v46 = v22;
  v47 = v25;
  v26 = v39;
  v27 = swift_getWitnessTable();
  v28 = v38;
  sub_23B7BC480();
  (*(v41 + 8))(v23, v26);
  v44 = v27;
  v45 = MEMORY[0x277CDF918];
  v29 = swift_getWitnessTable();
  v30 = v40;
  sub_23B7BB698(v28, v13, v29);
  v31 = *(v42 + 8);
  v31(v28, v13);
  sub_23B7BB698(v30, v13, v29);
  return (v31)(v30, v13);
}

uint64_t sub_23B7AFC80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23B7BC2D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ManagedAppCellContext();
  sub_23B7BC270();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  sub_23B7BC2E0();

  (*(v3 + 8))(v5, v2);
  v6 = sub_23B7BC360();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23B7AFE04@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = sub_23B7BC0E0();
  v9 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v9;

  return sub_23B781E88(v4, v5, v6, v7);
}

__n128 sub_23B7AFEA4@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_23B7BC050();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 44));
  v11 = *v10;
  v12 = v10[2];
  v13 = v10[3];
  v28 = v10[1];
  v29 = v11;
  v26 = v13;
  v27 = v12;
  sub_23B781E88(v11, v28, v12, v13);
  sub_23B79A7D4(v9);
  v14 = sub_23B7BC040();
  v15 = *(v7 + 8);
  v15(v9, v6);
  if (v14)
  {
    v16 = sub_23B7BC2F0();
  }

  else
  {
    v17 = sub_23B7BC280();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    v16 = sub_23B7BC2B0();
    sub_23B7826E8(v5, &qword_27E180D10);
  }

  KeyPath = swift_getKeyPath();
  sub_23B79A7D4(v9);
  sub_23B7BC040();
  v15(v9, v6);
  sub_23B7BC6A0();
  sub_23B7BBEB0();
  v19 = sub_23B7BC0E0();
  v20 = swift_getKeyPath();
  v21 = v28;
  *a1 = v29;
  *(a1 + 8) = v21;
  v22 = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v22;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v16;
  v23 = v35;
  *(a1 + 112) = v34;
  *(a1 + 128) = v23;
  *(a1 + 144) = v36;
  v24 = v31;
  *(a1 + 48) = v30;
  *(a1 + 64) = v24;
  result = v33;
  *(a1 + 80) = v32;
  *(a1 + 96) = result;
  *(a1 + 160) = v19;
  *(a1 + 168) = v20;
  *(a1 + 176) = 2;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_23B7B0178@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ManagedAppCellContext() + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  sub_23B781E88(*v3, v5, v6, v7);
  v8 = sub_23B7BC300();
  KeyPath = swift_getKeyPath();
  result = sub_23B7BC0E0();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = v8;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23B7B020C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a4;
  v93 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A80);
  v6 = MEMORY[0x28223BE20](v88);
  v91 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = (&v67 - v8);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A78);
  v9 = MEMORY[0x28223BE20](v86);
  v90 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v67 - v11;
  v12 = sub_23B7BC050();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v67 - v15;
  v16 = sub_23B7BC150();
  v76 = *(v16 - 8);
  v77 = v16;
  MEMORY[0x28223BE20](v16);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181AF8);
  v81 = *(v18 - 8);
  v82 = v18;
  MEMORY[0x28223BE20](v18);
  v95 = &v67 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70);
  v20 = MEMORY[0x28223BE20](v84);
  v85 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v80 = &v67 - v23;
  MEMORY[0x28223BE20](v22);
  v98 = &v67 - v24;
  v73 = a2;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  v96 = sub_23B7BBE70();
  v25 = sub_23B7BBE70();
  v94 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v67 - v29;
  v68 = type metadata accessor for CompactManagedAppCell();
  sub_23B7AF6AC(v68, v28);
  v115 = a3;
  v116 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v32 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v113 = WitnessTable;
  v114 = v32;
  v33 = swift_getWitnessTable();
  v34 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470]);
  v111 = v33;
  v112 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_23B781950();
  v109 = v35;
  v110 = v36;
  v107 = swift_getWitnessTable();
  v108 = MEMORY[0x277CDF918];
  v37 = swift_getWitnessTable();
  v96 = v30;
  v75 = v37;
  sub_23B7BB698(v28, v25, v37);
  v38 = *(v94 + 8);
  v97 = v28;
  v83 = v25;
  v78 = v38;
  v79 = v94 + 8;
  v38(v28, v25);
  v39 = sub_23B7BC070();
  LOBYTE(v103[0]) = 0;
  sub_23B7B0E08(&v131);
  v127 = v141;
  v128[0] = v142[0];
  *(v128 + 10) = *(v142 + 10);
  v123 = v137;
  v124 = v138;
  v125 = v139;
  v126 = v140;
  v119 = v133;
  v120 = v134;
  v121 = v135;
  v122 = v136;
  v117 = v131;
  v118 = v132;
  v129[10] = v141;
  v130[0] = v142[0];
  *(v130 + 10) = *(v142 + 10);
  v129[6] = v137;
  v129[7] = v138;
  v129[9] = v140;
  v129[8] = v139;
  v129[2] = v133;
  v129[3] = v134;
  v129[5] = v136;
  v129[4] = v135;
  v129[1] = v132;
  v129[0] = v131;
  sub_23B779B38(&v117, &v104, &qword_27E181B00);
  sub_23B7826E8(v129, &qword_27E181B00);
  *&v106[151] = v126;
  *&v106[167] = v127;
  *&v106[183] = v128[0];
  *&v106[193] = *(v128 + 10);
  *&v106[87] = v122;
  *&v106[103] = v123;
  *&v106[119] = v124;
  *&v106[135] = v125;
  *&v106[23] = v118;
  *&v106[39] = v119;
  *&v106[55] = v120;
  *&v106[71] = v121;
  *&v106[7] = v117;
  *&v105[161] = *&v106[160];
  *&v105[177] = *&v106[176];
  *&v105[193] = *&v106[192];
  *&v105[97] = *&v106[96];
  *&v105[113] = *&v106[112];
  *&v105[129] = *&v106[128];
  *&v105[145] = *&v106[144];
  *&v105[33] = *&v106[32];
  *&v105[49] = *&v106[48];
  *&v105[65] = *&v106[64];
  *&v105[81] = *&v106[80];
  *&v105[1] = *v106;
  *&v104 = v39;
  *(&v104 + 1) = 0x3FF0000000000000;
  v105[0] = v103[0];
  v105[209] = BYTE9(v128[1]);
  *&v105[17] = *&v106[16];
  v40 = v74;
  sub_23B7BC130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B08);
  sub_23B7826A0(&qword_27E181B10, &qword_27E181B08);
  sub_23B7BC430();
  (*(v76 + 8))(v40, v77);
  v142[1] = *&v105[176];
  v142[2] = *&v105[192];
  v143 = *&v105[208];
  v139 = *&v105[112];
  v140 = *&v105[128];
  v142[0] = *&v105[160];
  v141 = *&v105[144];
  v135 = *&v105[48];
  v136 = *&v105[64];
  v138 = *&v105[96];
  v137 = *&v105[80];
  v131 = v104;
  v132 = *v105;
  v134 = *&v105[32];
  v133 = *&v105[16];
  sub_23B7826E8(&v131, &qword_27E181B08);
  v41 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4420(v41))
  {
    v42 = 1;
  }

  else
  {
    v43 = v69;
    sub_23B79A7D4(v69);
    v45 = v70;
    v44 = v71;
    v46 = v72;
    (*(v71 + 104))(v70, *MEMORY[0x277CE0290], v72);
    v47 = sub_23B7B3424(v43, v45);
    v48 = *(v44 + 8);
    v48(v45, v46);
    v48(v43, v46);
    if (v47)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }
  }

  KeyPath = swift_getKeyPath();
  v50 = v80;
  (*(v81 + 32))(v80, v95, v82);
  v51 = v84;
  v52 = &v50[*(v84 + 36)];
  *v52 = KeyPath;
  *(v52 + 1) = v42;
  v52[16] = 0;
  v53 = v50;
  v54 = v98;
  sub_23B7B383C(v53, v98);
  *&v104 = 0x4030000000000000;
  BYTE8(v104) = 0;
  v55 = v87;
  sub_23B7BC420();
  v56 = sub_23B7BC060();
  v57 = v89;
  *v89 = v56;
  *(v57 + 8) = 0;
  *(v57 + 16) = 1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B18);
  sub_23B7B179C(v57 + *(v58 + 44));
  v59 = v97;
  v60 = v83;
  (*(v94 + 16))(v97, v96, v83);
  *&v104 = v59;
  v61 = v54;
  v62 = v85;
  sub_23B7B38AC(v61, v85);
  *(&v104 + 1) = v62;
  v63 = v90;
  sub_23B779B38(v55, v90, &qword_27E181A78);
  *v105 = v63;
  v64 = v91;
  sub_23B779B38(v57, v91, &qword_27E181A80);
  *&v105[8] = v64;
  v103[0] = v60;
  v103[1] = v51;
  v103[2] = v86;
  v103[3] = v88;
  v99 = v75;
  v100 = sub_23B7B391C();
  v101 = sub_23B7B3A44();
  v102 = sub_23B7826A0(&qword_27E181B30, &qword_27E181A80);
  sub_23B7AE6C8(&v104, 4uLL, v103);
  sub_23B7826E8(v57, &qword_27E181A80);
  sub_23B7826E8(v55, &qword_27E181A78);
  sub_23B7B3B00(v98);
  v65 = v78;
  v78(v96, v60);
  sub_23B7826E8(v64, &qword_27E181A80);
  sub_23B7826E8(v63, &qword_27E181A78);
  sub_23B7B3B00(v62);
  return v65(v97, v60);
}

__n128 sub_23B7B0E08@<Q0>(uint64_t a1@<X8>)
{
  v1 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4420(v1))
  {
    type metadata accessor for CompactManagedAppCell();
    sub_23B7B0178(&v106);
    v2 = v108;
    v3 = v109;
    v38 = v107;
    v39 = v106;
    KeyPath = swift_getKeyPath();
    LOBYTE(v94) = 0;
    v5 = sub_23B7BC240();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
    sub_23B7BBD30();
    sub_23B7BBCC0();
    v54 = v39;
    v55 = v38;
    v56 = v2;
    *v57 = v3;
    *&v57[8] = KeyPath;
    *&v57[16] = 1;
    v57[24] = 0;
    *&v57[25] = v106;
    *&v57[28] = *(&v106 + 3);
    LOBYTE(v58) = v5;
    DWORD1(v58) = *(&v94 + 3);
    *(&v58 + 1) = v94;
    *(&v58 + 1) = v6;
    *v59 = v7;
    *&v59[8] = v8;
    *&v59[16] = v9;
    v59[24] = 0;
    sub_23B7AFC80(&v106);
    v10 = v106;
    LOBYTE(KeyPath) = v107.n128_u8[0];
    v11 = v107.n128_u64[1];
    v12 = sub_23B7BC240();
    sub_23B7BBD30();
    sub_23B7BBCC0();
    LOBYTE(v72) = 0;
    v60 = v10;
    v61.n128_u8[0] = KeyPath;
    *(v61.n128_u32 + 1) = v106;
    v61.n128_u32[1] = *(&v106 + 3);
    v61.n128_u64[1] = v11;
    LOBYTE(v62) = v12;
    DWORD1(v62) = *(&v94 + 3);
    *(&v62 + 1) = v94;
    *(&v62 + 1) = v13;
    *v63 = v14;
    *&v63[8] = v15;
    *&v63[16] = v16;
    v63[24] = 0;
    *&v51[16] = *&v57[16];
    v52 = v58;
    v53[0] = *v59;
    *(v53 + 9) = *&v59[9];
    v48 = v39;
    v49 = v38;
    v50 = v2;
    *v51 = *v57;
    *(v93 + 9) = *&v63[9];
    v93[0] = *v63;
    v92 = v62;
    v90 = v10;
    v91 = v61;
    v66 = v2;
    *v67 = *v57;
    v64 = v39;
    v65 = v38;
    *(v69 + 9) = *&v59[9];
    v69[0] = *v59;
    *&v67[16] = *&v57[16];
    v68 = v58;
    v41 = *v57;
    *&v44[9] = *&v59[9];
    LOBYTE(v78) = KeyPath;
    v42 = *&v57[16];
    v43 = v58;
    *(v71 + 9) = *&v63[9];
    v70[2] = v62;
    v71[0] = *v63;
    v70[0] = v10;
    v70[1] = v61;
    *v44 = *v59;
    v45 = v61;
    *&v47[9] = *&v63[9];
    v46 = v62;
    *v47 = *v63;
    sub_23B779B38(&v54, &v106, qword_27E181B60);
    sub_23B779B38(&v60, &v106, &qword_27E181AF0);
    sub_23B779B38(&v64, &v106, qword_27E181B60);
    sub_23B779B38(v70, &v106, &qword_27E181AF0);
    sub_23B7826E8(&v90, &qword_27E181AF0);
    *&v75[16] = *&v51[16];
    v76 = v52;
    v77[0] = v53[0];
    *(v77 + 9) = *(v53 + 9);
    v72 = v39;
    v73 = v38;
    v74 = v2;
    *v75 = *v51;
    sub_23B7826E8(&v72, qword_27E181B60);
    v104 = v46;
    v105[0] = *v47;
    *(v105 + 9) = *&v47[9];
    v100 = *v44;
    v101 = *&v44[16];
    v103 = v45;
    v102 = v10;
    v96 = v2;
    v97 = v41;
    v99 = v43;
    v98 = v42;
    v95 = v38;
    v94 = v39;
    sub_23B7B3B74(&v94);
    v116 = v104;
    v117[0] = v105[0];
    *(v117 + 10) = *(v105 + 10);
    v112 = v100;
    v113 = v101;
    v115 = v103;
    v114 = v102;
    v108 = v96;
    v109 = v97;
    v111 = v99;
    v110 = v98;
    v107 = v95;
    v106 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B48);
    sub_23B7826A0(&qword_27E181B50, &qword_27E181B40);
    sub_23B7826A0(&qword_27E181B58, &qword_27E181B48);
    sub_23B7BC090();
    sub_23B7826E8(&v60, &qword_27E181AF0);
    v17 = &v54;
    v18 = qword_27E181B60;
  }

  else
  {
    type metadata accessor for CompactManagedAppCell();
    sub_23B7AFC80(&v106);
    v19 = v106;
    v20 = v107.n128_u8[0];
    v21 = v107.n128_u64[1];
    v22 = sub_23B7BC240();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
    sub_23B7BBD30();
    sub_23B7BBCC0();
    LOBYTE(v78) = v20;
    v48 = v19;
    v49.n128_u8[0] = v20;
    *(v49.n128_u32 + 1) = v106;
    v49.n128_u32[1] = *(&v106 + 3);
    v49.n128_u64[1] = v21;
    LOBYTE(v50) = v22;
    DWORD1(v50) = *(&v94 + 3);
    *(&v50 + 1) = v94;
    *(&v50 + 1) = v23;
    *v51 = v24;
    *&v51[8] = v25;
    *&v51[16] = v26;
    v51[24] = 0;
    sub_23B7AFE04(&v106);
    v92 = v50;
    v93[0] = *v51;
    *(v93 + 9) = *&v51[9];
    v91 = v49;
    v90 = v19;
    *&v57[9] = *&v51[9];
    v56 = v50;
    *v57 = *v51;
    v54 = v19;
    v55 = v49;
    *&v75[9] = *&v51[9];
    v27 = v106;
    v28 = v107;
    v29 = v108;
    v30 = *(&v108 + 1);
    v31 = v109;
    v74 = v50;
    *v75 = *v51;
    v72 = v19;
    v73 = v49;
    sub_23B779B38(&v48, &v106, &qword_27E181AF0);
    sub_23B781E88(v27, *(&v27 + 1), v28.n128_i8[0], v28.n128_i64[1]);

    sub_23B779B38(&v54, &v106, &qword_27E181AF0);
    sub_23B781E88(v27, *(&v27 + 1), v28.n128_i8[0], v28.n128_i64[1]);

    sub_23B781FB4(v27, *(&v27 + 1), v28.n128_i8[0], v28.n128_i64[1]);

    v66 = v92;
    *v67 = v93[0];
    *&v67[9] = *(v93 + 9);
    v64 = v90;
    v65 = v91;
    sub_23B7826E8(&v64, &qword_27E181AF0);
    v96 = v74;
    v97 = *v75;
    v98 = *&v75[16];
    v95 = v73;
    v94 = v72;
    v99 = v27;
    v100 = v28;
    LODWORD(v101) = v29;
    *(&v101 + 1) = v30;
    *&v102 = v31;
    sub_23B7B3B68(&v94);
    v116 = v104;
    v117[0] = v105[0];
    *(v117 + 10) = *(v105 + 10);
    v112 = v100;
    v113 = v101;
    v115 = v103;
    v114 = v102;
    v108 = v96;
    v109 = v97;
    v111 = v99;
    v110 = v98;
    v107 = v95;
    v106 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B48);
    sub_23B7826A0(&qword_27E181B50, &qword_27E181B40);
    sub_23B7826A0(&qword_27E181B58, &qword_27E181B48);
    sub_23B7BC090();
    sub_23B781FB4(v27, *(&v27 + 1), v28.n128_i8[0], v28.n128_i64[1]);

    v17 = &v48;
    v18 = &qword_27E181AF0;
  }

  sub_23B7826E8(v17, v18);
  v117[0] = v89[0];
  *(v117 + 10) = *(v89 + 10);
  v112 = v84;
  v113 = v85;
  v115 = v87;
  v114 = v86;
  v108 = v80;
  v109 = v81;
  v111 = v83;
  v110 = v82;
  v107 = v79;
  v106 = v78;
  v32 = v117[0];
  *(a1 + 160) = v88;
  *(a1 + 176) = v32;
  *(a1 + 186) = *(v117 + 10);
  v33 = v113;
  *(a1 + 96) = v112;
  *(a1 + 112) = v33;
  v34 = v115;
  *(a1 + 128) = v114;
  *(a1 + 144) = v34;
  v35 = v109;
  *(a1 + 32) = v108;
  *(a1 + 48) = v35;
  v36 = v111;
  *(a1 + 64) = v110;
  *(a1 + 80) = v36;
  result = v107;
  *a1 = v106;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23B7B179C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180D90);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  type metadata accessor for CompactManagedAppCell();
  sub_23B77F5BC(v8);
  *&v8[*(v3 + 44)] = 0x3FF0000000000000;
  v9 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4438(v9))
  {
    sub_23B7AFEA4(&v34);
    v53 = v42;
    v54 = v43;
    v55[0] = v44[0];
    *(v55 + 9) = *(v44 + 9);
    v49 = v38;
    v50 = v39;
    v51 = v40;
    v52 = v41;
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v48 = v37;
    nullsub_1(&v45);
    v64 = v53;
    v65 = v54;
    v66[0] = v55[0];
    *(v66 + 9) = *(v55 + 9);
    v60 = v49;
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v56 = v45;
    v57 = v46;
    v58 = v47;
    v59 = v48;
  }

  else
  {
    sub_23B7B3088(&v56);
  }

  sub_23B779B38(v8, v6, &qword_27E180D90);
  v31 = v64;
  v32 = v65;
  v33[0] = v66[0];
  *(v33 + 9) = *(v66 + 9);
  v27 = v60;
  v28 = v61;
  v29 = v62;
  v30 = v63;
  v23 = v56;
  v24 = v57;
  v25 = v58;
  v26 = v59;
  sub_23B779B38(v6, a1, &qword_27E180D90);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181B38) + 48);
  v11 = v32;
  v42 = v31;
  v43 = v32;
  v12 = v33[0];
  v44[0] = v33[0];
  *(v44 + 9) = *(v33 + 9);
  v13 = v27;
  v14 = v28;
  v38 = v27;
  v39 = v28;
  v15 = v29;
  v16 = v30;
  v40 = v29;
  v41 = v30;
  v17 = v23;
  v18 = v24;
  v34 = v23;
  v35 = v24;
  v19 = v25;
  v20 = v26;
  v36 = v25;
  v37 = v26;
  v21 = (a1 + v10);
  v21[8] = v31;
  v21[9] = v11;
  v21[10] = v12;
  *(v21 + 169) = *(v33 + 9);
  v21[4] = v13;
  v21[5] = v14;
  v21[6] = v15;
  v21[7] = v16;
  *v21 = v17;
  v21[1] = v18;
  v21[2] = v19;
  v21[3] = v20;
  sub_23B779B38(&v34, &v45, &qword_27E181A90);
  sub_23B7826E8(v8, &qword_27E180D90);
  v53 = v31;
  v54 = v32;
  v55[0] = v33[0];
  *(v55 + 9) = *(v33 + 9);
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v52 = v30;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v48 = v26;
  sub_23B7826E8(&v45, &qword_27E181A90);
  return sub_23B7826E8(v6, &qword_27E180D90);
}

uint64_t sub_23B7B1ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a1;
  v31 = a4;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  v42 = sub_23B7BBE70();
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88);
  v44 = type metadata accessor for OfferView();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90);
  swift_getTupleTypeMetadata();
  v26[2] = sub_23B7BC6F0();
  v26[1] = swift_getWitnessTable();
  v6 = sub_23B7BC640();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  v9 = sub_23B7BBE70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v29 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v26 - v14;
  MEMORY[0x28223BE20](v13);
  v27 = v26 - v16;
  sub_23B7BC070();
  type metadata accessor for CompactManagedAppCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  v17 = v30;
  sub_23B7BBD30();
  v32 = a2;
  v33 = a3;
  v34 = v17;
  sub_23B7BC630();
  v18 = type metadata accessor for ManagedAppCellContext();
  sub_23B7B4420(v18);
  WitnessTable = swift_getWitnessTable();
  sub_23B7BC4A0();
  (*(v28 + 8))(v8, v6);
  v20 = sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
  v40 = WitnessTable;
  v41 = v20;
  v21 = swift_getWitnessTable();
  v22 = v27;
  sub_23B7BB698(v15, v9, v21);
  v23 = *(v10 + 8);
  v23(v15, v9);
  v24 = v29;
  (*(v10 + 16))(v29, v22, v9);
  v38 = 0;
  v39 = 0;
  v42 = v24;
  v43 = &v38;
  v37[0] = v9;
  v37[1] = MEMORY[0x277CE1180];
  v35 = v21;
  v36 = MEMORY[0x277CE1170];
  sub_23B7AE6C8(&v42, 2uLL, v37);
  v23(v22, v9);
  return (v23)(v24, v9);
}

uint64_t sub_23B7B1FA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v65 = a3;
  v62 = type metadata accessor for OfferView();
  v5 = MEMORY[0x28223BE20](v62);
  v67 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v58 = &v47 - v7;
  v8 = sub_23B7BC150();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A88);
  v64 = *(v66 - 8);
  v10 = MEMORY[0x28223BE20](v66);
  v63 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - v12;
  v49 = a1;
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  v61 = sub_23B7BBE70();
  v69 = sub_23B7BBE70();
  v13 = sub_23B7BBE70();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  v68 = a2;
  v48 = type metadata accessor for CompactManagedAppCell();
  sub_23B7AF6AC(v48, v17);
  v109 = a2;
  v110 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v21 = sub_23B781A2C(&qword_27E180C60, type metadata accessor for PlatformIconClippingViewModifier);
  v107 = WitnessTable;
  v108 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470]);
  v105 = v22;
  v106 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_23B781950();
  v103 = v24;
  v104 = v25;
  v101 = swift_getWitnessTable();
  v102 = MEMORY[0x277CDF918];
  v26 = swift_getWitnessTable();
  v69 = v19;
  v55 = v26;
  sub_23B7BB698(v17, v13, v26);
  v52 = v14;
  v27 = *(v14 + 8);
  v70 = v17;
  v60 = v14 + 8;
  v61 = v13;
  v59 = v27;
  v27(v17, v13);
  v28 = sub_23B7BC070();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  v29 = v113[0];
  LOBYTE(v88) = 0;
  sub_23B7B28D4(v113);
  memcpy(v111, v113, sizeof(v111));
  memcpy(v112, v113, sizeof(v112));
  sub_23B779B38(v111, v99, &qword_27E181A98);
  sub_23B7826E8(v112, &qword_27E181A98);
  memcpy(&v100[7], v111, 0x108uLL);
  *&v99[0] = v28;
  *(&v99[0] + 1) = v29;
  LOBYTE(v99[1]) = v88;
  memcpy(&v99[1] + 1, v100, 0x10FuLL);
  v30 = v54;
  sub_23B7BC130();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181AA0);
  v32 = sub_23B7826A0(&qword_27E181AA8, &qword_27E181AA0);
  v33 = v53;
  v50 = v32;
  v51 = v31;
  sub_23B7BC430();
  (*(v56 + 8))(v30, v57);
  memcpy(v113, v99, 0x120uLL);
  sub_23B7826E8(v113, &qword_27E181AA0);
  v34 = v58;
  sub_23B77F5BC(v58);
  v35 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4438(v35))
  {
    sub_23B7AFEA4(&v76);
    v96 = v84;
    v97 = v85;
    v98[0] = v86[0];
    *(v98 + 9) = *(v86 + 9);
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v95 = v83;
    v88 = v76;
    v89 = v77;
    v90 = v78;
    v91 = v79;
    nullsub_1(&v88);
    v99[8] = v96;
    v99[9] = v97;
    v99[10] = v98[0];
    *(&v99[10] + 9) = *(v98 + 9);
    v99[4] = v92;
    v99[5] = v93;
    v99[6] = v94;
    v99[7] = v95;
    v99[0] = v88;
    v99[1] = v89;
    v99[2] = v90;
    v99[3] = v91;
  }

  else
  {
    sub_23B7B3088(v99);
  }

  v36 = v70;
  v37 = v61;
  (*(v52 + 16))(v70, v69, v61);
  v87[0] = v36;
  v38 = v63;
  v39 = v64;
  v40 = v33;
  v41 = v33;
  v42 = v66;
  (*(v64 + 16))(v63, v41, v66);
  v87[1] = v38;
  v43 = v67;
  sub_23B7819C8(v34, v67);
  v84 = v99[8];
  v85 = v99[9];
  v86[0] = v99[10];
  *(v86 + 9) = *(&v99[10] + 9);
  v80 = v99[4];
  v81 = v99[5];
  v82 = v99[6];
  v83 = v99[7];
  v76 = v99[0];
  v77 = v99[1];
  v78 = v99[2];
  v79 = v99[3];
  v87[2] = v43;
  v87[3] = &v76;
  sub_23B779B38(v99, &v88, &qword_27E181A90);
  v75[0] = v37;
  v75[1] = v42;
  v75[2] = v62;
  v75[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A90);
  v71 = v55;
  *&v88 = v51;
  *(&v88 + 1) = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v73 = sub_23B781A2C(&qword_27E180C90, type metadata accessor for OfferView);
  v74 = sub_23B7B30AC();
  sub_23B7AE6C8(v87, 4uLL, v75);
  sub_23B7826E8(v99, &qword_27E181A90);
  sub_23B781E28(v34);
  v44 = *(v39 + 8);
  v44(v40, v42);
  v45 = v59;
  v59(v69, v37);
  v96 = v84;
  v97 = v85;
  v98[0] = v86[0];
  *(v98 + 9) = *(v86 + 9);
  v92 = v80;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v88 = v76;
  v89 = v77;
  v90 = v78;
  v91 = v79;
  sub_23B7826E8(&v88, &qword_27E181A90);
  sub_23B781E28(v43);
  v44(v38, v42);
  return v45(v70, v37);
}

uint64_t sub_23B7B28D4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ManagedAppCellContext();
  if (sub_23B7B4420(v2))
  {
    type metadata accessor for CompactManagedAppCell();
    sub_23B7B0178(&v74);
    v3 = *(&v76 + 1);
    v33 = v76;
    v31 = v77;
    v29 = v75;
    v30 = v74;
    KeyPath = swift_getKeyPath();
    v5 = sub_23B7BC240();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
    sub_23B7BBD30();
    sub_23B7BBCC0();
    v67 = v30;
    v68 = v29;
    *&v69 = v33;
    *(&v69 + 1) = v3;
    LODWORD(v70) = v31;
    *(&v70 + 1) = KeyPath;
    *&v71 = 1;
    BYTE8(v71) = 0;
    LOBYTE(v72) = v5;
    *(&v72 + 1) = v6;
    *v73 = v7;
    *&v73[8] = v8;
    *&v73[16] = v9;
    v73[24] = 0;
    nullsub_1(&v67);
    v78 = v71;
    v79 = v72;
    v80[0] = *v73;
    *(v80 + 9) = *&v73[9];
    v74 = v67;
    v75 = v68;
    v76 = v69;
    v77 = v70;
  }

  else
  {
    sub_23B7B33FC(&v74);
    type metadata accessor for CompactManagedAppCell();
  }

  sub_23B7AFC80(&v67);
  v10 = v67;
  v28 = v68;
  v34 = *(&v68 + 1);
  v32 = sub_23B7BC240();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E180B80);
  sub_23B7BBD30();
  sub_23B7BBCC0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_23B7AFE04(&v67);
  v45 = v78;
  v46 = v79;
  *v47 = v80[0];
  *&v47[9] = *(v80 + 9);
  v41 = v74;
  v42 = v75;
  v43 = v76;
  v44 = v77;
  v50[2] = v76;
  v50[3] = v77;
  v50[0] = v74;
  v50[1] = v75;
  *(v51 + 9) = *(v80 + 9);
  v51[0] = v80[0];
  v50[4] = v78;
  v50[5] = v79;
  v19 = v67;
  v20 = v68;
  v21 = v69;
  v22 = *(&v69 + 1);
  v23 = v70;
  *&v37[9] = *(v80 + 9);
  v36 = v79;
  *v37 = v80[0];
  v35 = v78;
  v52 = v10;
  LOBYTE(v53) = v28;
  DWORD1(v53) = *&v49[3];
  *(&v53 + 1) = *v49;
  *(&v53 + 1) = v34;
  LOBYTE(v54) = v32;
  DWORD1(v54) = *&v48[3];
  *(&v54 + 1) = *v48;
  *(&v54 + 1) = v12;
  *v55 = v14;
  *&v55[8] = v16;
  *&v55[16] = v18;
  v55[24] = 0;
  *&v40[9] = *&v55[9];
  v39 = v54;
  *v40 = *v55;
  v38 = v53;
  v24 = v74;
  v25 = v75;
  v26 = v77;
  *(a1 + 32) = v76;
  *(a1 + 48) = v26;
  *a1 = v24;
  *(a1 + 16) = v25;
  *(a1 + 96) = *v37;
  *(a1 + 112) = *&v37[16];
  *(a1 + 64) = v35;
  *(a1 + 80) = v36;
  *(a1 + 176) = *v40;
  *(a1 + 192) = *&v40[16];
  *(a1 + 144) = v38;
  *(a1 + 160) = v39;
  *(a1 + 128) = v10;
  *(a1 + 208) = v19;
  *(a1 + 224) = v20;
  *(a1 + 240) = v21;
  *(a1 + 248) = v22;
  *(a1 + 256) = v23;
  sub_23B779B38(v50, &v67, &qword_27E181AE8);
  sub_23B779B38(&v52, &v67, &qword_27E181AF0);
  sub_23B781E88(v19, *(&v19 + 1), v20, *(&v20 + 1));

  sub_23B781FB4(v19, *(&v19 + 1), v20, *(&v20 + 1));

  v56 = v10;
  v57 = v28;
  *v58 = *v49;
  *&v58[3] = *&v49[3];
  v59 = v34;
  v60 = v32;
  *v61 = *v48;
  *&v61[3] = *&v48[3];
  v62 = v12;
  v63 = v14;
  v64 = v16;
  v65 = v18;
  v66 = 0;
  sub_23B7826E8(&v56, &qword_27E181AF0);
  v71 = v45;
  v72 = v46;
  *v73 = *v47;
  *&v73[9] = *&v47[9];
  v67 = v41;
  v68 = v42;
  v69 = v43;
  v70 = v44;
  return sub_23B7826E8(&v67, &qword_27E181AE8);
}

uint64_t sub_23B7B2DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ManagedAppCellContext();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for CompactManagedAppCell();
  sub_23B782748(a2, a4 + v9[9], &qword_27E180DA0);
  sub_23B782748(a3, a4 + v9[10], &qword_27E180DA8);
  v10 = v9[11];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DB0);
  swift_storeEnumTagMultiPayload();
  sub_23B77DAC8();
  sub_23B7BBD20();
  return sub_23B7BBD20();
}

uint64_t sub_23B7B2F84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180C18);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_23B779B38(a1, &v9 - v6, &qword_27E180C18);
  sub_23B779B38(v7, v5, &qword_27E180C18);
  sub_23B7AD968();
  sub_23B7BBFC0();
  return sub_23B7826E8(v7, &qword_27E180C18);
}

double sub_23B7B3088(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_23B7B30AC()
{
  result = qword_27E181AB0;
  if (!qword_27E181AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90);
    sub_23B7B3130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AB0);
  }

  return result;
}

unint64_t sub_23B7B3130()
{
  result = qword_27E181AB8;
  if (!qword_27E181AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181AC0);
    sub_23B7B31E8();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AB8);
  }

  return result;
}

unint64_t sub_23B7B31E8()
{
  result = qword_27E181AC8;
  if (!qword_27E181AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181AD0);
    sub_23B7B32A0();
    sub_23B7826A0(&qword_27E181890, &qword_27E181898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AC8);
  }

  return result;
}

unint64_t sub_23B7B32A0()
{
  result = qword_27E181AD8;
  if (!qword_27E181AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181AE0);
    sub_23B781CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181AD8);
  }

  return result;
}

uint64_t sub_23B7B3334@<X0>(uint64_t a1@<X8>)
{
  result = sub_23B7BBF70();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_23B7B3368@<X0>(uint64_t a1@<X8>)
{
  result = sub_23B7BBF70();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_23B7B33FC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

BOOL sub_23B7B3424(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_23B7BC050();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = *MEMORY[0x277CE0268];
  if (v12 != *MEMORY[0x277CE0268])
  {
    if (v12 == *MEMORY[0x277CE0298])
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE02A0])
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x277CE0260])
    {
      v13 = 4;
    }

    else if (v12 == *MEMORY[0x277CE0270])
    {
      v13 = 5;
    }

    else if (v12 == *MEMORY[0x277CE0248])
    {
      v13 = 6;
    }

    else if (v12 == *MEMORY[0x277CE0280])
    {
      v13 = 7;
    }

    else if (v12 == *MEMORY[0x277CE0278])
    {
      v13 = 8;
    }

    else if (v12 == *MEMORY[0x277CE0288])
    {
      v13 = 9;
    }

    else if (v12 == *MEMORY[0x277CE0250])
    {
      v13 = 10;
    }

    else
    {
      if (v12 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == *MEMORY[0x277CE0298])
  {
    v16 = 1;
  }

  else if (v15 == *MEMORY[0x277CE02A0])
  {
    v16 = 2;
  }

  else
  {
    if (v15 != *MEMORY[0x277CE0290])
    {
      if (v15 == *MEMORY[0x277CE0260])
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0270])
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0248])
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0280])
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0278])
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0288])
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0250])
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == *MEMORY[0x277CE0258])
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

uint64_t sub_23B7B383C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23B7B38AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23B7B391C()
{
  result = qword_27E181B20;
  if (!qword_27E181B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181B08);
    sub_23B7826A0(&qword_27E181B10, &qword_27E181B08);
    swift_getOpaqueTypeConformance2();
    sub_23B7826A0(&qword_27E180C58, &qword_27E180C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181B20);
  }

  return result;
}

unint64_t sub_23B7B3A44()
{
  result = qword_27E181B28;
  if (!qword_27E181B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78);
    sub_23B781A2C(&qword_27E180C68, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181B28);
  }

  return result;
}

uint64_t sub_23B7B3B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181A70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B7B3BD0()
{
  sub_23B7BBE70();
  type metadata accessor for PlatformIconClippingViewModifier();
  sub_23B7BBE70();
  sub_23B7BC1F0();
  sub_23B7BBE70();
  sub_23B7BBE70();
  sub_23B7BBE70();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A88);
  type metadata accessor for OfferView();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A90);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC640();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E180C50);
  sub_23B7BBE70();
  swift_getTupleTypeMetadata2();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181A80);
  swift_getTupleTypeMetadata();
  sub_23B7BC6F0();
  swift_getWitnessTable();
  sub_23B7BC5D0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23B7BC0A0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_23B7B3F04()
{
  v0 = sub_23B7BBB30();
  __swift_allocate_value_buffer(v0, qword_27E184F18);
  __swift_project_value_buffer(v0, qword_27E184F18);
  return sub_23B7BBB20();
}

void sub_23B7B3F70()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_23B7B4380();
    if (v1 <= 0x3F)
    {
      sub_23B7B43D0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B7B4024(_DWORD *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
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

_BYTE *sub_23B7B4180(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19[2] = 0;
          v19[3] = 0;
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          v19[3] = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_23B7B4380()
{
  if (!qword_27E181BE8)
  {
    v0 = sub_23B7BCB30();
    if (!v1)
    {
      atomic_store(v0, &qword_27E181BE8);
    }
  }
}

unint64_t sub_23B7B43D0()
{
  result = qword_27E181BF0;
  if (!qword_27E181BF0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27E181BF0);
  }

  return result;
}

__n128 sub_23B7B4450@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, __n128 a14, unint64_t a15, unint64_t a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = *a17;
  v25 = a17[1];
  v34 = *(a17 + 16);
  (*(*(a20 - 8) + 32))(a9, a1, a20);
  v26 = type metadata accessor for ManagedAppCellContext();
  v27 = a9 + v26[9];
  *v27 = a2;
  *(v27 + 8) = a3;
  *(v27 + 16) = a4 & 1;
  *(v27 + 24) = a5;
  v28 = (a9 + v26[10]);
  *v28 = a6;
  v28[1] = a7;
  v28[2] = a8;
  v28[3] = a10;
  v29 = a9 + v26[11];
  *v29 = a11;
  *(v29 + 16) = a12;
  *(v29 + 24) = a13;
  v30 = (a9 + v26[12]);
  result = a14;
  *v30 = a14;
  v30[1].n128_u64[0] = a15;
  v30[1].n128_u64[1] = a16;
  v32 = a9 + v26[13];
  *v32 = v24;
  *(v32 + 8) = v25;
  *(v32 + 16) = v34;
  v33 = (a9 + v26[14]);
  *v33 = a18;
  v33[1] = a19;
  return result;
}

uint64_t sub_23B7B462C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23B7BBFA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ManagedAppView(0);
  sub_23B779B38(v1 + *(v10 + 24), v9, &qword_27E180DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23B7BBCE0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23B7BCA10();
    v13 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ManagedAppView.init(app:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23B7BBAF0();
  MEMORY[0x28223BE20](v4 - 8);
  v81 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181360);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v78 - v7;
  v82 = sub_23B7BB860();
  v79 = *(v82 - 8);
  v8 = MEMORY[0x28223BE20](v82);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v78 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E180968);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v78 - v16;
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v18 = type metadata accessor for ManagedAppView(0);
  v19 = v18[5];
  *(a2 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508);
  swift_storeEnumTagMultiPayload();
  v20 = v18[6];
  *(a2 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  sub_23B779B38(v17, v15, &unk_27E180968);
  sub_23B7BC560();
  sub_23B7826E8(v17, &unk_27E180968);
  v22 = (a2 + v18[8]);
  *&v91 = 0;
  sub_23B7BC560();
  v23 = *(&v93[0] + 1);
  *v22 = *&v93[0];
  v22[1] = v23;
  v24 = a2 + v18[9];
  type metadata accessor for CGRect(0);
  v91 = 0u;
  v92 = 0u;
  sub_23B7BC560();
  v25 = v94;
  v26 = v93[1];
  *v24 = v93[0];
  *(v24 + 16) = v26;
  *(v24 + 32) = v25;
  sub_23B7BB850();
  v27 = v79;
  v28 = v82;
  (*(v79 + 2))(v83, v11, v82);
  sub_23B7BC560();
  (*(v27 + 1))(v11, v28);
  v29 = sub_23B7BB9C0();
  v30 = (a2 + v18[11]);
  *v30 = v29;
  v30[1] = v31;
  v79 = v18;
  *(a2 + v18[12]) = 0;
  *&v93[0] = sub_23B7BBA00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181368);
  v32 = sub_23B7826A0(&qword_27E181370, &qword_27E181368);
  v82 = sub_23B7BC880();
  v83 = v33;

  v34 = v80;
  sub_23B7BB9B0();
  v35 = v81;
  sub_23B7BBA30();
  sub_23B7AC6B0(v34, v35, v93);
  v36 = sub_23B7BB9D0();
  v81 = v37;
  v80 = a1;
  v38 = sub_23B7BBA40();
  if (v39)
  {
    v40 = v38;
  }

  else
  {
    v40 = 0;
  }

  if (v39)
  {
    v41 = v39;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  v78 = v32;
  v42 = sub_23B7A1250();
  v44 = v43;

  v85 = v36;
  v86 = v81;
  v45 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v45 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    v46 = v40;
  }

  else
  {
    v46 = v82;
  }

  v87 = v46;
  v88 = v47;
  v89 = v42;
  v90 = v44;

  v49 = 0;
  v50 = MEMORY[0x277D84F90];
LABEL_13:
  v51 = 3;
  if (v49 > 3)
  {
    v51 = v49;
  }

  v52 = v51 + 1;
  v53 = 16 * v49 + 40;
  while (v49 != 3)
  {
    if (v52 == ++v49)
    {
      __break(1u);
      return result;
    }

    v54 = v53 + 16;
    v55 = *&v84[v53];
    v53 += 16;
    if (v55)
    {
      v56 = *(&v81 + v54);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23B7B7368(0, *(v50 + 16) + 1, 1, v50);
        v50 = result;
      }

      v58 = *(v50 + 16);
      v57 = *(v50 + 24);
      if (v58 >= v57 >> 1)
      {
        result = sub_23B7B7368((v57 > 1), v58 + 1, 1, v50);
        v50 = result;
      }

      *(v50 + 16) = v58 + 1;
      v59 = v50 + 16 * v58;
      *(v59 + 32) = v56;
      *(v59 + 40) = v55;
      goto LABEL_13;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C00);
  swift_arrayDestroy();
  *&v93[0] = v50;
  v60 = sub_23B7BC880();
  v62 = v61;

  v63 = v79;
  v64 = (a2 + v79[13]);
  *v64 = v60;
  v64[1] = v62;
  v65 = v80;
  v66 = sub_23B7BB9D0();
  v68 = v67;
  v69 = sub_23B7BBA40();
  if (v70)
  {
    v71 = v69;
  }

  else
  {
    v71 = 0;
  }

  if (v70)
  {
    v72 = v70;
  }

  else
  {
    v72 = 0xE000000000000000;
  }

  v73 = sub_23B7B7474(v66, v68, v71, v72, v82);
  v75 = v74;

  v76 = sub_23B7BBA50();
  result = (*(*(v76 - 8) + 8))(v65, v76);
  v77 = (a2 + v63[14]);
  *v77 = v73;
  v77[1] = v75;
  return result;
}

uint64_t ManagedAppView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  v94 = type metadata accessor for ManagedAppView(0);
  v100 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v101 = v3;
  v102 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_23B7BBCE0();
  v98 = *(v99 - 8);
  v4 = MEMORY[0x28223BE20](v99);
  v97 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v96 = &v82 - v6;
  v93 = sub_23B7BB860();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C08);
  MEMORY[0x28223BE20](v85);
  v9 = (&v82 - v8);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C10);
  v10 = MEMORY[0x28223BE20](v83);
  v82 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v82 - v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C18);
  MEMORY[0x28223BE20](v84);
  v15 = &v82 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C20);
  MEMORY[0x28223BE20](v86);
  v17 = &v82 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C28);
  MEMORY[0x28223BE20](v87);
  v90 = &v82 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C30);
  MEMORY[0x28223BE20](v89);
  v95 = &v82 - v19;
  v20 = sub_23B7BBFA0();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v2;
  v25 = *(v2 + 8) == 1;
  v88 = v17;
  if (v25)
  {
    LOBYTE(v106) = v24;
  }

  else
  {

    sub_23B7BCA10();
    v26 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v24, 0);
    (*(v21 + 8))(v23, v20);
    LOBYTE(v24) = v106;
  }

  if (v24 <= 1u)
  {
    if (v24)
    {
      v27 = 0x4056000000000000;
    }

    else
    {
      v27 = 0x404E000000000000;
    }

    goto LABEL_13;
  }

  if (v24 != 2)
  {
    v27 = 0x4067200000000000;
LABEL_13:
    v28 = *&v27;
    goto LABEL_14;
  }

  if (qword_27E180840 != -1)
  {
    swift_once();
  }

  v28 = *&qword_27E184EE0 + 0.0 + 20.0;
LABEL_14:
  v29 = *v2;
  if (*(v2 + 8))
  {
    v30 = *v2;
  }

  else
  {

    sub_23B7BCA10();
    v31 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v29, 0);
    (*(v21 + 8))(v23, v20);
    v30 = v106;
  }

  v25 = v30 == 2;
  v32 = 52;
  if (v25)
  {
    v32 = 56;
  }

  v33 = v94;
  v34 = (v2 + *(v94 + v32));
  v36 = *v34;
  v35 = v34[1];

  *v13 = sub_23B7BC060();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C38);
  sub_23B7B5DD4(v2, &v13[*(v37 + 44)]);
  sub_23B779B38(v13, v82, &qword_27E181C10);
  sub_23B7826A0(&qword_27E181C40, &qword_27E181C10);
  *v9 = sub_23B7BC650();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C48);
  sub_23B7B759C();
  sub_23B7BC090();
  sub_23B7826E8(v13, &qword_27E181C10);
  *&v106 = v36;
  *(&v106 + 1) = v35;
  sub_23B7B76D0();
  sub_23B78A78C();
  v38 = v88;
  sub_23B7BC400();
  sub_23B7826E8(v15, &qword_27E181C18);

  v39 = v2 + v33[9];
  v40 = *(v39 + 32);
  v41 = *(v39 + 16);
  v106 = *v39;
  v107 = v41;
  *&v108 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C60);
  sub_23B7BC570();
  v42 = v104;
  v43 = v105;
  v44 = v38 + *(v86 + 36);
  *v44 = v28;
  *(v44 + 8) = v42;
  *(v44 + 24) = v43;
  *(v44 + 40) = swift_getKeyPath();
  *(v44 + 48) = 0;
  v45 = *(type metadata accessor for MaskView(0) + 28);
  *(v44 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508);
  swift_storeEnumTagMultiPayload();
  v46 = sub_23B7BC6A0();
  v48 = v47;
  v49 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C68) + 36));
  *v49 = v46;
  v49[1] = v48;
  v50 = (v2 + v33[8]);
  v51 = *v50;
  v52 = v50[1];
  *&v106 = v51;
  *(&v106 + 1) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C70);
  sub_23B7BC570();
  sub_23B7BC6B0();
  sub_23B7BBEB0();
  v53 = v90;
  sub_23B782748(v38, v90, &qword_27E181C20);
  v54 = (v53 + *(v87 + 36));
  v55 = v111;
  v54[4] = v110;
  v54[5] = v55;
  v54[6] = v112;
  v56 = v107;
  *v54 = v106;
  v54[1] = v56;
  v57 = v109;
  v54[2] = v108;
  v54[3] = v57;
  v58 = (v2 + v33[11]);
  v60 = *v58;
  v59 = v58[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78);
  v61 = v91;
  sub_23B7BC570();
  v62 = sub_23B7BB840();
  v64 = v63;
  (*(v92 + 8))(v61, v93);
  *&v104 = v60;
  *(&v104 + 1) = v59;

  MEMORY[0x23EEA8AE0](v62, v64);

  v65 = v104;
  v66 = v96;
  sub_23B7B462C(v96);
  v67 = v98;
  v68 = v97;
  v69 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x277CDF3C0], v99);
  LOBYTE(v48) = sub_23B7BBCD0();
  v70 = *(v67 + 8);
  v70(v68, v69);
  v70(v66, v69);
  if (v48)
  {
    v71 = 100;
  }

  else
  {
    v71 = 108;
  }

  v104 = v65;

  MEMORY[0x23EEA8AE0](v71, 0xE100000000000000);

  v72 = v104;
  v73 = v95;
  sub_23B782748(v53, v95, &qword_27E181C28);
  *(v73 + *(v89 + 52)) = v72;
  v74 = [objc_opt_self() defaultCenter];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C80);
  v76 = v103;
  sub_23B7BCAF0();

  v77 = v102;
  sub_23B7B84B8(v2, v102, type metadata accessor for ManagedAppView);
  v78 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  v79 = swift_allocObject();
  sub_23B7B8640(v77, v79 + v78, type metadata accessor for ManagedAppView);
  result = sub_23B782748(v73, v76, &qword_27E181C30);
  v81 = (v76 + *(v75 + 56));
  *v81 = sub_23B7B7A7C;
  v81[1] = v79;
  return result;
}

uint64_t sub_23B7B5C98()
{
  v0 = sub_23B7BB860();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_23B7BB850();
  type metadata accessor for ManagedAppView(0);
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78);
  sub_23B7BC580();
  return (*(v1 + 8))(v6, v0);
}

double sub_23B7B5DD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1815C0);
  v4 = MEMORY[0x28223BE20](v44);
  v43 = &v39[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-2] - v6;
  v8 = sub_23B7BBFA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39[-2] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ManagedAppView(0);
  v13 = (a1 + v12[11]);
  v14 = v13[1];
  v41 = *v13;
  v42 = v14;
  v15 = *a1;
  v16 = *(a1 + 8);

  if (v16 != 1)
  {
    sub_23B779D68(v15, 0);
    sub_23B7BCA10();
    v17 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v15, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v15) = v45;
  }

  v40 = (*(a1 + v12[12]) & 1) == 0;
  v18 = (a1 + v12[8]);
  v19 = *v18;
  v20 = v18[1];
  *&v49 = v19;
  *(&v49 + 1) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C70);
  sub_23B7BC590();
  v21 = v45;
  v22 = v46;
  v23 = v47;
  v24 = (a1 + v12[9]);
  v25 = *(v24 + 4);
  v26 = v24[1];
  v49 = *v24;
  v50 = v26;
  v51 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C60);
  sub_23B7BC590();
  v27 = v45;
  v28 = v46;
  v29 = type metadata accessor for ExtensionHostView.Session(0);
  *v39 = v47;
  v38 = v48;
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  sub_23B779B38(v7, v43, &qword_27E1815C0);
  sub_23B7BC560();
  sub_23B7826E8(v7, &qword_27E1815C0);
  v30 = type metadata accessor for RemoteWrapperView();
  v31 = a2 + v30[7];
  v32 = v42;
  *v31 = v41;
  *(v31 + 8) = v32;
  *(v31 + 16) = v15;
  v33 = v40;
  *(v31 + 24) = 0;
  *(v31 + 32) = v33;
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  v34 = (a2 + v30[5]);
  *v34 = v21;
  v34[1] = v22;
  v34[2] = v23;
  v35 = a2 + v30[6];
  *v35 = v27;
  *(v35 + 8) = v28;
  v36 = v38;
  result = v39[0];
  *(v35 + 16) = *v39;
  *(v35 + 32) = v36;
  return result;
}

uint64_t sub_23B7B6154()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23B7B6198()
{
  sub_23B7BC4D0();
  v0 = sub_23B7BC4E0();

  qword_27E181BF8 = v0;
  return result;
}

__n128 sub_23B7B61DC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_23B7BBFA0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23B7BBE50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MaskView(0);
  sub_23B79A9FC(v10);
  v11 = sub_23B7BBE40();
  (*(v8 + 8))(v10, v7);
  if ((v11 & 1) == 0)
  {
    v13 = *(a1 + 40);
    if (*(a1 + 48) == 1)
    {
      v87 = *(a1 + 40);
    }

    else
    {

      sub_23B7BCA10();
      v16 = sub_23B7BC210();
      sub_23B7BBB00();

      sub_23B7BBF90();
      swift_getAtKeyPath();
      sub_23B779D74(v13, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v13) = v87;
    }

    if (v13 > 1u)
    {
      if (v13 != 2)
      {
        if (qword_27E180878 != -1)
        {
          swift_once();
        }

        v24 = qword_27E181BF8;

        sub_23B7BBD90();
        sub_23B7BC6A0();
        sub_23B7BBD80();
        v39.n128_u8[0] = v46.n128_u8[8];
        v32.n128_u8[0] = v47.n128_u8[8];
        v77 = 1;
        v88.n128_u64[0] = v24;
        v88.n128_u64[1] = v46.n128_u64[0];
        v89.n128_u8[0] = v46.n128_u8[8];
        v89.n128_u64[1] = v47.n128_u64[0];
        v90[0] = v47.n128_u8[8];
        *&v90[8] = v48;
        v90[24] = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CE0);
        sub_23B7B8728();
        sub_23B7BC090();
        v88 = v54;
        v89 = v55;
        *v90 = v56[0];
        *&v90[9] = *(v56 + 9);
        sub_23B7B87AC(&v88);
        v68 = v93;
        v69[0] = *v94;
        LOWORD(v69[1]) = *&v94[16];
        v64 = *v90;
        v65 = *&v90[16];
        v66 = v91;
        v67 = v92;
        v62 = v88;
        v63 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF8);
        sub_23B7B87B8();
        sub_23B7B8868();
        sub_23B7BC090();
        goto LABEL_23;
      }

      v18 = sub_23B7BC690();
      v20 = v19;
      sub_23B7B6E9C(&v88);
      v36 = v91;
      v37 = v92;
      v32 = v88;
      v33 = v89;
      v34 = *v90;
      v35 = *&v90[16];
      v40 = v89;
      v41 = *v90;
      v38 = v93;
      v39 = v88;
      v42 = *&v90[16];
      v43 = v91;
      v44 = v92;
      v45 = v93;
      sub_23B779B38(&v32, &v70, &qword_27E181D30);
      sub_23B7826E8(&v39, &qword_27E181D30);
      v51 = v36;
      v52 = v37;
      v53 = v38;
      v47 = v32;
      v48 = v33;
      v49 = v34;
      v50 = v35;
      v46.n128_u64[0] = v18;
      v46.n128_u64[1] = v20;
      v59 = v37;
      v60 = v38;
      v57 = v35;
      v58 = v36;
      v56[0] = v33;
      v56[1] = v34;
      v54 = v46;
      v55 = v32;
      sub_23B7B8984(&v54);
    }

    else
    {
      if (!v13)
      {
        if (qword_27E180878 != -1)
        {
          swift_once();
        }

        v17 = qword_27E181BF8;

        sub_23B7BBD90();
        CGRectGetWidth(*(a1 + 8));
        sub_23B7BBD90();
        sub_23B7BC6A0();
        sub_23B7BBD80();
        v39.n128_u8[0] = v46.n128_u8[8];
        v32.n128_u8[0] = v47.n128_u8[8];
        v77 = 0;
        v88.n128_u64[0] = v17;
        v88.n128_u64[1] = v46.n128_u64[0];
        v89.n128_u8[0] = v46.n128_u8[8];
        v89.n128_u64[1] = v47.n128_u64[0];
        v90[0] = v47.n128_u8[8];
        *&v90[8] = v48;
        v90[24] = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CE0);
        sub_23B7B8728();
        sub_23B7BC090();
        v88 = v54;
        v89 = v55;
        *v90 = v56[0];
        *&v90[9] = *(v56 + 9);
        sub_23B7B87AC(&v88);
        v68 = v93;
        v69[0] = *v94;
        LOWORD(v69[1]) = *&v94[16];
        v64 = *v90;
        v65 = *&v90[16];
        v66 = v91;
        v67 = v92;
        v62 = v88;
        v63 = v89;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF8);
        sub_23B7B87B8();
        sub_23B7B8868();
        sub_23B7BC090();
LABEL_23:

        goto LABEL_24;
      }

      v21 = sub_23B7BC690();
      v23 = v22;
      sub_23B7B6D04(&v88);
      v36 = v91;
      v37 = v92;
      v32 = v88;
      v33 = v89;
      v34 = *v90;
      v35 = *&v90[16];
      v40 = v89;
      v41 = *v90;
      v38 = v93;
      v39 = v88;
      v42 = *&v90[16];
      v43 = v91;
      v44 = v92;
      v45 = v93;
      sub_23B779B38(&v32, &v70, &qword_27E181D30);
      sub_23B7826E8(&v39, &qword_27E181D30);
      v51 = v36;
      v52 = v37;
      v53 = v38;
      v47 = v32;
      v48 = v33;
      v49 = v34;
      v50 = v35;
      v46.n128_u64[0] = v21;
      v46.n128_u64[1] = v23;
      v59 = v37;
      v60 = v38;
      v57 = v35;
      v58 = v36;
      v56[0] = v33;
      v56[1] = v34;
      v54 = v46;
      v55 = v32;
      sub_23B7B8998(&v54);
    }

    v93 = v59;
    *v94 = v60;
    v94[16] = v61;
    *v90 = v56[0];
    *&v90[16] = v56[1];
    v91 = v57;
    v92 = v58;
    v88 = v54;
    v89 = v55;
    sub_23B779B38(&v46, &v70, &qword_27E181D10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181D10);
    sub_23B7826A0(&qword_27E181D08, &qword_27E181D10);
    sub_23B7BC090();
    v93 = v84;
    *v94 = v85;
    v94[16] = v86;
    *v90 = v80;
    *&v90[16] = v81;
    v91 = v82;
    v92 = v83;
    v88 = v78;
    v89 = v79;
    sub_23B7B8990(&v88);
    v68 = v93;
    v69[0] = *v94;
    LOWORD(v69[1]) = *&v94[16];
    v64 = *v90;
    v65 = *&v90[16];
    v66 = v91;
    v67 = v92;
    v62 = v88;
    v63 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CF8);
    sub_23B7B87B8();
    sub_23B7B8868();
    sub_23B7BC090();
    sub_23B7826E8(&v46, &qword_27E181D10);
LABEL_24:
    v84 = v75;
    v85 = *v76;
    v86 = *&v76[16];
    v80 = v72[0];
    v81 = v72[1];
    v82 = v73;
    v83 = v74;
    v78 = v70;
    v79 = v71;
    sub_23B7B88EC(&v70);
    v68 = v75;
    v69[0] = *v76;
    *(v69 + 15) = *&v76[15];
    goto LABEL_25;
  }

  v12 = *(a1 + 40);
  if (*(a1 + 48) != 1)
  {

    sub_23B7BCA10();
    v14 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v12, 0);
    (*(v4 + 8))(v6, v3);
  }

  if (qword_27E180878 != -1)
  {
    swift_once();
  }

  v15 = qword_27E181BF8;

  sub_23B7BBD90();
  sub_23B7BBD90();
  CGRectGetHeight(*(a1 + 8));
  sub_23B7BC6A0();
  sub_23B7BBD80();
  v70.n128_u64[0] = v15;
  v70.n128_u64[1] = v78.n128_u64[0];
  v71.n128_u8[0] = v78.n128_u8[8];
  v71.n128_u64[1] = v79.n128_u64[0];
  LOBYTE(v72[0]) = v79.n128_u8[8];
  *(v72 + 8) = v80;
  sub_23B7B89A0(&v70);
  v68 = v75;
  v69[0] = *v76;
  *(v69 + 15) = *&v76[15];
LABEL_25:
  v64 = v72[0];
  v65 = v72[1];
  v66 = v73;
  v67 = v74;
  v62 = v70;
  v63 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181D20);
  sub_23B7B8728();
  sub_23B7B88F8();
  sub_23B7BC090();
  v25 = *v94;
  v26 = v31;
  *(v31 + 96) = v93;
  *(v26 + 112) = v25;
  *(v26 + 127) = *&v94[15];
  v27 = *&v90[16];
  *(v26 + 32) = *v90;
  *(v26 + 48) = v27;
  v28 = v92;
  *(v26 + 64) = v91;
  *(v26 + 80) = v28;
  result = v89;
  *v26 = v88;
  *(v26 + 16) = result;
  return result;
}

double sub_23B7B6D04@<D0>(uint64_t a1@<X8>)
{
  if (qword_27E180878 != -1)
  {
    swift_once();
  }

  v2 = qword_27E181BF8;

  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();

  sub_23B7BBD90();
  sub_23B7BBD90();
  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v2;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v13;
  result = *&v14;
  *(a1 + 96) = v14;
  return result;
}

double sub_23B7B6E9C@<D0>(uint64_t a1@<X8>)
{
  if (qword_27E180878 != -1)
  {
    swift_once();
  }

  v2 = qword_27E181BF8;
  v3 = qword_27E180840;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();

  sub_23B7BBD90();
  sub_23B7BBD90();
  sub_23B7BC6A0();
  sub_23B7BBD80();
  *a1 = v2;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = v2;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  result = *&v15;
  *(a1 + 96) = v15;
  return result;
}

uint64_t sub_23B7B70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23B7B7260@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_23B7B84B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MaskView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_23B7B8640(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MaskView);
  *a2 = sub_23B7B86A8;
  a2[1] = v7;
  return result;
}

char *sub_23B7B7368(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1808E8);
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

uint64_t sub_23B7B7474(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1808E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23B7C06A0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = a3;
  }

  else
  {
    v12 = a5;
  }

  *(v10 + 48) = v12;
  *(v10 + 56) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181368);
  sub_23B7826A0(&qword_27E181370, &qword_27E181368);
  v14 = sub_23B7BC880();

  return v14;
}

unint64_t sub_23B7B759C()
{
  result = qword_27E181C50;
  if (!qword_27E181C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181C48);
    sub_23B7B7688(&qword_27E1809C0, type metadata accessor for LegacyAppExtensionHostView);
    sub_23B7B7688(&qword_27E181620, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181C50);
  }

  return result;
}

uint64_t sub_23B7B7688(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23B7B76D0()
{
  result = qword_27E181C58;
  if (!qword_27E181C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181C18);
    sub_23B7B759C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181C58);
  }

  return result;
}

uint64_t sub_23B7B777C()
{
  v1 = type metadata accessor for ManagedAppView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_23B779D74(*(v0 + v4), *(v0 + v4 + 8));
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23B7BBE50();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23B7BBCE0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v5 + v1[7];
  v11 = type metadata accessor for LegacyAppExtensionHostView.Configuration(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_23B7BB970();
    (*(*(v12 - 8) + 8))(v10, v12);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C88);

  v13 = v5 + v1[10];
  v14 = sub_23B7BB860();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_23B7B7A7C()
{
  type metadata accessor for ManagedAppView(0);

  return sub_23B7B5C98();
}

uint64_t sub_23B7B7B1C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_9:
    v13 = *(v8 + 48);

    return v13(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_9;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C88);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[7];
    goto LABEL_9;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v7 = v12;
    v8 = *(v12 - 8);
    v9 = a3[10];
    goto LABEL_9;
  }

  v15 = *(a1 + a3[11] + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23B7B7CFC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[6];
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C88);
      if (*(*(v13 - 8) + 84) == a3)
      {
        v9 = v13;
        v10 = *(v13 - 8);
        v11 = a4[7];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C78);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11] + 8) = (a2 - 1);
          return result;
        }

        v9 = result;
        v10 = *(result - 8);
        v11 = a4[10];
      }
    }
  }

  v15 = *(v10 + 56);

  return v15(a1 + v11, a2, a2, v9);
}

void sub_23B7B7EC4()
{
  sub_23B78A01C(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23B7B8148(319, &qword_27E181810, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23B7B8148(319, &qword_27E180C08, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_23B7B80E4();
        if (v3 <= 0x3F)
        {
          sub_23B78A01C(319, &qword_27E181CB0, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_23B7B8148(319, &qword_27E181CB8, type metadata accessor for CGRect, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_23B7B8148(319, &qword_27E181CC0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
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

void sub_23B7B80E4()
{
  if (!qword_27E181CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E180968);
    v0 = sub_23B7BC5A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E181CA8);
    }
  }
}

void sub_23B7B8148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_23B7B8228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 48);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23B7B82F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 48) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181C90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23B7B839C()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_23B78A01C(319, &qword_27E180988, &type metadata for ManagedContentStyle.Style, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_23B7B8148(319, &qword_27E181810, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23B7B84B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23B7B8520()
{
  v1 = (type metadata accessor for MaskView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_23B779D74(*(v0 + v3 + 40), *(v0 + v3 + 48));
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E181508);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23B7BBE50();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23B7B8640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_23B7B86A8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MaskView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_23B7B61DC(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_23B7B8728()
{
  result = qword_27E181CE8;
  if (!qword_27E181CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181CE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181CE8);
  }

  return result;
}

unint64_t sub_23B7B87B8()
{
  result = qword_27E181D00;
  if (!qword_27E181D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181CF0);
    sub_23B7826A0(&qword_27E181D08, &qword_27E181D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181D00);
  }

  return result;
}

unint64_t sub_23B7B8868()
{
  result = qword_27E181D18;
  if (!qword_27E181D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181CF8);
    sub_23B7B8728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181D18);
  }

  return result;
}

unint64_t sub_23B7B88F8()
{
  result = qword_27E181D28;
  if (!qword_27E181D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181D20);
    sub_23B7B87B8();
    sub_23B7B8868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181D28);
  }

  return result;
}

uint64_t sub_23B7B8A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_23B7BC080();
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23B7BC090();
}

uint64_t sub_23B7B8B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_23B7BC080();
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23B7BC090();
}

uint64_t sub_23B7B8C24@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACFFC();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t sub_23B7B8CC0@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7AD214();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t sub_23B7B8D5C@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_23B7BBFA0();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  if (*(v1 + 8) == 1)
  {
    *a1 = v8;
  }

  else
  {

    sub_23B7BCA10();
    v9 = sub_23B7BC210();
    sub_23B7BBB00();

    sub_23B7BBF90();
    swift_getAtKeyPath();
    sub_23B779D74(v8, 0);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

uint64_t ManagedContentView.init(primaryLabel:secondaryLabel:tertiaryLabel:quaternaryLabel:offerState:offerAction:icon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void (*a18)(uint64_t), uint64_t a19, uint64_t a20, uint64_t a21)
{
  LODWORD(v67) = a5;
  v73 = a4;
  LODWORD(v72) = a3;
  v71 = a2;
  v70 = a1;
  v77 = a12;
  v75 = a11;
  v68 = a10;
  LODWORD(v64) = a9;
  v69 = a8;
  v63 = a7;
  v66 = a18;
  v74 = a14;
  MEMORY[0x28223BE20](a1);
  v23 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ManagedAppCellContext();
  v25 = sub_23B7BCB30();
  v88 = *(v25 - 8);
  v89 = v25;
  MEMORY[0x28223BE20](v25);
  v83 = &v61 - v26;
  v27 = *a15;
  v81 = *(a15 + 8);
  v82 = v27;
  v80 = *(a15 + 16);
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = swift_getKeyPath();
  *(a6 + 40) = 0;
  v84 = a21;
  v85 = a20;
  v28 = a6 + *(type metadata accessor for ManagedContentView() + 44);
  v29 = *(v24 - 8);
  v78 = *(v29 + 56);
  v79 = v28;
  v87 = v24;
  v76 = v29 + 56;
  v30 = v78();
  v86 = v23;
  v66(v30);
  v73 = sub_23B7BC370();
  v72 = v31;
  LODWORD(v70) = v32;
  v71 = v33;
  sub_23B7BBFF0();
  v34 = sub_23B7BC000();

  if (v34)
  {

    v67 = 0;
    v66 = 0;
    v65 = 0;
    v62 = 0;
  }

  else
  {
    v67 = sub_23B7BC370();
    v66 = v35;
    v62 = v36;
    v65 = v37 & 1;
  }

  sub_23B7BBFF0();
  v38 = sub_23B7BC000();

  if (v38)
  {

    v69 = 0;
    v68 = 0;
    v64 = 0;
    v39 = 0;
  }

  else
  {
    v69 = sub_23B7BC370();
    v68 = v40;
    v39 = v41;
    v64 = v42 & 1;
  }

  sub_23B7BBFF0();
  v43 = sub_23B7BC000();

  if (v43)
  {

    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v44 = sub_23B7BC370();
    v45 = v48;
    v47 = v49;
    v46 = v50 & 1;
  }

  v52 = v81;
  v51 = v82;
  v90[0] = v82;
  v90[1] = v81;
  v53 = v80;
  v91 = v80;
  v54 = swift_allocObject();
  *(v54 + 16) = a16;
  *(v54 + 24) = a17;
  *(v54 + 32) = v51;
  *(v54 + 40) = v52;
  *(v54 + 48) = v53;
  v60.n128_u64[1] = v45;
  v59 = v39;
  v60.n128_u64[0] = v44;
  *(&v58 + 1) = v68;
  *&v58 = v69;
  v55 = v83;
  v56 = sub_23B7B4450(v86, v73, v72, v70 & 1, v71, v67, v66, v65, v83, v62, v58, v64, v59, v60, v46, v47, v90, sub_23B7B96A4, v54, v85);
  (v78)(v55, 0, 1, v87, v56);
  sub_23B781F9C(v51, v52, v53);
  return (*(v88 + 40))(v79, v55, v89);
}

uint64_t sub_23B7B9550@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7ACFFC();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t sub_23B7B95EC@<X0>(_BYTE *a1@<X8>)
{
  sub_23B7AD214();
  result = sub_23B7BBFB0();
  *a1 = v3;
  return result;
}

uint64_t ManagedContentView.init(primaryLabel:secondaryLabel:tertiaryLabel:quaternaryLabel:offerState:offerAction:icon:)@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v82 = a8;
  v74 = a7;
  v72 = a6;
  v80 = a9;
  MEMORY[0x28223BE20](a1);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ManagedAppCellContext();
  v20 = sub_23B7BCB30();
  v76 = *(v20 - 8);
  v77 = v20;
  MEMORY[0x28223BE20](v20);
  v73 = &v56 - v21;
  v70 = a12;
  v71 = a11;
  v22 = type metadata accessor for ManagedContentView();
  v78 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v56 - v23;
  v25 = *(a5 + 8);
  v69 = *a5;
  v67 = v25;
  v66 = *(a5 + 16);
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(v24 + 2) = swift_getKeyPath();
  v24[24] = 0;
  *(v24 + 4) = swift_getKeyPath();
  v24[40] = 0;
  v79 = v22;
  v26 = *(v19 - 8);
  v27 = *(v26 + 56);
  v65 = &v24[*(v22 + 44)];
  v75 = v19;
  v64 = v27;
  v63 = v26 + 56;
  v28 = v27();
  v68 = v18;
  v82(v28);
  v29 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v62 = sub_23B7BCC60();
  v61 = v30;
  v31 = *(a2 + 3);
  v82 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v31);
  v32 = sub_23B7BC9B0();
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if ((v32 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v82, *(v82 + 3));
    v33 = sub_23B7BCC60();
    v35 = MEMORY[0x277D84F90];
  }

  v58 = v35;
  v59 = v34;
  v60 = v33;
  v36 = a3;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  if (sub_23B7BC9B0())
  {
    v57 = 0;
    v56 = 0;
    v37 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v57 = sub_23B7BCC60();
    v56 = v38;
    v37 = MEMORY[0x277D84F90];
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  if (sub_23B7BC9B0())
  {
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v39 = sub_23B7BCC60();
    v40 = v42;
    v41 = MEMORY[0x277D84F90];
  }

  v43 = v69;
  v44 = v67;
  v83[0] = v69;
  v83[1] = v67;
  v45 = v66;
  v84 = v66;
  v46 = swift_allocObject();
  v47 = v74;
  *(v46 + 16) = v72;
  *(v46 + 24) = v47;
  *(v46 + 32) = v43;
  *(v46 + 40) = v44;
  *(v46 + 48) = v45;
  v55.n128_u64[0] = v39;
  v55.n128_u64[1] = v40;
  v54 = v37;
  *(&v53 + 1) = v56;
  *&v53 = v57;
  v48 = v73;
  v49 = sub_23B7B4450(v68, v62, v61, 0, MEMORY[0x277D84F90], v60, v59, 0, v73, v58, v53, 0, v54, v55, 0, v41, v83, sub_23B7BB6A0, v46, v71);
  (v64)(v48, 0, 1, v75, v49);
  sub_23B781F9C(v43, v44, v45);
  (*(v76 + 40))(v65, v48, v77);
  v51 = v78;
  v50 = v79;
  (*(v78 + 16))(v80, v24, v79);
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(v82);
  __swift_destroy_boxed_opaque_existential_0(v81);
  return (*(v51 + 8))(v24, v50);
}

uint64_t ManagedContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v154 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = type metadata accessor for HeaderManagedAppCell();
  v131 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v130 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v126 - v8;
  v9 = type metadata accessor for DefaultManagedAppCell();
  v157 = v5;
  v10 = sub_23B7BC0A0();
  v139 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v137 = &v126 - v12;
  v140 = *(v9 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v138 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v146 = (&v126 - v15);
  v16 = type metadata accessor for CompactManagedAppCell();
  v155 = v9;
  v17 = sub_23B7BC0A0();
  v136 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v135 = &v126 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA8);
  MEMORY[0x28223BE20](v19 - 8);
  v142 = (&v126 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E180DA0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v141 = (&v126 - v23);
  v158 = v16;
  v129 = *(v16 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v133 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v132 = &v126 - v26;
  v159 = v17;
  v156 = v10;
  v27 = sub_23B7BC0A0();
  v149 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v148 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v147 = &v126 - v30;
  v144 = v4;
  v145 = v3;
  v31 = type metadata accessor for ManagedAppCellContext();
  v32 = sub_23B7BCB30();
  v33 = *(v32 - 8);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v126 - v35;
  v37 = *(v31 - 8);
  v38 = MEMORY[0x28223BE20](v34);
  v40 = &v126 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v42 = &v126 - v41;
  v153 = v27;
  v43 = sub_23B7BC0A0();
  v151 = *(v43 - 8);
  v152 = v43;
  MEMORY[0x28223BE20](v43);
  v45 = &v126 - v44;
  v143 = a1;
  (*(v33 + 16))(v36, &v150[*(a1 + 44)], v32);
  if ((*(v37 + 48))(v36, 1, v31) == 1)
  {
    (*(v33 + 8))(v36, v32);
    WitnessTable = swift_getWitnessTable();
    v47 = swift_getWitnessTable();
    v195 = WitnessTable;
    v196 = v47;
    v48 = swift_getWitnessTable();
    v49 = swift_getWitnessTable();
    v193 = v47;
    v194 = v49;
    v50 = swift_getWitnessTable();
    v191 = v48;
    v192 = v50;
    v51 = v153;
    v52 = swift_getWitnessTable();
    sub_23B7B8B2C(v52, v51, MEMORY[0x277CE1428]);
  }

  else
  {
    v128 = v45;
    v53 = v155;
    v54 = v157;
    (*(v37 + 32))(v42, v36, v31);
    sub_23B7B8D5C(&v182);
    v55 = v182;
    v56 = *(v37 + 16);
    v150 = v42;
    v56(v40, v42, v31);
    v126 = v37;
    v127 = v31;
    if (v55 > 1)
    {
      v71 = v54;
      if (v55 == 2)
      {
        v72 = v130;
        sub_23B7A9054(v40, v130);
        v73 = swift_getWitnessTable();
        v74 = v131;
        v75 = *(v131 + 16);
        v76 = v134;
        v75(v134, v72, v71);
        v146 = *(v74 + 8);
        v146(v72, v71);
        v75(v72, v76, v71);
        v77 = swift_getWitnessTable();
        v78 = v137;
        sub_23B7B8B2C(v72, v53, v71);
        v180 = swift_getWitnessTable();
        v181 = v77;
        v79 = v159;
        swift_getWitnessTable();
        v178 = v77;
        v179 = v73;
        v80 = v156;
        swift_getWitnessTable();
        v81 = v147;
        sub_23B7B8B2C(v78, v79, v80);
        (*(v139 + 8))(v78, v80);
        v82 = v146;
        v146(v72, v71);
        v82(v134, v71);
      }

      else
      {
        v96 = v141;
        sub_23B7816EC(v141);
        v97 = v142;
        sub_23B781708(v142);
        v98 = v138;
        sub_23B781788(v40, v96, v97, v138);
        v99 = swift_getWitnessTable();
        v100 = v140;
        v101 = *(v140 + 16);
        v102 = v146;
        v101(v146, v98, v53);
        v145 = *(v100 + 8);
        v145(v98, v53);
        v101(v98, v102, v53);
        v103 = swift_getWitnessTable();
        v104 = v137;
        sub_23B7B8A34(v98, v53);
        v170 = swift_getWitnessTable();
        v171 = v99;
        v105 = v159;
        swift_getWitnessTable();
        v168 = v99;
        v169 = v103;
        v106 = v156;
        swift_getWitnessTable();
        v81 = v147;
        sub_23B7B8B2C(v104, v105, v106);
        (*(v139 + 8))(v104, v106);
        v107 = v145;
        v145(v98, v53);
        v107(v146, v53);
      }

      v69 = v81;
    }

    else
    {
      v57 = v141;
      if (v55)
      {
        sub_23B7816EC(v141);
        v83 = v142;
        sub_23B781708(v142);
        v84 = v40;
        v85 = v138;
        sub_23B781788(v84, v57, v83, v138);
        v86 = swift_getWitnessTable();
        v87 = v140;
        v88 = *(v140 + 16);
        v89 = v146;
        v88(v146, v85, v53);
        v145 = *(v87 + 8);
        v145(v85, v53);
        v88(v85, v89, v53);
        v90 = v158;
        v91 = swift_getWitnessTable();
        v92 = v135;
        sub_23B7B8B2C(v85, v90, v53);
        v166 = v91;
        v167 = v86;
        v93 = v159;
        swift_getWitnessTable();
        v94 = swift_getWitnessTable();
        v164 = v86;
        v165 = v94;
        swift_getWitnessTable();
        v69 = v147;
        sub_23B7B8A34(v92, v93);
        (*(v136 + 8))(v92, v93);
        v95 = v145;
        v145(v85, v53);
        v95(v146, v53);
      }

      else
      {
        sub_23B7B2D84(v141);
        v58 = v142;
        sub_23B7B2DA0(v142);
        v59 = v133;
        sub_23B7B2DBC(v40, v57, v58, v133);
        v60 = v158;
        v61 = swift_getWitnessTable();
        v62 = v129;
        v63 = *(v129 + 16);
        v64 = v132;
        v63(v132, v59, v60);
        v146 = *(v62 + 8);
        v146(v59, v60);
        v63(v59, v64, v60);
        v65 = swift_getWitnessTable();
        v66 = v135;
        sub_23B7B8A34(v59, v60);
        v162 = v61;
        v163 = v65;
        v67 = v159;
        swift_getWitnessTable();
        v68 = swift_getWitnessTable();
        v160 = v65;
        v161 = v68;
        swift_getWitnessTable();
        v69 = v147;
        sub_23B7B8A34(v66, v67);
        (*(v136 + 8))(v66, v67);
        v70 = v146;
        v146(v133, v60);
        v70(v132, v60);
      }
    }

    v108 = swift_getWitnessTable();
    v109 = swift_getWitnessTable();
    v176 = v108;
    v177 = v109;
    v110 = swift_getWitnessTable();
    v111 = swift_getWitnessTable();
    v174 = v109;
    v175 = v111;
    v112 = swift_getWitnessTable();
    v172 = v110;
    v173 = v112;
    v113 = v153;
    swift_getWitnessTable();
    v115 = v148;
    v114 = v149;
    v116 = v69;
    (*(v149 + 16))(v148, v69, v113);
    v45 = v128;
    sub_23B7B8A34(v115, v113);
    v117 = *(v114 + 8);
    v117(v115, v113);
    v117(v116, v113);
    (*(v126 + 8))(v150, v127);
  }

  v118 = swift_getWitnessTable();
  v119 = swift_getWitnessTable();
  v189 = v118;
  v190 = v119;
  v120 = swift_getWitnessTable();
  v121 = swift_getWitnessTable();
  v187 = v119;
  v188 = v121;
  v122 = swift_getWitnessTable();
  v185 = v120;
  v186 = v122;
  v183 = swift_getWitnessTable();
  v184 = MEMORY[0x277CE1410];
  v123 = v152;
  swift_getWitnessTable();
  v124 = v151;
  (*(v151 + 16))(v154, v45, v123);
  return (*(v124 + 8))(v45, v123);
}

uint64_t View.managedContentStyle(_:)()
{
  swift_getKeyPath();
  sub_23B7BC3E0();
}

uint64_t objectdestroyTm_0()
{

  sub_23B776230(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_23B7BAED4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

void sub_23B7BAF68()
{
  sub_23B799054(319, &qword_27E180988);
  if (v0 <= 0x3F)
  {
    sub_23B799054(319, &qword_27E1813A0);
    if (v1 <= 0x3F)
    {
      sub_23B799054(319, &qword_27E1813A8);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ManagedAppCellContext();
        sub_23B7BCB30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23B7BB05C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v7 = *(v4 + 80) & 0xF8;
  v8 = v7 | 7;
  v9 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v6 - 1 >= a2)
  {
    goto LABEL_27;
  }

  v10 = ((v7 + 48) & ~v8) + (((((((((v9 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = a2 - v6;
  v12 = v10 & 0xFFFFFFF8;
  v13 = v11 + 2;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (v16)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v8 + 41) & ~v8;
    if (v5 < 0x7FFFFFFF)
    {
      v21 = *(((v9 + v19) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v21 >= 0xFFFFFFFF)
      {
        LODWORD(v21) = -1;
      }

      v20 = v21 + 1;
    }

    else
    {
      v20 = (*(v4 + 48))(v19);
    }

    if (v20 >= 2)
    {
      return v20 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = *(a1 + v10);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_23:
  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return (v12 | v18) + v6;
}

unint64_t sub_23B7BB204(unint64_t result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = v7 - 1;
  v9 = *(v5 + 80) & 0xF8;
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = (((((((((v10 & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) + 16;
  if (v7 - 1 >= a3)
  {
    v14 = 0;
    v15 = a2 - v8;
    if (a2 <= v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = a3 - v7 + 2;
    if ((((((((((v10 & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) != -16)
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v8;
    if (a2 <= v8)
    {
LABEL_16:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *(result + v11) = 0;
      }

      else if (v14)
      {
        *(result + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      result = ((result & 0xFFFFFFFFFFFFFFF8) + (v9 | 7) + 41) & ~(v9 | 7);
      if (v6 < 0x7FFFFFFF)
      {
        v21 = ((v10 + result) & 0xFFFFFFFFFFFFFFF8);
        if (((a2 + 1) & 0x80000000) != 0)
        {
          v21[2] = 0;
          v21[3] = 0;
          *v21 = a2 - 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          v21[3] = a2;
        }
      }

      else
      {
        v19 = *(v5 + 56);
        v20 = a2 + 1;

        return v19(result, v20);
      }

      return result;
    }
  }

  if ((((((((((v10 & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) == -16)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if ((((((((((v10 & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + ((v9 + 48) & ~(v9 | 7)) != -16)
  {
    v17 = a2 - v7;
    v18 = result;
    bzero(result, v11);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v11) = v16;
    }

    else
    {
      *(result + v11) = v16;
    }
  }

  else if (v14)
  {
    *(result + v11) = v16;
  }

  return result;
}

uint64_t sub_23B7BB420()
{
  type metadata accessor for CompactManagedAppCell();
  type metadata accessor for DefaultManagedAppCell();
  sub_23B7BC0A0();
  type metadata accessor for HeaderManagedAppCell();
  sub_23B7BC0A0();
  sub_23B7BC0A0();
  sub_23B7BC0A0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23B7BB5BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181DC8);
  sub_23B7BBE70();
  sub_23B7BB634();
  return swift_getWitnessTable();
}

unint64_t sub_23B7BB634()
{
  result = qword_27E181DD0;
  if (!qword_27E181DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E181DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E181DD0);
  }

  return result;
}

uint64_t sub_23B7BB6A4()
{
  sub_23B78AB48();

  return sub_23B7BBFB0();
}

uint64_t sub_23B7BB6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23B79B170();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}