unint64_t sub_23ED457AC()
{
  *v0;
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0xD000000000000015;
  }

  *v0;
  return result;
}

uint64_t sub_23ED457FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23ED479D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23ED4583C(uint64_t a1)
{
  v2 = sub_23ED45E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED45878(uint64_t a1)
{
  v2 = sub_23ED45E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED458C0(uint64_t a1)
{
  v2 = sub_23ED45F58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED458FC(uint64_t a1)
{
  v2 = sub_23ED45F58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED45938@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23ED45974(uint64_t a1)
{
  v2 = sub_23ED45EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED459B0(uint64_t a1)
{
  v2 = sub_23ED45EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23ED459EC(uint64_t a1)
{
  v2 = sub_23ED45F04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED45A28(uint64_t a1)
{
  v2 = sub_23ED45F04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IOPixelBuffers.Error.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3853C0, &qword_23ED5F770);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3853C8, &qword_23ED5F778);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3853D0, &qword_23ED5F780);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3853D8, &qword_23ED5F788);
  v14 = *(v13 - 8);
  v15 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED45E5C();
  sub_23ED5EEB4();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23ED45F04();
      v12 = v26;
      sub_23ED5EDA4();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23ED45EB0();
      v12 = v29;
      sub_23ED5EDA4();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23ED45F58();
    sub_23ED5EDA4();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
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

unint64_t sub_23ED45E5C()
{
  result = qword_27E3853E0;
  if (!qword_27E3853E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3853E0);
  }

  return result;
}

unint64_t sub_23ED45EB0()
{
  result = qword_27E3853E8;
  if (!qword_27E3853E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3853E8);
  }

  return result;
}

unint64_t sub_23ED45F04()
{
  result = qword_27E3853F0;
  if (!qword_27E3853F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3853F0);
  }

  return result;
}

unint64_t sub_23ED45F58()
{
  result = qword_27E3853F8;
  if (!qword_27E3853F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3853F8);
  }

  return result;
}

uint64_t IOPixelBuffers.Error.hashValue.getter()
{
  v1 = *v0;
  sub_23ED5EE74();
  MEMORY[0x23EF22230](v1);
  return sub_23ED5EE94();
}

uint64_t IOPixelBuffers.Error.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385400, &qword_23ED5F790);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385408, &qword_23ED5F798);
  v41 = *(v44 - 8);
  v6 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385410, &qword_23ED5F7A0);
  v46 = *(v9 - 8);
  v10 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385418, &qword_23ED5F7A8);
  v48 = *(v13 - 8);
  v14 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED45E5C();
  v18 = v49;
  sub_23ED5EEA4();
  if (v18)
  {
    goto LABEL_10;
  }

  v39 = v9;
  v40 = 0;
  v19 = v46;
  v20 = v47;
  v49 = a1;
  v21 = v16;
  v22 = sub_23ED5ED94();
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = *(v22 + 32);
    if (v23 == 1 && v24 != 3)
    {
      if (*(v22 + 32))
      {
        v46 = v22;
        v32 = v48;
        if (v24 == 1)
        {
          v51 = 1;
          sub_23ED45F04();
          v33 = v40;
          sub_23ED5ED34();
          v34 = v45;
          if (v33)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v41 + 8))(v8, v44);
          (*(v32 + 8))(v21, v13);
        }

        else
        {
          v52 = 2;
          sub_23ED45EB0();
          v37 = v40;
          sub_23ED5ED34();
          v34 = v45;
          if (v37)
          {
            (*(v32 + 8))(v21, v13);
            goto LABEL_9;
          }

          (*(v42 + 8))(v20, v43);
          (*(v32 + 8))(v21, v13);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v50 = 0;
        sub_23ED45F58();
        v35 = v40;
        sub_23ED5ED34();
        v36 = v48;
        if (v35)
        {
          (*(v48 + 8))(v16, v13);
          goto LABEL_9;
        }

        (*(v19 + 8))(v12, v39);
        (*(v36 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v34 = v45;
      }

      *v34 = v24;
      v30 = v49;
      return __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }
  }

  v26 = sub_23ED5EC64();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385420, &qword_23ED5F7B0) + 48);
  *v28 = &type metadata for IOPixelBuffers.Error;
  sub_23ED5ED44();
  sub_23ED5EC54();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v30);
}

uint64_t sub_23ED465E0()
{
  v1 = *v0;
  sub_23ED5EE74();
  MEMORY[0x23EF22230](v1);
  return sub_23ED5EE94();
}

uint64_t sub_23ED46628()
{
  v1 = *v0;
  sub_23ED5EE74();
  MEMORY[0x23EF22230](v1);
  return sub_23ED5EE94();
}

unint64_t sub_23ED46670()
{
  result = qword_27E385428;
  if (!qword_27E385428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385428);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ActivationParams(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ActivationParams(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23ED467A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED467C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_23ED4689C(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for MLError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23ED46A84()
{
  result = qword_27E3854D8;
  if (!qword_27E3854D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3854D8);
  }

  return result;
}

uint64_t sub_23ED46B20()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23ED5E834();
}

uint64_t sub_23ED46B6C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23ED5E824();
}

uint64_t sub_23ED46BC4()
{
  sub_23ED5EE74();
  v1 = *v0;
  swift_getWitnessTable();
  sub_23ED5E824();
  return sub_23ED5EE94();
}

uint64_t sub_23ED46C2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_23ED5E814();
}

uint64_t sub_23ED46C98(uint64_t a1, id *a2)
{
  result = sub_23ED5E9C4();
  *a2 = 0;
  return result;
}

uint64_t sub_23ED46D10(uint64_t a1, id *a2)
{
  v3 = sub_23ED5E9D4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23ED46D90@<X0>(uint64_t *a1@<X8>)
{
  sub_23ED5E9E4();
  v2 = sub_23ED5E9B4();

  *a1 = v2;
  return result;
}

uint64_t sub_23ED46DD4()
{
  v1 = *v0;
  v2 = sub_23ED5E9E4();
  v3 = MEMORY[0x23EF21DE0](v2);

  return v3;
}

uint64_t sub_23ED46E10()
{
  v1 = *v0;
  sub_23ED5E9E4();
  sub_23ED5EA04();
}

uint64_t sub_23ED46E64()
{
  v1 = *v0;
  sub_23ED5E9E4();
  sub_23ED5EE74();
  sub_23ED5EA04();
  v2 = sub_23ED5EE94();

  return v2;
}

uint64_t sub_23ED46EE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23ED5E9E4();
  v6 = v5;
  if (v4 == sub_23ED5E9E4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23ED5EE04();
  }

  return v9 & 1;
}

uint64_t sub_23ED46F70(uint64_t a1)
{
  v2 = sub_23ED470BC(&qword_27E3855C0, type metadata accessor for URLResourceKey);
  v3 = sub_23ED470BC(&qword_27E3855C8, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED470BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED47150@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23ED5E9E4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23ED4717C(uint64_t a1)
{
  v2 = sub_23ED470BC(&qword_27E3855B0, type metadata accessor for CIImageOption);
  v3 = sub_23ED470BC(&qword_27E3855B8, type metadata accessor for CIImageOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED472C8(uint64_t a1)
{
  v2 = sub_23ED470BC(&qword_27E385590, type metadata accessor for CIImageRepresentationOption);
  v3 = sub_23ED470BC(&qword_27E385598, type metadata accessor for CIImageRepresentationOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23ED47384@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23ED5E9B4();

  *a2 = v5;
  return result;
}

uint64_t sub_23ED473CC(uint64_t a1)
{
  v2 = sub_23ED470BC(&qword_27E3855A0, type metadata accessor for CIContextOption);
  v3 = sub_23ED470BC(&qword_27E3855A8, type metadata accessor for CIContextOption);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_23ED47714()
{
  result = qword_27E385550;
  if (!qword_27E385550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385550);
  }

  return result;
}

unint64_t sub_23ED4776C()
{
  result = qword_27E385558;
  if (!qword_27E385558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385558);
  }

  return result;
}

unint64_t sub_23ED477C4()
{
  result = qword_27E385560;
  if (!qword_27E385560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385560);
  }

  return result;
}

unint64_t sub_23ED4781C()
{
  result = qword_27E385568;
  if (!qword_27E385568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385568);
  }

  return result;
}

unint64_t sub_23ED47874()
{
  result = qword_27E385570;
  if (!qword_27E385570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385570);
  }

  return result;
}

unint64_t sub_23ED478CC()
{
  result = qword_27E385578;
  if (!qword_27E385578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385578);
  }

  return result;
}

unint64_t sub_23ED47924()
{
  result = qword_27E385580;
  if (!qword_27E385580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385580);
  }

  return result;
}

unint64_t sub_23ED4797C()
{
  result = qword_27E385588;
  if (!qword_27E385588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385588);
  }

  return result;
}

