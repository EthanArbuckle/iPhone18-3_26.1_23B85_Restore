uint64_t sub_213D32F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  type metadata accessor for MapBridgingView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v3 = type metadata accessor for MapPreferenceWrapper();
  return (*(*(v3 - 8) + 56))(a2, 1, 1, v3);
}

uint64_t sub_213D330D4()
{
  type metadata accessor for _MapContentView();
  swift_getWitnessTable();
  return sub_213D90A0C();
}

uint64_t sub_213D331F4()
{
  type metadata accessor for MapPreferenceWrapperHolder();
  sub_213D4C8F8(&qword_27C8EBB08, v0, type metadata accessor for MapPreferenceWrapperHolder);
  sub_213D9047C();
  sub_213D9048C();
}

uint64_t sub_213D33278()
{
  sub_213CE2AD4(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_213D332D4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MapPreferenceWrapperHolder();
  result = sub_213D9047C();
  *a1 = result;
  return result;
}

double sub_213D33310()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    return *(v0 + 16);
  }

  v8 = *(v0 + 16);

  sub_213D91BDC();
  v9 = sub_213D9119C();
  sub_213D9043C();

  sub_213D90BFC();
  swift_getAtKeyPath();
  sub_213CCCE18(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_213D3345C()
{
  v1 = sub_213D90C0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    v9 = *(v0 + 56);
    v10 = *(v0 + 64);
    sub_213CF95E4(*(v0 + 48));
  }

  else
  {

    sub_213D91BDC();
    v11 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213D4C940(v7, v6, v8, 0);
    (*(v2 + 8))(v5, v1);
    return v13[1];
  }

  return v7;
}

uint64_t sub_213D335D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_213CE2C28(a1, &v6 - v4, &qword_27C8EBB58, &unk_213D985B0);
  sub_213D9156C();
  return sub_213CD8330(a1, &qword_27C8EBB58, &unk_213D985B0);
}

uint64_t sub_213D3369C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = *(a2 + 48);
  sub_213CE2C28(a1, &v9 - v7, &qword_27C8EBB58, &unk_213D985B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9158C();
  return sub_213CD8330(a1, &qword_27C8EBB58, &unk_213D985B0);
}

void (*sub_213D33774(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0) - 8) + 64);
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v5);
    v7 = malloc(v5);
  }

  a1[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  a1[2] = v8;
  v9 = *(*(v8 - 8) + 64);
  if (v6)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[3] = v10;
  sub_213CE2C28(v2 + *(a2 + 48), v10, qword_27C8EBCB0, &qword_213D98708);
  sub_213D9157C();
  return sub_213D338B0;
}

void sub_213D338B0(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (a2)
  {
    sub_213CE2C28(*(a1 + 8), v4, &qword_27C8EBB58, &unk_213D985B0);
    sub_213D9158C();
    sub_213CD8330(v2, qword_27C8EBCB0, &qword_213D98708);
    v6 = v5;
    v7 = &qword_27C8EBB58;
    v8 = &unk_213D985B0;
  }

  else
  {
    v9 = *(a1 + 8);
    sub_213D9158C();
    v7 = qword_27C8EBCB0;
    v8 = &qword_213D98708;
    v6 = v2;
  }

  sub_213CD8330(v6, v7, v8);
  free(v2);
  free(v5);

  free(v4);
}

unint64_t sub_213D33988(uint64_t *a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 52));
  v4 = v3[2];
  v7 = *v3;
  v8 = v3[1];
  v6 = *a1;

  sub_213D1DFC0(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  return sub_213D1E068(v4);
}

uint64_t sub_213D33A20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v19 = a1;
  v20 = sub_213D90FEC();
  v2 = *(v19 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v31 = *(v19 + 24);
  v32 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38);
  WitnessTable = swift_getWitnessTable();
  v30 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40);
  v27 = swift_getWitnessTable();
  v28 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48);
  swift_getWitnessTable();
  sub_213D9077C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  swift_getWitnessTable();
  sub_213D4C820();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v4 = sub_213D9031C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v6 = sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578]);
  v23 = OpaqueTypeMetadata2;
  v24 = v4;
  v25 = OpaqueTypeConformance2;
  v26 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_213D4C8F8(&qword_27C8EBEF0, 255, MEMORY[0x277CDE300]);
  v7 = sub_213D905EC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_213D33E60(v19, v11);
  v23 = OpaqueTypeMetadata2;
  v24 = v4;
  v25 = OpaqueTypeConformance2;
  v26 = v6;
  v22 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v15 = v8[2];
  v15(v14, v11, v7);
  v16 = v8[1];
  v16(v11, v7);
  v15(v21, v14, v7);
  return (v16)(v14, v7);
}

uint64_t sub_213D33E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v38 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  v37 = sub_213D90FEC();
  v11 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9157C();
  v14 = type metadata accessor for KeyframeAnimationState();
  (*(*(v14 - 8) + 48))(v10, 1, v14);
  sub_213CD8330(v10, &qword_27C8EBB58, &unk_213D985B0);
  sub_213D90FDC();
  (*(v5 + 16))(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v17 = *(a1 + 24);
  *(v16 + 16) = *(a1 + 16);
  *(v16 + 24) = v17;
  (*(v5 + 32))(v16 + v15, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v18 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38);
  v47 = v17;
  v48 = v18;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40);
  v45 = WitnessTable;
  v46 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48);
  v43 = v21;
  v44 = v22;
  swift_getWitnessTable();
  v23 = sub_213D9077C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  v25 = swift_getWitnessTable();
  v26 = sub_213D4C820();
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v28 = sub_213D9031C();
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578]);
  v39 = OpaqueTypeMetadata2;
  v40 = v28;
  v41 = OpaqueTypeConformance2;
  v42 = v30;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_213D4C8F8(&qword_27C8EBEF0, 255, MEMORY[0x277CDE300]);
  v39 = OpaqueTypeMetadata2;
  v40 = v28;
  v41 = OpaqueTypeConformance2;
  v42 = v30;
  v33 = swift_getOpaqueTypeConformance2();
  return sub_213D36140(v36, sub_213D4C98C, v16, v37, v31, v32, v33);
}

uint64_t sub_213D34388(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - v5;
  v7 = v1 + *(a1 + 56);
  v9 = *v7;
  v8 = *(v7 + 8);
  v10 = *(v1 + 8);
  v11 = *(a1 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9159C();
  v9(v10, v6);

  return sub_213CD8330(v6, qword_27C8EB9C8, qword_213D98278);
}

uint64_t sub_213D34490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v18 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  (*(v3 + 32))(v7 + v6, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v9 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38);
  v23 = v8;
  v24 = v9;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40);
  v21 = WitnessTable;
  v22 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48);
  v19 = v12;
  v20 = v13;
  swift_getWitnessTable();
  result = sub_213D9076C();
  v15 = v18;
  *v18 = result;
  v15[1] = v16;
  return result;
}

uint64_t sub_213D34720@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v64 = a1;
  v73 = a5;
  v8 = sub_213D906CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF00, &unk_213D98B60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v59 - v15;
  v62 = *(a3 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  v61 = a3;
  v21 = sub_213D908CC();
  v65 = *(v21 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  v66 = v21;
  v25 = sub_213D908CC();
  v70 = *(v25 - 8);
  v26 = *(v70 + 64);
  MEMORY[0x28223BE20](v25);
  v67 = &v59 - v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  v71 = v25;
  v63 = sub_213D908CC();
  v72 = *(v63 - 8);
  v28 = *(v72 + 64);
  MEMORY[0x28223BE20](v63);
  v68 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v69 = &v59 - v31;
  v32 = type metadata accessor for MapPreferenceWrapper();
  v60 = a2;
  sub_213D34388(v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF08, &unk_213D99D40);
  v33 = v12;
  (*(v9 + 16))(v12, v64, v8);
  v34 = sub_213D33310();
  v35 = *(v9 + 56);
  v35(v16, 1, 1, v8);
  sub_213CD8330(v16, &qword_27C8EBF10, &qword_213D98B70);
  (*(v9 + 32))(v16, v33, v8);
  v35(v16, 0, 1, v8);
  v36 = type metadata accessor for MapSizingInformation();
  *&v16[*(v36 + 20)] = v34;
  (*(*(v36 - 8) + 56))(v16, 0, 1, v36);
  sub_213CEDCEC(&qword_27C8EBF18, &qword_27C8EBF08, &unk_213D99D40);
  v64 = v24;
  v37 = v61;
  sub_213D912DC();
  v38 = v20;
  v39 = v60;
  (*(v62 + 8))(v38, v37);
  sub_213CD8330(v16, &qword_27C8EBF00, &unk_213D98B60);
  v40 = *(v39 + 32);
  LOBYTE(v37) = *(v39 + 40);
  sub_213CE2A1C(*(v39 + 8) + 16, &v78);
  if (v37)
  {
    v41 = sub_213D1DC64(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBF40, &unk_213D98B88);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_213D94520;
    *(inited + 32) = v40;
    sub_213CE2A1C(&v78, inited + 40);
    v41 = sub_213D1DC64(inited);
    swift_setDeallocating();
    sub_213CD8330(inited + 32, &unk_27C8EB340, &qword_213D97480);
  }

  sub_213CE2AD4(&v78);
  v78 = v41;
  v43 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38);
  v80 = a4;
  v81 = v43;
  v44 = v66;
  WitnessTable = swift_getWitnessTable();
  sub_213D4CE4C();
  v46 = v67;
  v47 = v64;
  sub_213D912DC();

  (*(v65 + 8))(v47, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF28, &qword_213D98B78);
  sub_213CE2A1C(*(v39 + 8) + 16, &v78);
  v79 = 0;
  v48 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40);
  v76 = WitnessTable;
  v77 = v48;
  v49 = v71;
  v50 = swift_getWitnessTable();
  sub_213CEDCEC(&qword_27C8EBF30, &qword_27C8EBF28, &qword_213D98B78);
  v51 = v68;
  sub_213D912DC();
  sub_213CD8330(&v78, &qword_27C8EBF38, &qword_213D98B80);
  (*(v70 + 8))(v46, v49);
  v52 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48);
  v74 = v50;
  v75 = v52;
  v53 = v63;
  swift_getWitnessTable();
  v54 = v72;
  v55 = *(v72 + 16);
  v56 = v69;
  v55(v69, v51, v53);
  v57 = *(v54 + 8);
  v57(v51, v53);
  v55(v73, v56, v53);
  return (v57)(v56, v53);
}

uint64_t sub_213D34F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v71 = a2;
  v65 = a1;
  v69 = a5;
  v74 = sub_213D9031C();
  v68 = *(v74 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v74);
  v67 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for MapPreferenceWrapper();
  v64 = *(v62 - 8);
  v72 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v63 = v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA0, &qword_213D98B38);
  v73 = a3;
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEA8, &qword_213D98B40);
  sub_213D908CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBEB0, &qword_213D98B48);
  sub_213D908CC();
  v10 = sub_213CEDCEC(&qword_27C8EBEB8, &qword_27C8EBEA0, &qword_213D98B38);
  v66 = a4;
  v86 = a4;
  v87 = v10;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_213CEDCEC(&qword_27C8EBEC0, &qword_27C8EBEA8, &qword_213D98B40);
  v84 = WitnessTable;
  v85 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_213CEDCEC(&qword_27C8EBEC8, &qword_27C8EBEB0, &qword_213D98B48);
  v82 = v13;
  v83 = v14;
  swift_getWitnessTable();
  v15 = sub_213D9077C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
  v17 = swift_getWitnessTable();
  v18 = sub_213D4C820();
  v78 = v15;
  v79 = v16;
  v80 = v17;
  v81 = v18;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v70 = v48 - v21;
  v52 = v15;
  v78 = v15;
  v79 = v16;
  v57 = v16;
  v55 = v17;
  v80 = v17;
  v81 = v18;
  v54 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = sub_213D4C8F8(&qword_27C8EBEE8, 255, MEMORY[0x277CC9578]);
  v61 = OpaqueTypeMetadata2;
  v78 = OpaqueTypeMetadata2;
  v79 = v74;
  v56 = OpaqueTypeConformance2;
  v80 = OpaqueTypeConformance2;
  v81 = v23;
  v51 = v23;
  v59 = swift_getOpaqueTypeMetadata2();
  v58 = *(v59 - 8);
  v24 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v50 = v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v53 = v48 - v27;
  v28 = v62;
  v29 = v71;
  sub_213D34490(v62, &v78);
  v76 = v78;
  v77 = v79;
  v48[1] = v79;
  v30 = sub_213D3345C();
  if (v30)
  {
  }

  v75 = v30;
  v31 = v64;
  v49 = *(v64 + 16);
  v32 = v63;
  v49(v63, v29, v28);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v66;
  *(v34 + 16) = v73;
  *(v34 + 24) = v35;
  v64 = *(v31 + 32);
  (v64)(v34 + v33, v32, v28);
  swift_checkMetadataState();
  sub_213D9144C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBEF8, &qword_213D98B58);
  v36 = v67;
  sub_213D905BC();
  v49(v32, v71, v28);
  v37 = swift_allocObject();
  *(v37 + 16) = v73;
  *(v37 + 24) = v35;
  (v64)(v37 + v33, v32, v28);
  v38 = v50;
  v39 = v61;
  v40 = v74;
  v41 = v70;
  sub_213D9144C();

  (*(v68 + 8))(v36, v40);
  (*(v60 + 8))(v41, v39);
  v42 = v58;
  v43 = *(v58 + 16);
  v44 = v53;
  v45 = v59;
  v43(v53, v38, v59);
  v46 = *(v42 + 8);
  v46(v38, v45);
  v43(v69, v44, v45);
  return (v46)(v44, v45);
}

void sub_213D35790(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  v12 = *a1;
  if (*a1)
  {
    v13 = *a2 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v34 = v9;
    v14 = *(*v12 + 80);

    if ((v14(v15) & 1) != 0 || (v16 = type metadata accessor for MapPreferenceWrapper(), !sub_213D3345C()))
    {
    }

    else
    {
      v18 = v17;
      sub_213CE2A1C(*(a3 + 8) + 16, v35);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_213CE2AD4(v35);
      if (Strong)
      {
        v20 = [Strong camera];
        v33 = v18;
        v21 = v20;
        [v20 centerCoordinate];
        v23 = v22;
        v25 = v24;
        [v21 centerCoordinateDistance];
        v27 = v26;
        [v21 heading];
        v29 = v28;
        [v21 pitch];
        v31 = v30;

        v35[0] = v23;
        v35[1] = v25;
        v35[2] = v27;
        v35[3] = v29;
        v35[4] = v31;
        v33(v35);
        sub_213D35A78(v11, v16);

        (*(v7 + 8))(v11, v34);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_213D35A78(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for KeyframeAnimationState();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v8 + 16);
  v18(v11, a1, v7, v15);
  (v18)(v17, v11, v7);
  v19 = *(v12 + 20);
  sub_213D9030C();
  (*(v8 + 8))(v11, v7);
  v20 = *(v12 + 24);
  v21 = sub_213D9031C();
  (*(*(v21 - 8) + 16))(&v17[v20], &v17[v19], v21);
  sub_213D4CAEC(v17, v6, type metadata accessor for KeyframeAnimationState);
  (*(v13 + 56))(v6, 0, 1, v12);
  v22 = v28;
  sub_213D3369C(v6, v28);
  sub_213D9090C();
  v23 = v30;
  v24 = swift_allocObject();
  v25 = v29[1];
  *(v24 + 16) = v29[0];
  *(v24 + 32) = v25;
  *(v24 + 48) = v23;
  *&v29[0] = v24 | 0x6000000000000000;
  sub_213D33988(v29, v22);
  return sub_213D49B70(v17, type metadata accessor for KeyframeAnimationState);
}

uint64_t sub_213D35D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for KeyframeAnimationState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MapPreferenceWrapper();
  v17 = sub_213D33774(v40, v16);
  v19 = v18;
  v38 = v12;
  v20 = *(v12 + 48);
  if (!v20(v18, 1, v11))
  {
    v37 = v15;
    v21 = v16;
    v22 = a3;
    v23 = a2;
    v24 = *(v11 + 24);
    v25 = sub_213D9031C();
    v26 = v23;
    a3 = v22;
    v16 = v21;
    v15 = v37;
    (*(*(v25 - 8) + 24))(v19 + v24, v26, v25);
  }

  v17(v40, 0);
  v27 = *(v16 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);
  sub_213D9157C();
  if (v20(v10, 1, v11) == 1)
  {
    return sub_213CD8330(v10, &qword_27C8EBB58, &unk_213D985B0);
  }

  sub_213D49AE0(v10, v15, type metadata accessor for KeyframeAnimationState);
  sub_213CE2A1C(*(a3 + 8) + 16, v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v40);
  if (Strong)
  {
    v31 = *(v11 + 20);
    v30 = *(v11 + 24);
    sub_213D902FC();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
    sub_213D9091C();
    if (v34 < v33)
    {
      v35 = v39;
      (*(v38 + 56))(v39, 1, 1, v11);
      sub_213D3369C(v35, v16);
    }

    sub_213D902FC();
    sub_213D908FC();
    v36 = [objc_opt_self() cameraLookingAtCenterCoordinate:v40[0] fromDistance:v40[1] pitch:v40[2] heading:{v40[4], v40[3]}];
    [Strong setCamera:v36 animated:0];
  }

  return sub_213D49B70(v15, type metadata accessor for KeyframeAnimationState);
}

uint64_t sub_213D36140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18, v16);
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v19[6] = a2;
  v19[7] = a3;
  sub_213D905DC();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_213D3629C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0A8, &qword_213D97020);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_213CE2C28(v2 + *(a1 + 112), &v18 - v12, &qword_27C8EB0A8, &qword_213D97020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_213D90C7C();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_213D91BDC();
    v17 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_213D364A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0B0, &qword_213D97058);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_213CE2C28(v2 + *(a1 + 116), &v18 - v12, &qword_27C8EB0B0, &qword_213D97058);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_213D9089C();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_213D91BDC();
    v17 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_213D366A4(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 120);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v10 = v9 >> 8;
  }

  else
  {

    sub_213D91BDC();
    v11 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v13[14];
    LODWORD(v10) = v13[15];
  }

  return (v9 & 1) | (v10 << 8);
}

uint64_t sub_213D36808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_213D90C0C();
  v5 = *(v31 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v31);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + *(a1 + 124));
  v10 = v9[7];
  v11 = v9[5];
  v57 = v9[6];
  v58 = v10;
  v12 = v9[7];
  v59[0] = v9[8];
  v13 = v9[3];
  v14 = v9[1];
  v53 = v9[2];
  v54 = v13;
  v15 = v9[3];
  v16 = v9[5];
  v55 = v9[4];
  v56 = v16;
  v17 = v9[1];
  v51 = *v9;
  v52 = v17;
  v60[6] = v57;
  v60[7] = v12;
  v61[0] = v9[8];
  v60[2] = v53;
  v60[3] = v15;
  v60[4] = v55;
  v60[5] = v11;
  *(v59 + 15) = *(v9 + 143);
  *(v61 + 15) = *(v9 + 143);
  v60[0] = v51;
  v60[1] = v14;
  if (sub_213D1E0A4(v60) == 1)
  {
    nullsub_2(v60);
    v39 = v57;
    v40 = v58;
    v41[0] = v59[0];
    *(v41 + 15) = *(v59 + 15);
    v35 = v53;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v33 = v51;
    v34 = v52;
    v18 = nullsub_2(&v33);
    v19 = *(v18 + 16);
    *a2 = *v18;
    *(a2 + 16) = v19;
    v20 = *(v18 + 32);
    v21 = *(v18 + 48);
    v22 = *(v18 + 80);
    *(a2 + 64) = *(v18 + 64);
    *(a2 + 80) = v22;
    *(a2 + 32) = v20;
    *(a2 + 48) = v21;
    v23 = *(v18 + 96);
    v24 = *(v18 + 112);
    v25 = *(v18 + 128);
    *(a2 + 144) = *(v18 + 144);
    *(a2 + 112) = v24;
    *(a2 + 128) = v25;
    *(a2 + 96) = v23;
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    v48 = v57;
    v49 = v58;
    v50[0] = v59[0];
    *(v50 + 15) = *(v59 + 15);
    v26 = nullsub_2(&v42);
    return sub_213D1E0AC(v26, &v32);
  }

  else
  {
    nullsub_2(v60);
    v39 = v57;
    v40 = v58;
    v41[0] = v59[0];
    *(v41 + 15) = *(v59 + 15);
    v35 = v53;
    v36 = v54;
    v37 = v55;
    v38 = v56;
    v33 = v51;
    v34 = v52;
    v28 = *nullsub_2(&v33);
    v42 = v51;
    v43 = v52;
    v46 = v55;
    v47 = v56;
    v44 = v53;
    v45 = v54;
    *(v50 + 15) = *(v59 + 15);
    v49 = v58;
    v50[0] = v59[0];
    v48 = v57;
    v29 = *nullsub_2(&v42);

    sub_213D91BDC();
    v30 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CD8330(&v51, &unk_27C8EB0F0, &qword_213D971E8);
    return (*(v5 + 8))(v8, v31);
  }
}

uint64_t sub_213D36B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAF8, &qword_213D985A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v17 - v12);
  sub_213CE2C28(v2 + *(a1 + 128), &v17 - v12, &unk_27C8EBAF8, &qword_213D985A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_213D49AE0(v13, a2, type metadata accessor for MapControlsConfig);
  }

  v15 = *v13;
  sub_213D91BDC();
  v16 = sub_213D9119C();
  sub_213D9043C();

  sub_213D90BFC();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_213D36D00(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 132);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_213D91BDC();
    v10 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v12[15];
  }

  return v9;
}

uint64_t (*sub_213D36E54(uint64_t a1))()
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 136));
  v9 = *v8;
  LODWORD(v8) = *(v8 + 16);
  v10 = v9;
  v14 = v9;
  if (v8 == 1)
  {
    sub_213CD4E28(v9);
    v11 = v14;
    if (v14)
    {
LABEL_3:
      *(swift_allocObject() + 16) = v11;
      return sub_213D4CEA8;
    }
  }

  else
  {

    sub_213D91BDC();
    v13 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213D497CC(v10, *(&v14 + 1), 0, sub_213D4CEC0);
    (*(v4 + 8))(v7, v3);
    v11 = v15;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t sub_213D3702C(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 140);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*(v8 + 16) == 1)
  {
    sub_213CD4E28(*v8);
  }

  else
  {

    sub_213D91BDC();
    v11 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213D497CC(v9, v10, 0, sub_213D4CEC0);
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return v9;
}

void sub_213D371B4(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 144);
  v11 = *v10;
  if (*(v10 + 8) == 1)
  {
    *a2 = v11;
  }

  else
  {

    sub_213D91BDC();
    v12 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v11, 0);
    (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_213D37310(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 148);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
  }

  else
  {

    sub_213D91BDC();
    v10 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CE2B28(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v12[1];
  }

  return v9;
}

uint64_t sub_213D3746C(uint64_t a1)
{
  v3 = sub_213D90C0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 156);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_213D91BDC();
    v10 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v12[15];
  }

  return v9;
}

uint64_t sub_213D375C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_213D3763C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_213D376B8()
{
  swift_getWitnessTable();
  sub_213D90E1C();
  __break(1u);
}

id sub_213D376F8(uint64_t a1)
{
  type metadata accessor for _SwiftUIMKMapView();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for SwiftUIAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_213D9190C();
  [v5 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v6];

  sub_213CE2B34(0, &unk_27C8EBB10, 0x277CD4ED0);
  v7 = swift_getObjCClassFromMetadata();
  v8 = sub_213D9190C();
  [v5 registerClass:v7 forAnnotationViewWithReuseIdentifier:v8];

  v9 = sub_213D9190C();
  [v5 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v9];

  sub_213CE2A1C(*(v1 + *(a1 + 100)) + 16, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v12);
  if (!Strong || (Strong, Strong != v5))
  {
    swift_unknownObjectWeakAssign();

    sub_213D905AC();
  }

  return v5;
}

