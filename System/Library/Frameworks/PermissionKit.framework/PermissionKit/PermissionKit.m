uint64_t getEnumTagSinglePayload for AskToConversion.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskToConversion.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_23A61D77C(uint64_t a1, unint64_t *a2)
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

uint64_t sub_23A61D7DC()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t sub_23A61D850()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t sub_23A61D8A4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23A6362C0();
}

uint64_t sub_23A61D8F0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_23A6362B0();
}

uint64_t sub_23A61D948()
{
  sub_23A636C80();
  v1 = *v0;
  swift_getWitnessTable();
  sub_23A6362B0();
  return sub_23A636CA0();
}

uint64_t sub_23A61D9B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_23A6362A0();
}

unint64_t sub_23A61DA20()
{
  result = qword_27DF98010;
  if (!qword_27DF98010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98010);
  }

  return result;
}

uint64_t sub_23A61DADC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CommunicationHandle.kind.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_23A636610();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  v11 = *v1;
  sub_23A636620();
  (*(v4 + 16))(v8, v10, v3);
  v12 = (*(v4 + 88))(v8, v3);
  if (v12 == *MEMORY[0x277CEEC30])
  {
    v13 = 0;
LABEL_7:
    result = (*(v4 + 8))(v10, v3);
    *a1 = v13;
    return result;
  }

  if (v12 == *MEMORY[0x277CEEC38])
  {
    v13 = 1;
    goto LABEL_7;
  }

  if (v12 == *MEMORY[0x277CEEC40])
  {
    v13 = 2;
    goto LABEL_7;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t CommunicationHandle.init(value:kind:)@<X0>(char *a1@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_23A636610();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278B53A08 + *a1));
  v8 = objc_allocWithZone(sub_23A636670());
  result = sub_23A636640();
  *a2 = result;
  return result;
}

uint64_t sub_23A61DE20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_23A636610();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CEEC30])
  {
    v10 = 0;
LABEL_7:
    result = (*(v5 + 8))(a1, v4);
    *a2 = v10;
    return result;
  }

  if (v9 == *MEMORY[0x277CEEC38])
  {
    v10 = 1;
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277CEEC40])
  {
    v10 = 2;
    goto LABEL_7;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t sub_23A61DFE8()
{
  v1 = 0x6464416C69616D65;
  if (*v0 != 1)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D754E656E6F6870;
  }
}

uint64_t sub_23A61E050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A6205B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A61E090(uint64_t a1)
{
  v2 = sub_23A61E6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E0CC(uint64_t a1)
{
  v2 = sub_23A61E6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A61E114@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_23A61E150(uint64_t a1)
{
  v2 = sub_23A61E704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E18C(uint64_t a1)
{
  v2 = sub_23A61E704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A61E1C8(uint64_t a1)
{
  v2 = sub_23A61E758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E204(uint64_t a1)
{
  v2 = sub_23A61E758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A61E240(uint64_t a1)
{
  v2 = sub_23A61E7AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61E27C(uint64_t a1)
{
  v2 = sub_23A61E7AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationHandle.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98028, &qword_23A637530);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98030, &qword_23A637538);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98038, &qword_23A637540);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98040, &qword_23A637548);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61E6B0();
  sub_23A636CC0();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_23A61E758();
      v12 = v26;
      sub_23A636BA0();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_23A61E704();
      v12 = v29;
      sub_23A636BA0();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_23A61E7AC();
    sub_23A636BA0();
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

unint64_t sub_23A61E6B0()
{
  result = qword_27DF98048;
  if (!qword_27DF98048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98048);
  }

  return result;
}

unint64_t sub_23A61E704()
{
  result = qword_27DF98050;
  if (!qword_27DF98050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98050);
  }

  return result;
}

unint64_t sub_23A61E758()
{
  result = qword_27DF98058;
  if (!qword_27DF98058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98058);
  }

  return result;
}

unint64_t sub_23A61E7AC()
{
  result = qword_27DF98060;
  if (!qword_27DF98060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98060);
  }

  return result;
}

uint64_t CommunicationHandle.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t CommunicationHandle.Kind.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98068, &qword_23A637550);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98070, &qword_23A637558);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98078, &qword_23A637560);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98080, &qword_23A637568);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61E6B0();
  v18 = v49;
  sub_23A636CB0();
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
  v22 = sub_23A636B80();
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
          sub_23A61E758();
          v33 = v40;
          sub_23A636B20();
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
          sub_23A61E704();
          v37 = v40;
          sub_23A636B20();
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
        sub_23A61E7AC();
        v35 = v40;
        sub_23A636B20();
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
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }
  }

  v26 = sub_23A636A60();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98088, &qword_23A637570) + 48);
  *v28 = &type metadata for CommunicationHandle.Kind;
  sub_23A636B30();
  sub_23A636A50();
  (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
  swift_willThrow();
  (*(v48 + 8))(v21, v13);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v49;
LABEL_10:
  v30 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_23A61EE34()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23A61EE68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
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

uint64_t (*CommunicationHandle.value.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = *v1;
  *a1 = MEMORY[0x23EE87820]();
  a1[1] = v3;
  return sub_23A61EF88;
}

uint64_t sub_23A61EF88(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    sub_23A636660();
  }

  else
  {
    v7 = *a1;
    return sub_23A636660();
  }
}

uint64_t sub_23A61EFFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_23A636610();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_23A636620();
  result = sub_23A61DE20(v7, &v11);
  *a2 = v11;
  return result;
}

uint64_t sub_23A61F094(char *a1, uint64_t *a2)
{
  v4 = sub_23A636610();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v10 = *a2;
  (*(v9 + 104))(v7, **(&unk_278B53A08 + v8));
  return sub_23A636630();
}

uint64_t CommunicationHandle.kind.setter(char *a1)
{
  v3 = sub_23A636610();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v6 + 104))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), **(&unk_278B53A08 + *a1));
  return sub_23A636630();
}

void (*CommunicationHandle.kind.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_23A636610();
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 8) = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 16) = swift_coroFrameAlloc();
    *(v5 + 24) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    *(v5 + 32) = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 16) = malloc(*(v7 + 64));
    *(v5 + 24) = malloc(v9);
    v10 = malloc(v9);
    *(v5 + 32) = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  *(v5 + 40) = v11;
  *(v5 + 48) = *v1;
  sub_23A636620();
  (*(v8 + 16))(v10, v12, v6);
  v13 = (*(v8 + 88))(v10, v6);
  v14 = *MEMORY[0x277CEEC30];
  *(v5 + 56) = *MEMORY[0x277CEEC30];
  if (v13 == v14)
  {
    v15 = 0;
LABEL_13:
    (*(v8 + 8))(v12, v6);
    *(v5 + 60) = v15;
    return sub_23A61F4A8;
  }

  if (v13 == *MEMORY[0x277CEEC38])
  {
    v15 = 1;
    goto LABEL_13;
  }

  if (v13 == *MEMORY[0x277CEEC40])
  {
    v15 = 2;
    goto LABEL_13;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

void sub_23A61F4A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 60);
  if (a2)
  {
    if (v3 == 2)
    {
      v4 = MEMORY[0x277CEEC40];
    }

    else if (v3 == 1)
    {
      v4 = MEMORY[0x277CEEC38];
    }

    else
    {
      v4 = (v2 + 7);
    }

    v7 = v2[5];
    v6 = v2[6];
    v9 = v2[3];
    v8 = v2[4];
    v10 = v2[2];
    (*(v2[1] + 104))(v10, *v4, *v2);
  }

  else
  {
    if (v3 == 2)
    {
      v5 = MEMORY[0x277CEEC40];
    }

    else if (v3 == 1)
    {
      v5 = MEMORY[0x277CEEC38];
    }

    else
    {
      v5 = (v2 + 7);
    }

    v7 = v2[5];
    v11 = v2[6];
    v9 = v2[3];
    v8 = v2[4];
    v10 = v2[2];
    (*(v2[1] + 104))(v9, *v5, *v2);
  }

  sub_23A636630();
  free(v7);
  free(v8);
  free(v9);
  free(v10);

  free(v2);
}

uint64_t static CommunicationHandle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_23A61F610();
  return sub_23A6368E0() & 1;
}

unint64_t sub_23A61F610()
{
  result = qword_27DF98090;
  if (!qword_27DF98090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF98090);
  }

  return result;
}

uint64_t sub_23A61F664()
{
  sub_23A636C80();
  MEMORY[0x23EE87E60](0);
  return sub_23A636CA0();
}

uint64_t sub_23A61F6D0()
{
  sub_23A636C80();
  MEMORY[0x23EE87E60](0);
  return sub_23A636CA0();
}

uint64_t sub_23A61F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C646E61685FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23A636C10();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23A61F7B0(uint64_t a1)
{
  v2 = sub_23A61F9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A61F7EC(uint64_t a1)
{
  v2 = sub_23A61F9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationHandle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98098, &qword_23A637578);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61F9A8();
  v10 = v8;
  sub_23A636CC0();
  v12[1] = v10;
  sub_23A636670();
  sub_23A61FC9C(&qword_27DF980A8);
  sub_23A636BF0();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_23A61F9A8()
{
  result = qword_27DF980A0;
  if (!qword_27DF980A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980A0);
  }

  return result;
}

uint64_t CommunicationHandle.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  sub_23A6368F0();
  return sub_23A636CA0();
}

uint64_t CommunicationHandle.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF980B0, &qword_23A637580);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A61F9A8();
  sub_23A636CB0();
  if (!v2)
  {
    sub_23A636670();
    sub_23A61FC9C(&qword_27DF980B8);
    sub_23A636B70();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23A61FBF4()
{
  v1 = *v0;
  sub_23A636C80();
  sub_23A6368F0();
  return sub_23A636CA0();
}

uint64_t sub_23A61FC5C()
{
  v1 = *v0;
  sub_23A636C80();
  sub_23A6368F0();
  return sub_23A636CA0();
}

uint64_t sub_23A61FC9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23A636670();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A61FCE4()
{
  result = qword_27DF980C0;
  if (!qword_27DF980C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980C0);
  }

  return result;
}

unint64_t sub_23A61FD3C()
{
  result = qword_27DF980C8;
  if (!qword_27DF980C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980C8);
  }

  return result;
}

uint64_t sub_23A61FDC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_23A61F610();
  return sub_23A6368E0() & 1;
}

uint64_t sub_23A61FE04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = MEMORY[0x23EE87820]();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23A61FE30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_23A636660();
}

uint64_t sub_23A61FE84(uint64_t *a1, int a2)
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

uint64_t sub_23A61FECC(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CommunicationHandle.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CommunicationHandle.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_23A620014(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_23A6200A8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A62019C()
{
  result = qword_27DF980D0;
  if (!qword_27DF980D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980D0);
  }

  return result;
}

unint64_t sub_23A6201F4()
{
  result = qword_27DF980D8;
  if (!qword_27DF980D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980D8);
  }

  return result;
}

unint64_t sub_23A62024C()
{
  result = qword_27DF980E0;
  if (!qword_27DF980E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980E0);
  }

  return result;
}

unint64_t sub_23A6202A4()
{
  result = qword_27DF980E8;
  if (!qword_27DF980E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980E8);
  }

  return result;
}

unint64_t sub_23A6202FC()
{
  result = qword_27DF980F0;
  if (!qword_27DF980F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980F0);
  }

  return result;
}

unint64_t sub_23A620354()
{
  result = qword_27DF980F8;
  if (!qword_27DF980F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF980F8);
  }

  return result;
}

unint64_t sub_23A6203AC()
{
  result = qword_27DF98100;
  if (!qword_27DF98100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98100);
  }

  return result;
}

unint64_t sub_23A620404()
{
  result = qword_27DF98108;
  if (!qword_27DF98108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98108);
  }

  return result;
}

unint64_t sub_23A62045C()
{
  result = qword_27DF98110;
  if (!qword_27DF98110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98110);
  }

  return result;
}

unint64_t sub_23A6204B4()
{
  result = qword_27DF98118;
  if (!qword_27DF98118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98118);
  }

  return result;
}

unint64_t sub_23A62050C()
{
  result = qword_27DF98120;
  if (!qword_27DF98120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98120);
  }

  return result;
}

unint64_t sub_23A620564()
{
  result = qword_27DF98128;
  if (!qword_27DF98128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98128);
  }

  return result;
}

