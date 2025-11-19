uint64_t storeEnumTagSinglePayload for ArgumentDefinition.ParsingStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_241010918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F720, &unk_2410492E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Option.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Option();
  sub_240FEDBC4(a1, v7);
  WitnessTable = swift_getWitnessTable();
  sub_24102B164(v7, v4, WitnessTable, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Option.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_241010C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for Option();
  return Option.wrappedValue.setter(v6, v8);
}

uint64_t Option.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Parsed();
  (*(*(v5 - 8) + 8))(v2, v5);
  (*(*(v4 - 8) + 32))(v2, a1, v4);

  return swift_storeEnumTagMultiPayload();
}

void (*Option.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Option.wrappedValue.getter(a2, v11);
  return sub_241010EA8;
}

void sub_241010EA8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    Option.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    Option.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t Option.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  (*(v12 + 16))(&v18 - v14, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0xD000000000000014;
  }

  else
  {
    (*(v4 + 32))(v10, v15, v3);
    (*(v4 + 16))(v8, v10, v3);
    v17 = sub_241046AF8();
    (*(v4 + 8))(v10, v3);
    return v17;
  }
}

uint64_t Option<A>.init(wrappedValue:name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v34 = a1;
  v36 = a8;
  v35 = type metadata accessor for Parsed();
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v35);
  v16 = (&v29 - v15);
  v17 = *a2;
  LOBYTE(a3) = *a3;
  v18 = *a5;
  v31 = a5[1];
  v32 = v18;
  v30 = *(a5 + 16);
  v19 = *(a6 - 8);
  v20 = (*(v19 + 80) + 90) & ~*(v19 + 80);
  v21 = (*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v24 = v33;
  v23 = v34;
  *(v22 + 16) = a6;
  *(v22 + 24) = v24;
  *(v22 + 32) = v17;
  v25 = *(a4 + 16);
  *(v22 + 40) = *a4;
  *(v22 + 56) = v25;
  *(v22 + 72) = *(a4 + 32);
  *(v22 + 88) = *(a4 + 48);
  *(v22 + 89) = a3;
  (*(v19 + 32))(v22 + v20, v23, a6);
  v26 = v22 + v21;
  v27 = v31;
  *v26 = v32;
  *(v26 + 8) = v27;
  *(v26 + 16) = v30;
  sub_24102B87C(sub_2410140A8, v22, v16);
  return (*(v13 + 32))(v36, v16, v35);
}

uint64_t sub_24101141C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11)
{
  v38 = a3;
  v39 = a8;
  v37 = a7;
  v40 = a6;
  v35 = a10;
  v15 = sub_241046E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Bare();
  *&v45[0] = a4;

  v20 = a1;
  v36 = sub_241018548(a1, a2);
  v21 = *(a5 + 16);
  v43[0] = *a5;
  v43[1] = v21;
  v43[2] = *(a5 + 32);
  v44 = *(a5 + 48);
  v22 = *(a11 - 8);
  (*(v22 + 16))(v18, v37, a11);
  (*(v22 + 56))(v18, 0, 1, a11);
  v23 = v39;
  v41[0] = v39;
  v41[1] = a9;
  LOBYTE(a1) = v35;
  v42 = v35;
  sub_241010918(a5, v45);
  sub_240FFBA9C(v23, a9, a1);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v20, a2, v38, v36, v43, v40, v18, v45, v41, v19, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v25 = swift_allocObject();
  v26 = v45[10];
  v25[11] = v45[9];
  v25[12] = v26;
  v25[13] = v45[11];
  v27 = v45[6];
  v25[7] = v45[5];
  v25[8] = v27;
  v28 = v45[8];
  v25[9] = v45[7];
  v25[10] = v28;
  v29 = v45[0];
  v30 = v45[1];
  v25[1] = xmmword_241047BF0;
  v25[2] = v29;
  v31 = v45[2];
  v25[3] = v30;
  v25[4] = v31;
  v32 = v45[4];
  v25[5] = v45[3];
  v25[6] = v32;
  return sub_240FF9C90(v25);
}

uint64_t Option<A>.init(wrappedValue:name:parsing:completion:help:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = a4;
  v27 = a1;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v11;
  v14 = *v13;
  v16 = *v15;
  v26 = *(v15 + 8);
  HIDWORD(v25) = *(v15 + 16);
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);
  v20 = *(v17 + 48);
  (*(v7 + 16))(v10, v22, v21);
  v37 = v12;
  v36 = v14;
  v23 = a2[1];
  v32[0] = *a2;
  v32[1] = v23;
  v33 = v18;
  v34 = v19;
  v35 = v20;
  v30[0] = v16;
  v30[1] = v26;
  v31 = BYTE4(v25);
  Option<A>.init(wrappedValue:name:parsing:help:completion:)(v10, &v37, &v36, v32, v30, a3, v29, v28);
  return (*(v7 + 8))(v27, a3);
}

uint64_t Option<A>.init(name:parsing:help:completion:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v25 = a7;
  v12 = type metadata accessor for Parsed();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v24 - v15);
  v17 = *a1;
  LOBYTE(a2) = *a2;
  v18 = *a4;
  v19 = a4[1];
  LOBYTE(a4) = *(a4 + 16);
  v20 = swift_allocObject();
  v21 = *(a3 + 16);
  *(v20 + 40) = *a3;
  v22 = v24;
  *(v20 + 16) = a5;
  *(v20 + 24) = v22;
  *(v20 + 32) = v17;
  *(v20 + 56) = v21;
  *(v20 + 72) = *(a3 + 32);
  *(v20 + 88) = *(a3 + 48);
  *(v20 + 89) = a2;
  *(v20 + 96) = v18;
  *(v20 + 104) = v19;
  *(v20 + 112) = a4;
  sub_24102B87C(sub_24101414C, v20, v16);
  return (*(v13 + 32))(v25, v16, v12);
}

uint64_t sub_241011958(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v36 = a7;
  v37 = a8;
  v38 = a6;
  v35 = a3;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v18 = type metadata accessor for Bare();
  *&v43[0] = a4;

  v19 = a1;
  v20 = sub_241018548(a1, a2);
  v21 = *(a5 + 16);
  v41[0] = *a5;
  v41[1] = v21;
  v41[2] = *(a5 + 32);
  v42 = *(a5 + 48);
  (*(*(a10 - 8) + 56))(v17, 1, 1, a10);
  v23 = v36;
  v22 = v37;
  v39[0] = v36;
  v39[1] = v37;
  v40 = a9;
  sub_241010918(a5, v43);
  sub_240FFBA9C(v23, v22, a9);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v19, a2, v35, v20, v41, v38, v17, v43, v39, v18, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v25 = swift_allocObject();
  v26 = v43[10];
  v25[11] = v43[9];
  v25[12] = v26;
  v25[13] = v43[11];
  v27 = v43[6];
  v25[7] = v43[5];
  v25[8] = v27;
  v28 = v43[8];
  v25[9] = v43[7];
  v25[10] = v28;
  v29 = v43[0];
  v30 = v43[1];
  v25[1] = xmmword_241047BF0;
  v25[2] = v29;
  v31 = v43[2];
  v25[3] = v30;
  v25[4] = v31;
  v32 = v43[4];
  v25[5] = v43[3];
  v25[6] = v32;
  return sub_240FF9C90(v25);
}

uint64_t Option.init(wrappedValue:name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v34 = a1;
  v35 = a7;
  v33 = a6;
  v37 = a9;
  v36 = type metadata accessor for Parsed();
  v14 = *(v36 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v36);
  v17 = (&v30 - v16);
  v18 = *a2;
  LOBYTE(a3) = *a3;
  v19 = *a5;
  v31 = a5[1];
  v32 = v19;
  HIDWORD(v30) = *(a5 + 16);
  v20 = *(a8 - 8);
  v21 = (*(v20 + 80) + 104) & ~*(v20 + 80);
  v22 = (*(v20 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a8;
  *(v23 + 24) = v18;
  v24 = *(a4 + 16);
  *(v23 + 32) = *a4;
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a4 + 32);
  *(v23 + 80) = *(a4 + 48);
  *(v23 + 81) = a3;
  v25 = v34;
  v26 = v35;
  *(v23 + 88) = v33;
  *(v23 + 96) = v26;
  (*(v20 + 32))(v23 + v21, v25, a8);
  v27 = v23 + v22;
  v28 = v31;
  *v27 = v32;
  *(v27 + 8) = v28;
  *(v27 + 16) = BYTE4(v30);
  sub_24102B87C(sub_241014164, v23, v17);
  return (*(v14 + 32))(v37, v17, v36);
}

uint64_t sub_241011D84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13)
{
  v42 = a3;
  v43 = a8;
  v45 = a7;
  v44 = a6;
  v40 = a12;
  v39 = a11;
  v38 = a9;
  v17 = sub_241046E58();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v37 - v19;
  v21 = type metadata accessor for Bare();
  *&v50[0] = a4;

  v22 = a1;
  v41 = sub_241018548(a1, a2);
  v23 = *(a5 + 16);
  v48[0] = *a5;
  v48[1] = v23;
  v48[2] = *(a5 + 32);
  v49 = *(a5 + 48);
  v24 = *(a13 - 8);
  (*(v24 + 16))(v20, v38, a13);
  (*(v24 + 56))(v20, 0, 1, a13);
  v25 = v39;
  v46[0] = a10;
  v46[1] = v39;
  LOBYTE(v24) = v40;
  v47 = v40;
  sub_241010918(a5, v50);
  sub_240FFBA9C(a10, v25, v24);
  v26 = v43;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v22, a2, v42, v41, v48, v44, v45, v50, v26, v20, v46, v21, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v28 = swift_allocObject();
  v29 = v50[10];
  v28[11] = v50[9];
  v28[12] = v29;
  v28[13] = v50[11];
  v30 = v50[6];
  v28[7] = v50[5];
  v28[8] = v30;
  v31 = v50[8];
  v28[9] = v50[7];
  v28[10] = v31;
  v32 = v50[0];
  v33 = v50[1];
  v28[1] = xmmword_241047BF0;
  v28[2] = v32;
  v34 = v50[2];
  v28[3] = v33;
  v28[4] = v34;
  v35 = v50[4];
  v28[5] = v50[3];
  v28[6] = v35;
  return sub_240FF9C90(v28);
}

uint64_t Option.init(name:parsing:help:completion:transform:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a5;
  v27 = a6;
  v28 = a8;
  v13 = type metadata accessor for Parsed();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v25 - v16);
  v18 = *a1;
  LOBYTE(a2) = *a2;
  v19 = *a4;
  v20 = a4[1];
  LOBYTE(a4) = *(a4 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = v18;
  v22 = *(a3 + 16);
  *(v21 + 32) = *a3;
  *(v21 + 48) = v22;
  *(v21 + 64) = *(a3 + 32);
  *(v21 + 80) = *(a3 + 48);
  *(v21 + 81) = a2;
  v23 = v27;
  *(v21 + 88) = v26;
  *(v21 + 96) = v23;
  *(v21 + 104) = v19;
  *(v21 + 112) = v20;
  *(v21 + 120) = a4;
  sub_24102B87C(sub_241014210, v21, v17);
  return (*(v14 + 32))(v28, v17, v13);
}

uint64_t sub_241012170(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v39 = a3;
  v40 = a8;
  v42 = a7;
  v41 = a6;
  v38 = a1;
  v37 = a11;
  v36 = a10;
  v16 = sub_241046E58();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v36 - v18;
  v20 = type metadata accessor for Bare();
  *&v47[0] = a4;

  v21 = sub_241018548(a1, a2);
  v22 = *(a5 + 16);
  v45[0] = *a5;
  v45[1] = v22;
  v45[2] = *(a5 + 32);
  v46 = *(a5 + 48);
  (*(*(a12 - 8) + 56))(v19, 1, 1, a12);
  v23 = v36;
  v43[0] = a9;
  v43[1] = v36;
  v24 = v37;
  v44 = v37;
  sub_241010918(a5, v47);
  sub_240FFBA9C(a9, v23, v24);
  v25 = v40;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v38, a2, v39, v21, v45, v41, v42, v47, v25, v19, v43, v20, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v27 = swift_allocObject();
  v28 = v47[10];
  v27[11] = v47[9];
  v27[12] = v28;
  v27[13] = v47[11];
  v29 = v47[6];
  v27[7] = v47[5];
  v27[8] = v29;
  v30 = v47[8];
  v27[9] = v47[7];
  v27[10] = v30;
  v31 = v47[0];
  v32 = v47[1];
  v27[1] = xmmword_241047BF0;
  v27[2] = v31;
  v33 = v47[2];
  v27[3] = v32;
  v27[4] = v33;
  v34 = v47[4];
  v27[5] = v47[3];
  v27[6] = v34;
  return sub_240FF9C90(v27);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a7;
  v37 = a1;
  v39 = a8;
  v13 = sub_241046E58();
  v38 = type metadata accessor for Parsed();
  v14 = *(v38 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v38);
  v17 = (&v31 - v16);
  v18 = *a2;
  v19 = *a3;
  v20 = *a5;
  v34 = a5[1];
  v35 = v20;
  LODWORD(v16) = *(a5 + 16);
  v32 = v19;
  v33 = v16;
  v21 = *(v13 - 8);
  v22 = (*(v21 + 80) + 90) & ~*(v21 + 80);
  v23 = (*(v21 + 64) + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v26 = v36;
  v25 = v37;
  *(v24 + 16) = a6;
  *(v24 + 24) = v26;
  *(v24 + 32) = v18;
  v27 = *(a4 + 16);
  *(v24 + 40) = *a4;
  *(v24 + 56) = v27;
  *(v24 + 72) = *(a4 + 32);
  *(v24 + 88) = *(a4 + 48);
  *(v24 + 89) = v32;
  (*(v21 + 32))(v24 + v22, v25, v13);
  v28 = v24 + v23;
  v29 = v34;
  *v28 = v35;
  *(v28 + 8) = v29;
  *(v28 + 16) = v33;
  sub_24102B87C(sub_24101426C, v24, v17);
  return (*(v14 + 32))(v39, v17, v38);
}

uint64_t sub_2410125E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v34 = a3;
  v35 = a8;
  v32 = a1;
  v33 = a7;
  v36 = a6;
  v13 = sub_241046E58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  *&v41[0] = a4;

  v18 = v32;
  v19 = sub_241018548(v32, a2);
  v20 = *(a5 + 16);
  v39[0] = *a5;
  v39[1] = v20;
  v39[2] = *(a5 + 32);
  v40 = *(a5 + 48);
  (*(v14 + 16))(v17, v33, v13);
  v21 = v35;
  v37[0] = v35;
  v37[1] = a9;
  v38 = a10;
  sub_241010918(a5, v41);
  sub_240FFBA9C(v21, a9, a10);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v18, a2, v34, v19, v39, v36, v17, v41, v37, v13, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v23 = swift_allocObject();
  v24 = v41[10];
  v23[11] = v41[9];
  v23[12] = v24;
  v23[13] = v41[11];
  v25 = v41[6];
  v23[7] = v41[5];
  v23[8] = v25;
  v26 = v41[8];
  v23[9] = v41[7];
  v23[10] = v26;
  v27 = v41[0];
  v28 = v41[1];
  v23[1] = xmmword_241047BF0;
  v23[2] = v27;
  v29 = v41[2];
  v23[3] = v28;
  v23[4] = v29;
  v30 = v41[4];
  v23[5] = v41[3];
  v23[6] = v30;
  return sub_240FF9C90(v23);
}

uint64_t sub_24101283C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v28 = a8;
  v29 = a9;
  v25[1] = a7;
  v26 = a6;
  sub_241046E58();
  v27 = type metadata accessor for Parsed();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v27);
  v17 = (v25 - v16);
  v18 = *a1;
  LOBYTE(a2) = *a2;
  v20 = *a4;
  v19 = a4[1];
  LOBYTE(a4) = *(a4 + 16);
  v21 = swift_allocObject();
  v22 = *(a3 + 16);
  *(v21 + 40) = *a3;
  v23 = v26;
  *(v21 + 16) = a5;
  *(v21 + 24) = v23;
  *(v21 + 32) = v18;
  *(v21 + 56) = v22;
  *(v21 + 72) = *(a3 + 32);
  *(v21 + 88) = *(a3 + 48);
  *(v21 + 89) = a2;
  *(v21 + 96) = v20;
  *(v21 + 104) = v19;
  *(v21 + 112) = a4;
  sub_24102B87C(v28, v21, v17);
  return (*(v14 + 32))(v29, v17, v27);
}

uint64_t sub_2410129A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v34 = a7;
  v35 = a8;
  v37 = a6;
  v36 = a3;
  v14 = sub_241046E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  *&v42[0] = a4;

  v18 = a1;
  v19 = sub_241018548(a1, a2);
  v20 = *(a5 + 16);
  v40[0] = *a5;
  v40[1] = v20;
  v40[2] = *(a5 + 32);
  v41 = *(a5 + 48);
  (*(*(a10 - 8) + 56))(v17, 1, 1, a10);
  v22 = v34;
  v21 = v35;
  v38[0] = v34;
  v38[1] = v35;
  v39 = a9;
  sub_241010918(a5, v42);
  sub_240FFBA9C(v22, v21, a9);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(v18, a2, v36, v19, v40, v37, v17, v42, v38, v14, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v24 = swift_allocObject();
  v25 = v42[10];
  v24[11] = v42[9];
  v24[12] = v25;
  v24[13] = v42[11];
  v26 = v42[6];
  v24[7] = v42[5];
  v24[8] = v26;
  v27 = v42[8];
  v24[9] = v42[7];
  v24[10] = v27;
  v28 = v42[0];
  v29 = v42[1];
  v24[1] = xmmword_241047BF0;
  v24[2] = v28;
  v30 = v42[2];
  v24[3] = v29;
  v24[4] = v30;
  v31 = v42[4];
  v24[5] = v42[3];
  v24[6] = v31;
  return sub_240FF9C90(v24);
}

uint64_t Option.init<A>(wrappedValue:name:parsing:help:completion:transform:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v37 = a1;
  v38 = a7;
  v36 = a6;
  v40 = a9;
  v14 = sub_241046E58();
  v39 = type metadata accessor for Parsed();
  v15 = *(v39 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v39);
  v18 = (&v32 - v17);
  v19 = *a2;
  v20 = *a3;
  v21 = *a5;
  v34 = a5[1];
  v35 = v21;
  LODWORD(v17) = *(a5 + 16);
  v32 = v20;
  v33 = v17;
  v22 = *(v14 - 8);
  v23 = (*(v22 + 80) + 104) & ~*(v22 + 80);
  v24 = (*(v22 + 64) + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = a8;
  *(v25 + 24) = v19;
  v26 = *(a4 + 16);
  *(v25 + 32) = *a4;
  *(v25 + 48) = v26;
  *(v25 + 64) = *(a4 + 32);
  *(v25 + 80) = *(a4 + 48);
  *(v25 + 81) = v32;
  v27 = v37;
  v28 = v38;
  *(v25 + 88) = v36;
  *(v25 + 96) = v28;
  (*(v22 + 32))(v25 + v23, v27, v14);
  v29 = v25 + v24;
  v30 = v34;
  *v29 = v35;
  *(v29 + 8) = v30;
  *(v29 + 16) = v33;
  sub_24102B87C(sub_241014394, v25, v18);
  return (*(v15 + 32))(v40, v18, v39);
}

uint64_t sub_241012E1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v41 = a3;
  v42 = a8;
  v44 = a7;
  v43 = a6;
  v40 = a1;
  v39 = a12;
  v38 = a11;
  v37 = a9;
  v16 = sub_241046E58();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  *&v49[0] = a4;

  v21 = sub_241018548(a1, a2);
  v22 = *(a5 + 16);
  v47[0] = *a5;
  v47[1] = v22;
  v47[2] = *(a5 + 32);
  v48 = *(a5 + 48);
  (*(v17 + 16))(v20, v37, v16);
  v23 = v38;
  v45[0] = a10;
  v45[1] = v38;
  v24 = v39;
  v46 = v39;
  sub_241010918(a5, v49);
  sub_240FFBA9C(a10, v23, v24);
  v25 = v42;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v40, a2, v41, v21, v47, v43, v44, v49, v25, v20, v45, v16, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v27 = swift_allocObject();
  v28 = v49[10];
  v27[11] = v49[9];
  v27[12] = v28;
  v27[13] = v49[11];
  v29 = v49[6];
  v27[7] = v49[5];
  v27[8] = v29;
  v30 = v49[8];
  v27[9] = v49[7];
  v27[10] = v30;
  v31 = v49[0];
  v32 = v49[1];
  v27[1] = xmmword_241047BF0;
  v27[2] = v31;
  v33 = v49[2];
  v27[3] = v32;
  v27[4] = v33;
  v34 = v49[4];
  v27[5] = v49[3];
  v27[6] = v34;
  return sub_240FF9C90(v27);
}

uint64_t sub_2410130AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v26 = a8;
  v30 = a6;
  v31 = a9;
  v28 = a5;
  v29 = a10;
  sub_241046E58();
  v27 = type metadata accessor for Parsed();
  v15 = *(v27 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v27);
  v18 = (&v26 - v17);
  v19 = *a1;
  LOBYTE(a2) = *a2;
  v21 = *a4;
  v20 = a4[1];
  LOBYTE(a4) = *(a4 + 16);
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = v19;
  v23 = *(a3 + 16);
  *(v22 + 32) = *a3;
  *(v22 + 48) = v23;
  *(v22 + 64) = *(a3 + 32);
  *(v22 + 80) = *(a3 + 48);
  *(v22 + 81) = a2;
  v24 = v30;
  *(v22 + 88) = v28;
  *(v22 + 96) = v24;
  *(v22 + 104) = v21;
  *(v22 + 112) = v20;
  *(v22 + 120) = a4;
  sub_24102B87C(v29, v22, v18);
  return (*(v15 + 32))(v31, v18, v27);
}