uint64_t sub_213D378B8(void *a1, uint64_t a2, int *a3)
{
  v5 = sub_213D90C0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  sub_213D910BC();
  sub_213D910AC();
  v10 = sub_213D9055C();

  v11 = 0;
  if ((v10 & 1) == 0)
  {
    sub_213D910AC();
    v11 = sub_213D9056C();
  }

  sub_213D9108C();
  v12 = v14[1];
  sub_213D9109C();
  sub_213D37A4C(a1, v12, v9, v11, a3);

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_213D37A4C(void *a1, void *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = v5;
  v222 = a4;
  v219 = a3;
  v217 = sub_213D90C0C();
  v216 = *(v217 - 8);
  v10 = *(v216 + 64);
  MEMORY[0x28223BE20](v217);
  v215 = v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v235 = *(v227 - 8);
  v12 = *(v235 + 64);
  MEMORY[0x28223BE20](v227);
  v226 = (v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v225 = (v214 - v15);
  MEMORY[0x28223BE20](v16);
  v224 = v214 - v17;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v236 = *(v231 - 8);
  v18 = *(v236 + 64);
  MEMORY[0x28223BE20](v231);
  v230 = (v214 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v229 = (v214 - v21);
  MEMORY[0x28223BE20](v22);
  v228 = v214 - v23;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v237 = *(v234 - 8);
  v24 = *(v237 + 64);
  MEMORY[0x28223BE20](v234);
  v233 = (v214 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v232 = (v214 - v27);
  MEMORY[0x28223BE20](v28);
  v30 = v214 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v214 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB8, &qword_213D98470);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = v214 - v38;
  [a1 setDelegate_];
  v40 = *(v5 + a5[22]);
  v41 = MEMORY[0x277D85000];
  v42 = *((*MEMORY[0x277D85000] & *a2) + 0x1F8);
  swift_unknownObjectWeakAssign();
  sub_213D4CAEC(v5 + a5[23], v39, type metadata accessor for _MapContentInputs);
  v43 = type metadata accessor for _MapContentInputs(0);
  (*(*(v43 - 8) + 56))(v39, 0, 1, v43);
  sub_213D3BCDC(v39);
  v44 = sub_213D37310(a5);
  v45 = *((*v41 & *a2) + 0x250);
  v46 = *(a2 + v45);
  *(a2 + v45) = v44;

  sub_213CE2C28(v5 + a5[24], v34, qword_27C8EB9C8, qword_213D98278);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  (*(*(v47 - 8) + 56))(v34, 0, 1, v47);
  sub_213D3C250(v34);
  v221 = a5;
  sub_213CE2A1C(*(v5 + a5[25]) + 16, v239);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v239);
  if (!Strong || (Strong, Strong != a1))
  {
    swift_unknownObjectWeakAssign();

    sub_213D905AC();
  }

  v223 = a1;
  v49 = *(a2 + qword_27C8EB3F0);
  v50 = *(a2 + qword_27C8EB3F0 + 8);
  v52 = *v6;
  v51 = v6[1];
  v53 = sub_213D6E568(*v6);
  v56 = v49 != -1 && v53 != -1 && v49 == v53 && v50 == v51;
  LODWORD(v57) = !v56;
  v220 = a2;
  v238 = v6;
  if (v56)
  {
    goto LABEL_42;
  }

  v58 = sub_213D2556C(v6 + v221[21], v52, v51, *(v221 + 2), *(v221 + 3), *(v221 + 4), *(v221 + 5));
  KeyPath = swift_getKeyPath();
  v239[0] = v223;
  v214[2] = KeyPath;
  v60 = sub_213D12848(v223, v58, v219, v222, KeyPath);
  v61 = *(v60 + 16);
  v218 = v57;
  if (v61)
  {
    v214[1] = v58;
    v240 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v62 = 0;
    v63 = v60 + ((*(v237 + 80) + 32) & ~*(v237 + 80));
    v6 = &unk_213D972E0;
    do
    {
      if (v62 >= *(v60 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v64 = v62 + 1;
      sub_213CE2C28(v63 + *(v237 + 72) * v62, v30, &qword_27C8EB288, &unk_213D972E0);
      v65 = v232;
      sub_213CE2C28(v30, v232, &qword_27C8EB288, &unk_213D972E0);
      v66 = *v65;
      v67 = v233;
      v68 = *(v234 + 48);
      *v233 = *v65;
      sub_213D49AE0(v65 + v68, v67 + v68, type metadata accessor for CustomAnnotationViewModel);
      v69 = v66;
      sub_213CD8330(v67, &qword_27C8EB288, &unk_213D972E0);
      sub_213CD8330(v30, &qword_27C8EB288, &unk_213D972E0);
      sub_213D91DEC();
      v57 = *(v240 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      v62 = v64;
    }

    while (v61 != v64);

    v61 = v240;
    v6 = v238;
    LODWORD(v57) = v218;
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
  }

  v240 = MEMORY[0x277D84F90];
  if (v61 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_213D91EBC())
  {
    v71 = 0;
    LODWORD(v57) = v61 & 0xFFFFFFF8;
    while (1)
    {
      if ((v61 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21604EF80](v71, v61);
      }

      else
      {
        if (v71 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v72 = *(v61 + 8 * v71 + 32);
      }

      v73 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      sub_213D91DEC();
      v74 = *(v240 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      ++v71;
      if (v73 == i)
      {
        v75 = v240;
        LODWORD(v57) = v218;
        goto LABEL_38;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v75 = MEMORY[0x277D84F90];
LABEL_38:

  if ((v75 & 0x8000000000000000) == 0 && (v75 & 0x4000000000000000) == 0)
  {
    sub_213D91F6C();
    v76 = v75;
    goto LABEL_41;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v76 = sub_213D91EAC();

LABEL_41:

    v77 = off_28263B048[0];
    v78 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v77(v76, v78, &off_28263B040);

    a2 = v220;
LABEL_42:
    v79 = *(a2 + qword_27C8EB3F8);
    v80 = *(a2 + qword_27C8EB3F8 + 8);
    v81 = v6[2];
    v82 = v6[3];
    v83 = sub_213D6E568(v81);
    if (v79 == -1 || v83 == -1 || v79 != v83 || v80 != v82)
    {
      v87 = v219;
      v88 = sub_213D25A60(v6 + v221[21], v219, 0, v81, v82, *(v221 + 2), *(v221 + 3), *(v221 + 4), *(v221 + 5));
      v89 = swift_getKeyPath();
      v239[0] = v223;
      v237 = v89;
      v90 = sub_213D10738(v223, v88, v87, v222, v89);
      v91 = *(v90 + 16);
      if (v91)
      {
        v234 = v88;
        v240 = MEMORY[0x277D84F90];
        sub_213D91E1C();
        v92 = 0;
        v6 = (v90 + ((*(v236 + 80) + 32) & ~*(v236 + 80)));
        while (v92 < *(v90 + 16))
        {
          v93 = v92 + 1;
          v79 = v228;
          sub_213CE2C28(v6 + *(v236 + 72) * v92, v228, &unk_27C8EBAA0, &unk_213D972B0);
          v94 = v229;
          sub_213CE2C28(v79, v229, &unk_27C8EBAA0, &unk_213D972B0);
          v95 = *v94;
          v96 = v230;
          v97 = *(v231 + 48);
          *v230 = *v94;
          sub_213D49AE0(v94 + v97, v96 + v97, type metadata accessor for MarkerAnnotationViewModel);
          v98 = v95;
          sub_213CD8330(v96, &unk_27C8EBAA0, &unk_213D972B0);
          sub_213CD8330(v79, &unk_27C8EBAA0, &unk_213D972B0);
          sub_213D91DEC();
          v99 = *(v240 + 16);
          sub_213D91E2C();
          sub_213D91E3C();
          sub_213D91DFC();
          v92 = v93;
          if (v91 == v93)
          {

            v79 = v240;
            v6 = v238;
            goto LABEL_58;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

      v79 = MEMORY[0x277D84F90];
LABEL_58:
      v240 = MEMORY[0x277D84F90];
      if (v79 >> 62)
      {
        goto LABEL_71;
      }

      for (j = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_213D91EBC())
      {
        v101 = 0;
        while (1)
        {
          if ((v79 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21604EF80](v101, v79);
          }

          else
          {
            if (v101 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v102 = *(v79 + 8 * v101 + 32);
          }

          v103 = v101 + 1;
          if (__OFADD__(v101, 1))
          {
            break;
          }

          sub_213D91DEC();
          v104 = *(v240 + 16);
          sub_213D91E2C();
          sub_213D91E3C();
          sub_213D91DFC();
          ++v101;
          if (v103 == j)
          {
            v105 = v240;
            goto LABEL_73;
          }
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        ;
      }

      v105 = MEMORY[0x277D84F90];
LABEL_73:

      if (v105 < 0 || (v105 & 0x4000000000000000) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
        v106 = sub_213D91EAC();
      }

      else
      {
        sub_213D91F6C();
        v106 = v105;
      }

      v107 = off_28263B048[0];
      v108 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v107(v106, v108, &off_28263B040);

      LODWORD(v57) = 1;
      a2 = v220;
    }

    v109 = *(a2 + qword_27C8EB408);
    v110 = *(a2 + qword_27C8EB408 + 8);
    v111 = v6[11];
    v237 = v6[10];
    v112 = sub_213D6E568(v237);
    if (v109 != -1 && v112 != -1 && v109 == v112 && v110 == v111)
    {
      goto LABEL_112;
    }

    v218 = v57;
    v116 = sub_213D25F74(v6 + v221[21], v237, v111, *(v221 + 2), *(v221 + 3), *(v221 + 4), *(v221 + 5));
    v117 = swift_getKeyPath();
    v239[0] = v223;
    v118 = sub_213D0E7A4(v223, v116, v219, v222, v117);
    v57 = *(v118 + 16);
    if (!v57)
    {
      break;
    }

    v234 = v116;
    v236 = v117;
    v240 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v119 = 0;
    v120 = v118 + ((*(v235 + 80) + 32) & ~*(v235 + 80));
    while (v119 < *(v118 + 16))
    {
      v121 = v119 + 1;
      v122 = v224;
      sub_213CE2C28(v120 + *(v235 + 72) * v119, v224, &qword_27C8EB208, &unk_213D97260);
      v123 = v225;
      sub_213CE2C28(v122, v225, &qword_27C8EB208, &unk_213D97260);
      v124 = *v123;
      v125 = v226;
      v126 = *(v227 + 48);
      *v226 = *v123;
      sub_213D49AE0(v123 + v126, v125 + v126, type metadata accessor for UserAnnotationViewModel);
      v127 = v124;
      sub_213CD8330(v125, &qword_27C8EB208, &unk_213D97260);
      sub_213CD8330(v122, &qword_27C8EB208, &unk_213D97260);
      sub_213D91DEC();
      v128 = *(v240 + 16);
      sub_213D91E2C();
      v6 = v238;
      sub_213D91E3C();
      sub_213D91DFC();
      v119 = v121;
      if (v57 == v121)
      {

        v129 = v240;
        goto LABEL_93;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  v129 = MEMORY[0x277D84F90];
LABEL_93:
  LODWORD(v57) = v218;
  if (v129 >> 62)
  {
    v137 = v129;
    v130 = sub_213D91EBC();
    v129 = v137;
    if (v130)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v130 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v130)
    {
LABEL_95:
      v131 = 0;
      v132 = v129 & 0xC000000000000001;
      v133 = v129 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        while (!v132)
        {
          if ((v131 & 0x8000000000000000) != 0)
          {
            goto LABEL_105;
          }

          if (v131 >= *(v133 + 16))
          {
            goto LABEL_106;
          }

          if (++v131 == v130)
          {
            goto LABEL_109;
          }
        }

        v134 = v129;
        MEMORY[0x21604EF80](v131);
        result = swift_unknownObjectRelease();
        if (__OFADD__(v131++, 1))
        {
          break;
        }

        v129 = v134;
        if (v131 == v130)
        {
          goto LABEL_109;
        }
      }

      __break(1u);
      return result;
    }
  }

LABEL_109:

  if (MEMORY[0x277D84F90] >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v138 = sub_213D91EAC();
  }

  else
  {
    v138 = MEMORY[0x277D84F90];
    sub_213D91F0C();
  }

  v139 = off_28263B048[0];
  v140 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
  v139(v138, v140, &off_28263B040);

  a2 = v220;
LABEL_112:
  v141 = *(a2 + qword_27C8EB420);
  v142 = *(a2 + qword_27C8EB420 + 8);
  v143 = v6[4];
  v144 = v6[5];
  v145 = sub_213D6E568(v143);
  if (v141 == -1 || v145 == -1 || v141 != v145 || v142 != v144)
  {
    v149 = sub_213D26468(v143);
    swift_getKeyPath();
    sub_213D16E44(v223, v149, v219, v222);

    LODWORD(v57) = 1;
  }

  v150 = *(a2 + qword_27C8EB428);
  v151 = *(a2 + qword_27C8EB428 + 8);
  v152 = v6[6];
  v153 = v6[7];
  v154 = sub_213D6E568(v152);
  if (v150 == -1 || v154 == -1 || v150 != v154 || v151 != v153)
  {
    v158 = sub_213D26950(v152);
    swift_getKeyPath();
    sub_213D17334(v223, v158, v219, v222);

    LODWORD(v57) = 1;
  }

  v159 = *(a2 + qword_27C8EB430);
  v160 = *(a2 + qword_27C8EB430 + 8);
  v161 = v6[8];
  v162 = v6[9];
  v163 = sub_213D6E568(v161);
  if (v159 == -1 || v163 == -1 || v159 != v163 || v160 != v162)
  {
    v164 = sub_213D26EB4(v161);
    swift_getKeyPath();
    sub_213D177D0(v223, v164, v219, v222);

    LODWORD(v57) = 1;
  }

  v165 = v6[13];
  v166 = v6[14];
  v239[0] = v6[12];
  v239[1] = v165;
  v239[2] = v166;
  v167 = *(v237 + 16) != 0;
  v168 = v222 != 0;

  sub_213D1DFC0(v166);
  v169 = v223;
  sub_213D3CC0C(v223, v239, v57, v167, v168);

  v170 = v166;
  v171 = v220;
  sub_213D1E068(v170);
  v172 = v221;
  sub_213D3D530(v169, v6 + v221[21], v168);
  v173 = sub_213D36E54(v172);
  if (v173)
  {
    v175 = v173;
    v176 = v174;
    v177 = swift_allocObject();
    *(v177 + 16) = v175;
    *(v177 + 24) = v176;
    v178 = sub_213D49770;
  }

  else
  {
    v178 = sub_213CCCFF0;
    v177 = 0;
  }

  v179 = v222 != 0;
  v180 = swift_allocObject();
  *(v180 + 16) = v178;
  *(v180 + 24) = v177;
  v181 = v223;
  sub_213D41E5C(v223, sub_213D49738, v180, v179);
  v182 = v181;

  v183 = v221;
  v184 = sub_213D3702C(v221);
  v186 = v185;
  sub_213CD4E28(v184);
  v187 = MEMORY[0x277D85000];
  v188 = (v171 + *((*MEMORY[0x277D85000] & *v171) + 0x238));
  v189 = *v188;
  v190 = v188[1];
  *v188 = v184;
  v188[1] = v186;
  sub_213CCE520(v189);
  sub_213CCE520(v184);
  sub_213D371B4(v183, v239);
  *(v171 + *((*v187 & *v171) + 0x240)) = v239[0];
  sub_213D39814(v182, v183);
  sub_213D398C0(v182, v183);
  sub_213D3B54C(v182, v179);
  v191 = v6 + *(v183 + 152);
  v192 = *v191;
  if (v191[8] != 1)
  {

    sub_213D91BDC();
    v193 = sub_213D9119C();
    sub_213D9043C();

    v194 = v215;
    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v192, 0);
    (*(v216 + 8))(v194, v217);
    LOBYTE(v192) = v239[0];
  }

  v239[0] = v6[24];
  sub_213D422A0(v182, v192 & 1, v239);
  v195 = v221;
  sub_213D3B8C4(v182, v221);
  v196 = sub_213D3746C(v195);
  if (v196 != 2)
  {
    [v182 _setScrollEdgeEffectViewInteractionDisabled_];
  }

  v197 = v6[9];
  v198 = sub_213D6E568(v6[8]);
  v199 = v171 + qword_27C8EB430;
  *v199 = v198;
  *(v199 + 1) = v197;
  v200 = v6[7];
  v201 = sub_213D6E568(v6[6]);
  v202 = v171 + qword_27C8EB428;
  *v202 = v201;
  *(v202 + 1) = v200;
  v203 = v6[5];
  v204 = sub_213D6E568(v6[4]);
  v205 = v171 + qword_27C8EB420;
  *v205 = v204;
  *(v205 + 1) = v203;
  v206 = v6[11];
  v207 = sub_213D6E568(v6[10]);
  v208 = v171 + qword_27C8EB408;
  *v208 = v207;
  *(v208 + 1) = v206;
  v209 = v6[3];
  v210 = sub_213D6E568(v6[2]);
  v211 = v171 + qword_27C8EB3F8;
  *v211 = v210;
  *(v211 + 1) = v209;
  v212 = v6[1];
  result = sub_213D6E568(*v6);
  v213 = v171 + qword_27C8EB3F0;
  *v213 = result;
  *(v213 + 1) = v212;
  return result;
}

uint64_t sub_213D3904C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0C8, &qword_213D97090);
  v0 = *(sub_213D9118C() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  *(swift_allocObject() + 16) = xmmword_213D94520;
  sub_213D9117C();
  sub_213D4C8F8(&qword_27C8EB0D0, 255, MEMORY[0x277CDE558]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0D8, &qword_213D97098);
  sub_213CEDCEC(&qword_27C8EB0E0, &qword_27C8EB0D8, &qword_213D97098);
  return sub_213D91CBC();
}

id sub_213D391D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_213D496F0(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

id sub_213D3931C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_213D9190C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_213D39394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_213D9193C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

void sub_213D39490(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + *a3 + 8);

  v9 = *(a1 + *a4 + 8);

  v10 = *(a1 + *a5);
}

id sub_213D395B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_213D39610(uint64_t a1)
{
  sub_213D4C5D8(319, &qword_27C8EB9B8, type metadata accessor for _MapContentInputs, MEMORY[0x277D83D88]);
  if (v3 <= 0x3F)
  {
    v10 = *(v2 - 8) + 64;
    v8 = *(a1 + 472);
    v9 = *(a1 + 488);
    type metadata accessor for MapSelectionManagerBox();
    sub_213D9162C();
    v4 = sub_213D91C7C();
    if (v5 <= 0x3F)
    {
      v11 = *(v4 - 8) + 64;
      sub_213D4C68C(319, &qword_27C8EB9C0, qword_27C8EB9C8, qword_213D98278, MEMORY[0x277D83D88]);
      if (v7 <= 0x3F)
      {
        v12 = *(v6 - 8) + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_213D39814(void *a1, uint64_t a2)
{
  sub_213D36808(a2, v4);
  isa = MapStyle.configuration()().super.isa;
  v6[6] = v4[6];
  v6[7] = v4[7];
  v6[8] = v4[8];
  v7 = v5;
  v6[2] = v4[2];
  v6[3] = v4[3];
  v6[4] = v4[4];
  v6[5] = v4[5];
  v6[0] = v4[0];
  v6[1] = v4[1];
  sub_213CEB3CC(v6);
  [a1 setPreferredConfiguration_];
}

id sub_213D398C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v250 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v231 = &v204 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v229 = &v204 - v9;
  MEMORY[0x28223BE20](v10);
  v226 = &v204 - v11;
  v237 = type metadata accessor for MapUserLocationButtonConfig(0);
  v246 = *(v237 - 8);
  v12 = *(v246 + 64);
  MEMORY[0x28223BE20](v237);
  v232 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v230 = &v204 - v15;
  MEMORY[0x28223BE20](v16);
  v227 = &v204 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v222 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v218 = &v204 - v22;
  v221 = type metadata accessor for MapCompassConfig(0);
  v220 = *(v221 - 8);
  v23 = *(v220 + 64);
  MEMORY[0x28223BE20](v221);
  v224 = (&v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v25);
  v219 = &v204 - v26;
  v236 = sub_213D90A6C();
  v242 = *(v236 - 8);
  v27 = *(v242 + 64);
  MEMORY[0x28223BE20](v236);
  v228 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v235 = &v204 - v30;
  MEMORY[0x28223BE20](v31);
  v213 = &v204 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v214 = &v204 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v210 = (&v204 - v37);
  MEMORY[0x28223BE20](v38);
  v208 = (&v204 - v39);
  v234 = type metadata accessor for MapPitchToggleConfig(0);
  v238 = *(v234 - 8);
  v40 = *(v238 + 8);
  MEMORY[0x28223BE20](v234);
  v215 = &v204 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v211 = &v204 - v43;
  MEMORY[0x28223BE20](v44);
  v209 = &v204 - v45;
  v46 = sub_213D9051C();
  v245 = *(v46 - 8);
  v47 = *(v245 + 64);
  MEMORY[0x28223BE20](v46);
  v243 = &v204 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v241 = &v204 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v204 - v53;
  v55 = type metadata accessor for MapScaleViewConfig(0);
  v56 = *(v55 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v240 = &v204 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v61 = &v204 - v60;
  v62 = type metadata accessor for MapControlsConfig();
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v225 = &v204 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v223 = &v204 - v66;
  MEMORY[0x28223BE20](v67);
  v217 = &v204 - v68;
  MEMORY[0x28223BE20](v69);
  v216 = &v204 - v70;
  MEMORY[0x28223BE20](v71);
  v212 = &v204 - v72;
  MEMORY[0x28223BE20](v73);
  v207 = &v204 - v74;
  MEMORY[0x28223BE20](v75);
  v206 = &v204 - v76;
  MEMORY[0x28223BE20](v77);
  v205 = &v204 - v78;
  MEMORY[0x28223BE20](v79);
  v81 = &v204 - v80;
  MEMORY[0x28223BE20](v82);
  v84 = &v204 - v83;
  v247 = a2;
  v249 = v3;
  sub_213D36B18(a2, &v204 - v83);
  v244 = v62;
  sub_213CE2C28(&v84[*(v62 + 20)], v54, &unk_27C8EBAE0, &unk_213D9DF40);
  v85 = *(v56 + 48);
  v86 = v85(v54, 1, v55);
  v87 = MEMORY[0x277CDF440];
  v248 = v46;
  if (v86 == 1)
  {
    v88 = sub_213D90D6C();
    sub_213D49B70(v84, type metadata accessor for MapControlsConfig);
    v89 = v245;
    (*(v245 + 104))(&v61[*(v55 + 28)], *v87, v46);
    *(v61 + 1) = v88;
    *v61 = 512;
    if (v85(v54, 1, v55) != 1)
    {
      sub_213CD8330(v54, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D49B70(v84, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v54, v61, type metadata accessor for MapScaleViewConfig);
    v89 = v245;
  }

  v90 = v247;
  v91 = sub_213D36D00(v247);
  v92 = v234;
  if (*v61)
  {
    v93 = v91;
    if (v91 == 3)
    {
      v94 = v61[1];
      sub_213D49B70(v61, type metadata accessor for MapScaleViewConfig);
      v95 = qword_213D98B98[v94];
    }

    else
    {
      sub_213D49B70(v61, type metadata accessor for MapScaleViewConfig);
      v95 = qword_213D98B98[v93];
    }
  }

  else
  {
    sub_213D49B70(v61, type metadata accessor for MapScaleViewConfig);
    v95 = 1;
  }

  [v250 _setScaleVisibility_];
  sub_213D36B18(v90, v81);
  v96 = v241;
  sub_213CE2C28(&v81[*(v244 + 20)], v241, &unk_27C8EBAE0, &unk_213D9DF40);
  v97 = v85(v96, 1, v55);
  v98 = v248;
  v99 = MEMORY[0x277CDF440];
  if (v97 == 1)
  {
    v100 = sub_213D90D6C();
    sub_213D49B70(v81, type metadata accessor for MapControlsConfig);
    v101 = *v99;
    v102 = v240;
    (*(v89 + 104))(v240 + *(v55 + 28), v101, v98);
    *(v102 + 8) = v100;
    v103 = v241;
    *v102 = 512;
    if (v85(v103, 1, v55) != 1)
    {
      sub_213CD8330(v103, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D49B70(v81, type metadata accessor for MapControlsConfig);
    v102 = v240;
    sub_213D49AE0(v96, v240, type metadata accessor for MapScaleViewConfig);
  }

  v241 = *(v90 + 108);
  v104 = v243;
  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v243);
  v105 = sub_213D4F514(v104);
  v106 = v248;
  v239 = *(v89 + 8);
  v240 = v89 + 8;
  v239(v104, v248);
  sub_213D49B70(v102, type metadata accessor for MapScaleViewConfig);
  [v250 _setScaleControlSize_];
  v107 = v205;
  sub_213D36B18(v90, v205);
  v108 = v208;
  sub_213CE2C28(v107, v208, &qword_27C8EBAD8, &unk_213D98590);
  v110 = (v238 + 48);
  v109 = *(v238 + 6);
  v111 = v109(v108, 1, v92);
  v112 = v209;
  v233 = v109;
  if (v111 == 1)
  {
    v113 = &v209[v92[6]];
    sub_213D90A5C();
    sub_213D49B70(v107, type metadata accessor for MapControlsConfig);
    (*(v89 + 104))(&v112[v92[7]], *MEMORY[0x277CDF440], v106);
    v112[1] = 2;
    *&v112[v92[8]] = 0;
    *v112 = 0;
    if (v109(v108, 1, v92) != 1)
    {
      sub_213CD8330(v108, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D49B70(v107, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v108, v112, type metadata accessor for MapPitchToggleConfig);
  }

  v114 = sub_213D36D00(v90);
  if (*v112)
  {
    v115 = v114;
    if (v114 == 3)
    {
      v116 = v112[1];
      sub_213D49B70(v112, type metadata accessor for MapPitchToggleConfig);
      v117 = qword_213D98B98[v116];
    }

    else
    {
      sub_213D49B70(v112, type metadata accessor for MapPitchToggleConfig);
      v117 = qword_213D98B98[v115];
    }
  }

  else
  {
    sub_213D49B70(v112, type metadata accessor for MapPitchToggleConfig);
    v117 = 1;
  }

  [v250 setPitchButtonVisibility_];
  v118 = v206;
  sub_213D36B18(v90, v206);
  v119 = v210;
  sub_213CE2C28(v118, v210, &qword_27C8EBAD8, &unk_213D98590);
  v120 = v233;
  v121 = v233(v119, 1, v92);
  v122 = v211;
  v238 = v110;
  if (v121 == 1)
  {
    v123 = &v211[v92[6]];
    sub_213D90A5C();
    sub_213D49B70(v118, type metadata accessor for MapControlsConfig);
    (*(v89 + 104))(&v122[v92[7]], *MEMORY[0x277CDF440], v106);
    v122[1] = 2;
    *&v122[v92[8]] = 0;
    *v122 = 0;
    if (v120(v119, 1, v92) != 1)
    {
      sub_213CD8330(v119, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D49B70(v118, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v119, v122, type metadata accessor for MapPitchToggleConfig);
  }

  v209 = *(v90 + 104);
  v124 = v213;
  sub_213D48710(&qword_27C8EC550, &qword_213D94A80, MEMORY[0x277CDDBB8], v213);
  v125 = v122;
  v126 = &v122[v92[6]];
  v127 = v235;
  sub_213D90A5C();
  v128 = sub_213D90A2C();
  v129 = v242;
  v131 = v242 + 8;
  v130 = *(v242 + 8);
  v132 = v236;
  v130(v127, v236);
  v135 = *(v129 + 16);
  v134 = v129 + 16;
  v133 = v135;
  if (v128)
  {
    v136 = v124;
  }

  else
  {
    v136 = v126;
  }

  v242 = v134;
  v208 = v133;
  (v133)(v127, v136, v132);
  v137 = v234;
  v138 = sub_213D8B784(v127, 1);
  v213 = v131;
  v210 = v130;
  v130(v124, v132);
  sub_213D49B70(v125, type metadata accessor for MapPitchToggleConfig);
  [v250 _setPitchButtonBackgroundStyle_];
  v139 = v207;
  sub_213D36B18(v247, v207);
  v140 = v214;
  sub_213CE2C28(v139, v214, &qword_27C8EBAD8, &unk_213D98590);
  v141 = v233;
  if (v233(v140, 1, v137) == 1)
  {
    v142 = v215;
    v143 = &v215[v137[6]];
    sub_213D90A5C();
    sub_213D49B70(v139, type metadata accessor for MapControlsConfig);
    (*(v245 + 104))(&v142[v137[7]], *MEMORY[0x277CDF440], v248);
    v142[1] = 2;
    *&v142[v137[8]] = 0;
    *v142 = 0;
    v144 = v141(v140, 1, v137);
    v146 = v243;
    v145 = v244;
    v147 = v221;
    v148 = v219;
    if (v144 != 1)
    {
      sub_213CD8330(v140, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D49B70(v139, type metadata accessor for MapControlsConfig);
    v142 = v215;
    sub_213D49AE0(v140, v215, type metadata accessor for MapPitchToggleConfig);
    v146 = v243;
    v145 = v244;
    v147 = v221;
    v148 = v219;
  }

  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v146);
  v149 = sub_213CDF85C(v146);
  v150 = v248;
  v239(v146, v248);
  sub_213D49B70(v142, type metadata accessor for MapPitchToggleConfig);
  [v250 _setPitchButtonControlSize_];
  v151 = v212;
  v152 = v247;
  sub_213D36B18(v247, v212);
  v153 = v218;
  sub_213CE2C28(v151 + *(v145 + 28), v218, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D49B70(v151, type metadata accessor for MapControlsConfig);
  v154 = *(v220 + 48);
  if (v154(v153, 1, v147) == 1)
  {
    v155 = v150;
    (*(v245 + 104))(v148 + *(v147 + 24), *MEMORY[0x277CDF440], v150);
    *v148 = 512;
    if (v154(v153, 1, v147) != 1)
    {
      sub_213CD8330(v153, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v155 = v150;
    sub_213D49AE0(v153, v148, type metadata accessor for MapCompassConfig);
  }

  v156 = sub_213D36D00(v152);
  v157 = v244;
  if (*v148)
  {
    if (v156 == 3)
    {
      v158 = *(v148 + 1);
    }

    v159 = sub_213D904DC() ^ 1;
  }

  else
  {
    v159 = 0;
  }

  sub_213D49B70(v148, type metadata accessor for MapCompassConfig);
  [v250 setShowsCompass_];
  v160 = v216;
  sub_213D36B18(v152, v216);
  v161 = v222;
  sub_213CE2C28(v160 + *(v157 + 28), v222, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D49B70(v160, type metadata accessor for MapControlsConfig);
  if (v154(v161, 1, v147) == 1)
  {
    v162 = v161;
    v163 = v224;
    (*(v245 + 104))(v224 + *(v147 + 24), *MEMORY[0x277CDF440], v248);
    *v163 = 512;
    v164 = v154(v162, 1, v147);
    v155 = v248;
    v165 = v163;
    v166 = v227;
    if (v164 != 1)
    {
      sub_213CD8330(v162, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v165 = v224;
    sub_213D49AE0(v161, v224, type metadata accessor for MapCompassConfig);
    v166 = v227;
  }

  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v146);
  v167 = v165;
  v168 = sub_213D652C4(v146);
  v239(v146, v155);
  sub_213D49B70(v167, type metadata accessor for MapCompassConfig);
  [v250 setCompassViewSize_];
  v169 = v217;
  sub_213D36B18(v152, v217);
  v170 = v226;
  sub_213CE2C28(v169 + *(v157 + 24), v226, &qword_27C8EBAC8, &unk_213D98580);
  v171 = v155;
  v172 = v246 + 48;
  v173 = *(v246 + 48);
  v174 = v237;
  v175 = v173(v170, 1, v237);
  v246 = v172;
  if (v175 == 1)
  {
    v176 = &v166[v174[6]];
    sub_213D90A5C();
    sub_213D49B70(v169, type metadata accessor for MapControlsConfig);
    (*(v245 + 104))(&v166[v174[7]], *MEMORY[0x277CDF440], v171);
    v166[1] = 2;
    *&v166[v174[8]] = 0;
    *v166 = 0;
    if (v173(v170, 1, v174) != 1)
    {
      sub_213CD8330(v170, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D49B70(v169, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v170, v166, type metadata accessor for MapUserLocationButtonConfig);
  }

  v177 = sub_213D36D00(v152);
  v178 = v229;
  if (*v166)
  {
    if (v177 == 3)
    {
      v179 = v166[1];
    }

    v180 = sub_213D904DC() ^ 1;
  }

  else
  {
    v180 = 0;
  }

  sub_213D49B70(v166, type metadata accessor for MapUserLocationButtonConfig);
  [v250 setShowsUserTrackingButton_];
  v181 = v223;
  sub_213D36B18(v152, v223);
  sub_213CE2C28(v181 + *(v157 + 24), v178, &qword_27C8EBAC8, &unk_213D98580);
  v182 = v237;
  v183 = v173(v178, 1, v237);
  v238 = v173;
  if (v183 == 1)
  {
    v184 = v230;
    v185 = &v230[v182[6]];
    sub_213D90A5C();
    sub_213D49B70(v181, type metadata accessor for MapControlsConfig);
    (*(v245 + 104))(&v184[v182[7]], *MEMORY[0x277CDF440], v248);
    v184[1] = 2;
    *&v184[v182[8]] = 0;
    *v184 = 0;
    if (v173(v178, 1, v182) != 1)
    {
      sub_213CD8330(v178, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D49B70(v181, type metadata accessor for MapControlsConfig);
    v184 = v230;
    sub_213D49AE0(v178, v230, type metadata accessor for MapUserLocationButtonConfig);
  }

  v186 = v228;
  sub_213D48710(&qword_27C8EC550, &qword_213D94A80, MEMORY[0x277CDDBB8], v228);
  v187 = &v184[v182[6]];
  v188 = v235;
  sub_213D90A5C();
  v189 = sub_213D90A2C();
  v190 = v236;
  v191 = v210;
  v210(v188, v236);
  if (v189)
  {
    v192 = v186;
  }

  else
  {
    v192 = v187;
  }

  (v208)(v188, v192, v190);
  v193 = sub_213D8B784(v188, 1);
  v191(v186, v190);
  sub_213D49B70(v184, type metadata accessor for MapUserLocationButtonConfig);
  [v250 _setUserTrackingButtonBackgroundStyle_];
  v194 = v225;
  v195 = v247;
  sub_213D36B18(v247, v225);
  v196 = v231;
  sub_213CE2C28(v194 + *(v244 + 24), v231, &qword_27C8EBAC8, &unk_213D98580);
  v197 = v238;
  if (v238(v196, 1, v182) == 1)
  {
    v198 = v232;
    v199 = &v232[v182[6]];
    sub_213D90A5C();
    sub_213D49B70(v194, type metadata accessor for MapControlsConfig);
    (*(v245 + 104))(&v198[v182[7]], *MEMORY[0x277CDF440], v248);
    v198[1] = 2;
    *&v198[v182[8]] = 0;
    *v198 = 0;
    if (v197(v196, 1, v182) != 1)
    {
      sub_213CD8330(v196, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D49B70(v194, type metadata accessor for MapControlsConfig);
    v198 = v232;
    sub_213D49AE0(v196, v232, type metadata accessor for MapUserLocationButtonConfig);
  }

  v200 = v243;
  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v243);
  v201 = sub_213D83E18(v200);
  v239(v200, v248);
  sub_213D49B70(v198, type metadata accessor for MapUserLocationButtonConfig);
  v202 = v250;
  [v250 _setUserTrackingControlSize_];
  sub_213D366A4(v195);
  LOBYTE(v201) = sub_213D904DC();
  sub_213D366A4(v195);
  [v202 _setShowsAppleLogo_force_];
  return [v202 setShowsAttribution_];
}

void sub_213D3B54C(void *a1, char a2)
{
  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 == 1)
  {
    sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
LABEL_7:
    sub_213CD8330(&v28, &qword_27C8EBAC0, &qword_213D98578);
    [a1 setCameraBoundary_];
    goto LABEL_8;
  }

  sub_213CE2C28(v22, &v28, &qword_27C8EBAC0, &qword_213D98578);
  sub_213D49778(v22);
  if (!*(&v29 + 1))
  {
    goto LABEL_7;
  }

  sub_213D1E2DC(&v28, v31);
  v5 = v32;
  v6 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v6 + 32))(&v28, v5, v6);
  v7 = v28;
  v8 = v29;
  LOBYTE(v5) = v30;
  v9 = objc_allocWithZone(MEMORY[0x277CD4E60]);
  v10 = &selRef_initWithCoordinateRegion_;
  if ((v5 & 1) == 0)
  {
    v10 = &selRef_initWithMapRect_;
  }

  v11 = [v9 *v10];
  [a1 setCameraBoundary:v11 animated:a2 & 1];

  __swift_destroy_boxed_opaque_existential_1(v31);
LABEL_8:
  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 == 1)
  {
LABEL_9:
    sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
    goto LABEL_11;
  }

  v12 = v24;
  v13 = v25;
  sub_213D49778(v22);
  if ((v13 & 1) == 0)
  {
    sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
    if (v23 == 1)
    {
      goto LABEL_9;
    }

    v19 = v26;
    v20 = v27;
    sub_213D49778(v22);
    if ((v20 & 1) == 0)
    {
      v21 = [objc_allocWithZone(MEMORY[0x277CD4E68]) initWithMinCenterCoordinateDistance:v12 maxCenterCoordinateDistance:v19];
      goto LABEL_23;
    }
  }

LABEL_11:
  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 == 1)
  {
    sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
  }

  else
  {
    v14 = v24;
    v15 = v25;
    sub_213D49778(v22);
    if ((v15 & 1) == 0)
    {
      v21 = [objc_allocWithZone(MEMORY[0x277CD4E68]) initWithMinCenterCoordinateDistance_];
      goto LABEL_23;
    }
  }

  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 != 1)
  {
    v16 = v26;
    v17 = v27;
    sub_213D49778(v22);
    if (v17)
    {
      goto LABEL_17;
    }

    v21 = [objc_allocWithZone(MEMORY[0x277CD4E68]) initWithMaxCenterCoordinateDistance_];
LABEL_23:
    v18 = v21;
    goto LABEL_24;
  }

  sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
LABEL_17:
  v18 = 0;
LABEL_24:
  [a1 setCameraZoomRange_];
}

id sub_213D3B8C4(void *a1, uint64_t a2)
{
  v40 = a1;
  v39 = sub_213D9089C();
  v3 = *(v39 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v39);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  v38 = sub_213D90ECC();
  v10 = *(v38 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v38);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_213D90C7C();
  v14 = *(v37 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v37);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  sub_213D3629C(a2, v17);
  sub_213D90EBC();
  sub_213D911DC();
  sub_213D90C6C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v10 + 8))(v13, v38);
  (*(v14 + 8))(v17, v37);
  sub_213D364A0(a2, v9);
  v26 = *MEMORY[0x277CDFA88];
  v27 = v3[13];
  v28 = v39;
  v27(v6, v26, v39);
  v29 = sub_213D9088C();
  v30 = v3[1];
  v30(v6, v28);
  v30(v9, v28);
  if (v29)
  {
    v31 = v21;
  }

  else
  {
    v31 = v25;
  }

  sub_213D364A0(v36, v9);
  v27(v6, v26, v28);
  v32 = sub_213D9088C();
  v30(v6, v28);
  v30(v9, v28);
  if (v32)
  {
    v33 = v25;
  }

  else
  {
    v33 = v21;
  }

  return [v40 setLayoutMargins_];
}

uint64_t sub_213D3BC58@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x200);
  swift_beginAccess();
  return sub_213CE2C28(v1 + v3, a1, &qword_27C8EBAB8, &qword_213D98470);
}

uint64_t sub_213D3BCDC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x200);
  swift_beginAccess();
  sub_213D4A7D0(a1, v1 + v3, &qword_27C8EBAB8, &qword_213D98470);
  return swift_endAccess();
}

void sub_213D3BD68(uint64_t *a1@<X8>)
{
  v2 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a1 = *v2;
  a1[1] = v4;
  a1[2] = v5;
  sub_213D49818(v3, v4, v5);
}

void sub_213D3BDA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  *v3 = *a1;
  v3[2] = v2;
  sub_213D49864(v5, v4, v6);
}

uint64_t sub_213D3BE44@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + 0x218);
  swift_beginAccess();
  v7 = *(v3 + 472);
  v8 = *(v3 + 488);
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v5 = sub_213D91C7C();
  return (*(*(v5 - 8) + 16))(a1, &v1[v4], v5);
}

uint64_t sub_213D3BF40(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + 0x218);
  swift_beginAccess();
  v7 = *(v3 + 472);
  v8 = *(v3 + 488);
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v5 = sub_213D91C7C();
  (*(*(v5 - 8) + 40))(&v1[v4], a1, v5);
  return swift_endAccess();
}

uint64_t sub_213D3C0F4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x230));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_213CCE520(v4);
}

uint64_t sub_213D3C130(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x238));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_213CCE520(v4);
}

uint64_t sub_213D3C1CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x248);
  swift_beginAccess();
  return sub_213CE2C28(v1 + v3, a1, &qword_27C8EBAB0, &qword_213D98468);
}

uint64_t sub_213D3C250(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x248);
  swift_beginAccess();
  sub_213D4A7D0(a1, v1 + v3, &qword_27C8EBAB0, &qword_213D98468);
  return swift_endAccess();
}

uint64_t sub_213D3C2DC(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x250);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
}

unint64_t sub_213D3C310@<X0>(unint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  if ((result >> 61) < 4)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
    result = sub_213D1DFC0(result);
    v9 = 0;
    goto LABEL_28;
  }

  if (result >> 61 != 4)
  {
    if (result == 0xA000000000000000)
    {
      result = sub_213D2D09C(&v18);
      if ((v20 & 1) == 0)
      {
        result = swift_allocObject();
        v9 = 0;
        v12 = v18;
        v13 = v19;
        v3 = result | 0x2000000000000000;
        goto LABEL_27;
      }
    }

LABEL_10:
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2;
    goto LABEL_28;
  }

  v10 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  result = [a2 hasUserLocation];
  if (result)
  {
    goto LABEL_10;
  }

  if (v10 == 0xA000000000000000)
  {
    sub_213D1DFC0(0xA000000000000000);
    sub_213D1DFC0(0xA000000000000000);
    result = sub_213D2D09C(&v18);
    if ((v20 & 1) == 0)
    {
      result = swift_allocObject();
      v12 = v18;
      v13 = v19;
      v3 = result | 0x2000000000000000;
      v9 = 1;
LABEL_27:
      *(result + 16) = v12;
      *(result + 32) = v13;
      v7 = 0x403C000000000000;
      v5 = 0x404C000000000000;
      v6 = 0x404C000000000000;
      v8 = 0x404C000000000000;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  sub_213D1DFC0(v10);
  sub_213D3C310(&v18, v10, a2);
  v14 = v18;
  v15 = *(&v19 + 1);
  v6 = v19;
  v16 = v20;
  v17 = v21;
  result = sub_213D1E068(v10);
  if (v17 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v14;
  }

  if (v17 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v14 + 1);
  }

  if (v17 == 2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = v15;
  }

  if (v17 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v16;
  }

  if (v17 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v17;
  }

LABEL_28:
  *a3 = v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  return result;
}

unint64_t sub_213D3C4C8(unint64_t a1, void *a2, char a3)
{
  v6 = (*MEMORY[0x277D85000] & *v3);
  result = sub_213D3C310(a1, a2, &v29);
  v8 = v32;
  if (v32 != 2)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v11 = v6[59];
    *(v10 + 16) = v11;
    v12 = v6[60];
    *(v10 + 24) = v12;
    v13 = v6[61];
    *(v10 + 32) = v13;
    v14 = v6[62];
    v15 = v30;
    *(v10 + 56) = v29;
    *(v10 + 40) = v14;
    *(v10 + 48) = v9;
    *(v10 + 72) = v15;
    *(v10 + 88) = v31;
    *(v10 + 96) = v8;
    *(v10 + 97) = a3 & 1;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *&v18 = v11;
    *(&v18 + 1) = v12;
    *&v19 = v13;
    *(&v19 + 1) = v14;
    v25 = v19;
    v26 = v18;
    *(v17 + 16) = v18;
    *(v17 + 32) = v19;
    v20 = v30;
    *(v17 + 48) = v29;
    *(v17 + 64) = v20;
    *(v17 + 80) = v31;
    *(v17 + 88) = v8;
    *(v17 + 96) = v16;
    *(v17 + 104) = sub_213D49BD0;
    *(v17 + 112) = v10;
    aBlock[4] = sub_213D49BE8;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_213CFF278;
    aBlock[3] = &block_descriptor_141;
    v21 = _Block_copy(aBlock);
    v27[1] = v25;
    v27[0] = v26;
    type metadata accessor for MapBridgingViewCoordinator.ResolvedCameraPosition();
    v22 = sub_213D91C7C();
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v24(v27, &v29, v22);
    v24(v27, &v29, v22);

    [a2 _updateFramingUsingSetRegionBlock_];
    _Block_release(v21);

    return (*(v23 + 8))(&v29, v22);
  }

  return result;
}

void sub_213D3C7A0(uint64_t a1, double *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *a2;
    v8 = *a2 >> 61;
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          [Strong setVisibleMapRect:a3 & 1 edgePadding:*((*&v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) animated:{*((*&v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), *((*&v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20), *((*&v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x28), a2[1], a2[2], a2[3], a2[4]}];
        }
      }

      else
      {
        v11 = *&v7 & 0x1FFFFFFFFFFFFFFFLL;
        v12 = *(v11 + 24);
        v13 = *(v11 + 32);
        v14 = *(v11 + 40);
        [Strong setRegion:a3 & 1 animated:sub_213D65240(*(v11 + 16))];
      }

      goto LABEL_12;
    }

    if (v8 == 2)
    {
      v15 = *&v7 & 0x1FFFFFFFFFFFFFFFLL;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      [Strong frame];
      v19 = v18;
      v21 = v20;
      v22 = objc_opt_self();
      v23 = [v22 cameraLookingAtMapItem:v16 forViewSize:v17 allowPitch:{v19, v21}];
      [v23 centerCoordinate];
      v25 = v24;
      v27 = v26;
      [v23 centerCoordinateDistance];
      v29 = v28;
      [v23 heading];
      v31 = v30;
      [v23 pitch];
      v33 = v32;

      v10 = [v22 cameraLookingAtCenterCoordinate:v25 fromDistance:v27 pitch:v29 heading:{v33, v31}];
    }

    else
    {
      if (v8 != 3)
      {
LABEL_12:

        return;
      }

      v9 = (*&v7 & 0x1FFFFFFFFFFFFFFFLL);
      v10 = [objc_opt_self() cameraLookingAtCenterCoordinate:v9[2] fromDistance:v9[3] pitch:v9[4] heading:{v9[6], v9[5]}];
    }

    v34 = v10;
    [v6 setCamera:v34 animated:a3 & 1];

    goto LABEL_12;
  }
}

void sub_213D3C9E0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (*(a1 + 40))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_213CFF278;
      aBlock[3] = &block_descriptor_144;
      v8 = _Block_copy(aBlock);

      [v7 _performActionAsIfGoingToDefaultLocation_];
      _Block_release(v8);
    }
  }

  else
  {
    a3();
  }
}

void sub_213D3CAD8(void *a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v5, v6);
  if (v5)
  {

    sub_213D1DFC0(v6);
    sub_213D49864(v4, v5, v6);
    v9[1] = v4;
    v9[2] = v5;
    v9[3] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v9, v7);
    sub_213D49864(v4, v5, v6);
    v8 = v9[0];
    sub_213D3C4C8(v9[0], a1, 0);
    sub_213D1E068(v8);
  }

  else
  {

    sub_213D49864(v4, 0, v6);
  }
}

uint64_t sub_213D3CC0C(void *a1, double *a2, int a3, int a4, int a5)
{
  v6 = v5;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v76 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v68[-v10];
  *&v73.f64[0] = type metadata accessor for KeyframeAnimationState();
  v72.f64[0] = *(*&v73.f64[0] - 8);
  v12 = *(*&v72.f64[0] + 64);
  MEMORY[0x28223BE20](*&v73.f64[0]);
  v70 = &v68[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v68[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v74 = &v68[-v21];
  v22 = *(a2 + 1);
  v23 = *(a2 + 2);
  v78 = *a2;
  v79 = v23;
  v24 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x208));
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 2);
  sub_213D49818(*v24, v26, v27);
  if (v26)
  {

    sub_213D1DFC0(v27);
    sub_213D49864(v25, v26, v27);
    *&v80.f64[0] = v25;
    *&v80.f64[1] = v26;
    v81 = *&v27;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v84, v28);
    sub_213D49864(v25, v26, v27);
    v29 = v84[0];
  }

  else
  {
    sub_213D49864(v25, 0, v27);
    v29 = 0xF000000000000007;
  }

  v77 = v29;
  v30 = *&v78;

  v31 = v79;
  sub_213D1DFC0(v79);
  v32 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x208));
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  *v32 = v30;
  v32[1] = v22;
  v32[2] = v31;
  sub_213D49864(v33, v34, v35);
  sub_213D3C1CC(v17);
  v36 = (*(v19 + 48))(v17, 1, v18);
  v37 = v76;
  if (v36 == 1)
  {
    v38 = &qword_27C8EBAB0;
    v39 = &qword_213D98468;
    v40 = v17;
LABEL_8:
    sub_213CD8330(v40, v38, v39);
    v42 = v77;
    v43 = v79;
    goto LABEL_18;
  }

  v41 = v74;
  sub_213CED608(v17, v74, qword_27C8EB9C8, qword_213D98278);
  MEMORY[0x21604E7B0](v18);
  if ((*(*&v72.f64[0] + 48))(v11, 1, *&v73.f64[0]) == 1)
  {
    sub_213CD8330(v41, qword_27C8EB9C8, qword_213D98278);
    v38 = &qword_27C8EBB58;
    v39 = &unk_213D985B0;
    v40 = v11;
    goto LABEL_8;
  }

  v44 = v70;
  sub_213D49AE0(v11, v70, type metadata accessor for KeyframeAnimationState);
  v84[0] = v30;
  v84[1] = v22;
  v43 = v79;
  v84[2] = v79;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  MEMORY[0x21604E7B0](&v83, v45);
  v46 = v83 & 0xE000000000000000;
  if ((v83 & 0xE000000000000000) == 0x6000000000000000)
  {
    v73 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v47 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v48 = *((v83 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
  }

  else
  {
    v48 = 0uLL;
    v73 = 0u;
    v47 = 0.0;
  }

  v72 = v48;
  sub_213D1E068(v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  sub_213D9090C();
  if (v46 == 0x6000000000000000)
  {
    v42 = v77;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v73, v80), vceqq_f64(v72, v82)))) & 1) != 0 && v47 == v81)
    {
      sub_213D1E054(v77);
      sub_213D49B70(v44, type metadata accessor for KeyframeAnimationState);
      return sub_213CD8330(v74, qword_27C8EB9C8, qword_213D98278);
    }
  }

  else
  {
    v42 = v77;
  }

  v50 = swift_allocObject();
  *(v50 + 16) = v6;
  *(v50 + 24) = v37;
  v51 = v6;
  v52 = v37;
  sub_213D905AC();

  sub_213D49B70(v44, type metadata accessor for KeyframeAnimationState);
  sub_213CD8330(v74, qword_27C8EB9C8, qword_213D98278);
