uint64_t AlarmConfirmation.init(snippetModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23ED419F0();
  sub_23ED36088(&qword_27E384B70, MEMORY[0x277D63F60]);
  *a2 = sub_23ED415F0();
  a2[1] = v4;
  v5 = *(type metadata accessor for AlarmConfirmation() + 20);
  v6 = sub_23ED41430();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t type metadata accessor for AlarmConfirmation()
{
  result = qword_27E384B80;
  if (!qword_27E384B80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23ED35634(uint64_t a1)
{
  v2 = sub_23ED41390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (*a1)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D61858], v2);
    v8 = v7;
    sub_23ED41380();
    (*(v3 + 8))(v6, v2);
    v9 = a1 + *(type metadata accessor for AlarmConfirmation() + 20);
    v10 = sub_23ED41420();
    v11 = MEMORY[0x23EF21150](v10);

    sub_23ED3AB38(v11);

    sub_23ED419E0();
  }

  else
  {
    v12 = *(a1 + 8);
    sub_23ED419F0();
    sub_23ED36088(&qword_27E384B70, MEMORY[0x277D63F60]);
    sub_23ED415E0();
    __break(1u);
  }
}

uint64_t sub_23ED3580C@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for AlarmConfirmation() + 20);
  a1();
  sub_23ED36884();
  result = sub_23ED41770();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t AlarmConfirmation.body.getter()
{
  v1 = *(type metadata accessor for AlarmConfirmation() - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  sub_23ED35FB8(v0, &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = swift_allocObject();
  sub_23ED36020(&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v4 + v3);
  sub_23ED41920();
  sub_23ED36088(&qword_27E384B78, MEMORY[0x277D63C38]);
  return sub_23ED418F0();
}

uint64_t sub_23ED359D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = sub_23ED418B0();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20]();
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for AlarmConfirmation() - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v46 = v9;
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BB0, &qword_23ED41DE0);
  v50 = *(v11 - 8);
  v12 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = v37 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BB8, &qword_23ED41DE8);
  v51 = *(v47 - 8);
  v15 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = v37 - v16;
  v40 = a1;
  v43 = v10;
  sub_23ED35FB8(a1, v10);
  v18 = *(v7 + 80);
  v45 = (v18 + 16) & ~v18;
  v19 = swift_allocObject();
  sub_23ED36020(v10, v19 + ((v18 + 16) & ~v18));
  v53 = a1;
  sub_23ED41880();
  v20 = *MEMORY[0x277D63A78];
  v21 = v3;
  v44 = *(v3 + 104);
  v38 = v6;
  v22 = v49;
  v44(v6, v20, v49);
  v23 = sub_23ED366B8(&qword_27E384BC0, &qword_27E384BB0, &qword_23ED41DE0);
  v24 = v11;
  sub_23ED41790();
  v25 = *(v21 + 8);
  v41 = v21 + 8;
  v42 = v25;
  v25(v6, v22);
  v39 = *(v50 + 8);
  v50 += 8;
  v39(v14, v11);
  v57 = v11;
  v58 = v23;
  v37[1] = swift_getOpaqueTypeConformance2();
  v26 = v47;
  v27 = sub_23ED41780();
  v28 = *(v51 + 8);
  v51 += 8;
  v37[0] = v28;
  v28(v17, v26);
  v59 = MEMORY[0x277CE11C8];
  v60 = MEMORY[0x277D63A60];
  v57 = v27;
  v29 = v40;
  v30 = v43;
  sub_23ED35FB8(v40, v43);
  v31 = v45;
  v32 = swift_allocObject();
  sub_23ED36020(v30, v32 + v31);
  v52 = v29;
  sub_23ED41880();
  v33 = v38;
  v34 = v49;
  v44(v38, *MEMORY[0x277D63A88], v49);
  sub_23ED41790();
  v42(v33, v34);
  v39(v14, v24);
  v35 = sub_23ED41780();
  (v37[0])(v17, v26);
  v56 = MEMORY[0x277D63A60];
  v55 = MEMORY[0x277CE11C8];
  v54 = v35;
  return sub_23ED41910();
}