uint64_t sub_241013220(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v37 = a3;
  v38 = a8;
  v40 = a7;
  v39 = a6;
  v35 = a1;
  v36 = a11;
  v15 = sub_241046E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  *&v45[0] = a4;

  v19 = v35;
  v20 = sub_241018548(v35, a2);
  v21 = *(a5 + 16);
  v43[0] = *a5;
  v43[1] = v21;
  v43[2] = *(a5 + 32);
  v44 = *(a5 + 48);
  (*(*(a12 - 8) + 56))(v18, 1, 1, a12);
  v41[0] = a9;
  v41[1] = a10;
  v22 = v36;
  v42 = v36;
  sub_241010918(a5, v45);
  sub_240FFBA9C(a9, a10, v22);
  v23 = v38;

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(v19, a2, v37, v20, v43, v39, v40, v45, v23, v18, v41, v15, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v25 = swift_allocObject();
  v26 = v45[10];
  v25[11] = v45[9];
  v25[12] = v26;
  v25[13] = v45[11];
  v27 = v45[6];
  v25[7] = v45[5];
  v25[8] = v27;
  v28 = v45[8];
  v25[9] = v45[7];
  v25[10] = v28;
  v29 = v45[0];
  v30 = v45[1];
  v25[1] = xmmword_241047BF0;
  v25[2] = v29;
  v31 = v45[2];
  v25[3] = v30;
  v25[4] = v31;
  v32 = v45[4];
  v25[5] = v45[3];
  v25[6] = v32;
  return sub_240FF9C90(v25);
}

double Option.init<A>(wrappedValue:name:parsing:help:completion:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *a5;
  v15 = a5[1];
  v16 = *(a5 + 16);
  v17 = swift_allocObject();
  v18 = *(a4 + 16);
  *(v17 + 40) = *a4;
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = v12;
  *(v17 + 56) = v18;
  *(v17 + 72) = *(a4 + 32);
  *(v17 + 88) = *(a4 + 48);
  *(v17 + 89) = v13;
  *(v17 + 96) = a1;
  *(v17 + 104) = v14;
  *(v17 + 112) = v15;
  *(v17 + 120) = v16;
  sub_241046DA8();
  sub_24102B87C(sub_24101447C, v17, &v25);
  v23 = v25;
  v24 = v26;
  v19 = type metadata accessor for Parsed();
  (*(*(v19 - 8) + 32))(&v27, &v23, v19);
  v20 = v28;
  result = *&v27;
  *a8 = v27;
  *(a8 + 16) = v20;
  return result;
}

uint64_t sub_2410135A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v17 = sub_241046DA8();
  *&v39[0] = a4;

  v18 = sub_241018548(a1, a2);
  v19 = *(a5 + 16);
  v37[0] = *a5;
  v37[1] = v19;
  v37[2] = *(a5 + 32);
  v38 = *(a5 + 48);
  v36 = a7;
  v34[0] = a8;
  v34[1] = a9;
  v35 = a10;
  sub_241010918(a5, v39);

  sub_240FFBA9C(a8, a9, a10);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(a1, a2, a3, v18, v37, a6, &v36, v39, v34, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v21 = swift_allocObject();
  v22 = v39[8];
  v23 = v39[10];
  v24 = v39[11];
  v21[11] = v39[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v39[4];
  v26 = v39[6];
  v27 = v39[7];
  v21[7] = v39[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v39[0];
  v29 = v39[1];
  v21[1] = xmmword_241047BF0;
  v21[2] = v28;
  v30 = v39[2];
  v31 = v39[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_240FF9C90(v21);
}

double Option.init<A>(name:parsing:help:completion:)@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v12 = *a2;
  v13 = *a4;
  v14 = a4[1];
  v15 = *(a4 + 16);
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  *(v16 + 40) = *a3;
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = v11;
  *(v16 + 56) = v17;
  *(v16 + 72) = *(a3 + 32);
  *(v16 + 88) = *(a3 + 48);
  *(v16 + 89) = v12;
  *(v16 + 96) = v13;
  *(v16 + 104) = v14;
  *(v16 + 112) = v15;
  sub_241046DA8();
  sub_24102B87C(sub_24101452C, v16, &v23);
  v21 = v23;
  v22 = v24;
  v18 = type metadata accessor for Parsed();
  (*(*(v18 - 8) + 32))(&v25, &v21, v18);
  v19 = v26;
  result = *&v25;
  *a7 = v25;
  *(a7 + 16) = v19;
  return result;
}

uint64_t sub_2410138AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v17 = sub_241046DA8();
  *&v38[0] = a4;

  v18 = sub_241018548(a1, a2);
  v19 = *(a5 + 16);
  v36[0] = *a5;
  v36[1] = v19;
  v36[2] = *(a5 + 32);
  v37 = *(a5 + 48);
  v35 = 0;
  v33[0] = a7;
  v33[1] = a8;
  v34 = a9;
  sub_241010918(a5, v38);
  sub_240FFBA9C(a7, a8, a9);
  WitnessTable = swift_getWitnessTable();
  sub_24102BF70(a1, a2, a3, v18, v36, a6, &v35, v38, v33, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v21 = swift_allocObject();
  v22 = v38[8];
  v23 = v38[10];
  v24 = v38[11];
  v21[11] = v38[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v38[4];
  v26 = v38[6];
  v27 = v38[7];
  v21[7] = v38[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v38[0];
  v29 = v38[1];
  v21[1] = xmmword_241047BF0;
  v21[2] = v28;
  v30 = v38[2];
  v31 = v38[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_240FF9C90(v21);
}

double Option.init<A>(wrappedValue:name:parsing:help:completion:transform:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a2;
  v14 = *a3;
  v16 = *a5;
  v15 = a5[1];
  v17 = *(a5 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a8;
  *(v18 + 24) = v13;
  v19 = *(a4 + 16);
  *(v18 + 32) = *a4;
  *(v18 + 48) = v19;
  *(v18 + 64) = *(a4 + 32);
  *(v18 + 80) = *(a4 + 48);
  *(v18 + 81) = v14;
  *(v18 + 88) = a6;
  *(v18 + 96) = a7;
  *(v18 + 104) = a1;
  *(v18 + 112) = v16;
  *(v18 + 120) = v15;
  *(v18 + 128) = v17;
  sub_241046DA8();
  sub_24102B87C(sub_24101458C, v18, &v27);
  v25 = v27;
  v26 = v28;
  v20 = type metadata accessor for Parsed();
  (*(*(v20 - 8) + 32))(&v29, &v25, v20);
  v21 = v30;
  result = *&v29;
  *a9 = v29;
  *(a9 + 16) = v21;
  return result;
}

uint64_t sub_241013BB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v16 = sub_241046DA8();
  *&v41[0] = a4;

  v17 = sub_241018548(a1, a2);
  v18 = *(a5 + 16);
  v39[0] = *a5;
  v39[1] = v18;
  v39[2] = *(a5 + 32);
  v40 = *(a5 + 48);
  v38 = a9;
  v36[0] = a10;
  v36[1] = a11;
  v37 = a12;
  sub_241010918(a5, v41);

  sub_240FFBA9C(a10, a11, a12);

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(a1, a2, a3, v17, v39, a6, a7, v41, a8, &v38, v36, v16, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v20 = swift_allocObject();
  v21 = v41[8];
  v22 = v41[10];
  v23 = v41[11];
  v20[11] = v41[9];
  v20[12] = v22;
  v20[13] = v23;
  v24 = v41[4];
  v25 = v41[6];
  v26 = v41[7];
  v20[7] = v41[5];
  v20[8] = v25;
  v20[9] = v26;
  v20[10] = v21;
  v27 = v41[0];
  v28 = v41[1];
  v20[1] = xmmword_241047BF0;
  v20[2] = v27;
  v29 = v41[2];
  v30 = v41[3];
  v20[3] = v28;
  v20[4] = v29;
  v20[5] = v30;
  v20[6] = v24;
  return sub_240FF9C90(v20);
}

double Option.init<A>(name:parsing:help:completion:transform:)@<D0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = *a1;
  v13 = *a2;
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 16);
  v17 = swift_allocObject();
  *(v17 + 16) = a7;
  *(v17 + 24) = v12;
  v18 = *(a3 + 16);
  *(v17 + 32) = *a3;
  *(v17 + 48) = v18;
  *(v17 + 64) = *(a3 + 32);
  *(v17 + 80) = *(a3 + 48);
  *(v17 + 81) = v13;
  *(v17 + 88) = a5;
  *(v17 + 96) = a6;
  *(v17 + 104) = v14;
  *(v17 + 112) = v15;
  *(v17 + 120) = v16;
  sub_241046DA8();
  sub_24102B87C(sub_241014648, v17, &v25);
  v23 = v25;
  v24 = v26;
  v19 = type metadata accessor for Parsed();
  (*(*(v19 - 8) + 32))(&v27, &v23, v19);
  v20 = v28;
  result = *&v27;
  *a8 = v27;
  *(a8 + 16) = v20;
  return result;
}

uint64_t sub_241013ED8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v17 = sub_241046DA8();
  *&v40[0] = a4;

  v18 = sub_241018548(a1, a2);
  v19 = *(a5 + 16);
  v38[0] = *a5;
  v38[1] = v19;
  v38[2] = *(a5 + 32);
  v39 = *(a5 + 48);
  v37 = 0;
  v35[0] = a9;
  v35[1] = a10;
  v36 = a11;
  sub_241010918(a5, v40);
  sub_240FFBA9C(a9, a10, a11);

  WitnessTable = swift_getWitnessTable();
  sub_24102C2B4(a1, a2, a3, v18, v38, a6, a7, v40, a8, &v37, v35, v17, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v21 = swift_allocObject();
  v22 = v40[8];
  v23 = v40[10];
  v24 = v40[11];
  v21[11] = v40[9];
  v21[12] = v23;
  v21[13] = v24;
  v25 = v40[4];
  v26 = v40[6];
  v27 = v40[7];
  v21[7] = v40[5];
  v21[8] = v26;
  v21[9] = v27;
  v21[10] = v22;
  v28 = v40[0];
  v29 = v40[1];
  v21[1] = xmmword_241047BF0;
  v21[2] = v28;
  v30 = v40[2];
  v31 = v40[3];
  v21[3] = v29;
  v21[4] = v30;
  v21[5] = v31;
  v21[6] = v25;
  return sub_240FF9C90(v21);
}

uint64_t sub_2410140A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 90) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v3 + 24);
  return sub_24101141C(a1, a2, a3, *(v3 + 32), v3 + 40, *(v3 + 89), v3 + v4, *v5, *(v5 + 8), *(v5 + 16), *(v3 + 16));
}

uint64_t sub_241014164(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 104) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_241011D84(a1, a2, a3, *(v3 + 24), v3 + 32, *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v4, *(v3 + v5), *(v3 + v5 + 8), *(v3 + v5 + 16), *(v3 + 16));
}

uint64_t sub_24101426C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(sub_241046E58() - 8);
  v10 = (*(v9 + 80) + 90) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2410125E8(a1, a2, a3, *(v3 + 32), v3 + 40, *(v3 + 89), v3 + v10, *v11, *(v11 + 8), *(v11 + 16));
}

uint64_t sub_241014394(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(sub_241046E58() - 8);
  v9 = (*(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_241012E1C(a1, a2, a3, *(v3 + 24), v3 + 32, *(v3 + 81), *(v3 + 88), *(v3 + 96), v3 + v9, *(v3 + v10), *(v3 + v10 + 8), *(v3 + v10 + 16));
}

uint64_t sub_24101447C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_2410135A8(a1, a2, a3, *(v3 + 32), v3 + 40, *(v3 + 89), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120));
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = *(v0 + 32);

  if (*(v0 + 48))
  {

    v2 = *(v0 + 64);

    v3 = *(v0 + 80);
  }

  v4 = *(v0 + 112);
  if (v4 != 255)
  {
    sub_240FFB9C4(*(v0 + 96), *(v0 + 104), v4);
  }

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t objectdestroy_8Tm_0()
{
  v1 = *(v0 + 24);

  if (*(v0 + 40))
  {

    v2 = *(v0 + 56);

    v3 = *(v0 + 72);
  }

  v4 = *(v0 + 96);

  v5 = *(v0 + 120);
  if (v5 != 255)
  {
    sub_240FFB9C4(*(v0 + 104), *(v0 + 112), v5);
  }

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_2410146AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2410146E8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_241014728()
{
  result = qword_27E51F728;
  if (!qword_27E51F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F728);
  }

  return result;
}

unint64_t sub_241014780()
{
  result = qword_27E51F730;
  if (!qword_27E51F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F730);
  }

  return result;
}

void static CompletionKind.default.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t static CompletionKind.list(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t static CompletionKind.file(extensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

double static CompletionKind.directory.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_241049500;
  *(a1 + 16) = 4;
  return result;
}

uint64_t static CompletionKind.shellCommand(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
}

uint64_t static CompletionKind.custom(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
}

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal14CompletionKindV0E0O(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_2410148C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_241014908(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_24101494C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OptionGroup.title.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t OptionGroup.title.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*OptionGroup.title.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_241014A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OptionGroup();
  *(a2 + v4[10]) = 0;
  v5 = (a2 + v4[11]);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = type metadata accessor for Parsed();
  result = (*(*(v6 - 8) + 32))(a2, a1, v6);
  *(a2 + v4[9]) = 0;
  return result;
}

uint64_t OptionGroup.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v45 = a4;
  v43 = a3;
  v44 = type metadata accessor for OptionGroup();
  v40 = *(v44 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v44);
  v41 = v37 - v9;
  v37[0] = type metadata accessor for Parsed();
  v10 = *(*(v37[0] - 8) + 64);
  MEMORY[0x28223BE20](v37[0]);
  v12 = v37 - v11;
  v13 = sub_241046E58();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v37 - v17;
  v42 = *(a2 - 8);
  v19 = *(v42 + 64);
  v20 = MEMORY[0x28223BE20](v16);
  v39 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v38 = v37 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v37 - v24;
  v63 = a1;
  sub_240FEDBC4(a1, v54);
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F738, &qword_241049690);
  if (swift_dynamicCast())
  {
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v62 = v53;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v58 = v49;
    sub_241039544(a2);
    if (!v4)
    {
      v33 = v42;
      (*(v42 + 56))(v18, 0, 1, a2);
      (*(v33 + 32))(v25, v18, a2);
      (*(v33 + 16))(v12, v25, a2);
      swift_storeEnumTagMultiPayload();
      v34 = v12;
      v29 = v43;
      sub_241014A28(v34, v45);
      (*(v33 + 8))(v25, a2);
      sub_2410153E0(&v55);
      v26 = v63;
      v27 = v44;
LABEL_10:
      v35 = v39;
      OptionGroup.wrappedValue.getter(v27, v39);
      (*(v29 + 24))(a2, v29);
      OptionGroup.wrappedValue.setter(v35, v27);
      return __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    MEMORY[0x245CD7E80](v4);
    (*(v42 + 56))(v18, 1, 1, a2);
    sub_2410153E0(&v55);
    (*(v14 + 8))(v18, v13);
    v5 = 0;
  }

  else
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    sub_241015150(&v46);
  }

  v26 = v63;
  sub_240FEDBC4(v63, &v55);
  v27 = v44;
  WitnessTable = swift_getWitnessTable();
  v29 = v43;
  v30 = *(v43 + 8);
  v31 = v41;
  sub_24102B944(&v55, v27, WitnessTable, v41);
  if (!v5)
  {
    (*(v40 + 32))(v45, v31, v27);
    sub_240FEDBC4(v26, v54);
    if (swift_dynamicCast())
    {
      v59 = v50;
      v60 = v51;
      v61 = v52;
      v62 = v53;
      v55 = v46;
      v56 = v47;
      v57 = v48;
      v58 = v49;
      v32 = v38;
      OptionGroup.wrappedValue.getter(v27, v38);
      sub_2410396D8(v32, a2, a2, v29);
      (*(v42 + 8))(v32, a2);
      sub_2410153E0(&v55);
    }

    else
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      sub_241015150(&v46);
    }

    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t sub_241015150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F740, &qword_241049698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OptionGroup.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t OptionGroup.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Parsed();
  (*(*(v5 - 8) + 8))(v2, v5);
  (*(*(v4 - 8) + 32))(v2, a1, v4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OptionGroup.init(title:visibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Parsed();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = (&v21 - v14);
  LOBYTE(a3) = *a3;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  v16[5] = a2;
  sub_24102B87C(sub_241015674, v16, v15);
  sub_241014A28(v15, a6);
  v17 = type metadata accessor for OptionGroup();
  *(a6 + *(v17 + 36)) = a3;
  v18 = (a6 + *(v17 + 44));
  v19 = v18[1];

  *v18 = a1;
  v18[1] = a2;
  return result;
}

uint64_t sub_241015558(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = 2;

  v14 = sub_240FDF86C(a6, a7, &v21, a1, a2, a3);
  v15 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v15 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_11;
    }

    for (i = *(v14 + 16); i; i = *(v14 + 16))
    {
      v17 = 0;
      v18 = (v14 + 152);
      while (v17 < i)
      {
        v19 = *v18;
        *(v18 - 1) = a4;
        *v18 = a5;

        ++v17;
        i = *(v14 + 16);
        v18 += 24;
        if (v17 >= i)
        {
          return v14;
        }
      }

      __break(1u);
LABEL_11:
      v14 = sub_24103F27C(v14);
    }
  }

  return v14;
}

uint64_t sub_241015680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = type metadata accessor for OptionGroup();
  return OptionGroup.wrappedValue.setter(v7, v9);
}

void (*OptionGroup.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  OptionGroup.wrappedValue.getter(a2, v11);
  return sub_241015860;
}

void sub_241015860(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    OptionGroup.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    OptionGroup.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_241015940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_241014A28(a1, a2);
}

unint64_t OptionGroup.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  (*(v12 + 16))(&v18 - v14, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0xD000000000000019;
  }

  else
  {
    (*(v4 + 32))(v10, v15, v3);
    (*(v4 + 16))(v8, v10, v3);
    v17 = sub_241046AF8();
    (*(v4 + 8))(v10, v3);
    return v17;
  }
}

uint64_t sub_241015C24(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_241015C68(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for Parsed();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

ArgumentParserInternal::CommandGroup __swiftcall CommandGroup.init(name:subcommands:)(Swift::String name, Swift::OpaquePointer subcommands)
{
  *v2 = name;
  *(v2 + 16) = subcommands;
  result.name = name;
  result.subcommands = subcommands;
  return result;
}

uint64_t CommandGroup.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_241015D4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_241015D94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t static CleanExit.helpRequest(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = swift_getDynamicType();
  v5 = a1[4];
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  return result;
}

uint64_t ValidationError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_241015E6C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_241015F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_241016244();
  v5 = sub_241016298();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

_DWORD *sub_241015F5C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_241015F78()
{
  v1 = *v0;
  sub_2410475A8();
  sub_2410475D8();
  return sub_2410475E8();
}

uint64_t sub_241015FEC()
{
  v1 = *v0;
  sub_2410475A8();
  sub_2410475D8();
  return sub_2410475E8();
}

uint64_t static CleanExit.helpRequest(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static CleanExit.message(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
}

uint64_t CleanExit.description.getter()
{
  if (!*(v0 + 16))
  {
    return 0x706C65682D2DLL;
  }

  if (*(v0 + 16) != 1)
  {
    return 0xD000000000000018;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

unint64_t sub_2410160D8()
{
  result = qword_27E51F748;
  if (!qword_27E51F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F748);
  }

  return result;
}

uint64_t sub_24101612C()
{
  if (!*(v0 + 16))
  {
    return 0x706C65682D2DLL;
  }

  if (*(v0 + 16) != 1)
  {
    return 0xD000000000000018;
  }

  v3 = v0;
  v2 = *v0;
  v1 = v3[1];

  return v2;
}

uint64_t getEnumTagSinglePayload for ExitCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExitCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_241016244()
{
  result = qword_27E51F750;
  if (!qword_27E51F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F750);
  }

  return result;
}

unint64_t sub_241016298()
{
  result = qword_27E51F758;
  if (!qword_27E51F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F758);
  }

  return result;
}

void static ArgumentHelp.private.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 2;
}

void __swiftcall ArgumentHelp.init(stringLiteral:)(ArgumentParserInternal::ArgumentHelp *__return_ptr retstr, Swift::String stringLiteral)
{
  retstr->discussion._countAndFlagsBits = 0;
  retstr->discussion._object = 0xE000000000000000;
  retstr->valueName.value._countAndFlagsBits = 0;
  retstr->valueName.value._object = 0;
  retstr->visibility.base = ArgumentParserInternal_ArgumentVisibility_Representation_default;
  retstr->abstract = stringLiteral;
}

uint64_t ArgumentHelp.abstract.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArgumentHelp.abstract.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArgumentHelp.discussion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ArgumentHelp.discussion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ArgumentHelp.valueName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ArgumentHelp.valueName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

_BYTE *(*ArgumentHelp.shouldDisplay.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 48) == 0;
  return sub_241016550;
}

void __swiftcall ArgumentHelp.init(_:discussion:valueName:shouldDisplay:)(ArgumentParserInternal::ArgumentHelp *__return_ptr retstr, Swift::String _, Swift::String discussion, Swift::String_optional valueName, Swift::Bool shouldDisplay)
{
  retstr->abstract = _;
  retstr->discussion = discussion;
  retstr->valueName = valueName;
  retstr->visibility.base = !shouldDisplay;
}

void static ArgumentHelp.hidden.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

unint64_t sub_2410165B8()
{
  result = qword_27E51F760;
  if (!qword_27E51F760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F760);
  }

  return result;
}

unint64_t sub_241016630()
{
  result = qword_27E51F768;
  if (!qword_27E51F768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F768);
  }

  return result;
}

unint64_t sub_241016694()
{
  result = qword_280CC1E60[0];
  if (!qword_280CC1E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CC1E60);
  }

  return result;
}