LABEL_18:
  *&v80.f64[0] = v30;
  *&v80.f64[1] = v22;
  v81 = *&v43;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  MEMORY[0x21604E7B0](v84);
  v54 = v84[0];
  v55 = v42 & 0xF000000000000007;
  if (*(v6 + *((*MEMORY[0x277D85000] & *v6) + 0x210)) == 1 && v55 != 0xF000000000000007 && (sub_213D79B18(v42, 0xA000000000000008) & 1) != 0 && (sub_213D79B18(v54, 0xA000000000000008) & 1) == 0)
  {
    [v37 _clearGesturesAndAnimations];
  }

  v80.f64[0] = v78;
  *&v80.f64[1] = v22;
  v81 = *&v43;
  MEMORY[0x21604E7B0](v84, v53);
  v56 = v84[0];
  sub_213D1E068(v84[0]);
  v57 = v75;
  if (v56 >> 61 != 4)
  {
    [v37 setUserTrackingMode:0 animated:v75 & 1];
    [v37 setShowsUserLocation_];
  }

  if ((v54 >> 61) >= 4)
  {
    if (v54 >> 61 != 4)
    {
      if (v54 == 0xA000000000000000)
      {
        if (v55 == 0xF000000000000007 || (sub_213D1DFC0(v42), v64 = sub_213D79B18(v42, 0xA000000000000000), sub_213D1E054(v42), (v64 & 1) == 0) || (v69 & 1) != 0)
        {
          sub_213D3C4C8(0xA000000000000000, v37, v57 & 1);
        }
      }

      return sub_213D1E054(v42);
    }

    v60 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v61 = *((v54 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if ([v37 hasUserLocation])
    {
      goto LABEL_51;
    }

    v62 = 0xF000000000000007;
    if (v55 != 0xF000000000000007 && (v77 & 0xE000000000000000) == 0x8000000000000000)
    {
      v62 = *((v77 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_213D1DFC0(v62);
    }

    v63 = v62 & 0xF000000000000007;
    if (v61 == 0xA000000000000000)
    {
      sub_213D1DFC0(0xA000000000000000);
      sub_213D1DFC0(0xA000000000000000);
      if (v63 == 0xF000000000000007 || (sub_213D49ACC(v62), v66 = sub_213D79B18(v62, 0xA000000000000000), sub_213D1E054(v62), (v66 & 1) == 0) || (v69 & 1) != 0)
      {
        sub_213D3C4C8(v54, v37, v57 & 1);
      }
    }

    else
    {
      sub_213D1DFC0(v61);
      if (v63 == 0xF000000000000007 || (sub_213D49ACC(v62), v65 = sub_213D79B18(v62, v61), sub_213D1E054(v62), (v65 & 1) == 0))
      {
        sub_213D3C4C8(v54, v37, v57 & 1);
        sub_213D1E054(v62);
        sub_213D1E068(v61);
LABEL_51:
        if (v60)
        {
          v67 = 2;
        }

        else
        {
          v67 = 1;
        }

        [v37 setUserTrackingMode:v67 animated:v57 & 1];
        v59 = v77;
        goto LABEL_55;
      }

      sub_213D1E068(v61);
    }

    sub_213D1E054(v62);
    goto LABEL_51;
  }

  if (v55 != 0xF000000000000007)
  {
    sub_213D1DFC0(v54);
    sub_213D49ACC(v42);
    v58 = sub_213D79B18(v42, v54);
    sub_213D1E068(v54);
    sub_213D1E054(v42);
    if (v58)
    {
      sub_213D1E068(v54);
      return sub_213D1E054(v42);
    }
  }

  sub_213D3C4C8(v54, v37, v57 & 1);
  v59 = v42;
LABEL_55:
  sub_213D1E054(v59);
  return sub_213D1E068(v54);
}

uint64_t sub_213D3D530(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v46 = a3;
  v48 = a2;
  v45 = a1;
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x1E8);
  v49 = *((*MEMORY[0x277D85000] & *v3) + 0x1D8);
  v50 = v5;
  v6 = type metadata accessor for MapSelectionManagerBox();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = sub_213D9162C();
  v11 = sub_213D91C7C();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v19 = *(v10 - 8);
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v37 - v23;
  v43 = v12[2];
  v44 = v12 + 2;
  v43(v18, v48, v11, v22);
  if ((*(v19 + 48))(v18, 1, v10) == 1)
  {
    v25 = v12[1];
    v25(v18, v11);
    v26 = *(v19 + 56);
    v26(v15, 1, 1, v10);
    v27 = v46;
    v28 = v45;
    sub_213D3DAA0(v45, v15, v46 & 1);
    v25(v15, v11);
    v26(v15, 1, 1, v10);
    sub_213D41250(v28, v15, v27 & 1);
    v25(v15, v11);
  }

  else
  {
    v40 = v11;
    v29 = v46;
    v42 = v4;
    (*(v19 + 32))(v24, v18, v10);
    MEMORY[0x21604E7B0](v10);
    v30 = sub_213D7C0E0(v6);
    v31 = v47 + 8;
    v38 = *(v47 + 8);
    v38(v9, v6);
    v47 = v31;
    v41 = v24;
    if (v30)
    {
      (*(v19 + 16))(v15, v24, v10);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    v37 = *(v19 + 56);
    v37(v15, v32, 1, v10);
    v33 = v45;
    sub_213D41250(v45, v15, v29 & 1);
    v11 = v40;
    v39 = v12[1];
    v39(v15, v40);
    MEMORY[0x21604E7B0](v10);
    v34 = sub_213D7BF40(v6);
    v38(v9, v6);
    if (v34)
    {
      v35 = v41;
      (*(v19 + 16))(v15, v41, v10);
      v37(v15, 0, 1, v10);
      sub_213D3DAA0(v33, v15, v46 & 1);
      v39(v15, v11);
      (*(v19 + 8))(v35, v10);
    }

    else
    {
      v37(v15, 1, 1, v10);
      sub_213D3DAA0(v33, v15, v46 & 1);
      v39(v15, v11);
      (*(v19 + 8))(v41, v10);
    }
  }

  (v43)(v15, v48, v11);
  return sub_213D3BF40(v15);
}

uint64_t sub_213D3DAA0(void *a1, uint64_t a2, int a3)
{
  v142 = a3;
  v161 = a2;
  v147 = a1;
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v135 = &v132 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v138 = &v132 - v11;
  v137 = type metadata accessor for CustomAnnotationViewModel(0);
  v136 = *(v137 - 8);
  v12 = *(v136 + 64);
  MEMORY[0x28223BE20](v137);
  v133 = (&v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v141 = &v132 - v16;
  v140 = type metadata accessor for MarkerAnnotationViewModel(0);
  v139 = *(v140 - 8);
  v17 = *(v139 + 64);
  MEMORY[0x28223BE20](v140);
  v134 = (&v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *((v5 & v4) + 0x1D8);
  v157 = *(v19 - 8);
  v20 = *(v157 + 64);
  MEMORY[0x28223BE20](v21);
  v145 = &v132 - v22;
  v23 = *((v5 & v4) + 0x1E0);
  v25 = *v24;
  v165 = v19;
  v166 = v23;
  v143 = v23;
  v144 = v25;
  v167 = v25;
  v26 = type metadata accessor for MapSelectionManagerBox();
  v156 = *(v26 - 1);
  v27 = *(v156 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v132 - v28;
  v30 = sub_213D9162C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v148 = &v132 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v150 = &v132 - v35;
  v163 = sub_213D91C7C();
  v159 = *(v163 - 8);
  v36 = *(v159 + 64);
  MEMORY[0x28223BE20](v163);
  v153 = &v132 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v132 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v132 - v42;
  v162 = sub_213D91C7C();
  v164 = *(v162 - 8);
  v44 = *(v164 + 64);
  MEMORY[0x28223BE20](v162);
  v146 = &v132 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v152 = &v132 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v132 - v49;
  v149 = v3;
  sub_213D3BE44(v43);
  v160 = *(v31 + 48);
  v51 = v160(v43, 1, v30);
  v154 = v26;
  v155 = v31;
  v158 = v19;
  if (v51)
  {
    v52 = v29;
    v53 = v159;
    v151 = *(v159 + 8);
    v151(v43, v163);
    v54 = v157;
    (*(v157 + 56))(v50, 1, 1, v19);
    LODWORD(v150) = 0;
  }

  else
  {
    v55 = v150;
    (*(v31 + 16))(v150, v43, v30);
    v151 = *(v159 + 8);
    v151(v43, v163);
    MEMORY[0x21604E7B0](v30);
    (*(v31 + 8))(v55, v30);
    v52 = v29;
    sub_213D7B444(v26, v50);
    (*(v156 + 8))(v29, v26);
    v54 = v157;
    LODWORD(v150) = (*(v157 + 48))(v50, 1, v19) != 1;
    v53 = v159;
  }

  v56 = *(v164 + 8);
  v164 += 8;
  v57 = v56;
  v56(v50, v162);
  v58 = *(v53 + 16);
  v58(v40, v161, v163);
  if (v160(v40, 1, v30) == 1)
  {
    v59 = v40;
    v60 = v163;
    v151(v59, v163);
    v61 = v152;
    (*(v54 + 56))(v152, 1, 1, v158);
    v62 = v52;
    v63 = v60;
  }

  else
  {
    v62 = v52;
    MEMORY[0x21604E7B0](v30);
    (*(v155 + 8))(v40, v30);
    v61 = v152;
    v64 = v154;
    sub_213D7B444(v154, v152);
    (*(v156 + 8))(v52, v64);
    v65 = (*(v54 + 48))(v61, 1, v158);
    v63 = v163;
    if (v65 != 1)
    {
      v69 = v61;
      v67 = v57;
      v57(v69, v162);
      v68 = v153;
      goto LABEL_10;
    }
  }

  v66 = v61;
  v67 = v57;
  v57(v66, v162);
  v68 = v153;
  if (v150)
  {
    *(v149 + *((*MEMORY[0x277D85000] & *v149) + 0x220)) = 1;
  }

LABEL_10:
  v58(v68, v161, v63);
  if (v160(v68, 1, v30) == 1)
  {
    return (v151)(v68, v63);
  }

  v71 = v155;
  v72 = v148;
  (*(v155 + 32))(v148, v68, v30);
  MEMORY[0x21604E7B0](v30);
  v73 = v154;
  v74 = sub_213D7BF40(v154);
  v75 = *(v156 + 8);
  v75(v62, v73);
  if ((v74 & 1) == 0)
  {
    return (*(v71 + 8))(v72, v30);
  }

  MEMORY[0x21604E7B0](v30);
  v76 = v146;
  sub_213D7B444(v73, v146);
  v77 = v73;
  v78 = v76;
  v75(v62, v77);
  v79 = v157;
  v80 = v76;
  v81 = v158;
  v82 = (*(v157 + 48))(v80, 1, v158);
  v132 = v30;
  if (v82 != 1)
  {
    v88 = v145;
    (*(v79 + 32))(v145, v78, v81);
    v89 = [v147 selectedAnnotations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v90 = sub_213D919FC();

    MEMORY[0x28223BE20](v91);
    v92 = v149;
    *(&v132 - 2) = v149;
    *(&v132 - 1) = v88;
    LOBYTE(v89) = sub_213D402B0(sub_213D499EC, (&v132 - 4), v90);

    if ((v89 & 1) == 0 && (*(v92 + *((*MEMORY[0x277D85000] & *v92) + 0x220)) & 1) == 0)
    {
      v94 = v92 + qword_27C8EB3F8;
      v95 = *(v92 + qword_27C8EB3F8 + 16);
      MEMORY[0x28223BE20](v93);
      v96 = v143;
      *(&v132 - 6) = v158;
      *(&v132 - 5) = v96;
      *(&v132 - 2) = v144;
      *(&v132 - 2) = v97;

      v98 = v141;
      sub_213D3EEE8(sub_213D49A0C, v95, type metadata accessor for MarkerAnnotationViewModel, type metadata accessor for MarkerAnnotationViewModel, type metadata accessor for MarkerAnnotationViewModel, type metadata accessor for MarkerAnnotationViewModel, v141);

      if ((*(v139 + 48))(v98, 1, v140) == 1)
      {
        v99 = sub_213CD8330(v98, &qword_27C8EB260, qword_213D985C0);
      }

      else
      {
        v102 = v134;
        sub_213D49AE0(v98, v134, type metadata accessor for MarkerAnnotationViewModel);
        v103 = *(v94 + 3);
        if (*(v103 + 16))
        {
          v104 = *v102;
          v105 = *(v94 + 3);

          v106 = sub_213CE22A8(v104);
          if (v107)
          {
            v108 = *(*(v103 + 56) + 8 * v106);

            v109 = v108;
            sub_213D473A0(v109, v147, v142 & 1);

            (*(v71 + 8))(v72, v132);
            sub_213D49B70(v102, type metadata accessor for MarkerAnnotationViewModel);
            v110 = v157;
            v88 = v145;
LABEL_49:
            result = (*(v110 + 8))(v88, v158);
            *(v92 + *((*MEMORY[0x277D85000] & *v92) + 0x220)) = 0;
            return result;
          }
        }

        v99 = sub_213D49B70(v102, type metadata accessor for MarkerAnnotationViewModel);
      }

      v111 = v92 + qword_27C8EB3F0;
      v112 = *(v92 + qword_27C8EB3F0 + 16);
      MEMORY[0x28223BE20](v99);
      v113 = v143;
      *(&v132 - 6) = v158;
      *(&v132 - 5) = v113;
      *(&v132 - 2) = v144;
      *(&v132 - 2) = v145;

      v114 = v138;
      sub_213D3EEE8(sub_213D49A3C, v112, type metadata accessor for CustomAnnotationViewModel, type metadata accessor for CustomAnnotationViewModel, type metadata accessor for CustomAnnotationViewModel, type metadata accessor for CustomAnnotationViewModel, v138);

      if ((*(v136 + 48))(v114, 1, v137) == 1)
      {
        v115 = sub_213CD8330(v114, &qword_27C8EB290, &qword_213D98000);
        v88 = v145;
        v116 = v147;
      }

      else
      {
        v117 = v114;
        v118 = v133;
        sub_213D49AE0(v117, v133, type metadata accessor for CustomAnnotationViewModel);
        v119 = *(v111 + 3);
        v88 = v145;
        v116 = v147;
        if (*(v119 + 16))
        {
          v120 = v118;
          v121 = *v118;

          v122 = sub_213CE22A8(v121);
          if (v123)
          {
            v124 = *(*(v119 + 56) + 8 * v122);

            v125 = v124;
            sub_213D473A0(v125, v116, v142 & 1);

            (*(v71 + 8))(v72, v132);
            sub_213D49B70(v120, type metadata accessor for CustomAnnotationViewModel);
LABEL_48:
            v110 = v157;
            goto LABEL_49;
          }

          v118 = v120;
        }

        v115 = sub_213D49B70(v118, type metadata accessor for CustomAnnotationViewModel);
      }

      v126 = *(v92 + qword_27C8EB408 + 16);
      MEMORY[0x28223BE20](v115);
      *&v127 = v158;
      *(&v127 + 1) = v143;
      v128 = v144;
      *(&v132 - 3) = v127;
      *(&v132 - 2) = v128;
      *(&v132 - 2) = v88;

      v129 = v135;
      sub_213D3EEE8(sub_213D49A6C, v126, type metadata accessor for UserAnnotationViewModel, type metadata accessor for UserAnnotationViewModel, type metadata accessor for UserAnnotationViewModel, type metadata accessor for UserAnnotationViewModel, v135);

      v130 = type metadata accessor for UserAnnotationViewModel(0);
      if ((*(*(v130 - 8) + 48))(v129, 1, v130) == 1)
      {
        (*(v71 + 8))(v72, v132);
        sub_213CD8330(v129, &qword_27C8EB680, &unk_213D97FF0);
        goto LABEL_48;
      }

      sub_213CD8330(v129, &qword_27C8EB680, &unk_213D97FF0);
      v131 = [v116 userLocation];
      sub_213D473A0(v131, v116, v142 & 1);
    }

    (*(v71 + 8))(v72, v132);
    goto LABEL_48;
  }

  v67(v78, v162);
  v72 = v147;
  v83 = [v147 selectedAnnotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v84 = sub_213D919FC();

  if (v84 >> 62)
  {
    goto LABEL_51;
  }

  v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v85)
  {
    while (1)
    {
      v30 = 0;
      while ((v84 & 0xC000000000000001) != 0)
      {
        v86 = MEMORY[0x21604EF80](v30, v84);
        v87 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_25:
          __break(1u);
          return (*(v71 + 8))(v72, v30);
        }

LABEL_20:
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          v100 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v101 = swift_allocObject();
          *(v101 + 16) = v100;
          *(v101 + 24) = v86;
          *(v101 + 32) = v142 & 1;

          swift_unknownObjectRetain();
          sub_213D905AC();
          swift_unknownObjectRelease();

          (*(v71 + 8))(v148, v132);

          goto LABEL_53;
        }

        swift_unknownObjectRelease();
        ++v30;
        if (v87 == v85)
        {
          goto LABEL_52;
        }
      }

      if (v30 < *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_51:
      v85 = sub_213D91EBC();
      if (!v85)
      {
        goto LABEL_52;
      }
    }

    v86 = *(v84 + 8 * v30 + 32);
    swift_unknownObjectRetain();
    v87 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_52:

  result = (*(v71 + 8))(v148, v132);
LABEL_53:
  *(v149 + *((*MEMORY[0x277D85000] & *v149) + 0x220)) = 0;
  return result;
}

uint64_t sub_213D3EEE8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v28 = a6;
  v29 = a1;
  v30 = a4;
  v31 = a5;
  v27 = a7;
  v26 = a3(0);
  v32 = *(v26 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v26);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v21 = v20;
LABEL_8:
      sub_213D4CAEC(*(a2 + 56) + *(v32 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v14, v30);
      sub_213D49AE0(v14, v11, v31);
      v22 = v29(v11);
      if (v7)
      {
        sub_213D49B70(v11, v28);
      }

      if (v22)
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_213D49B70(v11, v28);
      v20 = v21;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    v25 = v27;
    sub_213D49AE0(v11, v27, v31);
    v24 = v25;
    v23 = 0;
    return (*(v32 + 56))(v24, v23, 1, v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v18)
      {

        v23 = 1;
        v24 = v27;
        return (*(v32 + 56))(v24, v23, 1, v26);
      }

      v17 = *(a2 + 64 + 8 * v21);
      ++v20;
      if (v17)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_213D3F130(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v179 = a3;
  v5 = *a2;
  v6 = *MEMORY[0x277D85000];
  v178 = *MEMORY[0x277D85000] & *a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v176 = &v161 - v9;
  v10 = type metadata accessor for UserAnnotationViewModel(0);
  v174 = *(v10 - 8);
  v175 = v10;
  v11 = *(v174 + 64);
  MEMORY[0x28223BE20](v10);
  v185 = &v161 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for CustomAnnotationViewModel(0);
  v165 = *(v167 - 8);
  v13 = *(v165 + 64);
  MEMORY[0x28223BE20](v167);
  v166 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v173 = &v161 - v16;
  v182 = *(*((v6 & v5) + 0x1D8) - 8);
  v17 = *(v182 + 64);
  MEMORY[0x28223BE20](v18);
  v164 = &v161 - v19;
  v180 = v20;
  v21 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v171 = *(TupleTypeMetadata2 - 8);
  v22 = *(v171 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v169 = &v161 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v168 = &v161 - v25;
  MEMORY[0x28223BE20](v26);
  v177 = &v161 - v27;
  v187 = v21;
  v186 = *(v21 - 8);
  v28 = v186[8];
  MEMORY[0x28223BE20](v29);
  v163 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v183 = &v161 - v32;
  MEMORY[0x28223BE20](v33);
  v184 = &v161 - v34;
  MEMORY[0x28223BE20](v35);
  v161 = &v161 - v36;
  MEMORY[0x28223BE20](v37);
  v170 = &v161 - v38;
  MEMORY[0x28223BE20](v39);
  v172 = &v161 - v40;
  MEMORY[0x28223BE20](v41);
  v162 = &v161 - v42;
  MEMORY[0x28223BE20](v43);
  v45 = &v161 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v161 - v47;
  v49 = type metadata accessor for MarkerAnnotationViewModel(0);
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v49);
  v53 = &v161 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = &v161 - v55;
  v57 = *a1;
  type metadata accessor for MapBridgingMarker();
  v58 = swift_dynamicCastClass();
  if (!v58 || (v59 = *(a2 + qword_27C8EB3F8 + 16), !*(v59 + 16)))
  {
LABEL_9:
    type metadata accessor for MapBridgingCustomAnnotation();
    v80 = swift_dynamicCastClass();
    v81 = v185;
    v82 = v183;
    v83 = v184;
    if (v80)
    {
      v84 = *(a2 + qword_27C8EB3F0 + 16);
      if (*(v84 + 16))
      {
        v85 = v80;
        swift_unknownObjectRetain();

        v86 = sub_213CE249C(v85);
        if (v87)
        {
          v88 = v166;
          sub_213D4CAEC(*(v84 + 56) + *(v165 + 72) * v86, v166, type metadata accessor for CustomAnnotationViewModel);

          v89 = v88;
          v90 = v173;
          sub_213D49AE0(v89, v173, type metadata accessor for CustomAnnotationViewModel);
          v91 = v90 + *(v167 + 64);
          v92 = v172;
          v93 = v180;
          v184 = *(v178 + 488);
          sub_213D66EE0(v180, v172);
          v94 = v182;
          v95 = v170;
          (*(v182 + 16))(v170, v179, v93);
          (*(v94 + 56))(v95, 0, 1, v93);
          v96 = *(TupleTypeMetadata2 + 48);
          v97 = v186[2];
          v98 = v168;
          v99 = v92;
          v100 = v187;
          v97(v168, v99, v187);
          v185 = v96;
          v97(&v98[v96], v95, v100);
          v101 = *(v94 + 48);
          if (v101(v98, 1, v93) == 1)
          {
            swift_unknownObjectRelease();
            v102 = v186[1];
            v103 = v187;
            v102(v95, v187);
            v102(v172, v103);
            sub_213D49B70(v173, type metadata accessor for CustomAnnotationViewModel);
            if (v101(&v98[v185], 1, v93) == 1)
            {
              v102(v98, v103);
              goto LABEL_22;
            }
          }

          else
          {
            v133 = v161;
            v134 = v187;
            v97(v161, v98, v187);
            v135 = v185;
            if (v101(&v98[v185], 1, v93) != 1)
            {
              v156 = v182;
              v157 = v164;
              (*(v182 + 32))(v164, &v98[v135], v93);
              v158 = *(v184 + 1);
              v121 = sub_213D918DC();
              swift_unknownObjectRelease();
              v159 = *(v156 + 8);
              v159(v157, v93);
              v160 = v186[1];
              v160(v170, v134);
              v160(v172, v134);
              sub_213D49B70(v173, type metadata accessor for CustomAnnotationViewModel);
              v159(v133, v93);
              v160(v98, v134);
              return v121 & 1;
            }

            swift_unknownObjectRelease();
            v136 = v133;
            v137 = v186[1];
            v137(v170, v134);
            v137(v172, v134);
            sub_213D49B70(v173, type metadata accessor for CustomAnnotationViewModel);
            (*(v182 + 8))(v136, v93);
          }

          (*(v171 + 8))(v98, TupleTypeMetadata2);
          goto LABEL_32;
        }

        swift_unknownObjectRelease();
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v104 = *(a2 + qword_27C8EB408 + 16);

      v106 = v176;
      sub_213D2DCB4(v105, v176);

      v107 = v175;
      if ((*(v174 + 48))(v106, 1, v175) == 1)
      {
        sub_213CD8330(v106, &qword_27C8EB680, &unk_213D97FF0);
      }

      else
      {
        sub_213D49AE0(v106, v81, type metadata accessor for UserAnnotationViewModel);
        v108 = v81 + *(v107 + 36);
        v109 = v180;
        v178 = *(v178 + 488);
        sub_213D66EE0(v180, v83);
        v110 = v182;
        (*(v182 + 16))(v82, v179, v109);
        (*(v110 + 56))(v82, 0, 1, v109);
        v111 = *(TupleTypeMetadata2 + 48);
        v112 = v186[2];
        v113 = v169;
        v114 = v187;
        v112(v169, v83, v187);
        v179 = v111;
        v115 = v114;
        v116 = v82;
        v112(&v113[v111], v82, v115);
        v117 = *(v110 + 48);
        if (v117(v113, 1, v109) == 1)
        {
          v118 = v186[1];
          v119 = v187;
          v118(v116, v187);
          v118(v83, v119);
          sub_213D49B70(v185, type metadata accessor for UserAnnotationViewModel);
          v120 = v113;
          if (v117(&v113[v179], 1, v109) == 1)
          {
            v118(v113, v187);
            goto LABEL_22;
          }
        }

        else
        {
          v122 = v163;
          v112(v163, v113, v187);
          v123 = v179;
          v120 = v113;
          if (v117(&v113[v179], 1, v109) != 1)
          {
            v139 = v109;
            v140 = v182;
            v141 = v164;
            (*(v182 + 32))(v164, &v113[v123], v139);
            v142 = *(v178 + 8);
            v143 = v122;
            v121 = sub_213D918DC();
            v144 = *(v140 + 8);
            v144(v141, v139);
            v145 = v186[1];
            v146 = v187;
            v145(v183, v187);
            v145(v184, v146);
            sub_213D49B70(v185, type metadata accessor for UserAnnotationViewModel);
            v144(v143, v139);
            v145(v113, v146);
            return v121 & 1;
          }

          v124 = v186[1];
          v125 = v187;
          v124(v183, v187);
          v124(v184, v125);
          sub_213D49B70(v185, type metadata accessor for UserAnnotationViewModel);
          (*(v182 + 8))(v122, v109);
        }

        (*(v171 + 8))(v120, TupleTypeMetadata2);
      }
    }

LABEL_32:
    v121 = 0;
    return v121 & 1;
  }

  v60 = v58;
  swift_unknownObjectRetain();

  v61 = sub_213CE2448(v60);
  if ((v62 & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_213D4CAEC(*(v59 + 56) + *(v50 + 72) * v61, v53, type metadata accessor for MarkerAnnotationViewModel);

  sub_213D49AE0(v53, v56, type metadata accessor for MarkerAnnotationViewModel);
  v63 = &v56[*(v49 + 68)];
  v64 = v180;
  v178 = *(v178 + 488);
  sub_213D66EE0(v180, v48);
  v65 = v182;
  (*(v182 + 16))(v45, v179, v64);
  (*(v65 + 56))(v45, 0, 1, v64);
  v66 = v45;
  v67 = *(TupleTypeMetadata2 + 48);
  v68 = v186[2];
  v69 = v48;
  v70 = v177;
  v185 = v69;
  v183 = v56;
  v71 = v187;
  v68(v177);
  v184 = v67;
  v72 = &v67[v70];
  v73 = v66;
  (v68)(v72, v66, v71);
  v74 = *(v65 + 48);
  if (v74(v70, 1, v64) != 1)
  {
    v126 = v162;
    v127 = v177;
    (v68)(v162, v177, v187);
    v128 = v184;
    if (v74(&v184[v127], 1, v64) != 1)
    {
      v147 = v182;
      v148 = v177;
      v149 = v164;
      (*(v182 + 32))(v164, &v128[v177], v64);
      v150 = *(v178 + 8);
      v151 = v126;
      v121 = sub_213D918DC();
      swift_unknownObjectRelease();
      v152 = *(v147 + 8);
      v152(v149, v64);
      v153 = v186[1];
      v154 = v73;
      v155 = v187;
      v153(v154, v187);
      v153(v185, v155);
      sub_213D49B70(v183, type metadata accessor for MarkerAnnotationViewModel);
      v152(v151, v64);
      v153(v148, v155);
      return v121 & 1;
    }

    swift_unknownObjectRelease();
    v129 = v126;
    v130 = v186[1];
    v131 = v73;
    v132 = v187;
    v130(v131, v187);
    v130(v185, v132);
    sub_213D49B70(v183, type metadata accessor for MarkerAnnotationViewModel);
    (*(v182 + 8))(v129, v64);
    v79 = v177;
    goto LABEL_28;
  }

  swift_unknownObjectRelease();
  v75 = v186[1];
  v76 = v187;
  v75(v66, v187);
  v75(v185, v76);
  sub_213D49B70(v183, type metadata accessor for MarkerAnnotationViewModel);
  v77 = v177;
  v78 = v74(&v184[v177], 1, v64) == 1;
  v79 = v77;
  if (!v78)
  {
LABEL_28:
    (*(v171 + 8))(v79, TupleTypeMetadata2);
    goto LABEL_32;
  }

  v75(v77, v76);
LABEL_22:
  v121 = 1;
  return v121 & 1;
}

uint64_t sub_213D402B0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x21604EF80](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);
        swift_unknownObjectRelease();
        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_213D91EBC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_213D403EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v46 - v13;
  v15 = *(v10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = a1 + *(type metadata accessor for MarkerAnnotationViewModel(0) + 68);
  sub_213D66EE0(a3, v24);
  (*(v7 + 16))(v21, v55, a3);
  (*(v7 + 56))(v21, 0, 1, a3);
  v49 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v51 = v15;
  v27 = *(v15 + 16);
  v27(v14, v24, v10);
  v52 = v26;
  v55 = v10;
  v27(&v14[v26], v21, v10);
  v50 = v7;
  v28 = *(v7 + 48);
  if (v28(v14, 1, a3) != 1)
  {
    v46 = v24;
    v33 = v51;
    v27(v53, v14, v55);
    v34 = v52;
    if (v28(&v14[v52], 1, a3) != 1)
    {
      v37 = v50;
      v38 = v47;
      (*(v50 + 32))(v47, &v14[v34], a3);
      v39 = *(v54 + 8);
      v40 = v53;
      v32 = sub_213D918DC();
      v41 = *(v37 + 8);
      v41(v38, a3);
      v42 = *(v33 + 8);
      v43 = v21;
      v44 = v55;
      v42(v43, v55);
      v42(v46, v44);
      v41(v40, a3);
      v42(v14, v44);
      return v32 & 1;
    }

    v35 = *(v33 + 8);
    v36 = v55;
    v35(v21, v55);
    v35(v46, v36);
    (*(v50 + 8))(v53, a3);
    goto LABEL_6;
  }

  v29 = *(v51 + 8);
  v30 = v21;
  v31 = v55;
  v29(v30, v55);
  v29(v24, v31);
  if (v28(&v14[v52], 1, a3) != 1)
  {
LABEL_6:
    (*(v48 + 8))(v14, v49);
    v32 = 0;
    return v32 & 1;
  }

  v29(v14, v55);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_213D408B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v46 - v13;
  v15 = *(v10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = a1 + *(type metadata accessor for CustomAnnotationViewModel(0) + 64);
  sub_213D66EE0(a3, v24);
  (*(v7 + 16))(v21, v55, a3);
  (*(v7 + 56))(v21, 0, 1, a3);
  v49 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v51 = v15;
  v27 = *(v15 + 16);
  v27(v14, v24, v10);
  v52 = v26;
  v55 = v10;
  v27(&v14[v26], v21, v10);
  v50 = v7;
  v28 = *(v7 + 48);
  if (v28(v14, 1, a3) != 1)
  {
    v46 = v24;
    v33 = v51;
    v27(v53, v14, v55);
    v34 = v52;
    if (v28(&v14[v52], 1, a3) != 1)
    {
      v37 = v50;
      v38 = v47;
      (*(v50 + 32))(v47, &v14[v34], a3);
      v39 = *(v54 + 8);
      v40 = v53;
      v32 = sub_213D918DC();
      v41 = *(v37 + 8);
      v41(v38, a3);
      v42 = *(v33 + 8);
      v43 = v21;
      v44 = v55;
      v42(v43, v55);
      v42(v46, v44);
      v41(v40, a3);
      v42(v14, v44);
      return v32 & 1;
    }

    v35 = *(v33 + 8);
    v36 = v55;
    v35(v21, v55);
    v35(v46, v36);
    (*(v50 + 8))(v53, a3);
    goto LABEL_6;
  }

  v29 = *(v51 + 8);
  v30 = v21;
  v31 = v55;
  v29(v30, v55);
  v29(v24, v31);
  if (v28(&v14[v52], 1, a3) != 1)
  {
LABEL_6:
    (*(v48 + 8))(v14, v49);
    v32 = 0;
    return v32 & 1;
  }

  v29(v14, v55);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_213D40D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v55 = a2;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v46 - v13;
  v15 = *(v10 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v53 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = a1 + *(type metadata accessor for UserAnnotationViewModel(0) + 36);
  sub_213D66EE0(a3, v24);
  (*(v7 + 16))(v21, v55, a3);
  (*(v7 + 56))(v21, 0, 1, a3);
  v49 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v51 = v15;
  v27 = *(v15 + 16);
  v27(v14, v24, v10);
  v52 = v26;
  v55 = v10;
  v27(&v14[v26], v21, v10);
  v50 = v7;
  v28 = *(v7 + 48);
  if (v28(v14, 1, a3) != 1)
  {
    v46 = v24;
    v33 = v51;
    v27(v53, v14, v55);
    v34 = v52;
    if (v28(&v14[v52], 1, a3) != 1)
    {
      v37 = v50;
      v38 = v47;
      (*(v50 + 32))(v47, &v14[v34], a3);
      v39 = *(v54 + 8);
      v40 = v53;
      v32 = sub_213D918DC();
      v41 = *(v37 + 8);
      v41(v38, a3);
      v42 = *(v33 + 8);
      v43 = v21;
      v44 = v55;
      v42(v43, v55);
      v42(v46, v44);
      v41(v40, a3);
      v42(v14, v44);
      return v32 & 1;
    }

    v35 = *(v33 + 8);
    v36 = v55;
    v35(v21, v55);
    v35(v46, v36);
    (*(v50 + 8))(v53, a3);
    goto LABEL_6;
  }

  v29 = *(v51 + 8);
  v30 = v21;
  v31 = v55;
  v29(v30, v55);
  v29(v24, v31);
  if (v28(&v14[v52], 1, a3) != 1)
  {
LABEL_6:
    (*(v48 + 8))(v14, v49);
    v32 = 0;
    return v32 & 1;
  }

  v29(v14, v55);
  v32 = 1;
  return v32 & 1;
}

void sub_213D41250(void *a1, uint64_t a2, int a3)
{
  v75 = a3;
  v87 = a2;
  v84 = a1;
  v4 = *((*MEMORY[0x277D85000] & *v3) + 0x1E8);
  v89[0] = *((*MEMORY[0x277D85000] & *v3) + 0x1D8);
  v89[1] = v4;
  v5 = type metadata accessor for MapSelectionManagerBox();
  v80 = *(v5 - 8);
  v6 = *(v80 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v74[-v7];
  v9 = sub_213D9162C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v78 = &v74[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v76 = &v74[-v14];
  v15 = sub_213D91C7C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  MEMORY[0x28223BE20](v15);
  v82 = &v74[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v74[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v74[-v23];
  v77 = v3;
  sub_213D3BE44(&v74[-v23]);
  v88 = *(v10 + 48);
  v25 = v88(v24, 1, v9);
  v85 = v10;
  v86 = v5;
  v83 = v8;
  v79 = v16;
  if (v25)
  {
    v26 = v80;
    v27 = v9;
    v81 = v16[1];
    v81(v24, v15);
    v28 = 0;
    v29 = v87;
  }

  else
  {
    v30 = v8;
    v31 = v76;
    (*(v10 + 16))(v76, v24, v9);
    v32 = v24;
    v33 = v15;
    v81 = v16[1];
    v81(v32, v15);
    v34 = v30;
    MEMORY[0x21604E7B0](v9);
    v35 = *(v10 + 8);
    v27 = v9;
    v35(v31, v9);
    v36 = v86;
    sub_213D7B980(v86, v89);
    v26 = v80;
    (*(v80 + 8))(v34, v36);
    if (*&v89[0])
    {

      v28 = 1;
    }

    else
    {
      v28 = 0;
    }

    v29 = v87;
    v16 = v79;
    v15 = v33;
  }

  v37 = v16[2];
  v37(v21, v29, v15);
  if (v88(v21, 1, v27) == 1)
  {
    v81(v21, v15);
  }

  else
  {
    v38 = v83;
    MEMORY[0x21604E7B0](v27);
    (*(v85 + 8))(v21, v27);
    v39 = v86;
    sub_213D7B980(v86, v89);
    v40 = v38;
    v29 = v87;
    (*(v26 + 8))(v40, v39);
    if (*&v89[0])
    {

      v41 = v82;
      goto LABEL_13;
    }
  }

  v41 = v82;
  if (v28)
  {
    *(v77 + *((*MEMORY[0x277D85000] & *v77) + 0x220)) = 1;
  }

LABEL_13:
  v37(v41, v29, v15);
  if (v88(v41, 1, v27) == 1)
  {
    v81(v41, v15);
    goto LABEL_32;
  }

  v42 = v85;
  v43 = v78;
  (*(v85 + 32))(v78, v41, v27);
  v44 = v83;
  MEMORY[0x21604E7B0](v27);
  v45 = v86;
  v46 = sub_213D7C0E0(v86);
  v47 = *(v26 + 8);
  v47(v44, v45);
  if ((v46 & 1) == 0)
  {
    goto LABEL_31;
  }

  v48 = v84;
  [v84 setSelectableMapFeatures_];
  MEMORY[0x21604E7B0](v27);
  sub_213D7B980(v45, v89);
  v47(v44, v45);
  v49 = *&v89[0];
  if (!*&v89[0])
  {
    v64 = [v48 selectedAnnotations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v49 = sub_213D919FC();

    if (v49 >> 62)
    {
      v65 = sub_213D91EBC();
      if (v65)
      {
LABEL_47:
        v66 = 0;
        while (1)
        {
          if ((v49 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x21604EF80](v66, v49);
            v68 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (v66 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }

            v67 = *(v49 + 8 * v66 + 32);
            swift_unknownObjectRetain();
            v68 = v66 + 1;
            if (__OFADD__(v66, 1))
            {
LABEL_56:
              __break(1u);
LABEL_57:
              (*(v85 + 8))(v78, v88);

              v69 = v77;
              goto LABEL_68;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v66;
          if (v68 == v65)
          {
            goto LABEL_70;
          }
        }

        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v71 = swift_allocObject();
        *(v71 + 16) = v70;
        *(v71 + 24) = v67;
        *(v71 + 32) = v75 & 1;

        swift_unknownObjectRetain();
        sub_213D905AC();
        swift_unknownObjectRelease();

        (*(v85 + 8))(v78, v27);

LABEL_71:
        *(v77 + *((*MEMORY[0x277D85000] & *v77) + 0x220)) = 0;
        return;
      }
    }

    else
    {
      v65 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
        goto LABEL_47;
      }
    }

LABEL_70:

    (*(v85 + 8))(v78, v27);
    goto LABEL_71;
  }

  v88 = v27;
  v50 = [v48 selectedAnnotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v51 = sub_213D919FC();

  if (v51 >> 62)
  {
    v27 = sub_213D91EBC();
    if (v27)
    {
      goto LABEL_19;
    }

LABEL_65:

    v69 = v77;
    v72 = *MEMORY[0x277D85000] & *v77;
    if (*(v69 + *((*MEMORY[0x277D85000] & *v69) + 0x220)))
    {
      (*(v85 + 8))(v78, v88);
    }

    else
    {
      v73 = v49;
      sub_213D473A0(v73, v84, v75 & 1);

      (*(v85 + 8))(v78, v88);
    }

LABEL_68:
    *(v69 + *((*MEMORY[0x277D85000] & *v69) + 0x220)) = 0;
    return;
  }

  v27 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_65;
  }

LABEL_19:
  v52 = 0;
  v43 = v51 & 0xC000000000000001;
  v42 = 0x277CD4000uLL;
  while (v43)
  {
    MEMORY[0x21604EF80](v52, v51);
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_30;
    }

LABEL_25:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      v55 = sub_213D91C5C();
      swift_unknownObjectRelease();
      if (v55)
      {
        goto LABEL_57;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v52;
    if (v54 == v27)
    {
      goto LABEL_65;
    }
  }

  if (v52 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  v53 = *(v51 + 8 * v52 + 32);
  swift_unknownObjectRetain();
  v54 = v52 + 1;
  if (!__OFADD__(v52, 1))
  {
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  (*(v42 + 8))(v43, v27);
LABEL_32:
  v56 = v84;
  [v84 setSelectableMapFeatures_];
  v57 = [v56 selectedAnnotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v49 = sub_213D919FC();

  if (v49 >> 62)
  {
    goto LABEL_62;
  }

  v58 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v58)
  {
LABEL_34:
    v59 = 0;
    do
    {
      if ((v49 & 0xC000000000000001) != 0)
      {
        v60 = MEMORY[0x21604EF80](v59, v49);
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:

          v62 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v63 = swift_allocObject();
          *(v63 + 16) = v62;
          *(v63 + 24) = v60;
          *(v63 + 32) = v75 & 1;

          swift_unknownObjectRetain();
          sub_213D905AC();
          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
        if (v59 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          v58 = sub_213D91EBC();
          if (!v58)
          {
            break;
          }

          goto LABEL_34;
        }

        v60 = *(v49 + 8 * v59 + 32);
        swift_unknownObjectRetain();
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_43;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_44;
      }

      swift_unknownObjectRelease();
      ++v59;
    }

    while (v61 != v58);
  }
}

void sub_213D41E5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v34 = a4;
  v33[1] = a1;
  v7 = *v4;
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x1E8);
  v40[0] = *((*MEMORY[0x277D85000] & *v4) + 0x1D8);
  v40[1] = v9;
  v10 = type metadata accessor for MapSelectionManagerBox();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = v33 - v12;
  v39 = v13;
  v14 = sub_213D9162C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v35 = v33 - v17;
  v18 = sub_213D91C7C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v33 - v21;
  v23 = (v4 + *((v8 & v7) + 0x230));
  v24 = *v23;
  v25 = v23[1];
  v36 = a2;
  *v23 = a2;
  v23[1] = a3;

  sub_213CCE520(v24);
  sub_213D3BE44(v22);
  if ((*(v15 + 48))(v22, 1, v14))
  {
    (*(v19 + 8))(v22, v18);
  }

  else
  {
    v26 = v35;
    v27 = v36;
    (*(v15 + 16))(v35, v22, v14);
    (*(v19 + 8))(v22, v18);
    v28 = v37;
    MEMORY[0x21604E7B0](v14);
    (*(v15 + 8))(v26, v14);
    v29 = v39;
    sub_213D7B980(v39, v40);
    (*(v38 + 8))(v28, v29);
    v30 = *&v40[0];
    if (*&v40[0])
    {
      if (v27(v40))
      {
        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = swift_allocObject();
        *(v32 + 16) = v31;
        *(v32 + 24) = v30;
        *(v32 + 32) = v34 & 1;

        v30 = v30;
        sub_213D905AC();
      }
    }
  }
}

void sub_213D4222C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = a3 & 1;
    v7 = Strong;
    [Strong deselectAnnotation:a2 animated:v6];
  }
}

id sub_213D422A0(void *a1, char a2, uint64_t *a3)
{
  v5 = *a3;
  if ((a2 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = qword_27C8EB438;
  *(v3 + qword_27C8EB438) = v5;
  [a1 setScrollEnabled_];
  [a1 setZoomEnabled_];
  [a1 setPitchEnabled_];
  v7 = (*(v3 + v6) >> 2) & 1;

  return [a1 setRotateEnabled_];
}

uint64_t sub_213D42348(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v22[-v14];
  sub_213D3C1CC(&v22[-v14]);
  if ((*(v8 + 48))(v15, 1, v7))
  {
    v16 = &qword_27C8EBAB0;
    v17 = &qword_213D98468;
    v18 = v15;
  }

  else
  {
    sub_213CE2C28(v15, v11, qword_27C8EB9C8, qword_213D98278);
    sub_213CD8330(v15, &qword_27C8EBAB0, &qword_213D98468);
    v19 = type metadata accessor for KeyframeAnimationState();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_213D915FC();
    v18 = v11;
    v16 = qword_27C8EB9C8;
    v17 = qword_213D98278;
  }

  sub_213CD8330(v18, v16, v17);
  v20 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x250));
  v23 = 0;

  sub_213CFA284(&v23, a1, v20);
}

uint64_t sub_213D425D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v7 = *v4;
  v8 = *MEMORY[0x277D85000];
  v9 = (*MEMORY[0x277D85000] & *v4);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB8, &qword_213D98470);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for _MapContentInputs(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *((v8 & v7) + 0x1F8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_213D3BC58(v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_213CD8330(v13, &qword_27C8EBAB8, &qword_213D98470);
      return 0;
    }

    else
    {
      sub_213D49AE0(v13, v18, type metadata accessor for _MapContentInputs);
      AGGraphClearUpdate();
      v22 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      v23 = v9[59];
      v24 = v9[60];
      v25 = v9[61];
      v26 = v9[62];
      sub_213D42834(a1, v18, v29, v30, &v31, a4);
      AGSubgraphSetCurrent();

      v27 = v31;
      AGGraphSetUpdate();

      sub_213D49B70(v18, type metadata accessor for _MapContentInputs);
      return v27;
    }
  }

  return result;
}

uint64_t sub_213D42834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, char **a5@<X8>, uint64_t a6)
{
  v175 = a3;
  v183 = a2;
  v179 = a5;
  v182 = a6;
  v171 = type metadata accessor for MarkerAnnotationViewModel(0);
  v8 = *(*(v171 - 8) + 64);
  MEMORY[0x28223BE20](v171);
  v172 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for ResolvedMarker();
  v10 = *(*(v174 - 1) + 64);
  MEMORY[0x28223BE20](v174);
  v178 = &v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for CustomAnnotationViewModel(0);
  v12 = *(*(v173 - 8) + 64);
  MEMORY[0x28223BE20](v173);
  v177 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MapContentList.Item.Content(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v170 - v19;
  v176 = type metadata accessor for ResolvedAnnotation();
  v21 = *(*(v176 - 1) + 64);
  MEMORY[0x28223BE20](v176);
  v186 = (&v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = type metadata accessor for MapContentList.Item(0);
  v23 = *(v187 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v187);
  v184 = (&v170 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v28 = (&v170 - v27);
  v181 = sub_213D9057C();
  v180 = *(v181 - 8);
  v29 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v31 = &v170 - v30;
  v32 = type metadata accessor for _MapContentOutputs(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v185 = &v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = a4;
  v35 = sub_213D903FC();
  sub_213CDDDA4(a1, sub_213CD85D8, v191, a4, MEMORY[0x277D84A98], v35, MEMORY[0x277D84AC0], v36);
  v37 = v195;
  v189 = a4;
  v190 = v195;
  sub_213CDDDA4(a1, sub_213D49914, v188, a4, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v38);
  sub_213CDF770(v37, v31);
  v39 = v185;
  (*(v182 + 32))(v31, v183, a4);
  v40 = v39;
  (*(v180 + 8))(v31, v181);
  v41 = sub_213CD6C60();
  v42 = *MEMORY[0x277CEF7D0];
  if (v41 == *MEMORY[0x277CEF7D0])
  {
    v43 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  else
  {
    v43 = *AGGraphGetValue();
  }

  if (sub_213CD6C80() == v42)
  {
    result = sub_213D71A68(MEMORY[0x277D84F90]);
    v45 = result;
    v46 = *(v43 + 16);
    if (!v46)
    {
LABEL_12:

      v48 = *(v45 + 16);
      v49 = v184;
      if (v48)
      {
        v50 = 0;
        while (v50 < *(v45 + 16))
        {
          sub_213D4CAEC(v45 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v50, v49, type metadata accessor for MapContentList.Item);
          sub_213D4CAEC(v49 + *(v187 + 24), v17, type metadata accessor for MapContentList.Item.Content);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v57 = v178;
            sub_213D49AE0(v17, v178, type metadata accessor for ResolvedMarker);
            v58 = v174[8];
            v183 = *v49;

            v59 = sub_213D90CDC();
            if (v59)
            {
              v60 = v59;
              v61 = [v59 string];

              v182 = sub_213D9193C();
              v181 = v62;
            }

            else
            {
              v182 = 0;
              v181 = 0;
            }

            v114 = sub_213D90CCC();
            v186 = v58;
            if (v114)
            {
              v115 = v114;
              v116 = [v114 string];

              v117 = sub_213D9193C();
              v119 = v118;

              v57 = v178;
            }

            else
            {
              v117 = 0;
              v119 = 0;
            }

            v120 = v174;
            v121 = *(v57 + v174[9]);
            v122 = *(v57 + v174[10]);
            v123 = *(v57 + 16);
            v124 = *v57;
            v125 = *(v57 + 8);
            v126 = *(v57 + 18);
            v127 = *(v187 + 28);
            v128 = *(v171 + 68);
            v129 = sub_213D9100C();
            v130 = v172;
            v131 = v184 + v127;
            v132 = v178;
            (*(*(v129 - 8) + 16))(&v172[v128], v131, v129);
            v133 = v182;
            *v130 = v183;
            *(v130 + 8) = v133;
            *(v130 + 16) = v181;
            *(v130 + 24) = v117;
            *(v130 + 32) = v119;
            *(v130 + 40) = v121;
            LODWORD(v187) = v122;
            *(v130 + 48) = v122;
            *(v130 + 80) = v123;
            *(v130 + 88) = v124;
            *(v130 + 96) = v125;
            *(v130 + 104) = 1;
            *(v130 + 105) = v126;
            *(v130 + 112) = 0;
            if (*(v132 + v120[11]))
            {
              sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
              v134 = v121;

              *(v130 + 112) = sub_213D91C3C();
            }

            else
            {
              v135 = v121;
            }

            v136 = v121;
            v137 = sub_213D90CDC();
            if (v137)
            {
              v138 = v137;
              v139 = [v137 string];

              v140 = sub_213D9193C();
              v142 = v141;
            }

            else
            {
              v140 = 0;
              v142 = 0;
            }

            *(v130 + 56) = v140;
            *(v130 + 64) = v142;
            *(v130 + 72) = sub_213D90CBC();
            v143 = sub_213D90CDC();
            if (v143)
            {
              v144 = v143;
              v145 = [v143 string];

              v146 = sub_213D9193C();
              v148 = v147;
            }

            else
            {
              v146 = 0;
              v148 = 0;
            }

            v149 = sub_213D90CCC();
            if (v149)
            {
              v150 = v149;
              v151 = [v149 string];

              v152 = sub_213D9193C();
              v154 = v153;
            }

            else
            {
              v152 = 0;
              v154 = 0;
            }

            v155 = v175;
            v156 = type metadata accessor for MapBridgingMarker();
            v157 = objc_allocWithZone(v156);
            v158 = &v157[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_title];
            *v158 = 0;
            v158[1] = 0;
            v159 = &v157[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_subtitle];
            *v159 = 0;
            v159[1] = 0;
            v160 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem;
            *&v157[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem] = 0;
            v161 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature;
            v157[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature] = 0;
            *v158 = v146;
            v158[1] = v148;
            *v159 = v152;
            v159[1] = v154;
            v162 = &v157[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_coordinate];
            *v162 = v124;
            v162[1] = v125;
            v163 = *&v157[v160];
            *&v157[v160] = v136;
            v164 = v136;

            v157[v161] = v187;
            v193.receiver = v157;
            v193.super_class = v156;
            v165 = objc_msgSendSuper2(&v193, sel_init);

            v166 = v155;
            v167 = sub_213D9190C();
            v168 = [v166 dequeueReusableAnnotationViewWithIdentifier:v167 forAnnotation:v165];

            objc_opt_self();
            v169 = swift_dynamicCastObjCClassUnconditional();
            sub_213D2797C(v169, 0);

            sub_213D49B70(v178, type metadata accessor for ResolvedMarker);
            sub_213D49B70(v184, type metadata accessor for MapContentList.Item);
            sub_213D49B70(v185, type metadata accessor for _MapContentOutputs);
            *v179 = v169;
            return sub_213D49B70(v130, type metadata accessor for MarkerAnnotationViewModel);
          }

          ++v50;
          sub_213D49B70(v49, type metadata accessor for MapContentList.Item);
          result = sub_213D49B70(v17, type metadata accessor for MapContentList.Item.Content);
          if (v48 == v50)
          {
            goto LABEL_17;
          }
        }

LABEL_51:
        __break(1u);
      }

      else
      {
LABEL_17:

        result = sub_213D49B70(v40, type metadata accessor for _MapContentOutputs);
        *v179 = 0;
      }

      return result;
    }
  }

  else
  {
    v45 = *AGGraphGetValue();

    v46 = *(v43 + 16);
    if (!v46)
    {
      goto LABEL_12;
    }
  }

  v47 = 0;
  while (1)
  {
    if (v47 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    sub_213D4CAEC(v43 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v47, v28, type metadata accessor for MapContentList.Item);
    sub_213D4CAEC(v28 + *(v187 + 24), v20, type metadata accessor for MapContentList.Item.Content);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    ++v47;
    sub_213D49B70(v28, type metadata accessor for MapContentList.Item);
    result = sub_213D49B70(v20, type metadata accessor for MapContentList.Item.Content);
    if (v46 == v47)
    {
      goto LABEL_12;
    }
  }

  v51 = v186;
  sub_213D49AE0(v20, v186, type metadata accessor for ResolvedAnnotation);
  v52 = v176[6];
  v184 = *v28;

  v53 = sub_213D90CDC();
  if (v53)
  {
    v54 = v53;
    v55 = [v53 string];

    v182 = sub_213D9193C();
    v181 = v56;
  }

  else
  {
    v182 = 0;
    v181 = 0;
  }

  v63 = v173;
  v64 = sub_213D90CCC();
  v183 = v52;
  if (v64)
  {
    v65 = v64;
    v66 = [v64 string];

    v180 = sub_213D9193C();
    v178 = v67;
  }

  else
  {
    v180 = 0;
    v178 = 0;
  }

  v68 = v176[10];
  LODWORD(v174) = *(v51 + v176[9]);
  v69 = *(v186 + v68);
  v70 = *v186;
  v71 = v186[1];
  v72 = *(v186 + v176[7]);
  v73 = v186[2];
  v74 = v186[3];
  v75 = v186 + v176[11];
  v76 = *v75;
  v77 = *(v75 + 1);
  v78 = v75[16];
  v79 = *(v186 + v176[13]);
  v80 = *(v187 + 28);
  v81 = *(v63 + 64);
  v82 = sub_213D9100C();
  v83 = v177;
  (*(*(v82 - 8) + 16))(&v177[v81], v28 + v80, v82);
  v84 = v182;
  *v83 = v184;
  *(v83 + 1) = v84;
  v85 = v180;
  *(v83 + 2) = v181;
  *(v83 + 3) = v85;
  *(v83 + 4) = v178;
  *(v83 + 5) = 0;
  v83[48] = v174;
  v83[49] = v69;
  v86 = v186;
  *(v83 + 7) = v70;
  *(v83 + 8) = v71;
  *(v83 + 9) = v72;
  *(v83 + 10) = v73;
  *(v83 + 11) = v74;
  v83[96] = 1;
  *(v83 + 13) = v76;
  *(v83 + 14) = v77;
  v83[120] = v78;
  v83[121] = v79;

  v87 = sub_213D90CDC();
  if (v87)
  {
    v88 = v87;
    v89 = [v87 string];

    v90 = sub_213D9193C();
    v92 = v91;
  }

  else
  {
    v90 = 0;
    v92 = 0;
  }

  v93 = v175;
  v94 = v185;
  v95 = sub_213D90CCC();
  if (v95)
  {
    v96 = v95;
    v97 = [v95 string];

    v98 = sub_213D9193C();
    v100 = v99;
  }

  else
  {
    v98 = 0;
    v100 = 0;
  }

  v101 = type metadata accessor for MapBridgingCustomAnnotation();
  v102 = objc_allocWithZone(v101);
  v103 = &v102[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_title];
  *v103 = 0;
  v103[1] = 0;
  v104 = &v102[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_subtitle];
  *v104 = 0;
  v104[1] = 0;
  v105 = OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem;
  *&v102[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem] = 0;
  *v103 = v90;
  v103[1] = v92;
  *v104 = v98;
  v104[1] = v100;
  v106 = &v102[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_coordinate];
  *v106 = v70;
  *(v106 + 1) = v71;
  v107 = *&v102[v105];
  *&v102[v105] = 0;

  v194.receiver = v102;
  v194.super_class = v101;
  v108 = objc_msgSendSuper2(&v194, sel_init);
  v109 = v93;
  v110 = sub_213D9190C();
  v111 = [v109 dequeueReusableAnnotationViewWithIdentifier:v110 forAnnotation:v108];

  type metadata accessor for SwiftUIAnnotationView();
  v112 = swift_dynamicCastClassUnconditional();
  v113 = v177;
  sub_213D2763C(v112, 0);

  sub_213D49B70(v113, type metadata accessor for CustomAnnotationViewModel);
  sub_213D49B70(v86, type metadata accessor for ResolvedAnnotation);
  sub_213D49B70(v28, type metadata accessor for MapContentList.Item);
  result = sub_213D49B70(v94, type metadata accessor for _MapContentOutputs);
  *v179 = v112;
  return result;
}

id sub_213D43880(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v23 - v15;
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x210)) = 1;
  if (([a1 isScrollEnabled] & 1) != 0 || (objc_msgSend(a1, sel_isZoomEnabled) & 1) != 0 || (objc_msgSend(a1, sel_isPitchEnabled) & 1) != 0 || (result = objc_msgSend(a1, sel_isRotateEnabled), result))
  {
    sub_213D3C1CC(v11);
    if ((*(v4 + 48))(v11, 1, v3))
    {
      sub_213CD8330(v11, &qword_27C8EBAB0, &qword_213D98468);
      v18 = type metadata accessor for KeyframeAnimationState();
      (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    }

    else
    {
      sub_213CE2C28(v11, v7, qword_27C8EB9C8, qword_213D98278);
      sub_213CD8330(v11, &qword_27C8EBAB0, &qword_213D98468);
      MEMORY[0x21604E7B0](v3);
      sub_213CD8330(v7, qword_27C8EB9C8, qword_213D98278);
      v19 = type metadata accessor for KeyframeAnimationState();
      if ((*(*(v19 - 8) + 48))(v16, 1, v19) != 1)
      {
        sub_213CD8330(v16, &qword_27C8EBB58, &unk_213D985B0);
        v20 = swift_allocObject();
        *(v20 + 16) = v1;
        *(v20 + 24) = a1;
        v21 = v1;
        v22 = a1;
        sub_213D905AC();
      }
    }

    return sub_213CD8330(v16, &qword_27C8EBB58, &unk_213D985B0);
  }

  return result;
}

uint64_t sub_213D43C00(void *a1, void *a2)
{
  v3 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0x208));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v5, v6);
  if (v5)
  {

    sub_213D1DFC0(v6);
    sub_213D49864(v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    sub_213D915FC();

    sub_213D1E068(v6);
  }

  else
  {
    sub_213D49864(v4, 0, v6);
  }

  return sub_213D42348(a2);
}

void sub_213D43D1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D43880(v4);
}

void sub_213D43DAC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D43DA8(v4);
}

uint64_t sub_213D43E14(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v37 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  v19 = *MEMORY[0x277D85000] & *v2;
  if (*(v2 + *(v19 + 0x210)) == 1)
  {
    v39 = v8;
    v40 = v5;
    v41 = v4;
    v42 = v17;
    v20 = (v2 + *(v19 + 520));
    v22 = *v20;
    v21 = v20[1];
    v23 = v20[2];
    sub_213D49818(*v20, v21, v23);
    if (v21)
    {
      v38 = a1;
      v44 = v22;
      v45 = v21;
      v46 = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
      MEMORY[0x21604E7B0](&v43);
      v25 = v43;
      v26 = sub_213D79B18(v43, 0xA000000000000008);
      sub_213D1E068(v25);
      if (v26)
      {
        sub_213D49864(v22, v21, v23);
        a1 = v38;
      }

      else
      {
        v44 = v22;
        v45 = v21;
        v46 = v23;
        MEMORY[0x21604E7B0](&v43, v24);
        v27 = v43;
        sub_213D1E068(v43);
        a1 = v38;
        if (v27 >> 61 != 4 || ([v38 hasUserLocation] & 1) == 0)
        {
          [a1 setUserTrackingMode_];
          v28 = swift_allocObject();
          v28[2] = v22;
          v28[3] = v21;
          v28[4] = v23;

          sub_213D1DFC0(v23);
          sub_213D905AC();
        }

        sub_213D49864(v22, v21, v23);
      }
    }

    sub_213D3C1CC(v12);
    v29 = v41;
    if ((*(v40 + 48))(v12, 1, v41))
    {
      sub_213CD8330(v12, &qword_27C8EBAB0, &qword_213D98468);
      v30 = type metadata accessor for KeyframeAnimationState();
      (*(*(v30 - 8) + 56))(v16, 1, 1, v30);
    }

    else
    {
      v31 = v39;
      sub_213CE2C28(v12, v39, qword_27C8EB9C8, qword_213D98278);
      sub_213CD8330(v12, &qword_27C8EBAB0, &qword_213D98468);
      MEMORY[0x21604E7B0](v29);
      sub_213CD8330(v31, qword_27C8EB9C8, qword_213D98278);
      v32 = type metadata accessor for KeyframeAnimationState();
      if ((*(*(v32 - 8) + 48))(v16, 1, v32) != 1)
      {
        sub_213CD8330(v16, &qword_27C8EBB58, &unk_213D985B0);
        v34 = swift_allocObject();
        v34[2] = v2;
        v34[3] = a1;
        v34[4] = v42;
        v35 = v2;
        v36 = a1;

        sub_213D905AC();

        goto LABEL_13;
      }
    }

    sub_213CD8330(v16, &qword_27C8EBB58, &unk_213D985B0);
  }

LABEL_13:
  sub_213D44328(v18, v2, a1);
}

uint64_t sub_213D44328(_BYTE *a1, void *a2, void *a3)
{
  result = swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    v7 = *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x250));
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a3;

    v9 = a3;
    sub_213D905AC();
  }

  return result;
}

void sub_213D443EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D43E14(v4);
}

uint64_t sub_213D44454(uint64_t result, char a2, void *a3)
{
  v13 = 1;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v12 = 1;
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 48);
    v6 = a2 & 1;
    do
    {
      if (*(v5 - 16) == v6)
      {
        v8 = *(v5 - 1);
        v7 = *v5;

        sub_213CFA348(a3, v10, v9);
        v8(v9);
      }

      v5 += 3;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_213D44518(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D49C44(v4);
}

unint64_t sub_213D44580(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_213D1DFC0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  return sub_213D1E068(a3);
}

unint64_t sub_213D44614(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a4;

  sub_213D1DFC0(a3);
  sub_213D1DFC0(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  return sub_213D1E068(a3);
}

unint64_t sub_213D446E8(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v11 = a1;
  v12 = a2;
  v13 = a3;

  sub_213D1DFC0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  MEMORY[0x21604E7B0](&v10);
  v6 = v10;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = v6;
  v11 = v7 | 0x8000000000000000;
  sub_213D915FC();
  v8 = v16;

  return sub_213D1E068(v8);
}

void sub_213D447BC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_213D49F0C(a4);
}

void sub_213D44828(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D4A1E8(v4);
}

void sub_213D44890(void *a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v5, v6);
  if (v5)
  {
    v7 = swift_allocObject();
    v7[2] = v4;
    v7[3] = v5;
    v7[4] = v6;
    v7[5] = v1;
    v7[6] = a1;
    sub_213D49818(v4, v5, v6);
    v8 = v1;
    v9 = a1;
    sub_213D905AC();

    sub_213D49864(v4, v5, v6);
  }
}

uint64_t sub_213D44994(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{

  sub_213D1DFC0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  sub_213D1E068(a3);
  return sub_213D42348(a5);
}

void sub_213D44A44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D44890(v4);
}

void sub_213D44AAC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_213D4A340();

  swift_unknownObjectRelease();
}

uint64_t sub_213D44B28(void *a1, void *a2)
{
  v40 = a2;
  v41 = a1;
  v3 = *MEMORY[0x277D85000] & *v2;
  v42 = *(v3 + 0x1D8);
  v43 = v42;
  v44 = *(v3 + 488);
  v4 = type metadata accessor for MapSelectionManagerBox();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v39 = v42;
  v8 = sub_213D91C7C();
  *&v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v38 = &v32 - v10;
  v11 = sub_213D9162C();
  v12 = sub_213D91C7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  sub_213D3BE44(v16);
  if ((*(v17 + 48))(v16, 1, v11) == 1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  (*(v17 + 32))(v21, v16, v11);
  if (*(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x228)))
  {
    return (*(v17 + 8))(v21, v11);
  }

  v36 = v21;
  v37 = v17;
  v35 = v7;
  v23 = [v40 annotation];
  v24 = [v41 annotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v25 = sub_213D919FC();

  v33 = v8;
  v34 = v4;
  if (v25 >> 62)
  {
LABEL_20:
    v26 = sub_213D91EBC();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v26 != i; ++i)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x21604EF80](i, v25);
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v28 = *(v25 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    v29 = [v28 isEqual_];
    swift_unknownObjectRelease();
    if (v29)
    {

      v30 = v38;
      (*(*(v39 - 8) + 56))(v38, 1, 1);
      v31 = v36;
      MEMORY[0x21604E7B0](v11);
      sub_213D7C498(v30, v34);
      (*(v42 + 8))(v30, v33);
      sub_213D915FC();
      swift_unknownObjectRelease();
      return (*(v37 + 8))(v31, v11);
    }
  }

  swift_unknownObjectRelease();

  return (*(v37 + 8))(v36, v11);
}

void sub_213D45014(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_213D44B28(v6, v7);
}

uint64_t sub_213D45090(void *a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x1E8);
  v31[0] = *((*MEMORY[0x277D85000] & *v2) + 0x1D8);
  v31[1] = v4;
  v5 = type metadata accessor for MapSelectionManagerBox();
  v30 = *(v5 - 8);
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v9 = sub_213D9162C();
  v10 = sub_213D91C7C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = *(v9 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  sub_213D3BE44(v14);
  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  (*(v15 + 32))(v19, v14, v9);
  MEMORY[0x21604E7B0](v9);
  v21 = sub_213D7C0E0(v5);
  (*(v30 + 8))(v8, v5);
  if (v21)
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (v22)
    {
      v23 = v22;
      v24 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x230);
      v25 = *v24;
      if (*v24)
      {
        v26 = *(v24 + 1);
        *&v31[0] = v22;
        swift_unknownObjectRetain_n();
        sub_213CD4E28(v25);
        if (v25(v31))
        {
          swift_unknownObjectRetain();
          [v28 deselectAnnotation:v23 animated:0];
          sub_213CCE520(v25);
LABEL_11:
          swift_unknownObjectRelease_n();
          return (*(v15 + 8))(v19, v9);
        }

        sub_213CCE520(v25);
      }

      else
      {
        swift_unknownObjectRetain_n();
      }

      *&v31[0] = v23;
      swift_unknownObjectRetain();
      MEMORY[0x21604E7B0](v9);
      sub_213D7C248(v31, v5);

      sub_213D915FC();
      goto LABEL_11;
    }
  }

  return (*(v15 + 8))(v19, v9);
}

void sub_213D4547C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_213D45090(v6, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_213D454FC(void *a1, void *a2)
{
  v111 = a2;
  v89 = a1;
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v2;
  v6 = *(v5 + 0x1D8);
  v100 = *(v6 - 8);
  v7 = *(v100 + 64);
  MEMORY[0x28223BE20](a1);
  v99 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v89 - v11;
  v12 = type metadata accessor for UserAnnotationViewModel(0);
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  MEMORY[0x28223BE20](v12);
  v101 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for CustomAnnotationViewModel(0);
  v90 = *(v92 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x28223BE20](v92);
  v91 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v89 - v18;
  v19 = sub_213D91C7C();
  v107 = *(v19 - 8);
  v108 = v19;
  v20 = *(v107 + 64);
  MEMORY[0x28223BE20](v19);
  v98 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v106 = &v89 - v23;
  v96 = type metadata accessor for MarkerAnnotationViewModel(0);
  v94 = *(v96 - 8);
  v24 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v95 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v97 = &v89 - v27;
  v28 = *((v4 & v3) + 0x1E0);
  v109 = v6;
  v112 = v6;
  v113 = v28;
  v105 = *(v5 + 488);
  v114 = v105;
  v29 = type metadata accessor for MapSelectionManagerBox();
  v30 = *(v29 - 1);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = &v89 - v32;
  v34 = sub_213D9162C();
  v35 = sub_213D91C7C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v89 - v38;
  v40 = *(v34 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v44 = &v89 - v43;
  v110 = v2;
  sub_213D3BE44(v39);
  if ((*(v40 + 48))(v39, 1, v34) == 1)
  {
    return (*(v36 + 8))(v39, v35);
  }

  (*(v40 + 32))(v44, v39, v34);
  MEMORY[0x21604E7B0](v34);
  v46 = sub_213D7BF40(v29);
  (*(v30 + 8))(v33, v29);
  if ((v46 & 1) == 0)
  {
    return (*(v40 + 8))(v44, v34);
  }

  v47 = v111;
  v48 = [v111 annotation];
  v49 = v110;
  if (v48)
  {
    type metadata accessor for MapBridgingMarker();
    v50 = swift_dynamicCastClass();
    if (v50)
    {
      v51 = *(v49 + qword_27C8EB3F8 + 16);
      if (*(v51 + 16))
      {
        v52 = v50;
        v53 = *(v49 + qword_27C8EB3F8 + 16);

        v54 = sub_213CE2448(v52);
        if (v55)
        {
          v56 = v95;
          sub_213D4CAEC(*(v51 + 56) + *(v94 + 72) * v54, v95, type metadata accessor for MarkerAnnotationViewModel);

          v57 = v97;
          sub_213D49AE0(v56, v97, type metadata accessor for MarkerAnnotationViewModel);
          v58 = v57 + *(v96 + 68);
          v59 = v106;
          sub_213D66EE0(v109, v106);
          MEMORY[0x21604E7B0](v34);
          sub_213D7C498(v59, v29);
          (*(v107 + 8))(v59, v108);
          sub_213D915FC();
          swift_unknownObjectRelease();
          v60 = type metadata accessor for MarkerAnnotationViewModel;
          v61 = v57;
LABEL_27:
          sub_213D49B70(v61, v60);
          return (*(v40 + 8))(v44, v34);
        }

        v47 = v111;
      }
    }

    swift_unknownObjectRelease();
  }

  v97 = v33;
  if ([v47 annotation])
  {
    type metadata accessor for MapBridgingCustomAnnotation();
    v62 = swift_dynamicCastClass();
    if (v62)
    {
      v63 = *(v49 + qword_27C8EB3F0 + 16);
      if (*(v63 + 16))
      {
        v64 = v62;
        v65 = *(v49 + qword_27C8EB3F0 + 16);

        v66 = sub_213CE249C(v64);
        if (v67)
        {
          v68 = v91;
          sub_213D4CAEC(*(v63 + 56) + *(v90 + 72) * v66, v91, type metadata accessor for CustomAnnotationViewModel);

          v69 = v93;
          sub_213D49AE0(v68, v93, type metadata accessor for CustomAnnotationViewModel);
          v70 = v69 + *(v92 + 64);
          v71 = v106;
          sub_213D66EE0(v109, v106);
          MEMORY[0x21604E7B0](v34);
          sub_213D7C498(v71, v29);
          (*(v107 + 8))(v71, v108);
          sub_213D915FC();
          swift_unknownObjectRelease();
          v72 = type metadata accessor for CustomAnnotationViewModel;
LABEL_26:
          v60 = v72;
          v61 = v69;
          goto LABEL_27;
        }

        v47 = v111;
      }
    }

    swift_unknownObjectRelease();
  }

  if ([v47 annotation])
  {
    v111 = v29;
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();
    if (v73)
    {
      v74 = v73;
      v75 = *(v49 + qword_27C8EB408 + 16);

      v77 = v104;
      sub_213D2DCB4(v76, v104);

      v78 = v103;
      if ((*(v102 + 48))(v77, 1, v103) == 1)
      {
        (*(v40 + 8))(v44, v34);
        swift_unknownObjectRelease();
        return sub_213CD8330(v77, &qword_27C8EB680, &unk_213D97FF0);
      }

      v69 = v101;
      sub_213D49AE0(v77, v101, type metadata accessor for UserAnnotationViewModel);
      v79 = v69 + *(v78 + 36);
      v80 = v98;
      v81 = v109;
      sub_213D66EE0(v109, v98);
      v82 = v100;
      if ((*(v100 + 48))(v80, 1, v81) == 1)
      {
        v83 = v108;
        v84 = v80;
        v85 = *(v107 + 8);
        v85(v84, v108);
        [v89 deselectAnnotation:v74 animated:0];
        v86 = v106;
        (*(v82 + 56))(v106, 1, 1, v81);
        MEMORY[0x21604E7B0](v34);
        sub_213D7C498(v86, v111);
        v85(v86, v83);
        sub_213D915FC();
        swift_unknownObjectRelease();
        sub_213D49B70(v101, type metadata accessor for UserAnnotationViewModel);
        return (*(v40 + 8))(v44, v34);
      }

      v87 = v99;
      (*(v82 + 32))(v99, v80, v81);
      v88 = v106;
      (*(v82 + 16))(v106, v87, v81);
      (*(v82 + 56))(v88, 0, 1, v81);
      MEMORY[0x21604E7B0](v34);
      sub_213D7C498(v88, v111);
      (*(v107 + 8))(v88, v108);
      sub_213D915FC();
      swift_unknownObjectRelease();
      (*(v82 + 8))(v99, v81);
      v72 = type metadata accessor for UserAnnotationViewModel;
      goto LABEL_26;
    }

    swift_unknownObjectRelease();
  }

  return (*(v40 + 8))(v44, v34);
}

void sub_213D46140(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_213D454FC(v6, v7);
}

void sub_213D461BC(void *a1, id a2)
{
  v5 = [a2 location];
  v4 = [a2 heading];
  sub_213D2DD70(v5, v4, a1);
}

void sub_213D46250(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_213D461BC(v6, v7);
}

uint64_t sub_213D462CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v53 = a1;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v3;
  v7 = sub_213D917DC();
  v51 = *(v7 - 8);
  v52 = v7;
  v8 = *(v51 + 64);
  MEMORY[0x28223BE20](v7);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_213D917FC();
  v48 = *(v50 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 488);
  aBlock = *(v6 + 472);
  v56 = v12;
  v13 = type metadata accessor for MapSelectionManagerBox();
  v44 = *(v13 - 8);
  v14 = *(v44 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = sub_213D9162C();
  v46 = *(v17 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  v21 = sub_213D91C7C();
  v45 = *(v21 - 8);
  v22 = *(v45 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - v23;
  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25 && (v26 = v3 + *((*v5 & *v3) + 0x238), (v27 = *v26) != 0))
  {
    v28 = *(v26 + 1);
    v54 = v25;
    sub_213CD4E28(v27);
    swift_unknownObjectRetain();
    v27(&aBlock, &v54);
    v29 = *(&v56 + 1);
    v30 = v57;
    v31 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v56 + 1));
    v32 = sub_213D425D4(v31, v53, v29, v30);
    sub_213CCE520(v27);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    return v32;
  }

  else
  {
    result = sub_213D2DFCC(a2, v53);
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        sub_213D3BE44(v24);
        v34 = v46;
        if ((*(v46 + 48))(v24, 1, v17))
        {
          (*(v45 + 8))(v24, v21);
          v35 = 0;
        }

        else
        {
          (*(v34 + 16))(v20, v24, v17);
          (*(v45 + 8))(v24, v21);
          MEMORY[0x21604E7B0](v17);
          (*(v34 + 8))(v20, v17);
          v35 = sub_213D7BF40(v13);
          (*(v44 + 8))(v16, v13);
        }

        sub_213CE2B34(0, &qword_27C8EBB38, 0x277D85C78);
        v36 = sub_213D91BEC();
        v37 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v38 = swift_allocObject();
        *(v38 + 16) = v37;
        *(v38 + 24) = v35 & 1;
        v57 = sub_213D497F4;
        v58 = v38;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v56 = sub_213CFF278;
        *(&v56 + 1) = &block_descriptor_0;
        v39 = _Block_copy(&aBlock);

        v40 = v47;
        sub_213D917EC();
        *&aBlock = MEMORY[0x277D84F90];
        sub_213D4C8F8(&qword_27C8EBB40, 255, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB48, &qword_213D985A8);
        sub_213CEDCEC(&qword_27C8EBB50, &qword_27C8EBB48, &qword_213D985A8);
        v41 = v49;
        v42 = v52;
        sub_213D91CBC();
        MEMORY[0x21604EDC0](0, v40, v41, v39);
        _Block_release(v39);

        (*(v51 + 8))(v41, v42);
        (*(v48 + 8))(v40, v50);
        return 0;
      }
    }
  }

  return result;
}

void sub_213D46998(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong showsUserLocation])
    {
      v5 = [v4 userLocation];
      v6 = [v4 viewForAnnotation_];

      [v6 setEnabled_];
      v4 = v6;
    }
  }
}

id sub_213D46A78(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = sub_213D4A5E0();

  swift_unknownObjectRelease();

  return v6;
}

id sub_213D46AF4(void *a1)
{
  v70 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v63 - v4;
  v6 = type metadata accessor for UserAnnotationViewModel(0);
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustomAnnotationViewModel(0);
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v63 - v15;
  v17 = type metadata accessor for MarkerAnnotationViewModel(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v25 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x240));
    goto LABEL_18;
  }

  v64 = v13;
  v65 = v18;
  v26 = v69;
  v66 = v9;
  v67 = v5;
  type metadata accessor for MapBridgingMarker();
  v27 = swift_dynamicCastClass();
  if (!v27 || (v28 = *(v1 + qword_27C8EB3F8 + 16), !*(v28 + 16)))
  {
LABEL_8:
    type metadata accessor for MapBridgingCustomAnnotation();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = *(v1 + qword_27C8EB3F0 + 16);
      if (*(v35 + 16))
      {
        v36 = v1;
        v37 = v34;
        swift_unknownObjectRetain();

        v38 = sub_213CE249C(v37);
        if (v39)
        {
          v40 = v64;
          sub_213D4CAEC(*(v35 + 56) + *(v68 + 72) * v38, v64, type metadata accessor for CustomAnnotationViewModel);

          swift_unknownObjectRelease();
          sub_213D49AE0(v40, v16, type metadata accessor for CustomAnnotationViewModel);
          v25 = v16[121];
          v32 = type metadata accessor for CustomAnnotationViewModel;
          v33 = v16;
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
        v1 = v36;
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return 0;
    }

    v41 = *(v1 + qword_27C8EB408 + 16);

    v43 = v67;
    sub_213D2DCB4(v42, v67);

    if ((*(v26 + 48))(v43, 1, v6) == 1)
    {
      sub_213CD8330(v43, &qword_27C8EB680, &unk_213D97FF0);
      return 0;
    }

    v44 = v43;
    v45 = v66;
    sub_213D49AE0(v44, v66, type metadata accessor for UserAnnotationViewModel);
    v25 = *(v45 + 41);
    v32 = type metadata accessor for UserAnnotationViewModel;
    v33 = v45;
    goto LABEL_17;
  }

  v29 = v27;
  v63 = v1;
  swift_unknownObjectRetain();

  v30 = sub_213CE2448(v29);
  if ((v31 & 1) == 0)
  {

    swift_unknownObjectRelease();
    v1 = v63;
    goto LABEL_8;
  }

  sub_213D4CAEC(*(v28 + 56) + *(v65 + 72) * v30, v21, type metadata accessor for MarkerAnnotationViewModel);

  swift_unknownObjectRelease();
  sub_213D49AE0(v21, v24, type metadata accessor for MarkerAnnotationViewModel);
  v25 = v24[105];
  v32 = type metadata accessor for MarkerAnnotationViewModel;
  v33 = v24;
LABEL_17:
  sub_213D49B70(v33, v32);
LABEL_18:
  if (v25 <= 2)
  {
    v50 = objc_opt_self();
    sub_213CE2B34(0, &qword_27C8EBB30, 0x277CD4E88);
    v51 = sub_213D91C1C();
    v52 = [v50 mapItemDetailWithPresentationStyle_];
LABEL_35:
    v54 = v52;

    return v54;
  }

  if (v25 > 4)
  {
    if (v25 == 5)
    {
      v53 = objc_opt_self();
      v51 = [objc_opt_self() openInMaps];
      v52 = [v53 mapItemDetailWithPresentationStyle_];
      goto LABEL_35;
    }

    return 0;
  }

  if (v25 == 3)
  {
    v46 = v70;
    v47 = [v46 nextResponder];

    if (v47)
    {
      while (1)
      {

        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          break;
        }

        v46 = v47;
        v47 = [v46 nextResponder];

        if (!v47)
        {
          goto LABEL_24;
        }
      }

      v49 = v48;
    }

    else
    {
LABEL_24:
      v49 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    }

    v59 = objc_opt_self();
    sub_213CE2B34(0, &qword_27C8EBB30, 0x277CD4E88);
    v51 = sub_213D91C2C();

    v52 = [v59 mapItemDetailWithPresentationStyle_];
    goto LABEL_35;
  }

  v55 = v70;
  v56 = [v55 nextResponder];

  if (v56)
  {
    while (1)
    {

      objc_opt_self();
      v57 = swift_dynamicCastObjCClass();
      if (v57)
      {
        break;
      }

      v55 = v56;
      v56 = [v55 nextResponder];

      if (!v56)
      {
        goto LABEL_32;
      }
    }

    v58 = v57;
  }

  else
  {
LABEL_32:
    v58 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  }

  v61 = objc_opt_self();
  v62 = [objc_opt_self() sheetPresentedFromViewController_];

  v54 = [v61 mapItemDetailWithPresentationStyle_];
  return v54;
}

id sub_213D47320(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = a5(v8, a4);

  swift_unknownObjectRelease();

  return v10;
}

uint64_t sub_213D473A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  v6 = *MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v3;
  *(v3 + *((v6 & v5) + 0x228)) = 1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = *((v6 & v5) + 0x1D8);
  *(v11 + 24) = *(v7 + 480);
  *(v11 + 40) = *((v6 & v5) + 0x1F0);
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 72) = a3;

  sub_213D905AC();
}