uint64_t sub_23ED35FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmConfirmation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED36020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmConfirmation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED36088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED36110(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  sub_23ED35FB8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_23ED36020(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_23ED41920();
  sub_23ED36088(&qword_27E384B78, MEMORY[0x277D63C38]);
  return sub_23ED418F0();
}

uint64_t sub_23ED36264(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23ED41430();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23ED36330(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_23ED41430();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23ED363D4()
{
  sub_23ED36458();
  if (v0 <= 0x3F)
  {
    sub_23ED41430();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23ED36458()
{
  if (!qword_27E384B90)
  {
    sub_23ED419F0();
    sub_23ED36088(&qword_27E384B70, MEMORY[0x277D63F60]);
    v0 = sub_23ED41600();
    if (!v1)
    {
      atomic_store(v0, &qword_27E384B90);
    }
  }
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

void type metadata accessor for VRXIdiom()
{
  if (!qword_27E384BA8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27E384BA8);
    }
  }
}

uint64_t sub_23ED365C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AlarmConfirmation() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23ED359D0(v4, a1);
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

uint64_t sub_23ED366B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for AlarmConfirmation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23ED41430();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_23ED36884()
{
  result = qword_27E384BC8;
  if (!qword_27E384BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384BC8);
  }

  return result;
}

uint64_t sub_23ED368E8()
{
  v0 = sub_23ED41580();
  __swift_allocate_value_buffer(v0, qword_27E384BD0);
  __swift_project_value_buffer(v0, qword_27E384BD0);
  return sub_23ED41570();
}

uint64_t AlarmSelector.init(snippetModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23ED419F0();
  sub_23ED38D58(&qword_27E384B70, MEMORY[0x277D63F60]);
  *a2 = sub_23ED415F0();
  a2[1] = v4;
  v5 = *(type metadata accessor for AlarmSelector(0) + 20);
  v6 = sub_23ED41410();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t AlarmSelector.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_23ED419C0();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BE8, &qword_23ED41E00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v35 - v7);
  v9 = type metadata accessor for AlarmSelector(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BF0, &qword_23ED41E08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BF8, &qword_23ED41E10);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v35 - v19;
  sub_23ED370E8(v1, &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  sub_23ED37150(&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C00, &qword_23ED41E18);
  sub_23ED366B8(&qword_27E384C08, &qword_27E384C00, &qword_23ED41E18);
  sub_23ED418F0();
  *v8 = sub_23ED41830();
  v23 = *MEMORY[0x277D63BB0];
  v24 = sub_23ED41900();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v8, v23, v24);
  (*(v25 + 56))(v8, 0, 1, v24);
  sub_23ED366B8(&qword_27E384C10, &qword_27E384BF0, &qword_23ED41E08);
  sub_23ED417C0();
  sub_23ED371CC(v8);
  (*(v13 + 8))(v16, v12);
  KeyPath = swift_getKeyPath();
  v27 = &v20[*(v17 + 36)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C18, &qword_23ED41E50) + 28);
  v29 = *MEMORY[0x277CDF3C0];
  v30 = sub_23ED41590();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = KeyPath;
  v32 = v35;
  v31 = v36;
  v33 = v37;
  (*(v36 + 104))(v35, *MEMORY[0x277D63EC0], v37);
  sub_23ED37FB8();
  sub_23ED417D0();
  (*(v31 + 8))(v32, v33);
  return sub_23ED380E0(v20);
}

uint64_t sub_23ED36F28(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSelector(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = sub_23ED41970();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = a1 + *(v3 + 28);
  v9 = sub_23ED41400();
  v18 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x277D63F80];
  v16 = v9;
  v17 = v10;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  sub_23ED41960();
  sub_23ED370E8(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_23ED37150(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C70, &qword_23ED41F60);
  sub_23ED38F78();
  return sub_23ED41930();
}

uint64_t sub_23ED370E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSelector(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED37150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSelector(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23ED371CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BE8, &qword_23ED41E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23ED37234(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSelector(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  v11[3] = sub_23ED413F0();
  sub_23ED370E8(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23ED37150(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C88, &qword_23ED41F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C90, &qword_23ED41F70);
  sub_23ED366B8(&qword_27E384C98, &qword_27E384C88, &qword_23ED41F68);
  v8 = type metadata accessor for AlarmItemView(255);
  v9 = sub_23ED38D58(&qword_27E384C80, type metadata accessor for AlarmItemView);
  v11[1] = v8;
  v11[2] = v9;
  swift_getOpaqueTypeConformance2();
  sub_23ED38D58(&qword_27E384CA0, MEMORY[0x277D617A0]);
  return sub_23ED418A0();
}

uint64_t sub_23ED37470@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v57 = a2;
  v53 = *(type metadata accessor for AlarmSelector(0) - 8);
  v4 = *(v53 + 64);
  (MEMORY[0x28223BE20])();
  v54 = v5;
  v55 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_23ED41170() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_23ED41300() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(sub_23ED412E0() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_23ED412C0() - 8) + 64);
  (MEMORY[0x28223BE20])();
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C58, &unk_23ED41F20) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v15 = &v42 - v14;
  v16 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C60, &qword_23ED42440) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v18 = &v42 - v17;
  v19 = sub_23ED41550();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = (MEMORY[0x28223BE20])();
  v49 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  v26 = type metadata accessor for AlarmItemView(0);
  v27 = *(*(v26 - 1) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(v20 + 16);
  v45 = v25;
  v52 = a1;
  v47 = v19;
  v44(v25, a1, v19);
  v30 = *v57;
  if (*v57)
  {
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    v42 = v26[7];
    v43 = v30;
    sub_23ED411D0();
    v31 = sub_23ED411E0();
    (*(*(v31 - 8) + 56))(v18, 0, 1, v31);
    sub_23ED411B0();
    v32 = sub_23ED411C0();
    (*(*(v32 - 8) + 56))(v15, 0, 1, v32);
    sub_23ED412B0();
    sub_23ED412D0();
    sub_23ED412F0();
    sub_23ED41160();
    sub_23ED41220();
    v33 = *(v20 + 32);
    v34 = v47;
    v33(&v29[v26[5]], v45, v47);
    *&v29[v26[6]] = v43;
    v35 = v49;
    v44(v49, v52, v34);
    v36 = v55;
    sub_23ED370E8(v57, v55);
    v37 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v38 = (v46 + *(v53 + 80) + v37) & ~*(v53 + 80);
    v39 = swift_allocObject();
    v33((v39 + v37), v35, v34);
    sub_23ED37150(v36, v39 + v38);
    sub_23ED38D58(&qword_27E384C80, type metadata accessor for AlarmItemView);
    sub_23ED417B0();

    return sub_23ED39314(v29);
  }

  else
  {
    v41 = v57[1];
    sub_23ED419F0();
    sub_23ED38D58(&qword_27E384B70, MEMORY[0x277D63F60]);
    result = sub_23ED415E0();
    __break(1u);
  }

  return result;
}

void sub_23ED37AAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23ED41390();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23ED41550();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E384B60 != -1)
  {
    swift_once();
  }

  v13 = sub_23ED41580();
  __swift_project_value_buffer(v13, qword_27E384BD0);
  (*(v9 + 16))(v12, a1, v8);
  v14 = sub_23ED41560();
  v15 = sub_23ED41A30();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = a2;
    v19 = v18;
    v36 = v18;
    *v17 = 136315138;
    v20 = sub_23ED41500();
    v22 = v21;
    (*(v9 + 8))(v12, v8);
    v23 = sub_23ED393A8(v20, v22, &v36);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_23ED34000, v14, v15, "[AlarmItem] send directInvocation: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    a2 = v32;
    MEMORY[0x23EF21AA0](v24, -1, -1);
    MEMORY[0x23EF21AA0](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v25 = *a2;
  if (*a2)
  {
    v27 = v34;
    v26 = v35;
    (*(v34 + 104))(v7, *MEMORY[0x277D61860], v35);
    v28 = v25;
    sub_23ED41380();
    (*(v27 + 8))(v7, v26);
    sub_23ED41500();
    sub_23ED414B0();
    v29 = sub_23ED41370();

    sub_23ED3AB38(v29);

    sub_23ED419E0();
  }

  else
  {
    v30 = *(a2 + 8);
    sub_23ED419F0();
    sub_23ED38D58(&qword_27E384B70, MEMORY[0x277D63F60]);
    sub_23ED415E0();
    __break(1u);
  }
}

uint64_t sub_23ED37EEC(uint64_t a1)
{
  v2 = sub_23ED41590();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23ED41640();
}

unint64_t sub_23ED37FB8()
{
  result = qword_27E384C20;
  if (!qword_27E384C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384BF8, &qword_23ED41E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384BF0, &qword_23ED41E08);
    sub_23ED366B8(&qword_27E384C10, &qword_27E384BF0, &qword_23ED41E08);
    swift_getOpaqueTypeConformance2();
    sub_23ED366B8(&qword_27E384C28, &qword_27E384C18, &qword_23ED41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384C20);
  }

  return result;
}

uint64_t sub_23ED380E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BF8, &qword_23ED41E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23ED3817C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23ED41410();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23ED38248(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_23ED41410();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23ED382EC()
{
  sub_23ED36458();
  if (v0 <= 0x3F)
  {
    sub_23ED41410();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_23ED38370()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384BF8, &qword_23ED41E10);
  sub_23ED37FB8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23ED383E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23ED41550();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_23ED41240();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_23ED38524(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_23ED41550();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_23ED41240();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_23ED3866C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23ED386A4()
{
  sub_23ED38758();
  if (v0 <= 0x3F)
  {
    sub_23ED41550();
    if (v1 <= 0x3F)
    {
      sub_23ED419F0();
      if (v2 <= 0x3F)
      {
        sub_23ED41240();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23ED38758()
{
  if (!qword_27E384C50)
  {
    type metadata accessor for VRXIdiom();
    v0 = sub_23ED415A0();
    if (!v1)
    {
      atomic_store(v0, &qword_27E384C50);
    }
  }
}

uint64_t sub_23ED387CC@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v2 = sub_23ED41170();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23ED41300();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23ED412E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_23ED412C0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C58, &unk_23ED41F20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C60, &qword_23ED42440);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = v47 - v18;
  v20 = type metadata accessor for AlarmTimeLabelView();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(type metadata accessor for AlarmItemView(0) + 20);
  v48 = v1;
  sub_23ED41530();
  v25 = &v23[v20[5]];
  sub_23ED41540();
  v26 = &v23[v20[6]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v47[1] = v20[7];
  sub_23ED411D0();
  v27 = sub_23ED411E0();
  (*(*(v27 - 8) + 56))(v19, 0, 1, v27);
  sub_23ED411B0();
  v28 = sub_23ED411C0();
  (*(*(v28 - 8) + 56))(v15, 0, 1, v28);
  sub_23ED412B0();
  sub_23ED412D0();
  sub_23ED412F0();
  sub_23ED41160();
  sub_23ED41220();
  sub_23ED38D58(&qword_27E384C68, type metadata accessor for AlarmTimeLabelView);
  v29 = sub_23ED41890();
  v69 = MEMORY[0x277CE11C8];
  v70 = MEMORY[0x277D63A60];
  v68 = v29;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v61 = sub_23ED41510();
  v62 = v30;
  sub_23ED36884();
  v31 = sub_23ED41770();
  v33 = v32;
  LOBYTE(v19) = v34;
  sub_23ED41710();
  v35 = sub_23ED41750();
  v37 = v36;
  LOBYTE(v15) = v38;

  sub_23ED38DA0(v31, v33, v19 & 1);

  sub_23ED41840();
  v39 = sub_23ED41740();
  v41 = v40;
  LOBYTE(v24) = v42;
  v44 = v43;

  sub_23ED38DA0(v35, v37, v15 & 1);

  v63 = MEMORY[0x277CE0BD8];
  v64 = MEMORY[0x277D638E8];
  v45 = swift_allocObject();
  v61 = v45;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v24 & 1;
  *(v45 + 40) = v44;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  return sub_23ED41980();
}

uint64_t sub_23ED38D04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23ED41610();
  *a1 = result;
  return result;
}

uint64_t sub_23ED38D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED38DA0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_23ED38DB0()
{
  sub_23ED38DA0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for AlarmSelector(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23ED41410();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23ED38EF4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AlarmSelector(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23ED38F78()
{
  result = qword_27E384C78;
  if (!qword_27E384C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384C70, &qword_23ED41F60);
    type metadata accessor for AlarmItemView(255);
    sub_23ED38D58(&qword_27E384C80, type metadata accessor for AlarmItemView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384C78);
  }

  return result;
}

uint64_t sub_23ED3905C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AlarmSelector(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_23ED37470(a1, v6, a2);
}

uint64_t sub_23ED390DC()
{
  v1 = sub_23ED41550();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for AlarmSelector(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);

  v11 = v6[7];
  v12 = sub_23ED41410();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

void sub_23ED39248()
{
  v1 = *(sub_23ED41550() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for AlarmSelector(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_23ED37AAC(v0 + v2, v5);
}

uint64_t sub_23ED39314(uint64_t a1)
{
  v2 = type metadata accessor for AlarmItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23ED393A8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23ED39474(v11, 0, 0, 1, a1, a2);
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
    sub_23ED3999C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23ED39474(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23ED39580(a5, a6);
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
    result = sub_23ED41A70();
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

uint64_t sub_23ED39580(uint64_t a1, unint64_t a2)
{
  v4 = sub_23ED395CC(a1, a2);
  sub_23ED396FC(&unk_285160128);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23ED395CC(uint64_t a1, unint64_t a2)
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

  v6 = sub_23ED397E8(v5, 0);
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

  result = sub_23ED41A70();
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
        v10 = sub_23ED41A20();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23ED397E8(v10, 0);
        result = sub_23ED41A60();
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

uint64_t sub_23ED396FC(uint64_t result)
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

  result = sub_23ED3985C(result, v12, 1, v3);
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

void *sub_23ED397E8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CA8, &qword_23ED41F78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23ED3985C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CA8, &qword_23ED41F78);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23ED3999C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_23ED39AD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_23ED412C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23ED41290();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_23ED41240();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_23ED39C54(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_23ED412C0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_23ED41290();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_23ED41240();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for AlarmTimeLabelView()
{
  result = qword_27E384CB8;
  if (!qword_27E384CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23ED39E14()
{
  sub_23ED412C0();
  if (v0 <= 0x3F)
  {
    sub_23ED41290();
    if (v1 <= 0x3F)
    {
      sub_23ED38758();
      if (v2 <= 0x3F)
      {
        sub_23ED41240();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23ED39EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v76 = a1;
  v3 = sub_23ED41070();
  v74 = *(v3 - 8);
  v75 = v3;
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CC8, &qword_23ED42390);
  v71 = *(v6 - 8);
  v72 = v6;
  v7 = *(v71 + 64);
  MEMORY[0x28223BE20](v6);
  v70 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CD0, &unk_23ED41FF0);
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  MEMORY[0x28223BE20](v9);
  v63 = &v58 - v11;
  v12 = sub_23ED41110();
  v68 = *(v12 - 8);
  v69 = v12;
  v13 = *(v68 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CD8, &qword_23ED42360);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CE0, &qword_23ED42000);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CE8, &qword_23ED42008);
  v62 = *(v25 - 8);
  v26 = *(v62 + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v58 - v27;
  v29 = sub_23ED41200();
  v60 = *(v29 - 8);
  v61 = v29;
  v30 = *(v60 + 64);
  MEMORY[0x28223BE20](v29);
  v32 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_23ED41240();
  v33 = *(v59 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v59);
  v36 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AlarmTimeLabelView();
  v38 = v1 + *(v37 + 28);
  sub_23ED41230();
  sub_23ED411A0();
  (*(v33 + 8))(v36, v59);
  v39 = v2 + *(v37 + 20);
  sub_23ED411F0();
  (*(v60 + 8))(v32, v61);
  v40 = sub_23ED412C0();
  v41 = *(*(v40 - 8) + 56);
  v42 = (v62 + 48);
  while (1)
  {
    v77 = 11501794;
    v78 = 0xA300000000000000;
    v41(v20, 1, 1, v40);
    sub_23ED410C0();
    sub_23ED3A804();
    sub_23ED36884();
    sub_23ED41150();
    sub_23ED3AAC0(v20, &qword_27E384CD8, &qword_23ED42360);
    if ((*v42)(v24, 1, v25) == 1)
    {
      break;
    }

    sub_23ED3A9EC(v24, v28);
    sub_23ED3AA5C();
    sub_23ED410A0();
    sub_23ED3AAC0(v28, &qword_27E384CE8, &qword_23ED42008);
  }

  sub_23ED3AAC0(v24, &qword_27E384CE0, &qword_23ED42000);
  KeyPath = swift_getKeyPath();
  *(&v58 - 2) = MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_23ED3A87C();
  v44 = v63;
  sub_23ED410E0();

  v77 = sub_23ED416F0();
  v45 = v65;
  v46 = v66;
  sub_23ED410F0();

  (*(v64 + 8))(v44, v45);
  sub_23ED41690();
  sub_23ED416D0();
  v47 = sub_23ED41700();

  v77 = v47;
  sub_23ED410D0();
  v48 = swift_getKeyPath();
  *(&v58 - 2) = MEMORY[0x28223BE20](v48);
  swift_getKeyPath();
  sub_23ED3A980();
  v49 = v70;
  sub_23ED410E0();

  v51 = v73;
  v50 = v74;
  v52 = v75;
  (*(v74 + 104))(v73, *MEMORY[0x277CC8A98], v75);
  v53 = v67;
  v54 = v72;
  sub_23ED410F0();
  (*(v50 + 8))(v51, v52);
  (*(v71 + 8))(v49, v54);
  sub_23ED410B0();
  v55 = v69;
  v56 = *(v68 + 8);
  v56(v53, v69);
  return (v56)(v46, v55);
}

uint64_t sub_23ED3A710(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D10, &qword_23ED420F0);
  return sub_23ED41A10() & 1;
}

uint64_t sub_23ED3A774@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23ED410C0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23ED39EE4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_23ED41760();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

unint64_t sub_23ED3A804()
{
  result = qword_27E384CF0;
  if (!qword_27E384CF0)
  {
    sub_23ED410C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384CF0);
  }

  return result;
}

unint64_t sub_23ED3A87C()
{
  result = qword_27E384CF8;
  if (!qword_27E384CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384CF8);
  }

  return result;
}

void sub_23ED3A8D0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_23ED3A87C();
  sub_23ED41140();
  __break(1u);
}

uint64_t sub_23ED3A91C(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D10, &qword_23ED420F0);
  return sub_23ED41A00();
}

unint64_t sub_23ED3A980()
{
  result = qword_27E384D00;
  if (!qword_27E384D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D00);
  }

  return result;
}

uint64_t sub_23ED3A9EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CE8, &qword_23ED42008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23ED3AA5C()
{
  result = qword_27E384D08;
  if (!qword_27E384D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384CE8, &qword_23ED42008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D08);
  }

  return result;
}

uint64_t sub_23ED3AAC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23ED3AB38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E78, &qword_23ED42420);
    v2 = sub_23ED41A80();
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
    sub_23ED3999C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_23ED40C8C(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_23ED40C8C(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_23ED40C8C(v32, v33);
    v17 = *(v2 + 40);
    result = sub_23ED41A50();
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
    result = sub_23ED40C8C(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_23ED3AE00(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E60, &qword_23ED42410);
  return sub_23ED41A10() & 1;
}

uint64_t sub_23ED3AE64(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E60, &qword_23ED42410);
  return sub_23ED41A00();
}

void sub_23ED3AEB4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_23ED3A980();
  sub_23ED41130();
  __break(1u);
}

uint64_t sub_23ED3AEF8()
{
  v0 = sub_23ED41580();
  __swift_allocate_value_buffer(v0, qword_27E384D18);
  __swift_project_value_buffer(v0, qword_27E384D18);
  return sub_23ED41570();
}

uint64_t AlarmSnippet.init(snippetModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23ED419F0();
  sub_23ED3B7F0(&qword_27E384B70, MEMORY[0x277D63F60]);
  *a2 = sub_23ED415F0();
  a2[1] = v4;
  v5 = *(type metadata accessor for AlarmSnippet(0) + 20);
  v6 = sub_23ED413C0();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t AlarmSnippet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384BE8, &qword_23ED41E00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v27 - v6);
  v8 = type metadata accessor for AlarmSnippet(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D30, &qword_23ED42118);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_23ED40694(v2, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmSnippet);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_23ED40714(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AlarmSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D38, &qword_23ED42120);
  sub_23ED3B680();
  sub_23ED418F0();
  *v7 = sub_23ED41830();
  v18 = *MEMORY[0x277D63BB0];
  v19 = sub_23ED41900();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v7, v18, v19);
  (*(v20 + 56))(v7, 0, 1, v19);
  sub_23ED366B8(&qword_27E384D68, &qword_27E384D30, &qword_23ED42118);
  sub_23ED417C0();
  sub_23ED3AAC0(v7, &qword_27E384BE8, &qword_23ED41E00);
  (*(v12 + 8))(v15, v11);
  KeyPath = swift_getKeyPath();
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D70, &unk_23ED42160) + 36));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C18, &qword_23ED41E50) + 28);
  v24 = *MEMORY[0x277CDF3C0];
  v25 = sub_23ED41590();
  result = (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = KeyPath;
  return result;
}

uint64_t sub_23ED3B40C(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = a1 + *(MEMORY[0x28223BE20](v2 - 8) + 28);
  v9[1] = sub_23ED413B0();
  sub_23ED40694(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmSnippet);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23ED40714(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for AlarmSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E88, &qword_23ED42428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D50, &qword_23ED42128);
  sub_23ED366B8(&qword_27E384E90, &qword_27E384E88, &qword_23ED42428);
  sub_23ED3B704();
  sub_23ED3B7F0(&qword_27E384E98, MEMORY[0x277D61790]);
  return sub_23ED418A0();
}

uint64_t sub_23ED3B610()
{
  v1 = *(type metadata accessor for AlarmSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23ED3B40C(v2);
}

unint64_t sub_23ED3B680()
{
  result = qword_27E384D40;
  if (!qword_27E384D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D38, &qword_23ED42120);
    sub_23ED3B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D40);
  }

  return result;
}

unint64_t sub_23ED3B704()
{
  result = qword_27E384D48;
  if (!qword_27E384D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D50, &qword_23ED42128);
    sub_23ED3B7F0(&qword_27E384D58, type metadata accessor for SleepAlarmView);
    sub_23ED3B7F0(&qword_27E384D60, type metadata accessor for AlarmView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D48);
  }

  return result;
}