uint64_t sub_241016700(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_241016748(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ArgumentVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

unint64_t sub_241016858()
{
  result = qword_27E51F770;
  if (!qword_27E51F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HelpRequested(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HelpRequested(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_241016A10()
{
  result = qword_27E51F778;
  if (!qword_27E51F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F778);
  }

  return result;
}

uint64_t NameSpecification.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_240FE0C08(a1);

  *a2 = v3;
  return result;
}

double static NameSpecification.Element.short.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_241049500;
  *(a1 + 16) = 0x80;
  return result;
}

void static NameSpecification.Element.long.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x80;
}

uint64_t static NameSpecification.Element.customLong(_:withSingleDash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
}

uint64_t sub_241016B18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_241046C48();
    v22 = a1;

    v8 = sub_241046A38();
    v10 = v9;

    MEMORY[0x245CD70E0](v8, v10);

    v11 = sub_241039038(1uLL, a3, a4);
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = MEMORY[0x245CD7040](v11, v13, v15, v17);
    v20 = v19;

    MEMORY[0x245CD70E0](v18, v20);

    return v22;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_241016C4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_241047678();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a3;
  v44 = a4;
  v39 = 45;
  v40 = 0xE100000000000000;
  sub_240FE05E8();
  if (sub_241046F08())
  {
    goto LABEL_2;
  }

  v39 = 95;
  v40 = 0xE100000000000000;
  if (sub_241046F08())
  {
    v39 = a1;
    v40 = a2;

    v13 = 95;
    goto LABEL_5;
  }

  sub_241039468(a3, a4);
  if (!v15 || (v16 = sub_241046A48(), , (v16 & 1) == 0))
  {
LABEL_2:
    v39 = a1;
    v40 = a2;

    v13 = 45;
LABEL_5:
    MEMORY[0x245CD70E0](v13, 0xE100000000000000);
    MEMORY[0x245CD70E0](a3, a4);
    return v39;
  }

  v17 = HIBYTE(a4) & 0xF;
  v39 = a3;
  v40 = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v41 = 0;
  v42 = v17;

  result = sub_241046BD8();
  if (!v18)
  {
LABEL_52:

    goto LABEL_2;
  }

  v19 = result;
  v20 = v18;
  v38 = (v9 + 8);
  while (1)
  {
    v21 = (v20 & 0x2000000000000000) != 0 ? HIBYTE(v20) & 0xF : v19 & 0xFFFFFFFFFFFFLL;
    if (!v21)
    {
      break;
    }

    if ((v20 & 0x1000000000000000) != 0)
    {
      v26 = sub_241046B28();
    }

    else
    {
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = v19;
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          v22 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22 = sub_2410470B8();
        }

        v23 = *v22;
      }

      v24 = v23;
      v25 = (__clz(~v23) - 24) << 16;
      if (v24 < 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = 65541;
      }
    }

    v27 = 4 * v21;
    if (4 * v21 == v26 >> 14)
    {
      result = sub_241017D28(v19, v20);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_54;
      }

      sub_241047688();
      v28 = sub_241047658();
      (*v38)(v12, v8);
      if (v28)
      {
        goto LABEL_50;
      }
    }

    if (sub_241046A68())
    {
      if ((v20 & 0x1000000000000000) != 0)
      {
        v31 = sub_241046B28();
      }

      else
      {
        if ((v20 & 0x2000000000000000) != 0)
        {
          v30 = v19;
        }

        else
        {
          if ((v19 & 0x1000000000000000) != 0)
          {
            v29 = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v29 = sub_2410470B8();
          }

          v30 = *v29;
        }

        v32 = v30;
        v33 = (__clz(~v30) - 24) << 16;
        if (v32 < 0)
        {
          v31 = v33;
        }

        else
        {
          v31 = 65541;
        }
      }

      if (v27 == v31 >> 14)
      {
        result = sub_241017D28(v19, v20);
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_55;
        }

        sub_241047688();
        v34 = sub_241047668();
        (*v38)(v12, v8);
        if (v34)
        {
          goto LABEL_50;
        }
      }

      if ((sub_241046A68() & 1) == 0)
      {
LABEL_50:

LABEL_51:

        return sub_241016B18(a1, a2, a3, a4);
      }

      v35 = sub_241046A58();

      if ((v35 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else
    {
    }

    result = sub_241046BD8();
    v19 = result;
    v20 = v36;
    if (!v36)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_241017070(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (!(a4 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (a4 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (a3 | a2 || a4 != 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x245CD7AE0](v5);
}

uint64_t sub_241017118(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_2410475A8();
  if (!(a3 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (a3 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    return sub_2410475E8();
  }

  if (a2 | a1 || a3 != 128)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x245CD7AE0](v6);
  return sub_2410475E8();
}

uint64_t static NameSpecification.Element.customShort(_:allowingJoined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 | 0x40;
}

uint64_t NameSpecification.Element.hash(into:)()
{
  v1 = *(v0 + 16);
  if (!(v1 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (v1 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
    return sub_2410475C8();
  }

  if (*v0 == 0 && v1 == 128)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  return MEMORY[0x245CD7AE0](v3);
}

uint64_t NameSpecification.Element.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2410475A8();
  if (!(v3 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (v3 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    return sub_2410475E8();
  }

  if (v2 | v1 || v3 != 128)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x245CD7AE0](v4);
  return sub_2410475E8();
}

uint64_t sub_2410173C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_2410475A8();
  if (!(v3 >> 6))
  {
    MEMORY[0x245CD7AE0](1);
    sub_241046A88();
    goto LABEL_5;
  }

  if (v3 >> 6 == 1)
  {
    MEMORY[0x245CD7AE0](3);
    sub_241046A88();
LABEL_5:
    sub_2410475C8();
    return sub_2410475E8();
  }

  if (v2 | v1 || v3 != 128)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x245CD7AE0](v4);
  return sub_2410475E8();
}

uint64_t NameSpecification.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_241018280();
  v9 = sub_241009708(a2, a3, v8);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t sub_24101750C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_240FE0C08(a1);

  *a2 = v3;
  return result;
}

uint64_t static NameSpecification.customLong(_:withSingleDash:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F430, &qword_241049DC0);
  inited = swift_initStackObject();
  *(inited + 32) = a1;
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 40) = a2;
  *(inited + 48) = a3;

  v9 = sub_240FE0C08(inited);
  swift_setDeallocating();
  sub_240FE0DB0(inited + 32);

  *a4 = v9;
  return result;
}

uint64_t sub_241017644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_240FE0C08(a1);
  sub_240FE0DB0(a2);

  *a3 = v5;
  return result;
}

uint64_t static NameSpecification.customShort(_:allowingJoined:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F430, &qword_241049DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241047BF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3 | 0x40;

  v9 = sub_240FE0C08(inited);
  swift_setDeallocating();
  sub_240FE0DB0(inited + 32);

  *a4 = v9;
  return result;
}

uint64_t static NameSpecification.shortAndLong.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_240FE0C08(&unk_2852DA7C0);
  swift_arrayDestroy();

  *a1 = v2;
  return result;
}

uint64_t sub_2410177E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = *(a4 + 16);
  v7 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v7 = a5 & 0xFFFFFFFFFFFFLL;
  }

  v57 = v7;
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = a6;
  v10 = 0;
  v11 = a4 + 48;
  v12 = MEMORY[0x277D84F90];
  v61 = a4 + 48;
  do
  {
    v13 = (v11 + 24 * v10);
    for (i = v10; ; ++i)
    {
      if (i >= v6)
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v10 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_43;
      }

      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      if (v17 >> 6 == 1)
      {
        if (a3)
        {
          v19 = v17 & 1 | 0x40;
          sub_240FE0E2C(*(v13 - 2), *(v13 - 1), *v13);
          goto LABEL_34;
        }

        goto LABEL_7;
      }

      if (v17 >> 6 != 2)
      {
        sub_240FE0E2C(*(v13 - 2), *(v13 - 1), *v13);
        v20 = sub_241016C4C(a1, a2, v15, v16);
        v22 = v21;
        sub_240FE0E3C(v15, v16, v17);
        if (v17)
        {
          v19 = 0x80;
        }

        else
        {
          v19 = 0;
        }

        v15 = v20;
        v16 = v22;
        v8 = a6;
        goto LABEL_34;
      }

      if (!(v16 | v15) && v17 == 128)
      {
        break;
      }

      if (a3)
      {
        if (v57)
        {
          sub_240FE0E2C(1, 0, 128);
          sub_240FE0E2C(1, 0, 128);
          v15 = sub_241046C48();
          v16 = v18;
          sub_240FE0E3C(1, 0, 128);
          v19 = 64;
          goto LABEL_34;
        }

LABEL_44:
        sub_240FE0E2C(1, 0, 128);
        sub_240FE0E2C(1, 0, 128);
        sub_241047058();
        MEMORY[0x245CD70E0](0x272079654BLL, 0xE500000000000000);
        MEMORY[0x245CD70E0](a5, v8);
        MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104F310);
        result = sub_2410471B8();
        __break(1u);
        return result;
      }

LABEL_7:
      v13 += 24;
      if (v10 == v6)
      {
        return v12;
      }
    }

    if (v57)
    {

      sub_241046C48();

      v23 = sub_241046A38();
      v24 = v8;
      v26 = v25;

      MEMORY[0x245CD70E0](v23, v26);

      v27 = sub_241039038(1uLL, a5, v24);
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v34 = MEMORY[0x245CD7040](v27, v29, v31, v33);
      v36 = v35;

      MEMORY[0x245CD70E0](v34, v36);

      v38 = a1;
      v37 = a2;
    }

    else
    {
      v37 = a2;

      v38 = a1;
    }

    v39 = HIBYTE(v37) & 0xF;
    if ((v37 & 0x2000000000000000) == 0)
    {
      v39 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      if (sub_241046C48() == 95 && v40 == 0xE100000000000000)
      {

        goto LABEL_32;
      }

      v41 = sub_241047428();

      if (v41)
      {
LABEL_32:
        v42 = sub_241039038(1uLL, v38, v37);
        v44 = v43;
        v46 = v45;
        v48 = v47;

        v38 = MEMORY[0x245CD7040](v42, v44, v46, v48);
        v37 = v49;
      }
    }

    v8 = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E51F340, &qword_241047D40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241047BF0;
    *(inited + 32) = a5;
    *(inited + 40) = a6;

    sub_240FE2060(inited);

    v15 = sub_240FE58B8(45, 0xE100000000000000, v38, v37);
    v16 = v51;
    sub_240FE0E3C(0, 0, 128);

    v19 = 0;
LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_240FE30A8(0, *(v12 + 2) + 1, 1, v12);
    }

    v53 = *(v12 + 2);
    v52 = *(v12 + 3);
    if (v53 >= v52 >> 1)
    {
      v12 = sub_240FE30A8((v52 > 1), v53 + 1, 1, v12);
    }

    *(v12 + 2) = v53 + 1;
    v54 = &v12[24 * v53];
    *(v54 + 4) = v15;
    *(v54 + 5) = v16;
    v54[48] = v19;
    v11 = v61;
  }

  while (v10 != v6);
  return v12;
}

unint64_t sub_241017D28(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_241017E78(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_241047048();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_2410470B8() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_241017E78(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_241017F10(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_241017F84(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_241017F10(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_24100BF78(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_241017F84(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_2410470B8();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_2410180A8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) != 0x40)
      {
        goto LABEL_20;
      }

      goto LABEL_6;
    }

    if (a2 | a1 || a3 != 128)
    {
      if ((a6 & 0xC0) != 0x80 || a4 != 1 || a5)
      {
        goto LABEL_20;
      }
    }

    else if ((a6 & 0xC0) != 0x80 || a5 | a4)
    {
      goto LABEL_20;
    }

    if (a6 == 128)
    {
      v9 = 1;
      return v9 & 1;
    }

LABEL_20:
    v9 = 0;
    return v9 & 1;
  }

  if (a6 >= 0x40u)
  {
    goto LABEL_20;
  }

LABEL_6:
  if (a1 != a4 || a2 != a5)
  {
    v6 = a3;
    v7 = a6;
    v8 = sub_241047428();
    a3 = v6;
    a6 = v7;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v9 = a6 ^ a3 ^ 1;
  return v9 & 1;
}

BOOL _s22ArgumentParserInternal17NameSpecificationV7ElementV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (v6 >> 6)
  {
    if (v6 >> 6 != 1)
    {
      if (v5 | v4 || v6 != 128)
      {
        if ((v9 & 0xC0) != 0x80 || v7 != 1 || v8 != 0)
        {
          return 0;
        }
      }

      else if ((v9 & 0xC0) != 0x80 || (v8 | v7) != 0)
      {
        return 0;
      }

      return v9 == 128;
    }

    if ((v9 & 0xC0) != 0x40)
    {
      return 0;
    }

    if (v4 == v7 && v5 == v8)
    {
      return (v6 & 1) == (v9 & 1);
    }
  }

  else
  {
    if (v9 >= 0x40)
    {
      return 0;
    }

    if (v4 == v7 && v5 == v8)
    {
      return ((v6 ^ v9) & 1) == 0;
    }
  }

  if (sub_241047428())
  {
    return ((v6 ^ v9) & 1) == 0;
  }

  return 0;
}

unint64_t sub_241018280()
{
  result = qword_27E51F780;
  if (!qword_27E51F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F780);
  }

  return result;
}

unint64_t sub_2410182D8()
{
  result = qword_280CC2078;
  if (!qword_280CC2078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CC2078);
  }

  return result;
}

uint64_t sub_241018338(uint64_t *a1, int a2)
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

uint64_t sub_241018380(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_22ArgumentParserInternal17NameSpecificationV7ElementV14RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2410183FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_241018450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_2410184B4(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_2410184F4()
{
  result = qword_27E51F788;
  if (!qword_27E51F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F788);
  }

  return result;
}

uint64_t sub_241018548(uint64_t a1, unint64_t a2)
{
  v4 = *v3;
  v31 = *(*v3 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = a2;
  v6 = a1;
  v7 = 0;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v8;
  v9 = (v4 + 48);
  v10 = MEMORY[0x277D84F90];
  v30 = v4;
  while (v7 < *(v4 + 16))
  {
    v11 = *(v9 - 2);
    v12 = *(v9 - 1);
    v13 = *v9;
    if (!(v13 >> 6))
    {
      if (v13)
      {
        v2 = 4294967168;
      }

      else
      {
        v2 = 0;
      }

      goto LABEL_12;
    }

    if (v13 >> 6 == 1)
    {
      v2 = v13 & 1 | 0x40;
LABEL_12:
      v14 = *(v9 - 2);
      v15 = *(v9 - 1);
      goto LABEL_13;
    }

    if (v12 | v11 || v13 != 128)
    {
      v2 = v5;
      if (!v28)
      {
        goto LABEL_27;
      }

      v22 = *v9;
      v23 = *(v9 - 1);
      v24 = *(v9 - 2);
      v25 = v2;
      v14 = sub_241046C48();
      v15 = v26;
      sub_240FE0E3C(1, 0, 128);
      v2 = 64;
      v11 = v24;
      v5 = v25;
      v6 = a1;
      v12 = v23;
      LOBYTE(v13) = v22;
    }

    else
    {
      v19 = *(v9 - 2);
      v20 = *(v9 - 1);
      v14 = sub_240FE58B8(45, 0xE100000000000000, v6, v5);
      v15 = v21;
      sub_240FE0E3C(0, 0, 128);
      LOBYTE(v13) = 0x80;
      v12 = v20;
      v11 = v19;
      v2 = 0;
    }

LABEL_13:
    sub_240FE0E2C(v11, v12, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_240FE30A8(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_240FE30A8((v16 > 1), v17 + 1, 1, v10);
    }

    ++v7;
    *(v10 + 2) = v17 + 1;
    v18 = &v10[24 * v17];
    *(v18 + 4) = v14;
    *(v18 + 5) = v15;
    v18[48] = v2;
    v9 += 24;
    v4 = v30;
    if (v31 == v7)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_27:
  sub_241047058();
  MEMORY[0x245CD70E0](0x272079654BLL, 0xE500000000000000);
  MEMORY[0x245CD70E0](v6, v2);
  MEMORY[0x245CD70E0](0xD00000000000002FLL, 0x800000024104F310);
  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_241018810@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

__n128 Flag<A>.init(wrappedValue:name:help:)@<Q0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = *(a3 + 16);
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  result = *(a3 + 32);
  *(v8 + 64) = result;
  *(v8 + 80) = *(a3 + 48);
  *a4 = sub_2410199CC;
  *(a4 + 8) = v8;
  *(a4 + 16) = 1;
  return result;
}

uint64_t Flag.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Flag();
  sub_240FEDBC4(a1, v7);
  WitnessTable = swift_getWitnessTable();
  sub_24102B164(v7, v4, WitnessTable, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t Flag.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Parsed();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v3, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  result = sub_2410471B8();
  __break(1u);
  return result;
}

uint64_t sub_241018DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for Flag();
  return Flag.wrappedValue.setter(v6, v8);
}

uint64_t Flag.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Parsed();
  (*(*(v5 - 8) + 8))(v2, v5);
  (*(*(v4 - 8) + 32))(v2, a1, v4);

  return swift_storeEnumTagMultiPayload();
}

void (*Flag.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Flag.wrappedValue.getter(a2, v11);
  return sub_241019038;
}

void sub_241019038(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    Flag.wrappedValue.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v9 = v2[1];
    Flag.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

unint64_t Flag.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for Parsed();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  (*(v12 + 16))(&v18 - v14, v2, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0xD000000000000012;
  }

  else
  {
    (*(v4 + 32))(v10, v15, v3);
    (*(v4 + 16))(v8, v10, v3);
    v17 = sub_241046AF8();
    (*(v4 + 8))(v10, v3);
    return v17;
  }
}

uint64_t FlagInversion.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t FlagExclusivity.hashValue.getter()
{
  v1 = *v0;
  sub_2410475A8();
  MEMORY[0x245CD7AE0](v1);
  return sub_2410475E8();
}

uint64_t sub_2410194A0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t *a7)
{
  v42 = a7[2];
  v43 = a7[3];
  v12 = a7[4];
  v11 = a7[5];
  v41 = *(a7 + 48);
  if (a5)
  {
    v38 = sub_2410177E8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2);
    v14 = 0x656C6261736964;
    v15 = 0xE700000000000000;
    v16 = a4;
  }

  else
  {
    v46[0] = a4;
    v17 = v11;
    v38 = sub_241018548(a1, a2);
    v14 = 28526;
    v15 = 0xE200000000000000;
    v16 = a4;
    v11 = v17;
  }

  v39 = sub_2410177E8(v14, v15, 0, v16, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_241047BF0;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  *(v19 + 48) = a3;
  v20 = a7[1];
  if (v20)
  {
    v37 = *a7;
    v45[0] = *a7;
    v45[1] = v20;
    if (v11)
    {
      sub_240FFBB48(v45, v46);

      v34 = v42;
      v35 = v20;
      v32 = v12;
      v33 = v43;
      v31 = v11;
      v36 = v41;
      goto LABEL_10;
    }

    sub_240FFBB48(v45, v46);
    v36 = v41;
    v34 = v42;
    v35 = v20;
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0xE000000000000000;
    v33 = 0xE000000000000000;
  }

  v31 = 0xE000000000000000;
  v32 = 0;
LABEL_10:
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_241047BF0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3;
  if (!v20)
  {
    v28 = 0;
    v30 = 0;
    v41 = 0;
    v20 = 0xE000000000000000;
    v42 = 0;
    v43 = 0xE000000000000000;
LABEL_15:
    v29 = 0xE000000000000000;
    goto LABEL_16;
  }

  v46[0] = *a7;
  v46[1] = v20;
  v28 = v46[0];
  if (!v11)
  {
    sub_240FFBB48(v46, v44);

    v30 = 0;
    goto LABEL_15;
  }

  sub_240FFBB48(v46, v44);

  v29 = v11;
  v30 = v12;
LABEL_16:
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a6;
  v23 = swift_allocObject();
  *(v23 + 16) = 2;
  *(v23 + 24) = a1;
  *(v23 + 32) = a2;
  *(v23 + 40) = a3;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_241048380;
  *(v25 + 32) = v38;
  *(v25 + 40) = 1;
  v26 = MEMORY[0x277D84F90];
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 64) = v19;
  *(v25 + 72) = v26;
  *(v25 + 80) = 1;
  *(v25 + 88) = v37;
  *(v25 + 96) = v35;
  *(v25 + 104) = v34;
  *(v25 + 112) = v33;
  *(v25 + 120) = v32;
  *(v25 + 128) = v31;
  *(v25 + 136) = v36;
  *(v25 + 144) = 0;
  *(v25 + 152) = 0xE000000000000000;
  *(v25 + 160) = 0;
  *(v25 + 168) = 0;
  *(v25 + 176) = 4;
  *(v25 + 184) = sub_24101DC04;
  *(v25 + 192) = v22;
  *(v25 + 200) = 0;
  *(v25 + 208) = sub_24101DBE4;
  *(v25 + 216) = v23;
  *(v25 + 224) = v39;
  *(v25 + 232) = 1;
  *(v25 + 240) = 0;
  *(v25 + 248) = 0;
  *(v25 + 256) = v21;
  *(v25 + 264) = v26;
  *(v25 + 272) = 0;
  *(v25 + 280) = v28;
  *(v25 + 288) = v20;
  *(v25 + 296) = v42;
  *(v25 + 304) = v43;
  *(v25 + 312) = v30;
  *(v25 + 320) = v29;
  *(v25 + 328) = v41;
  *(v25 + 336) = 0;
  *(v25 + 344) = 0xE000000000000000;
  *(v25 + 352) = 0;
  *(v25 + 360) = 0;
  *(v25 + 368) = 4;
  *(v25 + 376) = sub_24101DC1C;
  *(v25 + 384) = v24;
  *(v25 + 392) = 0;
  *(v25 + 400) = nullsub_1;
  *(v25 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_240FF9C90(v25);
}

__n128 sub_241019904@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 25) = v11;
  v13 = *(a4 + 16);
  *(v12 + 32) = *a4;
  *(v12 + 48) = v13;
  result = *(a4 + 32);
  *(v12 + 64) = result;
  *(v12 + 80) = *(a4 + 48);
  *a6 = a5;
  *(a6 + 8) = v12;
  *(a6 + 16) = 1;
  return result;
}

uint64_t sub_241019988(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = a4;
  v6 = *(a6 + 16);
  v8[0] = *a6;
  v8[1] = v6;
  v8[2] = *(a6 + 32);
  v9 = *(a6 + 48);
  return sub_241024ED4(a1, a2, a3, &v10, a5, v8);
}

uint64_t sub_2410199CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v9 = *(v3 + 16);
  v5 = *(v3 + 48);
  v7[0] = *(v3 + 32);
  v7[1] = v5;
  v7[2] = *(v3 + 64);
  v8 = *(v3 + 80);
  return sub_241024ED4(a1, a2, a3, &v9, v4, v7);
}