void sub_213D47560(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = a4 & 1;
      v9 = v7;
      [v7 selectAnnotation:v6 animated:v8];
    }

    swift_unknownObjectRelease();
  }

  sub_213D4763C();
}

void sub_213D4763C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *((*MEMORY[0x277D85000] & *Strong) + 0x228)) = 0;
  }
}

id sub_213D476B0()
{
  v1 = *v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x1F8);
  swift_unknownObjectWeakInit();
  v5 = *((*v2 & *v0) + 0x200);
  v6 = type metadata accessor for _MapContentInputs(0);
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  v7 = &v0[*((*v2 & *v0) + 0x208)];
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  v0[*((*v2 & *v0) + 0x210)] = 0;
  v8 = *((*v2 & *v0) + 0x218);
  v9 = *((v3 & v1) + 0x1D8);
  v10 = *((v3 & v1) + 0x1E0);
  v11 = *((v3 & v1) + 0x1E8);
  v12 = *((v3 & v1) + 0x1F0);
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  type metadata accessor for MapSelectionManagerBox();
  v13 = sub_213D9162C();
  (*(*(v13 - 8) + 56))(&v0[v8], 1, 1, v13);
  v0[*((*v2 & *v0) + 0x220)] = 0;
  v0[*((*v2 & *v0) + 0x228)] = 0;
  v14 = &v0[*((*v2 & *v0) + 0x230)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v0[*((*v2 & *v0) + 0x238)];
  *v15 = 0;
  *(v15 + 1) = 0;
  v0[*((*v2 & *v0) + 0x240)] = 6;
  v16 = *((*v2 & *v0) + 0x248);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  (*(*(v17 - 8) + 56))(&v0[v16], 1, 1, v17);
  *&v0[*((*v2 & *v0) + 0x250)] = MEMORY[0x277D84F90];
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MapBridgingViewCoordinator();
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_213D47A0C()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  MEMORY[0x21604FCE0](&v0[*(v2 + 0x1F8)]);
  sub_213CD8330(&v0[*((*v1 & *v0) + 0x200)], &qword_27C8EBAB8, &qword_213D98470);
  v3 = &v0[*((*v1 & *v0) + 0x208)];
  sub_213D49864(*v3, *(v3 + 1), *(v3 + 2));
  v4 = *((*v1 & *v0) + 0x218);
  v12 = *(v2 + 472);
  v13 = *(v2 + 488);
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v5 = sub_213D91C7C();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = &v0[*((*v1 & *v0) + 0x230)];
  v7 = v6[1];
  sub_213CCE520(*v6);
  v8 = &v0[*((*v1 & *v0) + 0x238)];
  v9 = v8[1];
  sub_213CCE520(*v8);
  sub_213CD8330(&v0[*((*v1 & *v0) + 0x248)], &qword_27C8EBAB0, &qword_213D98468);
  v10 = *&v0[*((*v1 & *v0) + 0x250)];
}