uint64_t sub_23ED3B7F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23ED3B880@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a3;
  v68 = type metadata accessor for AlarmView(0);
  v5 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v59 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384EA0, &unk_23ED42430);
  v7 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v65 = v57 - v8;
  v9 = sub_23ED41170();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23ED41300();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23ED412E0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v61 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23ED412C0();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C58, &unk_23ED41F20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384C60, &qword_23ED42440);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = v57 - v26;
  v69 = sub_23ED414F0();
  v28 = *(v69 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v69);
  v32 = v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v57 - v33;
  v67 = type metadata accessor for SleepAlarmView(0);
  v35 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v37 = v57 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_23ED41450();
  v39 = *(v28 + 16);
  v60 = v39;
  if (v38)
  {
    v39(v34, a1, v69);
    v40 = *a2;
    if (*a2)
    {
      v58 = *(v67 + 28);
      v59 = v40;
      sub_23ED411D0();
      v41 = sub_23ED411E0();
      (*(*(v41 - 8) + 56))(v27, 0, 1, v41);
      sub_23ED411B0();
      v42 = sub_23ED411C0();
      (*(*(v42 - 8) + 56))(v23, 0, 1, v42);
      sub_23ED412B0();
      sub_23ED412D0();
      sub_23ED412F0();
      sub_23ED41160();
      sub_23ED41220();
      v43 = v69;
      v60(v37, v34, v69);
      v44 = v67;
      *&v37[*(v67 + 20)] = v59;
      v45 = sub_23ED414D0();
      (*(v28 + 8))(v34, v43);
      v46 = &v37[*(v44 + 24)];
      *v46 = v45 & 1;
      *(v46 + 1) = 0;
      sub_23ED40694(v37, v65, type metadata accessor for SleepAlarmView);
      swift_storeEnumTagMultiPayload();
      sub_23ED3B7F0(&qword_27E384D58, type metadata accessor for SleepAlarmView);
      sub_23ED3B7F0(&qword_27E384D60, type metadata accessor for AlarmView);
      sub_23ED41660();
      v47 = type metadata accessor for SleepAlarmView;
      return sub_23ED40E58(v37, v47);
    }
  }

  else
  {
    v39(v32, a1, v69);
    v48 = *a2;
    if (*a2)
    {
      v57[1] = *(v68 + 28);
      v58 = v48;
      sub_23ED411D0();
      v49 = sub_23ED411E0();
      (*(*(v49 - 8) + 56))(v27, 0, 1, v49);
      sub_23ED411B0();
      v50 = sub_23ED411C0();
      (*(*(v50 - 8) + 56))(v23, 0, 1, v50);
      sub_23ED412B0();
      sub_23ED412D0();
      sub_23ED412F0();
      sub_23ED41160();
      v37 = v59;
      sub_23ED41220();
      v51 = v69;
      v60(v37, v32, v69);
      v52 = v68;
      *&v37[*(v68 + 20)] = v58;
      v53 = sub_23ED414D0();
      (*(v28 + 8))(v32, v51);
      v54 = &v37[*(v52 + 24)];
      *v54 = v53 & 1;
      *(v54 + 1) = 0;
      sub_23ED40694(v37, v65, type metadata accessor for AlarmView);
      swift_storeEnumTagMultiPayload();
      sub_23ED3B7F0(&qword_27E384D58, type metadata accessor for SleepAlarmView);
      sub_23ED3B7F0(&qword_27E384D60, type metadata accessor for AlarmView);
      sub_23ED41660();
      v47 = type metadata accessor for AlarmView;
      return sub_23ED40E58(v37, v47);
    }
  }

  v56 = *(a2 + 8);
  sub_23ED419F0();
  sub_23ED3B7F0(&qword_27E384B70, MEMORY[0x277D63F60]);
  result = sub_23ED415E0();
  __break(1u);
  return result;
}