uint64_t sub_23ED479D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000023ED61670 == a2;
  if (v4 || (sub_23ED5EE04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023ED61690 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023ED616B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23ED5EE04();

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

uint64_t sub_23ED47AF4(void *a1)
{
  v3 = v1;
  v5 = [a1 shape];
  v6 = sub_23ED47FF8();
  v7 = sub_23ED5EA54();

  if (v7 >> 62)
  {
    v8 = sub_23ED5ECD4();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = [a1 shape];
  v10 = sub_23ED5EA54();

  v11 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_37:
    v12 = MEMORY[0x23EF21FF0](v11, v10);
    goto LABEL_8;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v11 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = *(v10 + 8 * v11 + 32);
LABEL_8:
  v13 = v12;

  v2 = &off_278C70000;
  v10 = [v13 integerValue];

  v14 = [a1 shape];
  v9 = sub_23ED5EA54();

  v11 = v8 - 2;
  if (__OFSUB__(v8, 2))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_41:
    v15 = MEMORY[0x23EF21FF0](v11, v9);
    goto LABEL_13;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v15 = *(v9 + 8 * v11 + 32);
LABEL_13:
  v16 = v15;

  v8 = [v16 v2[83]];

  v17 = [a1 count];
  if ((v10 * v8) >> 64 != (v10 * v8) >> 63)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v17 != (v10 * v8))
  {
    if (qword_27E385398 == -1)
    {
LABEL_24:
      v25 = sub_23ED5E964();
      __swift_project_value_buffer(v25, qword_27E3880E0);
      v26 = a1;
      v27 = sub_23ED5E944();
      v3 = sub_23ED5EB04();

      if (os_log_type_enabled(v27, v3))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v41 = v29;
        *v28 = 134218498;
        *(v28 + 4) = v10;
        *(v28 + 12) = 2048;
        *(v28 + 14) = v8;
        *(v28 + 22) = 2080;
        v30 = [v26 shape];
        v31 = sub_23ED5EA54();

        v32 = MEMORY[0x23EF21E10](v31, v6);
        v34 = v33;

        v35 = sub_23ED4A8F8(v32, v34, &v41);

        *(v28 + 24) = v35;
        _os_log_impl(&dword_23ED44000, v27, v3, "The mono-depth buffer shape is invalid. Expect %ld x %ld, but got %s", v28, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x23EF229A0](v29, -1, -1);
        MEMORY[0x23EF229A0](v28, -1, -1);
      }

      sub_23ED4807C();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();
      return v3;
    }

LABEL_45:
    swift_once();
    goto LABEL_24;
  }

  if ([a1 numberOfBytesPerElement] == 2)
  {
    v18 = 1751410032;
  }

  else
  {
    v18 = 1717855600;
  }

  v19 = createIOSurfaceBackedPixelBuffer(width:height:format:)(v10, v8, v18);
  if (v20)
  {
    return v3;
  }

  v3 = v19;
  BytesPerRow = CVPixelBufferGetBytesPerRow(v19);
  result = [a1 numberOfBytesPerElement];
  v23 = v10 * result;
  if ((v10 * result) >> 64 == (v10 * result) >> 63)
  {
    if (CVPixelBufferLockBaseAddress(v3, 0))
    {
      sub_23ED4811C();
      swift_allocError();
      *v24 = 3;
      swift_willThrow();
LABEL_22:

      return v3;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(v3);
    if (!BaseAddress)
    {
      sub_23ED4811C();
      swift_allocError();
      *v40 = 4;
      swift_willThrow();
      CVPixelBufferUnlockBaseAddress(v3, 0);
      goto LABEL_22;
    }

    v38 = BaseAddress;
    result = [a1 dataPointer];
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (v8)
      {
        v39 = result;
        do
        {
          memcpy(v38, v39, v23);
          v38 += BytesPerRow;
          v39 += v23;
          --v8;
        }

        while (v8);
      }

      CVPixelBufferUnlockBaseAddress(v3, 0);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23ED47FF8()
{
  result = qword_27E3855D0;
  if (!qword_27E3855D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3855D0);
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

unint64_t sub_23ED4807C()
{
  result = qword_27E3855D8;
  if (!qword_27E3855D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3855D8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_23ED4811C()
{
  result = qword_27E3855E0;
  if (!qword_27E3855E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3855E0);
  }

  return result;
}

uint64_t isImageFile(_:)()
{
  v0 = sub_23ED5E884();
  v20 = *(v0 - 8);
  v1 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3855E8, &qword_23ED603E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v19 - v5;
  v7 = sub_23ED5E744();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3855F0, &qword_23ED603F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED603D0;
  v13 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v14 = v13;
  sub_23ED4B098(inited);
  swift_setDeallocating();
  sub_23ED4B28C(inited + 32);
  sub_23ED5E784();

  sub_23ED5E734();
  v15 = v20;
  if ((*(v20 + 48))(v6, 1, v0) == 1)
  {
    (*(v8 + 8))(v11, v7);
    sub_23ED4B398(v6, &qword_27E3855E8, &qword_23ED603E8);
    v16 = 0;
  }

  else
  {
    sub_23ED5E864();
    v16 = sub_23ED5E874();
    v18 = *(v15 + 8);
    v18(v3, v0);
    (*(v8 + 8))(v11, v7);
    v18(v6, v0);
  }

  return v16 & 1;
}

uint64_t getImageFiles(from:)(uint64_t a1)
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = sub_23ED5E884();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (MEMORY[0x28223BE20])();
  v69 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3855E8, &qword_23ED603E8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v8 = &v63 - v7;
  v77 = sub_23ED5E744();
  v9 = *(v77 - 8);
  v10 = *(v9 + 64);
  (MEMORY[0x28223BE20])();
  v86 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23ED5E804();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = (MEMORY[0x28223BE20])();
  v68 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v63 - v17;
  if (isImageFile(_:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385600, &qword_23ED603F8);
    v18 = *(v13 + 72);
    v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_23ED603D0;
    (*(v13 + 16))(v20 + v19, a1, v12);
LABEL_25:
    v60 = *MEMORY[0x277D85DE8];
    return v20;
  }

  v78 = v9;
  v21 = [objc_opt_self() defaultManager];
  sub_23ED5E7E4();
  v22 = sub_23ED5E9B4();

  v66 = v21;
  v23 = [v21 fileExistsAtPath_];

  if (!v23)
  {
    v89 = 0;
    v90 = 0xE000000000000000;
    sub_23ED5EC34();

    v89 = 0xD000000000000014;
    v90 = 0x800000023ED616D0;
    v56 = sub_23ED5E7E4();
    MEMORY[0x23EF21DC0](v56);

    MEMORY[0x23EF21DC0](46, 0xE100000000000000);
    v57 = v89;
    v58 = v90;
    sub_23ED4B2E8();
    v20 = swift_allocError();
    *v59 = v57;
    *(v59 + 8) = v58;
    *(v59 + 16) = 0;
    swift_willThrow();

    goto LABEL_25;
  }

  v74 = v8;
  v85 = v12;
  v24 = sub_23ED5E7A4();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3855F0, &qword_23ED603F0);
  v25 = swift_allocObject();
  v83 = xmmword_23ED603D0;
  *(v25 + 16) = xmmword_23ED603D0;
  v26 = *MEMORY[0x277CBE7B8];
  *(v25 + 32) = *MEMORY[0x277CBE7B8];
  type metadata accessor for URLResourceKey(0);
  v82 = v26;
  v27 = sub_23ED5EA44();

  v89 = 0;
  v28 = [v66 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:v27 options:0 error:&v89];

  v29 = v89;
  if (v28)
  {
    v30 = v85;
    v31 = sub_23ED5EA54();
    v32 = v29;

    v81 = *(v31 + 16);
    if (!v81)
    {
      v67 = MEMORY[0x277D84F90];
LABEL_24:

      v20 = v67;
      goto LABEL_25;
    }

    v73 = v2;
    v33 = 0;
    v80 = v13 + 16;
    v71 = (v3 + 48);
    v34 = (v3 + 8);
    v35 = v13;
    v65 = v34;
    v70 = v78 + 1;
    v64 = (v13 + 32);
    v78 = (v13 + 8);
    v67 = MEMORY[0x277D84F90];
    v72 = v13;
    v79 = v31;
    while (1)
    {
      if (v33 >= *(v31 + 16))
      {
        __break(1u);
      }

      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = *(v35 + 72);
      (*(v35 + 16))(v87, v31 + v36 + v37 * v33, v30);
      inited = swift_initStackObject();
      *(inited + 16) = v83;
      v39 = v82;
      *(inited + 32) = v82;
      v40 = v39;
      sub_23ED4B098(inited);
      swift_setDeallocating();
      sub_23ED4B28C(inited + 32);
      v41 = v86;
      v42 = v88;
      sub_23ED5E784();
      if (v42)
      {

        v88 = 0;
        v30 = v85;
        v31 = v79;
      }

      else
      {
        v75 = v36;
        v76 = v37;
        v88 = 0;

        v43 = v74;
        sub_23ED5E734();
        v44 = v73;
        if ((*v71)(v43, 1, v73) == 1)
        {
          (*v70)(v41, v77);
          sub_23ED4B398(v43, &qword_27E3855E8, &qword_23ED603E8);
        }

        else
        {
          v45 = v69;
          sub_23ED5E864();
          v46 = sub_23ED5E874();
          v47 = *v65;
          (*v65)(v45, v44);
          (*v70)(v41, v77);
          v47(v43, v44);
          if (v46)
          {
            v48 = *v64;
            (*v64)(v68, v87, v85);
            v49 = v67;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v89 = v49;
            v35 = v72;
            v31 = v79;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_23ED4AEA0(0, v49[2] + 1, 1);
              v49 = v89;
            }

            v51 = v76;
            v52 = v75;
            v54 = v49[2];
            v53 = v49[3];
            if (v54 >= v53 >> 1)
            {
              sub_23ED4AEA0(v53 > 1, v54 + 1, 1);
              v49 = v89;
            }

            v49[2] = v54 + 1;
            v67 = v49;
            v55 = v49 + v52 + v54 * v51;
            v30 = v85;
            v48(v55, v68, v85);
            goto LABEL_20;
          }
        }

        v30 = v85;
        v35 = v72;
        v31 = v79;
      }

      (*v78)(v87, v30);
LABEL_20:
      if (v81 == ++v33)
      {
        goto LABEL_24;
      }
    }
  }

  v62 = v89;
  sub_23ED5E754();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

_WORD *loadImage(from:)()
{
  v0 = sub_23ED5E7A4();
  v1 = CGImageSourceCreateWithURL(v0, 0);

  if (v1)
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 2;
    v2 = loadImageIntoCVPixelBuffer(from:index:policy:)(v1, -1, v6);
  }

  else
  {
    sub_23ED5EC34();

    v3 = sub_23ED5E7E4();
    MEMORY[0x23EF21DC0](v3);

    MEMORY[0x23EF21DC0](46, 0xE100000000000000);
    v2 = 0x800000023ED61710;
    sub_23ED4B2E8();
    swift_allocError();
    *v4 = 0xD00000000000001ALL;
    *(v4 + 8) = 0x800000023ED61710;
    *(v4 + 16) = 1;
    swift_willThrow();
  }

  return v2;
}

void getFocalLengthPX(from:width:height:)(uint64_t a1, Swift::Int a2, Swift::Int a3)
{
  v6 = sub_23ED5E804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23ED5E7A4();
  v12 = CGImageSourceCreateWithURL(v11, 0);

  if (v12)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v12);
    v14 = CGImageSourceCopyPropertiesAtIndex(v12, PrimaryImageIndex, 0);
    if (v14)
    {
      v16 = v14;
      getFocalLengthPX(from:width:height:)(v15, v14, a2, a3);
    }

    else
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_23ED5EC34();

      v35 = 0xD00000000000001ELL;
      v36 = 0x800000023ED61760;
      v26 = sub_23ED5E7E4();
      MEMORY[0x23EF21DC0](v26);

      MEMORY[0x23EF21DC0](46, 0xE100000000000000);
      v27 = v35;
      v28 = v36;
      sub_23ED4B2E8();
      swift_allocError();
      *v29 = v27;
      *(v29 + 8) = v28;
      *(v29 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_27E3853A0 != -1)
    {
      swift_once();
    }

    v17 = sub_23ED5E964();
    __swift_project_value_buffer(v17, qword_27E3880F8);
    (*(v7 + 16))(v10, a1, v6);
    v18 = sub_23ED5E944();
    v19 = sub_23ED5EB04();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v20 = 136315138;
      v22 = sub_23ED5E7E4();
      v34[1] = a1;
      v24 = v23;
      (*(v7 + 8))(v10, v6);
      v25 = sub_23ED4A8F8(v22, v24, &v35);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_23ED44000, v18, v19, "Failed to create image source image from %s.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x23EF229A0](v21, -1, -1);
      MEMORY[0x23EF229A0](v20, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_23ED5EC34();

    v35 = 0xD000000000000029;
    v36 = 0x800000023ED61730;
    v30 = sub_23ED5E7E4();
    MEMORY[0x23EF21DC0](v30);

    MEMORY[0x23EF21DC0](46, 0xE100000000000000);
    v31 = v35;
    v32 = v36;
    sub_23ED4B2E8();
    swift_allocError();
    *v33 = v31;
    *(v33 + 8) = v32;
    *(v33 + 16) = 1;
    swift_willThrow();
  }
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> getFocalLengthPX(from:width:height:)(Swift::Float_optional *__return_ptr retstr, CFDictionaryRef_optional from, Swift::Int width, Swift::Int height)
{
  if (from.value)
  {
    if ((width * width) >> 64 == (width * width) >> 63)
    {
      if ((height * height) >> 64 == (height * height) >> 63)
      {
        if (!__OFADD__(width * width, height * height))
        {
          v4 = from.value;
          v5 = *MEMORY[0x277CD3038];
          *&v30 = sub_23ED5E9E4();
          *(&v30 + 1) = v6;
          v7 = [(__CFDictionary *)v4 __swift_objectForKeyedSubscript:sub_23ED5EE14()];
          swift_unknownObjectRelease();
          if (v7)
          {
            sub_23ED5EBB4();
            swift_unknownObjectRelease();
          }

          else
          {
            v30 = 0u;
            v33 = 0u;
          }

          v34 = v30;
          v35 = v33;
          if (*(&v33 + 1))
          {
            sub_23ED4B33C(0, &qword_27E385610, 0x277CBEAC0);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_25;
            }

            v9 = v36;
            v10 = *MEMORY[0x277CD3080];
            *&v31 = sub_23ED5E9E4();
            *(&v31 + 1) = v11;
            v12 = [v36 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();
            if (v12)
            {
              sub_23ED5EBB4();
              swift_unknownObjectRelease();
            }

            else
            {
              v31 = 0u;
              v33 = 0u;
            }

            v34 = v31;
            v35 = v33;
            if (*(&v33 + 1))
            {
              if (swift_dynamicCast())
              {
                if (*&v36 >= 1.0)
                {
                  goto LABEL_39;
                }

                if (qword_27E3853A0 != -1)
                {
                  swift_once();
                }

                v13 = sub_23ED5E964();
                __swift_project_value_buffer(v13, qword_27E3880F8);
                v14 = sub_23ED5E944();
                v15 = sub_23ED5EAF4();
                if (os_log_type_enabled(v14, v15))
                {
                  v16 = swift_slowAlloc();
                  *v16 = 0;
                  MEMORY[0x23EF229A0](v16, -1, -1);
                }

                v17 = *MEMORY[0x277CD3088];
                *&v32 = sub_23ED5E9E4();
                *(&v32 + 1) = v18;
                v19 = [v9 __swift_objectForKeyedSubscript_];
                swift_unknownObjectRelease();
                if (v19)
                {
                  sub_23ED5EBB4();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v32 = 0u;
                  v33 = 0u;
                }

                v34 = v32;
                v35 = v33;
                if (*(&v33 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    if (*&v36 < 10.0)
                    {
                      v24 = sub_23ED5E944();
                      v25 = sub_23ED5EAF4();
                      if (os_log_type_enabled(v24, v25))
                      {
                        v26 = swift_slowAlloc();
                        *v26 = 0;
                        MEMORY[0x23EF229A0](v26, -1, -1);
                      }

                      goto LABEL_40;
                    }

LABEL_39:

LABEL_40:
                    v8 = 0;
                    goto LABEL_30;
                  }
                }

                else
                {
                  sub_23ED4B398(&v34, &qword_27E385608, &qword_23ED60400);
                }

                v27 = sub_23ED5E944();
                v28 = sub_23ED5EB04();
                if (os_log_type_enabled(v27, v28))
                {
                  v29 = swift_slowAlloc();
                  *v29 = 0;
                  MEMORY[0x23EF229A0](v29, -1, -1);
                }

                goto LABEL_29;
              }

LABEL_25:
              if (qword_27E3853A0 == -1)
              {
LABEL_26:
                v20 = sub_23ED5E964();
                __swift_project_value_buffer(v20, qword_27E3880F8);
                v21 = sub_23ED5E944();
                v22 = sub_23ED5EAF4();
                if (os_log_type_enabled(v21, v22))
                {
                  v23 = swift_slowAlloc();
                  *v23 = 0;
                  _os_log_impl(&dword_23ED44000, v21, v22, "Couldn't extract focal length from image", v23, 2u);
                  MEMORY[0x23EF229A0](v23, -1, -1);
                }

LABEL_29:
                v8 = 1;
                goto LABEL_30;
              }

LABEL_48:
              swift_once();
              goto LABEL_26;
            }
          }

          sub_23ED4B398(&v34, &qword_27E385608, &qword_23ED60400);
          goto LABEL_25;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  v8 = 1;
LABEL_30:
  LOBYTE(v34) = v8;
}

uint64_t sub_23ED4988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_23ED5E804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23ED5E7B4();
  v11 = sub_23ED5E794();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  v15[0] = v11;
  v15[1] = v13;
  MEMORY[0x23EF21DC0](a3, a4);
  sub_23ED5E7C4();
}

uint64_t getDepthMapURL(input:output:saveNormalizedDepth:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_23ED5E804();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23ED5E7B4();
  v9 = sub_23ED5E794();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v15[0] = v9;
  v15[1] = v11;
  if (a3)
  {
    v12 = 0x6A2E68747065645FLL;
    v13 = 0xEA00000000006770;
  }

  else
  {
    v12 = 0x742E68747065645FLL;
    v13 = 0xEB00000000666669;
  }

  MEMORY[0x23EF21DC0](v12, v13);
  sub_23ED5E7C4();
}

void saveDepthMap(from:to:saveNormalizedDepth:)(void *a1, uint64_t a2, char a3)
{
  v101 = a2;
  v106 = *MEMORY[0x277D85DE8];
  v96 = sub_23ED5E804();
  v95 = *(v96 - 8);
  v5 = *(v95 + 64);
  v6 = MEMORY[0x28223BE20](v96);
  v94 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v93 = &v93 - v8;
  v9 = [a1 dataPointer];
  v10 = &off_278C70000;
  v11 = [a1 shape];
  sub_23ED4B33C(0, &qword_27E3855D0, 0x277CCABB0);
  v12 = sub_23ED5EA54();

  if ((v12 & 0xC000000000000001) != 0)
  {
    goto LABEL_56;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  for (i = *(v12 + 56); ; i = MEMORY[0x23EF21FF0](3, v12, v13, v14))
  {
    v16 = i;

    v12 = sub_23ED5EAA4();

    v17 = [a1 shape];
    v18 = sub_23ED5EA54();

    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x23EF21FF0](2, v18);
    }

    else
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_59;
      }

      v19 = *(v18 + 48);
    }

    v20 = v19;

    v21 = sub_23ED5EAA4();

    if ((a3 & 1) == 0)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      goto LABEL_33;
    }

    if (v21 < 0)
    {
      goto LABEL_61;
    }

    if (!v21)
    {
      break;
    }

    if (v12 < 0)
    {
      goto LABEL_62;
    }

    v22 = 0;
    v14.n128_u64[0] = 0;
    v13.n128_u16[0] = COERCE_UNSIGNED_INT(1.0);
    do
    {
      if (v12)
      {
        v23 = v22 * v12;
        if ((v22 * v12) >> 64 == (v22 * v12) >> 63)
        {
          v24 = 0;
          while (!__OFADD__(v23, v24))
          {
            v25 = v23 + v24;
            v26 = v9[v23 + v24++];
            if (*v13.n128_u16 >= v26)
            {
              *v13.n128_u16 = v9[v25];
            }

            if (v26 > *v14.n128_u16)
            {
              *v14.n128_u16 = v9[v25];
            }

            if (v12 == v24)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_53:
          __break(1u);
        }

        __break(1u);
        goto LABEL_55;
      }

LABEL_12:
      ++v22;
    }

    while (v22 != v21);
    v28 = 0;
    *v14.n128_u16 = *v14.n128_u16 - *v13.n128_u16;
    while (!v12)
    {
LABEL_25:
      if (++v28 == v21)
      {
        goto LABEL_32;
      }
    }

    v29 = v28 * v12;
    if ((v28 * v12) >> 64 == (v28 * v12) >> 63)
    {
      v30 = 0;
      while (1)
      {
        v31 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
          goto LABEL_53;
        }

        ++v30;
        v9[v31] = (v9[v31] - *v13.n128_u16) / *v14.n128_u16;
        if (v12 == v30)
        {
          goto LABEL_25;
        }
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

LABEL_32:
  DeviceRGB = CGColorSpaceCreateDeviceGray();
LABEL_33:
  v32 = DeviceRGB;
  v33 = objc_opt_self();
  v10 = v32;
  v34 = [v33 texture2DDescriptorWithPixelFormat:25 width:v12 height:v21 mipmapped:0];
  v35 = MTLCreateSystemDefaultDevice();
  if (!v35)
  {
    __break(1u);
    goto LABEL_65;
  }

  v97 = v34;
  v36 = [v35 newTextureWithDescriptor_];
  if (!v36)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  v37 = v36;
  swift_unknownObjectRelease();
  MTLRegionMake2D(v12, v21, &v102);
  v98 = v103;
  v99 = v102;
  v38 = v104;
  v39 = v105;
  v40 = [a1 dataPointer];
  if (v12 + 0x4000000000000000 < 0)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v102 = v99;
  v103 = v98;
  v104 = v38;
  v105 = v39;
  [v37 replaceRegion:&v102 mipmapLevel:0 withBytes:v40 bytesPerRow:2 * v12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385618, &qword_23ED60408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED603D0;
  v42 = *MEMORY[0x277CBFA40];
  *(inited + 32) = *MEMORY[0x277CBFA40];
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v43;
  v100 = v10;
  *(inited + 40) = v10;
  v44 = v42;
  swift_unknownObjectRetain();
  sub_23ED55D34(inited);
  swift_setDeallocating();
  sub_23ED4B398(inited + 32, &qword_27E385620, &qword_23ED60410);
  v45 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED4B3F8(&qword_27E3855B0, type metadata accessor for CIImageOption);
  v46 = sub_23ED5E994();

  v47 = [v45 initWithMTLTexture:v37 options:v46];
  swift_unknownObjectRelease();

  if (!v47)
  {
    goto LABEL_66;
  }

  v48 = objc_allocWithZone(MEMORY[0x277CBF740]);
  v49 = v47;
  v50 = [v48 init];
  v51 = [v49 imageByApplyingCGOrientation_];

  v52 = sub_23ED5E7A4();
  if (a3)
  {
    sub_23ED55D58(MEMORY[0x277D84F90]);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_23ED4B3F8(&qword_27E385590, type metadata accessor for CIImageRepresentationOption);
    v53 = sub_23ED5E994();

    *&v102 = 0;
    v10 = v100;
    v54 = [v50 writeJPEGRepresentationOfImage:v51 toURL:v52 colorSpace:v100 options:v53 error:&v102];

    v55 = v102;
    if (v54)
    {
      *&v99 = v50;
      *&v98 = v51;
      v56 = qword_27E3853A0;
      v57 = v102;
      if (v56 == -1)
      {
LABEL_40:
        v58 = sub_23ED5E964();
        __swift_project_value_buffer(v58, qword_27E3880F8);
        v59 = v95;
        v60 = v93;
        v61 = v96;
        (*(v95 + 16))(v93, v101, v96);
        v62 = sub_23ED5E944();
        v63 = sub_23ED5EAF4();
        if (!os_log_type_enabled(v62, v63))
        {

          swift_unknownObjectRelease();
          (*(v59 + 8))(v60, v61);
          goto LABEL_51;
        }

        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *&v102 = v65;
        *v64 = 136315138;
        v66 = sub_23ED5E7E4();
        v67 = v61;
        v69 = v68;
        (*(v59 + 8))(v60, v67);
        v70 = sub_23ED4A8F8(v66, v69, &v102);

        *(v64 + 4) = v70;
        _os_log_impl(&dword_23ED44000, v62, v63, "Saved normalized depth map to %s.", v64, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x23EF229A0](v65, -1, -1);
        MEMORY[0x23EF229A0](v64, -1, -1);
        swift_unknownObjectRelease();

        goto LABEL_47;
      }

LABEL_63:
      swift_once();
      goto LABEL_40;
    }

LABEL_48:
    v91 = v55;
    sub_23ED5E754();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_51;
  }

  v71 = *MEMORY[0x277CBF9D8];
  sub_23ED55D58(MEMORY[0x277D84F90]);
  type metadata accessor for CIImageRepresentationOption(0);
  sub_23ED4B3F8(&qword_27E385590, type metadata accessor for CIImageRepresentationOption);
  v72 = sub_23ED5E994();

  *&v102 = 0;
  v10 = v100;
  LODWORD(v71) = [v50 writeTIFFRepresentationOfImage:v51 toURL:v52 format:v71 colorSpace:v100 options:v72 error:&v102];

  v55 = v102;
  if (!v71)
  {
    goto LABEL_48;
  }

  *&v99 = v50;
  v73 = qword_27E3853A0;
  v74 = v102;
  if (v73 != -1)
  {
    swift_once();
  }

  v75 = sub_23ED5E964();
  __swift_project_value_buffer(v75, qword_27E3880F8);
  v76 = v95;
  v77 = v94;
  v78 = v96;
  (*(v95 + 16))(v94, v101, v96);
  v79 = sub_23ED5E944();
  v80 = sub_23ED5EAF4();
  if (!os_log_type_enabled(v79, v80))
  {

    swift_unknownObjectRelease();
    (*(v76 + 8))(v77, v78);
    goto LABEL_51;
  }

  v81 = swift_slowAlloc();
  v82 = v77;
  v83 = v78;
  v84 = swift_slowAlloc();
  *&v102 = v84;
  *v81 = 136315138;
  v85 = sub_23ED5E7E4();
  *&v98 = v51;
  v86 = v85;
  v87 = v76;
  v89 = v88;
  (*(v87 + 8))(v82, v83);
  v90 = sub_23ED4A8F8(v86, v89, &v102);

  *(v81 + 4) = v90;
  _os_log_impl(&dword_23ED44000, v79, v80, "Saved depth map to %s.", v81, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  MEMORY[0x23EF229A0](v84, -1, -1);
  MEMORY[0x23EF229A0](v81, -1, -1);
  swift_unknownObjectRelease();

LABEL_47:
LABEL_51:
  v92 = *MEMORY[0x277D85DE8];
}

CGImageRef_optional __swiftcall createCGImage(from:)(CVBufferRef from)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVImageBuffer_];
  [v3 extent];
  v4 = [v2 createCGImage:v3 fromRect:?];

  return v4;
}

BOOL writeCGImage(_:to:)(CGImage *a1)
{
  v2 = sub_23ED5E884();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23ED5E7A4();
  sub_23ED5E854();
  sub_23ED5E844();
  (*(v3 + 8))(v6, v2);
  v8 = sub_23ED5E9B4();

  v9 = CGImageDestinationCreateWithURL(v7, v8, 1uLL, 0);

  if (!v9)
  {
    return 0;
  }

  CGImageDestinationAddImage(v9, a1, 0);
  v10 = CGImageDestinationFinalize(v9);

  return v10;
}

uint64_t sub_23ED4A89C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_23ED4A8F8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_23ED4A8F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23ED4A9C4(v11, 0, 0, 1, a1, a2);
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
    sub_23ED4B5A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_23ED4A9C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23ED4AAD0(a5, a6);
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
    result = sub_23ED5EC74();
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

uint64_t sub_23ED4AAD0(uint64_t a1, unint64_t a2)
{
  v4 = sub_23ED4AB1C(a1, a2);
  sub_23ED4AC4C(&unk_285160F60);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23ED4AB1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_23ED4AD38(v5, 0);
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

  result = sub_23ED5EC74();
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
        v10 = sub_23ED5EA24();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23ED4AD38(v10, 0);
        result = sub_23ED5EC24();
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

uint64_t sub_23ED4AC4C(uint64_t result)
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

  result = sub_23ED4ADAC(result, v12, 1, v3);
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

void *sub_23ED4AD38(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385630, &qword_23ED60420);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23ED4ADAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385630, &qword_23ED60420);
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

size_t sub_23ED4AEA0(size_t a1, int64_t a2, char a3)
{
  result = sub_23ED4AEC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_23ED4AEC0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385600, &qword_23ED603F8);
  v10 = *(sub_23ED5E804() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23ED5E804() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23ED4B098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385638, &qword_23ED60428);
    v3 = sub_23ED5EC14();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_23ED5E9E4();
      sub_23ED5EE74();
      v29 = v7;
      sub_23ED5EA04();
      v9 = sub_23ED5EE94();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_23ED5E9E4();
        v20 = v19;
        if (v18 == sub_23ED5E9E4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_23ED5EE04();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23ED4B28C(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23ED4B2E8()
{
  result = qword_27E3855F8;
  if (!qword_27E3855F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3855F8);
  }

  return result;
}

uint64_t sub_23ED4B33C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t MTLRegionMake2D@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = result;
  a3[4] = a2;
  a3[5] = 1;
  return result;
}

uint64_t sub_23ED4B398(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23ED4B3F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED4B440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385628, &qword_23ED60418);
    v3 = sub_23ED5EC14();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_23ED5EE74();

      sub_23ED5EA04();
      result = sub_23ED5EE94();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_23ED5EE04();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_23ED4B5A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

AlchemistBase::Error_optional __swiftcall Error.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23ED5ED24();

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

unint64_t Error.rawValue.getter()
{
  if (*v0)
  {
    result = 0x69746172656E6567;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_23ED4B6B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x69746172656E6567;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = 0x800000023ED61510;
  }

  else
  {
    v5 = 0xEF726F7272456E6FLL;
  }

  if (*a2)
  {
    v6 = 0x69746172656E6567;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = 0xEF726F7272456E6FLL;
  }

  else
  {
    v7 = 0x800000023ED61510;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23ED5EE04();
  }

  return v9 & 1;
}

uint64_t sub_23ED4B770()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED4B804()
{
  *v0;
  sub_23ED5EA04();
}

uint64_t sub_23ED4B884()
{
  v1 = *v0;
  sub_23ED5EE74();
  sub_23ED5EA04();

  return sub_23ED5EE94();
}

uint64_t sub_23ED4B914@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23ED5ED24();

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

void sub_23ED4B974(unint64_t *a1@<X8>)
{
  v2 = 0x800000023ED61510;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x69746172656E6567;
    v2 = 0xEF726F7272456E6FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

double ALCBasePipeline.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xD000000000000082;
  *(v0 + 40) = 0x800000023ED61780;
  v1 = vdupq_n_s64(0x600uLL);
  *(v0 + 48) = v1;
  *(v0 + 64) = xmmword_23ED60430;
  *(v0 + 80) = xmmword_23ED60440;
  *(v0 + 96) = v1;
  *(v0 + 112) = xmmword_23ED603D0;
  *(v0 + 128) = 2;
  result = 7.7031235e-27;
  *(v0 + 136) = xmmword_23ED60450;
  *(v0 + 152) = 1008981770;
  return result;
}

double ALCBasePipeline.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xD000000000000082;
  *(v0 + 40) = 0x800000023ED61780;
  v1 = vdupq_n_s64(0x600uLL);
  *(v0 + 48) = v1;
  *(v0 + 64) = xmmword_23ED60430;
  *(v0 + 80) = xmmword_23ED60440;
  *(v0 + 96) = v1;
  *(v0 + 112) = xmmword_23ED603D0;
  *(v0 + 128) = 2;
  result = 7.7031235e-27;
  *(v0 + 136) = xmmword_23ED60450;
  *(v0 + 152) = 1008981770;
  return result;
}

void sub_23ED4BAE8(uint64_t a1)
{
  v3 = sub_23ED5E804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  if (sub_23ED5E774() == 0x636C65646F6D6C6DLL && v11 == 0xE800000000000000)
  {
  }

  else
  {
    v12 = sub_23ED5EE04();

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v13 = [objc_opt_self() defaultManager];
  sub_23ED5E7E4();
  v14 = v3;
  v15 = sub_23ED5E9B4();

  v16 = [v13 fileExistsAtPath_];

  v3 = v14;
  if (v16)
  {
    (*(v4 + 16))(v8, a1, v14);
    type metadata accessor for JointPredictor();
    swift_allocObject();
    v17 = sub_23ED5C1AC(v8);
    v18 = *(*(v17 + 16) + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
    sub_23ED5EB44();
    if (v1)
    {
    }

    else
    {

      v29 = *(v31 + 16);
      *(v31 + 16) = v17;
    }

    return;
  }

LABEL_8:
  if (qword_27E385398 != -1)
  {
    swift_once();
  }

  v19 = sub_23ED5E964();
  __swift_project_value_buffer(v19, qword_27E3880E0);
  (*(v4 + 16))(v10, a1, v3);
  v20 = sub_23ED5E944();
  v21 = sub_23ED5EB04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    v24 = sub_23ED5E7E4();
    v26 = v25;
    (*(v4 + 8))(v10, v3);
    v27 = sub_23ED4A8F8(v24, v26, &v32);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_23ED44000, v20, v21, "Incorrect Gaussian predictor path specified: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x23EF229A0](v23, -1, -1);
    MEMORY[0x23EF229A0](v22, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  sub_23ED4D3A0();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();
}

uint64_t sub_23ED4BEEC()
{
  if (*(v0 + 16))
  {
    *(v0 + 16) = 0;
  }

  else
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v2 = sub_23ED5E964();
    __swift_project_value_buffer(v2, qword_27E3880E0);
    v3 = sub_23ED5E944();
    v4 = sub_23ED5EB04();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23ED44000, v3, v4, "Joint predictor not created. Call createAndLoadJointPredictor(_:) first.", v5, 2u);
      MEMORY[0x23EF229A0](v5, -1, -1);
    }

    sub_23ED4D3A0();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

void sub_23ED4C010(uint64_t a1)
{
  v3 = sub_23ED5E804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  if (sub_23ED5E774() == 0x636C65646F6D6C6DLL && v11 == 0xE800000000000000)
  {
  }

  else
  {
    v12 = sub_23ED5EE04();

    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v13 = [objc_opt_self() defaultManager];
  sub_23ED5E7E4();
  v14 = v3;
  v15 = sub_23ED5E9B4();

  v16 = [v13 fileExistsAtPath_];

  v3 = v14;
  if (v16)
  {
    (*(v4 + 16))(v8, a1, v14);
    type metadata accessor for FoVPredictor();
    swift_allocObject();
    v17 = sub_23ED5D744(v8);
    v18 = *(*(v17 + 16) + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
    sub_23ED5EB44();
    if (v1)
    {
    }

    else
    {

      v29 = *(v31 + 24);
      *(v31 + 24) = v17;
    }

    return;
  }

LABEL_8:
  if (qword_27E385398 != -1)
  {
    swift_once();
  }

  v19 = sub_23ED5E964();
  __swift_project_value_buffer(v19, qword_27E3880E0);
  (*(v4 + 16))(v10, a1, v3);
  v20 = sub_23ED5E944();
  v21 = sub_23ED5EB04();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    v24 = sub_23ED5E7E4();
    v26 = v25;
    (*(v4 + 8))(v10, v3);
    v27 = sub_23ED4A8F8(v24, v26, &v32);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_23ED44000, v20, v21, "Incorrect FoV predictor path specified: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x23EF229A0](v23, -1, -1);
    MEMORY[0x23EF229A0](v22, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  sub_23ED4D3A0();
  swift_allocError();
  *v28 = 0;
  swift_willThrow();
}

uint64_t sub_23ED4C414()
{
  if (*(v0 + 24))
  {
    *(v0 + 24) = 0;
  }

  else
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v2 = sub_23ED5E964();
    __swift_project_value_buffer(v2, qword_27E3880E0);
    v3 = sub_23ED5E944();
    v4 = sub_23ED5EB04();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23ED44000, v3, v4, "FoV predictor not created. Call createAndLoadFoVPredictor(_:) first.", v5, 2u);
      MEMORY[0x23EF229A0](v5, -1, -1);
    }

    sub_23ED4D3A0();
    swift_allocError();
    *v6 = 1;
    return swift_willThrow();
  }
}

void sub_23ED4C538(_OWORD *a1, uint64_t a2, __CVBuffer *a3, uint64_t a4)
{
  v68 = a3;
  v8 = sub_23ED5E804();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 16);
  if (v13)
  {
    v14 = *(v4 + 24);
    if (!v14)
    {
      v33 = qword_27E385398;

      if (v33 != -1)
      {
        swift_once();
      }

      v34 = sub_23ED5E964();
      __swift_project_value_buffer(v34, qword_27E3880E0);
      v35 = sub_23ED5E944();
      v36 = sub_23ED5EB04();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_23ED44000, v35, v36, "FoV predictor not created. Call createAndLoadFoVPredictor(_:) first.", v37, 2u);
        MEMORY[0x23EF229A0](v37, -1, -1);
      }

      sub_23ED4D3A0();
      swift_allocError();
      *v38 = 1;
      swift_willThrow();
      goto LABEL_15;
    }

    v63 = a4;
    v60 = a1;
    v61 = a2;
    v15 = swift_allocObject();
    *(v15 + 16) = -1082130432;
    v62 = (v15 + 16);
    *(v15 + 48) = 0;
    *(v15 + 56) = 0;
    *(v15 + 40) = 0xBFF0000000000000;
    *(v15 + 88) = 0;
    *(v15 + 96) = 0;
    *(v15 + 80) = 0xBFF0000000000000;
    v16 = *(v14 + 16);
    v65 = v9[2];
    v65(v12, v16 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL, v8);

    v66 = v14;
    v17 = sub_23ED5E794();
    v19 = v18;
    v64 = v9[1];
    v64(v12, v8);
    *(v15 + 24) = v17;
    *(v15 + 32) = v19;
    v67 = v13;
    v65(v12, *(v13 + 16) + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL, v8);
    v20 = sub_23ED5E794();
    v22 = v21;
    v64(v12, v8);
    *(v15 + 64) = v20;
    *(v15 + 72) = v22;
    v23 = v68;
    Width = CVPixelBufferGetWidth(v68);
    Height = CVPixelBufferGetHeight(v23);
    v26 = v69;
    v27 = sub_23ED52CE0(v23, 0x600, 1536);
    if (v26)
    {

LABEL_15:

      return;
    }

    v68 = Height;
    v39 = v62;
    if ((v63 & 0x100000000) != 0)
    {
      v40 = -1.0;
    }

    else
    {
      v40 = *&v63;
    }

    if (v40 <= 0.0)
    {
      v42 = v27;
      sub_23ED4E9F0(v27);
      v40 = v43;
      v41 = v39;
      v27 = v42;
    }

    else
    {
      v41 = v62;
    }

    v65 = Width;
    v69 = v27;
    v44 = swift_beginAccess();
    *v41 = v40;
    if (qword_27E385390 != -1)
    {
      v44 = swift_once();
    }

    v45 = qword_27E3880C8;
    v46 = OBJC_IVAR____TtC13AlchemistBase10Signposter_queue;
    v47 = *(qword_27E3880C8 + OBJC_IVAR____TtC13AlchemistBase10Signposter_queue);
    MEMORY[0x28223BE20](v44);
    *(&v59 - 4) = "generateSplats";
    *(&v59 - 3) = 14;
    *(&v59 - 16) = 2;
    *(&v59 - 1) = v45;
    sub_23ED5EB44();
    sub_23ED5B23C(v69, v75, (v40 * 1536.0) / v65, (v40 * 1536.0) / v68);
    v48 = v75[1];
    v50 = v60;
    v49 = v61;
    *v60 = v75[0];
    v50[1] = v48;
    v50[2] = v75[2];
    v51 = *(v39 + 2);
    v53 = *(v39 + 4);
    v72 = *(v39 + 3);
    v52 = v72;
    v73 = v53;
    v74 = *(v39 + 10);
    v54 = v74;
    v55 = *(v39 + 1);
    v71[0] = *v39;
    v71[1] = v55;
    v71[2] = v51;
    *v49 = v71[0];
    *(v49 + 16) = v55;
    *(v49 + 80) = v54;
    *(v49 + 48) = v52;
    *(v49 + 64) = v53;
    *(v49 + 32) = v51;
    v56 = *(v45 + v46);
    MEMORY[0x28223BE20](v57);
    *(&v59 - 6) = "generateSplats";
    *(&v59 - 5) = 14;
    *(&v59 - 32) = 2;
    *(&v59 - 2) = 0;
    *(&v59 - 1) = 0;
    *(&v59 - 3) = v45;
    sub_23ED4D4CC(v71, &v70);
    sub_23ED5EB44();
    v58 = v69;
  }

  else
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v28 = sub_23ED5E964();
    __swift_project_value_buffer(v28, qword_27E3880E0);
    v29 = sub_23ED5E944();
    v30 = sub_23ED5EB04();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_23ED44000, v29, v30, "Joint predictor not created. Call createAndLoadJointPredictor(_:) first.", v31, 2u);
      MEMORY[0x23EF229A0](v31, -1, -1);
    }

    sub_23ED4D3A0();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();
  }
}