uint64_t sub_23A6205B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v4 || (sub_23A636C10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_23A636C10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_23A636C10();

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

uint64_t sub_23A6206FC(uint64_t a1)
{
  v172 = sub_23A6365C0();
  v2 = *(v172 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v172);
  v171 = &v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v149 - v7;
  v9 = sub_23A6366D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v199 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v198 = &v149 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v151 = &v149 - v17;
  v153 = sub_23A636290();
  v152 = *(v153 - 8);
  v18 = *(v152 + 64);
  v19 = MEMORY[0x28223BE20](v153);
  v197 = &v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v154 = &v149 - v21;
  v150 = sub_23A636600();
  v149 = *(v150 - 8);
  v22 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v161 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_23A636700();
  v159 = *(v166 - 8);
  v24 = *(v159 + 64);
  v25 = MEMORY[0x28223BE20](v166);
  v165 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v164 = &v149 - v28;
  MEMORY[0x28223BE20](v27);
  v163 = &v149 - v29;
  v188 = sub_23A636610();
  v30 = *(v188 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v188);
  v187 = &v149 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v186 = &v149 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v196 = &v149 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v185 = &v149 - v39;
  MEMORY[0x28223BE20](v38);
  v195 = &v149 - v40;
  v194 = type metadata accessor for CommunicationTopic.PersonInformation();
  v184 = *(v194 - 8);
  v41 = *(v184 + 64);
  MEMORY[0x28223BE20](v194);
  v201 = (&v149 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98170, &qword_23A637C60);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v160 = &v149 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v48 = &v149 - v47;
  v49 = sub_23A636330();
  v155 = *(v49 - 8);
  v50 = *(v155 + 56);
  v162 = v48;
  v158 = v49;
  v157 = v155 + 56;
  v156 = v50;
  (v50)(v48, 1, 1);
  v51 = *(*a1 + 120);
  v189 = a1;
  v52 = (a1 + v51);
  v53 = *v52;
  v168 = v52[1];
  v183 = *(v53 + 16);
  if (v183)
  {
    v54 = 0;
    v193 = (v30 + 16);
    v180 = (v30 + 88);
    v179 = *MEMORY[0x277CEEC30];
    v169 = *MEMORY[0x277CEEC38];
    v167 = *MEMORY[0x277CEEC40];
    v192 = (v30 + 8);
    v178 = (v30 + 104);
    v177 = (v30 + 32);
    v170 = (v2 + 8);
    v176 = (v10 + 16);
    v175 = v10 + 8;
    v174 = v10 + 32;
    v55 = MEMORY[0x277D84F90];
    v181 = v10;
    v56 = v188;
    v182 = v9;
    v190 = v53;
    v173 = v8;
    while (v54 < *(v53 + 16))
    {
      v200 = v55;
      v57 = v201;
      sub_23A628E60(v53 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v54, v201);
      v58 = *v57;
      v59 = v196;
      sub_23A636620();
      v60 = *v193;
      v61 = v186;
      (*v193)(v186, v59, v56);
      v62 = (*v180)(v61, v56);
      v63 = v179;
      if (v62 != v179)
      {
        v63 = v169;
        if (v62 != v169)
        {
          v63 = v167;
          if (v62 != v167)
          {
            goto LABEL_86;
          }
        }
      }

      v191 = *v192;
      v191(v196, v56);
      v64 = v185;
      (*v178)(v185, v63, v56);
      v65 = v195;
      (*v177)(v195, v64, v56);
      v66 = sub_23A636280();
      MEMORY[0x23EE87820](v66);
      v60(v187, v65, v56);
      v67 = objc_allocWithZone(sub_23A636670());
      sub_23A636640();
      v69 = v201[1];
      v68 = v201[2];
      sub_23A628F84(v201 + *(v194 + 24), v8, &qword_27DF98160, &unk_23A637C50);
      v70 = sub_23A636200();
      v71 = *(v70 - 8);
      v72 = (*(v71 + 48))(v8, 1, v70);

      if (v72 == 1)
      {
        sub_23A6291D4(v8, &qword_27DF98160, &unk_23A637C50);
      }

      else
      {
        sub_23A6361F0();
        (*(v71 + 8))(v8, v70);
      }

      if (*(v201 + *(v194 + 28)))
      {
        v73 = *(v190 + 16);
        v74 = v171;
        sub_23A6365B0();
        v204[3] = sub_23A636590();
        v204[4] = MEMORY[0x277CEEB58];
        __swift_allocate_boxed_opaque_existential_1(v204);
        sub_23A636580();
        sub_23A6365A0();
        (*v170)(v74, v172);
        __swift_destroy_boxed_opaque_existential_1(v204);
      }

      v75 = v198;
      sub_23A6366A0();
      v76 = v182;
      (*v176)(v199, v75, v182);
      v55 = v200;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_23A631618(0, v55[2] + 1, 1, v55);
      }

      v8 = v173;
      v78 = v55[2];
      v77 = v55[3];
      v79 = v181;
      v56 = v188;
      if (v78 >= v77 >> 1)
      {
        v55 = sub_23A631618(v77 > 1, v78 + 1, 1, v55);
      }

      ++v54;
      (*(v79 + 8))(v198, v76);
      v191(v195, v56);
      v55[2] = v78 + 1;
      (*(v79 + 32))(v55 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v78, v199, v76);
      sub_23A628EC4(v201);
      v53 = v190;
      if (v183 == v54)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_82;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_19:
  v204[0] = MEMORY[0x277D84FA0];
  v80 = v168 + 56;
  v81 = 1 << *(v168 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v168 + 56);
  LODWORD(v197) = *MEMORY[0x277CEECA0];
  v84 = (v81 + 63) >> 6;
  v201 = (v159 + 104);
  LODWORD(v196) = *MEMORY[0x277CEEC88];
  LODWORD(v195) = *MEMORY[0x277CEEC78];
  LODWORD(v194) = *MEMORY[0x277CEECB0];
  LODWORD(v193) = *MEMORY[0x277CEECB8];
  LODWORD(v192) = *MEMORY[0x277CEECA8];
  LODWORD(v191) = *MEMORY[0x277CEEC80];
  LODWORD(v190) = *MEMORY[0x277CEEC70];
  LODWORD(v188) = *MEMORY[0x277CEEC90];
  v198 = (v159 + 8);
  v199 = (v159 + 16);
  LODWORD(v187) = *MEMORY[0x277CEEC98];

  v85 = 0;
  v200 = v55;
  v86 = v166;
LABEL_32:
  if (v83)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v94 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    if (v94 >= v84)
    {
      break;
    }

    v83 = *(v80 + 8 * v94);
    ++v85;
    if (v83)
    {
      v85 = v94;
LABEL_37:
      v95 = *(*(v168 + 48) + (__clz(__rbit64(v83)) | (v85 << 6)));
      if (v95 > 4)
      {
        v87 = v197;
        if (v95 == 8)
        {
          v87 = v196;
        }

        if (v95 == 7)
        {
          v87 = v195;
        }

        v88 = v194;
        if (v95 == 5)
        {
          v88 = v193;
        }

        if (v95 <= 6)
        {
          v89 = v88;
        }

        else
        {
          v89 = v87;
        }
      }

      else if (v95 <= 1)
      {
        if (v95)
        {
          v89 = v188;
        }

        else
        {
          v89 = v187;
        }
      }

      else
      {
        v96 = v192;
        if (v95 == 3)
        {
          v96 = v191;
        }

        if (v95 == 2)
        {
          v89 = v190;
        }

        else
        {
          v89 = v96;
        }
      }

      v83 &= v83 - 1;
      v90 = v163;
      (*v201)(v163, v89, v86);
      v91 = v165;
      (*v199)(v165, v90, v86);
      v92 = v164;
      sub_23A624E5C(v164, v91);
      v93 = *v198;
      (*v198)(v92, v86);
      v93(v90, v86);
      goto LABEL_32;
    }
  }

  v97 = objc_allocWithZone(sub_23A636720());
  v98 = sub_23A6366E0();
  v99 = v162;
  sub_23A6291D4(v162, &qword_27DF98170, &qword_23A637C60);
  *v99 = v98;
  v100 = v158;
  (*(v155 + 104))(v99, *MEMORY[0x277CEEAD0], v158);
  v156(v99, 0, 1, v100);
  v101 = objc_opt_self();
  v102 = [v101 mainBundle];
  v103 = [v102 localizedInfoDictionary];

  if (!v103)
  {
    goto LABEL_55;
  }

  v104 = sub_23A636770();

  if (!*MEMORY[0x277CBED50])
  {
    goto LABEL_85;
  }

  v105 = sub_23A6367B0();
  if (!*(v104 + 16))
  {

    goto LABEL_54;
  }

  v107 = sub_23A632D50(v105, v106);
  v109 = v108;

  if ((v109 & 1) == 0)
  {
LABEL_54:

    goto LABEL_55;
  }

  sub_23A628FEC(*(v104 + 56) + 32 * v107, v204);

  if (swift_dynamicCast())
  {
LABEL_59:
    v115 = v203;
    v116 = v189;
    goto LABEL_69;
  }

LABEL_55:
  v110 = [v101 mainBundle];
  v111 = [v110 localizedInfoDictionary];

  if (v111)
  {
    v112 = sub_23A636770();

    if (*(v112 + 16) && (v113 = sub_23A632D50(0xD000000000000013, 0x800000023A63B320), (v114 & 1) != 0))
    {
      sub_23A628FEC(*(v112 + 56) + 32 * v113, v204);

      if (swift_dynamicCast())
      {
        goto LABEL_59;
      }
    }

    else
    {
    }
  }

  v117 = [v101 mainBundle];
  v118 = [v117 localizedInfoDictionary];

  v116 = v189;
  if (!v118)
  {
    goto LABEL_68;
  }

  v119 = sub_23A636770();

  if (!*(v119 + 16) || (v120 = sub_23A632D50(0x656C646E75424643, 0xEC000000656D614ELL), (v121 & 1) == 0))
  {

LABEL_68:
    v115 = 0;
    goto LABEL_69;
  }

  sub_23A628FEC(*(v119 + 56) + 32 * v120, v204);

  if (swift_dynamicCast())
  {
    v115 = v203;
  }

  else
  {
    v115 = 0;
  }

LABEL_69:
  v122 = [objc_opt_self() defaultStore];
  if (!v122)
  {
    goto LABEL_84;
  }

  v123 = v122;
  v124 = [v122 aa_primaryAppleAccount];

  v200 = v124;
  v201 = v115;
  if (v124)
  {
    v125 = [v124 aa_firstName];
    if (v125)
    {
      v126 = v125;
      sub_23A6367B0();
    }
  }

  sub_23A628F84(v162, v160, &qword_27DF98170, &qword_23A637C60);
  v127 = (v116 + qword_27DF9C740);
  swift_beginAccess();
  v129 = *v127;
  v128 = v127[1];
  v130 = (v189 + qword_27DF9C748);
  swift_beginAccess();
  v131 = *v130;
  v132 = v130[1];
  v133 = v189;

  sub_23A6365D0();
  sub_23A636440();
  (*(v152 + 16))(v154, v133 + qword_27DF9C738, v153);
  v134 = objc_allocWithZone(sub_23A636400());
  sub_23A6363E0();
  sub_23A6365E0();
  sub_23A6365F0();
  v135 = sub_23A6363C0();
  v136 = *(*v133 + 128);
  swift_beginAccess();
  v137 = *(v133 + v136);
  v138 = *(v137 + 16);
  if (v138)
  {
    v202 = MEMORY[0x277D84F90];

    sub_23A636AC0();
    v139 = 0;
    do
    {
      if (v139 >= *(v137 + 16))
      {
        goto LABEL_83;
      }

      v140 = *(v137 + 8 * v139 + 32);
      sub_23A636460();
      sub_23A636490();
      v141 = objc_allocWithZone(sub_23A6364B0());
      sub_23A636450();
      if ((sub_23A636470() - 1) > 1u)
      {
        goto LABEL_86;
      }

      ++v139;
      sub_23A636480();

      sub_23A636AA0();
      v142 = *(v202 + 16);
      sub_23A636AD0();
      sub_23A636AE0();
      sub_23A636AB0();
      v133 = v189;
    }

    while (v138 != v139);
  }

  sub_23A636350();
  v143 = *(*v133 + 136);
  swift_beginAccess();
  v144 = *(v133 + v143);
  sub_23A636460();
  sub_23A636490();
  v145 = objc_allocWithZone(sub_23A6364B0());
  sub_23A636450();
  if ((sub_23A636470() - 1) > 1u)
  {
    while (1)
    {
LABEL_86:
      sub_23A636AF0();
      __break(1u);
    }
  }

  sub_23A636480();

  sub_23A6363B0();
  v146 = *(*v133 + 144);
  swift_beginAccess();
  sub_23A628F84(v133 + v146, v151, &qword_27DF98168, &qword_23A639340);
  sub_23A636370();
  v147 = v162;
  sub_23A628F84(v162, v160, &qword_27DF98170, &qword_23A637C60);
  sub_23A636320();
  sub_23A636390();

  (*(v149 + 8))(v161, v150);
  sub_23A6291D4(v147, &qword_27DF98170, &qword_23A637C60);
  return v135;
}

uint64_t sub_23A621F84(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v23 = MEMORY[0x277D84F90];
    sub_23A636AC0();
    v4 = v1 + 56;
    v5 = -1 << *(v1 + 32);
    result = sub_23A636920();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 64;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 48) + 8 * v6);
      sub_23A636AA0();
      v12 = *(v23 + 16);
      sub_23A636AD0();
      v1 = v21;
      sub_23A636AE0();
      result = sub_23A636AB0();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_23A62909C(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_23A62909C(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_23A622198(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_23A636990();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_23A627898(0, v2 & ~(v2 >> 63), 0);
    v3 = v37;
    if (v31)
    {
      v4 = sub_23A636940();
    }

    else
    {
      v6 = -1 << *(v1 + 32);
      v4 = sub_23A636920();
      v5 = *(v1 + 36);
    }

    v34 = v4;
    v35 = v5;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v7 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v7 < v2)
      {
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_36;
        }

        v11 = v34;
        v10 = v35;
        v12 = v36;
        v13 = v1;
        sub_23A627B38(v34, v35, v36, v1);
        v15 = v14;
        v37 = v3;
        v17 = *(v3 + 16);
        v16 = *(v3 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_23A627898((v16 > 1), v17 + 1, 1);
          v3 = v37;
        }

        *(v3 + 16) = v17 + 1;
        *(v3 + 8 * v17 + 32) = v15;
        v32 = v3;
        if (v31)
        {
          if (!v12)
          {
            goto LABEL_41;
          }

          v1 = v13;
          if (sub_23A636960())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981A0, &qword_23A637C78);
          v8 = sub_23A636890();
          sub_23A6369D0();
          v8(v33, 0);
        }

        else
        {
          if (v12)
          {
            goto LABEL_42;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v13;
          v18 = 1 << *(v13 + 32);
          if (v11 >= v18)
          {
            goto LABEL_37;
          }

          v19 = v11 >> 6;
          v20 = *(v29 + 8 * (v11 >> 6));
          if (((v20 >> v11) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v13 + 36) != v10)
          {
            goto LABEL_39;
          }

          v21 = v20 & (-2 << (v11 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_23A62909C(v11, v10, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_32;
              }
            }

            sub_23A62909C(v11, v10, 0);
          }

LABEL_32:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
        }

        v3 = v32;
        if (v7 == v2)
        {
          sub_23A62909C(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

void sub_23A6224CC(uint64_t *a1@<X8>)
{
  v3 = sub_23A636570();
  v4 = sub_23A622634(v3);

  if (!v1)
  {
    v5 = sub_23A636560();
    if ((sub_23A636470() - 1) >= 2u)
    {
      sub_23A636AF0();
      __break(1u);
    }

    else
    {
      sub_23A636460();
      sub_23A636490();
      sub_23A636800();
      v6 = objc_allocWithZone(sub_23A6364B0());
      v7 = sub_23A636450();
      sub_23A636480();

      *a1 = v4;
      a1[1] = v7;
    }
  }
}

uint64_t sub_23A622634(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98168, &qword_23A639340);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98200, &qword_23A637CB8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - v10;
  v12 = sub_23A636290();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  sub_23A622DE4(v74);
  if (v1)
  {
    return v2;
  }

  v66 = v11;
  v67 = v13;
  v65 = 0;
  v20 = sub_23A6363A0();
  if (!v20)
  {
    sub_23A629180();
    v2 = swift_allocError();
    *v34 = 1;
    swift_willThrow();
    goto LABEL_24;
  }

  v21 = v20;
  v58 = v17;
  v61 = v19;
  if ((sub_23A636470() - 1) < 2u)
  {
    sub_23A636460();
    v62 = v21;
    v72 = sub_23A636490();
    v73 = v22;
    sub_23A636800();
    v71 = sub_23A6364B0();
    v23 = objc_allocWithZone(v71);
    v60 = sub_23A636450();
    sub_23A636480();
    v24 = sub_23A636340();
    v25 = v24;
    if (v24 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23A636990())
    {
      v63 = v12;
      v64 = a1;
      v59 = v7;
      if (!i)
      {
        break;
      }

      a1 = 0;
      v69 = v25 & 0xFFFFFFFFFFFFFF8;
      v70 = v25 & 0xC000000000000001;
      v27 = MEMORY[0x277D84F90];
      v68 = v25;
      while (1)
      {
        if (v70)
        {
          v28 = MEMORY[0x23EE87C10](a1, v25);
        }

        else
        {
          if (a1 >= *(v69 + 16))
          {
            goto LABEL_28;
          }

          v28 = *(v25 + 8 * a1 + 32);
        }

        v29 = v28;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        v75 = (a1 + 1);
        v12 = i;
        if ((sub_23A636470() - 1) >= 2u)
        {
          goto LABEL_30;
        }

        sub_23A636460();
        v72 = sub_23A636490();
        v73 = v30;
        sub_23A636800();
        v31 = objc_allocWithZone(v71);
        v32 = sub_23A636450();
        sub_23A636480();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_23A631844(0, *(v27 + 2) + 1, 1, v27);
        }

        v7 = *(v27 + 2);
        v33 = *(v27 + 3);
        if (v7 >= v33 >> 1)
        {
          v27 = sub_23A631844((v33 > 1), v7 + 1, 1, v27);
        }

        *(v27 + 2) = v7 + 1;
        *&v27[8 * v7 + 32] = v32;
        ++a1;
        v25 = v68;
        if (v75 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    v27 = MEMORY[0x277D84F90];
LABEL_22:

    sub_23A6363D0();
    v35 = v66;
    sub_23A636270();

    v36 = v67;
    v37 = v63;
    if ((*(v67 + 48))(v35, 1, v63) != 1)
    {
      v75 = *(v36 + 32);
      v40 = v61;
      v75(v61, v35, v37);
      sub_23A636410();

      sub_23A636430();

      v41 = v58;
      (*(v36 + 16))(v58, v40, v37);
      v42 = v74[0];
      v71 = v74[1];
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98210, &qword_23A637CC0);
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      v2 = swift_allocObject();
      v46 = v27;
      v47 = *(*v2 + 144);
      v48 = sub_23A636260();
      (*(*(v48 - 8) + 56))(v2 + v47, 1, 1, v48);
      v75((v2 + qword_27DF9C738), v41, v37);
      v49 = (v2 + qword_27DF9C740);
      *v49 = 0;
      v49[1] = 0xE000000000000000;
      v50 = (v2 + qword_27DF9C748);
      *v50 = 0;
      v50[1] = 0xE000000000000000;
      v51 = (v2 + *(*v2 + 120));
      v52 = v71;
      *v51 = v42;
      v51[1] = v52;
      *(v2 + *(*v2 + 128)) = v46;
      v53 = v60;
      *(v2 + *(*v2 + 136)) = v60;

      v54 = v53;
      v55 = v59;
      sub_23A636360();

      (*(v36 + 8))(v61, v37);

      v56 = *(*v2 + 144);
      swift_beginAccess();
      sub_23A6292F0(v55, v2 + v56, &qword_27DF98168, &qword_23A639340);
      swift_endAccess();
      return v2;
    }

    sub_23A6291D4(v35, &qword_27DF98200, &qword_23A637CB8);
    sub_23A629180();
    v2 = swift_allocError();
    *v38 = 5;
    swift_willThrow();

LABEL_24:

    return v2;
  }

LABEL_30:
  result = sub_23A636AF0();
  __break(1u);
  return result;
}

void sub_23A622DE4(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v131 = &v104 - v4;
  v5 = type metadata accessor for CommunicationTopic.PersonInformation();
  v124 = *(v5 - 8);
  v125 = v5;
  v6 = *(v124 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v137 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v136 = (&v104 - v9);
  v10 = sub_23A636610();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v127 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v126 = &v104 - v15;
  v138 = sub_23A6366D0();
  v129 = *(v138 - 8);
  v16 = *(v129 + 64);
  MEMORY[0x28223BE20](v138);
  v128 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_23A636700();
  v114 = *(v113 - 8);
  v18 = *(v114 + 64);
  v19 = MEMORY[0x28223BE20](v113);
  v112 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v111 = &v104 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98170, &qword_23A637C60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v104 - v24;
  v26 = sub_23A636330();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29);
  v33 = &v104 - v32;
  sub_23A636310();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_23A6291D4(v25, &qword_27DF98170, &qword_23A637C60);
    v34 = sub_23A636380();
    if (v35 >> 60 == 15)
    {
      sub_23A629180();
      swift_allocError();
      *v36 = 0;
      swift_willThrow();
    }

    else
    {
      v106 = a1;
      v75 = v34;
      v76 = v35;
      v77 = sub_23A6361B0();
      v78 = *(v77 + 48);
      v79 = *(v77 + 52);
      swift_allocObject();
      sub_23A6361A0();
      sub_23A629234();
      v80 = v130;
      sub_23A636190();

      sub_23A629288(v75, v76);
      if (!v80)
      {
        v82 = v139;
        v81 = v140;
LABEL_65:
        v103 = v106;
        *v106 = v82;
        v103[1] = v81;
      }
    }

    return;
  }

  (*(v27 + 32))(v33, v25, v26);
  (*(v27 + 16))(v31, v33, v26);
  if ((*(v27 + 88))(v31, v26) != *MEMORY[0x277CEEAD0])
  {
    sub_23A629180();
    swift_allocError();
    *v83 = 0;
    swift_willThrow();
    v84 = *(v27 + 8);
    v84(v33, v26);
    v84(v31, v26);
    return;
  }

  v108 = v33;
  v106 = a1;
  v109 = v27;
  v37 = *(v27 + 96);
  v110 = v26;
  v37(v31, v26);
  v105 = *v31;
  v38 = sub_23A6366F0();
  v39 = v38;
  v123 = *(v38 + 16);
  if (v123)
  {
    v40 = 0;
    v122 = v38 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v120 = (v11 + 88);
    v121 = v129 + 16;
    v141 = *MEMORY[0x277CEEC30];
    v115 = *MEMORY[0x277CEEC38];
    v107 = *MEMORY[0x277CEEC40];
    v119 = (v11 + 104);
    v116 = (v129 + 8);
    v41 = MEMORY[0x277D84F90];
    v118 = v10;
    v42 = v128;
    v117 = v38;
    while (1)
    {
      if (v40 >= *(v39 + 16))
      {
        goto LABEL_68;
      }

      (*(v129 + 16))(v42, v122 + *(v129 + 72) * v40, v138);
      v43 = sub_23A636680();
      if (v44 >> 60 == 15)
      {
        goto LABEL_12;
      }

      v45 = v43;
      v46 = v44;
      v47 = sub_23A636240();
      v48 = CGImageSourceCreateWithData(v47, 0);

      if (!v48)
      {
        break;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v48, 0, 0);
      sub_23A629288(v45, v46);

LABEL_13:
      v49 = sub_23A6366C0();
      v50 = v126;
      sub_23A636620();

      v51 = (*v120)(v50, v10);
      v52 = v141;
      if (v51 != v141)
      {
        v52 = v115;
        if (v51 != v115)
        {
          v52 = v107;
          if (v51 != v107)
          {
            goto LABEL_70;
          }
        }
      }

      v53 = sub_23A6366C0();
      MEMORY[0x23EE87820]();

      (*v119)(v127, v52, v10);
      v54 = objc_allocWithZone(sub_23A636670());
      v55 = sub_23A636640();
      v56 = sub_23A636690();
      v58 = v57;
      sub_23A6366B0();
      v135 = v41;
      v132 = v58;
      v133 = v40;
      if (v59)
      {

        sub_23A6366B0();
        if (!v60)
        {
          goto LABEL_69;
        }

        v61 = v130;
        sub_23A636210();
        v62 = v56;
        v63 = v55;
        if (!v61)
        {
          v130 = 0;
          v64 = 0;
          goto LABEL_23;
        }

        v130 = 0;
      }

      else
      {
        v62 = v56;
        v63 = v55;
      }

      v64 = 1;
LABEL_23:
      v65 = sub_23A636200();
      v66 = *(*(v65 - 8) + 56);
      v67 = v131;
      v66(v131, v64, 1, v65);
      v68 = v125;
      v69 = *(v125 + 24);
      v70 = v136;
      v66(v136 + v69, 1, 1, v65);
      v71 = *(v68 + 28);
      *v70 = v63;
      v70[1] = v62;
      v70[2] = v132;
      sub_23A6292F0(v67, v70 + v69, &qword_27DF98160, &unk_23A637C50);
      *(v70 + v71) = ImageAtIndex;
      sub_23A628E60(v70, v137);
      v41 = v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_23A631640(0, v41[2] + 1, 1, v41);
      }

      v10 = v118;
      v39 = v117;
      v72 = v133;
      v74 = v41[2];
      v73 = v41[3];
      v42 = v128;
      if (v74 >= v73 >> 1)
      {
        v41 = sub_23A631640(v73 > 1, v74 + 1, 1, v41);
      }

      v40 = (v72 + 1);
      (*v116)(v42, v138);
      v41[2] = v74 + 1;
      sub_23A629358(v137, v41 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v74);
      sub_23A628EC4(v136);
      if (v123 == v40)
      {
        goto LABEL_33;
      }
    }

    sub_23A629288(v45, v46);
LABEL_12:
    ImageAtIndex = 0;
    goto LABEL_13;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_33:
  v135 = v41;

  v139 = MEMORY[0x277D84FA0];
  v85 = sub_23A636710();
  v86 = 0;
  v87 = *(v85 + 56);
  v88 = 1 << *(v85 + 32);
  LODWORD(v138) = *MEMORY[0x277CEEC98];
  v89 = -1;
  if (v88 < 64)
  {
    v89 = ~(-1 << v88);
  }

  v90 = v89 & v87;
  v91 = (v88 + 63) >> 6;
  v136 = (v114 + 32);
  v137 = v114 + 16;
  ImageAtIndex = (v114 + 88);
  LODWORD(v133) = *MEMORY[0x277CEEC90];
  LODWORD(v132) = *MEMORY[0x277CEEC70];
  LODWORD(v131) = *MEMORY[0x277CEEC80];
  LODWORD(v129) = *MEMORY[0x277CEECA8];
  LODWORD(v128) = *MEMORY[0x277CEECB8];
  LODWORD(v127) = *MEMORY[0x277CEECB0];
  LODWORD(v126) = *MEMORY[0x277CEEC78];
  LODWORD(v125) = *MEMORY[0x277CEEC88];
  v123 = (v114 + 8);
  LODWORD(v124) = *MEMORY[0x277CEECA0];
  v92 = v110;
  v93 = v109;
  v94 = v108;
  for (i = v111; v90; v94 = v108)
  {
LABEL_40:
    v97 = __clz(__rbit64(v90));
    v90 &= v90 - 1;
    v98 = v114;
    v99 = v113;
    (*(v114 + 16))(i, *(v85 + 48) + *(v114 + 72) * (v97 | (v86 << 6)), v113);
    v100 = v112;
    (*(v98 + 32))(v112, i, v99);
    v101 = (*(v98 + 88))(v100, v99);
    if (v101 == v138)
    {
      v102 = 0;
    }

    else if (v101 == v133)
    {
      v102 = 1;
    }

    else if (v101 == v132)
    {
      v102 = 2;
    }

    else if (v101 == v131)
    {
      v102 = 3;
    }

    else if (v101 == v129)
    {
      v102 = 4;
    }

    else if (v101 == v128)
    {
      v102 = 5;
    }

    else if (v101 == v127)
    {
      v102 = 6;
    }

    else if (v101 == v126)
    {
      v102 = 7;
    }

    else if (v101 == v125)
    {
      v102 = 8;
    }

    else
    {
      if (v101 != v124)
      {
        (*v123)(v112, v113);
        goto LABEL_61;
      }

      v102 = 9;
    }

    sub_23A62513C(&v142, v102);
LABEL_61:
    v92 = v110;
    v93 = v109;
  }

  while (1)
  {
    v96 = v86 + 1;
    if (__OFADD__(v86, 1))
    {
      break;
    }

    if (v96 >= v91)
    {
      (*(v93 + 8))(v94, v92);

      v81 = v139;
      v82 = v135;
      goto LABEL_65;
    }

    v90 = *(v85 + 56 + 8 * v96);
    ++v86;
    if (v90)
    {
      v86 = v96;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  sub_23A636AF0();
  __break(1u);
}

uint64_t sub_23A623BD4()
{
  type metadata accessor for CommunicationLimits();
  v0 = swift_allocObject();
  type metadata accessor for AskCenter();
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_27DF98130 = v0;
  return result;
}

uint64_t static CommunicationLimits.current.getter()
{
  if (qword_27DF97FE0 != -1)
  {
    swift_once();
  }
}

char *CommunicationLimits.updates.getter@<X0>(char **a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98138, &qword_23A637BD0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_23A624594(0);
  *a1 = result;
  return result;
}

uint64_t sub_23A623CD0()
{
  v0 = sub_23A636750();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_23A636740();
  qword_27DF9C730 = result;
  return result;
}

uint64_t sub_23A623D34()
{
  v1 = v0[12];
  v0[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98140, &qword_23A637BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A637BC0;
  *(inited + 32) = v1;
  v3 = v1;
  sub_23A627FCC(inited);
  v5 = v4;
  v0[14] = v4;
  swift_setDeallocating();
  sub_23A628158(inited + 32);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_23A623E40;

  return sub_23A628390(v5);
}

uint64_t sub_23A623E40(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_23A623F60, 0, 0);
}

uint64_t sub_23A623F60()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A637BC0;
  *(inited + 32) = v3;
  v5 = v3;
  sub_23A627FCC(inited);
  v7 = v6;
  swift_setDeallocating();
  sub_23A628158(inited + 32);
  v8 = sub_23A6241D0(v1, v7);

  v9 = v0[1];

  return v9(v8 & 1);
}

uint64_t CommunicationLimits.knownHandles(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A6240D4;

  return sub_23A628390(a1);
}

uint64_t sub_23A6240D4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23A6241D0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = v8;
  v23 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v24 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v14 = *(a2 + 40);
      sub_23A636C80();
      v15 = v13;
      sub_23A6368F0();
      v16 = sub_23A636CA0();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
      while (1)
      {
        v20 = *(*(a2 + 48) + 8 * v18);
        v21 = sub_23A6368E0();

        if (v21)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v8 = v22;
      result = v23;
      v7 = v24;
      if (!v24)
      {
        goto LABEL_8;
      }
    }

LABEL_21:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v24 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t CommunicationLimits.ask(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A624448;

  return sub_23A628710(a1);
}

uint64_t sub_23A624448()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t CommunicationLimits.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CommunicationLimits.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_23A624594(int a1)
{
  v2 = v1;
  v26 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B8, &qword_23A637C88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981C0, &qword_23A637C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981C8, &qword_23A637C98);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v1 + 2) = sub_23A636540();
  if (MEMORY[0x277D84F90] >> 62 && sub_23A636990())
  {
    v15 = sub_23A627D38(MEMORY[0x277D84F90]);
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  *(v1 + 3) = v15;
  v16 = *(*v1 + 112);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981D0, &qword_23A637CA0);
  v18 = *(*(v17 - 8) + 56);
  v18(&v2[v16], 1, 1, v17);
  *&v2[*(*v2 + 120)] = &type metadata for CommunicationTopic;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981D8, &qword_23A637CA8);
  (*(v4 + 104))(v7, *MEMORY[0x277D85778], v3);
  sub_23A636870();

  v18(v11, 0, 1, v17);
  v19 = *(*v2 + 112);
  swift_beginAccess();
  sub_23A6292F0(v11, &v2[v19], &qword_27DF981C0, &qword_23A637C90);
  swift_endAccess();
  if ((v26 & 1) == 0)
  {
    type metadata accessor for GenericAskToResponseListener();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_23A6290EC;
    *(v20 + 24) = v2;
    v21 = objc_allocWithZone(sub_23A636400());

    v22 = sub_23A6363E0();
    sub_23A636500();
    v23 = sub_23A6364D0();

    sub_23A6364E0();
  }

  return v2;
}

uint64_t sub_23A624940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 16);
    (*(v3 + 16))(v6, a1, v2);
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    (*(v3 + 32))(v9 + v8, v6, v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981C8, &qword_23A637C98);
    sub_23A6294CC(&qword_27DF98230, &qword_27DF981C8, &qword_23A637C98);
    sub_23A636550();

    swift_beginAccess();
    sub_23A636510();
    swift_endAccess();
  }

  return result;
}