uint64_t sub_23ED3C128@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = sub_23ED41070();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CC8, &qword_23ED42390);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](v6);
  v64 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E50, &qword_23ED42398);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v60 = &v55 - v11;
  v12 = sub_23ED41110();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v55 - v16;
  v17 = sub_23ED41290();
  v57 = *(v17 - 8);
  v58 = v17;
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_23ED412C0();
  v21 = *(v56 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v56);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23ED41270();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v55 - v31;
  v55 = type metadata accessor for AlarmView(0);
  v33 = v1 + *(v55 + 28);
  sub_23ED41210();
  sub_23ED414C0();
  sub_23ED41260();
  (*(v21 + 8))(v24, v56);
  v34 = *(v26 + 8);
  v34(v30, v25);
  sub_23ED414E0();
  sub_23ED41250();
  (*(v57 + 8))(v20, v58);
  v34(v32, v25);
  sub_23ED41100();
  v35 = (v2 + *(v55 + 24));
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v72) = v36;
  v73 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E18, &qword_23ED42368);
  sub_23ED41850();
  if (v71 == 1)
  {
    v38 = sub_23ED41840();
  }

  else
  {
    v38 = sub_23ED41820();
  }

  v72 = v38;
  sub_23ED40A7C();
  sub_23ED410D0();
  v39 = sub_23ED416B0();
  v40 = *(*(v39 - 8) + 56);
  v41 = v60;
  v40(v60, 1, 1, v39);
  sub_23ED416E0();
  sub_23ED3AAC0(v41, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416C0();
  v42 = sub_23ED41700();

  v72 = v42;
  sub_23ED3A87C();
  sub_23ED410D0();
  v40(v41, 1, 1, v39);
  sub_23ED416E0();
  sub_23ED3AAC0(v41, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416D0();
  v43 = sub_23ED41700();

  v72 = v43;
  v44 = v70;
  sub_23ED41120();
  KeyPath = swift_getKeyPath();
  *(&v55 - 2) = MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_23ED3A980();
  v46 = v64;
  sub_23ED410E0();

  v48 = v67;
  v47 = v68;
  v49 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277CC8A98], v69);
  v50 = v61;
  v51 = v66;
  sub_23ED410F0();
  (*(v47 + 8))(v48, v49);
  (*(v65 + 8))(v46, v51);
  sub_23ED410B0();
  v52 = v63;
  v53 = *(v62 + 8);
  v53(v50, v63);
  return (v53)(v44, v52);
}