id sub_213D47C18()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x1E8);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MapBridgingViewCoordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc, v2, v3);
}

uint64_t sub_213D47C9C(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *a1;
  MEMORY[0x21604FCE0](&a1[*(v3 + 0x1F8)]);
  sub_213CD8330(&a1[*((*v2 & *a1) + 0x200)], &qword_27C8EBAB8, &qword_213D98470);
  v4 = &a1[*((*v2 & *a1) + 0x208)];
  sub_213D49864(*v4, *(v4 + 1), *(v4 + 2));
  v5 = *((*v2 & *a1) + 0x218);
  v13 = *(v3 + 472);
  v14 = *(v3 + 488);
  type metadata accessor for MapSelectionManagerBox();
  sub_213D9162C();
  v6 = sub_213D91C7C();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = &a1[*((*v2 & *a1) + 0x230)];
  v8 = v7[1];
  sub_213CCE520(*v7);
  v9 = &a1[*((*v2 & *a1) + 0x238)];
  v10 = v9[1];
  sub_213CCE520(*v9);
  sub_213CD8330(&a1[*((*v2 & *a1) + 0x248)], &qword_27C8EBAB0, &qword_213D98468);
  v11 = *&a1[*((*v2 & *a1) + 0x250)];
}

void sub_213D47EC4(uint64_t a1)
{
  sub_213D4C63C(319, &qword_27C8EBA50, &type metadata for MapCameraPosition, MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v8 = *(a1 + 16);
      v9 = *(a1 + 40);
      type metadata accessor for MapSelectionManagerBox();
      sub_213D9162C();
      sub_213D91C7C();
      if (v4 <= 0x3F)
      {
        sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          v6 = *(a1 + 32);
          swift_checkMetadataState();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213D48030(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = *(a3[3] - 8);
  v7 = *(a3[4] - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v12 = v6 + 80;
  v10 = *(v6 + 80);
  v11 = *(v12 + 4);
  v13 = *(*(a3[3] - 8) + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v14 = *(v4 + 80);
  if (!v11)
  {
    ++v13;
  }

  if (v5 <= v13)
  {
    v5 = v13;
  }

  v15 = *(v7 + 80);
  if (v5 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (v10 | v14) & 0xF8 | 7u;
  v18 = v16 + ((v17 + 16) & ~v17) + 1;
  v19 = v15 + 9;
  v20 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_35;
  }

  v21 = ((v19 + ((v18 + ((v17 + 104) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(a3[4] - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 < 2)
    {
LABEL_35:
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v7 + 48))((v19 + ((v18 + ((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v17 + 80) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
      }

      v27 = *(a1 + 1);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_35;
  }

LABEL_24:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return v9 + (v21 | v26) + 1;
}

void sub_213D482BC(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 64);
  v8 = *(a4[3] - 8);
  v9 = *(a4[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (!*(v6 + 84))
  {
    ++v7;
  }

  v12 = (*(v8 + 80) | *(v6 + 80)) & 0xF8 | 7u;
  if (*(v8 + 84))
  {
    v13 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v13 = *(*(a4[3] - 8) + 64) + 1;
  }

  if (v7 > v13)
  {
    v13 = v7;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v14 = v13 + ((v12 + 16) & ~v12) + 1;
  v15 = *(v9 + 80);
  v16 = ((v15 + 9 + ((v14 + ((v12 + 104) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(a4[4] - 8) + 64);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v11 < a2)
  {
    v20 = ~v11 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_55:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if ((v10 & 0x80000000) != 0)
  {
    v25 = *(v9 + 56);

    v25((v15 + 9 + ((v14 + ((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v12 + 80) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_213D48710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_213D90C0C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_213CE2C28(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_213D91BDC();
    v22 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_213D48988@<X0>(void *a1@<X8>)
{
  result = sub_213D90AEC();
  *a1 = v3;
  return result;
}

uint64_t sub_213D489DC(uint64_t result, void *a2)
{
  v11 = 1;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v10 = 1;
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 48);
    do
    {
      if (*(v4 - 16) == 1)
      {
        v6 = *(v4 - 1);
        v5 = *v4;

        sub_213CFA348(a2, v8, v7);
        v6(v7);
      }

      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_213D48A94@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v24[1] = a3;
  v25 = a2;
  v24[0] = a1;
  v26 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBEF8, &qword_213D98B58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = *(a4 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  v19 = sub_213D905CC();
  v21 = *(v19 - 8);
  result = v19 - 8;
  if (*(v21 + 64) == v8)
  {
    (*(v7 + 16))(v10, v24[0], v6);
    v25(v10);
    (*(v7 + 8))(v10, v6);
    v22 = v11[2];
    v22(v18, v15, a4);
    v23 = v11[1];
    v23(v15, a4);
    v22(v26, v18, a4);
    return (v23)(v18, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_213D48CE4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB70, &qword_213D985E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_213D48E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v16(v13, v15);
  if (v8)
  {
    return (*(v11 + 32))(a8, v15, a5);
  }

  return result;
}

void *sub_213D48EFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_213D49050@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 56);
    v7 = type metadata accessor for UserAnnotationViewModel(0);
    return sub_213D4CAEC(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for UserAnnotationViewModel);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_213D49164(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_213D491B8()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = *(v0 + qword_27C8EB420 + 16);
    if (*(v3 + 16))
    {
      v4 = v2;
      swift_unknownObjectRetain();

      v5 = sub_213CE23A4(v4);
      if (v6)
      {
        v7 = (*(v3 + 56) + 96 * v5);
        v8 = v7[1];
        v60 = *v7;
        v61 = v8;
        v9 = v7[5];
        v11 = v7[2];
        v10 = v7[3];
        v64 = v7[4];
        v65 = v9;
        v62 = v11;
        v63 = v10;
        sub_213D1E6AC(&v60, &v52);

        v12 = 0x277CD4DF8;
        if (!v65)
        {
          v12 = 0x277CD4F30;
        }

        v13 = [objc_allocWithZone(*v12) initWithPolyline_];
        v54 = v62;
        v55 = v63;
        v56 = v64;
        v57 = v65;
        v52 = v60;
        v53 = v61;
        v14 = v13;
        sub_213D28034(v14);

        swift_unknownObjectRelease();
        sub_213D1E764(&v60);
        return v14;
      }

      swift_unknownObjectRelease();
    }
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = *(v1 + qword_27C8EB428 + 16);
    if (*(v16 + 16))
    {
      v17 = v15;
      swift_unknownObjectRetain();

      v18 = sub_213CE2354(v17);
      if (v19)
      {
        v20 = *(v16 + 56) + 120 * v18;
        v22 = *(v20 + 32);
        v21 = *(v20 + 48);
        v23 = *(v20 + 16);
        v60 = *v20;
        v61 = v23;
        v62 = v22;
        v63 = v21;
        v24 = *(v20 + 64);
        v25 = *(v20 + 80);
        v26 = *(v20 + 96);
        *&v67 = *(v20 + 112);
        v65 = v25;
        v66 = v26;
        v64 = v24;
        sub_213D1E518(&v60, &v52);

        v56 = v64;
        v57 = v65;
        v58 = v66;
        v59 = v67;
        v52 = v60;
        v53 = v61;
        v54 = v62;
        v55 = v63;
        v14 = sub_213D28658(v17);
        swift_unknownObjectRelease();
        sub_213D1E4C4(&v60);
        return v14;
      }

      swift_unknownObjectRelease();
    }
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = *(v1 + qword_27C8EB430 + 16);
    if (*(v28 + 16))
    {
      v29 = v27;
      swift_unknownObjectRetain();

      v30 = sub_213CE2258(v29);
      if (v31)
      {
        v32 = *(v28 + 56) + 136 * v30;
        v60 = *v32;
        v33 = *(v32 + 48);
        v34 = *(v32 + 64);
        v35 = *(v32 + 32);
        v61 = *(v32 + 16);
        v62 = v35;
        v63 = v33;
        v64 = v34;
        v36 = *(v32 + 80);
        v37 = *(v32 + 96);
        v38 = *(v32 + 112);
        v68 = *(v32 + 128);
        v66 = v37;
        v67 = v38;
        v65 = v36;
        sub_213D1E18C(&v60, &v52);

        v14 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
        v39 = *(&v63 + 1);
        v40 = v64;
        v41 = DWORD1(v64);
        v42 = *(&v64 + 1);
        v43 = v65;

        [v14 setLineWidth_];
        [v14 setLineCap_];
        [v14 setLineJoin_];
        [v14 setMiterLimit_];
        if (*(v43 + 16))
        {

          sub_213D18410(v44);

          sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
          v45 = sub_213D919EC();
        }

        else
        {
          v45 = 0;
        }

        [v14 setLineDashPattern_];

        [v14 setLineDashPhase_];

        if (BYTE8(v66))
        {
          if (!*(v66 + 16))
          {
            sub_213D9149C();
LABEL_27:
            sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
            v49 = sub_213D91C3C();
            [v14 setStrokeColor_];

            if (BYTE8(v67))
            {
              if (!*(v67 + 16))
              {
                sub_213D9149C();
                goto LABEL_31;
              }

              v50 = *(v67 + 32);
            }

LABEL_31:
            v51 = sub_213D91C3C();
            [v14 setFillColor_];
            swift_unknownObjectRelease();
            sub_213D1E108(&v60);

            return v14;
          }

          v48 = *(v66 + 32);
        }

        goto LABEL_27;
      }

      swift_unknownObjectRelease();
    }
  }

  v46 = objc_allocWithZone(MEMORY[0x277CD4EE8]);

  return [v46 init];
}

uint64_t sub_213D49738()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_213D497CC(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  if (a3)
  {
    return a4();
  }

  else
  {
  }
}

void sub_213D497DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_213D47560(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_213D49818(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {

    sub_213D1DFC0(a3);
  }
}

void sub_213D49864(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {

    sub_213D1E068(a3);
  }
}

uint64_t sub_213D498B4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_213D42348(v1);
  result = swift_beginAccess();
  *(v2 + 16) = 1;
  return result;
}

uint64_t sub_213D49914@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_213CDDF14(a1);
}

uint64_t objectdestroy_107Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_118Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_213D49ACC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_213D1DFC0(result);
  }

  return result;
}

uint64_t sub_213D49AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D49B48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_213D42348(v1);
}

uint64_t sub_213D49B70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_213D49BD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_213D3C7A0(*(v0 + 48), (v0 + 56), *(v0 + 97));
}

void sub_213D49BE8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  sub_213D3C9E0(v0 + 48, *(v0 + 96), *(v0 + 104), *(v0 + 112));
}

uint64_t sub_213D49C44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  sub_213D3C1CC(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_213CD8330(v10, &qword_27C8EBAB0, &qword_213D98468);
    v16 = 0;
  }

  else
  {
    sub_213CED608(v10, v15, qword_27C8EB9C8, qword_213D98278);
    MEMORY[0x21604E7B0](v11);
    sub_213CD8330(v15, qword_27C8EB9C8, qword_213D98278);
    v17 = type metadata accessor for KeyframeAnimationState();
    v16 = (*(*(v17 - 8) + 48))(v6, 1, v17) != 1;
    sub_213CD8330(v6, &qword_27C8EBB58, &unk_213D985B0);
  }

  v18 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x250));
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v16;
  *(v19 + 32) = a1;

  v20 = a1;
  sub_213D905AC();
}

void sub_213D49F0C(uint64_t a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v4, v6);
  if (v4)
  {
    v12[1] = v5;
    v12[2] = v4;
    v12[3] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v12, v7);
    v8 = v12[0];
    if (a1 == 2)
    {
      if (v12[0] >> 61 == 4)
      {
        if (*((v12[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 1)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (a1 != 1)
      {
        if (!a1 && v12[0] >> 61 == 4)
        {
          goto LABEL_6;
        }

LABEL_12:
        sub_213D49864(v5, v4, v6);
LABEL_17:
        sub_213D1E068(v8);
        return;
      }

      if (v12[0] >> 61 == 4)
      {
        if ((*((v12[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10) & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_15:
        v10 = *((v12[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v11 = swift_allocObject();
        v11[2] = v5;
        v11[3] = v4;
        v11[4] = v6;
        v11[5] = v10;
        sub_213D49818(v5, v4, v6);
        sub_213D1DFC0(v10);
        goto LABEL_16;
      }
    }

LABEL_6:
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v4;
    v9[4] = v6;

    sub_213D1DFC0(v6);
LABEL_16:
    sub_213D905AC();
    sub_213D49864(v5, v4, v6);

    goto LABEL_17;
  }
}

void sub_213D4A1E8(void *a1)
{
  v2 = v1;
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  sub_213D49818(*v4, v6, v7);
  if (v6)
  {
    v13[1] = v5;
    v13[2] = v6;
    v13[3] = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v13, v8);
    v9 = v13[0];
    sub_213D1E068(v13[0]);
    if (v9 >> 61 != 4 || ([a1 hasUserLocation] & 1) == 0)
    {
      [a1 setUserTrackingMode_];
      v10 = swift_allocObject();
      v10[2] = v5;
      v10[3] = v6;
      v10[4] = v7;
      v10[5] = v2;
      v10[6] = a1;
      sub_213D49818(v5, v6, v7);
      v11 = v2;
      v12 = a1;
      sub_213D905AC();
    }

    sub_213D49864(v5, v6, v7);
  }
}

uint64_t sub_213D4A340()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1E8);
  v16[0] = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v16[1] = v1;
  v2 = type metadata accessor for MapSelectionManagerBox();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_213D9162C();
  v5 = sub_213D91C7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_213D3BE44(v9);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v14, v9, v4);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v16[0] = 0;
    MEMORY[0x21604E7B0](v4);
    sub_213D7C248(v16, v2);
    sub_213D915FC();
  }

  return (*(v10 + 8))(v14, v4);
}

uint64_t objectdestroy_95Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_213D1E068(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_156Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_213D1E068(v0[4]);
  sub_213D1E068(v0[5]);

  return swift_deallocObject();
}

uint64_t objectdestroy_104Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_213D1E068(v0[4]);

  return swift_deallocObject();
}

uint64_t sub_213D4A7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_213D4A838()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D4A87C(uint64_t a1)
{
  sub_213D4C63C(319, &qword_27C8EBC88, &type metadata for MapContentList, MEMORY[0x277CEF780]);
  if (v2 <= 0x3F)
  {
    sub_213D4C68C(319, &qword_27C8EBC90, &qword_27C8EBA88, &qword_213D98450, MEMORY[0x277CEF788]);
    if (v3 <= 0x3F)
    {
      sub_213D4C68C(319, &qword_27C8EBC98, qword_27C8EB6F0, &qword_213D98050, MEMORY[0x277CEF788]);
      if (v4 <= 0x3F)
      {
        sub_213D4C63C(319, &qword_27C8EBCA0, &type metadata for MapInteractionModes, MEMORY[0x277CEF788]);
        if (v5 <= 0x3F)
        {
          v9 = *(a1 + 16);
          v10 = *(a1 + 40);
          type metadata accessor for MapSelectionManagerBox();
          sub_213D9162C();
          sub_213D91C7C();
          sub_213D903FC();
          if (v6 <= 0x3F)
          {
            sub_213D4C68C(319, &qword_27C8EBCA8, &unk_27C8EBA90, &unk_213D98458, MEMORY[0x277CEF788]);
            if (v7 <= 0x3F)
            {
              type metadata accessor for _MapContentInputs(319);
              if (v8 <= 0x3F)
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

void sub_213D4AAB4()
{
  sub_213D4AC9C();
  if (v0 <= 0x3F)
  {
    sub_213D4C63C(319, &qword_27C8EBD40, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_213D4C68C(319, &qword_27C8EBD48, &qword_27C8EBD50, qword_213D98728, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_213D4C68C(319, qword_27C8EBD58, &qword_27C8EBB58, &unk_213D985B0, MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_213D4C63C(319, &qword_27C8EBA50, &type metadata for MapCameraPosition, MEMORY[0x277CE11F8]);
            if (v5 <= 0x3F)
            {
              sub_213CECECC();
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

void sub_213D4AC9C()
{
  if (!qword_27C8EBD38)
  {
    type metadata accessor for MapPreferenceWrapperHolder();
    sub_213D4C8F8(&qword_27C8EBB08, v0, type metadata accessor for MapPreferenceWrapperHolder);
    v1 = sub_213D907BC();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8EBD38);
    }
  }
}

void sub_213D4AD34(uint64_t a1)
{
  sub_213D4C63C(319, &qword_27C8EBA50, &type metadata for MapCameraPosition, MEMORY[0x277CE11F8]);
  if (v2 <= 0x3F)
  {
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v3 <= 0x3F)
    {
      v22 = *(a1 + 16);
      v23 = *(a1 + 32);
      type metadata accessor for MapSelectionManagerBox();
      sub_213D9162C();
      sub_213D91C7C();
      if (v4 <= 0x3F)
      {
        type metadata accessor for Subgraph(319);
        if (v5 <= 0x3F)
        {
          type metadata accessor for _MapContentInputs(319);
          if (v6 <= 0x3F)
          {
            sub_213D4C68C(319, &qword_27C8EBDE8, &qword_27C8EBB58, &unk_213D985B0, MEMORY[0x277CE11F8]);
            if (v7 <= 0x3F)
            {
              type metadata accessor for MapPreferenceWrapperHolder();
              sub_213D4C5D8(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8], MEMORY[0x277CDF468]);
              if (v8 <= 0x3F)
              {
                sub_213D4C5D8(319, &qword_27C8EC520, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
                if (v9 <= 0x3F)
                {
                  sub_213D4C5D8(319, &qword_27C8EB080, MEMORY[0x277CDDE20], MEMORY[0x277CDF468]);
                  if (v10 <= 0x3F)
                  {
                    sub_213D4C5D8(319, &qword_27C8EB088, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                    if (v11 <= 0x3F)
                    {
                      sub_213D4C63C(319, &qword_27C8EBE00, &type metadata for MapAttribution, MEMORY[0x277CDF468]);
                      if (v12 <= 0x3F)
                      {
                        sub_213D4C63C(319, &qword_27C8EB090, &type metadata for MapStyle, MEMORY[0x277CDF468]);
                        if (v13 <= 0x3F)
                        {
                          sub_213D4C5D8(319, &unk_27C8EBE10, type metadata accessor for MapControlsConfig, MEMORY[0x277CDF468]);
                          if (v14 <= 0x3F)
                          {
                            sub_213D4C68C(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750, MEMORY[0x277CDF468]);
                            if (v15 <= 0x3F)
                            {
                              sub_213D4C68C(319, &qword_27C8EBE28, &qword_27C8EBE30, &qword_213D98758, MEMORY[0x277CDF468]);
                              if (v16 <= 0x3F)
                              {
                                sub_213D4C68C(319, &qword_27C8EBE38, &qword_27C8EBE40, &qword_213D98760, MEMORY[0x277CDF468]);
                                if (v17 <= 0x3F)
                                {
                                  sub_213D4C68C(319, &qword_27C8EBE48, &qword_27C8EBE50, &qword_213D98768, MEMORY[0x277CDF468]);
                                  if (v18 <= 0x3F)
                                  {
                                    sub_213D4C68C(319, &qword_27C8EBE58, &unk_27C8EBE60, &qword_213D98770, MEMORY[0x277CDF468]);
                                    if (v19 <= 0x3F)
                                    {
                                      sub_213D4C63C(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                                      if (v20 <= 0x3F)
                                      {
                                        sub_213D4C68C(319, &qword_27C8EBE70, &qword_27C8EBE78, qword_213D98778, MEMORY[0x277CDF468]);
                                        if (v21 <= 0x3F)
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
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_213D4B294(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v86 = *(*(a3 + 16) - 8);
  v83 = *(v86 + 84);
  v81 = *(v86 + 64);
  v85 = *(*(a3 + 24) - 8);
  v80 = *(v85 + 84);
  v84 = *(v85 + 64);
  v77 = *(sub_213D90C5C() - 8);
  v88 = v77;
  v3 = *(v77 + 84);
  v82 = *(sub_213D9059C() - 8);
  v64 = v3;
  v61 = *(v82 + 84);
  if (v61 > v3)
  {
    v3 = *(v82 + 84);
  }

  v79 = *(sub_213D90F3C() - 8);
  if (*(v79 + 84) <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v79 + 84);
  }

  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930) - 8);
  v5 = *(v76 + 84);
  v60 = sub_213D9031C();
  v75 = *(v60 - 8);
  v6 = *(v75 + 84);
  v62 = v6;
  v63 = v5;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v89 = v6;
  v7 = v6 != 0;
  v8 = v6 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  v65 = v8;
  v66 = v4;
  if (v4 > v8)
  {
    v8 = v4;
  }

  v72 = v8;
  v74 = *(sub_213D90A6C() - 8);
  v9 = *(v74 + 64);
  v10 = 8;
  if (v9 > 8)
  {
    v10 = *(v74 + 64);
  }

  v71 = v10;
  v11 = *(sub_213D9051C() - 8);
  v12 = v11;
  v13 = *(v11 + 64);
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v11 + 64);
  }

  v70 = v14;
  v68 = *(sub_213D90C7C() - 8);
  v15 = *(v68 + 64);
  if (v15 <= 8)
  {
    v15 = 8;
  }

  v69 = v15;
  v67 = *(sub_213D9089C() - 8);
  v16 = v77;
  if (*(v67 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v67 + 64);
  }

  v78 = v17;
  if (v83)
  {
    v18 = v81;
  }

  else
  {
    v18 = v81 + 1;
  }

  v19 = *(v74 + 80);
  v20 = *(v12 + 80);
  v21 = ((v13 + ((v9 + v20 + ((v19 + 2) & ~v19)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v20 | 7;
  v23 = v19 | 7 | v20;
  v24 = v84;
  if (!v80)
  {
    v24 = v84 + 1;
  }

  if (v18 <= v24)
  {
    v18 = v24;
  }

  if (v18 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v18;
  }

  v26 = *(v82 + 80);
  v27 = *(v79 + 80);
  v28 = *(v16 + 64);
  v29 = *(v82 + 64);
  if (v89)
  {
    v30 = 5;
  }

  else
  {
    v30 = 6;
  }

  if (v13 + ((v20 + 2) & ~v20) + ((v21 + v20 + ((v23 + v13 + ((v20 + 16) & ~v20) + ((v21 + v22) & ~v22)) & ~v23)) & ~v20) + 6 <= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v13 + ((v20 + 2) & ~v20) + ((v21 + v20 + ((v23 + v13 + ((v20 + 16) & ~v20) + ((v21 + v22) & ~v22)) & ~v23)) & ~v20) + 6;
  }

  if (!a2)
  {
    return 0;
  }

  v32 = (*(v85 + 80) | *(v86 + 80)) & 0xF8 | 7u;
  v33 = v25 + ((v32 + 16) & ~v32) + 1;
  v34 = *(v88 + 80) & 0xFC | v26 | v27 | 3;
  v35 = v28 + v26;
  v36 = (v28 + v26) & ~v26;
  v37 = v29 + v27;
  v38 = (*(v79 + 64) + ((v29 + v27 + v36) & ~v27) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v75 + 80);
  v40 = v39 | *(v76 + 80);
  v41 = v40 | 7;
  v42 = *(v76 + 64) + v39;
  if (v72 >= a2)
  {
    goto LABEL_66;
  }

  v43 = *(v68 + 80) & 0xF8 | 7;
  v44 = (v70 + v43 + ((v71 + v22 + ((v19 + ((v30 + *(v75 + 64) + ((*(v75 + 64) + v39 + (v42 & ~v39)) & ~v39) - ((-17 - v40) | v40) - ((((((((-201 - v32) | v32) - v33 - 7) | 7) - v34 - 8) | v34) - (v38 + v41) - 4) | v41)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~(v19 | 7)) + 1) & ~v22) + 1) & ~v43;
  v45 = *(v67 + 80) & 0xF8 | 7;
  v46 = ((v31 + ((v23 + ((v78 + ((v69 + v45 + v44 + 1) & ~v45) + 24) & 0xFFFFFFFFFFFFFFF8) + 147) & ~v23) + 120) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v46 <= 3)
  {
    v47 = ((a2 - v72 + 255) >> 8) + 1;
  }

  else
  {
    v47 = 2;
  }

  if (v47 >= 0x10000)
  {
    v48 = 4;
  }

  else
  {
    v48 = 2;
  }

  if (v47 < 0x100)
  {
    v48 = 1;
  }

  if (v47 >= 2)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49 > 1)
  {
    if (v49 == 2)
    {
      v50 = *&a1[v46];
      if (!*&a1[v46])
      {
        goto LABEL_66;
      }
    }

    else
    {
      v50 = *&a1[v46];
      if (!v50)
      {
        goto LABEL_66;
      }
    }

LABEL_59:
    v51 = v46 > 3;
    if (v46 <= 3)
    {
      v52 = (v50 - 1) << (8 * v46);
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v59 = *a1;
    }

    else
    {
      v59 = *a1;
    }

    return v72 + (v59 | v52) + 1;
  }

  if (v49)
  {
    v50 = a1[v46];
    if (a1[v46])
    {
      goto LABEL_59;
    }
  }

LABEL_66:
  if ((v72 & 0x80000000) == 0)
  {
    v53 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v53) = -1;
    }

    return (v53 + 1);
  }

  v55 = (v34 + ((v33 + ((((((((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v32 + 80) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v34;
  if (v66 >= v65)
  {
    if (v64 == v66)
    {
      v58 = *(v88 + 48);
    }

    else
    {
      v55 = (v35 + v55) & ~v26;
      if (v61 == v66)
      {
        v58 = *(v82 + 48);
      }

      else
      {
        v58 = *(v79 + 48);
        v55 = (v37 + v55) & ~v27;
      }
    }

    return v58(v55);
  }

  else
  {
    if (!v89)
    {
      return 0;
    }

    v56 = (v40 + ((((v55 + v38 + 4 + v41) & ~v41) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v40;
    v57 = v63 >= v62 ? (*(v76 + 48))(v56) : (*(v75 + 48))((v42 + v56) & ~v39, v62, v60);
    v7 = v57 != 0;
    result = (v57 - 1);
    if (result == 0 || !v7)
    {
      return 0;
    }
  }

  return result;
}

void sub_213D4BB88(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v87 = *(*(a4 + 16) - 8);
  v80 = *(v87 + 84);
  v79 = *(v87 + 64);
  v84 = *(*(a4 + 24) - 8);
  v76 = *(v84 + 84);
  v75 = *(v84 + 64);
  v72 = *(sub_213D90C5C() - 8);
  v4 = *(v72 + 84);
  v86 = *(sub_213D9059C() - 8);
  v68 = v4;
  v67 = *(v86 + 84);
  if (v67 > v4)
  {
    v4 = *(v86 + 84);
  }

  v83 = *(sub_213D90F3C() - 8);
  if (*(v83 + 84) <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(v83 + 84);
  }

  v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930) - 8);
  v6 = *(v85 + 84);
  v82 = *(sub_213D9031C() - 8);
  v65 = *(v82 + 84);
  v66 = v6;
  if (v65 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v82 + 84);
  }

  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v71 = v5;
  v69 = v8;
  v70 = v9;
  if (v5 > v9)
  {
    v9 = v5;
  }

  v88 = v9;
  v10 = *(sub_213D90A6C() - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  v78 = v13;
  v14 = *(sub_213D9051C() - 8);
  v15 = v14;
  v16 = *(v14 + 64);
  if (v16 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v14 + 64);
  }

  v77 = v17;
  v73 = *(sub_213D90C7C() - 8);
  v18 = *(v73 + 64);
  if (v18 <= 8)
  {
    v18 = 8;
  }

  v74 = v18;
  v92 = 0;
  v19 = *(sub_213D9089C() - 8);
  if (*(v19 + 64) <= 8uLL)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v19 + 64);
  }

  v21 = v79;
  if (!v80)
  {
    v21 = v79 + 1;
  }

  v22 = v75;
  if (!v76)
  {
    v22 = v75 + 1;
  }

  if (v21 <= v22)
  {
    v21 = v22;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v81 = v7;
  v23 = v7 == 0;
  v24 = *(v11 + 80);
  v25 = *(v15 + 80);
  v27 = v25 | 7;
  v28 = (*(v84 + 80) | *(v87 + 80)) & 0xF8 | 7u;
  v29 = v21 + ((v28 + 16) & ~v28) + 1;
  v30 = *(v86 + 80);
  v31 = *(v83 + 80);
  v32 = *(v72 + 80) & 0xFC | v30 | v31 | 3;
  v33 = *(v72 + 64) + v30;
  v34 = *(v86 + 64) + v31;
  v35 = ((*(v83 + 64) + ((v34 + (v33 & ~v30)) & ~v31) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v36 = *(v82 + 80) | *(v85 + 80);
  v37 = *(v82 + 80);
  v38 = *(v85 + 64) + v37;
  v39 = ((*(v82 + 64) + v37 + (v38 & ~v37)) & ~v37) + *(v82 + 64);
  if (v23)
  {
    v40 = v39 + 1;
  }

  else
  {
    v40 = ((*(v82 + 64) + v37 + (v38 & ~v37)) & ~v37) + *(v82 + 64);
  }

  v41 = v40 + ((v36 + 16) & ~v36);
  v42 = v24 | 7 | v25;
  v43 = *(v73 + 80) & 0xF8 | 7;
  v44 = *(v19 + 80) & 0xF8 | 7;
  v45 = (v42 + ((v20 + ((v74 + v44 + ((v77 + v43 + ((v78 + v27 + ((v24 + ((v41 + (((v36 | 7) + v35 + ((v32 + 8 + ((v29 + ((v28 + 200) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v32)) & ~(v36 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~(v24 | 7)) + 1) & ~v27) + 1) & ~v43) + 1) & ~v44) + 24) & 0xFFFFFFFFFFFFFFF8) + 147) & ~v42;
  v26 = ((v16 + ((v12 + v25 + ((v24 + 2) & ~v24)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v46 = v16 + ((v25 + 2) & ~v25) + ((v26 + v25 + ((v42 + v16 + ((v25 + 16) & ~v25) + ((v26 + v27) & ~v27)) & ~v42)) & ~v25) + 6;
  if (v46 <= 8)
  {
    v46 = 8;
  }

  v47 = ((v46 + v45 + 120) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v88 < a3)
  {
    if (v47 <= 3)
    {
      v48 = ((a3 - v88 + 255) >> 8) + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v92 = v50;
  }

  if (v88 < a2)
  {
    v51 = ~v88 + a2;
    bzero(a1, v47);
    if (v47 <= 3)
    {
      v52 = (v51 >> 8) + 1;
    }

    else
    {
      v52 = 1;
    }

    if (v47 > 3)
    {
      *a1 = v51;
    }

    else
    {
      *a1 = v51;
    }

    if (v92 > 1)
    {
      if (v92 == 2)
      {
        *(a1 + v47) = v52;
      }

      else
      {
        *(a1 + v47) = v52;
      }
    }

    else if (v92)
    {
      *(a1 + v47) = v52;
    }

    return;
  }

  if (v92 > 1)
  {
    if (v92 != 2)
    {
      *(a1 + v47) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_71;
    }

    *(a1 + v47) = 0;
  }

  else if (v92)
  {
    *(a1 + v47) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_71;
  }

  if (!a2)
  {
    return;
  }

LABEL_71:
  if ((v88 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }

    return;
  }

  v53 = ((v32 + 8 + ((v29 + ((((((((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v28 + 80) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v32);
  if (v71 >= v70)
  {
    if (v71 < a2)
    {
      if (v35)
      {
        bzero(v53, v35);
        *v53 = ~v71 + a2;
      }

      return;
    }

    if (v68 == v71)
    {
      v61 = *(v72 + 56);
      v62 = (v32 + 8 + ((v29 + ((((((((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v28 + 80) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v32;
      v63 = a2;
    }

    else
    {
      v62 = (v53 + v33) & ~v30;
      if (v67 == v71)
      {
        v61 = *(v86 + 56);
      }

      else
      {
        v61 = *(v83 + 56);
        v62 = (v34 + v62) & ~v31;
      }

      v63 = a2;
    }

    goto LABEL_128;
  }

  v54 = (v53 + v35 + (v36 | 7)) & ~(v36 | 7);
  if (v70 < a2)
  {
    if (v41 <= 3)
    {
      v55 = ~(-1 << (8 * v41));
    }

    else
    {
      v55 = -1;
    }

    if (v41)
    {
      v56 = v55 & (~v70 + a2);
      if (v41 <= 3)
      {
        v57 = v40 + ((v36 + 16) & ~v36);
      }

      else
      {
        v57 = 4;
      }

      v58 = v54;
      v59 = v40 + ((v36 + 16) & ~v36);
LABEL_119:
      bzero(v58, v59);
      if (v57 > 2)
      {
        if (v57 == 3)
        {
          *v54 = v56;
          *(v54 + 2) = BYTE2(v56);
        }

        else
        {
          *v54 = v56;
        }
      }

      else if (v57 == 1)
      {
        *v54 = v56;
      }

      else
      {
        *v54 = v56;
      }

      return;
    }

    return;
  }

  v54 = (v36 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v36;
  if (v69 >= a2)
  {
    if (a2 >= v81)
    {
      if (v39 <= 3)
      {
        v64 = ~(-1 << (8 * v39));
      }

      else
      {
        v64 = -1;
      }

      if (v39)
      {
        v56 = v64 & (a2 - v81);
        if (v39 <= 3)
        {
          v57 = v39;
        }

        else
        {
          v57 = 4;
        }

        v58 = v54;
        v59 = v39;
        goto LABEL_119;
      }

      return;
    }

    if (v66 >= v65)
    {
      v61 = *(v85 + 56);
      v63 = a2 + 1;
      v62 = v54;
    }

    else
    {
      v61 = *(v82 + 56);
      v62 = (v38 + v54) & ~v37;
      v63 = a2 + 1;
    }

LABEL_128:

    v61(v62, v63);
    return;
  }

  if (v40 <= 3)
  {
    v60 = ~(-1 << (8 * v40));
  }

  else
  {
    v60 = -1;
  }

  if (v40)
  {
    v56 = v60 & (~v69 + a2);
    if (v40 <= 3)
    {
      v57 = v40;
    }

    else
    {
      v57 = 4;
    }

    v58 = v54;
    v59 = v40;
    goto LABEL_119;
  }
}

void sub_213D4C5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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