void sub_23A624B54()
{
  v1 = v0;
  v2 = sub_23A6368C0();
  sub_23A629138(0, &qword_27DF981F8, 0x277D86200);
  v3 = sub_23A636900();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_23A62C83C(0xD00000000000001BLL, 0x800000023A63B450, &v17);
    _os_log_impl(&dword_23A61C000, v3, v2, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x23EE88420](v5, -1, -1);
    MEMORY[0x23EE88420](v4, -1, -1);
  }

  v6 = sub_23A636570();
  v7 = sub_23A636420();

  v8 = sub_23A6363F0();
  v10 = v9;

  if (v8 == 0xD00000000000002DLL && 0x800000023A63B2C0 == v10)
  {

LABEL_7:
    sub_23A6224CC(&v17);
    v12 = v17;
    v13 = v18;
    sub_23A6368C0();
    v14 = sub_23A636900();
    sub_23A636300();

    v15 = *(v1 + 16);
    v17 = v12;
    v18 = v13;
    sub_23A636530();

    return;
  }

  v11 = sub_23A636C10();

  if (v11)
  {
    goto LABEL_7;
  }

  sub_23A6368A0();
  v16 = sub_23A636900();
  sub_23A636300();
}

uint64_t sub_23A624E5C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23A636700();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0]);
  v36 = a2;
  v13 = sub_23A636780();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_23A6290F0(&qword_27DF98180, MEMORY[0x277CEECC0]);
      v23 = sub_23A636790();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_23A626228(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_23A62513C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_23A636C80();
  MEMORY[0x23EE87E60](a2);
  v7 = sub_23A636CA0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_23A6264CC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_23A625234(void *a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_23A636C80();
  sub_23A6368F0();
  v7 = sub_23A636CA0();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_23A6368E0();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *(*(v5 + 48) + 8 * v9);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    v15 = a2;
    sub_23A626618(v15, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_23A625388(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_23A6369A0();

    if (v9)
    {

      sub_23A636670();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_23A636990();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_23A6255A0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_23A625F7C(v22 + 1);
    }

    v20 = v8;
    sub_23A6261A4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_23A636670();
  v11 = *(v6 + 40);
  v12 = sub_23A6368D0();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_23A6267A8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_23A6368E0();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_23A6255A0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
    v2 = sub_23A636A00();
    v16 = v2;
    sub_23A636950();
    if (sub_23A6369C0())
    {
      sub_23A636670();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_23A625F7C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_23A6368D0();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_23A6369C0());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_23A625780(uint64_t a1)
{
  v2 = v1;
  v41 = sub_23A636700();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98188, &qword_23A637C68);
  result = sub_23A6369F0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0]);
      result = sub_23A636780();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_23A625ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98220, &qword_23A637CC8);
  result = sub_23A6369F0();
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
      sub_23A636C80();
      MEMORY[0x23EE87E60](v18);
      result = sub_23A636CA0();
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

uint64_t sub_23A625D2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
  result = sub_23A6369F0();
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_23A636C80();
      sub_23A6368F0();
      result = sub_23A636CA0();
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
      *(*(v6 + 48) + 8 * v14) = v18;
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

uint64_t sub_23A625F7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
  result = sub_23A6369F0();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_23A6368D0();
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
      *(*(v6 + 48) + 8 * v14) = v18;
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

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_23A6261A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_23A6368D0();
  v5 = -1 << *(a2 + 32);
  result = sub_23A636930();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_23A626228(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_23A636700();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625780(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_23A626908();
      goto LABEL_12;
    }

    sub_23A626F20(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0]);
  v15 = sub_23A636780();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_23A6290F0(&qword_27DF98180, MEMORY[0x277CEECC0]);
      v23 = sub_23A636790();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23A636C20();
  __break(1u);
  return result;
}