uint64_t sub_23ED3C87C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for AlarmView(0);
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v69 = v6;
  v66 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23ED410C0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_23ED419B0();
  v61 = *(v63 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v60 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E68, &qword_23ED42418);
  v64 = *(v65 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v62 = v54 - v14;
  v15 = (v1 + *(v4 + 32));
  v68 = *v15;
  v16 = *(v15 + 1);
  LOBYTE(v80) = v68;
  v81 = v16;
  v54[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E18, &qword_23ED42368);
  sub_23ED41860();
  v57 = v84;
  v56 = v85;
  v55 = v86;
  sub_23ED3C128(v10);
  v17 = sub_23ED41760();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v87 = MEMORY[0x277CE0BD8];
  v88 = MEMORY[0x277D638E8];
  v24 = swift_allocObject();
  v84 = v24;
  *(v24 + 16) = v17;
  *(v24 + 24) = v19;
  *(v24 + 32) = v21 & 1;
  *(v24 + 40) = v23;
  v70 = v2;
  v80 = sub_23ED41460();
  v81 = v25;
  sub_23ED36884();
  v26 = sub_23ED41770();
  v28 = v27;
  v30 = v29;
  sub_23ED416A0();
  v31 = sub_23ED41750();
  v33 = v32;
  v35 = v34;

  sub_23ED38DA0(v26, v28, v30 & 1);

  LOBYTE(v80) = v68;
  v58 = v16;
  v81 = v16;
  sub_23ED41850();
  if (v77 == 1)
  {
    sub_23ED41840();
  }

  else
  {
    sub_23ED41820();
  }

  v36 = sub_23ED41740();
  v38 = v37;
  v40 = v39;
  v42 = v41;

  sub_23ED38DA0(v31, v33, v35 & 1);

  v82 = MEMORY[0x277CE0BD8];
  v83 = MEMORY[0x277D638E8];
  v43 = swift_allocObject();
  v80 = v43;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40 & 1;
  *(v43 + 40) = v42;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v76 = 0;
  v75 = 0u;
  v74 = 0u;
  v73 = 0;
  v72 = 0u;
  v71 = 0u;
  v44 = v60;
  sub_23ED419A0();
  LOBYTE(v84) = v68;
  v85 = v58;
  sub_23ED41850();
  LOBYTE(v84) = v80;
  v45 = v66;
  sub_23ED40694(v70, v66, type metadata accessor for AlarmView);
  v46 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v47 = swift_allocObject();
  sub_23ED40714(v45, v47 + v46, type metadata accessor for AlarmView);
  v48 = sub_23ED3B7F0(&qword_27E384E70, MEMORY[0x277D63E88]);
  v49 = v62;
  v50 = v63;
  sub_23ED41810();

  (*(v61 + 8))(v44, v50);
  sub_23ED40694(v70, v45, type metadata accessor for AlarmView);
  v51 = swift_allocObject();
  sub_23ED40714(v45, v51 + v46, type metadata accessor for AlarmView);
  v84 = v50;
  v85 = MEMORY[0x277D839B0];
  v86 = v48;
  v87 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v52 = v65;
  sub_23ED417B0();

  return (*(v64 + 8))(v49, v52);
}

uint64_t sub_23ED3CF7C(char a1)
{
  v2 = sub_23ED41390();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23ED413E0();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E384B68 != -1)
  {
    swift_once();
  }

  v10 = sub_23ED41580();
  __swift_project_value_buffer(v10, qword_27E384D18);
  v11 = sub_23ED41560();
  v12 = sub_23ED41A30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&dword_23ED34000, v11, v12, "[AlarmView.sendDirectInvocation]: %{BOOL}d", v13, 8u);
    MEMORY[0x23EF21AA0](v13, -1, -1);
  }

  v14 = v6[13];
  v14(v9, *MEMORY[0x277D61770], v5);
  sub_23ED413D0();
  v15 = v6[1];
  v15(v9, v5);
  if ((a1 & 1) == 0)
  {

    v14(v9, *MEMORY[0x277D61778], v5);
    sub_23ED413D0();
    v15(v9, v5);
  }

  v16 = type metadata accessor for AlarmView(0);
  v17 = v25;
  v18 = *(v26 + *(v16 + 20));
  v19 = v23;
  v20 = v24;
  (*(v24 + 104))(v23, *MEMORY[0x277D61860], v25);
  sub_23ED41380();
  (*(v20 + 8))(v19, v17);
  sub_23ED414B0();
  v21 = sub_23ED41370();

  sub_23ED3AB38(v21);

  sub_23ED419E0();
}