uint64_t sub_23ED4CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  sub_23ED5EEC4();
  v11 = v10;
  result = swift_beginAccess();
  a6[5] = v11;
  if ((a5 & 1) == 0)
  {
    result = swift_beginAccess();
    a6[6] = a3;
    a6[7] = a4;
  }

  return result;
}

uint64_t sub_23ED4CD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  sub_23ED5EEC4();
  v11 = v10;
  result = swift_beginAccess();
  a6[10] = v11;
  if ((a5 & 1) == 0)
  {
    result = swift_beginAccess();
    a6[11] = a3;
    a6[12] = a4;
  }

  return result;
}

uint64_t sub_23ED4CDDC()
{
  result = sub_23ED4BEEC();
  if (!v0)
  {
    return sub_23ED4C414();
  }

  return result;
}

uint64_t sub_23ED4CE88(void (*a1)(char *))
{
  v3 = sub_23ED5E804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 24);
  if (v8)
  {
    (*(v4 + 16))(v7, *(v8 + 16) + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL, v3);

    a1(v7);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v10 = sub_23ED5E964();
    __swift_project_value_buffer(v10, qword_27E3880E0);
    v11 = sub_23ED5E944();
    v12 = sub_23ED5EB04();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23ED44000, v11, v12, "FoV predictor not created. Call createAndLoadFoVPredictor(_:) first.", v13, 2u);
      MEMORY[0x23EF229A0](v13, -1, -1);
    }

    sub_23ED4D3A0();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_23ED4D0C4(void (*a1)(char *))
{
  v3 = sub_23ED5E804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  if (v8)
  {
    (*(v4 + 16))(v7, *(v8 + 16) + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL, v3);

    a1(v7);
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v10 = sub_23ED5E964();
    __swift_project_value_buffer(v10, qword_27E3880E0);
    v11 = sub_23ED5E944();
    v12 = sub_23ED5EB04();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_23ED44000, v11, v12, "FoV predictor not created. Call createAndLoadJointPredictor(_:) first.", v13, 2u);
      MEMORY[0x23EF229A0](v13, -1, -1);
    }

    sub_23ED4D3A0();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