uint64_t sub_23A6264CC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625ADC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_23A626B40();
      a2 = v7;
      goto LABEL_12;
    }

    sub_23A62723C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23A636C80();
  MEMORY[0x23EE87E60](v4);
  result = sub_23A636CA0();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23A636C20();
  __break(1u);
  return result;
}

void sub_23A626618(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625D2C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_23A626C80();
      goto LABEL_12;
    }

    sub_23A62745C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_23A636C80();
  sub_23A6368F0();
  v10 = sub_23A636CA0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_23A6368E0();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23A636C20();
  __break(1u);
}

void sub_23A6267A8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A625F7C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_23A626DD0();
      goto LABEL_12;
    }

    sub_23A627684(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_23A6368D0();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_23A636670();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_23A6368E0();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23A636C20();
  __break(1u);
}

void *sub_23A626908()
{
  v1 = v0;
  v2 = sub_23A636700();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98188, &qword_23A637C68);
  v7 = *v0;
  v8 = sub_23A6369E0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_23A626B40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98220, &qword_23A637CC8);
  v2 = *v0;
  v3 = sub_23A6369E0();
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

id sub_23A626C80()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
  v2 = *v0;
  v3 = sub_23A6369E0();
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
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_23A626DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
  v2 = *v0;
  v3 = sub_23A6369E0();
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
    v10 = *(v2 + 56);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_23A626F20(uint64_t a1)
{
  v2 = v1;
  v37 = sub_23A636700();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98188, &qword_23A637C68);
  v10 = sub_23A6369F0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_23A6290F0(&qword_27DF98178, MEMORY[0x277CEECC0]);
      result = sub_23A636780();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_23A62723C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98220, &qword_23A637CC8);
  result = sub_23A6369F0();
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
      sub_23A636C80();
      MEMORY[0x23EE87E60](v17);
      result = sub_23A636CA0();
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