uint64_t sub_23ED3D2F0(uint64_t a1)
{
  v2 = sub_23ED41320();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D78, &qword_23ED42170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - v9;
  v11 = sub_23ED41190();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E384B68 != -1)
  {
    swift_once();
  }

  v16 = sub_23ED41580();
  __swift_project_value_buffer(v16, qword_27E384D18);
  v17 = sub_23ED41560();
  v18 = sub_23ED41A30();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v12;
    v20 = v11;
    v21 = v15;
    v22 = v6;
    v23 = a1;
    v24 = v3;
    v25 = v2;
    v26 = v19;
    *v19 = 0;
    _os_log_impl(&dword_23ED34000, v17, v18, "[AlarmView.onSnippetTapped]: Performing punchout", v19, 2u);
    v27 = v26;
    v2 = v25;
    v3 = v24;
    a1 = v23;
    v6 = v22;
    v15 = v21;
    v11 = v20;
    v12 = v31;
    MEMORY[0x23EF21AA0](v27, -1, -1);
  }

  sub_23ED41470();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_23ED3AAC0(v10, &qword_27E384D78, &qword_23ED42170);
  }

  (*(v12 + 32))(v15, v10, v11);
  v29 = *(a1 + *(type metadata accessor for AlarmView(0) + 20));
  sub_23ED41180();
  sub_23ED41310();
  sub_23ED419D0();
  (*(v3 + 8))(v6, v2);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_23ED3D640@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_23ED41070();
  v59 = *(v2 - 8);
  v60 = v2;
  v3 = *(v59 + 64);
  MEMORY[0x28223BE20](v2);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CC8, &qword_23ED42390);
  v58 = *(v56 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E50, &qword_23ED42398);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v51 = &v49 - v9;
  v10 = sub_23ED41110();
  v54 = *(v10 - 8);
  v55 = v10;
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v61 = &v49 - v14;
  v15 = sub_23ED41290();
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_23ED412C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23ED41270();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v49 - v30;
  v32 = v1 + *(type metadata accessor for SleepAlarmView(0) + 28);
  sub_23ED41210();
  sub_23ED414C0();
  sub_23ED41260();
  (*(v20 + 8))(v23, v19);
  v33 = *(v25 + 8);
  v33(v29, v24);
  sub_23ED414E0();
  sub_23ED41250();
  (*(v49 + 8))(v18, v50);
  v33(v31, v24);
  sub_23ED41100();
  v64 = sub_23ED41840();
  sub_23ED40A7C();
  sub_23ED410D0();
  v34 = sub_23ED416B0();
  v35 = *(*(v34 - 8) + 56);
  v36 = v51;
  v35(v51, 1, 1, v34);
  sub_23ED416E0();
  sub_23ED3AAC0(v36, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416C0();
  v37 = sub_23ED41700();

  v64 = v37;
  sub_23ED3A87C();
  sub_23ED410D0();
  v35(v36, 1, 1, v34);
  sub_23ED416E0();
  sub_23ED3AAC0(v36, &qword_27E384E50, &qword_23ED42398);
  sub_23ED416D0();
  v38 = sub_23ED41700();

  v64 = v38;
  v39 = v61;
  sub_23ED41120();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_23ED3A980();
  v40 = v53;
  sub_23ED410E0();

  v42 = v59;
  v41 = v60;
  v43 = v57;
  (*(v59 + 104))(v57, *MEMORY[0x277CC8A98], v60);
  v44 = v52;
  v45 = v56;
  sub_23ED410F0();
  (*(v42 + 8))(v43, v41);
  (*(v58 + 8))(v40, v45);
  sub_23ED410B0();
  v46 = v55;
  v47 = *(v54 + 8);
  v47(v44, v55);
  return (v47)(v39, v46);
}

uint64_t sub_23ED3DD28@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384DF0, &qword_23ED42340);
  v2 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v70 = &v54 - v3;
  v4 = type metadata accessor for SleepAlarmView(0);
  v5 = *(v4 - 8);
  v61 = v4 - 8;
  v62 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = v7;
  v64 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384DF8, &qword_23ED42348);
  v8 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v60 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E00, &qword_23ED42350);
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v66 = &v54 - v12;
  v59 = sub_23ED41330();
  v13 = *(v59 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v59);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23ED41350();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_23ED418D0();
  v57 = *(v19 - 8);
  v20 = *(v57 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E08, &qword_23ED42358);
  v58 = *(v56 - 8);
  v23 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  v25 = &v54 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384CD8, &qword_23ED42360);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v29 = &v54 - v28;
  v73 = sub_23ED41440();
  v74 = v30;
  sub_23ED414C0();
  v31 = sub_23ED412C0();
  (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  sub_23ED36884();
  v54 = sub_23ED41A40();
  v55 = v32;
  sub_23ED3AAC0(v29, &qword_27E384CD8, &qword_23ED42360);

  sub_23ED41340();
  sub_23ED418E0();
  v33 = v59;
  (*(v13 + 104))(v16, *MEMORY[0x277D62BD8], v59);
  v34 = sub_23ED3B7F0(&qword_27E384E10, MEMORY[0x277D63B20]);
  sub_23ED417A0();
  (*(v13 + 8))(v16, v33);
  v35 = v22;
  v36 = v60;
  (*(v57 + 8))(v35, v19);
  v73 = v19;
  v74 = v34;
  swift_getOpaqueTypeConformance2();
  v37 = v56;
  v38 = sub_23ED41780();
  (*(v58 + 8))(v25, v37);
  v39 = v1 + *(v61 + 32);
  v40 = *v39;
  v41 = *(v39 + 8);
  LOBYTE(v73) = v40;
  v74 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E18, &qword_23ED42368);
  sub_23ED41850();
  LODWORD(v37) = v72;
  *v36 = sub_23ED41650();
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  v42 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E20, &qword_23ED42370) + 44));
  if (v37 == 1)
  {
    sub_23ED3E62C(v1, v38, v54, v55, v42);
  }

  else
  {
    sub_23ED3EC30(v1, v38, v54, v55, v42);
  }

  v43 = sub_23ED41670();
  v44 = v64;
  v45 = v65;
  v46 = v36 + *(v65 + 36);
  *v46 = v43;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  *(v46 + 40) = 1;
  sub_23ED40694(v1, v44, type metadata accessor for SleepAlarmView);
  v47 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v48 = swift_allocObject();
  sub_23ED40714(v44, v48 + v47, type metadata accessor for SleepAlarmView);
  v49 = sub_23ED4077C();
  v50 = v66;
  sub_23ED417B0();

  sub_23ED3AAC0(v36, &qword_27E384DF8, &qword_23ED42348);
  v52 = v67;
  v51 = v68;
  (*(v67 + 16))(v70, v50, v68);
  swift_storeEnumTagMultiPayload();
  v73 = v45;
  v74 = v49;
  swift_getOpaqueTypeConformance2();
  sub_23ED41660();

  return (*(v52 + 8))(v50, v51);
}