uint64_t sub_241019A44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, char a7, uint64_t *a8)
{
  v12 = a8[2];
  v11 = a8[3];
  v14 = a8[4];
  v13 = a8[5];
  v62 = *(a8 + 48);
  if (a6)
  {
    v58 = sub_2410177E8(0x656C62616E65, 0xE600000000000000, 1, a4, a1, a2);
    v16 = 0x656C6261736964;
    v17 = 0xE700000000000000;
    v18 = a4;
  }

  else
  {
    v67[0] = a4;
    v19 = v12;
    v20 = v13;
    v21 = v11;
    v58 = sub_241018548(a1, a2);
    v16 = 28526;
    v17 = 0xE200000000000000;
    v18 = a4;
    v11 = v21;
    v13 = v20;
    v12 = v19;
  }

  v23 = sub_2410177E8(v16, v17, 0, v18, a1, a2);
  v61 = v14;
  v56 = v23;
  if (a5 == 2)
  {
    v54 = 0;
    v55 = 0;
    v25 = v62;
  }

  else
  {
    v24 = v58;
    if ((a5 & 1) == 0)
    {
      v24 = v23;
    }

    v25 = v62;
    if (*(v24 + 16))
    {
      v59 = v13;
      v26 = v11;
      v27 = *(v24 + 32);
      v28 = *(v24 + 40);
      v29 = *(v24 + 48);
      sub_240FF0D90(v27, v28, v29);
      v30 = sub_241034020(v27, v28, v29);
      v54 = v31;
      v55 = v30;
      v32 = v28;
      v11 = v26;
      v13 = v59;
      v25 = v62;
      sub_240FF0D30(v27, v32, v29);
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_241047BF0;
  *(v33 + 32) = a1;
  *(v33 + 40) = a2;
  v53 = v33;
  *(v33 + 48) = a3;
  v34 = a8[1];
  if (v34)
  {
    v52 = *a8;
    v66[0] = *a8;
    v66[1] = v34;
    if (v13)
    {
      sub_240FFBB48(v66, v67);

      v49 = v12;
      v50 = v34;
      v47 = v14;
      v48 = v11;
      v46 = v13;
      v51 = v25;
      goto LABEL_17;
    }

    sub_240FFBB48(v66, v67);

    v51 = v25;
    v49 = v12;
    v50 = v34;
    v48 = v11;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    v49 = 0;
    v50 = 0xE000000000000000;
    v48 = 0xE000000000000000;
  }

  v46 = 0xE000000000000000;
  v47 = 0;
LABEL_17:
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_241047BF0;
  *(v35 + 32) = a1;
  *(v35 + 40) = a2;
  *(v35 + 48) = a3;
  if (!v34)
  {
    v44 = 0;
    v45 = 0;
    v61 = 0;
    v62 = 0;
    v42 = 0xE000000000000000;
    v43 = 0xE000000000000000;
LABEL_22:
    v60 = 0xE000000000000000;
    goto LABEL_23;
  }

  v67[0] = *a8;
  v67[1] = v34;
  v44 = v67[0];
  v45 = v12;
  v42 = v34;
  v43 = v11;
  if (!v13)
  {
    sub_240FFBB48(v67, v65);

    v61 = 0;
    goto LABEL_22;
  }

  sub_240FFBB48(v67, v65);

  v60 = v13;
LABEL_23:
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  *(v36 + 32) = a3;
  *(v36 + 40) = a7;
  v37 = swift_allocObject();
  *(v37 + 16) = a5;
  *(v37 + 24) = a1;
  *(v37 + 32) = a2;
  *(v37 + 40) = a3;
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  *(v38 + 24) = a2;
  *(v38 + 32) = a3;
  *(v38 + 40) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F338, &unk_241048570);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_241048380;
  *(v39 + 32) = v58;
  *(v39 + 40) = a5 != 2;
  *(v39 + 48) = v55;
  *(v39 + 56) = v54;
  v40 = MEMORY[0x277D84F90];
  *(v39 + 64) = v53;
  *(v39 + 72) = v40;
  *(v39 + 80) = 1;
  *(v39 + 88) = v52;
  *(v39 + 96) = v50;
  *(v39 + 104) = v49;
  *(v39 + 112) = v48;
  *(v39 + 120) = v47;
  *(v39 + 128) = v46;
  *(v39 + 136) = v51;
  *(v39 + 144) = 0;
  *(v39 + 152) = 0xE000000000000000;
  *(v39 + 160) = 0;
  *(v39 + 168) = 0;
  *(v39 + 176) = 4;
  *(v39 + 184) = sub_24101DA8C;
  *(v39 + 192) = v36;
  *(v39 + 200) = 0;
  *(v39 + 208) = sub_24101DABC;
  *(v39 + 216) = v37;
  *(v39 + 224) = v56;
  *(v39 + 232) = 1;
  *(v39 + 240) = 0;
  *(v39 + 248) = 0;
  *(v39 + 256) = v35;
  *(v39 + 264) = v40;
  *(v39 + 272) = 0;
  *(v39 + 280) = v44;
  *(v39 + 288) = v42;
  *(v39 + 296) = v45;
  *(v39 + 304) = v43;
  *(v39 + 312) = v61;
  *(v39 + 320) = v60;
  *(v39 + 328) = v62;
  *(v39 + 336) = 0;
  *(v39 + 344) = 0xE000000000000000;
  *(v39 + 352) = 0;
  *(v39 + 360) = 0;
  *(v39 + 368) = 4;
  *(v39 + 376) = sub_24101DAE0;
  *(v39 + 384) = v38;
  *(v39 + 392) = 0;
  *(v39 + 400) = nullsub_1;
  *(v39 + 408) = 0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_240FF9C90(v39);
}

__n128 Flag<A>.init(wrappedValue:name:inversion:exclusivity:help:)@<Q0>(char a1@<W0>, uint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  v11 = *a4;
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = a1;
  *(v12 + 25) = v10;
  *(v12 + 26) = v11;
  v13 = *(a5 + 16);
  *(v12 + 32) = *a5;
  *(v12 + 48) = v13;
  result = *(a5 + 32);
  *(v12 + 64) = result;
  *(v12 + 80) = *(a5 + 48);
  *a6 = sub_241019FE8;
  *(a6 + 8) = v12;
  *(a6 + 16) = 1;
  return result;
}

__n128 Flag<A>.init(name:inversion:exclusivity:help:)@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = 2;
  *(v10 + 25) = v8;
  *(v10 + 26) = v9;
  v11 = *(a4 + 16);
  *(v10 + 32) = *a4;
  *(v10 + 48) = v11;
  result = *(a4 + 32);
  *(v10 + 64) = result;
  *(v10 + 80) = *(a4 + 48);
  *a5 = sub_24101DBA8;
  *(a5 + 8) = v10;
  *(a5 + 16) = 1;
  return result;
}

__n128 Flag<A>.init(name:help:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v7 = *(a2 + 16);
  *(v6 + 24) = *a2;
  *(v6 + 16) = v5;
  *(v6 + 40) = v7;
  result = *(a2 + 32);
  *(v6 + 56) = result;
  *(v6 + 72) = *(a2 + 48);
  *a3 = sub_24101A120;
  *(a3 + 8) = v6;
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_24101A120(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v4 = *(v3 + 40);
  v6[0] = *(v3 + 24);
  v6[1] = v4;
  v6[2] = *(v3 + 56);
  v7 = *(v3 + 72);
  return sub_241025174(a1, a2, a3, &v8, v6);
}

uint64_t sub_24101A16C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a1;
  v29 = a6;
  v9 = type metadata accessor for Parsed();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v26 - v12);
  v14 = *a2;
  v15 = a3[1];
  v30 = *a3;
  v31 = v15;
  v32 = a3[2];
  v33 = *(a3 + 48);
  v16 = sub_241046E58();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = (*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  *(v20 + 16) = a4;
  *(v20 + 24) = v22;
  (*(v17 + 32))(v20 + v18, v21, v16);
  v23 = v20 + v19;
  v24 = v31;
  *v23 = v30;
  *(v23 + 16) = v24;
  *(v23 + 32) = v32;
  *(v23 + 48) = v33;
  *(v23 + 49) = v14;
  sub_24102B87C(sub_24101D718, v20, v13);
  return (*(v10 + 32))(v29, v13, v9);
}

uint64_t sub_24101A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v56 = a6;
  v55 = a5;
  v61 = a4;
  v13 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 = *(AssociatedConformanceWitness + 8);
  v60 = sub_2410471C8();
  v58 = *(v60 - 8);
  v16 = *(v58 + 64);
  v17 = MEMORY[0x28223BE20](v60);
  v57 = &v46 - v18;
  v19 = *(AssociatedTypeWitness - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v46 - v21;
  v66 = a7;
  v67 = a8;
  v52 = a1;
  v68 = a1;
  v69 = a2;
  v53 = a2;
  v54 = a3;
  v70 = a3;
  sub_241046E58();
  v23 = MEMORY[0x277D84A98];
  sub_241018810(sub_24101D7E8, v65, MEMORY[0x277D84A98], MEMORY[0x277D837D0], v24, v72);
  v47 = v72[0];
  v48 = v72[1];
  v50 = v13;
  sub_241047068();
  v63 = a7;
  v64 = a8;
  v59 = a8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F720, &unk_2410492E0);
  v51 = AssociatedConformanceWitness;
  v27 = sub_240FE7380(sub_24101DB90, v62, AssociatedTypeWitness, v25, v23, AssociatedConformanceWitness, MEMORY[0x277D84AC0], v26);
  v28 = *(v19 + 8);
  v28(v22, AssociatedTypeWitness);
  v29 = *(v27 + 16) + 1;
  v30 = 40;
  do
  {
    if (!--v29)
    {
      break;
    }

    v31 = *(v27 + v30);
    v30 += 56;
  }

  while (!v31);
  v32 = v29 != 0;
  sub_241047068();
  v33 = v57;
  MEMORY[0x245CD71B0](AssociatedTypeWitness, v49);
  v34 = (v28)(v22, AssociatedTypeWitness);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = v59;
  *(&v46 - 12) = a7;
  *(&v46 - 11) = v36;
  v37 = v53;
  *(&v46 - 10) = v52;
  *(&v46 - 9) = v37;
  *(&v46 - 8) = v54;
  *(&v46 - 7) = v27;
  *(&v46 - 6) = v55;
  *(&v46 - 40) = v32;
  v38 = v47;
  *(&v46 - 4) = v61;
  *(&v46 - 3) = v38;
  *(&v46 - 2) = v48;
  *(&v46 - 8) = v56;
  MEMORY[0x28223BE20](v35);
  *(&v46 - 4) = a7;
  *(&v46 - 3) = v39;
  *(&v46 - 2) = sub_24101D810;
  *(&v46 - 1) = v40;
  v71 = v51;
  v41 = v60;
  WitnessTable = swift_getWitnessTable();
  v44 = sub_240FE7380(sub_24101DBB0, (&v46 - 6), v41, &type metadata for ArgumentDefinition, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v43);

  (*(v58 + 8))(v33, v41);
  return sub_240FF9C90(v44);
}

uint64_t sub_24101A7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v14 + 16))(&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  v16 = sub_241046AF8();
  v18 = v17;

  v19 = sub_2410390E8(v16, v18, a2, a3);
  v21 = v20;
  (*(a5 + 24))(&v31, a1, a4, a5);
  v22 = sub_241018548(v19, v21);

  if (*(v22 + 16))
  {
    v23 = *(v22 + 32);
    v24 = *(v22 + 40);
    v25 = *(v22 + 48);
    sub_240FF0D90(v23, v24, v25);

    v26 = sub_241034020(v23, v24, v25);
    v28 = v27;
    result = sub_240FF0D30(v23, v24, v25);
  }

  else
  {

    v26 = 0;
    v28 = 0;
  }

  *a6 = v26;
  a6[1] = v28;
  return result;
}

void *sub_24101A9E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15)
{
  v151 = a8;
  v148 = a6;
  v155 = a3;
  v135 = a9;
  v20 = *(a7 + 8);
  v143 = *a7;
  v140 = v20;
  v21 = *(a7 + 16);
  v136 = *(a7 + 24);
  v137 = v21;
  v22 = *(a7 + 40);
  v130 = *(a7 + 32);
  v126 = v22;
  LODWORD(v125) = *(a7 + 48);
  v23 = sub_241046E58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v124 = *(TupleTypeMetadata2 - 8);
  v24 = *(v124 + 64);
  v25 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v127 = v116 - v26;
  v141 = v23;
  v129 = *(v23 - 8);
  v27 = v129[8];
  v28 = MEMORY[0x28223BE20](v25);
  v123 = v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v144 = v116 - v31;
  v32 = *(*(a14 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v134 = v33;
  v34 = v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v35;
  v145 = *(v35 + 16);
  v146 = v35 + 16;
  v145(v34, a2, a14);
  v138 = v34;
  v36 = sub_241046AF8();
  v38 = v37;

  v154 = a4;
  v150 = a5;
  v39 = sub_2410390E8(v36, v38, v155, a4);
  v41 = v40;
  v43 = v42;
  v44 = *(a15 + 24);
  v147 = a2;
  v153 = a14;
  v139 = a15;
  result = v44(&v159, a2, a14, a15);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v148 + 16) > a1)
  {
    v131 = v39;
    v132 = v43;
    v133 = v41;
    v46 = a12;
    v142 = a11;
    v149 = v159;
    v47 = v148 + 56 * a1;
    v48 = *(v47 + 32);
    v49 = *(v47 + 40);
    v50 = *(v47 + 48);
    v51 = *(v47 + 56);
    v53 = *(v47 + 64);
    v52 = *(v47 + 72);
    v54 = v48;
    v55 = v49;
    v56 = v50;
    v57 = *(v47 + 80);
    v58 = v51;
    v59 = v53;
    v60 = v52;
    v61 = v57;
    if (!v49)
    {
      v62 = v50;
      v63 = v51;
      v64 = v48;
      v65 = v57;
      sub_240FE088C(a7, &v159, &qword_27E51F720, &unk_2410492E0);
      v48 = v64;
      v50 = v62;
      v51 = v63;
      v57 = v65;
      v54 = v143;
      v55 = v140;
      v58 = v136;
      v56 = v137;
      v59 = v130;
      v60 = v126;
      v61 = v125;
    }

    v136 = v60;
    v137 = v58;
    v140 = v59;
    LODWORD(v130) = v61;
    v125 = v56;
    v126 = v54;
    v66 = a10;
    v67 = v153;
    v68 = v144;
    v143 = a10;
    if ((v151 & 1) == 0)
    {
      sub_24101D8DC(v48, v49);
      v81 = *(v152 + 48);

      v82 = v150;
      goto LABEL_17;
    }

    v119 = v52;
    v120 = v49;
    v116[0] = v48;
    v116[1] = v50;
    v116[2] = v51;
    v117 = v57;
    v118 = v53;
    v122 = v55;
    v148 = a12;
    v145(v144, v147, v153);
    v69 = v152;
    (*(v152 + 56))(v68, 0, 1, v67);
    v70 = v129;
    v71 = *(TupleTypeMetadata2 + 48);
    v72 = v68;
    v73 = v129[2];
    v74 = v127;
    v75 = v141;
    v73(v127, v72, v141);
    v121 = v71;
    v73(&v74[v71], a10, v75);
    v76 = v67;
    v77 = *(v69 + 48);
    if (v77(v74, 1, v76) == 1)
    {
      sub_24101D8DC(v116[0], v120);
      v78 = v70[1];
      v79 = v141;
      v78(v144, v141);
      v80 = v77(&v74[v121], 1, v76);
      v81 = v77;
      v67 = v76;
      if (v80 == 1)
      {
        v78(v74, v79);
        v82 = v150;
        v55 = v122;
        goto LABEL_14;
      }
    }

    else
    {
      v83 = v123;
      v73(v123, v74, v141);
      v84 = v121;
      v85 = v77(&v74[v121], 1, v76);
      v81 = v77;
      v86 = v120;
      if (v85 != 1)
      {
        TupleTypeMetadata2 = v81;
        v87 = v152;
        v88 = v138;
        (*(v152 + 32))(v138, &v74[v84], v76);
        sub_24101D8DC(v116[0], v86);
        v89 = *(v139 + 16);
        v90 = sub_241046AB8();
        v67 = v153;
        v91 = v90;
        v92 = *(v87 + 8);
        v92(v88, v153);
        v93 = v129[1];
        v94 = v141;
        v93(v144, v141);
        v92(v83, v67);
        v81 = TupleTypeMetadata2;
        v93(v127, v94);
        v82 = v150;
        v55 = v122;
        if ((v91 & 1) == 0)
        {
          v142 = 0;
          v46 = 0;
          goto LABEL_16;
        }

LABEL_14:
        v46 = v148;

LABEL_16:
        v66 = v143;
LABEL_17:
        LODWORD(v144) = a13;
        LODWORD(v141) = v81(v66, 1, v67);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
        v95 = swift_allocObject();
        *(v95 + 16) = xmmword_241047BF0;
        v96 = v154;
        *(v95 + 32) = v155;
        *(v95 + 40) = v96;
        *(v95 + 48) = v82;
        v148 = v46;
        if (v55)
        {
          v97 = v136;
          if (v136)
          {

            v98 = v137;

            v99 = v55;
            v100 = v98;
            v101 = v97;
            v103 = v125;
            v102 = v126;
            goto LABEL_24;
          }

          v100 = v137;

          v99 = v55;
          v103 = v125;
          v102 = v126;
        }

        else
        {
          v102 = 0;
          v103 = 0;
          v99 = 0xE000000000000000;
          v100 = 0xE000000000000000;
        }

        if (!v55)
        {
          v105 = 0;
          v104 = 0;
          v101 = 0xE000000000000000;
          goto LABEL_26;
        }

        v140 = 0;
        v101 = 0xE000000000000000;
LABEL_24:

        v104 = v130;
        v105 = v140;
LABEL_26:
        *&v159 = v141 != 1;
        *(&v159 + 1) = v142;
        *&v160 = v148;
        *(&v160 + 1) = v95;
        *&v161 = MEMORY[0x277D84F90];
        BYTE8(v161) = (v151 & 1) == 0;
        *&v162 = v102;
        *(&v162 + 1) = v99;
        *&v163 = v103;
        *(&v163 + 1) = v100;
        *&v164 = v105;
        *(&v164 + 1) = v101;
        LOBYTE(v165) = v104;
        v166 = 0;
        v167 = 0xE000000000000000;
        v158 = v149;
        v156[4] = v163;
        v156[5] = v164;
        v156[6] = v165;
        v157 = 0xE000000000000000;
        v156[0] = v159;
        v156[1] = v160;
        v156[2] = v161;
        v156[3] = v162;
        v106 = v138;
        v107 = v153;
        v145(v138, v147, v153);
        v108 = v152;
        v109 = (*(v152 + 80) + 56) & ~*(v152 + 80);
        v110 = v109 + v134;
        v111 = swift_allocObject();
        v112 = v139;
        *(v111 + 2) = v107;
        *(v111 + 3) = v112;
        v113 = v154;
        v114 = v155;
        *(v111 + 4) = v155;
        *(v111 + 5) = v113;
        v115 = v150;
        *(v111 + 6) = v150;
        (*(v108 + 32))(&v111[v109], v106, v107);
        v111[v110] = v144;

        sub_24101B3CC(&v158, v114, v113, v115, v131, v133, v156, v135, 0, v143, sub_24101DBCC, v111, 0, v107);

        sub_24101D4F4(&v159);
      }

      sub_24101D8DC(v116[0], v120);
      (v129[1])(v144, v141);
      (*(v152 + 8))(v83, v76);
      v67 = v76;
    }

    (*(v124 + 8))(v74, TupleTypeMetadata2);
    v142 = 0;
    v46 = 0;
    v82 = v150;
    v66 = v143;
    v55 = v122;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_24101B3CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, __int128 *a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14)
{
  v40 = a5;
  v41 = a6;
  v46 = a3;
  v47 = a4;
  v44 = a2;
  v48 = a12;
  v43 = a9;
  v42 = a13;
  v45 = a11;
  v39 = a10;
  v17 = sub_241046E58();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v39 - v20;
  v22 = a7[4];
  v23 = a7[6];
  v55 = a7[5];
  v56 = v23;
  v24 = a7[1];
  v50 = *a7;
  v25 = a7[2];
  v26 = a7[3];
  v51 = v24;
  v52 = v25;
  v27 = *a1;
  v57 = *(a7 + 14);
  v53 = v26;
  v54 = v22;
  v49[0] = v27;
  v41 = sub_241018548(v40, v41);
  (*(v18 + 16))(v21, v39, v17);
  v28 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = a14;
  (*(v18 + 32))(v29 + v28, v21, v17);
  v30 = v53;
  *(a8 + 72) = v54;
  v31 = v56;
  *(a8 + 88) = v55;
  *(a8 + 104) = v31;
  *(a8 + 8) = v50;
  v32 = v52;
  *(a8 + 24) = v51;
  *(a8 + 40) = v32;
  v33 = (v29 + ((v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v46;
  v34 = v47;
  *v33 = v44;
  v33[1] = v35;
  v33[2] = v34;
  LOBYTE(v21) = v42 & 1;
  LOBYTE(v49[0]) = v42 & 1;
  *a8 = v41;
  v36 = v57;
  *(a8 + 56) = v30;
  *(a8 + 128) = 0;
  *(a8 + 136) = 0;
  *(a8 + 120) = v36;
  *(a8 + 144) = 4;
  *(a8 + 145) = v43;
  *(a8 + 146) = *&v58[7];
  *(a8 + 150) = v59;
  v37 = v48;
  *(a8 + 152) = v45;
  *(a8 + 160) = v37;
  *(a8 + 168) = v21;
  *(a8 + 169) = *v58;
  *(a8 + 172) = *&v58[3];
  *(a8 + 176) = sub_24101D548;
  *(a8 + 184) = v29;
  sub_241006C44(&v50, v49);

  return sub_24101D604();
}

uint64_t Flag<A>.init(wrappedValue:exclusivity:help:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a5;
  v11 = sub_241046E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  LOBYTE(a2) = *a2;
  v15 = *(a3 + 32);
  v16 = *(a3 + 40);
  v17 = *(a3 + 48);
  v18 = *(a4 - 8);
  (*(v18 + 16))(&v21 - v13, a1, a4);
  (*(v18 + 56))(v14, 0, 1, a4);
  v26 = a2;
  v19 = *a3;
  v22[1] = *(a3 + 16);
  v22[0] = v19;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  sub_24101A16C(v14, &v26, v22, a4, v21, a6);
  return (*(v18 + 8))(a1, a4);
}

uint64_t Flag<A>.init(exclusivity:help:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_241046E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  LOBYTE(a1) = *a1;
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  (*(*(a3 - 8) + 56))(&v19 - v12, 1, 1, a3);
  v24 = a1;
  v17 = *a2;
  v20[1] = *(a2 + 16);
  v20[0] = v17;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  return sub_24101A16C(v13, &v24, v20, a3, a4, a5);
}

uint64_t Flag.init<A>(exclusivity:help:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_241046E58();
  v10 = type metadata accessor for Parsed();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v18 - v13);
  LOBYTE(a1) = *a1;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(a2 + 16);
  *(v15 + 32) = *a2;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(a2 + 32);
  *(v15 + 80) = *(a2 + 48);
  *(v15 + 81) = a1;
  sub_24102B87C(sub_24101BDE8, v15, v14);
  return (*(v11 + 32))(a5, v14, v10);
}

uint64_t sub_24101BA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v48 = a5;
  v47 = a4;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v9 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 8);
  v51 = sub_2410471C8();
  v49 = *(v51 - 8);
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v51);
  v46 = &v40 - v14;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  sub_241047068();
  v53 = a6;
  v54 = a7;
  v50 = a7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F720, &unk_2410492E0);
  v42 = AssociatedConformanceWitness;
  v21 = sub_240FE7380(sub_24101D680, v52, AssociatedTypeWitness, v19, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v20);
  v22 = *(v15 + 8);
  v22(v18, AssociatedTypeWitness);
  v23 = *(v21 + 16) + 1;
  v24 = 40;
  do
  {
    if (!--v23)
    {
      break;
    }

    v25 = *(v21 + v24);
    v24 += 56;
  }

  while (!v25);
  v26 = v23 != 0;
  sub_241047068();
  v27 = v46;
  MEMORY[0x245CD71B0](AssociatedTypeWitness, v41);
  v28 = (v22)(v18, AssociatedTypeWitness);
  v29 = MEMORY[0x28223BE20](v28);
  v30 = v50;
  *(&v40 - 10) = a6;
  *(&v40 - 9) = v30;
  v31 = v44;
  *(&v40 - 8) = v43;
  *(&v40 - 7) = v31;
  *(&v40 - 6) = v45;
  *(&v40 - 40) = v26;
  v32 = v47;
  *(&v40 - 4) = v21;
  *(&v40 - 3) = v32;
  *(&v40 - 16) = v48;
  MEMORY[0x28223BE20](v29);
  *(&v40 - 4) = a6;
  *(&v40 - 3) = v33;
  *(&v40 - 2) = sub_24101D6C0;
  *(&v40 - 1) = v34;
  v55 = v42;
  v35 = v51;
  WitnessTable = swift_getWitnessTable();
  v38 = sub_240FE7380(sub_24101DBB0, (&v40 - 6), v35, &type metadata for ArgumentDefinition, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v37);

  (*(v49 + 8))(v27, v35);
  return sub_240FF9C90(v38);
}