uint64_t sub_23A62745C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
  result = sub_23A6369F0();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_23A636C80();
      v19 = v17;
      sub_23A6368F0();
      result = sub_23A636CA0();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v19;
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

        v2 = v27;
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

uint64_t sub_23A627684(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981B0, &qword_23A637C80);
  result = sub_23A6369F0();
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
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_23A6368D0();
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
      *(*(v6 + 48) + 8 * v13) = v18;
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

char *sub_23A627898(char *a1, int64_t a2, char a3)
{
  result = sub_23A6278B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23A6278B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98140, &qword_23A637BE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23A6279C4(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DF98238, &qword_23A637CD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  v7 = *a1;
  v8 = a1[1];
  sub_23A6368C0();
  sub_23A629138(0, &qword_27DF981F8, 0x277D86200);
  v9 = sub_23A636900();
  sub_23A636300();

  v12[0] = v7;
  v12[1] = v8;

  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0);
  sub_23A636820();
  return (*(v3 + 8))(v6, v2);
}

void sub_23A627B38(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EE87B80](a1, a2, v7);
      sub_23A636670();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23A636670();
    if (sub_23A636970() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23A636980();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_23A6368D0();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_23A6368E0();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

unint64_t sub_23A627D38(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_23A636990();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF981E0, &qword_23A637CB0);
      result = sub_23A636A10();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_23A636990();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x23EE87C10](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_23A636520();
    sub_23A6290F0(&qword_27DF981E8, MEMORY[0x277CBCDA8]);
    result = sub_23A636780();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_23A6290F0(&qword_27DF981F0, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_23A636790();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void sub_23A627FCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98198, &qword_23A637C70);
    v3 = sub_23A636A10();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + 8 * v4);
      v7 = *(v3 + 40);
      sub_23A636C80();
      v8 = v6;
      sub_23A6368F0();
      v9 = sub_23A636CA0();
      v10 = -1 << *(v3 + 32);
      v11 = v9 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        v15 = ~v10;
        sub_23A629138(0, &qword_27DF98090, 0x277D82BB8);
        do
        {
          v16 = *(*(v3 + 48) + 8 * v11);
          v17 = sub_23A6368E0();

          if (v17)
          {

            v1 = v21;
            goto LABEL_4;
          }

          v11 = (v11 + 1) & v15;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while (((1 << v11) & v13) != 0);
        v1 = v21;
      }

      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (++v4 == v1)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_23A6281AC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23A636990())
  {
    v4 = sub_23A636670();
    v5 = sub_23A6290F0(&qword_27DF981A8, MEMORY[0x277CEEC50]);
    result = MEMORY[0x23EE87A50](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x23EE87C10](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_23A625388(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_23A636990();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23A62830C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23A629048();
  result = MEMORY[0x23EE87A50](v2, &type metadata for CommunicationHandle, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_23A625234(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_23A6283B0()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = sub_23A6367B0();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if (qword_27DF97FE8 != -1)
    {
      swift_once();
    }

    v7 = sub_23A621F84(v0[2]);
    v0[3] = 0;
    v8 = sub_23A6281AC(v7);
    v0[4] = v8;

    v9 = *(MEMORY[0x277CEECF8] + 4);
    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    v10[1] = sub_23A62855C;

    return MEMORY[0x282141388](v8);
  }

  else
  {
LABEL_10:
    v11 = v0[1];
    v12 = MEMORY[0x277D84FA0];

    return v11(v12);
  }
}

uint64_t sub_23A62855C(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_23A62867C, 0, 0);
}

uint64_t sub_23A62867C()
{
  v1 = v0[3];
  sub_23A622198(v0[6]);
  v3 = v2;

  v4 = sub_23A62830C(v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_23A628710(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_23A6364F0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A6287DC, 0, 0);
}

uint64_t sub_23A6287DC()
{
  v1 = sub_23A6206FC(v0[3]);
  v0[8] = v1;
  v2 = v1;
  sub_23A636500();
  v0[9] = sub_23A6364D0();
  v3 = *(MEMORY[0x277CEEAA8] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_23A628A14;

  return MEMORY[0x282140EF8](v2, 0);
}

uint64_t sub_23A628A14()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_23A628BA8;
  }

  else
  {

    v4 = sub_23A628B30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A628B30()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23A628BA8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 88);
  *(v0 + 16) = v2;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98150, &qword_23A637C48);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);

    (*(v9 + 32))(v7, v6, v8);
    sub_23A628E0C();
    swift_allocError();
    sub_23A62D0AC(v10);
    swift_willThrow();
    (*(v9 + 8))(v7, v8);
    v11 = *(v0 + 16);
  }

  else
  {

    sub_23A628E0C();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    v11 = v2;
  }

  v14 = *(v0 + 48);
  v13 = *(v0 + 56);

  v15 = *(v0 + 8);

  return v15();
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

unint64_t sub_23A628E0C()
{
  result = qword_27DF98158;
  if (!qword_27DF98158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98158);
  }

  return result;
}

uint64_t sub_23A628E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationTopic.PersonInformation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A628EC4(uint64_t a1)
{
  v2 = type metadata accessor for CommunicationTopic.PersonInformation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23A628F84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A628FEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23A629048()
{
  result = qword_27DF98190;
  if (!qword_27DF98190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98190);
  }

  return result;
}

uint64_t sub_23A62909C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23A6290AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A6290F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A629138(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_23A629180()
{
  result = qword_27DF98208;
  if (!qword_27DF98208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98208);
  }

  return result;
}

uint64_t sub_23A6291D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_23A629234()
{
  result = qword_27DF98218;
  if (!qword_27DF98218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98218);
  }

  return result;
}

uint64_t sub_23A629288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23A62929C(a1, a2);
  }

  return a1;
}

uint64_t sub_23A62929C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_23A6292F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A629358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommunicationTopic.PersonInformation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6293BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23A629450(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98228, &qword_23A637CD0) - 8) + 80);

  return sub_23A6279C4(a1);
}

uint64_t sub_23A6294CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A629518(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for PermissionResponse();
  sub_23A636860();
  result = sub_23A636910();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23A6295EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PermissionResponse();
  v4 = sub_23A636850();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_23A629664(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857A0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  type metadata accessor for PermissionResponse();
  v9 = sub_23A636850();
  *v6 = v2;
  v6[1] = sub_23A624448;

  return MEMORY[0x2822003F0](a1, v9);
}

uint64_t sub_23A629728(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A6297D0;

  return sub_23A629664(a1, a2);
}

uint64_t sub_23A6297D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23A6298C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_23A629994;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_23A629994()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23A629A90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  type metadata accessor for PermissionResponse();
  v6 = sub_23A636860();
  v7 = sub_23A636910();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = sub_23A636850();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - v14;
  v16 = *(v3 + 112);
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v16, v7);
  v17 = *(v6 - 8);
  result = (*(v17 + 48))(v11, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_23A636830();
    (*(v17 + 8))(v11, v6);
    return sub_23A6295EC(v15, a1);
  }

  return result;
}

char *sub_23A629CB8()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(*v0 + 112);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  type metadata accessor for PermissionResponse();
  sub_23A636860();
  v7 = sub_23A636910();
  (*(*(v7 - 8) + 8))(&v0[v4], v7);
  return v0;
}

uint64_t sub_23A629D80()
{
  sub_23A629CB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23A629E0C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  sub_23A629A90(a1);
}

uint64_t sub_23A629E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for PermissionResponse();
  result = sub_23A636850();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23A629F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  type metadata accessor for PermissionResponse();
  v7 = sub_23A636850();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_23A629FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  type metadata accessor for PermissionResponse();
  v8 = sub_23A636850();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t PermissionChoice.init<A>(id:title:answer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = *v12;
  (*(v9 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v15);
  v16 = *(a4 + 40);
  v17 = *(*(*(a4 + 8) + 8) + 8);
  sub_23A636800();
  v18 = objc_allocWithZone(sub_23A6364B0());
  v19 = sub_23A636450();
  sub_23A636480();
  result = (*(v9 + 8))(a2, a3);
  *a5 = v19;
  return result;
}

uint64_t PermissionChoice.answer.getter@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  result = sub_23A636470();
  if (result == 1)
  {
    v5 = 0;
LABEL_5:
    *a1 = v5;
    return result;
  }

  if (result == 2)
  {
    v5 = 1;
    goto LABEL_5;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t sub_23A62A2AC(uint64_t a1)
{
  v2 = sub_23A62A8A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62A2E8(uint64_t a1)
{
  v2 = sub_23A62A8A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62A33C()
{
  if (*v0)
  {
    result = 0x6C61696E6564;
  }

  else
  {
    result = 0x6C61766F72707061;
  }

  *v0;
  return result;
}

uint64_t sub_23A62A374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61766F72707061 && a2 == 0xE800000000000000;
  if (v6 || (sub_23A636C10() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C61696E6564 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23A636C10();

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

uint64_t sub_23A62A458(uint64_t a1)
{
  v2 = sub_23A62A7F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62A494(uint64_t a1)
{
  v2 = sub_23A62A7F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62A4D0(uint64_t a1)
{
  v2 = sub_23A62A84C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62A50C(uint64_t a1)
{
  v2 = sub_23A62A84C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PermissionChoice.Answer.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98350, &qword_23A637E10);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98358, &qword_23A637E18);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98360, &qword_23A637E20);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62A7F8();
  sub_23A636CC0();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_23A62A84C();
    v18 = v22;
    sub_23A636BA0();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_23A62A8A0();
    sub_23A636BA0();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_23A62A7F8()
{
  result = qword_27DF98368;
  if (!qword_27DF98368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98368);
  }

  return result;
}

unint64_t sub_23A62A84C()
{
  result = qword_27DF98370;
  if (!qword_27DF98370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98370);
  }

  return result;
}

unint64_t sub_23A62A8A0()
{
  result = qword_27DF98378;
  if (!qword_27DF98378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98378);
  }

  return result;
}

uint64_t PermissionChoice.Answer.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t PermissionChoice.Answer.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98380, &qword_23A637E28);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98388, &qword_23A637E30);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98390, &unk_23A637E38);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62A7F8();
  v16 = v36;
  sub_23A636CB0();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_23A636B80();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_23A61EE34();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_23A636A60();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98088, &qword_23A637570) + 48);
      *v26 = &type metadata for PermissionChoice.Answer;
      sub_23A636B30();
      sub_23A636A50();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_23A62A84C();
        sub_23A636B20();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_23A62A8A0();
        sub_23A636B20();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_23A62AE54()
{
  v0 = sub_23A636230();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_23A636220();
  (*(v1 + 16))(v5, v7, v0);
  sub_23A6367C0();
  v8 = objc_allocWithZone(sub_23A6364B0());
  v9 = sub_23A636450();
  sub_23A636480();
  result = (*(v1 + 8))(v7, v0);
  qword_27DF98340 = v9;
  return result;
}