uint64_t sub_23ED3E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *&v78 = a3;
  *(&v78 + 1) = a4;
  v76 = a2;
  v75[1] = a1;
  v85 = a5;
  v5 = sub_23ED410C0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E40, &qword_23ED42380);
  v9 = *(v8 - 8);
  v83 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v84 = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = v75 - v13;
  v14 = sub_23ED41950();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v79 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v86 = v75 - v18;
  v111 = sub_23ED41480();
  v112 = v19;
  v75[2] = sub_23ED36884();
  v20 = sub_23ED41770();
  v22 = v21;
  v24 = v23;
  sub_23ED41720();
  v25 = sub_23ED41750();
  v27 = v26;
  v29 = v28;

  sub_23ED38DA0(v20, v22, v24 & 1);

  sub_23ED41840();
  v30 = sub_23ED41740();
  v32 = v31;
  LOBYTE(v22) = v33;
  v35 = v34;

  sub_23ED38DA0(v25, v27, v29 & 1);

  v113 = MEMORY[0x277CE0BD8];
  v114 = MEMORY[0x277D638E8];
  v36 = MEMORY[0x277D638E8];
  v37 = swift_allocObject();
  v111 = v37;
  *(v37 + 16) = v30;
  *(v37 + 24) = v32;
  *(v37 + 32) = v22 & 1;
  *(v37 + 40) = v35;
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v95 = 0;
  v93 = 0u;
  v94 = 0u;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v88 = MEMORY[0x277CE11C8];
  v89 = MEMORY[0x277D63A60];
  v87 = v76;

  sub_23ED41940();
  sub_23ED3D640(v77);
  v38 = sub_23ED41760();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v113 = MEMORY[0x277CE0BD8];
  v114 = v36;
  v45 = swift_allocObject();
  v111 = v45;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42 & 1;
  *(v45 + 40) = v44;
  v108 = v78;

  v46 = sub_23ED41770();
  v48 = v47;
  v50 = v49;
  sub_23ED416A0();
  v51 = sub_23ED41750();
  v53 = v52;
  LOBYTE(v22) = v54;

  sub_23ED38DA0(v46, v48, v50 & 1);

  sub_23ED41840();
  v55 = sub_23ED41740();
  v57 = v56;
  LOBYTE(v44) = v58;
  v60 = v59;

  sub_23ED38DA0(v51, v53, v22 & 1);

  *(&v109 + 1) = MEMORY[0x277CE0BD8];
  v110 = MEMORY[0x277D638E8];
  v61 = swift_allocObject();
  *&v108 = v61;
  *(v61 + 16) = v55;
  *(v61 + 24) = v57;
  *(v61 + 32) = v44 & 1;
  *(v61 + 40) = v60;
  v107 = 0;
  v105 = 0u;
  v106 = 0u;
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v62 = v80;
  sub_23ED41990();
  v63 = sub_23ED41680();
  v64 = v82;
  v65 = v62 + *(v83 + 44);
  *v65 = v63;
  *(v65 + 8) = 0u;
  *(v65 + 24) = 0u;
  *(v65 + 40) = 1;
  v66 = v81;
  v67 = *(v81 + 16);
  v68 = v79;
  v69 = v86;
  v67(v79, v86, v64);
  v70 = v84;
  sub_23ED40A0C(v62, v84);
  v71 = v85;
  v67(v85, v68, v64);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E48, &qword_23ED42388);
  sub_23ED40A0C(v70, &v71[*(v72 + 48)]);
  sub_23ED3AAC0(v62, &qword_27E384E40, &qword_23ED42380);
  v73 = *(v66 + 8);
  v73(v69, v64);
  sub_23ED3AAC0(v70, &qword_27E384E40, &qword_23ED42380);
  return (v73)(v68, v64);
}

uint64_t sub_23ED3EC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *&v90 = a3;
  *(&v90 + 1) = a4;
  v87 = a1;
  v88 = a2;
  v97 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E50, &qword_23ED42398);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E40, &qword_23ED42380);
  v9 = *(v8 - 8);
  v95 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v96 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v87 - v13;
  v14 = sub_23ED41950();
  v93 = *(v14 - 8);
  v94 = v14;
  v15 = *(v93 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v99 = &v87 - v18;
  v124 = sub_23ED41480();
  v125 = v19;
  v98 = sub_23ED36884();
  v20 = sub_23ED41770();
  v22 = v21;
  v24 = v23;
  sub_23ED41720();
  v25 = sub_23ED41750();
  v27 = v26;
  v29 = v28;

  sub_23ED38DA0(v20, v22, v24 & 1);

  sub_23ED41840();
  v30 = sub_23ED41740();
  v32 = v31;
  LOBYTE(v22) = v33;
  v35 = v34;

  sub_23ED38DA0(v25, v27, v29 & 1);

  v126 = MEMORY[0x277CE0BD8];
  v127 = MEMORY[0x277D638E8];
  v36 = swift_allocObject();
  v124 = v36;
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  *(v36 + 32) = v22 & 1;
  *(v36 + 40) = v35;
  v123 = 0;
  v121 = 0u;
  v122 = 0u;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  v101 = MEMORY[0x277CE11C8];
  v102 = MEMORY[0x277D63A60];
  v100 = v88;

  sub_23ED41940();
  v124 = sub_23ED41490();
  v125 = v37;
  v38 = sub_23ED41770();
  v40 = v39;
  LOBYTE(v20) = v41;
  v42 = sub_23ED416B0();
  v43 = v89;
  (*(*(v42 - 8) + 56))(v89, 1, 1, v42);
  sub_23ED416E0();
  sub_23ED3AAC0(v43, &qword_27E384E50, &qword_23ED42398);
  v44 = sub_23ED41750();
  v46 = v45;
  LOBYTE(v32) = v47;

  sub_23ED38DA0(v38, v40, v20 & 1);

  sub_23ED416D0();
  v48 = sub_23ED41730();
  v50 = v49;
  LOBYTE(v20) = v51;
  sub_23ED38DA0(v44, v46, v32 & 1);

  sub_23ED41820();
  v52 = sub_23ED41740();
  v54 = v53;
  LOBYTE(v40) = v55;
  v57 = v56;

  sub_23ED38DA0(v48, v50, v20 & 1);

  v126 = MEMORY[0x277CE0BD8];
  v127 = MEMORY[0x277D638E8];
  v58 = swift_allocObject();
  v124 = v58;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v40 & 1;
  *(v58 + 40) = v57;
  v121 = v90;

  v59 = sub_23ED41770();
  v61 = v60;
  LOBYTE(v20) = v62;
  sub_23ED416A0();
  v63 = sub_23ED41750();
  v65 = v64;
  LOBYTE(v40) = v66;

  sub_23ED38DA0(v59, v61, v20 & 1);

  sub_23ED41820();
  v67 = sub_23ED41740();
  v69 = v68;
  LOBYTE(v44) = v70;
  v72 = v71;

  sub_23ED38DA0(v63, v65, v40 & 1);

  *(&v122 + 1) = MEMORY[0x277CE0BD8];
  v123 = MEMORY[0x277D638E8];
  v73 = swift_allocObject();
  *&v121 = v73;
  *(v73 + 16) = v67;
  *(v73 + 24) = v69;
  *(v73 + 32) = v44 & 1;
  *(v73 + 40) = v72;
  v120 = 0;
  v118 = 0u;
  v119 = 0u;
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v114 = 0;
  v112 = 0u;
  v113 = 0u;
  v74 = v92;
  sub_23ED41990();
  v75 = sub_23ED41680();
  v76 = v94;
  v77 = v74 + *(v95 + 44);
  *v77 = v75;
  *(v77 + 8) = 0u;
  *(v77 + 24) = 0u;
  *(v77 + 40) = 1;
  v78 = v93;
  v79 = *(v93 + 16);
  v80 = v91;
  v81 = v99;
  v79(v91, v99, v76);
  v82 = v96;
  sub_23ED40A0C(v74, v96);
  v83 = v97;
  v79(v97, v80, v76);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E48, &qword_23ED42388);
  sub_23ED40A0C(v82, &v83[*(v84 + 48)]);
  sub_23ED3AAC0(v74, &qword_27E384E40, &qword_23ED42380);
  v85 = *(v78 + 8);
  v85(v81, v76);
  sub_23ED3AAC0(v82, &qword_27E384E40, &qword_23ED42380);
  return (v85)(v80, v76);
}