void *sub_24101BDF8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v67 = a7;
  v68 = a1;
  v95 = a6;
  v85 = a9;
  v17 = *a8;
  v69 = *(a8 + 8);
  v70 = v17;
  v18 = *(a8 + 24);
  v89 = *(a8 + 16);
  v90 = v18;
  v19 = *(a8 + 32);
  v87 = *(a8 + 40);
  v88 = v19;
  v71 = *(a8 + 48);
  v86 = sub_241046E58();
  v84 = *(v86 - 8);
  v20 = *(v84 + 64);
  v21 = MEMORY[0x28223BE20](v86);
  v93 = &v66 - v22;
  v23 = *(*(a11 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v26;
  v27 = *(v26 + 16);
  v75 = v26 + 16;
  v76 = v24;
  v74 = v27;
  v27(v25, a2, a11);
  v77 = v25;
  v28 = sub_241046AF8();
  v30 = v29;

  v94 = a3;
  v31 = a3;
  v91 = a4;
  v32 = a5;
  v78 = sub_2410390E8(v28, v30, v31, a4);
  v79 = v33;
  v35 = v34;
  v36 = *(a12 + 24);
  v82 = a2;
  v83 = a12;
  v73 = a11;
  result = v36(&v99, a2, a11, a12);
  v81 = v35;
  v92 = v99;
  if ((v95 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v68 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v67 + 16) > v68)
  {
    v38 = v67 + 56 * v68;
    v39 = *(v38 + 40);
    if (v39)
    {
      v40 = *(v38 + 80);
      v41 = *(v38 + 72);
      v42 = *(v38 + 48);
      v43 = *(v38 + 56);
      v88 = *(v38 + 64);
      v89 = v42;
      v70 = *(v38 + 32);
      v87 = v41;

      v90 = v43;

      v44 = v32;
      v45 = v91;
      goto LABEL_7;
    }

LABEL_6:
    sub_240FE088C(a8, &v99, &qword_27E51F720, &unk_2410492E0);
    v44 = v32;
    v45 = v91;
    v40 = v71;
    v39 = v69;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_241047BF0;
    *(v46 + 32) = v94;
    *(v46 + 40) = v45;
    *(v46 + 48) = v44;
    v47 = v90;
    v72 = v44;
    v71 = a10;
    if (v39)
    {
      v48 = v40;
      v49 = v87;
      if (v87)
      {

        v50 = v47;
        v51 = v49;
        v52 = v70;
        v40 = v48;
        v53 = v39;
        goto LABEL_14;
      }

      v50 = v47;
      v52 = v70;
      v40 = v48;
      v53 = v39;
    }

    else
    {
      v52 = 0;
      v89 = 0;
      v53 = 0xE000000000000000;
      v50 = 0xE000000000000000;
    }

    if (!v39)
    {
      v54 = 0;
      v40 = 0;
      v51 = 0xE000000000000000;
      goto LABEL_16;
    }

    v88 = 0;
    v51 = 0xE000000000000000;
LABEL_14:

    v54 = v88;
LABEL_16:
    v99 = 1uLL;
    *&v100 = 0;
    *(&v100 + 1) = v46;
    *&v101 = MEMORY[0x277D84F90];
    BYTE8(v101) = (v95 & 1) == 0;
    *&v102 = v52;
    *(&v102 + 1) = v53;
    *&v103 = v89;
    *(&v103 + 1) = v50;
    *&v104 = v54;
    *(&v104 + 1) = v51;
    LOBYTE(v105) = v40;
    v106 = 0;
    v107 = 0xE000000000000000;
    v98 = v92;
    v96[4] = v103;
    v96[5] = v104;
    v96[6] = v105;
    v97 = 0xE000000000000000;
    v96[0] = 1uLL;
    v96[1] = v100;
    v96[2] = v101;
    v96[3] = v102;
    v55 = v80;
    v56 = v73;
    (*(v80 + 56))(v93, 1, 1, v73);
    v57 = v77;
    v74(v77, v82, v56);
    v58 = (*(v55 + 80) + 56) & ~*(v55 + 80);
    v59 = v58 + v76;
    v60 = swift_allocObject();
    v61 = v83;
    *(v60 + 2) = v56;
    *(v60 + 3) = v61;
    v62 = v94;
    v63 = v91;
    *(v60 + 4) = v94;
    *(v60 + 5) = v63;
    v64 = v72;
    *(v60 + 6) = v72;
    (*(v55 + 32))(&v60[v58], v57, v56);
    v60[v59] = v71;

    v65 = v93;
    sub_24101B3CC(&v98, v62, v63, v64, v78, v81, v96, v85, 0, v93, sub_24101D700, v60, 0, v56);

    (*(v84 + 8))(v65, v86);
    sub_24101D4F4(&v99);
  }

  __break(1u);
  return result;
}

double sub_24101C3C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v11;
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 80) = *(a2 + 48);
  *(v10 + 88) = a1;
  sub_241046DA8();
  sub_24102B87C(sub_24101D120, v10, &v17);
  v15 = v17;
  v16 = v18;
  v12 = type metadata accessor for Parsed();
  (*(*(v12 - 8) + 32))(&v19, &v15, v12);
  v13 = v20;
  result = *&v19;
  *a5 = v19;
  *(a5 + 16) = v13;
  return result;
}

uint64_t sub_24101C4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a5;
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v9 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = *(AssociatedConformanceWitness + 8);
  v51 = sub_2410471C8();
  v49 = *(v51 - 8);
  v12 = *(v49 + 64);
  v13 = MEMORY[0x28223BE20](v51);
  v47 = &v40 - v14;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  sub_241047068();
  v53 = a6;
  v54 = a7;
  v50 = a7;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F720, &unk_2410492E0);
  v42 = AssociatedConformanceWitness;
  v21 = sub_240FE7380(sub_24101DB90, v52, AssociatedTypeWitness, v19, MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v20);
  v22 = *(v15 + 8);
  v22(v18, AssociatedTypeWitness);
  v23 = *(v21 + 16) + 1;
  v24 = 40;
  do
  {
    if (!--v23)
    {
      break;
    }

    v25 = *(v21 + v24);
    v24 += 56;
  }

  while (!v25);
  v26 = v23 != 0;
  sub_241047068();
  v27 = v47;
  MEMORY[0x245CD71B0](AssociatedTypeWitness, v41);
  v28 = (v22)(v18, AssociatedTypeWitness);
  v29 = MEMORY[0x28223BE20](v28);
  v30 = v50;
  *(&v40 - 10) = a6;
  *(&v40 - 9) = v30;
  v31 = v44;
  *(&v40 - 8) = v43;
  *(&v40 - 7) = v31;
  v32 = v46;
  *(&v40 - 6) = v45;
  *(&v40 - 40) = v26;
  *(&v40 - 4) = v21;
  *(&v40 - 3) = v32;
  *(&v40 - 2) = v48;
  MEMORY[0x28223BE20](v29);
  *(&v40 - 4) = a6;
  *(&v40 - 3) = v33;
  *(&v40 - 2) = sub_24101D130;
  *(&v40 - 1) = v34;
  v55 = v42;
  v35 = v51;
  WitnessTable = swift_getWitnessTable();
  v38 = sub_240FE7380(sub_24101D170, (&v40 - 6), v35, &type metadata for ArgumentDefinition, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v37);

  (*(v49 + 8))(v27, v35);
  return sub_240FF9C90(v38);
}

void *sub_24101C888@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v66 = a7;
  v67 = a1;
  v89 = a3;
  v81 = a9;
  v17 = *a8;
  v68 = *(a8 + 8);
  v18 = *(a8 + 24);
  v85 = *(a8 + 16);
  v86 = v17;
  v87 = v18;
  v19 = *(a8 + 32);
  v83 = *(a8 + 40);
  v84 = v19;
  v82 = *(a8 + 48);
  v20 = *(*(a11 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v23;
  v24 = *(v23 + 16);
  v73 = v23 + 16;
  v74 = v21;
  v72 = v24;
  (v24)(v22);
  v76 = v22;
  v25 = sub_241046AF8();
  v27 = v26;

  v28 = v25;
  v88 = a4;
  v29 = a5;
  v30 = sub_2410390E8(v28, v27, v89, a4);
  v77 = a2;
  v78 = v30;
  v32 = v31;
  v80 = v33;
  v34 = *(a12 + 24);
  v71 = a11;
  v75 = a12;
  result = v34(&v94, a2, a11, a12);
  v36 = v94;
  v37 = a6;
  if ((a6 & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((v67 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v66 + 16) > v67)
  {
    v38 = v66 + 56 * v67;
    v39 = *(v38 + 40);
    if (v39)
    {
      v82 = *(v38 + 80);
      v40 = *(v38 + 72);
      v41 = *(v38 + 48);
      v42 = *(v38 + 56);
      v84 = *(v38 + 64);
      v85 = v41;
      v86 = *(v38 + 32);
      v83 = v40;

      v87 = v42;

      v43 = v29;
      goto LABEL_7;
    }

LABEL_6:
    sub_240FE088C(a8, &v94, &qword_27E51F720, &unk_2410492E0);
    v43 = v29;
    v39 = v68;
LABEL_7:
    v44 = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F330, &unk_241047D30);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_241047BF0;
    v46 = v88;
    *(v45 + 32) = v89;
    *(v45 + 40) = v46;
    *(v45 + 48) = v43;
    v47 = v87;
    v69 = v36;
    v70 = v32;
    if (v39)
    {
      v48 = v39;
      v49 = v83;
      if (v83)
      {

        v50 = v48;
        v51 = v49;
        v44 = a10;
        v52 = v50;
        goto LABEL_14;
      }

      v39 = v48;

      v53 = v48;
      v44 = a10;
      v52 = v53;
    }

    else
    {
      v85 = 0;
      v86 = 0;
      v52 = 0xE000000000000000;
      v47 = 0xE000000000000000;
    }

    if (!v39)
    {
      v54 = 0;
      v55 = 0;
      v51 = 0xE000000000000000;
      goto LABEL_16;
    }

    v84 = 0;
    v51 = 0xE000000000000000;
LABEL_14:

    v54 = v84;
    v55 = v82;
LABEL_16:
    v94 = 1uLL;
    *&v95 = 0;
    *(&v95 + 1) = v45;
    *&v96 = MEMORY[0x277D84F90];
    BYTE8(v96) = (v37 & 1) == 0;
    *&v97 = v86;
    *(&v97 + 1) = v52;
    *&v98 = v85;
    *(&v98 + 1) = v47;
    *&v99 = v54;
    *(&v99 + 1) = v51;
    LOBYTE(v100) = v55;
    v101 = 0;
    v102 = 0xE000000000000000;
    v93 = v69;
    v91[4] = v98;
    v91[5] = v99;
    v91[6] = v100;
    v92 = 0xE000000000000000;
    v91[0] = 1uLL;
    v91[1] = v95;
    v91[2] = v96;
    v91[3] = v97;
    v90 = v44;
    v56 = v76;
    v57 = v71;
    v72(v76, v77, v71);
    v58 = v79;
    v59 = (*(v79 + 80) + 56) & ~*(v79 + 80);
    v60 = swift_allocObject();
    v61 = v75;
    *(v60 + 2) = v57;
    *(v60 + 3) = v61;
    v62 = v88;
    v63 = v89;
    *(v60 + 4) = v89;
    *(v60 + 5) = v62;
    *(v60 + 6) = v43;
    (*(v58 + 32))(&v60[v59], v56, v57);
    v64 = sub_241046DA8();

    sub_24101B3CC(&v93, v63, v62, v43, v78, v70, v91, v81, 0, &v90, sub_24101D400, v60, 0, v64);

    sub_24101D4F4(&v94);
  }

  __break(1u);
  return result;
}

uint64_t sub_24101CD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_241046DA8();
  return sub_241046D78();
}

double Flag.init<A>(wrappedValue:help:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(a2 + 48);
  v7 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v7;
  v10[2] = *(a2 + 32);
  v11 = v6;
  sub_24101C3C8(a1, v10, a3, a4, &v12);
  v8 = v13;
  result = *&v12;
  *a5 = v12;
  *(a5 + 16) = v8;
  return result;
}

double Flag.init<A>(help:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v6;
  v9[2] = *(a1 + 32);
  v10 = v5;
  sub_24101C3C8(0, v9, a2, a3, &v11);
  v7 = v12;
  result = *&v11;
  *a4 = v11;
  *(a4 + 16) = v7;
  return result;
}

uint64_t sub_24101CF08(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24101CF44(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24101CF84()
{
  result = qword_27E51F790;
  if (!qword_27E51F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F790);
  }

  return result;
}

unint64_t sub_24101CFDC()
{
  result = qword_27E51F798;
  if (!qword_27E51F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F798);
  }

  return result;
}

unint64_t sub_24101D074()
{
  result = qword_27E51F7A0;
  if (!qword_27E51F7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7A0);
  }

  return result;
}

unint64_t sub_24101D0CC()
{
  result = qword_27E51F7A8;
  if (!qword_27E51F7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7A8);
  }

  return result;
}

uint64_t sub_24101D188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23 = a4;
  v24 = a6;
  v25 = a2;
  v11 = sub_241046E58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v23 - v15;
  v17 = *(a7 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, a3, v11);
  if ((*(v17 + 48))(v16, 1, a7) == 1)
  {
    return (*(v12 + 8))(v16, v11);
  }

  (*(v17 + 32))(v20, v16, a7);
  v29[3] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v29);
  (*(v17 + 16))(boxed_opaque_existential_1Tm, v20, a7);
  sub_240FE088C(v29, v27, &qword_27E51F328, &qword_241048720);
  v26[0] = v23;
  v26[1] = a5;
  v26[2] = v24;
  v27[4] = a1;
  v28 = 1;

  sub_24102F0DC(v26);
  sub_240FFBF78(v26);
  (*(v17 + 8))(v20, a7);
  return sub_24101D60C(v29);
}

uint64_t sub_24101D400(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1 + ((*(*(v1[2] - 8) + 80) + 56) & ~*(*(v1[2] - 8) + 80));
  v7 = sub_2410469F8();
  sub_24102EAD4(v3, v4, v5, a1, v7, sub_24101D674);
}

uint64_t sub_24101D548(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(sub_241046E58() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_24101D188(a1, a2, v2 + v7, *v8, v8[1], v8[2], v5);
}

uint64_t sub_24101D60C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24101D718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(sub_241046E58() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v3 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v11 + 49);

  return sub_24101A35C(a1, a2, a3, v3 + v10, v11, v12, v7, v8);
}

uint64_t sub_24101D860(char *a1)
{
  v3 = v1[2];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_24101D8DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 5);

  v7 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