uint64_t PermissionChoice.init(id:title:answer:)@<X0>(uint64_t a1@<X2>, unsigned __int8 *a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_23A636230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = *a2;
  (*(v7 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_23A6367C0();
  v11 = objc_allocWithZone(sub_23A6364B0());
  v12 = sub_23A636450();
  sub_23A636480();
  result = (*(v7 + 8))(a1, v6);
  *a3 = v12;
  return result;
}

uint64_t sub_23A62B148()
{
  v0 = sub_23A636230();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_23A636220();
  (*(v1 + 16))(v5, v7, v0);
  sub_23A6367C0();
  v8 = objc_allocWithZone(sub_23A6364B0());
  v9 = sub_23A636450();
  sub_23A636480();
  result = (*(v1 + 8))(v7, v0);
  qword_27DF98348 = v9;
  return result;
}

id sub_23A62B2E4@<X0>(void *a1@<X0>, void **a2@<X1>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a3 = v7;
    a2 = v6;
  }

  v4 = *a2;
  *a3 = *a2;

  return v4;
}

uint64_t (*PermissionChoice.title.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *v1;
  *a1 = sub_23A636490();
  a1[1] = v3;
  return sub_23A62B3B0;
}

uint64_t sub_23A62B3B0(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    sub_23A6364A0();
  }

  else
  {
    v7 = *a1;
    return sub_23A6364A0();
  }
}

uint64_t sub_23A62B424@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  result = sub_23A636470();
  if (result == 1)
  {
    v5 = 0;
LABEL_5:
    *a2 = v5;
    return result;
  }

  if (result == 2)
  {
    v5 = 1;
    goto LABEL_5;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t PermissionChoice.answer.setter(_BYTE *a1)
{
  v2 = *v1;
  *a1;
  return sub_23A636480();
}

uint64_t (*PermissionChoice.answer.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *v1;
  v3 = sub_23A636470();
  if (v3 == 1)
  {
    v4 = 0;
LABEL_5:
    *(a1 + 8) = v4;
    return sub_23A62B5D4;
  }

  if (v3 == 2)
  {
    v4 = 1;
    goto LABEL_5;
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t sub_23A62B5D4(uint64_t *a1)
{
  v1 = *a1;
  *(a1 + 8);
  return sub_23A636480();
}

uint64_t PermissionChoice.hash(into:)()
{
  v1 = *v0;
  sub_23A636460();
  sub_23A6367D0();

  sub_23A636490();
  sub_23A6367D0();

  v2 = sub_23A636470();
  if (v2 == 1)
  {
    v3 = 0;
    return MEMORY[0x23EE87E60](v3);
  }

  if (v2 == 2)
  {
    v3 = 1;
    return MEMORY[0x23EE87E60](v3);
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t sub_23A62B724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000023A63B530 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_23A636C10();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_23A62B7B8(uint64_t a1)
{
  v2 = sub_23A62BF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62B7F4(uint64_t a1)
{
  v2 = sub_23A62BF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PermissionChoice.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98398, &qword_23A637E48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62BF00();
  v10 = v8;
  sub_23A636CC0();
  v12[1] = v10;
  sub_23A6364B0();
  sub_23A62BF54(&qword_27DF983A8);
  sub_23A636BF0();

  return (*(v4 + 8))(v7, v3);
}

uint64_t PermissionChoice.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  sub_23A636460();
  sub_23A6367D0();

  sub_23A636490();
  sub_23A6367D0();

  v2 = sub_23A636470();
  v3 = 0;
  if (v2 == 1)
  {
    goto LABEL_4;
  }

  if (v2 == 2)
  {
    v3 = 1;
LABEL_4:
    MEMORY[0x23EE87E60](v3);
    return sub_23A636CA0();
  }

  result = sub_23A636AF0();
  __break(1u);
  return result;
}

uint64_t PermissionChoice.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF983B0, &qword_23A637E50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62BF00();
  sub_23A636CB0();
  if (!v2)
  {
    sub_23A6364B0();
    sub_23A62BF54(&qword_27DF983B8);
    sub_23A636B70();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23A62BC44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_23A636460();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_23A62BC70()
{
  v2 = *v0;
  sub_23A636C80();
  PermissionChoice.hash(into:)();
  return sub_23A636CA0();
}

uint64_t sub_23A62BCC0()
{
  v2 = *v0;
  sub_23A636C80();
  PermissionChoice.hash(into:)();
  return sub_23A636CA0();
}

uint64_t _s13PermissionKit0A6ChoiceV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_23A636460();
  v6 = v5;
  if (v4 == sub_23A636460() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_23A636C10();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = sub_23A636490();
  v12 = v11;
  if (v10 == sub_23A636490() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_23A636C10();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = sub_23A636470();
  if (v15 == 1)
  {
    v16 = 0;
  }

  else
  {
    if (v15 != 2)
    {
      goto LABEL_21;
    }

    v16 = 1;
  }

  v17 = sub_23A636470();
  if (v17 == 1)
  {
    return v16 ^ 1;
  }

  if (v17 == 2)
  {
    return v16;
  }

LABEL_21:
  result = sub_23A636AF0();
  __break(1u);
  return result;
}

unint64_t sub_23A62BF00()
{
  result = qword_27DF983A0;
  if (!qword_27DF983A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983A0);
  }

  return result;
}

uint64_t sub_23A62BF54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23A6364B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A62BF9C()
{
  result = qword_27DF983C0;
  if (!qword_27DF983C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983C0);
  }

  return result;
}

unint64_t sub_23A62C000()
{
  result = qword_27DF983C8;
  if (!qword_27DF983C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983C8);
  }

  return result;
}

uint64_t sub_23A62C054@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_23A636490();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23A62C080(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_23A6364A0();
}

uint64_t sub_23A62C0C4(_BYTE *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1;
  return sub_23A636480();
}

uint64_t getEnumTagSinglePayload for CommunicationTopic.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommunicationTopic.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23A62C2B0()
{
  result = qword_27DF983D0;
  if (!qword_27DF983D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983D0);
  }

  return result;
}

unint64_t sub_23A62C308()
{
  result = qword_27DF983D8;
  if (!qword_27DF983D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983D8);
  }

  return result;
}

unint64_t sub_23A62C360()
{
  result = qword_27DF983E0;
  if (!qword_27DF983E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983E0);
  }

  return result;
}

unint64_t sub_23A62C3B8()
{
  result = qword_27DF983E8;
  if (!qword_27DF983E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983E8);
  }

  return result;
}

unint64_t sub_23A62C410()
{
  result = qword_27DF983F0;
  if (!qword_27DF983F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983F0);
  }

  return result;
}

unint64_t sub_23A62C468()
{
  result = qword_27DF983F8;
  if (!qword_27DF983F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF983F8);
  }

  return result;
}

unint64_t sub_23A62C4C0()
{
  result = qword_27DF98400;
  if (!qword_27DF98400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98400);
  }

  return result;
}

unint64_t sub_23A62C518()
{
  result = qword_27DF98408;
  if (!qword_27DF98408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98408);
  }

  return result;
}

unint64_t sub_23A62C570()
{
  result = qword_27DF98410;
  if (!qword_27DF98410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98410);
  }

  return result;
}

unint64_t sub_23A62C5C8()
{
  result = qword_27DF98418;
  if (!qword_27DF98418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98418);
  }

  return result;
}

uint64_t sub_23A62C62C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23A6368C0();
  sub_23A62C7F0();
  v5 = sub_23A636900();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23A62C83C(0xD000000000000016, 0x800000023A63B610, &v10);
    _os_log_impl(&dword_23A61C000, v5, v4, "%s called", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EE88420](v7, -1, -1);
    MEMORY[0x23EE88420](v6, -1, -1);
  }

  v8 = *(v2 + 24);
  return (*(v2 + 16))(a1);
}

uint64_t sub_23A62C794()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_23A62C7F0()
{
  result = qword_27DF981F8;
  if (!qword_27DF981F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF981F8);
  }

  return result;
}

uint64_t sub_23A62C83C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23A62C908(v11, 0, 0, 1, a1, a2);
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
    sub_23A628FEC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23A62C908(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23A62CA14(a5, a6);
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
    result = sub_23A636A90();
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

uint64_t sub_23A62CA14(uint64_t a1, unint64_t a2)
{
  v4 = sub_23A62CA60(a1, a2);
  sub_23A62CB90(&unk_284D4E620);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23A62CA60(uint64_t a1, unint64_t a2)
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

  v6 = sub_23A62CC7C(v5, 0);
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

  result = sub_23A636A90();
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
        v10 = sub_23A6367F0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23A62CC7C(v10, 0);
        result = sub_23A636A20();
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

uint64_t sub_23A62CB90(uint64_t result)
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

  result = sub_23A62CCF0(result, v12, 1, v3);
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

void *sub_23A62CC7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98420, &qword_23A638420);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23A62CCF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98420, &qword_23A638420);
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

uint64_t AskError.errorDescription.getter()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD000000000000041;
      }

      goto LABEL_8;
    }

    return 0xD000000000000039;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000022;
      }

LABEL_8:
      swift_getErrorValue();
      return sub_23A636C30();
    }

    return 0xD00000000000001ALL;
  }
}

uint64_t sub_23A62CEC8()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0xD000000000000041;
      }

      goto LABEL_8;
    }

    return 0xD000000000000039;
  }

  else
  {
    if (v1)
    {
      if (v1 == 1)
      {
        return 0xD000000000000022;
      }

LABEL_8:
      swift_getErrorValue();
      return sub_23A636C30();
    }

    return 0xD00000000000001ALL;
  }
}

uint64_t get_enum_tag_for_layout_string_13PermissionKit8AskErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_23A62CFCC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A62D020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_23A62D07C(void *result, int a2)
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

void sub_23A62D0AC(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_23A6364F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277CEEAB0])
  {
    (*(v5 + 96))(v8, v4);
    v14 = *v8;
    v10 = v14;
    sub_23A62D2C0();
    v11 = v10;
    if (!swift_dynamicCast())
    {
      *a1 = v11;
      return;
    }

    v12 = v13;
    if (v13 >= 2)
    {
      if (v13 == 2)
      {
        v12 = 2;
      }

      else if (v13 != 3)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_8:
    *a1 = 0;
    return;
  }

  if (v9 == *MEMORY[0x277CEEAC0])
  {
    goto LABEL_8;
  }

  if (v9 != *MEMORY[0x277CEEAB8])
  {
    *a1 = 0;
    (*(v5 + 8))(v8, v4);
    return;
  }

  v12 = 1;
LABEL_14:
  *a1 = v12;
}

unint64_t sub_23A62D2C0()
{
  result = qword_27DF98428;
  if (!qword_27DF98428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF98428);
  }

  return result;
}

uint64_t CommunicationTopic.PersonInformation.init(handle:contactIdentifier:nameComponents:avatarImage:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v11 = *a1;
  v12 = type metadata accessor for CommunicationTopic.PersonInformation();
  v13 = *(v12 + 24);
  v14 = sub_23A636200();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = *(v12 + 28);
  *a6 = v11;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  result = sub_23A62D410(a4, &a6[v13]);
  *&a6[v15] = a5;
  return result;
}