uint64_t sub_23ED3F394(uint64_t a1)
{
  v2 = sub_23ED41320();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D78, &qword_23ED42170);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = sub_23ED41190();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23ED41470();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_23ED3AAC0(v10, &qword_27E384D78, &qword_23ED42170);
  }

  (*(v12 + 32))(v15, v10, v11);
  v17 = *(a1 + *(type metadata accessor for SleepAlarmView(0) + 20));
  sub_23ED41180();
  sub_23ED41310();
  sub_23ED419D0();
  (*(v3 + 8))(v6, v2);
  return (*(v12 + 8))(v15, v11);
}

uint64_t static AlarmSnippet_Previews.previews.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_23ED413C0();
  v26 = *(v1 - 8);
  v27 = v1;
  v2 = *(v26 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v24 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D78, &qword_23ED42170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_23ED412C0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_23ED41290();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384D80, &qword_23ED42178);
  v14 = *(sub_23ED414F0() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_23ED42100;
  sub_23ED41280();
  sub_23ED412A0();
  v17 = sub_23ED41190();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  sub_23ED414A0();
  sub_23ED41280();
  sub_23ED412A0();
  v18(v9, 1, 1, v17);
  sub_23ED414A0();
  sub_23ED41280();
  sub_23ED412A0();
  v18(v9, 1, 1, v17);
  sub_23ED414A0();
  sub_23ED41280();
  sub_23ED412A0();
  v18(v9, 1, 1, v17);
  sub_23ED414A0();
  v19 = v24;
  sub_23ED413A0();
  v20 = v26;
  v21 = v27;
  (*(v26 + 16))(v25, v19, v27);
  type metadata accessor for AlarmSnippet(0);
  sub_23ED3B7F0(&qword_27E384D88, MEMORY[0x277D61768]);
  sub_23ED3B7F0(&qword_27E384D90, type metadata accessor for AlarmSnippet);
  sub_23ED418C0();
  return (*(v20 + 8))(v19, v21);
}

uint64_t sub_23ED3FC64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for AlarmSnippet(0) + 20);
  v5 = sub_23ED413C0();
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  sub_23ED419F0();
  sub_23ED3B7F0(&qword_27E384B70, MEMORY[0x277D63F60]);
  result = sub_23ED415F0();
  *a2 = result;
  a2[1] = v7;
  return result;
}

unint64_t sub_23ED3FD48()
{
  result = qword_27E384D98;
  if (!qword_27E384D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384D98);
  }

  return result;
}

uint64_t sub_23ED3FDC0(uint64_t a1)
{
  v2 = sub_23ED40C9C();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_23ED3FE0C(uint64_t a1)
{
  v2 = sub_23ED40C9C();

  return MEMORY[0x28212D8E0](a1, v2);
}

uint64_t sub_23ED3FE6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_23ED413C0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_23ED3FF38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_23ED413C0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23ED3FFDC()
{
  sub_23ED36458();
  if (v0 <= 0x3F)
  {
    sub_23ED413C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for AlarmSnippet_Previews(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AlarmSnippet_Previews(_WORD *result, int a2, int a3)
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

unint64_t sub_23ED40148()
{
  result = qword_27E384DB0;
  if (!qword_27E384DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D70, &unk_23ED42160);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384D30, &qword_23ED42118);
    sub_23ED366B8(&qword_27E384D68, &qword_27E384D30, &qword_23ED42118);
    swift_getOpaqueTypeConformance2();
    sub_23ED366B8(&qword_27E384C28, &qword_27E384C18, &qword_23ED41E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384DB0);
  }

  return result;
}

void sub_23ED402E4()
{
  if (!qword_27E384DD8)
  {
    v0 = sub_23ED41870();
    if (!v1)
    {
      atomic_store(v0, &qword_27E384DD8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_15Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23ED414F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_23ED41240();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_16Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_23ED414F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_23ED41240();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_23ED405A8()
{
  sub_23ED414F0();
  if (v0 <= 0x3F)
  {
    sub_23ED419F0();
    if (v1 <= 0x3F)
    {
      sub_23ED402E4();
      if (v2 <= 0x3F)
      {
        sub_23ED41240();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23ED40694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23ED40714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23ED4077C()
{
  result = qword_27E384E28;
  if (!qword_27E384E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384DF8, &qword_23ED42348);
    sub_23ED366B8(&qword_27E384E30, &qword_27E384E38, &qword_23ED42378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384E28);
  }

  return result;
}

uint64_t objectdestroy_29Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = sub_23ED414F0();
  (*(*(v6 - 8) + 8))(v1 + v4, v6);

  v7 = *(v1 + v4 + v2[8] + 8);

  v8 = v2[9];
  v9 = sub_23ED41240();
  (*(*(v9 - 8) + 8))(v1 + v4 + v8, v9);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t sub_23ED409C8()
{
  sub_23ED38DA0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23ED40A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E40, &qword_23ED42380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23ED40A7C()
{
  result = qword_27E384E58;
  if (!qword_27E384E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384E58);
  }

  return result;
}

void sub_23ED40AF0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_23ED3A980();
  sub_23ED41130();
  __break(1u);
}

uint64_t sub_23ED40B3C(uint64_t *a1)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E384E60, &qword_23ED42410);
  return sub_23ED41A00();
}

uint64_t sub_23ED40BB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for AlarmView(0) - 8);
  result = *a2;
  if (*a1 != result)
  {
    v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
    return sub_23ED3CF7C(result);
  }

  return result;
}

uint64_t sub_23ED40C2C()
{
  v1 = *(type metadata accessor for AlarmView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23ED3D2F0(v2);
}

_OWORD *sub_23ED40C8C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23ED40C9C()
{
  result = qword_27E384E80;
  if (!qword_27E384E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384E80);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for AlarmSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_23ED413C0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23ED40DD8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AlarmSnippet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23ED3B880(a1, v6, a2);
}

uint64_t sub_23ED40E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23ED40EBC()
{
  result = qword_27E384EA8;
  if (!qword_27E384EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E384EB0, &qword_23ED42448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384DF8, &qword_23ED42348);
    sub_23ED4077C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E384EA8);
  }

  return result;
}

uint64_t sub_23ED40F7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E384E68, &qword_23ED42418);
  sub_23ED419B0();
  sub_23ED3B7F0(&qword_27E384E70, MEMORY[0x277D63E88]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}