unint64_t sub_24101D9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = v5[2];
  v9 = v5[3];
  v10 = v5[4];
  v11 = v5[5];
  v12 = v5[6];
  v13 = v5 + ((*(*(v8 - 8) + 80) + 56) & ~*(*(v8 - 8) + 80));
  v15 = *(v13 + *(*(v8 - 8) + 64));
  return sub_24101E5DC(v10, v11, v12, v13, a1, a5, &v15, v8, *(v9 + 16));
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_63Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_24101DC78(__int128 *a1)
{
  v2 = a1[3];
  v52 = a1[2];
  v53 = v2;
  v3 = a1[7];
  v56 = a1[6];
  v57 = v3;
  v4 = a1[5];
  v54 = a1[4];
  v55 = v4;
  v5 = a1[11];
  v60 = a1[10];
  v61 = v5;
  v6 = a1[9];
  v58 = a1[8];
  v59 = v6;
  v7 = a1[1];
  v50 = *a1;
  v51 = v7;
  v8 = *v1;
  v46 = *(v8 + 16);
  sub_240FE0990(&v50, v49);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_240FE3A5C((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 16) = v10 + 1;
    v11 = (v8 + 192 * v10);
    v12 = v50;
    v13 = v51;
    v14 = v53;
    *(v11 + 4) = v52;
    *(v11 + 5) = v14;
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    v15 = v54;
    v16 = v55;
    v17 = v57;
    *(v11 + 8) = v56;
    *(v11 + 9) = v17;
    *(v11 + 6) = v15;
    *(v11 + 7) = v16;
    v18 = v58;
    v19 = v59;
    v20 = v61;
    *(v11 + 12) = v60;
    *(v11 + 13) = v20;
    *(v11 + 10) = v18;
    *(v11 + 11) = v19;
    *v48 = v8;
    v21 = v50;
    if (v50 >= 2)
    {
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v47 = *(v21 + 16);
    if (!v47)
    {
    }

    v22 = 0;
    v23 = (v21 + 48);
    while (v22 < *(v21 + 16))
    {
      v26 = *(v23 - 2);
      v25 = *(v23 - 1);
      v27 = *v23;
      if ((*v23 & 0xC0) == 0x40)
      {
        v28 = 64;
      }

      else
      {
        v28 = *v23;
      }

      v29 = *(v48[1] + 16);
      sub_240FF0D90(*(v23 - 2), *(v23 - 1), *v23);
      if (v29)
      {
        sub_240FF0D90(v26, v25, v27);
        sub_24102FC34(v26, v25, v28);
        v8 = v30;
        sub_240FF0D30(v26, v25, v27);
        if (v8)
        {
          sub_240FF0D30(v26, v25, v27);
          goto LABEL_11;
        }
      }

      v31 = v48[1];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v48[1];
      v8 = v49[0];
      v33 = sub_24102FC34(v26, v25, v28);
      v35 = *(v8 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        goto LABEL_31;
      }

      v39 = v34;
      if (*(v8 + 24) < v38)
      {
        sub_241030478(v38, isUniquelyReferenced_nonNull_native);
        v8 = v49[0];
        v33 = sub_24102FC34(v26, v25, v28);
        if ((v39 & 1) != (v40 & 1))
        {
          result = sub_241047518();
          __break(1u);
          return result;
        }

LABEL_24:
        if ((v39 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }

      v8 = v49;
      v44 = v33;
      sub_24102FE50();
      v33 = v44;
      if ((v39 & 1) == 0)
      {
LABEL_25:
        v24 = v49[0];
        *(v49[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v41 = v24[6] + 24 * v33;
        *v41 = v26;
        *(v41 + 8) = v25;
        *(v41 + 16) = v28;
        *(v24[7] + 8 * v33) = v46;
        v42 = v24[2];
        v37 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v37)
        {
          goto LABEL_32;
        }

        v24[2] = v43;
        goto LABEL_10;
      }

LABEL_9:
      v8 = v33;
      sub_240FF0D30(v26, v25, v27);
      v24 = v49[0];
      *(*(v49[0] + 56) + 8 * v8) = v46;
LABEL_10:
      v48[1] = v24;
LABEL_11:
      ++v22;
      v23 += 24;
      if (v47 == v22)
      {
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    v8 = sub_240FE3A5C(0, v46 + 1, 1, v8);
  }
}

uint64_t sub_24101DFC8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v8 = *(a4 + 40);
  sub_2410475A8();
  if (a3 & 0x100) != 0 || (MEMORY[0x245CD7AE0](1), MEMORY[0x245CD7AE0](a1), (a3))
  {
    v9 = 0;
  }

  else
  {
    MEMORY[0x245CD7AE0](1);
    v9 = a2;
  }

  MEMORY[0x245CD7AE0](v9);
  v11 = sub_2410475E8();
  v12 = -1 << *(a4 + 32);
  v13 = v11 & ~v12;
  if ((*(a4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    do
    {
      v15 = *(a4 + 48) + 24 * v13;
      if (*(v15 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          return 1;
        }
      }

      else if ((a3 & 0x100) == 0 && *v15 == a1)
      {
        if (*(v15 + 16))
        {
          if (a3)
          {
            return 1;
          }
        }

        else if ((a3 & 1) == 0 && *(v15 + 8) == a2)
        {
          return 1;
        }
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(a4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return 0;
}

uint64_t sub_24101E114(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, char a7)
{
  v8 = v7;
  v14 = a1;
  v15 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_15;
  }

  v17 = sub_24102FB5C(a1, a2, a3);
  if ((v18 & 1) == 0)
  {
    goto LABEL_15;
  }

  v41 = a7;
  v54 = v14;
  v42 = a4;
  sub_240FFC198(*(v15 + 56) + 72 * v17, &v50);
  v19 = *(&v52 + 1);
  v20 = *(*(&v52 + 1) + 16);
  if (v20)
  {
    v21 = sub_240FE7168(v20, 0);
    v22 = sub_241024D18(&v45, (v21 + 4), v20, v19);
    v8 = v46;
    v40 = v22;

    sub_241007D74();
    if (v40 != v20)
    {
      __break(1u);
      goto LABEL_31;
    }

    v8 = v7;
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  LOBYTE(a4) = v42;
  *&v45 = v21;

  sub_241023FC4(&v45);
  if (v8)
  {
LABEL_31:
    MEMORY[0x245CD7E80](v8);

    __break(1u);
    return result;
  }

  sub_240FFBF78(&v50);
  v23 = *(v45 + 16);

  if (!v23)
  {
    v14 = v54;
LABEL_15:
    *(&v46 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v45) = a4 & 1;
    sub_24102555C(&v45, v51 + 8);
    *&v50 = v14;
    *(&v50 + 1) = a2;
    *&v51[0] = a3;
    *(&v52 + 1) = a5;
    v53 = 1;

    sub_24102F0DC(&v50);
    sub_240FFBF78(&v50);
    v27 = &v45;
    return sub_240FE07E8(v27, &qword_27E51F328, &qword_241048720);
  }

  if (v41)
  {
    v14 = v54;
    if (v41 == 1)
    {
      v24 = MEMORY[0x277D839B0];
      if (*(v15 + 16) && (v25 = sub_24102FB5C(v54, a2, a3), (v26 & 1) != 0))
      {
        sub_240FFC198(*(v15 + 56) + 72 * v25, &v45);
        v51[1] = v47;
        v52 = v48;
        v53 = v49;
        v50 = v45;
        v51[0] = v46;
      }

      else
      {
        BYTE8(v51[0]) = v42 & 1;
        *&v50 = v14;
        *(&v50 + 1) = a2;
        *&v51[0] = a3;
        *&v52 = v24;
        *(&v52 + 1) = MEMORY[0x277D84FA0];
        v53 = 1;
      }

      sub_24102555C(v51 + 8, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
      v37 = swift_dynamicCast();
      v38 = v43[0];
      if (!v37)
      {
        v38 = v42;
      }

      *(&v46 + 1) = v24;
      LOBYTE(v45) = v38 & 1;
      sub_240FFC128(&v45, v51 + 8);

      sub_24102EFE4(v39);
      sub_24102F0DC(&v50);
      return sub_240FFBF78(&v50);
    }

    goto LABEL_15;
  }

  result = v54;
  if (*(v15 + 16))
  {
    result = sub_24102FB5C(v54, a2, a3);
    if (v29)
    {
      sub_240FFC198(*(v15 + 56) + 72 * result, &v50);
      sub_24102555C(v51 + 8, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
      v30 = MEMORY[0x277D839B0];
      if (swift_dynamicCast() & 1) == 0 || v43[0] == 2 || ((v43[0] ^ v42))
      {
        v31 = *(&v52 + 1);
        v32 = a6[1];
        sub_240FDEE00();
        swift_allocError();
        *v33 = v31;
        *(v33 + 8) = a5;
        *(v33 + 16) = v32;
        v34 = v48;
        v35 = v47;
        v36 = v45;
        *(v33 + 40) = v46;
        *(v33 + 24) = v36;
        *(v33 + 56) = v35;
        *(v33 + 72) = v34;
        *(v33 + 80) = 10;
        swift_willThrow();

        return sub_240FFBF78(&v50);
      }

      v44 = v30;
      v43[0] = v42 & 1;
      sub_24102555C(v43, &v46 + 8);
      *&v45 = v54;
      *(&v45 + 1) = a2;
      *&v46 = a3;
      *(&v48 + 1) = a5;
      v49 = 1;

      sub_24102F0DC(&v45);
      sub_240FFBF78(&v45);
      sub_240FFBF78(&v50);
      v27 = v43;
      return sub_240FE07E8(v27, &qword_27E51F328, &qword_241048720);
    }
  }

  return result;
}

unint64_t sub_24101E5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v103 = a4;
  v17 = a1;
  v92 = *(a8 - 8);
  v18 = *(v92 + 64);
  MEMORY[0x28223BE20](a1);
  v83 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_241046E58();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = *(TupleTypeMetadata2 - 8);
  v21 = *(v85 + 64);
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v86 = &v75 - v23;
  v91 = v20;
  v90 = *(v20 - 8);
  v24 = v90[8];
  v25 = MEMORY[0x28223BE20](v22);
  v84 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v87 = &v75 - v28;
  MEMORY[0x28223BE20](v27);
  v89 = &v75 - v29;
  v30 = *a6;
  if (!*(*a6 + 16))
  {
    goto LABEL_13;
  }

  LODWORD(v82) = *a7;
  v31 = sub_24102FB5C(v17, a2, a3);
  if ((v32 & 1) == 0)
  {
    goto LABEL_13;
  }

  *&v81 = v17;
  *(&v81 + 1) = a2;
  sub_240FFC198(*(v30 + 56) + 72 * v31, v99);
  v33 = v101;
  v34 = *(v101 + 16);
  if (v34)
  {
    v78 = a3;
    v79 = a6;
    v80 = a5;
    v76 = v9;
    v35 = sub_240FE7168(v34, 0);
    v77 = sub_241024D18(&v93, (v35 + 4), v34, v33);
    v10 = *(&v94[0] + 1);

    sub_241007D74();
    if (v77 != v34)
    {
      __break(1u);
      goto LABEL_28;
    }

    v10 = v76;
    a5 = v80;
    a6 = v79;
    a3 = v78;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v17 = v81;
  *&v93 = v35;

  sub_241023FC4(&v93);
  if (v10)
  {
LABEL_28:
    MEMORY[0x245CD7E80](v10);

    __break(1u);
    return result;
  }

  v36 = *(v93 + 16);

  result = sub_240FFBF78(v99);
  if (!v36)
  {
LABEL_12:
    a2 = *(&v81 + 1);
LABEL_13:
    *(&v94[0] + 1) = a8;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v93);
    (*(v92 + 16))(boxed_opaque_existential_1Tm, v103, a8);
    sub_24102555C(&v93, v100);
    v99[0] = v17;
    v99[1] = a2;
    v99[2] = a3;
    v101 = a5;
    v102 = 1;

    sub_24102F0DC(v99);
    sub_240FFBF78(v99);
    v39 = &v93;
    return sub_240FE07E8(v39, &qword_27E51F328, &qword_241048720);
  }

  if (v82)
  {
    if (v82 == 1)
    {
      MEMORY[0x28223BE20](result);
      *(&v75 - 2) = a8;
      *(&v75 - 1) = a9;
      return sub_24102ECD8(v17, *(&v81 + 1), a3, a5, v103, nullsub_1, (&v75 - 4), a8);
    }

    goto LABEL_12;
  }

  if (*(v30 + 16))
  {
    result = sub_24102FB5C(v17, *(&v81 + 1), a3);
    if (v40)
    {
      v75 = a9;
      v78 = a3;
      v79 = a6;
      v80 = a5;
      sub_240FFC198(*(v30 + 56) + 72 * result, v99);
      sub_24102555C(v100, &v93);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F328, &qword_241048720);
      v41 = v89;
      v42 = swift_dynamicCast();
      v43 = v92;
      v44 = *(v92 + 56);
      v44(v41, v42 ^ 1u, 1, a8);
      v45 = *(v43 + 16);
      v46 = v87;
      v77 = (v43 + 16);
      v76 = v45;
      v45(v87, v103, a8);
      v44(v46, 0, 1, a8);
      v47 = *(TupleTypeMetadata2 + 48);
      v48 = v90[2];
      v49 = v86;
      v50 = v41;
      v51 = v91;
      v48(v86, v50, v91);
      v82 = v47;
      v48(&v49[v47], v46, v51);
      v52 = *(v43 + 48);
      if (v52(v49, 1, a8) == 1)
      {
        v53 = v90[1];
        v54 = v91;
        v53(v46, v91);
        v55 = v52(&v49[v82], 1, a8);
        v56 = v54;
        if (v55 == 1)
        {
          v53(v49, v54);
          v53(v89, v54);
          v57 = v80;
LABEL_26:
          v98[3] = a8;
          v74 = __swift_allocate_boxed_opaque_existential_1Tm(v98);
          v76(v74, v103, a8);
          sub_24102555C(v98, v94 + 8);
          v93 = v81;
          *&v94[0] = v78;
          v96 = v57;
          v97 = 1;

          sub_24102F0DC(&v93);
          sub_240FFBF78(&v93);
          sub_240FFBF78(v99);
          v39 = v98;
          return sub_240FE07E8(v39, &qword_27E51F328, &qword_241048720);
        }
      }

      else
      {
        v58 = v84;
        v48(v84, v49, v91);
        v59 = v82;
        if (v52(&v49[v82], 1, a8) != 1)
        {
          v67 = v92;
          v68 = &v49[v59];
          v69 = v58;
          v70 = v83;
          (*(v92 + 32))(v83, v68, a8);
          LODWORD(TupleTypeMetadata2) = sub_241046AB8();
          v71 = *(v67 + 8);
          v71(v70, a8);
          v72 = v90[1];
          v73 = v91;
          v72(v87, v91);
          v71(v69, a8);
          v72(v49, v73);
          v72(v89, v73);
          v57 = v80;
          v60 = v79;
          if (TupleTypeMetadata2)
          {
            goto LABEL_26;
          }

LABEL_24:
          v61 = v101;
          v62 = v60[1];
          sub_240FDEE00();
          swift_allocError();
          *v63 = v61;
          *(v63 + 8) = v57;
          *(v63 + 16) = v62;
          v64 = v95;
          v65 = v94[1];
          v66 = v93;
          *(v63 + 40) = v94[0];
          *(v63 + 24) = v66;
          *(v63 + 56) = v65;
          *(v63 + 72) = v64;
          *(v63 + 80) = 10;
          swift_willThrow();

          return sub_240FFBF78(v99);
        }

        v53 = v90[1];
        v56 = v91;
        v53(v87, v91);
        (*(v92 + 8))(v58, a8);
      }

      v57 = v80;
      v60 = v79;
      (*(v85 + 8))(v49, TupleTypeMetadata2);
      v53(v89, v56);
      goto LABEL_24;
    }
  }

  return result;
}

void *sub_24101F02C@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_24101F058(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_24101F09C(void (**a1)(uint64_t a1), unint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x240uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    v8 = (*v2 + 192 * v7);
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[5];
    *(result + 2) = v8[4];
    *(result + 3) = v11;
    *result = v9;
    *(result + 1) = v10;
    v12 = v8[6];
    v13 = v8[7];
    v14 = v8[9];
    *(result + 6) = v8[8];
    *(result + 7) = v14;
    *(result + 4) = v12;
    *(result + 5) = v13;
    v15 = v8[10];
    v16 = v8[11];
    v17 = v8[13];
    *(result + 10) = v8[12];
    *(result + 11) = v17;
    *(result + 8) = v15;
    *(result + 9) = v16;
    memmove(result + 192, v8 + 2, 0xC0uLL);
    sub_240FE0990(v6, v6 + 384);
    return sub_240FF9828;
  }

  __break(1u);
  return result;
}

uint64_t *sub_24101F180@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
    a2[3] = v5;
  }

  return result;
}

void sub_24101F1E0(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_24101F204@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_24101F230@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_241024E68(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_24101F26C(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_24101F294(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_24101F2B0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_24101F2CC(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_24101F2E8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_24101F30C(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_24101F330@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

char *sub_24101F348()
{
  v1 = sub_240FE6DF8(*v0, v0[1]);

  return v1;
}

unint64_t sub_24101F3C4()
{
  result = qword_27E51F7C0;
  if (!qword_27E51F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7C0);
  }

  return result;
}

unint64_t sub_24101F458()
{
  result = qword_27E51F7D8;
  if (!qword_27E51F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7D8);
  }

  return result;
}

unint64_t sub_24101F4F4()
{
  result = qword_27E51F7F0;
  if (!qword_27E51F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F7F0);
  }

  return result;
}

unint64_t sub_24101F5C4()
{
  result = qword_27E51F808;
  if (!qword_27E51F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F808);
  }

  return result;
}

uint64_t sub_24101F650(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F7D0, &qword_24104A380);
    sub_24101F458();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24101F710(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E51F7E8, &qword_24104A388);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24101F788()
{
  result = qword_27E51F820;
  if (!qword_27E51F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E51F820);
  }

  return result;
}

uint64_t sub_24101F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = MEMORY[0x277D839B0];
  v16[0] = 1;
  sub_24102555C(v16, v14);
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14[4] = a1;
  v15 = 1;

  sub_24102F0DC(v13);
  sub_240FFBF78(v13);
  return sub_240FE07E8(v16, &qword_27E51F328, &qword_241048720);
}

uint64_t sub_24101F8FC(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 2)
  {
    v17 = v6;
    v18 = v7;
    v16 = MEMORY[0x277D839B0];
    v15[0] = a3 & 1;
    v11 = result;
    sub_24102555C(v15, v13);
    v12[0] = a4;
    v12[1] = a5;
    v12[2] = a6;
    v13[4] = v11;
    v14 = 1;

    sub_24102F0DC(v12);
    sub_240FFBF78(v12);
    return sub_240FE07E8(v15, &qword_27E51F328, &qword_241048720);
  }

  return result;
}

uint64_t sub_24101FA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a5;
  if (!*(*a5 + 16) || (v13 = sub_24102FB5C(a6, a7, a8), (v14 & 1) == 0))
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_8;
  }

  sub_240FFC198(*(v8 + 56) + 72 * v13, v18);
  sub_24102555C(v19, &v21);
  sub_240FFBF78(v18);
  if (!*(&v22 + 1))
  {
LABEL_8:
    sub_240FE07E8(&v21, &qword_27E51F328, &qword_241048720);
LABEL_9:
    sub_240FDEE00();
    swift_allocError();
    *v17 = 3;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0;
    *(v17 + 80) = 15;
    return swift_willThrow();
  }

  sub_240FFC32C(&v21, v23);
  sub_240FE078C(v23, v18);
  v15 = MEMORY[0x277D83B88];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    goto LABEL_9;
  }

  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    *(&v22 + 1) = v15;
    *&v21 = v21 + 1;
    sub_24102555C(&v21, v19);
    v18[0] = a6;
    v18[1] = a7;
    v18[2] = a8;
    v19[4] = a1;
    v20 = 1;

    sub_24102F0DC(v18);
    sub_240FFBF78(v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    return sub_240FE07E8(&v21, &qword_27E51F328, &qword_241048720);
  }

  return result;
}

uint64_t sub_24101FC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = MEMORY[0x277D83B88];
  v13[0] = 0;
  sub_24102555C(v13, v11);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v11[4] = a1;
  v12 = 1;

  sub_24102F0DC(v10);
  sub_240FFBF78(v10);
  return sub_240FE07E8(v13, &qword_27E51F328, &qword_241048720);
}

uint64_t sub_24101FCCC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = result;

    v7 = v4 - 1;
    v8 = 32;
    v9 = MEMORY[0x277D84FA0];
    while (1)
    {
      v10 = *(a2 + v8 + 144);
      v18[8] = *(a2 + v8 + 128);
      v18[9] = v10;
      v11 = *(a2 + v8 + 176);
      v18[10] = *(a2 + v8 + 160);
      v19 = v11;
      v12 = *(a2 + v8 + 80);
      v18[4] = *(a2 + v8 + 64);
      v18[5] = v12;
      v13 = *(a2 + v8 + 112);
      v18[6] = *(a2 + v8 + 96);
      v18[7] = v13;
      v14 = *(a2 + v8 + 16);
      v18[0] = *(a2 + v8);
      v18[1] = v14;
      v15 = *(a2 + v8 + 48);
      v18[2] = *(a2 + v8 + 32);
      v18[3] = v15;
      v16 = v19;
      sub_240FE0990(v18, &v17);
      v16(v9, v6);
      sub_240FF0CCC(v18);
      if (v3 || !v7)
      {
        break;
      }

      --v7;
      v8 += 192;
    }
  }

  return result;
}

void sub_24101FDD4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v35 = a2;
  v36 = a3;
  v34 = a6;
  v9 = *(a4 + 16);

  v33[5] = a5;

  if (v9)
  {
    v11 = 32;
    while (1)
    {
      v12 = *(a4 + v11 + 144);
      v58 = *(a4 + v11 + 128);
      v59 = v12;
      v13 = *(a4 + v11 + 176);
      v60 = *(a4 + v11 + 160);
      v61 = v13;
      v14 = *(a4 + v11 + 80);
      v54 = *(a4 + v11 + 64);
      v55 = v14;
      v15 = *(a4 + v11 + 112);
      v56 = *(a4 + v11 + 96);
      v57 = v15;
      v16 = *(a4 + v11 + 16);
      v50 = *(a4 + v11);
      v51 = v16;
      v17 = *(a4 + v11 + 48);
      v52 = *(a4 + v11 + 32);
      v53 = v17;
      v18 = v52;
      v49[0] = a1;
      v49[1] = v35;
      v49[2] = v36;
      MEMORY[0x28223BE20](v10);
      v33[2] = v49;
      sub_240FE0990(&v50, &v37);

      v19 = sub_241009B24(sub_241006C24, v33, v18);

      if (v19)
      {
        break;
      }

      v10 = sub_240FF0CCC(&v50);
      v11 += 192;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    v45 = v58;
    v46 = v59;
    v47 = v60;
    v48 = v61;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    nullsub_1(&v37);
    v28 = v46;
    v21 = v34;
    v34[8] = v45;
    v21[9] = v28;
    v29 = v48;
    v21[10] = v47;
    v21[11] = v29;
    v30 = v42;
    v21[4] = v41;
    v21[5] = v30;
    v31 = v44;
    v21[6] = v43;
    v21[7] = v31;
    v32 = v38;
    *v21 = v37;
    v21[1] = v32;
    v26 = v39;
    v27 = v40;
  }

  else
  {
LABEL_5:

    sub_240FE5898(&v50);
    v20 = v59;
    v21 = v34;
    v34[8] = v58;
    v21[9] = v20;
    v22 = v61;
    v21[10] = v60;
    v21[11] = v22;
    v23 = v55;
    v21[4] = v54;
    v21[5] = v23;
    v24 = v57;
    v21[6] = v56;
    v21[7] = v24;
    v25 = v51;
    *v21 = v50;
    v21[1] = v25;
    v26 = v52;
    v27 = v53;
  }

  v21[2] = v26;
  v21[3] = v27;
}

uint64_t sub_24101FFEC(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = v9;
  v15 = a1;
  v292 = *a2;
  v293 = a2[1];
  v339 = a2[2];
  v16 = *(a1 + 145);
  v17 = *(a1 + 184);
  v286 = *(a1 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_241047BF0;
  v288 = a3;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  v287 = a4;
  v19 = a5;
  *(v18 + 48) = a5;
  *(v18 + 49) = BYTE1(a5) & 1;
  v294 = sub_24102AECC(v18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v16 <= 2)
  {
    if (v16)
    {
      v20 = v339;
      v21 = v9;
      if (v16 == 1)
      {
        v22 = v294;
        if ((v339 & 0x8000000000000000) == 0)
        {
          v23 = *(v15 + 96);
          v24 = *(v15 + 128);
          v301 = *(v15 + 112);
          v302 = v24;
          v303 = *(v15 + 144);
          v25 = *(v15 + 48);
          *v297 = *(v15 + 32);
          *&v297[16] = v25;
          v26 = *(v15 + 80);
          v298 = *(v15 + 64);
          v299 = v26;
          v300 = v23;
          v27 = *(v15 + 16);
          v295 = *v15;
          v296 = v27;
          v304 = 1;
          *v305 = *(v15 + 146);
          *&v305[14] = *(v15 + 160);
          v306 = v286;
          v307 = v17;

          if ((sub_24102C994() & 1) != 0 && (a5 & 0x100) == 0 && (a5 & 1) == 0 && !v287)
          {
            if ((v288 & 0x8000000000000000) == 0)
            {
              v28 = v289[6];
              if (*(v28 + 16) > v288)
              {
                v29 = v28 + 16 * v288;
                v31 = *(v29 + 32);
                v30 = *(v29 + 40);

                v32 = sub_241039038(2uLL, v31, v30);
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v10 = MEMORY[0x245CD7040](v32, v34, v36, v38);
                v19 = v39;
                v40 = v288;

                if (*(v294 + 16))
                {
                  v41 = *(v294 + 40);
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v288);
                  MEMORY[0x245CD7AE0](0);
                  v42 = sub_2410475E8();
                  v43 = -1 << *(v294 + 32);
                  v44 = v42 & ~v43;
                  if ((*(v294 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
                  {
                    v45 = ~v43;
                    while (1)
                    {
                      v117 = *(v294 + 48) + 24 * v44;
                      if (*(v117 + 17) & 1) == 0 && *v117 == v288 && (*(v117 + 16))
                      {
                        break;
                      }

                      v44 = (v44 + 1) & v45;
                      if (((*(v294 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
                      {
                        goto LABEL_117;
                      }
                    }

LABEL_61:

LABEL_256:
                    *&v295 = v10;
                    *(&v295 + 1) = v19;
                    v284 = sub_241046C68();
                    a6(v22, v292, v293, v339, v284, v285, a8);
                    if (v21)
                    {
                    }

                    v198 = v22;
                    return sub_24102EFE4(v198);
                  }
                }

LABEL_117:

                if (*(v294 + 16))
                {
                  v185 = *(v294 + 40);
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v288);
                  MEMORY[0x245CD7AE0](0);
                  v186 = sub_2410475E8();
                  v187 = -1 << *(v294 + 32);
                  v188 = v186 & ~v187;
                  if ((*(v294 + 56 + ((v188 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v188))
                  {
                    v189 = ~v187;
                    do
                    {
                      v190 = *(v294 + 48) + 24 * v188;
                      if (*(v190 + 17) & 1) == 0 && *v190 == v288 && (*(v190 + 16))
                      {
                        goto LABEL_256;
                      }

                      v188 = (v188 + 1) & v189;
                    }

                    while (((*(v294 + 56 + ((v188 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v188) & 1) != 0);
                  }
                }

                v204 = *(v294 + 40);
                sub_2410475A8();
                MEMORY[0x245CD7AE0](1);
                MEMORY[0x245CD7AE0](v288);
                MEMORY[0x245CD7AE0](0);
                v205 = sub_2410475E8();
                v206 = -1 << *(v294 + 32);
                v207 = v205 & ~v206;
                if ((*(v294 + 56 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207))
                {
                  v208 = ~v206;
                  while (1)
                  {
                    v209 = *(v294 + 48) + 24 * v207;
                    if (*(v209 + 17) & 1) == 0 && *v209 == v288 && (*(v209 + 16))
                    {
                      goto LABEL_256;
                    }

                    v207 = (v207 + 1) & v208;
                    if (((*(v294 + 56 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) == 0)
                    {
                      goto LABEL_160;
                    }
                  }
                }

                goto LABEL_160;
              }

              goto LABEL_249;
            }

            goto LABEL_246;
          }

          sub_241034C8C(v288, v287, a5 & 0x1FF, &v315);
          v153 = v320;
          if (v320)
          {
            v154 = v315;
            v155 = v316;
            v156 = v319;
            v157 = v317 | ((v318 & 1) << 8);
            v158 = sub_24101DFC8(v315, v316, v317 | ((v318 & 1) << 8), v294);

            if ((v158 & 1) == 0)
            {
              v308 = v294;
              if ((sub_24101DFC8(v154, v155, v157, v294) & 1) == 0)
              {
                sub_241031F0C(&v295, v154, v155, v157);
                v22 = v308;
              }
            }

            a6(v22, v292, v293, v339, v156, v153, a8);
            if (v9)
            {

              return sub_240FE07E8(&v315, &qword_27E51F828, &qword_24104A548);
            }

            v197 = &v315;
            goto LABEL_136;
          }

          goto LABEL_98;
        }
      }

      else
      {
        v22 = v294;
        if ((v339 & 0x8000000000000000) == 0)
        {
          v94 = *(v15 + 96);
          v95 = *(v15 + 128);
          v301 = *(v15 + 112);
          v302 = v95;
          v303 = *(v15 + 144);
          v96 = *(v15 + 48);
          *v297 = *(v15 + 32);
          *&v297[16] = v96;
          v97 = *(v15 + 80);
          v298 = *(v15 + 64);
          v299 = v97;
          v300 = v94;
          v98 = *(v15 + 16);
          v295 = *v15;
          v296 = v98;
          v304 = 2;
          *v305 = *(v15 + 146);
          *&v305[14] = *(v15 + 160);
          v306 = v286;
          v307 = v17;

          if ((sub_24102C994() & 1) != 0 && (a5 & 0x100) == 0 && (a5 & 1) == 0 && !v287)
          {
            if ((v288 & 0x8000000000000000) == 0)
            {
              v99 = v289[6];
              if (*(v99 + 16) > v288)
              {
                v100 = v99 + 16 * v288;
                v102 = *(v100 + 32);
                v101 = *(v100 + 40);

                v103 = sub_241039038(2uLL, v102, v101);
                v105 = v104;
                v107 = v106;
                v109 = v108;

                v10 = MEMORY[0x245CD7040](v103, v105, v107, v109);
                v19 = v110;
                v40 = v288;

                if (*(v294 + 16))
                {
                  v111 = *(v294 + 40);
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v288);
                  MEMORY[0x245CD7AE0](0);
                  v112 = sub_2410475E8();
                  v113 = -1 << *(v294 + 32);
                  v114 = v112 & ~v113;
                  if ((*(v294 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
                  {
                    v115 = ~v113;
                    do
                    {
                      v118 = *(v294 + 48) + 24 * v114;
                      if (*(v118 + 17) & 1) == 0 && *v118 == v288 && (*(v118 + 16))
                      {
                        goto LABEL_61;
                      }

                      v114 = (v114 + 1) & v115;
                    }

                    while (((*(v294 + 56 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) != 0);
                  }
                }

                if (*(v294 + 16))
                {
                  v191 = *(v294 + 40);
                  sub_2410475A8();
                  MEMORY[0x245CD7AE0](1);
                  MEMORY[0x245CD7AE0](v288);
                  MEMORY[0x245CD7AE0](0);
                  v192 = sub_2410475E8();
                  v193 = -1 << *(v294 + 32);
                  v194 = v192 & ~v193;
                  if ((*(v294 + 56 + ((v194 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v194))
                  {
                    v195 = ~v193;
                    do
                    {
                      v196 = *(v294 + 48) + 24 * v194;
                      if (*(v196 + 17) & 1) == 0 && *v196 == v288 && (*(v196 + 16))
                      {
                        goto LABEL_256;
                      }

                      v194 = (v194 + 1) & v195;
                    }

                    while (((*(v294 + 56 + ((v194 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v194) & 1) != 0);
                  }
                }

                v210 = *(v294 + 40);
                sub_2410475A8();
                MEMORY[0x245CD7AE0](1);
                MEMORY[0x245CD7AE0](v288);
                MEMORY[0x245CD7AE0](0);
                v211 = sub_2410475E8();
                v212 = -1 << *(v294 + 32);
                v207 = v211 & ~v212;
                if ((*(v294 + 56 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207))
                {
                  v213 = ~v212;
                  do
                  {
                    v214 = *(v294 + 48) + 24 * v207;
                    if (*(v214 + 17) & 1) == 0 && *v214 == v288 && (*(v214 + 16))
                    {
                      goto LABEL_256;
                    }

                    v207 = (v207 + 1) & v213;
                  }

                  while (((*(v294 + 56 + ((v207 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v207) & 1) != 0);
                }

LABEL_160:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v295 = v22;
                sub_241032FF8(v40, 0, 1, v207, isUniquelyReferenced_nonNull_native);

                goto LABEL_256;
              }

              goto LABEL_250;
            }

            goto LABEL_247;
          }

          sub_241034E10(v288, v287, a5 & 0x1FF, &v321);
          v159 = v326;
          if (v326)
          {
            v160 = v321;
            v161 = v322;
            v162 = v325;
            v163 = v323 | ((v324 & 1) << 8);
            v164 = sub_24101DFC8(v321, v322, v323 | ((v324 & 1) << 8), v294);

            if ((v164 & 1) == 0)
            {
              v308 = v294;
              if ((sub_24101DFC8(v160, v161, v163, v294) & 1) == 0)
              {
                sub_241031F0C(&v295, v160, v161, v163);
                v22 = v308;
              }
            }

            a6(v22, v292, v293, v339, v162, v159, a8);
            if (v9)
            {

              return sub_240FE07E8(&v321, &qword_27E51F828, &qword_24104A548);
            }

            v197 = &v321;
            goto LABEL_136;
          }

LABEL_98:

          sub_240FDEE00();
          swift_allocError();
          *v165 = v22;
          *(v165 + 8) = v292;
          *(v165 + 16) = v293;
          *(v165 + 24) = v20;
          v166 = *&v297[15];
          v167 = *v297;
          v168 = v295;
          *(v165 + 41) = v296;
          *(v165 + 25) = v168;
          *(v165 + 57) = v167;
          *(v165 + 72) = v166;
          *(v165 + 80) = 7;
          swift_willThrow();
          v169 = v292;
          v170 = v293;
          return sub_240FF0D90(v169, v170, v20);
        }
      }

      v119 = a2[3];
      v120 = a2[4];

      a6(v121, v292, v293, v339, v119, v120, a8);
      if (!v10)
      {

LABEL_137:
        v198 = v22;
        return sub_24102EFE4(v198);
      }

      return swift_bridgeObjectRelease_n();
    }

    v20 = v339;
    v21 = v9;
    if ((v339 & 0x8000000000000000) == 0)
    {
      v72 = *(v15 + 96);
      v73 = *(v15 + 128);
      v301 = *(v15 + 112);
      v302 = v73;
      v303 = *(v15 + 144);
      v74 = *(v15 + 48);
      *v297 = *(v15 + 32);
      *&v297[16] = v74;
      v75 = *(v15 + 80);
      v298 = *(v15 + 64);
      v299 = v75;
      v300 = v72;
      v76 = *(v15 + 16);
      v295 = *v15;
      v296 = v76;
      v304 = 0;
      *v305 = *(v15 + 146);
      *&v305[14] = *(v15 + 160);
      v306 = v286;
      v307 = v17;
      v22 = v294;

      if ((sub_24102C994() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || v287)
      {
        sub_241034B80(v288, v287, a5 & 0x1FF, &v309);
        v147 = v314;
        if (v314)
        {
          v148 = v309;
          v149 = v310;
          v150 = v313;
          v151 = v311 | ((v312 & 1) << 8);
          v152 = sub_24101DFC8(v309, v310, v311 | ((v312 & 1) << 8), v294);

          if ((v152 & 1) == 0)
          {
            v308 = v294;
            if ((sub_24101DFC8(v148, v149, v151, v294) & 1) == 0)
            {
              sub_241031F0C(&v295, v148, v149, v151);
              v22 = v308;
            }
          }

          a6(v22, v292, v293, v339, v150, v147, a8);
          if (v9)
          {

            return sub_240FE07E8(&v309, &qword_27E51F828, &qword_24104A548);
          }

          v197 = &v309;
LABEL_136:
          sub_240FE07E8(v197, &qword_27E51F828, &qword_24104A548);
          goto LABEL_137;
        }

        goto LABEL_98;
      }

      if ((v288 & 0x8000000000000000) == 0)
      {
        v77 = v289[6];
        if (*(v77 + 16) <= v288)
        {
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
          goto LABEL_251;
        }

        v78 = v77 + 16 * v288;
        v80 = *(v78 + 32);
        v79 = *(v78 + 40);

        v81 = sub_241039038(2uLL, v80, v79);
        v83 = v82;
        v85 = v84;
        v87 = v86;

        v10 = MEMORY[0x245CD7040](v81, v83, v85, v87);
        v19 = v88;
        v15 = v288;

        if (*(v294 + 16))
        {
          v89 = *(v294 + 40);
          sub_2410475A8();
          MEMORY[0x245CD7AE0](1);
          MEMORY[0x245CD7AE0](v288);
          MEMORY[0x245CD7AE0](0);
          v90 = sub_2410475E8();
          v91 = -1 << *(v294 + 32);
          v92 = v90 & ~v91;
          if ((*(v294 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92))
          {
            v93 = ~v91;
            do
            {
              v116 = *(v294 + 48) + 24 * v92;
              if (*(v116 + 17) & 1) == 0 && *v116 == v288 && (*(v116 + 16))
              {
                goto LABEL_61;
              }

              v92 = (v92 + 1) & v93;
            }

            while (((*(v294 + 56 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) != 0);
          }
        }

        if (*(v294 + 16))
        {
          v179 = *(v294 + 40);
          sub_2410475A8();
          MEMORY[0x245CD7AE0](1);
          MEMORY[0x245CD7AE0](v288);
          MEMORY[0x245CD7AE0](0);
          v180 = sub_2410475E8();
          v181 = -1 << *(v294 + 32);
          v182 = v180 & ~v181;
          if ((*(v294 + 56 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182))
          {
            v183 = ~v181;
            do
            {
              v184 = *(v294 + 48) + 24 * v182;
              if (*(v184 + 17) & 1) == 0 && *v184 == v288 && (*(v184 + 16))
              {
                goto LABEL_256;
              }

              v182 = (v182 + 1) & v183;
            }

            while (((*(v294 + 56 + ((v182 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v182) & 1) != 0);
          }
        }

        v199 = *(v294 + 40);
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v288);
        MEMORY[0x245CD7AE0](0);
        v200 = sub_2410475E8();
        v201 = -1 << *(v294 + 32);
        v20 = v200 & ~v201;
        if ((*(v294 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v202 = ~v201;
          do
          {
            v203 = *(v294 + 48) + 24 * v20;
            if (*(v203 + 17) & 1) == 0 && *v203 == v288 && (*(v203 + 16))
            {
              goto LABEL_256;
            }

            v20 = (v20 + 1) & v202;
          }

          while (((*(v294 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v308 = v294;
        v219 = *(v294 + 16);
        if (*(v294 + 24) > v219)
        {
          if (result)
          {
            v220 = v294;
LABEL_254:
            *(v220 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v20;
            v280 = *(v220 + 48) + 24 * v20;
            *v280 = v15;
            *(v280 + 8) = 0;
            *(v280 + 16) = 1;
            v281 = *(v220 + 16);
            v282 = __OFADD__(v281, 1);
            v283 = v281 + 1;
            if (!v282)
            {
              *(v220 + 16) = v283;

              v22 = v220;
              goto LABEL_256;
            }

            __break(1u);
            goto LABEL_260;
          }

LABEL_253:
          result = sub_241033498();
          v220 = v308;
          goto LABEL_254;
        }

        if (result)
        {
          sub_241032644(v219 + 1);
        }

        else
        {
          sub_2410338A0(v219 + 1);
        }

        v220 = v308;
        v253 = *(v308 + 40);
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v288);
        MEMORY[0x245CD7AE0](0);
        result = sub_2410475E8();
        v254 = -1 << *(v308 + 32);
        v20 = result & ~v254;
        if (((*(v308 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_254;
        }

        v255 = ~v254;
        while (1)
        {
          v256 = *(v308 + 48) + 24 * v20;
          if (*(v256 + 17) & 1) == 0 && *v256 == v288 && (*(v256 + 16))
          {
            break;
          }

          v20 = (v20 + 1) & v255;
          if (((*(v308 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_254;
          }
        }

        sub_241047508();
        __break(1u);
        goto LABEL_214;
      }

LABEL_245:
      __break(1u);
LABEL_246:
      __break(1u);
LABEL_247:
      __break(1u);
      goto LABEL_248;
    }

    v171 = a2[3];
    v172 = a2[4];
    v22 = v294;

    a6(v173, v292, v293, v339, v171, v172, a8);

    if (!v10)
    {
      goto LABEL_137;
    }
  }

  if ((v16 - 5) < 2)
  {

    sub_240FDEE00();
    swift_allocError();
    *v46 = 3;
    *(v46 + 8) = 0u;
    *(v46 + 24) = 0u;
    *(v46 + 40) = 0u;
    *(v46 + 56) = 0u;
    *(v46 + 72) = 0;
    *(v46 + 80) = 15;
    return swift_willThrow();
  }

  if (v16 != 3)
  {
    v22 = v294;

    v286(v122, a8);
    v21 = v9;
    if (v9)
    {
      return swift_bridgeObjectRelease_n();
    }

    if ((v339 & 0x8000000000000000) != 0)
    {
      v216 = a2[3];
      v217 = a2[4];
      (a6)(v294, v292, v293);

      sub_24102EFE4(v218);
      result = v288;
      goto LABEL_235;
    }

    v123 = *(v15 + 96);
    v124 = *(v15 + 128);
    v301 = *(v15 + 112);
    v302 = v124;
    v303 = *(v15 + 144);
    v125 = *(v15 + 48);
    *v297 = *(v15 + 32);
    *&v297[16] = v125;
    v126 = *(v15 + 80);
    v298 = *(v15 + 64);
    v299 = v126;
    v300 = v123;
    v127 = *(v15 + 16);
    v295 = *v15;
    v296 = v127;
    v304 = 4;
    *v305 = *(v15 + 146);
    *&v305[14] = *(v15 + 160);
    v306 = v286;
    v307 = v17;
    if ((sub_24102C994() & 1) == 0)
    {
      result = v288;
      goto LABEL_235;
    }

    result = v288;
    if ((a5 & 0x100) != 0 || (a5 & 1) != 0 || v287)
    {
LABEL_235:
      while (1)
      {
        sub_241034E10(result, v287, v19 & 0x1FF, &v327);
        v274 = v332;
        if (!v332)
        {
          break;
        }

        v275 = v327;
        v276 = v328;
        v277 = v331;
        v278 = v329 | ((v330 & 1) << 8);
        if (sub_24101DFC8(v327, v328, v329 | ((v330 & 1) << 8), v294) & 1) != 0 || (v308 = v294, (sub_24101DFC8(v275, v276, v278, v294)))
        {

          v279 = v294;
        }

        else
        {

          sub_241031F0C(&v295, v275, v276, v278);
          v279 = v308;
        }

        a6(v279, v292, v293, v339, v277, v274, a8);
        sub_240FE07E8(&v327, &qword_27E51F828, &qword_24104A548);
        sub_24102EFE4(v279);
        result = v288;
      }

      return swift_bridgeObjectRelease_n();
    }

    if ((v288 & 0x8000000000000000) != 0)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v128 = v289[6];
    if (*(v128 + 16) <= v288)
    {
LABEL_261:
      __break(1u);
      return result;
    }

    v129 = v128 + 16 * v288;
    v131 = *(v129 + 32);
    v130 = *(v129 + 40);

    v132 = sub_241039038(2uLL, v131, v130);
    v134 = v133;
    v136 = v135;
    v138 = v137;

    v139 = v136;
    v15 = v288;
    v286 = MEMORY[0x245CD7040](v132, v134, v139, v138);
    v10 = v140;

    if (!*(v294 + 16))
    {
      goto LABEL_222;
    }

    v141 = *(v294 + 40);
    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v288);
    MEMORY[0x245CD7AE0](0);
    v142 = sub_2410475E8();
    v20 = v294 + 56;
    v143 = -1 << *(v294 + 32);
    v144 = v142 & ~v143;
    if ((*(v294 + 56 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144))
    {
      v145 = ~v143;
      do
      {
        v178 = *(v294 + 48) + 24 * v144;
        if (*(v178 + 17) & 1) == 0 && *v178 == v288 && (*(v178 + 16))
        {
          goto LABEL_221;
        }

        v144 = (v144 + 1) & v145;
      }

      while (((*(v20 + ((v144 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v144) & 1) != 0);
    }

LABEL_214:
    if (*(v22 + 16))
    {
      v257 = *(v22 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v15);
      MEMORY[0x245CD7AE0](0);
      v258 = sub_2410475E8();
      v259 = -1 << *(v22 + 32);
      v260 = v258 & ~v259;
      if ((*(v20 + ((v260 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v260))
      {
        v261 = ~v259;
        while (1)
        {
          v262 = *(v22 + 48) + 24 * v260;
          if (*(v262 + 17) & 1) == 0 && *v262 == v15 && (*(v262 + 16))
          {
            break;
          }

          v260 = (v260 + 1) & v261;
          if (((*(v20 + ((v260 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v260) & 1) == 0)
          {
            goto LABEL_222;
          }
        }

LABEL_221:

        v263 = v22;
        v264 = v286;
LABEL_231:
        *&v295 = v264;
        *(&v295 + 1) = v10;
        v272 = sub_241046C68();
        a6(v263, v292, v293, v339, v272, v273, a8);
        if (v21)
        {
          goto LABEL_232;
        }

        sub_24102EFE4(v263);
        sub_24102AB88(*a9);
        result = v15;
        goto LABEL_235;
      }
    }

LABEL_222:
    v265 = *(v22 + 40);
    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v15);
    MEMORY[0x245CD7AE0](0);
    v266 = sub_2410475E8();
    v267 = -1 << *(v22 + 32);
    v268 = v266 & ~v267;
    if ((*(v22 + 56 + ((v268 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v268))
    {
      v269 = ~v267;
      v264 = v286;
      while (1)
      {
        v270 = *(v22 + 48) + 24 * v268;
        if (*(v270 + 17) & 1) == 0 && *v270 == v15 && (*(v270 + 16))
        {
          break;
        }

        v268 = (v268 + 1) & v269;
        if (((*(v22 + 56 + ((v268 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v268) & 1) == 0)
        {
          goto LABEL_230;
        }
      }

      v263 = v22;
    }

    else
    {
      v264 = v286;
LABEL_230:

      v271 = swift_isUniquelyReferenced_nonNull_native();
      sub_241032FF8(v15, 0, 1, v268, v271);
      v263 = v22;
    }

    goto LABEL_231;
  }

  v21 = v9;
  if ((v339 & 0x8000000000000000) == 0)
  {
    v48 = *(v15 + 96);
    v49 = *(v15 + 128);
    v301 = *(v15 + 112);
    v302 = v49;
    v303 = *(v15 + 144);
    v50 = *(v15 + 48);
    *v297 = *(v15 + 32);
    *&v297[16] = v50;
    v51 = *(v15 + 80);
    v298 = *(v15 + 64);
    v299 = v51;
    v300 = v48;
    v52 = *(v15 + 16);
    v295 = *v15;
    v296 = v52;
    v304 = 3;
    *v305 = *(v15 + 146);
    *&v305[14] = *(v15 + 160);
    v306 = v286;
    v307 = v17;

    v20 = 0;
    if ((sub_24102C994() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || v287)
    {
      v19 = v293;
      goto LABEL_185;
    }

    if ((v288 & 0x8000000000000000) != 0)
    {
LABEL_251:
      __break(1u);
      goto LABEL_252;
    }

    v53 = v289[6];
    if (*(v53 + 16) <= v288)
    {
LABEL_252:
      __break(1u);
      goto LABEL_253;
    }

    v54 = v53 + 16 * v288;
    v56 = *(v54 + 32);
    v55 = *(v54 + 40);

    v57 = sub_241039038(2uLL, v56, v55);
    v59 = v58;
    v61 = v60;
    v63 = v62;

    v10 = MEMORY[0x245CD7040](v57, v59, v61, v63);
    v65 = v64;
    v15 = v288;

    if (!*(v294 + 16))
    {
      goto LABEL_174;
    }

    v66 = *(v294 + 40);
    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v288);
    MEMORY[0x245CD7AE0](0);
    v67 = sub_2410475E8();
    v68 = v294 + 56;
    v69 = -1 << *(v294 + 32);
    v70 = v67 & ~v69;
    if ((*(v294 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
    {
      v71 = ~v69;
      while (1)
      {
        v146 = *(v294 + 48) + 24 * v70;
        if (*(v146 + 17) & 1) == 0 && *v146 == v288 && (*(v146 + 16))
        {
          goto LABEL_180;
        }

        v70 = (v70 + 1) & v71;
        if (((*(v68 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
        {
          goto LABEL_166;
        }
      }
    }

    if (!*(v294 + 16))
    {
      goto LABEL_174;
    }

LABEL_166:
    v221 = *(v294 + 40);
    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v288);
    MEMORY[0x245CD7AE0](0);
    v222 = sub_2410475E8();
    v223 = -1 << *(v294 + 32);
    v224 = v222 & ~v223;
    if ((*(v68 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224))
    {
      v225 = ~v223;
      while (1)
      {
        v226 = *(v294 + 48) + 24 * v224;
        if (*(v226 + 17) & 1) == 0 && *v226 == v288 && (*(v226 + 16))
        {
          break;
        }

        v224 = (v224 + 1) & v225;
        if (((*(v68 + ((v224 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v224) & 1) == 0)
        {
          goto LABEL_174;
        }
      }
    }

    else
    {
LABEL_174:
      v227 = *(v294 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v288);
      MEMORY[0x245CD7AE0](0);
      v228 = sub_2410475E8();
      v229 = -1 << *(v294 + 32);
      v230 = v228 & ~v229;
      if (((*(v294 + 56 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230) & 1) == 0)
      {
LABEL_181:

        v234 = swift_isUniquelyReferenced_nonNull_native();
        sub_241032FF8(v288, 0, 1, v230, v234);
        v233 = v294;
        goto LABEL_182;
      }

      v231 = ~v229;
      while (1)
      {
        v232 = *(v294 + 48) + 24 * v230;
        if (*(v232 + 17) & 1) == 0 && *v232 == v288 && (*(v232 + 16))
        {
          break;
        }

        v230 = (v230 + 1) & v231;
        if (((*(v294 + 56 + ((v230 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v230) & 1) == 0)
        {
          goto LABEL_181;
        }
      }
    }

LABEL_180:

    v233 = v294;
LABEL_182:
    *&v295 = v10;
    *(&v295 + 1) = v65;
    v235 = sub_241046C68();
    v19 = v293;
    a6(v233, v292, v293, v339, v235, v236, a8);
    if (v21)
    {
LABEL_232:

      return swift_bridgeObjectRelease_n();
    }

    sub_24102EFE4(v233);
    sub_24102AB88(*a9);
    goto LABEL_184;
  }

  v174 = a2[3];
  v175 = a2[4];

  v19 = v293;
  a6(v176, v292, v293, v339, v174, v175, a8);
  if (v21)
  {
    return swift_bridgeObjectRelease_n();
  }

  sub_24102EFE4(v177);
LABEL_184:
  v20 = 1;
LABEL_185:

  sub_24102EFE4(v237);
  sub_24102AB88(v294);
  v238 = v289[4];
  v239 = v289[5];
  v240 = *(v238 + 16);
  if (v240 < v239)
  {
    __break(1u);
    goto LABEL_243;
  }

  if ((v239 & 0x8000000000000000) != 0)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  if (v239 == v240)
  {
    goto LABEL_199;
  }

  if (v239 >= v240)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  if ((*(v238 + (v239 << 6) + 48) & 0x6000000000000000) != 0x2000000000000000)
  {
LABEL_199:

    if (!v20)
    {
      sub_240FDEE00();
      swift_allocError();
      *v249 = v294;
      *(v249 + 8) = v292;
      *(v249 + 16) = v19;
      LOBYTE(v20) = v339;
      *(v249 + 24) = v339;
      v250 = *&v297[15];
      v251 = *v297;
      v252 = v295;
      *(v249 + 41) = v296;
      *(v249 + 25) = v252;
      *(v249 + 57) = v251;
      *(v249 + 72) = v250;
      *(v249 + 80) = 7;
      swift_willThrow();
      v169 = v292;
      v170 = v19;
      return sub_240FF0D90(v169, v170, v20);
    }
  }

  sub_241034F20(&v333);
  v241 = v338;
  if (!v338)
  {
    return swift_bridgeObjectRelease_n();
  }

  v242 = v336;
  v243 = v335;
  v244 = v334;
  v245 = v337;
  while (1)
  {
    v246 = v21;
    v247 = v333;
    if (sub_24101DFC8(v333, v244, v243 | ((v242 & 1u) << 8), v294) & 1) != 0 || (v308 = v294, (sub_24101DFC8(v247, v244, v243 | ((v242 & 1u) << 8), v294)))
    {

      v248 = v294;
    }

    else
    {

      sub_241031F0C(&v295, v247, v244, v243 | ((v242 & 1) << 8));
      v248 = v308;
    }

    a6(v248, v292, v293, v339, v245, v241, a8);
    v21 = v246;
    if (v246)
    {
      break;
    }

    sub_240FE07E8(&v333, &qword_27E51F828, &qword_24104A548);
    sub_24102EFE4(v248);
    sub_241034F20(&v333);
    v244 = v334;
    v243 = v335;
    v245 = v337;
    v241 = v338;
    v242 = v336;
    if (!v338)
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  swift_bridgeObjectRelease_n();
  return sub_240FE07E8(&v333, &qword_27E51F828, &qword_24104A548);
}

uint64_t sub_241021DD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *(a1 + 16);
  if (v12 < a2)
  {
    goto LABEL_219;
  }

  v10 = a2;
  if (a2 < 0)
  {
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      swift_unknownObjectRelease();
LABEL_107:
      sub_240FE6F7C(v7, v174, v10, v8);
LABEL_165:
      v128 = v99;
LABEL_166:
      v129 = a4[2];

      v130 = a4[4];

      a4[2] = v128;
      a4[3] = 0;
      a4[4] = MEMORY[0x277D84F90];
      if (v10 == v9)
      {
        break;
      }

      v157 = v9;
      v159 = v7;
      if (v10 <= v9)
      {
        v131 = v9;
      }

      else
      {
        v131 = v10;
      }

      v169 = v8;
      v173 = v131;
      v9 = 24;
      v161 = v4;
      v164 = v6;
      v165 = v11;
      while (v10 != v173)
      {
        v132 = v174 + (v10 << 6);
        v8 = *(v132 + 40);
        v133 = *(v132 + 48);
        v6 = *(v132 + 56);
        ++v10;
        *&v179 = v7;
        *(&v179 + 1) = v174;
        *&v180 = v10;
        *(&v180 + 1) = v169;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_223;
        }

        if (v8 >= *(a3 + 16))
        {
          goto LABEL_224;
        }

        v134 = &v166[16 * v8];
        v135 = *(v134 + 1);
        v178 = *v134;
        v136 = sub_241025748();

        v11 = MEMORY[0x245CD7300](1, &type metadata for InputOrigin.Element, v136);
        v137 = *(v11 + 40);
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v8);
        if (v6)
        {
          v138 = 0;
        }

        else
        {
          MEMORY[0x245CD7AE0](1);
          v138 = v133;
        }

        MEMORY[0x245CD7AE0](v138);
        v4 = v183;
        v139 = sub_2410475E8();
        v140 = -1 << *(v11 + 32);
        v7 = v139 & ~v140;
        if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          v141 = ~v140;
          do
          {
            v142 = *(v11 + 48) + 24 * v7;
            if ((*(v142 + 17) & 1) == 0 && *v142 == v8)
            {
              if (*(v142 + 16))
              {
                if (v6)
                {
                  goto LABEL_208;
                }
              }

              else if ((v6 & 1) == 0 && *(v142 + 8) == v133)
              {
                goto LABEL_208;
              }
            }

            v7 = (v7 + 1) & v141;
          }

          while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = v11;
        v144 = *(v11 + 16);
        if (*(v11 + 24) <= v144)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            sub_241032644(v144 + 1);
          }

          else
          {
            sub_2410338A0(v144 + 1);
          }

          v11 = v182;
          v145 = *(v182 + 40);
          sub_2410475A8();
          MEMORY[0x245CD7AE0](1);
          MEMORY[0x245CD7AE0](v8);
          if (v6)
          {
            v146 = 0;
          }

          else
          {
            MEMORY[0x245CD7AE0](1);
            v146 = v133;
          }

          MEMORY[0x245CD7AE0](v146);
          v4 = v183;
          v147 = sub_2410475E8();
          v148 = -1 << *(v11 + 32);
          v7 = v147 & ~v148;
          if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
          {
            v149 = ~v148;
            do
            {
              v150 = *(v11 + 48) + 24 * v7;
              if ((*(v150 + 17) & 1) == 0 && *v150 == v8)
              {
                if (*(v150 + 16))
                {
                  if (v6)
                  {
                    goto LABEL_231;
                  }
                }

                else if ((v6 & 1) == 0 && *(v150 + 8) == v133)
                {
                  goto LABEL_231;
                }
              }

              v7 = (v7 + 1) & v149;
            }

            while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
          }
        }

        else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = &v182;
          sub_241033498();
          v11 = v182;
        }

        *(v11 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
        v151 = *(v11 + 48) + 24 * v7;
        *v151 = v8;
        *(v151 + 8) = v133;
        *(v151 + 16) = v6;
        *(v151 + 17) = 0;
        v152 = *(v11 + 16);
        v46 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v46)
        {
          goto LABEL_225;
        }

        *(v11 + 16) = v153;
LABEL_208:
        v4 = v161;
        v6 = v164;
        v7 = v159;
        v154 = v201;
        v164(v11, 0, 0, 254, v178, v135, a4);
        v201 = v154;
        if (v154)
        {

          sub_241025740();

          sub_240FF0CCC(&v185);
          return swift_unknownObjectRelease();
        }

        v11 = v165;
        if (v10 == v157)
        {
          goto LABEL_210;
        }
      }
    }

LABEL_210:
    sub_241025740();
    sub_240FF0CCC(&v185);
    goto LABEL_98;
  }

  v13 = a1;
  v201 = v5;
  v14 = *(v4 + 16);
  v158 = *(v4 + 24);
  v160 = v14;
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = (v14 + 32);
  while (1)
  {
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    *v187 = v16[2];
    *&v187[16] = v19;
    v185 = v17;
    v186 = v18;
    v20 = v16[4];
    v21 = v16[5];
    v22 = v16[7];
    v190 = v16[6];
    v191 = v22;
    v188 = v20;
    v189 = v21;
    v23 = v16[8];
    v24 = v16[9];
    v25 = v16[11];
    v194 = v16[10];
    v195 = v25;
    v192 = v23;
    v193 = v24;
    if (!v185 && (BYTE8(v185) & 2) != 0 && BYTE1(v193) == 5)
    {
      break;
    }

    v16 += 12;
    if (!--v15)
    {
      goto LABEL_11;
    }
  }

  if (BYTE8(v194) != 1 || v12 == a2)
  {
LABEL_11:
    v6 = v12;
    if (v12 >= a2)
    {
      goto LABEL_12;
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    swift_unknownObjectRetain();
    sub_240FE0990(&v185, v183);
    sub_24101D604();
    sub_241047458();
    swift_unknownObjectRetain();
    v126 = swift_dynamicCastClass();
    if (!v126)
    {
      swift_unknownObjectRelease();
      v126 = MEMORY[0x277D84F90];
    }

    v127 = *(v126 + 16);

    v9 = v8 >> 1;
    if (__OFSUB__(v8 >> 1, v10))
    {
      goto LABEL_227;
    }

    if (v127 != (v8 >> 1) - v10)
    {
      goto LABEL_228;
    }

    v99 = swift_dynamicCastClass();
    if (!v99)
    {
      swift_unknownObjectRelease();
      v128 = MEMORY[0x277D84F90];
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v166 = *(&v193 + 1);
  v163 = a1 + 32;
  v6 = a2 + 1;
  v100 = (a1 + (a2 << 6) + 64);
  while (1)
  {
    v101 = *(v100 - 2);
    if ((v101 & 0x6000000000000000) == 0x4000000000000000 && v101 == 0x4000000000000000 && (*(v100 - 1) | *v100 | *(v100 - 3) | *(v100 - 4)) == 0)
    {
      break;
    }

    ++v6;
    v100 += 8;
    if (v6 - v12 == 1)
    {
      goto LABEL_11;
    }
  }

  sub_240FE0990(&v185, v183);
  sub_24101D604();
  v177 = v13;

  if (v12 != v6)
  {
    v4 = v6;
    while (1)
    {
      v168 = v4;
      v103 = (v163 + (v4 << 6));
      v104 = v103[1];
      v179 = *v103;
      v180 = v104;
      *v181 = v103[2];
      *&v181[9] = *(v103 + 41);
      if ((v104 & 0x6000000000000000) != 0x2000000000000000)
      {
        break;
      }

      v172 = *(&v179 + 1);
      v174 = v179;
      v105 = *&v181[8];
      v106 = *&v181[16];
      v11 = v181[24];
      sub_241025690(&v179, v183);
      v107 = sub_241025748();
      v7 = MEMORY[0x245CD7300](1, &type metadata for InputOrigin.Element, v107);
      v108 = *(v7 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v105);
      v9 = v106;
      if (v11 == 1)
      {
        v109 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v109 = v106;
      }

      MEMORY[0x245CD7AE0](v109);
      v110 = sub_2410475E8();
      v111 = -1 << *(v7 + 32);
      v8 = v110 & ~v111;
      if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v112 = ~v111;
        v4 = 24;
        while (1)
        {
          v113 = *(v7 + 48) + 24 * v8;
          if ((*(v113 + 17) & 1) == 0 && *v113 == v105)
          {
            if (*(v113 + 16))
            {
              if (v11)
              {
                goto LABEL_155;
              }
            }

            else if ((v11 & 1) == 0 && *(v113 + 8) == v9)
            {
              goto LABEL_155;
            }
          }

          v8 = (v8 + 1) & v112;
          if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_133;
          }
        }
      }

      v4 = 24;
LABEL_133:
      v114 = swift_isUniquelyReferenced_nonNull_native();
      v184 = v7;
      v115 = *(v7 + 16);
      if (*(v7 + 24) <= v115)
      {
        if (v114)
        {
          sub_241032644(v115 + 1);
        }

        else
        {
          sub_2410338A0(v115 + 1);
        }

        v7 = v184;
        v116 = *(v184 + 40);
        sub_2410475A8();
        MEMORY[0x245CD7AE0](1);
        MEMORY[0x245CD7AE0](v105);
        if (v11)
        {
          v117 = 0;
        }

        else
        {
          MEMORY[0x245CD7AE0](1);
          v117 = v9;
        }

        MEMORY[0x245CD7AE0](v117);
        v118 = sub_2410475E8();
        v119 = -1 << *(v7 + 32);
        v8 = v118 & ~v119;
        if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          v120 = ~v119;
          v4 = 24;
          while (1)
          {
            v121 = *(v7 + 48) + 24 * v8;
            if ((*(v121 + 17) & 1) == 0 && *v121 == v105)
            {
              if (*(v121 + 16))
              {
                if (v11)
                {
                  goto LABEL_231;
                }
              }

              else if ((v11 & 1) == 0 && *(v121 + 8) == v9)
              {
                goto LABEL_231;
              }
            }

            v8 = (v8 + 1) & v120;
            if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_153;
            }
          }
        }

        v4 = 24;
      }

      else if ((v114 & 1) == 0)
      {
        sub_241033498();
        v4 = 24;
        v7 = v184;
      }

LABEL_153:
      *(v7 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v8;
      v122 = *(v7 + 48) + 24 * v8;
      *v122 = v105;
      *(v122 + 8) = v9;
      *(v122 + 16) = v11;
      *(v122 + 17) = 0;
      v123 = *(v7 + 16);
      v46 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v46)
      {
        goto LABEL_226;
      }

      *(v7 + 16) = v124;
LABEL_155:
      v125 = v201;
      (v166)(v7, 0, 0, 254, v174, v172, a4);
      v201 = v125;
      if (v125)
      {
        goto LABEL_214;
      }

      v4 = v168 + 1;

      sub_2410256EC(&v179);
      if (v168 + 1 == v12)
      {
        goto LABEL_157;
      }
    }

LABEL_230:
    __break(1u);
LABEL_231:
    result = sub_241047508();
    __break(1u);
    return result;
  }

LABEL_157:
  --v6;
  v13 = v177;

  sub_241025740();
  sub_240FF0CCC(&v185);
  v14 = v160;
  if (v6 < v10)
  {
    goto LABEL_158;
  }

LABEL_12:
  if (v12 < v6)
  {
    goto LABEL_221;
  }

  v4 = MEMORY[0x277D84F90];
  if (v6 != v10)
  {
    v75 = v13 + 32;
    v76 = v6 - 1;
    v77 = v10;
    do
    {
      v78 = (v75 + (v77 << 6));
      v9 = v77;
      while (1)
      {
        if (v77 < v10 || v9 >= v6)
        {
          goto LABEL_159;
        }

        *&v187[9] = *(v78 + 41);
        v79 = v78[1];
        v185 = *v78;
        v186 = v79;
        *v187 = v78[2];
        v11 = v9 + 1;
        if (v187[24])
        {
          break;
        }

        v78 += 4;
        ++v9;
        if (v6 == v11)
        {
          goto LABEL_14;
        }
      }

      v171 = v76;
      v174 = v75;
      v7 = v14;
      sub_241025690(&v185, v183);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v184 = v4;
      if ((v80 & 1) == 0)
      {
        sub_240FE41C0(0, *(v4 + 16) + 1, 1);
        v4 = v184;
      }

      v8 = *(v4 + 16);
      v81 = *(v4 + 24);
      if (v8 >= v81 >> 1)
      {
        sub_240FE41C0((v81 > 1), v8 + 1, 1);
        v4 = v184;
      }

      *(v4 + 16) = v8 + 1;
      v82 = (v4 + (v8 << 6));
      v83 = v185;
      v84 = v186;
      v85 = *v187;
      *(v82 + 73) = *&v187[9];
      v82[3] = v84;
      v82[4] = v85;
      v82[2] = v83;
      v77 = v9 + 1;
      v76 = v171;
      v75 = v174;
    }

    while (v171 != v9);
  }

LABEL_14:

  v26 = *(v4 + 16);
  *&v179 = v4;
  *(&v179 + 1) = v4 + 32;
  *&v180 = 0;
  *(&v180 + 1) = (2 * v26) | 1;
  if (!v26)
  {
  }

  v27 = v160;
  if (!*(v160 + 16))
  {
    goto LABEL_98;
  }

  v156 = *(v160 + 16);

  v28 = v156;
  v29 = v160 + 32;
  v30 = 0;
  v166 = (a3 + 32);
  v11 = MEMORY[0x277D84FA0];
  while (1)
  {
    v31 = (v29 + 192 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    *v187 = v31[2];
    *&v187[16] = v34;
    v185 = v32;
    v186 = v33;
    v35 = v31[4];
    v36 = v31[5];
    v37 = v31[7];
    v190 = v31[6];
    v191 = v37;
    v188 = v35;
    v189 = v36;
    v38 = v31[8];
    v39 = v31[9];
    v40 = v31[11];
    v194 = v31[10];
    v195 = v40;
    v192 = v38;
    v193 = v39;
    if (v30 == v28)
    {
      goto LABEL_217;
    }

    if (!v185)
    {
      v167 = BYTE1(v193);
      if ((BYTE1(v193) | 4) == 4)
      {
        break;
      }
    }

LABEL_19:
    ++v30;
    v41 = *(v27 + 16);
    if (v30 == v41)
    {
      v87 = v27;

      goto LABEL_97;
    }

    if (v30 >= v41)
    {
      goto LABEL_218;
    }
  }

  v155 = v30;
  if (BYTE8(v194) != 1)
  {
    __break(1u);
    goto LABEL_230;
  }

  v42 = v194;
  v43 = *(&v193 + 1);
  v162 = BYTE8(v185);
  sub_240FE0990(&v185, v183);
  v170 = v43;
  v174 = v42;
  sub_24101D604();
  while (1)
  {
    sub_24102300C(v167 == 4, &v179, v196);
    if ((v197 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
    {

      v87 = v160;

      sub_241025740();
      sub_240FF0CCC(&v185);
LABEL_97:
      v88 = *(v87 + 16);
      v89 = (v160 + 32);
      if (v88)
      {
        while (1)
        {
          v90 = *v89;
          v91 = v89[1];
          v92 = v89[3];
          *v187 = v89[2];
          *&v187[16] = v92;
          v185 = v90;
          v186 = v91;
          v93 = v89[4];
          v94 = v89[5];
          v95 = v89[7];
          v190 = v89[6];
          v191 = v95;
          v188 = v93;
          v189 = v94;
          v96 = v89[8];
          v97 = v89[9];
          v98 = v89[11];
          v194 = v89[10];
          v195 = v98;
          v192 = v96;
          v193 = v97;
          if (!v185 && (BYTE8(v185) & 2) != 0 && BYTE1(v193) == 6)
          {
            break;
          }

          v89 += 12;
          if (!--v88)
          {
            goto LABEL_98;
          }
        }

        if (BYTE8(v194) == 1)
        {
          v6 = *(&v193 + 1);
          v4 = v194;
          swift_beginAccess();
          v174 = *(&v179 + 1);
          v7 = v179;
          v8 = *(&v180 + 1);
          v10 = v180;
          if ((BYTE8(v180) & 1) == 0)
          {
            sub_240FE0990(&v185, v183);
            sub_24101D604();
            v9 = v8 >> 1;
            goto LABEL_107;
          }

          goto LABEL_160;
        }
      }

LABEL_98:

      return swift_unknownObjectRelease();
    }

    v10 = v198;
    v7 = v199;
    v9 = v200;
    sub_240FE07E8(v196, &qword_27E51F830, &qword_24104A550);
    if (v10 < 0)
    {
      break;
    }

    if (v10 >= *(a3 + 16))
    {
      goto LABEL_213;
    }

    v6 = v11;
    v48 = &v166[16 * v10];
    v49 = *v48;
    v50 = *(v48 + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51F3F8, &unk_241048020);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_241047BF0;
    *(v51 + 32) = v10;
    *(v51 + 40) = v7;
    *(v51 + 48) = v9 & 1;

    v8 = sub_24102AECC(v51);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v52 = v201;
    v170(v8, 0, 0, 254, v49, v50, a4);
    v201 = v52;
    if (v52)
    {

      sub_241025740();
      sub_240FF0CCC(&v185);

      goto LABEL_98;
    }

    v11 = v6;
    if (*(v6 + 16))
    {
      v53 = *(v6 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v10);
      if (v9)
      {
        v54 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v54 = v7;
      }

      MEMORY[0x245CD7AE0](v54);
      v4 = v183;
      v55 = sub_2410475E8();
      v56 = -1 << *(v6 + 32);
      v57 = v55 & ~v56;
      if ((*(v6 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        v58 = ~v56;
        do
        {
          v59 = *(v6 + 48) + 24 * v57;
          if ((*(v59 + 17) & 1) == 0 && *v59 == v10)
          {
            if (*(v59 + 16))
            {
              if (v9)
              {
                goto LABEL_29;
              }
            }

            else if ((v9 & 1) == 0 && *(v59 + 8) == v7)
            {
              goto LABEL_29;
            }
          }

          v57 = (v57 + 1) & v58;
        }

        while (((*(v6 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0);
      }
    }

    v60 = *(v6 + 40);
    sub_2410475A8();
    MEMORY[0x245CD7AE0](1);
    MEMORY[0x245CD7AE0](v10);
    if (v9)
    {
      v61 = 0;
    }

    else
    {
      MEMORY[0x245CD7AE0](1);
      v61 = v7;
    }

    MEMORY[0x245CD7AE0](v61);
    v4 = v183;
    v62 = sub_2410475E8();
    v63 = -1 << *(v6 + 32);
    v64 = v62 & ~v63;
    if ((*(v6 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
    {
      v65 = ~v63;
      do
      {
        v66 = *(v6 + 48) + 24 * v64;
        if ((*(v66 + 17) & 1) == 0 && *v66 == v10)
        {
          if (*(v66 + 16))
          {
            if (v9)
            {
              goto LABEL_29;
            }
          }

          else if ((v9 & 1) == 0 && *(v66 + 8) == v7)
          {
            goto LABEL_29;
          }
        }

        v64 = (v64 + 1) & v65;
      }

      while (((*(v6 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0);
    }

    v67 = swift_isUniquelyReferenced_nonNull_native();
    v184 = v6;
    v68 = *(v6 + 16);
    if (*(v6 + 24) > v68)
    {
      if ((v67 & 1) == 0)
      {
        v4 = &v184;
        sub_241033498();
        v11 = v184;
      }
    }

    else
    {
      if (v67)
      {
        sub_241032644(v68 + 1);
      }

      else
      {
        sub_2410338A0(v68 + 1);
      }

      v11 = v184;
      v69 = *(v184 + 40);
      sub_2410475A8();
      MEMORY[0x245CD7AE0](1);
      MEMORY[0x245CD7AE0](v10);
      if (v9)
      {
        v70 = 0;
      }

      else
      {
        MEMORY[0x245CD7AE0](1);
        v70 = v7;
      }

      MEMORY[0x245CD7AE0](v70);
      v4 = v183;
      v71 = sub_2410475E8();
      v72 = -1 << *(v11 + 32);
      v64 = v71 & ~v72;
      if ((*(v11 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64))
      {
        v73 = ~v72;
        do
        {
          v74 = *(v11 + 48) + 24 * v64;
          if ((*(v74 + 17) & 1) == 0 && *v74 == v10)
          {
            if (*(v74 + 16))
            {
              if (v9)
              {
                goto LABEL_231;
              }
            }

            else if ((v9 & 1) == 0 && *(v74 + 8) == v7)
            {
              goto LABEL_231;
            }
          }

          v64 = (v64 + 1) & v73;
        }

        while (((*(v11 + 56 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v64) & 1) != 0);
      }
    }

    *(v11 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v64;
    v44 = *(v11 + 48) + 24 * v64;
    *v44 = v10;
    *(v44 + 8) = v7;
    *(v44 + 16) = v9 & 1;
    v45 = *(v11 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    *(v11 + 16) = v47;
LABEL_29:
    if ((v162 & 2) == 0)
    {
      sub_241025740();
      sub_240FF0CCC(&v185);
      v27 = v160;
      v29 = v160 + 32;
      v28 = v156;
      v30 = v155;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:

  sub_241025740();

  sub_2410256EC(&v179);
  return sub_240FF0CCC(&v185);
}