uint64_t type metadata accessor for CommunicationTopic.PersonInformation()
{
  result = qword_27DF985F8;
  if (!qword_27DF985F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A62D410(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CommunicationTopic.init(personInformation:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a2 = result;
  a2[1] = v2;
  return result;
}

uint64_t sub_23A62D4A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x63696E756D6D6F63;
    v6 = 1952540771;
    if (a1 != 8)
    {
      v6 = 0x7463656E6E6F63;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C61436F65646976;
    if (a1 != 5)
    {
      v7 = 0x6C61436F69647561;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x646E65697266;
    v2 = 0x776F6C6C6F466562;
    v3 = 1819042147;
    if (a1 != 3)
    {
      v3 = 0x6567617373656DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x776F6C6C6F66;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23A62D5DC(uint64_t a1)
{
  v2 = sub_23A62F494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D618(uint64_t a1)
{
  v2 = sub_23A62F494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D654(uint64_t a1)
{
  v2 = sub_23A62F5E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D690(uint64_t a1)
{
  v2 = sub_23A62F5E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D6CC(uint64_t a1)
{
  v2 = sub_23A62F590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D708(uint64_t a1)
{
  v2 = sub_23A62F590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D744(uint64_t a1)
{
  v2 = sub_23A62F3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D780(uint64_t a1)
{
  v2 = sub_23A62F3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A633040(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A62D7F8(uint64_t a1)
{
  v2 = sub_23A62F344();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D834(uint64_t a1)
{
  v2 = sub_23A62F344();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D870(uint64_t a1)
{
  v2 = sub_23A62F440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D8AC(uint64_t a1)
{
  v2 = sub_23A62F440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D8E8(uint64_t a1)
{
  v2 = sub_23A62F398();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D924(uint64_t a1)
{
  v2 = sub_23A62F398();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D960(uint64_t a1)
{
  v2 = sub_23A62F638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62D99C(uint64_t a1)
{
  v2 = sub_23A62F638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62D9D8(uint64_t a1)
{
  v2 = sub_23A62F68C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62DA14(uint64_t a1)
{
  v2 = sub_23A62F68C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62DA50(uint64_t a1)
{
  v2 = sub_23A62F53C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62DA8C(uint64_t a1)
{
  v2 = sub_23A62F53C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A62DAC8(uint64_t a1)
{
  v2 = sub_23A62F4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62DB04(uint64_t a1)
{
  v2 = sub_23A62F4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationTopic.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98430, &qword_23A638548);
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98438, &qword_23A638550);
  v73 = *(v6 - 8);
  v74 = v6;
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v6);
  v72 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98440, &qword_23A638558);
  v70 = *(v9 - 8);
  v71 = v9;
  v10 = *(v70 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98448, &qword_23A638560);
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = *(v67 + 64);
  MEMORY[0x28223BE20](v12);
  v66 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98450, &qword_23A638568);
  v64 = *(v15 - 8);
  v65 = v15;
  v16 = *(v64 + 64);
  MEMORY[0x28223BE20](v15);
  v63 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98458, &qword_23A638570);
  v61 = *(v18 - 8);
  v62 = v18;
  v19 = *(v61 + 64);
  MEMORY[0x28223BE20](v18);
  v60 = &v51 - v20;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98460, &qword_23A638578);
  v58 = *(v59 - 8);
  v21 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v51 - v22;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98468, &qword_23A638580);
  v55 = *(v56 - 8);
  v23 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v51 - v24;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98470, &qword_23A638588);
  v52 = *(v53 - 8);
  v25 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v27 = &v51 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98478, &qword_23A638590);
  v51 = *(v28 - 8);
  v29 = *(v51 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v51 - v30;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98480, &qword_23A638598);
  v32 = *(v79 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v79);
  v35 = &v51 - v34;
  v36 = *v1;
  v37 = a1;
  v39 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(v37, v39);
  sub_23A62F344();
  v78 = v35;
  sub_23A636CC0();
  v40 = (v32 + 8);
  if (v36 > 4)
  {
    if (v36 <= 6)
    {
      if (v36 == 5)
      {
        v85 = 5;
        sub_23A62F4E8();
        v44 = v63;
        v42 = v78;
        v43 = v79;
        sub_23A636BA0();
        v46 = v64;
        v45 = v65;
      }

      else
      {
        v86 = 6;
        sub_23A62F494();
        v44 = v66;
        v42 = v78;
        v43 = v79;
        sub_23A636BA0();
        v46 = v67;
        v45 = v68;
      }
    }

    else if (v36 == 7)
    {
      v87 = 7;
      sub_23A62F440();
      v44 = v69;
      v42 = v78;
      v43 = v79;
      sub_23A636BA0();
      v46 = v70;
      v45 = v71;
    }

    else if (v36 == 8)
    {
      v88 = 8;
      sub_23A62F3EC();
      v44 = v72;
      v42 = v78;
      v43 = v79;
      sub_23A636BA0();
      v46 = v73;
      v45 = v74;
    }

    else
    {
      v89 = 9;
      sub_23A62F398();
      v44 = v75;
      v42 = v78;
      v43 = v79;
      sub_23A636BA0();
      v46 = v76;
      v45 = v77;
    }

    goto LABEL_20;
  }

  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v82 = 2;
      sub_23A62F5E4();
      v47 = v54;
      v42 = v78;
      v43 = v79;
      sub_23A636BA0();
      (*(v55 + 8))(v47, v56);
      return (*v40)(v42, v43);
    }

    if (v36 == 3)
    {
      v83 = 3;
      sub_23A62F590();
      v41 = v57;
      v42 = v78;
      v43 = v79;
      sub_23A636BA0();
      (*(v58 + 8))(v41, v59);
      return (*v40)(v42, v43);
    }

    v84 = 4;
    sub_23A62F53C();
    v44 = v60;
    v42 = v78;
    v43 = v79;
    sub_23A636BA0();
    v46 = v61;
    v45 = v62;
LABEL_20:
    (*(v46 + 8))(v44, v45);
    return (*v40)(v42, v43);
  }

  if (v36)
  {
    v81 = 1;
    sub_23A62F638();
    v48 = v78;
    v49 = v79;
    sub_23A636BA0();
    (*(v52 + 8))(v27, v53);
    return (*v40)(v48, v49);
  }

  v80 = 0;
  sub_23A62F68C();
  v42 = v78;
  v43 = v79;
  sub_23A636BA0();
  (*(v51 + 8))(v31, v28);
  return (*v40)(v42, v43);
}

uint64_t CommunicationTopic.Action.hashValue.getter()
{
  v1 = *v0;
  sub_23A636C80();
  MEMORY[0x23EE87E60](v1);
  return sub_23A636CA0();
}

uint64_t CommunicationTopic.Action.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984E0, &qword_23A6385A0);
  v84 = *(v3 - 8);
  v85 = v3;
  v4 = *(v84 + 64);
  MEMORY[0x28223BE20](v3);
  v89 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984E8, &qword_23A6385A8);
  v82 = *(v6 - 8);
  v83 = v6;
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v88 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984F0, &qword_23A6385B0);
  v80 = *(v9 - 8);
  v81 = v9;
  v10 = *(v80 + 64);
  MEMORY[0x28223BE20](v9);
  v87 = &v64 - v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF984F8, &qword_23A6385B8);
  v78 = *(v79 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v93 = &v64 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98500, &qword_23A6385C0);
  v76 = *(v77 - 8);
  v14 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v92 = &v64 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98508, &qword_23A6385C8);
  v75 = *(v74 - 8);
  v16 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v91 = &v64 - v17;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98510, &qword_23A6385D0);
  v72 = *(v73 - 8);
  v18 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v86 = &v64 - v19;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98518, &qword_23A6385D8);
  v70 = *(v71 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v90 = &v64 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98520, &qword_23A6385E0);
  v68 = *(v69 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v24 = &v64 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98528, &qword_23A6385E8);
  v67 = *(v25 - 8);
  v26 = *(v67 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98530, &unk_23A6385F0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v64 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v95 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_23A62F344();
  v36 = v96;
  sub_23A636CB0();
  if (!v36)
  {
    v65 = v28;
    v64 = v25;
    v66 = v24;
    v37 = v90;
    v38 = v91;
    v39 = v92;
    v40 = v93;
    v96 = v30;
    v41 = v94;
    v42 = sub_23A636B80();
    v43 = (2 * *(v42 + 16)) | 1;
    v97 = v42;
    v98 = v42 + 32;
    v99 = 0;
    v100 = v43;
    v44 = sub_23A61EE68();
    if (v44 != 10 && v99 == v100 >> 1)
    {
      v101 = v44;
      if (v44 <= 4u)
      {
        if (v44 <= 1u)
        {
          if (v44)
          {
            v102 = 1;
            sub_23A62F638();
            v62 = v66;
            sub_23A636B20();
            v63 = v96;
            (*(v68 + 8))(v62, v69);
            (*(v63 + 8))(v33, v29);
          }

          else
          {
            v102 = 0;
            sub_23A62F68C();
            v58 = v65;
            sub_23A636B20();
            v59 = v96;
            (*(v67 + 8))(v58, v64);
            (*(v59 + 8))(v33, v29);
          }

          swift_unknownObjectRelease();
          v51 = v95;
          v53 = v41;
        }

        else
        {
          if (v44 == 2)
          {
            v102 = 2;
            sub_23A62F5E4();
            sub_23A636B20();
            (*(v70 + 8))(v37, v71);
            (*(v96 + 8))(v33, v29);
          }

          else
          {
            if (v44 == 3)
            {
              v102 = 3;
              sub_23A62F590();
              v45 = v86;
              sub_23A636B20();
              v46 = v96;
              (*(v72 + 8))(v45, v73);
            }

            else
            {
              v102 = 4;
              sub_23A62F53C();
              sub_23A636B20();
              v46 = v96;
              (*(v75 + 8))(v38, v74);
            }

            (*(v46 + 8))(v33, v29);
          }

          swift_unknownObjectRelease();
          v53 = v94;
          v51 = v95;
        }

        goto LABEL_33;
      }

      if (v44 <= 6u)
      {
        v53 = v41;
        v60 = v96;
        if (v44 == 5)
        {
          v102 = 5;
          sub_23A62F4E8();
          sub_23A636B20();
          (*(v76 + 8))(v39, v77);
        }

        else
        {
          v102 = 6;
          sub_23A62F494();
          sub_23A636B20();
          (*(v78 + 8))(v40, v79);
        }

        (*(v60 + 8))(v33, v29);
        goto LABEL_32;
      }

      v53 = v41;
      v54 = v96;
      if (v44 == 7)
      {
        v102 = 7;
        sub_23A62F440();
        v55 = v87;
        sub_23A636B20();
        v57 = v80;
        v56 = v81;
      }

      else
      {
        if (v44 != 8)
        {
          v102 = 9;
          sub_23A62F398();
          v61 = v89;
          sub_23A636B20();
          (*(v84 + 8))(v61, v85);
          goto LABEL_29;
        }

        v102 = 8;
        sub_23A62F3EC();
        v55 = v88;
        sub_23A636B20();
        v57 = v82;
        v56 = v83;
      }

      (*(v57 + 8))(v55, v56);
LABEL_29:
      (*(v54 + 8))(v33, v29);
LABEL_32:
      swift_unknownObjectRelease();
      v51 = v95;
LABEL_33:
      *v53 = v101;
      return __swift_destroy_boxed_opaque_existential_1(v51);
    }

    v47 = sub_23A636A60();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98088, &qword_23A637570) + 48);
    *v49 = &type metadata for CommunicationTopic.Action;
    sub_23A636B30();
    sub_23A636A50();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v96 + 8))(v33, v29);
    swift_unknownObjectRelease();
  }

  v51 = v95;
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t CommunicationTopic.personInformation.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CommunicationTopic.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t CommunicationTopic.init(personInformation:actions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_23A62F344()
{
  result = qword_27DF98488;
  if (!qword_27DF98488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98488);
  }

  return result;
}

unint64_t sub_23A62F398()
{
  result = qword_27DF98490;
  if (!qword_27DF98490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98490);
  }

  return result;
}

unint64_t sub_23A62F3EC()
{
  result = qword_27DF98498;
  if (!qword_27DF98498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98498);
  }

  return result;
}

unint64_t sub_23A62F440()
{
  result = qword_27DF984A0;
  if (!qword_27DF984A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984A0);
  }

  return result;
}

unint64_t sub_23A62F494()
{
  result = qword_27DF984A8;
  if (!qword_27DF984A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984A8);
  }

  return result;
}

unint64_t sub_23A62F4E8()
{
  result = qword_27DF984B0;
  if (!qword_27DF984B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984B0);
  }

  return result;
}

unint64_t sub_23A62F53C()
{
  result = qword_27DF984B8;
  if (!qword_27DF984B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984B8);
  }

  return result;
}

unint64_t sub_23A62F590()
{
  result = qword_27DF984C0;
  if (!qword_27DF984C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984C0);
  }

  return result;
}

unint64_t sub_23A62F5E4()
{
  result = qword_27DF984C8;
  if (!qword_27DF984C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984C8);
  }

  return result;
}

unint64_t sub_23A62F638()
{
  result = qword_27DF984D0;
  if (!qword_27DF984D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984D0);
  }

  return result;
}

unint64_t sub_23A62F68C()
{
  result = qword_27DF984D8;
  if (!qword_27DF984D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF984D8);
  }

  return result;
}