uint64_t ALCBasePipeline.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 112);
  v7[4] = *(v0 + 96);
  v7[5] = v3;
  v8[0] = *(v0 + 128);
  *(v8 + 12) = *(v0 + 140);
  v4 = *(v0 + 48);
  v7[0] = *(v0 + 32);
  v7[1] = v4;
  v5 = *(v0 + 80);
  v7[2] = *(v0 + 64);
  v7[3] = v5;
  sub_23ED4DC88(v7);
  return v0;
}

uint64_t ALCBasePipeline.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 112);
  v7[4] = *(v0 + 96);
  v7[5] = v3;
  v8[0] = *(v0 + 128);
  *(v8 + 12) = *(v0 + 140);
  v4 = *(v0 + 48);
  v7[0] = *(v0 + 32);
  v7[1] = v4;
  v5 = *(v0 + 80);
  v7[2] = *(v0 + 64);
  v7[3] = v5;
  sub_23ED4DC88(v7);
  return swift_deallocClassInstance();
}

unint64_t sub_23ED4D3A0()
{
  result = qword_27E385640;
  if (!qword_27E385640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385640);
  }

  return result;
}

uint64_t sub_23ED4D410()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void sub_23ED4D528()
{
  v0 = sub_23ED5E7D4();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385650, &qword_23ED605B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED603D0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000023ED61870;
  *(inited + 48) = v0;
  *(inited + 56) = v2;

  sub_23ED55D7C(inited);
  swift_setDeallocating();
  sub_23ED4E16C(inited + 32);
  v4 = sub_23ED5E9B4();
  v5 = sub_23ED5E994();

  v6 = sendAneSessionSignal();

  if (!v6)
  {
LABEL_13:
    if (qword_27E3853B0 != -1)
    {
      swift_once();
    }

    v21 = sub_23ED5E964();
    __swift_project_value_buffer(v21, qword_27E388128);

    v15 = sub_23ED5E944();
    v22 = sub_23ED5EB04();

    if (os_log_type_enabled(v15, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26[0] = v24;
      *v23 = 136446210;
      v25 = sub_23ED4A8F8(v0, v2, v26);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_23ED44000, v15, v22, "Unable to fetch ANE session starting data for asset at %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x23EF229A0](v24, -1, -1);
      v20 = v23;
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  v7 = sub_23ED5E9A4();

  sub_23ED5EC04();
  if (!*(v7 + 16))
  {
    goto LABEL_12;
  }

  v8 = sub_23ED5543C(v26);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_23ED4B5A8(*(v7 + 56) + 32 * v8, v27);
  sub_23ED4E1D4(v26);
  sub_23ED47FF8();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v10 = [0xD000000000000016 integerValue];

  sub_23ED5EC04();
  if (!*(v7 + 16) || (v11 = sub_23ED5543C(v26), (v12 & 1) == 0))
  {
LABEL_12:

    sub_23ED4E1D4(v26);
    goto LABEL_13;
  }

  sub_23ED4B5A8(*(v7 + 56) + 32 * v11, v27);
  sub_23ED4E1D4(v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v13 = [0xD000000000000013 integerValue];

  if (qword_27E3853B0 != -1)
  {
    swift_once();
  }

  v14 = sub_23ED5E964();
  __swift_project_value_buffer(v14, qword_27E388128);

  v15 = sub_23ED5E944();
  v16 = sub_23ED5EB14();

  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_18;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v26[0] = v18;
  *v17 = 136446722;
  v19 = sub_23ED4A8F8(v0, v2, v26);

  *(v17 + 4) = v19;
  *(v17 + 12) = 2048;
  *(v17 + 14) = v10;
  *(v17 + 22) = 2048;
  *(v17 + 24) = v13;
  _os_log_impl(&dword_23ED44000, v15, v16, "ANE session started for asset at %{public}s with pages: %ld/%ld", v17, 0x20u);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  MEMORY[0x23EF229A0](v18, -1, -1);
  v20 = v17;
LABEL_17:
  MEMORY[0x23EF229A0](v20, -1, -1);
LABEL_19:
}

void sub_23ED4DA34()
{
  v0 = sub_23ED5E7D4();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385650, &qword_23ED605B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED603D0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000023ED61870;
  *(inited + 48) = v0;
  *(inited + 56) = v2;

  sub_23ED55D7C(inited);
  swift_setDeallocating();
  sub_23ED4E16C(inited + 32);
  v4 = sub_23ED5E9B4();
  v5 = sub_23ED5E994();

  sendAneSignal();

  if (qword_27E3853B0 != -1)
  {
    swift_once();
  }

  v6 = sub_23ED5E964();
  __swift_project_value_buffer(v6, qword_27E388128);

  v7 = sub_23ED5E944();
  v8 = sub_23ED5EB14();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    v11 = sub_23ED4A8F8(v0, v2, &v12);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_23ED44000, v7, v8, "ANE session stopped for asset at %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x23EF229A0](v10, -1, -1);
    MEMORY[0x23EF229A0](v9, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_23ED4DCE0()
{
  result = qword_27E385648;
  if (!qword_27E385648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385648);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Error(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23ED4E16C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385658, &qword_23ED605C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AlchemistBase::AdjustmentParams __swiftcall AdjustmentParams.init()()
{
  v1 = 1.8;
  *v0 = 0x3D4CCCCD3FE66666;
  result.adjustMinDepthMeter = v1;
  return result;
}

unint64_t sub_23ED4E2E0()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_23ED4E31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000013 && 0x800000023ED61910 == a2;
  if (v5 || (sub_23ED5EE04() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023ED61930 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23ED5EE04();

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

uint64_t sub_23ED4E40C(uint64_t a1)
{
  v2 = sub_23ED4E60C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED4E448(uint64_t a1)
{
  v2 = sub_23ED4E60C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdjustmentParams.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385660, &qword_23ED605D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED4E60C();
  sub_23ED5EEB4();
  v13[15] = 0;
  sub_23ED5EDD4();
  if (!v2)
  {
    v13[14] = 1;
    sub_23ED5EDD4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23ED4E60C()
{
  result = qword_27E385668;
  if (!qword_27E385668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385668);
  }

  return result;
}

uint64_t AdjustmentParams.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385670, &qword_23ED605D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED4E60C();
  sub_23ED5EEA4();
  if (!v2)
  {
    v18 = 0;
    sub_23ED5ED74();
    v12 = v11;
    v17 = 1;
    sub_23ED5ED74();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t getEnumTagSinglePayload for AdjustmentParams(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AdjustmentParams(uint64_t result, int a2, int a3)
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

unint64_t sub_23ED4E8EC()
{
  result = qword_27E385678;
  if (!qword_27E385678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385678);
  }

  return result;
}

unint64_t sub_23ED4E944()
{
  result = qword_27E385680;
  if (!qword_27E385680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385680);
  }

  return result;
}

unint64_t sub_23ED4E99C()
{
  result = qword_27E385688;
  if (!qword_27E385688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385688);
  }

  return result;
}

void sub_23ED4E9F0(uint64_t a1)
{
  v2 = a1;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_27E3880C8;
  v4 = OBJC_IVAR____TtC13AlchemistBase10Signposter_queue;
  v5 = *(qword_27E3880C8 + OBJC_IVAR____TtC13AlchemistBase10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (!v1)
  {
    v21 = sub_23ED5DAB8(v2);
    v6 = *(v3 + v4);
    MEMORY[0x28223BE20](v21);
    v7 = sub_23ED5EB44();
    v8 = *(v3 + v4);
    MEMORY[0x28223BE20](v7);
    sub_23ED5EB44();
    CVPixelBufferGetWidth(v2);
    v9 = *(v21 + 2);
    v10 = sub_23ED5E9B4();
    v11 = [v9 featureValueForName_];

    if (v11)
    {
      v12 = [v11 multiArrayValue];

      if (v12)
      {
        _H8 = *[v12 dataPointer];

        v14 = *(v3 + v4);
        MEMORY[0x28223BE20](v15);
        sub_23ED5EB44();

        __asm { FCVT            D0, H8 }

        __tanpi(_D0 / 360.0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void *sub_23ED4ED64(int32x2_t a1, int32x2_t a2)
{
  v4 = v3;
  v5 = v2;
  v47 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(v2);
  if (PixelFormatType != 1111970369 && PixelFormatType != 32)
  {
    sub_23ED4F2AC();
    swift_allocError();
    *v11 = 0xD000000000000053;
    v11[1] = 0x800000023ED61980;
    goto LABEL_6;
  }

  v39 = PixelFormatType;
  v7 = CVPixelBufferLockBaseAddress(v2, 1uLL);
  if (!v7)
  {
    Height = CVPixelBufferGetHeight(v2);
    Width = CVPixelBufferGetWidth(v2);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385698, &unk_23ED61520);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_23ED607A0;
    *(v15 + 32) = sub_23ED5EAB4();
    *(v15 + 40) = sub_23ED5EAB4();
    *(v15 + 48) = sub_23ED5EAB4();
    *(v15 + 56) = sub_23ED5EAB4();
    v16 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v17 = sub_23ED4F300(v15, 65568);
    if (v3)
    {
LABEL_18:
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
      goto LABEL_19;
    }

    v4 = v17;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_23ED607A0;
    *(v18 + 32) = sub_23ED5EAB4();
    *(v18 + 40) = sub_23ED5EAB4();
    *(v18 + 48) = sub_23ED5EAB4();
    *(v18 + 56) = sub_23ED5EAB4();
    v19 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v20 = sub_23ED4F300(v18, 65568);
    BaseAddress = CVPixelBufferGetBaseAddress(v5);
    if ((Width | Height) < 0)
    {
      __break(1u);
    }

    else
    {
      src.data = BaseAddress;
      src.height = Height;
      src.width = Width;
      src.rowBytes = BytesPerRow;
      if ((Width * Height) >> 64 == (Width * Height) >> 63)
      {
        if ((Width - 0x2000000000000000) >> 62 == 3)
        {
          v38 = v20;
          v22 = Height * 4 * Width;
          if ((Height * (4 * Width)) >> 64 == v22 >> 63)
          {
            v37 = [v4 dataPointer];
            v23 = [v4 dataPointer];
            v24 = [v4 dataPointer];
            if (v22 + 0x4000000000000000 >= 0)
            {
              red.data = v37;
              red.height = Height;
              red.width = Width;
              red.rowBytes = 4 * Width;
              green.data = &v23[v22];
              green.height = Height;
              green.width = Width;
              green.rowBytes = 4 * Width;
              blue.data = &v24[2 * v22];
              blue.height = Height;
              blue.width = Width;
              blue.rowBytes = 4 * Width;
              alpha.data = [v38 dataPointer];
              alpha.height = Height;
              alpha.width = Width;
              alpha.rowBytes = 4 * Width;
              v25 = sub_23ED5EA74();
              v25[1].i64[0] = 4;
              v25[2] = vdupq_lane_s32(a2, 0);
              i32 = v25[2].i32;
              v27 = sub_23ED5EA74();
              *(v27 + 16) = 4;
              *(v27 + 32) = vdupq_lane_s32(a1, 0);
              if (v39 == 1111970369)
              {
                p_blue = &blue;
                p_green = &green;
                p_red = &red;
                p_alpha = &alpha;
              }

              else
              {
                p_blue = &alpha;
                p_green = &red;
                p_red = &green;
                p_alpha = &blue;
              }

              v32 = vImageConvert_ARGB8888toPlanarF(&src, p_blue, p_green, p_red, p_alpha, i32, (v27 + 32), 0);

              if (!v32)
              {

                CVPixelBufferUnlockBaseAddress(v5, 1uLL);
                goto LABEL_19;
              }

              sub_23ED5EC34();
              MEMORY[0x23EF21DC0](0xD00000000000003ELL, 0x800000023ED61A10);
              v33 = sub_23ED5EDF4();
              MEMORY[0x23EF21DC0](v33);

              sub_23ED4F2AC();
              swift_allocError();
              *v34 = 0;
              v34[1] = 0xE000000000000000;
              swift_willThrow();

              goto LABEL_18;
            }

LABEL_25:
            __break(1u);
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v8 = v7;
  sub_23ED5EC34();

  src.data = 0xD000000000000026;
  src.height = 0x800000023ED619E0;
  LODWORD(red.data) = v8;
  v9 = sub_23ED5EDF4();
  MEMORY[0x23EF21DC0](v9);

  sub_23ED4F2AC();
  swift_allocError();
  *v10 = 0xD000000000000026;
  v10[1] = 0x800000023ED619E0;
LABEL_6:
  swift_willThrow();
LABEL_19:
  v35 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_23ED4F2AC()
{
  result = qword_27E385690;
  if (!qword_27E385690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385690);
  }

  return result;
}

id sub_23ED4F300(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_23ED47FF8();
  v4 = sub_23ED5EA44();

  v10[0] = 0;
  v5 = [v2 initWithShape:v4 dataType:a2 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_23ED5E754();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_23ED4F3EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_23ED4F434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23ED4F488(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v49 = a5;
  v44 = a3;
  v45 = a4;
  v9 = sub_23ED5E764();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23ED5E804();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23ED5EB34();
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  MEMORY[0x28223BE20](v16);
  v46 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23ED5EB24();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v21 = sub_23ED5E984();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel;
  *(v6 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel) = 0;
  v24 = v6 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelName;
  *v24 = "ManagedMLModel";
  *(v24 + 8) = 14;
  *(v24 + 16) = 2;
  v54 = v13;
  v55 = v12;
  (*(v13 + 16))(v6 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL, a1, v12);
  v56 = a2;
  [a2 copy];
  sub_23ED5EBB4();
  swift_unknownObjectRelease();
  sub_23ED4B33C(0, &qword_27E3856B8, 0x277CBFF38);
  swift_dynamicCast();
  v43 = OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_configuration;
  *(v6 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_configuration) = v58;
  v25 = *(v6 + v23);
  *(v6 + v23) = 0;

  sub_23ED4B33C(0, &qword_27E3856C0, 0x277D85C78);
  v59 = 0x2E646567616E616DLL;
  v60 = 0xE800000000000000;
  v57 = a1;
  v26 = sub_23ED5E794();
  MEMORY[0x23EF21DC0](v26);

  sub_23ED5E974();
  v59 = MEMORY[0x277D84F90];
  sub_23ED503A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3856D0, &qword_23ED60890);
  sub_23ED503FC();
  sub_23ED5EBC4();
  (*(v47 + 104))(v46, *MEMORY[0x277D85260], v48);
  v27 = sub_23ED5EB54();
  v28 = v49;
  *(v6 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue) = v27;
  if ((v28 & 0x100) == 0)
  {
    v29 = v28;
    v30 = v45;
    *v24 = v44;
    *(v24 + 8) = v30;
    *(v24 + 16) = v29;
  }

  v59 = 0xD00000000000001BLL;
  v60 = 0x800000023ED61AB0;
  v32 = v50;
  v31 = v51;
  v33 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CC91D8], v52);
  sub_23ED504A8();
  v34 = v53;
  v35 = v57;
  sub_23ED5E7F4();
  (*(v31 + 8))(v32, v33);
  v36 = [objc_opt_self() defaultManager];
  sub_23ED5E7E4();
  v37 = sub_23ED5E9B4();

  v38 = [v36 fileExistsAtPath_];

  if (v38)
  {
    [*(v6 + v43) setUsePrecompiledE5Bundle_];
  }

  v39 = v55;
  v40 = *(v54 + 8);
  v40(v35, v55);
  v40(v34, v39);
  return v6;
}

uint64_t sub_23ED4FA1C()
{
  v1 = OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue;
  v2 = *(v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_23ED50500;
  *(v3 + 24) = v0;
  v9[4] = sub_23ED50508;
  v9[5] = v3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_23ED50118;
  v9[3] = &block_descriptor_10;
  v4 = _Block_copy(v9);
  v5 = v2;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL;
    v8 = sub_23ED5E804();
    (*(*(v8 - 8) + 8))(v0 + v7, v8);

    return v0;
  }

  return result;
}

uint64_t sub_23ED4FBD0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_23ED501E0;
  *(v2 + 24) = v0;
  v6[4] = sub_23ED50204;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_23ED50118;
  v6[3] = &block_descriptor;
  v3 = _Block_copy(v6);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23ED4FD18()
{
  sub_23ED4FA1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManagedMLModel()
{
  result = qword_27E3856A0;
  if (!qword_27E3856A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23ED4FDC4()
{
  result = sub_23ED5E804();
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

void sub_23ED4FE78(uint64_t a1)
{
  v3 = sub_23ED5E804();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel;
  if (!*(a1 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel))
  {
    sub_23ED4B33C(0, &qword_27E3856B0, 0x277CBFF20);
    (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL, v3);
    v9 = *(a1 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_configuration);
    v10 = sub_23ED50244(v7, v9);

    if (!v1)
    {
      v11 = *(a1 + v8);
      *(a1 + v8) = v10;
    }
  }
}

void sub_23ED4FFC8()
{
  v2 = sub_23ED5E804();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel;
  if (!*(v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel))
  {
    sub_23ED4B33C(0, &qword_27E3856B0, 0x277CBFF20);
    (*(v3 + 16))(v6, v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_modelURL, v2);
    v8 = v0;
    v9 = *(v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_configuration);
    v10 = sub_23ED50244(v6, v9);

    if (!v1)
    {
      v11 = *(v8 + v7);
      *(v8 + v7) = v10;
    }
  }
}

void sub_23ED50140()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_queue);
  sub_23ED5EB44();
}

void sub_23ED501E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel);
  *(v0 + OBJC_IVAR____TtC13AlchemistBase14ManagedMLModel_loadedModel) = 0;
}

uint64_t sub_23ED50204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_23ED50244(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23ED5E7A4();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_23ED5E804();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_23ED5E754();

    swift_willThrow();
    v11 = sub_23ED5E804();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_23ED503A4()
{
  result = qword_27E3856C8;
  if (!qword_27E3856C8)
  {
    sub_23ED5EB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3856C8);
  }

  return result;
}

unint64_t sub_23ED503FC()
{
  result = qword_27E3856D8;
  if (!qword_27E3856D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3856D0, &qword_23ED60890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3856D8);
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

unint64_t sub_23ED504A8()
{
  result = qword_27E3856E0;
  if (!qword_27E3856E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3856E0);
  }

  return result;
}

uint64_t IOPixelBuffers.init(positions:rotations:scales:colors:alphas:depths:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t AuxiliaryOutput.fovPredictorModelName.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AuxiliaryOutput.fovPredictorModelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t AuxiliaryOutput.jointPredictorModelName.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t AuxiliaryOutput.jointPredictorModelName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_23ED50978(unsigned __int8 a1)
{
  v1 = 0xD000000000000013;
  if (a1 <= 3u)
  {
    v6 = 0xD000000000000019;
    if (a1 != 2)
    {
      v6 = 0xD000000000000020;
    }

    if (a1)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    v3 = 0xD000000000000022;
    if (a1 != 7)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (a1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000017;
    if (a1 == 4)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23ED50A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23ED5179C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23ED50AB8(uint64_t a1)
{
  v2 = sub_23ED50DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23ED50AF4(uint64_t a1)
{
  v2 = sub_23ED50DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuxiliaryOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3856E8, &qword_23ED60898);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v23 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v23[3] = *(v1 + 2);
  v23[4] = v9;
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  v23[1] = *(v1 + 5);
  v23[2] = v11;
  v12 = *(v1 + 7);
  v23[0] = *(v1 + 6);
  v13 = *(v1 + 8);
  v15 = *(v1 + 9);
  v14 = *(v1 + 10);
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_23ED50DE0();
  sub_23ED5EEB4();
  v33 = 0;
  v21 = v24;
  sub_23ED5EDD4();
  if (!v21)
  {
    v24 = v12;
    v32 = 1;
    sub_23ED5EDB4();
    v31 = 2;
    sub_23ED5EDC4();
    v30 = 3;
    sub_23ED5EDE4();
    v29 = 4;
    sub_23ED5EDE4();
    v28 = 5;
    sub_23ED5EDB4();
    v27 = 6;
    sub_23ED5EDC4();
    v26 = 7;
    sub_23ED5EDE4();
    v25 = 8;
    sub_23ED5EDE4();
  }

  return (*(v4 + 8))(v7, v20);
}

unint64_t sub_23ED50DE0()
{
  result = qword_27E3856F0;
  if (!qword_27E3856F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3856F0);
  }

  return result;
}

uint64_t AuxiliaryOutput.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3856F8, &qword_23ED608A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23ED50DE0();
  sub_23ED5EEA4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v44 = -1.0;
    v45 = 0;
    v46 = 0xE000000000000000;
    v47 = -1.0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0xE000000000000000;
    v52 = -1.0;
    v53 = 0;
    v54 = 0;
  }

  else
  {
    LOBYTE(v44) = 0;
    sub_23ED5ED74();
    v13 = v12;
    LOBYTE(v44) = 1;
    v14 = sub_23ED5ED54();
    v35 = v15;
    v36 = v14;
    LOBYTE(v44) = 2;
    sub_23ED5ED64();
    v17 = v16;
    LOBYTE(v44) = 3;
    v34 = sub_23ED5ED84();
    LOBYTE(v44) = 4;
    v18 = sub_23ED5ED84();
    v33 = a2;
    LOBYTE(v44) = 5;
    v19 = sub_23ED5ED54();
    v21 = v20;
    LOBYTE(v44) = 6;
    sub_23ED5ED64();
    v23 = v22;
    LOBYTE(v44) = 7;
    v24 = sub_23ED5ED84();
    v43 = 8;
    v32 = sub_23ED5ED84();
    (*(v6 + 8))(v9, v5);
    *&v37 = v13;
    *(&v37 + 1) = v36;
    v25 = v35;
    *&v38 = v35;
    *(&v38 + 1) = v17;
    v26 = v34;
    *&v39 = v34;
    *(&v39 + 1) = v18;
    *&v40 = v19;
    *(&v40 + 1) = v21;
    *&v41 = v23;
    v27 = v32;
    *(&v41 + 1) = v24;
    v42 = v32;
    v28 = v33;
    *(v33 + 80) = v32;
    v29 = v40;
    v28[2] = v39;
    v28[3] = v29;
    v28[4] = v41;
    v30 = v38;
    *v28 = v37;
    v28[1] = v30;
    sub_23ED4D4CC(&v37, &v44);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v44 = v13;
    v45 = v36;
    v46 = v25;
    v47 = v17;
    v48 = v26;
    v49 = v18;
    v50 = v19;
    v51 = v21;
    v52 = v23;
    v53 = v24;
    v54 = v27;
  }

  return sub_23ED51370(&v44);
}

uint64_t sub_23ED513D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_23ED51418(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_23ED51498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_23ED514E0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AuxiliaryOutput.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AuxiliaryOutput.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23ED51698()
{
  result = qword_27E385700;
  if (!qword_27E385700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385700);
  }

  return result;
}

unint64_t sub_23ED516F0()
{
  result = qword_27E385708;
  if (!qword_27E385708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385708);
  }

  return result;
}

unint64_t sub_23ED51748()
{
  result = qword_27E385710;
  if (!qword_27E385710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385710);
  }

  return result;
}

uint64_t sub_23ED5179C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000023ED61AD0 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023ED61AF0 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023ED61B10 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x800000023ED61B30 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023ED61B60 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023ED61B80 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000023ED61BA0 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000022 && 0x800000023ED61BC0 == a2 || (sub_23ED5EE04() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000023ED61BF0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_23ED5EE04();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_23ED51A70(task_info_t task_info_out, uint64_t *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  task_info_outCnt = 93;
  result = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (result)
  {
    sub_23ED5EC34();

    v4 = sub_23ED5EDF4();
    MEMORY[0x23EF21DC0](v4);

    sub_23ED51C94();
    v5 = swift_allocError();
    *v6 = 0xD000000000000024;
    v6[1] = 0x800000023ED61C40;
    result = swift_willThrow();
    *a2 = v5;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23ED51BD8()
{
  v28 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  *task_info_out = 0u;
  v5 = 0u;
  result = sub_23ED51A70(task_info_out, &v3);
  if (!v0)
  {
    if ((*(&v14 + 1) & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    result = v13 >> 20;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_23ED51C94()
{
  result = qword_27E385718;
  if (!qword_27E385718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385718);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23ED51D18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23ED51D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

void sub_23ED51DBC(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if ([a1 dataType] != 65552)
  {
    if ([v3 dataType] != 65568)
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v15 = sub_23ED5E964();
      __swift_project_value_buffer(v15, qword_27E3880E0);
      v11 = sub_23ED5E944();
      v12 = sub_23ED5EB04();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_15;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Data type is not float32. Cannot convert it to float16, abort.";
      goto LABEL_14;
    }

    v6 = [v3 shape];
    sub_23ED47FF8();
    v7 = sub_23ED5EA54();

    v8 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v9 = sub_23ED4F300(v7, 65552);
    if (v2)
    {

LABEL_6:
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v10 = sub_23ED5E964();
      __swift_project_value_buffer(v10, qword_27E3880E0);
      v11 = sub_23ED5E944();
      v12 = sub_23ED5EB04();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_15;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Unable to allocate fp16 array, abort.";
LABEL_14:
      _os_log_impl(&dword_23ED44000, v11, v12, v14, v13, 2u);
      MEMORY[0x23EF229A0](v13, -1, -1);
LABEL_15:

LABEL_16:
      *a2 = 0;
      goto LABEL_17;
    }

    v17 = v9;
    if (!v9)
    {
      goto LABEL_6;
    }

    v18 = [v3 dataPointer];
    v19 = [v3 count];
    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v20 = v19;
      v21 = [v3 count];
      if ((v21 - 0x2000000000000000) >> 62 == 3)
      {
        src.data = v18;
        src.height = 1;
        src.width = v20;
        src.rowBytes = 4 * v21;
        v22 = [v17 dataPointer];
        v23 = [v3 count];
        if ((v23 & 0x8000000000000000) == 0)
        {
          v24 = v23;
          v25 = [v3 count];
          if (v25 + 0x4000000000000000 >= 0)
          {
            dest.data = v22;
            dest.height = 1;
            dest.width = v24;
            dest.rowBytes = 2 * v25;
            v26 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
            if (!v26)
            {
              *a2 = v17;
              goto LABEL_17;
            }

            v3 = v26;
            if (qword_27E385398 == -1)
            {
              goto LABEL_25;
            }

            goto LABEL_33;
          }

LABEL_32:
          __break(1u);
LABEL_33:
          swift_once();
LABEL_25:
          v27 = sub_23ED5E964();
          __swift_project_value_buffer(v27, qword_27E3880E0);
          v28 = sub_23ED5E944();
          v29 = sub_23ED5EB04();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 134217984;
            *(v30 + 4) = v3;
            _os_log_impl(&dword_23ED44000, v28, v29, "Error converting MLMultiArray from Float32 to Float16: %ld", v30, 0xCu);
            MEMORY[0x23EF229A0](v30, -1, -1);
          }

          goto LABEL_16;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  *a2 = v3;
  v5 = v3;
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_23ED521DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

CVBufferRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> createIOSurfaceBackedPixelBuffer(width:height:format:)(Swift::Int width, Swift::Int height, Swift::UInt32 format)
{
  pixelBufferOut[23] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385720, &qword_23ED60CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED60CA0;
  v5 = *MEMORY[0x277CC4DF0];
  *(inited + 32) = *MEMORY[0x277CC4DF0];
  v6 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v7 = *MEMORY[0x277CC4DE8];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385728, &qword_23ED60CF8);
  v8 = swift_initStackObject();
  v9 = *MEMORY[0x277CD2A50];
  *(v8 + 32) = *MEMORY[0x277CD2A50];
  *(v8 + 16) = xmmword_23ED603D0;
  pixelBufferOut[1] = 0xE400000000000000;
  v10 = v5;
  v11 = v7;
  v12 = v9;
  v13 = sub_23ED5EDF4();
  MEMORY[0x23EF21DC0](v13);

  MEMORY[0x23EF21DC0](120, 0xE100000000000000);
  v14 = sub_23ED5EDF4();
  MEMORY[0x23EF21DC0](v14);

  MEMORY[0x23EF21DC0](45, 0xE100000000000000);
  v15 = sub_23ED5EDF4();
  MEMORY[0x23EF21DC0](v15);

  *(v8 + 40) = 759385153;
  *(v8 + 48) = 0xE400000000000000;
  v16 = sub_23ED55888(v8);
  swift_setDeallocating();
  sub_23ED4B398(v8 + 32, &qword_27E385730, &qword_23ED60D00);
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385738, &qword_23ED60D08);
  *(inited + 80) = v16;
  sub_23ED55988(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385740, &qword_23ED60D10);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_23ED55CEC(&qword_27E385528, type metadata accessor for CFString);
  v17 = sub_23ED5E994();

  pixelBufferOut[0] = 0;
  v18 = v17;
  v19 = CVPixelBufferCreate(0, width, height, format, v18, pixelBufferOut);
  v20 = pixelBufferOut[0];
  if (v19 || !pixelBufferOut[0])
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v21 = sub_23ED5E964();
    __swift_project_value_buffer(v21, qword_27E3880E0);
    v22 = sub_23ED5E944();
    v23 = sub_23ED5EB04();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v19;
      _os_log_impl(&dword_23ED44000, v22, v23, "CVPixelBufferCreate failed with error code: %d", v24, 8u);
      MEMORY[0x23EF229A0](v24, -1, -1);
    }

    sub_23ED4811C();
    swift_allocError();
    *v25 = 0;
    swift_willThrow();
    v26 = pixelBufferOut[0];
  }

  else
  {
  }

  v27 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t CVBufferRef.withLockedBaseAddress(lockFlags:_:)(uint64_t a1, void (*a2)(void))
{
  if (CVPixelBufferLockBaseAddress(v2, 0))
  {
    sub_23ED4811C();
    swift_allocError();
    *v4 = 3;
    return swift_willThrow();
  }

  else
  {
    if (CVPixelBufferGetBaseAddress(v2))
    {
      a2();
    }

    else
    {
      sub_23ED4811C();
      swift_allocError();
      *v6 = 4;
      swift_willThrow();
    }

    return CVPixelBufferUnlockBaseAddress(v2, 0);
  }
}

_WORD *loadImageIntoCVPixelBuffer(from:index:policy:)(CGImageSourceRef isrc, int64_t a2, uint64_t a3)
{
  PrimaryImageIndex = a2;
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 16);
  if (a2 < 0)
  {
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(isrc);
  }

  if (PrimaryImageIndex >= CGImageSourceGetCount(isrc))
  {
    sub_23ED4811C();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385748, &qword_23ED60D18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED603D0;
  v11 = *MEMORY[0x277CBFA08];
  *(inited + 32) = *MEMORY[0x277CBFA08];
  *(inited + 40) = 1;
  v12 = v11;
  v13 = sub_23ED55AB0(inited);
  swift_setDeallocating();
  sub_23ED4B398(inited + 32, &qword_27E385750, &qword_23ED60D20);
  sub_23ED53BCC(v13);

  v4 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED55CEC(&qword_27E3855B0, type metadata accessor for CIImageOption);
  v14 = sub_23ED5E994();

  v15 = [v4 initWithCGImageSource:isrc index:PrimaryImageIndex options:v14];

  v16 = [v15 colorSpace];
  if (!v16)
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v17 = sub_23ED5E964();
    __swift_project_value_buffer(v17, qword_27E3880E0);
    v18 = sub_23ED5E944();
    v19 = sub_23ED5EB04();
    if (os_log_type_enabled(v18, v19))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_23ED44000, v18, v19, "CGImageSource does not have a valid colorspace, setting to sRGB.", v4, 2u);
      MEMORY[0x23EF229A0](v4, -1, -1);
    }

    v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (!v16)
    {
      sub_23ED4811C();
      swift_allocError();
      *v31 = 1;
      swift_willThrow();

      return v4;
    }
  }

  v20 = v16;
  v21 = v15;
  v4 = &off_278C70000;
  [v21 extent];
  Width = CGRectGetWidth(v41);
  [v21 extent];
  Height = CGRectGetHeight(v42);
  v40.a = v7;
  v40.b = v8;
  LOBYTE(v40.c) = v9;
  createScaleTransform(width:height:policy:)(&v40, &v40.d, Width, Height);
  if (v3)
  {

    return v4;
  }

  v26 = [v21 imageByApplyingTransform:&v40.d highQualityDownsample:1];

  result = [v26 extent];
  if (v27 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v28 < 9.22337204e18)
  {
    v29 = createIOSurfaceBackedPixelBuffer(width:height:format:)(v27, v28, 0x42475241u);
    if (v30)
    {
    }

    else
    {
      v4 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385758, &qword_23ED60D28);
      v32 = swift_initStackObject();
      v33 = MEMORY[0x277CBF930];
      *(v32 + 16) = xmmword_23ED603D0;
      v34 = *v33;
      *(v32 + 32) = v34;
      *(v32 + 40) = v20;
      v35 = v34;
      v20 = v20;
      v36 = sub_23ED55BA0(v32);
      swift_setDeallocating();
      sub_23ED4B398(v32 + 32, &qword_27E385760, &qword_23ED60D30);
      sub_23ED53E64(v36);

      v37 = objc_allocWithZone(MEMORY[0x277CBF740]);
      type metadata accessor for CIContextOption(0);
      sub_23ED55CEC(&qword_27E3855A0, type metadata accessor for CIContextOption);
      v38 = sub_23ED5E994();

      v39 = [v37 initWithOptions_];

      CVBufferSetAttachment(v4, *MEMORY[0x277CC4B78], v20, kCVAttachmentMode_ShouldPropagate);
      [v39 render:v26 toCVPixelBuffer:v4];
    }

    return v4;
  }

LABEL_29:
  __break(1u);
  return result;
}

__CVBuffer *sub_23ED52CE0(uint64_t a1, __CVBuffer *a2, Swift::Int a3)
{
  v6 = a1;
  if (qword_27E385390 != -1)
  {
    a1 = swift_once();
  }

  v7 = qword_27E3880C8;
  v8 = OBJC_IVAR____TtC13AlchemistBase10Signposter_queue;
  v9 = *(qword_27E3880C8 + OBJC_IVAR____TtC13AlchemistBase10Signposter_queue);
  MEMORY[0x28223BE20](a1);
  sub_23ED5EB44();
  if (v3)
  {
    return a2;
  }

  Width = CVPixelBufferGetWidth(v6);
  Height = CVPixelBufferGetHeight(v6);
  v13 = Height;
  if (Width != a2 || Height != a3)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
    v16 = Width;
    v17 = v15;
    CGAffineTransformMakeScale(&v45, a2 / v16, a3 / v13);
    v18 = [v17 imageByApplyingTransform:&v45 highQualityDownsample:1];
    v19 = createIOSurfaceBackedPixelBuffer(width:height:format:)(a2, a3, 0x42475241u);
    if (v20)
    {

      a2 = v44;
      v21 = *(v7 + v8);
      MEMORY[0x28223BE20](v22);
LABEL_10:
      sub_23ED5EB44();
      return a2;
    }

    a2 = v19;
    CVBufferPropagateAttachments(v6, v19);
    ColorSpace = CVImageBufferGetColorSpace(v6);
    v46 = v17;
    if (ColorSpace)
    {
      v24 = ColorSpace;
    }

    else
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v25 = sub_23ED5E964();
      __swift_project_value_buffer(v25, qword_27E3880E0);
      v26 = sub_23ED5E944();
      v27 = sub_23ED5EB04();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23ED44000, v26, v27, "CVPixelBuffer does not have a valid colorspace, setting to sRGB.", v28, 2u);
        MEMORY[0x23EF229A0](v28, -1, -1);
      }

      v24 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      if (!v24)
      {
        sub_23ED4811C();
        swift_allocError();
        *v41 = 1;
        swift_willThrow();

        a2 = v44;
        v42 = *(v7 + v8);
        MEMORY[0x28223BE20](v43);
        goto LABEL_10;
      }
    }

    v29 = *MEMORY[0x277CC4B78];
    v30 = v24;
    CVBufferSetAttachment(a2, v29, v30, kCVAttachmentMode_ShouldPropagate);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385758, &qword_23ED60D28);
    inited = swift_initStackObject();
    v32 = MEMORY[0x277CBF930];
    *(inited + 16) = xmmword_23ED603D0;
    v33 = *v32;
    *(inited + 32) = v33;
    *(inited + 40) = v30;
    v34 = v33;
    v35 = sub_23ED55BA0(inited);
    swift_setDeallocating();
    sub_23ED4B398(inited + 32, &qword_27E385760, &qword_23ED60D30);
    sub_23ED53E64(v35);

    v36 = objc_allocWithZone(MEMORY[0x277CBF740]);
    type metadata accessor for CIContextOption(0);
    sub_23ED55CEC(&qword_27E3855A0, type metadata accessor for CIContextOption);
    v37 = sub_23ED5E994();

    v38 = [v36 initWithOptions_];

    [v38 render:v18 toCVPixelBuffer:a2];
    v39 = *(v7 + v8);
    MEMORY[0x28223BE20](v40);
    sub_23ED5EB44();
    return a2;
  }

  v14 = *(v7 + v8);
  MEMORY[0x28223BE20](Height);
  sub_23ED5EB44();
  return v6;
}

CVBufferRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> createPixelBuffer(width:height:format:attributes:colorSpace:)(Swift::Int width, Swift::Int height, Swift::UInt32 format, CFDictionaryRef_optional attributes, CGColorSpaceRef_optional colorSpace)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v16[0] = 0;
  v6 = CVPixelBufferCreate(0, width, height, format, attributes.value, v16);
  v7 = v16[0];
  if (v6 || !v16[0])
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v9 = sub_23ED5E964();
    __swift_project_value_buffer(v9, qword_27E3880E0);
    v10 = sub_23ED5E944();
    v11 = sub_23ED5EB04();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v6;
      _os_log_impl(&dword_23ED44000, v10, v11, "CVPixelBufferCreate failed with error code: %d", v12, 8u);
      MEMORY[0x23EF229A0](v12, -1, -1);
    }

    sub_23ED4811C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  else
  {
    if (colorSpace.value)
    {
      CVBufferSetAttachment(v16[0], *MEMORY[0x277CC4B78], colorSpace.value, kCVAttachmentMode_ShouldPropagate);
      v8 = v16[0];
    }

    else
    {
      v8 = v16[0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CVBufferRef.withBaseAddressLocked(lockFlags:_:)(CVPixelBufferLockFlags lockFlags, void (*a2)(void))
{
  if (CVPixelBufferLockBaseAddress(v2, lockFlags))
  {
    sub_23ED4811C();
    swift_allocError();
    *v5 = 3;
    return swift_willThrow();
  }

  else
  {
    a2();
    return CVPixelBufferUnlockBaseAddress(v2, lockFlags);
  }
}

CGColorSpaceRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CGColorSpaceRef.linearize()()
{
  v1 = CGColorSpaceCopyName(v0);
  v2 = MEMORY[0x277CBF4A8];
  if (v1)
  {
    v3 = v1;
    v4 = *MEMORY[0x277CBF4B8];
    type metadata accessor for CFString(0);
    sub_23ED55CEC(&qword_27E385770, type metadata accessor for CFString);
    v5 = v3;
    v6 = sub_23ED5E814();

    v7 = *v2;
    if (v6)
    {
      goto LABEL_10;
    }

    v8 = v5;
    v9 = sub_23ED5E814();

    if (v9)
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v10 = sub_23ED5E964();
      __swift_project_value_buffer(v10, qword_27E3880E0);
      v5 = v8;
      v11 = sub_23ED5E944();
      v12 = sub_23ED5EB04();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_9;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v5;
      *v14 = v3;
      v15 = v5;
      v16 = "%@ already contains linearized colorspace.";
LABEL_8:
      _os_log_impl(&dword_23ED44000, v11, v12, v16, v13, 0xCu);
      sub_23ED4B398(v14, &qword_27E385778, &qword_23ED60D38);
      MEMORY[0x23EF229A0](v14, -1, -1);
      MEMORY[0x23EF229A0](v13, -1, -1);
LABEL_9:

LABEL_10:
      v17 = CGColorSpaceCreateWithName(v7);
      if (v17)
      {
        v18 = v17;

        return v18;
      }

      else
      {
        sub_23ED55C98();
        swift_allocError();
        *v25 = 0;
        swift_willThrow();
      }

      return result;
    }

    v26 = *MEMORY[0x277CBF3E0];
    v27 = v8;
    LOBYTE(v26) = sub_23ED5E814();

    v28 = *MEMORY[0x277CBF490];
    if (v26)
    {
      v29 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF490]);
      if (v29)
      {
        v30 = v29;

        return v30;
      }

      else
      {
        sub_23ED55C98();
        swift_allocError();
        *v44 = 0;
        swift_willThrow();
      }
    }

    else
    {
      v31 = v27;
      v32 = sub_23ED5E814();

      if ((v32 & 1) == 0)
      {
        if (qword_27E385398 != -1)
        {
          swift_once();
        }

        v42 = sub_23ED5E964();
        __swift_project_value_buffer(v42, qword_27E3880E0);
        v5 = v31;
        v11 = sub_23ED5E944();
        v12 = sub_23ED5EB04();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_9;
        }

        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v5;
        *v14 = v3;
        v43 = v5;
        v16 = "%@ cannot be linearized, set to linearSRGB.";
        goto LABEL_8;
      }

      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v33 = sub_23ED5E964();
      __swift_project_value_buffer(v33, qword_27E3880E0);
      v34 = v31;
      v35 = sub_23ED5E944();
      v36 = sub_23ED5EB04();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v34;
        *v38 = v3;
        v39 = v34;
        _os_log_impl(&dword_23ED44000, v35, v36, "%@ already contains linearized colorspace.", v37, 0xCu);
        sub_23ED4B398(v38, &qword_27E385778, &qword_23ED60D38);
        MEMORY[0x23EF229A0](v38, -1, -1);
        MEMORY[0x23EF229A0](v37, -1, -1);
      }

      v40 = CGColorSpaceCreateWithName(v28);
      if (v40)
      {
        v41 = v40;

        return v41;
      }

      else
      {
        sub_23ED55C98();
        swift_allocError();
        *v45 = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v20 = sub_23ED5E964();
    __swift_project_value_buffer(v20, qword_27E3880E0);
    v21 = sub_23ED5E944();
    v22 = sub_23ED5EB04();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23ED44000, v21, v22, "Colorspace does not have a name, set to linearSRGB.", v23, 2u);
      MEMORY[0x23EF229A0](v23, -1, -1);
    }

    result = CGColorSpaceCreateWithName(*v2);
    if (!result)
    {
      sub_23ED55C98();
      swift_allocError();
      *v24 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_23ED53BCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857E8, &qword_23ED60E00);
    v1 = sub_23ED5ED04();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v25 = *(*(a1 + 56) + v11);
    v13 = v12;
    swift_dynamicCast();
    sub_23ED56344((v26 + 8), v24);
    sub_23ED56344(v24, v26);
    v14 = *(v1 + 40);
    sub_23ED5E9E4();
    sub_23ED5EE74();
    sub_23ED5EA04();
    v15 = sub_23ED5EE94();

    v16 = -1 << *(v1 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v6 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v6 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v13;
    result = sub_23ED56344(v26, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23ED53E64(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857B8, &qword_23ED60DD0);
    v1 = sub_23ED5ED04();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    type metadata accessor for CGColorSpace(0);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_23ED56344((v28 + 8), v26);
    sub_23ED56344(v26, v28);
    v16 = *(v1 + 40);
    sub_23ED5E9E4();
    sub_23ED5EE74();
    sub_23ED5EA04();
    v17 = sub_23ED5EE94();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v6 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v6 + 8 * v20);
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*(v6 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v9) = v14;
    result = sub_23ED56344(v28, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

CVBufferRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> createCVPixelBuffer(from:)(CGImageRef_optional from)
{
  pixelBufferOut[25] = *MEMORY[0x277D85DE8];
  if (!from.value)
  {
    sub_23ED4811C();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385720, &qword_23ED60CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED60CB0;
  v4 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v5 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v6 = *MEMORY[0x277CC4D68];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 1;
  v7 = *MEMORY[0x277CC4DF0];
  *(inited + 104) = v5;
  *(inited + 112) = v7;
  *(inited + 120) = 1;
  v8 = *MEMORY[0x277CC4DE8];
  *(inited + 144) = v5;
  *(inited + 152) = v8;
  v9 = from.value;
  v10 = v4;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = sub_23ED55EAC(MEMORY[0x277D84F90]);
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385780, &qword_23ED60D40);
  *(inited + 160) = v14;
  sub_23ED55988(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385740, &qword_23ED60D10);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_23ED55CEC(&qword_27E385528, type metadata accessor for CFString);
  v15 = sub_23ED5E994();

  Width = CGImageGetWidth(v9);
  Height = CGImageGetHeight(v9);
  pixelBufferOut[0] = 0;
  v17 = v15;
  v18 = CVPixelBufferCreate(0, Width, Height, 0x20u, v17, pixelBufferOut);
  if (v18 || (Width = pixelBufferOut[0]) == 0)
  {
    if (qword_27E385398 != -1)
    {
      swift_once();
    }

    v28 = sub_23ED5E964();
    __swift_project_value_buffer(v28, qword_27E3880E0);
    v29 = sub_23ED5E944();
    v30 = sub_23ED5EB04();
    if (os_log_type_enabled(v29, v30))
    {
      Width = swift_slowAlloc();
      *Width = 67109120;
      *(Width + 1) = v18;
      _os_log_impl(&dword_23ED44000, v29, v30, "CVPixelBufferCreate failed with error code: %d", Width, 8u);
      MEMORY[0x23EF229A0](Width, -1, -1);
    }

    sub_23ED4811C();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    v32 = pixelBufferOut[0];
  }

  else
  {

    v19 = CGImageGetColorSpace(v9);
    if (!v19)
    {
      if (qword_27E385398 != -1)
      {
        swift_once();
      }

      v20 = sub_23ED5E964();
      __swift_project_value_buffer(v20, qword_27E3880E0);
      v21 = sub_23ED5E944();
      v22 = sub_23ED5EB04();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_23ED44000, v21, v22, "CGImage does not have a valid colorspace, setting to sRGB.", v23, 2u);
        MEMORY[0x23EF229A0](v23, -1, -1);
      }

      v19 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
      if (!v19)
      {
        sub_23ED4811C();
        swift_allocError();
        *v43 = 1;
        swift_willThrow();

        goto LABEL_19;
      }
    }

    v24 = *MEMORY[0x277CC4B78];
    v25 = v19;
    CVBufferSetAttachment(Width, v24, v25, kCVAttachmentMode_ShouldPropagate);
    if (CVPixelBufferLockBaseAddress(Width, 0))
    {
      sub_23ED4811C();
      swift_allocError();
      *v26 = 3;
      swift_willThrow();
LABEL_12:

      goto LABEL_19;
    }

    BaseAddress = CVPixelBufferGetBaseAddress(Width);
    if (!BaseAddress)
    {
      sub_23ED4811C();
      swift_allocError();
      *v44 = 4;
      swift_willThrow();
      CVPixelBufferUnlockBaseAddress(Width, 0);
      goto LABEL_12;
    }

    v36 = BaseAddress;
    v37 = CGImageGetWidth(v9);
    v38 = CGImageGetHeight(v9);
    BitsPerComponent = CGImageGetBitsPerComponent(v9);
    BytesPerRow = CGImageGetBytesPerRow(v9);
    v41 = __CGBitmapContextCreate(v36, v37, v38, BitsPerComponent, BytesPerRow, v25);
    if (v41)
    {
      v42 = v41;
      CGImageGetWidth(v9);
      CGImageGetHeight(v9);
      sub_23ED5EAC4();

      CVPixelBufferUnlockBaseAddress(Width, 0);
    }

    else
    {
      CVPixelBufferUnlockBaseAddress(Width, 0);

      sub_23ED4811C();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
    }
  }

LABEL_19:
  v33 = *MEMORY[0x277D85DE8];
  return Width;
}

CVBufferRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> convertCVPixelBuffer(from:to:)(CVBufferRef from, CGColorSpaceRef to)
{
  ColorSpace = CVImageBufferGetColorSpace(from);
  if (ColorSpace)
  {
    v5 = ColorSpace;
    v6 = CGColorSpaceCopyName(v5);

    v7 = CGColorSpaceCopyName(to);
    if (v6)
    {
      if (v7)
      {
        v8 = v7;
        type metadata accessor for CFString(0);
        sub_23ED55CEC(&qword_27E385770, type metadata accessor for CFString);
        v9 = sub_23ED5E814();

        if (v9)
        {
          goto LABEL_11;
        }

LABEL_9:
        v10 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
        Width = CVPixelBufferGetWidth(from);
        Height = CVPixelBufferGetHeight(from);
        PixelFormatType = CVPixelBufferGetPixelFormatType(from);
        v14 = createIOSurfaceBackedPixelBuffer(width:height:format:)(Width, Height, PixelFormatType);
        if (v15)
        {
        }

        else
        {
          Width = v14;
          CVBufferPropagateAttachments(from, v14);
          CVBufferSetAttachment(Width, *MEMORY[0x277CC4B78], to, kCVAttachmentMode_ShouldPropagate);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385788, &qword_23ED60D48);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_23ED603D0;
          v25 = *MEMORY[0x277CBF930];
          *(inited + 32) = *MEMORY[0x277CBF930];
          type metadata accessor for CGColorSpace(0);
          *(inited + 64) = v26;
          *(inited + 40) = to;
          v27 = to;
          v28 = v25;
          sub_23ED55FF0(inited, &qword_27E3857B8, &qword_23ED60DD0, &qword_27E385790, &qword_23ED60D50);
          swift_setDeallocating();
          sub_23ED4B398(inited + 32, &qword_27E385790, &qword_23ED60D50);
          v29 = objc_allocWithZone(MEMORY[0x277CBF740]);
          type metadata accessor for CIContextOption(0);
          sub_23ED55CEC(&qword_27E3855A0, type metadata accessor for CIContextOption);
          v30 = sub_23ED5E994();

          v31 = [v29 initWithOptions_];

          [v31 render:v10 toCVPixelBuffer:Width];
        }

        return Width;
      }

LABEL_8:

      goto LABEL_9;
    }
  }

  else
  {
    v7 = CGColorSpaceCopyName(to);
  }

  v6 = v7;
  if (v7)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (qword_27E385398 != -1)
  {
    swift_once();
  }

  v16 = sub_23ED5E964();
  __swift_project_value_buffer(v16, qword_27E3880E0);
  v17 = to;
  v18 = sub_23ED5E944();
  v19 = sub_23ED5EB04();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = CGColorSpaceCopyName(v17);
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&dword_23ED44000, v18, v19, "CVPixelBuffer already has %@ colorSpace, skipping convert.", v20, 0xCu);
    sub_23ED4B398(v21, &qword_27E385778, &qword_23ED60D38);
    MEMORY[0x23EF229A0](v21, -1, -1);
    MEMORY[0x23EF229A0](v20, -1, -1);
  }

  return from;
}

CGAffineTransform *createScaleTransform(width:height:policy:)@<X0>(CGAffineTransform *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v4 = *&result->a;
  v5 = xmmword_23ED60CC0;
  v6 = xmmword_23ED60CD0;
  v7 = 0uLL;
  if (LOBYTE(result->c))
  {
    if (LOBYTE(result->c) != 1)
    {
LABEL_15:
      *a2 = v6;
      *(a2 + 16) = v5;
      *(a2 + 32) = v7;
      *(a2 + 48) = a3;
      *(a2 + 56) = a4;
      return result;
    }

    v8 = *&result->b;
    if (v4)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v4;
      v11 = v8;
      v12 = a2;
      result = CGAffineTransformMakeScale(&v20, v4 / a3, v8 / a4);
      a2 = v12;
      v6 = *&v20.a;
      v5 = *&v20.c;
      a3 = v10;
      a4 = v11;
LABEL_14:
      v7 = *&v20.tx;
      goto LABEL_15;
    }
  }

  else if (v4)
  {
    if (a3 > a4)
    {
      v13 = a3;
    }

    else
    {
      v13 = a4;
    }

    v14 = v4;
    if (v13 <= v4)
    {
      goto LABEL_15;
    }

    v15 = v14 / v13;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    result = CGAffineTransformMakeScale(&v20, v14 / v13, v14 / v13);
    a2 = v16;
    v6 = *&v20.a;
    v5 = *&v20.c;
    a3 = v15 * v17;
    a4 = v15 * v18;
    goto LABEL_14;
  }

  sub_23ED4811C();
  swift_allocError();
  *v19 = 2;
  return swift_willThrow();
}

__n128 ScaleTransform.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  *(a1 + 32) = result;
  return result;
}

double ScaleTransform.size.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

__CVBuffer *loadImageIntoCVPixelBuffer(from:with:policy:with:)(CGImage *a1, int a2, double *a3, void *a4)
{
  v6 = *a3;
  v47 = a3[1];
  v46 = *(a3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385618, &qword_23ED60408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23ED60CA0;
  v8 = *MEMORY[0x277CBFA08];
  *(inited + 32) = *MEMORY[0x277CBFA08];
  v9 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v10 = *MEMORY[0x277CBFA68];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385798, &qword_23ED60D58);
  v11 = swift_initStackObject();
  v12 = MEMORY[0x277CD3410];
  *(v11 + 16) = xmmword_23ED603D0;
  v13 = *v12;
  *(v11 + 32) = *v12;
  *(v11 + 40) = a2;
  v14 = v8;
  v15 = v10;
  v16 = v13;
  v17 = sub_23ED56108(v11);
  swift_setDeallocating();
  sub_23ED4B398(v11 + 32, &qword_27E3857A0, &qword_23ED60D60);
  *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857A8, &qword_23ED60D68);
  *(inited + 80) = v17;
  v18 = &qword_27E385620;
  sub_23ED55FF0(inited, &qword_27E3857E8, &qword_23ED60E00, &qword_27E385620, &qword_23ED60410);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385620, &qword_23ED60410);
  swift_arrayDestroy();
  v19 = objc_allocWithZone(MEMORY[0x277CBF758]);
  type metadata accessor for CIImageOption(0);
  sub_23ED55CEC(&qword_27E3855B0, type metadata accessor for CIImageOption);
  v20 = sub_23ED5E994();

  v21 = [v19 initWithCGImage:a1 options:v20];

  v22 = CGImageGetColorSpace(a1);
  v23 = v22;
  if (!v22)
  {
    v24 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    if (!v24)
    {
      sub_23ED4811C();
      swift_allocError();
      *v34 = 1;
      swift_willThrow();
      goto LABEL_15;
    }

    v23 = v24;
    v22 = 0;
  }

  v25 = v22;

  v21 = v21;
  v18 = &off_278C70000;
  [v21 extent];
  Width = CGRectGetWidth(v51);
  [v21 extent];
  Height = CGRectGetHeight(v52);
  v50.a = v48;
  v50.b = v47;
  LOBYTE(v50.c) = v46;
  createScaleTransform(width:height:policy:)(&v50, &v50.d, Width, Height);
  if (v49)
  {

    goto LABEL_15;
  }

  v28 = [v21 imageByApplyingTransform:&v50.d highQualityDownsample:1];

  result = [v28 extent];
  if (v30 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v31 < 9.22337204e18)
  {
    v32 = createIOSurfaceBackedPixelBuffer(width:height:format:)(v30, v31, 0x42475241u);
    if (!v33)
    {
      v18 = v32;
      if (a4)
      {
        v35 = a4;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385788, &qword_23ED60D48);
        v36 = swift_initStackObject();
        *(v36 + 16) = xmmword_23ED603D0;
        v37 = *MEMORY[0x277CBF930];
        *(v36 + 32) = *MEMORY[0x277CBF930];
        type metadata accessor for CGColorSpace(0);
        *(v36 + 64) = v38;
        *(v36 + 40) = v23;
        v39 = v37;
        v40 = v23;
        sub_23ED55FF0(v36, &qword_27E3857B8, &qword_23ED60DD0, &qword_27E385790, &qword_23ED60D50);
        swift_setDeallocating();
        sub_23ED4B398(v36 + 32, &qword_27E385790, &qword_23ED60D50);
        v41 = objc_allocWithZone(MEMORY[0x277CBF740]);
        type metadata accessor for CIContextOption(0);
        sub_23ED55CEC(&qword_27E3855A0, type metadata accessor for CIContextOption);
        v42 = sub_23ED5E994();

        v35 = [v41 initWithOptions_];
      }

      v43 = *MEMORY[0x277CC4B78];
      v44 = a4;
      CVBufferSetAttachment(v18, v43, v23, kCVAttachmentMode_ShouldPropagate);
      [v35 render:v28 toCVPixelBuffer:v18];

      return v18;
    }

LABEL_15:
    return v18;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_23ED5527C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_23ED552C8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_23ED552E8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_23ED552F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23ED5EE74();
  type metadata accessor for CFString(0);
  sub_23ED55CEC(&qword_27E385770, type metadata accessor for CFString);
  sub_23ED5E824();
  v4 = sub_23ED5EE94();

  return sub_23ED554F8(a1, v4);
}

unint64_t sub_23ED553AC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_23ED5E9E4();
  sub_23ED5EE74();
  sub_23ED5EA04();
  v4 = sub_23ED5EE94();

  return sub_23ED55604(a1, v4);
}

unint64_t sub_23ED5543C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_23ED5EBE4();

  return sub_23ED55708(a1, v5);
}

unint64_t sub_23ED55480(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23ED5EE74();
  sub_23ED5EA04();
  v6 = sub_23ED5EE94();

  return sub_23ED557D0(a1, a2, v6);
}

unint64_t sub_23ED554F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_23ED55CEC(&qword_27E385770, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23ED5E814();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23ED55604(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_23ED5E9E4();
      v9 = v8;
      if (v7 == sub_23ED5E9E4() && v9 == v10)
      {
        break;
      }

      v12 = sub_23ED5EE04();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23ED55708(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23ED56354(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EF21FA0](v9, a1);
      sub_23ED4E1D4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23ED557D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23ED5EE04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23ED55888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385808, &qword_23ED60E20);
    v3 = sub_23ED5ED04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_23ED552F8(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED55988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385800, &qword_23ED60E18);
    v3 = sub_23ED5ED04();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED563B0(v4, &v11, &qword_27E385740, &qword_23ED60D10);
      v5 = v11;
      result = sub_23ED552F8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23ED56344(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED55AB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857F8, &qword_23ED60E10);
    v3 = sub_23ED5ED04();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23ED553AC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED55BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857F0, &qword_23ED60E08);
    v3 = sub_23ED5ED04();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_23ED553AC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED55C98()
{
  result = qword_27E385768;
  if (!qword_27E385768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385768);
  }

  return result;
}

uint64_t sub_23ED55CEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23ED55D7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857D0, &qword_23ED60DE8);
    v3 = sub_23ED5ED04();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED563B0(v4, &v13, &qword_27E385658, &qword_23ED605C0);
      v5 = v13;
      v6 = v14;
      result = sub_23ED55480(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23ED56344(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED55EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857C0, &qword_23ED60DD8);
    v3 = sub_23ED5ED04();
    v4 = a1 + 32;

    while (1)
    {
      sub_23ED563B0(v4, v13, &qword_27E3857C8, &qword_23ED60DE0);
      result = sub_23ED5543C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23ED56344(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED55FF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_23ED5ED04();
    v10 = a1 + 32;

    while (1)
    {
      sub_23ED563B0(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_23ED553AC(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_23ED56344(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23ED56108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3857B0, &qword_23ED60DC8);
    v3 = sub_23ED5ED04();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_23ED552F8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 4 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScalePolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ScalePolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_23ED56284(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_23ED5629C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
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

uint64_t sub_23ED562D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23ED562F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

_OWORD *sub_23ED56344(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23ED563B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23ED56418(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v28 = sub_23ED5E964();
  v26 = *(v28 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23ED5E8E4();
  v25 = *(v27 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x28223BE20](v27);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23ED5EB34();
  v7 = *(v22 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23ED5EB24();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_23ED5E984();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  type metadata accessor for VirtualMemoryStatistics();
  *(v1 + 16) = swift_allocObject();
  sub_23ED5ECB4();
  v15 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC13AlchemistBase10Signposter_signpostIDMap) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC13AlchemistBase10Signposter_signpostStateMap) = v15;
  v21 = OBJC_IVAR____TtC13AlchemistBase10Signposter_queue;
  sub_23ED59CBC();
  sub_23ED5E974();
  v30 = MEMORY[0x277D84F90];
  sub_23ED503A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3856D0, &qword_23ED60890);
  sub_23ED503FC();
  sub_23ED5EBC4();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v22);
  *(v1 + v21) = sub_23ED5EB54();
  v16 = v26;
  v18 = v28;
  v17 = v29;
  (*(v26 + 16))(v24, v29, v28);
  v19 = v23;
  sub_23ED5E8C4();
  (*(v16 + 8))(v17, v18);
  (*(v25 + 32))(v2 + OBJC_IVAR____TtC13AlchemistBase10Signposter_signposter, v19, v27);
  return v2;
}

uint64_t sub_23ED567F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385848, &qword_23ED60E60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v87 - v9);
  v100 = sub_23ED5E8B4();
  v11 = *(v100 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v100);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v95 = &v87 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v87 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385850, &qword_23ED60E68);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  MEMORY[0x28223BE20](v22);
  v23 = &v87;
  v25 = &v87 - v24;
  v97 = v19;
  v94 = v15;
  v91 = a3;
  v99 = v26;
  if (a3)
  {
    v23 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_55:
        swift_once();
LABEL_19:
        v56 = sub_23ED5E964();
        __swift_project_value_buffer(v56, qword_27E388110);
        v57 = sub_23ED5E944();
        v58 = sub_23ED5EB04();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&dword_23ED44000, v57, v58, "Error getting system virtual memory", v59, 2u);
          MEMORY[0x23EF229A0](v59, -1, -1);
        }

        v60 = sub_23ED5E8D4();
        v61 = sub_23ED5EB74();
        result = sub_23ED5EBA4();
        if (result)
        {
          if (v91)
          {
            if (!HIDWORD(v92))
            {
              if ((v92 & 0xFFFFF800) == 0xD800)
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              if (v92 >> 16 <= 0x10)
              {
                v63 = &v105;
                goto LABEL_37;
              }

              goto LABEL_58;
            }
          }

          else
          {
            if (v92)
            {
              v63 = v92;
LABEL_37:
              v70 = swift_slowAlloc();
              *v70 = 0;
              v69 = a3;
              v71 = sub_23ED5E8A4();
              _os_signpost_emit_with_name_impl(&dword_23ED44000, v60, v61, v71, v63, "process-unwired-current -1 MB process-unwired-peak -1 MB", v70, 2u);
LABEL_43:
              MEMORY[0x23EF229A0](v70, -1, -1);
              goto LABEL_44;
            }

            __break(1u);
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        goto LABEL_31;
      }

      v23 = (a1 >> 16);
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v27 = a1 + 1;
LABEL_9:
          v104 = (v27 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v27) >> 3))));
          goto LABEL_10;
        }

LABEL_48:
        v82 = (a1 & 0x3F) << 8;
        v83 = (a1 >> 6) + v82 + 33217;
        v84 = (v82 | (a1 >> 6) & 0x3F) << 8;
        v85 = (a1 >> 18) + ((v84 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v86 = (a1 >> 12) + v84 + 8487393;
        if (v23)
        {
          v27 = v85;
        }

        else
        {
          v27 = v86;
        }

        if (a1 < 0x800)
        {
          v27 = v83;
        }

        goto LABEL_9;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_46;
  }

LABEL_10:
  v28 = sub_23ED5E9F4();
  v30 = v29;
  v31 = OBJC_IVAR____TtC13AlchemistBase10Signposter_signpostIDMap;
  swift_beginAccess();
  v32 = *(a4 + v31);
  v33 = *(v32 + 16);
  v92 = a1;
  v93 = v10;
  v98 = v11;
  if (v33)
  {

    v34 = sub_23ED55480(v28, v30);
    if (v35)
    {
      v36 = v100;
      (*(v11 + 16))(v25, *(v32 + 56) + *(v11 + 72) * v34, v100);

      (*(v11 + 56))(v25, 0, 1, v36);
      sub_23ED4B398(v25, &qword_27E385850, &qword_23ED60E68);
      goto LABEL_15;
    }
  }

  v37 = *(v11 + 56);
  v38 = v28;
  v39 = a4;
  v40 = v30;
  v41 = v100;
  v37(v25, 1, 1, v100);
  sub_23ED4B398(v25, &qword_27E385850, &qword_23ED60E68);

  sub_23ED5E8D4();
  v42 = v99;
  sub_23ED5E894();
  v43 = v41;
  v30 = v40;
  a4 = v39;
  v28 = v38;
  v37(v42, 0, 1, v43);
  swift_beginAccess();
  sub_23ED57148(v42, v38, v30);
  swift_endAccess();
LABEL_15:
  v44 = *(a4 + v31);
  if (!*(v44 + 16))
  {
LABEL_26:
    v102 = 0;
    v103 = 0xE000000000000000;
    sub_23ED5EC34();

    v102 = 0xD00000000000001ALL;
    v103 = 0x800000023ED61D40;
    MEMORY[0x23EF21DC0](v28, v30);

    v64 = v102;
    v65 = v103;
    sub_23ED58488();
    swift_allocError();
    *v66 = v64;
    *(v66 + 8) = v65;
    *(v66 + 16) = 0;
    return swift_willThrow();
  }

  v45 = *(a4 + v31);

  v46 = sub_23ED55480(v28, v30);
  if ((v47 & 1) == 0)
  {

    goto LABEL_26;
  }

  v99 = v30;
  v48 = v98;
  v49 = *(v44 + 56) + *(v98 + 72) * v46;
  v50 = v98 + 16;
  v51 = v95;
  v52 = v100;
  v88 = *(v98 + 16);
  v88(v95, v49, v100);

  a3 = v97;
  (*(v48 + 32))(v97, v51, v52);
  v53 = v96;
  v54 = sub_23ED51BD8();
  v89 = v50;
  v90 = v28;
  if (v53)
  {

    if (qword_27E3853A8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

  v67 = a3;
  v68 = v54;
  v96 = v55;
  v60 = sub_23ED5E8D4();
  a3 = sub_23ED5EB74();
  result = sub_23ED5EBA4();
  if ((result & 1) == 0)
  {
    v69 = v67;
    goto LABEL_44;
  }

  if ((v91 & 1) == 0)
  {
    if (!v92)
    {
      __break(1u);
LABEL_31:
      v69 = a3;
LABEL_44:
      v73 = v88;

      v74 = v100;
      v73(v94, v69, v100);
      v75 = sub_23ED5E924();
      v76 = *(v75 + 48);
      v77 = *(v75 + 52);
      swift_allocObject();
      v78 = sub_23ED5E914();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
      v80 = *(v79 + 48);
      v81 = v93;
      *v93 = v78;

      sub_23ED5EC84();
      (*(*(v79 - 8) + 56))(v81, 0, 1, v79);
      swift_beginAccess();
      sub_23ED57320(v81, v90, v99);
      swift_endAccess();

      return (*(v98 + 8))(v69, v74);
    }

LABEL_42:
    v70 = swift_slowAlloc();
    *v70 = 134218240;
    *(v70 + 4) = v68;
    *(v70 + 12) = 2048;
    *(v70 + 14) = v96;
    v69 = v67;
    v72 = sub_23ED5E8A4();
    _os_signpost_emit_with_name_impl(&dword_23ED44000, v60, a3, v72, v92, "process-unwired-current %llu MB process-unwired-peak %llu MB", v70, 0x16u);
    goto LABEL_43;
  }

  if (HIDWORD(v92))
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if ((v92 & 0xFFFFF800) != 0xD800)
  {
    if (v92 >> 16 > 0x10)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v92 = &v101;
    goto LABEL_42;
  }

LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_23ED57148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385850, &qword_23ED60E68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_23ED5E8B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_23ED4B398(a1, &qword_27E385850, &qword_23ED60E68);
    sub_23ED586BC(a2, a3, v10);

    return sub_23ED4B398(v10, &qword_27E385850, &qword_23ED60E68);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23ED59450(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_23ED57320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385848, &qword_23ED60E60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_23ED4B398(a1, &qword_27E385848, &qword_23ED60E60);
    sub_23ED5854C(a2, a3, v10);

    return sub_23ED4B398(v10, &qword_27E385848, &qword_23ED60E60);
  }

  else
  {
    sub_23ED59BDC(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_23ED592E0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_23ED574E8(unint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, void, void, uint64_t), uint64_t a6)
{
  v106 = a6;
  v120 = a4;
  v104 = sub_23ED5E8F4();
  v112 = *(v104 - 8);
  v9 = *(v112 + 64);
  v10 = MEMORY[0x28223BE20](v104);
  v102 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = v100 - v12;
  v13 = sub_23ED5E8B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v108 = (v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v107 = v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (v100 - v22);
  v114 = sub_23ED5ECA4();
  v116 = *(v114 - 8);
  v24 = *(v116 + 64);
  v25 = MEMORY[0x28223BE20](v114);
  v105 = v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = v100 - v27;
  v115 = v100 - v27;
  v103 = a3;
  v113 = a5;
  v109 = v14;
  v110 = v13;
  if (a3)
  {
    v28 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
LABEL_64:
        swift_once();
LABEL_14:
        v42 = sub_23ED5E964();
        __swift_project_value_buffer(v42, qword_27E388110);
        v43 = sub_23ED5E944();
        v44 = sub_23ED5EB04();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_23ED44000, v43, v44, "Error getting system virtual memory", v45, 2u);
          MEMORY[0x23EF229A0](v45, -1, -1);
        }

        v30 = sub_23ED5E8D4();
        v46 = v108;
        sub_23ED5E904();
        v47 = sub_23ED5EB64();
        if (sub_23ED5EBA4())
        {
          LODWORD(v111) = v47;
          if ((v103 & 1) == 0)
          {

            v48 = v104;
            v49 = v102;
            if (!a1)
            {
              __break(1u);
              goto LABEL_20;
            }

            goto LABEL_34;
          }

          v61 = HIDWORD(a1);
          v48 = v104;
          v49 = v102;
          if (HIDWORD(a1))
          {
            __break(1u);
            goto LABEL_66;
          }

          v61 = a1 & 0xFFFFF800;
          v62 = 55296;
          if (v61 != 55296)
          {
            v61 = a1 >> 16;
            if (a1 >> 16 <= 0x10)
            {
              if (a1 <= 0x7F)
              {
                v63 = a1 + 1;
LABEL_33:
                v117 = (v63 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v63) & 0x18)));

                a1 = &v117;
LABEL_34:
                v57 = v113;
                v58 = v110;

                sub_23ED5E934();

                if ((*(v19 + 88))(v49, v48) == *MEMORY[0x277D85B00])
                {
                  v64 = "[Error] Interval already ended";
                }

                else
                {
                  (*(v19 + 8))(v49, v48);
                  v64 = "process-unwired-current -1 MB process-unwired-peak -1 MB";
                }

                v65 = swift_slowAlloc();
                *v65 = 0;
                v66 = v108;
                v67 = sub_23ED5E8A4();
                _os_signpost_emit_with_name_impl(&dword_23ED44000, v30, v111, v67, a1, v64, v65, 2u);
                MEMORY[0x23EF229A0](v65, -1, -1);

                v46 = v66;
                goto LABEL_38;
              }

LABEL_67:
              v62 = (a1 & 0x3F) << 8;
              if (a1 < 0x800)
              {
                v93 = (a1 >> 6) + v62;
                v94 = 33217;
                goto LABEL_69;
              }

LABEL_79:
              v98 = (v62 | (a1 >> 6) & 0x3F) << 8;
              if (!v61)
              {
                v63 = (a1 >> 12) + v98 + 8487393;
                goto LABEL_70;
              }

              v93 = (a1 >> 18) + ((v98 | (a1 >> 12) & 0x3F) << 8);
              v94 = -2122219023;
LABEL_69:
              v63 = v93 + v94;
LABEL_70:
              v23 = v114;
              v48 = v104;
              v19 = v112;
              v49 = v102;
              goto LABEL_33;
            }

LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

LABEL_26:

        v57 = v113;
        v58 = v110;
LABEL_38:
        (*(v109 + 8))(v46, v58);
        if (v57)
        {
          v68 = v105;
          sub_23ED5EC84();
          v69 = v115;
          v70 = sub_23ED5EC94();
          v72 = v71;
          v73 = *(v116 + 8);
          v73(v68, v23);
          v57(v70, v72, 0, 0, 1);

          return (v73)(v69, v23);
        }

        else
        {
          (*(v116 + 8))(v115, v23);
        }
      }

      v28 = (a1 >> 16);
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v29 = a1 + 1;
LABEL_9:
          v119 = (v29 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v29) >> 3))));
          goto LABEL_10;
        }

LABEL_57:
        v88 = (a1 & 0x3F) << 8;
        v89 = (a1 >> 6) + v88 + 33217;
        v90 = (v88 | (a1 >> 6) & 0x3F) << 8;
        v91 = (a1 >> 18) + ((v90 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v92 = (a1 >> 12) + v90 + 8487393;
        if (v28)
        {
          v29 = v91;
        }

        else
        {
          v29 = v92;
        }

        if (a1 < 0x800)
        {
          v29 = v89;
        }

        goto LABEL_9;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_10:
  v30 = sub_23ED5E9F4();
  v14 = v31;
  v32 = OBJC_IVAR____TtC13AlchemistBase10Signposter_signpostStateMap;
  v33 = v120;
  swift_beginAccess();
  v34 = *(v33 + v32);
  if (!*(v34 + 16))
  {
LABEL_21:
    v117 = 0;
    v118 = 0xE000000000000000;
    sub_23ED5EC34();

    v117 = 0xD00000000000001DLL;
    v118 = 0x800000023ED61D00;
    MEMORY[0x23EF21DC0](v30, v14);

    v50 = v117;
    v51 = v118;
    sub_23ED58488();
    swift_allocError();
    *v52 = v50;
    *(v52 + 8) = v51;
    *(v52 + 16) = 1;
    return swift_willThrow();
  }

  v35 = sub_23ED55480(v30, v14);
  if ((v36 & 1) == 0)
  {
LABEL_20:

    goto LABEL_21;
  }

  sub_23ED584DC(*(v34 + 56) + *(v20 + 72) * v35, v23);

  v37 = *v23;
  v38 = v23 + *(v19 + 48);
  v23 = v114;
  (*(v116 + 32))(v115, v38, v114);
  v39 = v111;
  v40 = sub_23ED51BD8();
  if (v39)
  {

    v19 = v112;
    if (qword_27E3853A8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

  v54 = v40;
  v111 = v41;
  v46 = sub_23ED5E8D4();
  sub_23ED5E904();
  v23 = sub_23ED5EB64();
  v55 = sub_23ED5EBA4();
  v30 = v112;
  v100[1] = v37;
  if (v55)
  {
    v100[0] = v54;
    if ((v103 & 1) == 0)
    {

      v56 = v104;
      if (!a1)
      {
        __break(1u);
        goto LABEL_26;
      }

      goto LABEL_47;
    }

    v74 = HIDWORD(a1);
    v56 = v104;
    if (HIDWORD(a1))
    {
      __break(1u);
    }

    else
    {
      v61 = a1 & 0xFFFFF800;
      v62 = 55296;
      if (v61 == 55296)
      {
        goto LABEL_78;
      }

      v74 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v75 = a1 + 1;
LABEL_46:
          v117 = (v75 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v75) & 0x18)));

          a1 = &v117;
LABEL_47:
          v59 = v113;
          v76 = v101;

          sub_23ED5E934();

          if ((*(v30 + 88))(v76, v56) == *MEMORY[0x277D85B00])
          {
            v77 = 0;
            v78 = "[Error] Interval already ended";
          }

          else
          {
            (*(v30 + 8))(v76, v56);
            v78 = "process-unwired-current %llu MB process-unwired-peak %llu MB";
            v77 = 2;
          }

          v79 = swift_slowAlloc();
          *v79 = 0;
          *(v79 + 1) = v77;
          *(v79 + 2) = 2048;
          v54 = v100[0];
          *(v79 + 4) = v100[0];
          *(v79 + 12) = 2048;
          *(v79 + 14) = v111;
          v60 = v107;
          v80 = sub_23ED5E8A4();
          _os_signpost_emit_with_name_impl(&dword_23ED44000, v46, v23, v80, a1, v78, v79, 0x16u);
          MEMORY[0x23EF229A0](v79, -1, -1);

          goto LABEL_51;
        }

LABEL_73:
        v95 = (a1 & 0x3F) << 8;
        if (a1 >= 0x800)
        {
          v99 = (v95 | (a1 >> 6) & 0x3F) << 8;
          if (!v74)
          {
            v75 = (a1 >> 12) + v99 + 8487393;
            goto LABEL_76;
          }

          v96 = (a1 >> 18) + ((v99 | (a1 >> 12) & 0x3F) << 8);
          v97 = -2122219023;
        }

        else
        {
          v96 = (a1 >> 6) + v95;
          v97 = 33217;
        }

        v75 = v96 + v97;
LABEL_76:
        v56 = v104;
        v30 = v112;
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_73;
  }

  v59 = v113;
  v60 = v107;
LABEL_51:
  (*(v109 + 8))(v60, v110);
  v81 = v114;
  if (v59)
  {
    v82 = v105;
    sub_23ED5EC84();
    v83 = v115;
    v84 = sub_23ED5EC94();
    v86 = v85;
    v87 = *(v116 + 8);
    v87(v82, v81);
    v113(v84, v86, v54, v111, 0);

    return (v87)(v83, v81);
  }

  else
  {
    (*(v116 + 8))(v115, v114);
  }
}

uint64_t sub_23ED58104()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC13AlchemistBase10Signposter_signposter;
  v3 = sub_23ED5E8E4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC13AlchemistBase10Signposter_clock;
  v5 = sub_23ED5ECC4();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC13AlchemistBase10Signposter_signpostIDMap];

  v7 = *&v0[OBJC_IVAR____TtC13AlchemistBase10Signposter_signpostStateMap];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Signposter()
{
  result = qword_27E385828;
  if (!qword_27E385828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23ED5826C()
{
  result = sub_23ED5E8E4();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_23ED5ECC4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23ED58364()
{
  v0 = sub_23ED5E964();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E3853A8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27E388110);
  (*(v1 + 16))(v4, v5, v0);
  v6 = type metadata accessor for Signposter();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  result = sub_23ED56418(v4);
  qword_27E3880C8 = v9;
  return result;
}

unint64_t sub_23ED58488()
{
  result = qword_27E385840;
  if (!qword_27E385840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E385840);
  }

  return result;
}

uint64_t sub_23ED584DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED5854C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23ED55480(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED59724();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
    v22 = *(v15 - 8);
    sub_23ED59BDC(v14 + *(v22 + 72) * v9, a3);
    sub_23ED58EF0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23ED586BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23ED55480(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23ED5995C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_23ED5E8B4();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_23ED590F4(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_23ED5E8B4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_23ED5882C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - v8;
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385858, &qword_23ED60E70);
  v44 = a2;
  result = sub_23ED5ECF4();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_23ED59BDC(v31, v45);
      }

      else
      {
        sub_23ED584DC(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_23ED5EE74();
      sub_23ED5EA04();
      result = sub_23ED5EE94();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_23ED59BDC(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_23ED58B70(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_23ED5E8B4();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385860, &qword_23ED60E78);
  v46 = a2;
  result = sub_23ED5ECF4();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_23ED5EE74();
      sub_23ED5EA04();
      result = sub_23ED5EE94();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_23ED58EF0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23ED5EBD4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23ED5EE74();

      sub_23ED5EA04();
      v13 = sub_23ED5EE94();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E385838, &qword_23ED60E58) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}