unint64_t sub_23A62F6E0()
{
  if (*v0)
  {
    result = 0x736E6F69746361;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_23A62F720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000023A63B7E0 == a2 || (sub_23A636C10() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_23A636C10();

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

uint64_t sub_23A62F808(uint64_t a1)
{
  v2 = sub_23A62FAC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A62F844(uint64_t a1)
{
  v2 = sub_23A62FAC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CommunicationTopic.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98538, &qword_23A638600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62FAC0();

  sub_23A636CC0();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98548, &qword_23A638608);
  sub_23A62FE78(&qword_27DF98550, &qword_27DF98558);
  sub_23A636BF0();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98560, &qword_23A638610);
    sub_23A62FB14(&qword_27DF98568, sub_23A62FB8C);
    sub_23A636BF0();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_23A62FAC0()
{
  result = qword_27DF98540;
  if (!qword_27DF98540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98540);
  }

  return result;
}

uint64_t sub_23A62FB14(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF98560, &qword_23A638610);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A62FB8C()
{
  result = qword_27DF98570;
  if (!qword_27DF98570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98570);
  }

  return result;
}

uint64_t CommunicationTopic.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98578, &qword_23A638618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A62FAC0();
  sub_23A636CB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98548, &qword_23A638608);
  v15 = 0;
  sub_23A62FE78(&qword_27DF98580, &qword_27DF98588);
  sub_23A636B70();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98560, &qword_23A638610);
  v15 = 1;
  sub_23A62FB14(&qword_27DF98590, sub_23A62FF14);
  sub_23A636B70();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v11;
  a2[1] = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23A62FE78(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF98548, &qword_23A638608);
    sub_23A633630(a2, type metadata accessor for CommunicationTopic.PersonInformation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23A62FF14()
{
  result = qword_27DF98598;
  if (!qword_27DF98598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF98598);
  }

  return result;
}

unint64_t sub_23A62FFB4()
{
  v1 = 0x656C646E6168;
  v2 = 0x706D6F43656D616ELL;
  if (*v0 != 2)
  {
    v2 = 0x6D49726174617661;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23A630048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A633380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A63007C(uint64_t a1)
{
  v2 = sub_23A630AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A6300B8(uint64_t a1)
{
  v2 = sub_23A630AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

id CommunicationTopic.PersonInformation.handle.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void CommunicationTopic.PersonInformation.handle.setter(void **a1)
{
  v2 = *a1;

  *v1 = v2;
}

uint64_t CommunicationTopic.PersonInformation.contactIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t CommunicationTopic.PersonInformation.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CommunicationTopic.PersonInformation.nameComponents.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CommunicationTopic.PersonInformation() + 24);

  return sub_23A62D410(a1, v3);
}

void *CommunicationTopic.PersonInformation.avatarImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for CommunicationTopic.PersonInformation() + 28));
  v2 = v1;
  return v1;
}

void CommunicationTopic.PersonInformation.avatarImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CommunicationTopic.PersonInformation() + 28);

  *(v1 + v3) = a1;
}

uint64_t CommunicationTopic.PersonInformation.init(handle:nameComponents:avatarImage:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for CommunicationTopic.PersonInformation();
  v9 = *(v8 + 24);
  v10 = sub_23A636200();
  (*(*(v10 - 8) + 56))(&a4[v9], 1, 1, v10);
  v11 = *(v8 + 28);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = v7;
  result = sub_23A62D410(a2, &a4[v9]);
  *&a4[v11] = a3;
  return result;
}

uint64_t CommunicationTopic.PersonInformation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v47 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF985A0, &qword_23A638620);
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v47 - v9;
  v11 = type metadata accessor for CommunicationTopic.PersonInformation();
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 32);
  v17 = sub_23A636200();
  v18 = *(*(v17 - 8) + 56);
  v58 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = *(v12 + 36);
  v59 = v15;
  *&v15[v19] = 0;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = sub_23A630AA4();
  v22 = v57;
  sub_23A636CB0();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v29 = v58;
    v27 = v59;
    return sub_23A630AF8(v27 + v29);
  }

  v57 = v21;
  v53 = v19;
  v23 = v55;
  v63 = 0;
  sub_23A630B60();
  v24 = v56;
  v25 = v10;
  sub_23A636B70();
  v27 = v59;
  *v59 = v60;
  LOBYTE(v60) = 1;
  v28 = sub_23A636B40();
  v29 = v58;
  *(v27 + 8) = v28;
  *(v27 + 16) = v30;
  v52 = v30;
  LOBYTE(v60) = 2;
  sub_23A633630(&qword_27DF985B8, MEMORY[0x277CC8E50]);
  sub_23A636B50();
  sub_23A62D410(v6, v27 + v29);
  v63 = 3;
  sub_23A630BB4();
  sub_23A636B50();
  v31 = v23;
  v51 = v25;
  if (*(&v60 + 1) >> 60 != 15)
  {
    v48 = *(&v60 + 1);
    v49 = v60;
    v50 = sub_23A636B30();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_23A631950(0, v50[2] + 1, 1, v50);
    }

    v33 = v50[2];
    v32 = v50[3];
    v34 = v57;
    if (v33 >= v32 >> 1)
    {
      v50 = sub_23A631950((v32 > 1), v33 + 1, 1, v50);
      v34 = v57;
    }

    v61 = &type metadata for CommunicationTopic.PersonInformation.CodingKeys;
    v62 = v34;
    LOBYTE(v60) = 3;
    v35 = v50;
    v50[2] = v33 + 1;
    sub_23A631A98(&v60, &v35[5 * v33 + 4]);
    v36 = v48;
    v37 = sub_23A636240();
    v38 = CGImageSourceCreateWithData(v37, 0);

    if (v38)
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v38, 0, 0);
      if (ImageAtIndex)
      {
        v40 = ImageAtIndex;
        (*(v31 + 8))(v51, v24);
        sub_23A629288(v49, v48);

        v27 = v59;
        *(v59 + v53) = v40;
        goto LABEL_14;
      }

      v44 = sub_23A636A60();
      swift_allocError();
      v46 = v45;
      sub_23A636A50();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84168], v44);
      swift_willThrow();
      sub_23A629288(v49, v48);

      v27 = v59;
    }

    else
    {
      v41 = sub_23A636A60();
      swift_allocError();
      v43 = v42;
      sub_23A636A50();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84168], v41);
      swift_willThrow();
      sub_23A629288(v49, v36);
    }

    (*(v31 + 8))(v51, v24);
    __swift_destroy_boxed_opaque_existential_1(a1);

    return sub_23A630AF8(v27 + v29);
  }

  (*(v23 + 8))(v51, v24);
LABEL_14:
  sub_23A628E60(v27, v54);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23A628EC4(v27);
}

unint64_t sub_23A630AA4()
{
  result = qword_27DF985A8;
  if (!qword_27DF985A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985A8);
  }

  return result;
}

uint64_t sub_23A630AF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98160, &unk_23A637C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A630B60()
{
  result = qword_27DF985B0;
  if (!qword_27DF985B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985B0);
  }

  return result;
}

unint64_t sub_23A630BB4()
{
  result = qword_27DF985C0;
  if (!qword_27DF985C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF985C0);
  }

  return result;
}

uint64_t CommunicationTopic.PersonInformation.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF985C8, &qword_23A638628);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_23A630AA4();
  sub_23A636CC0();
  *&v34 = *v2;
  v11 = v34;
  v37 = 0;
  sub_23A631AB0();
  v12 = v11;
  v13 = v33;
  sub_23A636BF0();
  if (v13)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v33 = v5;

    v15 = v2[1];
    v16 = v2[2];
    LOBYTE(v34) = 1;
    sub_23A636BC0();
    v17 = type metadata accessor for CommunicationTopic.PersonInformation();
    v18 = *(v17 + 24);
    LOBYTE(v34) = 2;
    sub_23A636200();
    sub_23A633630(&qword_27DF985D8, MEMORY[0x277CC8E50]);
    sub_23A636BD0();
    v19 = *(v2 + *(v17 + 28));
    if (v19)
    {
      v20 = v8;
      v21 = v19;
      v22 = v20;
      v23 = sub_23A636BB0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_23A631950(0, v23[2] + 1, 1, v23);
      }

      v25 = v23[2];
      v24 = v23[3];
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v32 = v25 + 1;
        v30 = sub_23A631950((v24 > 1), v25 + 1, 1, v23);
        v26 = v32;
        v23 = v30;
      }

      v35 = &type metadata for CommunicationTopic.PersonInformation.CodingKeys;
      v36 = v10;
      LOBYTE(v34) = 3;
      v23[2] = v26;
      sub_23A631A98(&v34, &v23[5 * v25 + 4]);
      v27 = sub_23A630FC8(v23);
      v29 = v28;

      *&v34 = v27;
      *(&v34 + 1) = v29;
      v37 = 3;
      sub_23A631B04();
      sub_23A636BF0();
      (*(v33 + 8))(v22, v4);

      return sub_23A62929C(v27, v29);
    }

    else
    {
      return (*(v33 + 8))(v8, v4);
    }
  }
}

uint64_t sub_23A630FC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23A6362F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A6362E0();
  sub_23A6362D0();
  (*(v5 + 8))(v8, v4);
  v9 = sub_23A6367A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98710, &qword_23A6392D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23A638530;
  v11 = *MEMORY[0x277CD3450];
  *(inited + 32) = *MEMORY[0x277CD3450];
  v12 = v11;
  Width = CGImageGetWidth(v2);
  v14 = MEMORY[0x277D83B88];
  *(inited + 40) = Width;
  v15 = *MEMORY[0x277CD3448];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = v15;
  *(inited + 80) = CGImageGetHeight(v2);
  v17 = *MEMORY[0x277CD2F30];
  *(inited + 104) = v14;
  *(inited + 112) = v17;
  v18 = MEMORY[0x277D839F8];
  *(inited + 120) = 0x4052000000000000;
  v19 = *MEMORY[0x277CD2F28];
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 160) = 0x4052000000000000;
  v20 = *MEMORY[0x277CD2D80];
  *(inited + 184) = v18;
  *(inited + 192) = v20;
  v21 = MEMORY[0x277D839B0];
  *(inited + 200) = 1;
  v22 = *MEMORY[0x277CD2D48];
  *(inited + 224) = v21;
  *(inited + 232) = v22;
  *(inited + 264) = v18;
  *(inited + 240) = 0x3FE6666666666666;
  v23 = v17;
  v24 = v19;
  v25 = v20;
  v26 = v22;
  sub_23A6334F8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98718, &qword_23A6392E0);
  swift_arrayDestroy();
  Mutable = CFDataCreateMutable(0, 0);
  if (!Mutable)
  {
    goto LABEL_8;
  }

  v28 = Mutable;
  v29 = CGImageDestinationCreateWithData(Mutable, v9, 1uLL, 0);
  if (!v29)
  {

LABEL_8:

    v37 = sub_23A636A80();
    v30 = v9;
    swift_allocError();
    v39 = v38;
    type metadata accessor for CGImage(0);
    v39[3] = v40;
    *v39 = v2;
    v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98720, &qword_23A6392E8) + 48);
    v56 = 0;
    v57 = 0xE000000000000000;
    v41 = v2;

    sub_23A636A30();
    MEMORY[0x23EE879B0](0xD000000000000031, 0x800000023A63B820);
    v42 = sub_23A6367B0();
    MEMORY[0x23EE879B0](v42);

    sub_23A636A50();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D841A8], v37);
    swift_willThrow();
LABEL_16:

    return v33;
  }

  v30 = v29;
  v55 = v9;
  type metadata accessor for CFString(0);
  sub_23A633630(&qword_27DF98018, type metadata accessor for CFString);
  v31 = sub_23A636760();

  CGImageDestinationAddImage(v30, v2, v31);

  CGImageDestinationFinalize(v30);
  v32 = v28;
  v33 = sub_23A636250();
  v35 = v34;

  v36 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v36 != 2 || *(v33 + 16) == *(v33 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v36)
  {
    if (v33 == v33 >> 32)
    {
LABEL_13:
      v43 = sub_23A636A80();
      v54 = v32;
      v44 = v43;
      v58 = swift_allocError();
      v46 = v45;
      type metadata accessor for CGImage(0);
      v46[3] = v47;
      *v46 = v2;
      v48 = MEMORY[0x277D84F90];
      if (a1)
      {
        v48 = a1;
      }

      v53[2] = v48;
      v53[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF98720, &qword_23A6392E8) + 48);
      v56 = 0;
      v57 = 0xE000000000000000;
      v49 = v2;

      sub_23A636A30();

      v56 = 0xD000000000000020;
      v57 = 0x800000023A63B860;
      v50 = v55;
      v51 = sub_23A6367B0();
      MEMORY[0x23EE879B0](v51);

      MEMORY[0x23EE879B0](0x706D652073617720, 0xEA00000000007974);
      sub_23A636A50();
      (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D841A8], v44);
      swift_willThrow();
      sub_23A62929C(v33, v35);

      goto LABEL_16;
    }
  }

  else if ((v35 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  return v33;
}