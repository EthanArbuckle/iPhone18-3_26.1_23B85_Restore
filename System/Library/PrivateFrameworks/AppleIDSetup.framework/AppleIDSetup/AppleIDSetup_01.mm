uint64_t sub_2405937E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  switch(*v1)
  {
    case 1:
    case 2:
      v17 = type metadata accessor for AuthenticationModel.BindableState(0);
      sub_240594008(&v1[*(v17 + 20)], v6, type metadata accessor for AuthenticationModel.PreflightRepair);
      swift_storeEnumTagMultiPayload();
      break;
    case 4:
    case 5:
      v18 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 24)];
      v19 = *(v18 + 5);
      v68 = *(v18 + 4);
      v69 = v19;
      v70 = v18[96];
      v20 = v70;
      v21 = *(v18 + 3);
      v66 = *(v18 + 2);
      v22 = v66;
      v67 = v21;
      v23 = *(v18 + 1);
      v64 = *v18;
      v24 = v64;
      v65 = v23;
      *(v6 + 4) = v68;
      *(v6 + 5) = v19;
      *(v6 + 2) = v22;
      *(v6 + 3) = v21;
      v6[96] = v20;
      *v6 = v24;
      *(v6 + 1) = v23;
      swift_storeEnumTagMultiPayload();
      sub_2405AE958(&v64, v63);
      break;
    case 6:
    case 7:
      v29 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 28)];
      v30 = v29[3];
      v66 = v29[2];
      v67 = v30;
      v68 = v29[4];
      v31 = v68;
      v32 = v29[1];
      v64 = *v29;
      v33 = v64;
      v65 = v32;
      *(v6 + 2) = v66;
      *(v6 + 3) = v30;
      *(v6 + 4) = v31;
      *v6 = v33;
      *(v6 + 1) = v32;
      swift_storeEnumTagMultiPayload();
      sub_2405AE9EC(&v64, v63);
      break;
    case 8:
      v45 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 32)];
      v46 = v45[3];
      v66 = v45[2];
      v67 = v46;
      v68 = v45[4];
      v47 = v68;
      v48 = v45[1];
      v64 = *v45;
      v49 = v64;
      v65 = v48;
      *(v6 + 2) = v66;
      *(v6 + 3) = v46;
      *(v6 + 4) = v47;
      *v6 = v49;
      *(v6 + 1) = v48;
      swift_storeEnumTagMultiPayload();
      sub_2405AEA24(&v64, v63);
      break;
    case 9:
    case 0xA:
      v34 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 36)];
      v35 = *v34;
      v36 = *(v34 + 1);
      v37 = *(v34 + 2);
      v38 = *(v34 + 3);
      v39 = *(v34 + 4);
      *v6 = *v34;
      *(v6 + 1) = v36;
      *(v6 + 2) = v37;
      *(v6 + 3) = v38;
      *(v6 + 4) = v39;
      swift_storeEnumTagMultiPayload();
      v40 = v39;
      v41 = v35;
      v42 = v36;
      v43 = v37;
      v44 = v38;
      break;
    case 0xB:
      v7 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 40)];
      v8 = *v7;
      v9 = *(v7 + 1);
      v10 = *(v7 + 2);
      v11 = *(v7 + 3);
      *v6 = *v7;
      *(v6 + 1) = v9;
      *(v6 + 2) = v10;
      *(v6 + 3) = v11;
      goto LABEL_5;
    case 0xC:
      v12 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 44)];
      v8 = *v12;
      v9 = *(v12 + 1);
      v10 = *(v12 + 2);
      v11 = *(v12 + 3);
      *v6 = *v12;
      *(v6 + 1) = v9;
      *(v6 + 2) = v10;
      *(v6 + 3) = v11;
LABEL_5:
      swift_storeEnumTagMultiPayload();
      v13 = v11;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      break;
    case 0xD:
      v25 = &v1[*(type metadata accessor for AuthenticationModel.BindableState(0) + 48)];
      v26 = *(v25 + 2);
      v27 = v25[24];
      v62 = *v25;
      *v6 = v62;
      *(v6 + 2) = v26;
      v6[24] = v27;
      swift_storeEnumTagMultiPayload();
      v28 = v62;

      break;
    default:
      swift_storeEnumTagMultiPayload();
      break;
  }

  sub_2405AE39C(v6, a1, type metadata accessor for AuthenticationModel.State);
  result = type metadata accessor for AuthenticationModel.BindableState(0);
  v51 = result;
  if (v1[*(result + 56)] == 1)
  {
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
    v53 = swift_allocBox();
    v55 = v54;
    v56 = *(v52 + 48);
    v57 = &v1[*(v51 + 52)];
    v58 = v57[4];
    v67 = v57[3];
    v68 = v58;
    LOWORD(v69) = *(v57 + 40);
    v59 = v57[1];
    v66 = v57[2];
    v64 = *v57;
    v65 = v59;
    memmove(v55, v57, 0x52uLL);
    sub_2405AE39C(a1, v55 + v56, type metadata accessor for AuthenticationModel.State);
    *a1 = v53;
    swift_storeEnumTagMultiPayload();
    return sub_2405AE2A4(&v64, v63);
  }

  else if (v1[*(result + 60)] == 1)
  {
    v60 = swift_allocBox();
    sub_2405AE39C(a1, v61, type metadata accessor for AuthenticationModel.State);
    *a1 = v60;
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_240593D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void (*AuthenticationModel.bindableState.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for AuthenticationModel.BindableState(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    *(a1 + 8) = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *(a1 + 8) = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  *(a1 + 16) = v4;
  *(a1 + 24) = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240590E6C(v5);
  return sub_240593EC0;
}

void sub_240593EC0(uint64_t *a1, char a2)
{
  v2 = *(a1 + 6);
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a1;
  if (a2)
  {
    sub_240594008(a1[2], v3, type metadata accessor for AuthenticationModel.BindableState);
    sub_240593D7C(v5 + v2, type metadata accessor for AuthenticationModel.State);
    sub_2405937E0((v5 + v2));
    sub_240593D7C(v3, type metadata accessor for AuthenticationModel.BindableState);
  }

  else
  {
    sub_240593D7C(v5 + v2, type metadata accessor for AuthenticationModel.State);
    sub_2405937E0((v5 + v2));
  }

  sub_240593D7C(v4, type metadata accessor for AuthenticationModel.BindableState);
  free(v4);

  free(v3);
}

uint64_t sub_240594008(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240594104@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AuthenticationModel(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2405B8B4C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_24057B5BC(v4);
}

uint64_t sub_240594198(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2405B8928;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for AuthenticationModel(0) + 44));
  v8 = *v7;
  v9 = v7[1];
  sub_24057B5BC(v3);
  result = sub_24058CA60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t AuthenticationModel.contextModifier.getter()
{
  v1 = (v0 + *(type metadata accessor for AuthenticationModel(0) + 44));
  v2 = *v1;
  v3 = v1[1];
  sub_24057B5BC(*v1);
  return v2;
}

uint64_t AuthenticationModel.contextModifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AuthenticationModel(0) + 44));
  v6 = v5[1];
  result = sub_24058CA60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AuthenticationModel.init(account:userInteraction:state:idmsData:supportsSplitAccounts:currentServices:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a2;
  v14 = type metadata accessor for IdMSAccount();
  (*(*(v14 - 8) + 56))(a8, 1, 1, v14);
  v15 = type metadata accessor for AuthenticationModel(0);
  v16 = (a8 + v15[5]);
  v16[3] = 0u;
  v16[4] = 0u;
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  v17 = v15[8];
  v18 = (a8 + v15[7]);
  v19 = v15[9];
  v20 = (a8 + v15[11]);
  *v20 = 0;
  v20[1] = 0;
  sub_240590814(a1, a8);
  *(a8 + v15[6]) = v13;
  result = sub_2405AE39C(a3, a8 + v15[10], type metadata accessor for AuthenticationModel.State);
  *v18 = a4;
  v18[1] = a5;
  *(a8 + v19) = a6;
  *(a8 + v17) = a7;
  return result;
}

uint64_t sub_240594458()
{
  sub_24075AE64();
  sub_24075A114();

  return sub_24075AED4();
}

uint64_t sub_240594578()
{
  *v0;
  *v0;
  *v0;
  sub_24075A114();
}

uint64_t sub_240594688@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2405AC514();
  *a2 = result;
  return result;
}

void sub_2405946B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E756F636361;
  v5 = 0xE800000000000000;
  v6 = 0x61746144736D6469;
  v7 = 0x8000000240785DD0;
  v8 = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0x53746E6572727563;
    v7 = 0xEF73656369767265;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF6E6F6974636172;
  v10 = 0x65746E4972657375;
  if (v2 != 1)
  {
    v10 = 0x6574617473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_240594790()
{
  v1 = *v0;
  v2 = 0x746E756F636361;
  v3 = 0x61746144736D6469;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x53746E6572727563;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65746E4972657375;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
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

uint64_t sub_240594864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2405AC514();
  *a1 = result;
  return result;
}

uint64_t sub_24059488C(uint64_t a1)
{
  v2 = sub_240594C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405948C8(uint64_t a1)
{
  v2 = sub_240594C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6428, &unk_24075D920);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240594C94();
  sub_24075AF74();
  LOBYTE(v15) = 0;
  type metadata accessor for IdMSAccount();
  sub_240594D3C(&qword_27E4B6438, type metadata accessor for IdMSAccount);
  sub_24075AB94();
  if (!v2)
  {
    v11 = type metadata accessor for AuthenticationModel(0);
    LOBYTE(v15) = *(v3 + v11[6]);
    v16 = 1;
    sub_240594CE8();
    sub_24075ABE4();
    v12 = v11[10];
    LOBYTE(v15) = 2;
    type metadata accessor for AuthenticationModel.State(0);
    sub_240594D3C(&qword_27E4B6448, type metadata accessor for AuthenticationModel.State);
    sub_24075ABE4();
    v15 = *(v3 + v11[7]);
    v16 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6450, &qword_24076F340);
    sub_2405B0778(&qword_27E4B6458, &qword_27E4B6450, &qword_24076F340);
    sub_24075ABE4();
    v13 = *(v3 + v11[9]);
    LOBYTE(v15) = 4;
    sub_24075ABC4();
    *&v15 = *(v3 + v11[8]);
    v16 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    sub_24059532C(&qword_27E4B6468, &qword_27E4B6470);
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_240594C94()
{
  result = qword_27E4B6430;
  if (!qword_27E4B6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6430);
  }

  return result;
}

unint64_t sub_240594CE8()
{
  result = qword_27E4B6440;
  if (!qword_27E4B6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6440);
  }

  return result;
}

uint64_t sub_240594D3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AuthenticationModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for AuthenticationModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6478, &qword_24075D938);
  v11 = *(v42 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v42);
  v14 = &v35 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_240594C94();
  v17 = v43;
  sub_24075AF34();
  if (!v17)
  {
    v18 = v6;
    v19 = type metadata accessor for IdMSAccount();
    v52 = 0;
    sub_240594D3C(&qword_27E4B6480, type metadata accessor for IdMSAccount);
    v20 = v42;
    sub_24075AAA4();
    v50 = 1;
    sub_2405952D8();
    sub_24075AAF4();
    v22 = v51;
    v49 = 2;
    sub_240594D3C(&qword_27E4B6490, type metadata accessor for AuthenticationModel.State);
    sub_24075AAF4();
    v48 = 3;
    v23 = sub_24075AA74();
    v25 = v24;
    v43 = v23;
    v47 = 4;
    v39 = sub_24075AAD4();
    v40 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    v46 = 5;
    sub_24059532C(&qword_27E4B6498, &qword_27E4B64A0);
    sub_24075AAF4();
    v38 = v45;
    v26 = *(*(v19 - 8) + 56);
    v37 = v25;
    v27 = v41;
    v26(v41, 1, 1, v19);
    v28 = type metadata accessor for AuthenticationModel(0);
    v29 = (v27 + v28[5]);
    v29[3] = 0u;
    v29[4] = 0u;
    v29[1] = 0u;
    v29[2] = 0u;
    *v29 = 0u;
    v30 = v28[7];
    v36 = v28[8];
    v31 = (v27 + v30);
    (*(v11 + 8))(v14, v20);
    v32 = v28[9];
    v33 = (v27 + v28[11]);
    *v33 = 0;
    v33[1] = 0;
    sub_240590814(v10, v27);
    *(v27 + v28[6]) = v40;
    sub_2405AE39C(v18, v27 + v28[10], type metadata accessor for AuthenticationModel.State);
    v34 = v37;
    *v31 = v43;
    v31[1] = v34;
    *(v27 + v32) = v39 & 1;
    *(v27 + v36) = v38;
  }

  return __swift_destroy_boxed_opaque_existential_1(v44);
}

unint64_t sub_2405952D8()
{
  result = qword_27E4B6488;
  if (!qword_27E4B6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B6488);
  }

  return result;
}

uint64_t sub_24059532C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B6460, &qword_24075D930);
    sub_240594D3C(a2, type metadata accessor for AIDAServiceType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static AuthenticationModel.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v209 = a1;
  *&v210 = a2;
  v199 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v2 = *(*(v199 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v199);
  v197 = &v192 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v193 = &v192 - v5;
  v6 = type metadata accessor for AuthenticationModel.State(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v195 = &v192 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v194 = &v192 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v205 = (&v192 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v196 = &v192 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v198 = &v192 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v200 = (&v192 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v201 = &v192 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (&v192 - v23);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v192 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v192 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v192 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v204 = (&v192 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v202 = (&v192 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v192 - v39);
  v41 = MEMORY[0x28223BE20](v38);
  v206 = &v192 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v203 = &v192 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v208 = &v192 - v46;
  MEMORY[0x28223BE20](v45);
  v207 = &v192 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64A8, &unk_24075D940);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x28223BE20](v48 - 8);
  v52 = &v192 - v51;
  v53 = &v192 + *(v50 + 56) - v51;
  sub_240594008(v209, &v192 - v51, type metadata accessor for AuthenticationModel.State);
  v54 = v210;
  *&v210 = v53;
  sub_240594008(v54, v53, type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v55 = v208;
      sub_240594008(v52, v208, type metadata accessor for AuthenticationModel.State);
      v141 = v210;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_30;
      }

      v57 = v52;
      v58 = v141;
      v59 = v197;
      goto LABEL_26;
    case 2u:
      v109 = v203;
      sub_240594008(v52, v203, type metadata accessor for AuthenticationModel.State);
      v110 = *(v109 + 80);
      v236 = *(v109 + 64);
      v237 = v110;
      v238 = *(v109 + 96);
      v111 = *(v109 + 16);
      v232 = *v109;
      v233 = v111;
      v112 = *(v109 + 48);
      v234 = *(v109 + 32);
      v235 = v112;
      v113 = v210;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    case 3u:
      v109 = v206;
      sub_240594008(v52, v206, type metadata accessor for AuthenticationModel.State);
      v125 = *(v109 + 80);
      v236 = *(v109 + 64);
      v237 = v125;
      v238 = *(v109 + 96);
      v126 = *(v109 + 16);
      v232 = *v109;
      v233 = v126;
      v127 = *(v109 + 48);
      v234 = *(v109 + 32);
      v235 = v127;
      v113 = v210;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_16:
        v114 = v113[3];
        v115 = v113[5];
        v229 = v113[4];
        v230 = v115;
        v116 = v113[1];
        v225 = *v113;
        v226 = v116;
        v117 = v113[3];
        v119 = *v113;
        v118 = v113[1];
        v227 = v113[2];
        v228 = v117;
        v120 = *(v109 + 80);
        v222 = *(v109 + 64);
        v223 = v120;
        v121 = *(v109 + 16);
        v218 = *v109;
        v219 = v121;
        v122 = *(v109 + 48);
        v220 = *(v109 + 32);
        v221 = v122;
        v123 = v113[5];
        v215 = v229;
        v216 = v123;
        v211 = v119;
        v212 = v118;
        v231 = *(v113 + 96);
        v224 = *(v109 + 96);
        v217 = *(v113 + 96);
        v213 = v227;
        v214 = v114;
        v69 = _s12AppleIDSetup19AuthenticationModelV10BasicLoginV2eeoiySbAE_AEtFZ_0(&v218, &v211);
        sub_2405AE36C(&v225);
        sub_2405AE36C(&v232);
        goto LABEL_39;
      }

LABEL_21:
      sub_2405AE36C(&v232);
      goto LABEL_57;
    case 4u:
      sub_240594008(v52, v40, type metadata accessor for AuthenticationModel.State);
      v70 = v40[3];
      v234 = v40[2];
      v235 = v70;
      v236 = v40[4];
      v71 = v40[1];
      v232 = *v40;
      v233 = v71;
      v72 = v210;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_40;
      }

      v73 = v72[1];
      v75 = v72[2];
      v74 = v72[3];
      v227 = v75;
      v228 = v74;
      v76 = v72[3];
      v229 = v72[4];
      v77 = v72[1];
      v78 = *v72;
      v225 = *v72;
      v226 = v77;
      v79 = v40[3];
      v220 = v40[2];
      v221 = v79;
      v222 = v40[4];
      v81 = *v40;
      v80 = v40[1];
      goto LABEL_38;
    case 5u:
      v142 = v202;
      sub_240594008(v52, v202, type metadata accessor for AuthenticationModel.State);
      v143 = v142[3];
      v234 = v142[2];
      v235 = v143;
      v236 = v142[4];
      v144 = v142[1];
      v232 = *v142;
      v233 = v144;
      v145 = v210;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v146 = v145[1];
        v147 = v145[3];
        v227 = v145[2];
        v228 = v147;
        v148 = v145[3];
        v229 = v145[4];
        v149 = v145[1];
        v225 = *v145;
        v226 = v149;
        v150 = v142[3];
        v220 = v142[2];
        v221 = v150;
        v222 = v142[4];
        v151 = v142[1];
        v218 = *v142;
        v219 = v151;
        v213 = v227;
        v214 = v148;
        v215 = v145[4];
        v211 = v225;
        v212 = v146;
        v69 = sub_2405AD0D8(&v218, &v211);
        sub_2405AE33C(&v225);
        sub_2405AE33C(&v232);
        goto LABEL_39;
      }

      sub_2405AE33C(&v232);
      goto LABEL_57;
    case 6u:
      v161 = v204;
      sub_240594008(v52, v204, type metadata accessor for AuthenticationModel.State);
      v162 = v161[3];
      v234 = v161[2];
      v235 = v162;
      v236 = v161[4];
      v163 = v161[1];
      v232 = *v161;
      v233 = v163;
      v72 = v210;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_40:
        sub_2405AE30C(&v232);
        goto LABEL_57;
      }

      v73 = v72[1];
      v75 = v72[2];
      v164 = v72[3];
      v227 = v75;
      v228 = v164;
      v76 = v72[3];
      v229 = v72[4];
      v165 = v72[1];
      v78 = *v72;
      v225 = *v72;
      v226 = v165;
      v166 = v161[3];
      v220 = v161[2];
      v221 = v166;
      v222 = v161[4];
      v81 = *v161;
      v80 = v161[1];
LABEL_38:
      v218 = v81;
      v219 = v80;
      v213 = v75;
      v214 = v76;
      v215 = v72[4];
      v211 = v78;
      v212 = v73;
      v69 = sub_2405AD0D8(&v218, &v211);
      sub_2405AE30C(&v225);
      sub_2405AE30C(&v232);
LABEL_39:
      sub_240593D7C(v52, type metadata accessor for AuthenticationModel.State);
      return v69 & 1;
    case 7u:
      sub_240594008(v52, v33, type metadata accessor for AuthenticationModel.State);
      v129 = *v33;
      v128 = v33[1];
      v130 = v33[2];
      v131 = v33[3];
      v132 = v33[4];
      v133 = v210;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v134 = *v133;
        v135 = *(v133 + 8);
        v136 = v131;
        v207 = v131;
        v208 = v132;
        v137 = v132;
        v139 = *(v133 + 16);
        v138 = *(v133 + 24);
        v209 = v52;
        v140 = *(v133 + 32);
        *&v232 = v129;
        *(&v232 + 1) = v128;
        *&v233 = v130;
        *(&v233 + 1) = v136;
        *&v234 = v137;
        *&v225 = v134;
        *(&v225 + 1) = v135;
        *&v226 = v139;
        *(&v226 + 1) = v138;
        *&v227 = v140;
        v69 = _s12AppleIDSetup19AuthenticationModelV14ServerRedirectV2eeoiySbAE_AEtFZ_0(&v232, &v225);

        goto LABEL_46;
      }

      goto LABEL_56;
    case 8u:
      sub_240594008(v52, v30, type metadata accessor for AuthenticationModel.State);
      v175 = *v30;
      v174 = v30[1];
      v176 = v30[2];
      v131 = v30[3];
      v132 = v30[4];
      v177 = v210;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v178 = *v177;
        v179 = *(v177 + 8);
        v180 = v131;
        v207 = v131;
        v208 = v132;
        v181 = v132;
        v183 = *(v177 + 16);
        v182 = *(v177 + 24);
        v209 = v52;
        v184 = *(v177 + 32);
        *&v232 = v175;
        *(&v232 + 1) = v174;
        *&v233 = v176;
        *(&v233 + 1) = v180;
        *&v234 = v181;
        *&v225 = v178;
        *(&v225 + 1) = v179;
        *&v226 = v183;
        *(&v226 + 1) = v182;
        *&v227 = v184;
        v69 = _s12AppleIDSetup19AuthenticationModelV14ServerRedirectV2eeoiySbAE_AEtFZ_0(&v232, &v225);

LABEL_46:
        goto LABEL_47;
      }

LABEL_56:
      goto LABEL_57;
    case 9u:
      sub_240594008(v52, v27, type metadata accessor for AuthenticationModel.State);
      v100 = *v27;
      v99 = v27[1];
      v101 = v52;
      v103 = v27[2];
      v102 = v27[3];
      v104 = v210;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v209 = v101;
        v105 = *v104;
        v106 = *(v104 + 8);
        v107 = *(v104 + 16);
        v108 = *(v104 + 24);
        *&v232 = v100;
        *(&v232 + 1) = v99;
        *&v233 = v103;
        *(&v233 + 1) = v102;
        *&v225 = v105;
        *(&v225 + 1) = v106;
        *&v226 = v107;
        *(&v226 + 1) = v108;
        v69 = _s12AppleIDSetup19AuthenticationModelV14NativeRecoveryV2eeoiySbAE_AEtFZ_0(&v232, &v225);

        goto LABEL_43;
      }

      v52 = v101;
      goto LABEL_57;
    case 0xAu:
      sub_240594008(v52, v24, type metadata accessor for AuthenticationModel.State);
      v167 = *v24;
      v99 = v24[1];
      v168 = v52;
      v103 = v24[2];
      v102 = v24[3];
      v169 = v210;
      if (swift_getEnumCaseMultiPayload() != 10)
      {

        v52 = v168;
        goto LABEL_57;
      }

      v209 = v168;
      v170 = *v169;
      v171 = *(v169 + 8);
      v172 = *(v169 + 16);
      v173 = *(v169 + 24);
      *&v232 = v167;
      *(&v232 + 1) = v99;
      *&v233 = v103;
      *(&v233 + 1) = v102;
      *&v225 = v170;
      *(&v225 + 1) = v171;
      *&v226 = v172;
      *(&v226 + 1) = v173;
      v69 = _s12AppleIDSetup19AuthenticationModelV13FidoChallengeV2eeoiySbAE_AEtFZ_0(&v232, &v225);

LABEL_43:
LABEL_47:
      sub_240593D7C(v209, type metadata accessor for AuthenticationModel.State);
      return v69 & 1;
    case 0xBu:
      v60 = v201;
      sub_240594008(v52, v201, type metadata accessor for AuthenticationModel.State);
      v61 = *v60;
      v62 = *(v60 + 16);
      v63 = v210;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v64 = *(v60 + 24);
        v65 = *(v60 + 8);
        v66 = v52;
        v67 = *(v63 + 2);
        v68 = *(v63 + 24);
        *&v232 = v61;
        *(&v232 + 1) = v65;
        *&v233 = v62;
        BYTE8(v233) = v64;
        v210 = *v63;
        v225 = v210;
        *&v226 = v67;
        BYTE8(v226) = v68;
        v69 = _s12AppleIDSetup19AuthenticationModelV9KeepUsingV2eeoiySbAE_AEtFZ_0(&v232, &v225);

        sub_240593D7C(v66, type metadata accessor for AuthenticationModel.State);
        return v69 & 1;
      }

      goto LABEL_57;
    case 0xCu:
      v82 = v52;
      v83 = v200;
      sub_240594008(v52, v200, type metadata accessor for AuthenticationModel.State);
      v84 = *v83;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v86 = swift_projectBox();
      v234 = *(v86 + 32);
      v235 = *(v86 + 48);
      v236 = *(v86 + 64);
      LOWORD(v237) = *(v86 + 80);
      v232 = *v86;
      v233 = *(v86 + 16);
      v87 = v210;
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        v52 = v82;
        goto LABEL_57;
      }

      v88 = *(v85 + 48);
      v89 = *v87;
      v90 = swift_projectBox();
      v91 = *(v90 + 16);
      v225 = *v90;
      v226 = v91;
      v93 = *(v90 + 48);
      v92 = *(v90 + 64);
      v94 = *(v90 + 32);
      LOWORD(v230) = *(v90 + 80);
      v228 = v93;
      v229 = v92;
      v227 = v94;
      v95 = v198;
      sub_240594008(v86 + v88, v198, type metadata accessor for AuthenticationModel.State);
      v96 = v90 + v88;
      v97 = v196;
      sub_240594008(v96, v196, type metadata accessor for AuthenticationModel.State);
      v220 = v234;
      v221 = v235;
      v222 = v236;
      LOWORD(v223) = v237;
      v218 = v232;
      v219 = v233;
      v213 = v227;
      v214 = v228;
      v215 = v229;
      LOWORD(v216) = v230;
      v211 = v225;
      v212 = v226;
      sub_2405AE2A4(&v225, v239);
      if (_s12AppleIDSetup19AuthenticationModelV5AlertV2eeoiySbAE_AEtFZ_0(&v218, &v211))
      {
        v69 = static AuthenticationModel.State.== infix(_:_:)(v95, v97);
        sub_2405AE2DC(&v225);
        sub_240593D7C(v97, type metadata accessor for AuthenticationModel.State);
        sub_240593D7C(v95, type metadata accessor for AuthenticationModel.State);

        v98 = v82;
        goto LABEL_35;
      }

      sub_2405AE2DC(&v225);
      sub_240593D7C(v97, type metadata accessor for AuthenticationModel.State);
      sub_240593D7C(v95, type metadata accessor for AuthenticationModel.State);

      sub_240593D7C(v82, type metadata accessor for AuthenticationModel.State);
      goto LABEL_58;
    case 0xDu:
      v152 = v205;
      sub_240594008(v52, v205, type metadata accessor for AuthenticationModel.State);
      v153 = *v152;
      v154 = v210;
      if (swift_getEnumCaseMultiPayload() != 13)
      {

        goto LABEL_57;
      }

      v155 = swift_projectBox();
      v156 = v52;
      v157 = *v154;
      v158 = swift_projectBox();
      v159 = v194;
      sub_240594008(v155, v194, type metadata accessor for AuthenticationModel.State);
      v160 = v195;
      sub_240594008(v158, v195, type metadata accessor for AuthenticationModel.State);
      v69 = static AuthenticationModel.State.== infix(_:_:)(v159, v160);
      sub_240593D7C(v160, type metadata accessor for AuthenticationModel.State);
      sub_240593D7C(v159, type metadata accessor for AuthenticationModel.State);

      v98 = v156;
LABEL_35:
      sub_240593D7C(v98, type metadata accessor for AuthenticationModel.State);
      return v69 & 1;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_57;
      }

      goto LABEL_18;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_57;
      }

LABEL_18:
      v124 = v52;
      goto LABEL_19;
    default:
      v55 = v207;
      sub_240594008(v52, v207, type metadata accessor for AuthenticationModel.State);
      v56 = v210;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_30:
        sub_240593D7C(v55, type metadata accessor for AuthenticationModel.PreflightRepair);
LABEL_57:
        sub_2405B8A50(v52, &qword_27E4B64A8, &unk_24075D940);
        goto LABEL_58;
      }

      v57 = v52;
      v58 = v56;
      v59 = v193;
LABEL_26:
      sub_2405AE39C(v58, v59, type metadata accessor for AuthenticationModel.PreflightRepair);
      if ((_s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v55, v59) & 1) == 0 || *(v55 + *(v199 + 20)) != *(v59 + *(v199 + 20)))
      {
        goto LABEL_28;
      }

      v186 = *(v199 + 24);
      v187 = *(v55 + v186);
      v188 = *(v59 + v186);
      if (!v187)
      {
        if (!v188)
        {
          sub_240593D7C(v59, type metadata accessor for AuthenticationModel.PreflightRepair);
          goto LABEL_67;
        }

        goto LABEL_28;
      }

      if (!v188)
      {
LABEL_28:
        sub_240593D7C(v59, type metadata accessor for AuthenticationModel.PreflightRepair);
LABEL_29:
        sub_240593D7C(v55, type metadata accessor for AuthenticationModel.PreflightRepair);
        sub_240593D7C(v57, type metadata accessor for AuthenticationModel.State);
LABEL_58:
        v69 = 0;
        return v69 & 1;
      }

      sub_240590794(0, &qword_27E4B63F0, 0x277CCA9B8);
      v189 = v188;
      v190 = v187;
      v191 = sub_24075A6D4();

      sub_240593D7C(v59, type metadata accessor for AuthenticationModel.PreflightRepair);
      if ((v191 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_67:
      sub_240593D7C(v55, type metadata accessor for AuthenticationModel.PreflightRepair);
      v124 = v57;
LABEL_19:
      sub_240593D7C(v124, type metadata accessor for AuthenticationModel.State);
      v69 = 1;
      return v69 & 1;
  }
}

uint64_t AuthenticationModel.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IdMSAccount();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  sub_2405B044C(v2, &v24 - v11, &qword_27E4B6418, &unk_24075D910);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_24075AE94();
  }

  else
  {
    sub_2405AE39C(v12, v8, type metadata accessor for IdMSAccount);
    sub_24075AE94();
    IdMSAccount.hash(into:)(a1);
    sub_240593D7C(v8, type metadata accessor for IdMSAccount);
  }

  v13 = type metadata accessor for AuthenticationModel(0);
  MEMORY[0x245CC6BA0](*(v2 + v13[6]));
  v14 = v2 + v13[10];
  AuthenticationModel.State.hash(into:)(a1);
  v15 = (v2 + v13[7]);
  if (v15[1])
  {
    v16 = *v15;
    sub_24075AE94();
    sub_24075A114();
  }

  else
  {
    sub_24075AE94();
  }

  v17 = *(v2 + v13[9]);
  sub_24075AE94();
  v18 = *(v2 + v13[8]);
  result = MEMORY[0x245CC6BA0](*(v18 + 16));
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = (v18 + 32);
    do
    {
      v22 = *v21++;
      sub_24075A0B4();
      v23 = v22;
      sub_24075A114();

      --v20;
    }

    while (v20);
  }

  return result;
}

unint64_t sub_240596830(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x6867696C66657270;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 7369331;
      break;
    case 4:
      result = 0x676F4C6369736162;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6146646E6F636573;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6552726576726573;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x655265766974616ELL;
      break;
    case 12:
      result = 0x6C6168436F646966;
      break;
    case 13:
      result = 0x6E6973557065656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_240596A00(uint64_t a1)
{
  v2 = sub_2405AE74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596A3C(uint64_t a1)
{
  v2 = sub_2405AE74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B69D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240596AB4(uint64_t a1)
{
  v2 = sub_2405AE404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596AF0(uint64_t a1)
{
  v2 = sub_2405AE404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596B2C(uint64_t a1)
{
  v2 = sub_2405AE6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596B68(uint64_t a1)
{
  v2 = sub_2405AE6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596BA4(uint64_t a1)
{
  v2 = sub_2405AE7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596BE0(uint64_t a1)
{
  v2 = sub_2405AE7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596C1C(uint64_t a1)
{
  v2 = sub_2405AE650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596C58(uint64_t a1)
{
  v2 = sub_2405AE650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596C94(uint64_t a1)
{
  v2 = sub_2405AE554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596CD0(uint64_t a1)
{
  v2 = sub_2405AE554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596D0C(uint64_t a1)
{
  v2 = sub_2405AE4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596D48(uint64_t a1)
{
  v2 = sub_2405AE4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596D84(uint64_t a1)
{
  v2 = sub_2405AE89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596DC0(uint64_t a1)
{
  v2 = sub_2405AE89C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596DFC(uint64_t a1)
{
  v2 = sub_2405AE458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596E38(uint64_t a1)
{
  v2 = sub_2405AE458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596E74(uint64_t a1)
{
  v2 = sub_2405AE500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596EB0(uint64_t a1)
{
  v2 = sub_2405AE500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596EEC(uint64_t a1)
{
  v2 = sub_2405AE848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596F28(uint64_t a1)
{
  v2 = sub_2405AE848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596F64(uint64_t a1)
{
  v2 = sub_2405AE5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240596FA0(uint64_t a1)
{
  v2 = sub_2405AE5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240596FDC(uint64_t a1)
{
  v2 = sub_2405AE6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240597018(uint64_t a1)
{
  v2 = sub_2405AE6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_240597054(uint64_t a1)
{
  v2 = sub_2405AE5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240597090(uint64_t a1)
{
  v2 = sub_2405AE5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405970CC(uint64_t a1)
{
  v2 = sub_2405AE7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240597108(uint64_t a1)
{
  v2 = sub_2405AE7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BindableState.Substate.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B8, &qword_24075D950);
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x28223BE20](v4);
  v96 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64C0, &qword_24075D958);
  v94 = *(v7 - 8);
  v95 = v7;
  v8 = *(v94 + 64);
  MEMORY[0x28223BE20](v7);
  v93 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64C8, &qword_24075D960);
  v91 = *(v10 - 8);
  v92 = v10;
  v11 = *(v91 + 64);
  MEMORY[0x28223BE20](v10);
  v90 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64D0, &qword_24075D968);
  v88 = *(v13 - 8);
  v89 = v13;
  v14 = *(v88 + 64);
  MEMORY[0x28223BE20](v13);
  v87 = &v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64D8, &qword_24075D970);
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  MEMORY[0x28223BE20](v16);
  v84 = &v60 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64E0, &qword_24075D978);
  v82 = *(v19 - 8);
  v83 = v19;
  v20 = *(v82 + 64);
  MEMORY[0x28223BE20](v19);
  v81 = &v60 - v21;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64E8, &qword_24075D980);
  v79 = *(v80 - 8);
  v22 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v78 = &v60 - v23;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64F0, &qword_24075D988);
  v76 = *(v77 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v60 - v25;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64F8, &qword_24075D990);
  v73 = *(v74 - 8);
  v26 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v72 = &v60 - v27;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6500, &qword_24075D998);
  v70 = *(v71 - 8);
  v28 = *(v70 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v60 - v29;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6508, &qword_24075D9A0);
  v67 = *(v68 - 8);
  v30 = *(v67 + 64);
  MEMORY[0x28223BE20](v68);
  v66 = &v60 - v31;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6510, &qword_24075D9A8);
  v64 = *(v65 - 8);
  v32 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = &v60 - v33;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6518, &qword_24075D9B0);
  v61 = *(v62 - 8);
  v34 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v36 = &v60 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6520, &qword_24075D9B8);
  v60 = *(v37 - 8);
  v38 = *(v60 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v60 - v39;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6528, &qword_24075D9C0);
  v41 = *(v100 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v100);
  v44 = &v60 - v43;
  v45 = *v2;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AE404();
  v99 = v44;
  sub_24075AF74();
  v47 = (v41 + 8);
  switch(v45)
  {
    case 1:
      v102 = 1;
      sub_2405AE848();
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v61 + 8))(v36, v62);
      return (*v47)(v48, v49);
    case 2:
      v103 = 2;
      sub_2405AE7F4();
      v54 = v63;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v64 + 8))(v54, v65);
      return (*v47)(v48, v49);
    case 3:
      v104 = 3;
      sub_2405AE7A0();
      v55 = v66;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v67 + 8))(v55, v68);
      return (*v47)(v48, v49);
    case 4:
      v105 = 4;
      sub_2405AE74C();
      v53 = v69;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v70 + 8))(v53, v71);
      return (*v47)(v48, v49);
    case 5:
      v106 = 5;
      sub_2405AE6F8();
      v57 = v72;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v73 + 8))(v57, v74);
      return (*v47)(v48, v49);
    case 6:
      v107 = 6;
      sub_2405AE6A4();
      v58 = v75;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v76 + 8))(v58, v77);
      return (*v47)(v48, v49);
    case 7:
      v108 = 7;
      sub_2405AE650();
      v56 = v78;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v79 + 8))(v56, v80);
      return (*v47)(v48, v49);
    case 8:
      v109 = 8;
      sub_2405AE5FC();
      v50 = v81;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      v52 = v82;
      v51 = v83;
      goto LABEL_16;
    case 9:
      v110 = 9;
      sub_2405AE5A8();
      v50 = v84;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      v52 = v85;
      v51 = v86;
      goto LABEL_16;
    case 10:
      v111 = 10;
      sub_2405AE554();
      v50 = v87;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      v52 = v88;
      v51 = v89;
      goto LABEL_16;
    case 11:
      v112 = 11;
      sub_2405AE500();
      v50 = v90;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      v52 = v91;
      v51 = v92;
      goto LABEL_16;
    case 12:
      v113 = 12;
      sub_2405AE4AC();
      v50 = v93;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      v52 = v94;
      v51 = v95;
      goto LABEL_16;
    case 13:
      v114 = 13;
      sub_2405AE458();
      v50 = v96;
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      v52 = v97;
      v51 = v98;
LABEL_16:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      v101 = 0;
      sub_2405AE89C();
      v48 = v99;
      v49 = v100;
      sub_24075AB54();
      (*(v60 + 8))(v40, v37);
      break;
  }

  return (*v47)(v48, v49);
}

uint64_t AuthenticationModel.BindableState.Substate.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v125 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65A8, &qword_24075D9C8);
  v111 = *(v124 - 8);
  v3 = *(v111 + 64);
  MEMORY[0x28223BE20](v124);
  v120 = v81 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65B0, &qword_24075D9D0);
  v109 = *(v5 - 8);
  v110 = v5;
  v6 = *(v109 + 64);
  MEMORY[0x28223BE20](v5);
  v119 = v81 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65B8, &qword_24075D9D8);
  v107 = *(v108 - 8);
  v8 = *(v107 + 64);
  MEMORY[0x28223BE20](v108);
  v118 = v81 - v9;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65C0, &qword_24075D9E0);
  v105 = *(v106 - 8);
  v10 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v117 = v81 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65C8, &qword_24075D9E8);
  v103 = *(v104 - 8);
  v12 = *(v103 + 64);
  MEMORY[0x28223BE20](v104);
  v116 = v81 - v13;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65D0, &qword_24075D9F0);
  v101 = *(v102 - 8);
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v102);
  v115 = v81 - v15;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65D8, &qword_24075D9F8);
  v99 = *(v100 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x28223BE20](v100);
  v114 = v81 - v17;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65E0, &qword_24075DA00);
  v97 = *(v98 - 8);
  v18 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v123 = v81 - v19;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65E8, &qword_24075DA08);
  v95 = *(v96 - 8);
  v20 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v122 = v81 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65F0, &qword_24075DA10);
  v93 = *(v94 - 8);
  v22 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v121 = v81 - v23;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B65F8, &qword_24075DA18);
  v91 = *(v92 - 8);
  v24 = *(v91 + 64);
  MEMORY[0x28223BE20](v92);
  v113 = v81 - v25;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6600, &qword_24075DA20);
  v89 = *(v90 - 8);
  v26 = *(v89 + 64);
  MEMORY[0x28223BE20](v90);
  v112 = v81 - v27;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6608, &qword_24075DA28);
  v87 = *(v88 - 8);
  v28 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v30 = v81 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6610, &qword_24075DA30);
  v86 = *(v31 - 8);
  v32 = *(v86 + 64);
  MEMORY[0x28223BE20](v31);
  v34 = v81 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6618, &qword_24075DA38);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = v81 - v38;
  v41 = a1[3];
  v40 = a1[4];
  v126 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v41);
  sub_2405AE404();
  v42 = v127;
  sub_24075AF34();
  if (v42)
  {
LABEL_35:
    v79 = v126;
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v83 = v34;
  v82 = v31;
  v84 = v30;
  v44 = v121;
  v43 = v122;
  v45 = v123;
  v85 = 0;
  v47 = v124;
  v46 = v125;
  v127 = v36;
  v48 = sub_24075AB34();
  if (*(v48 + 16) != 1 || (v49 = *(v48 + 32), v49 == 14))
  {
    v52 = sub_24075A8C4();
    swift_allocError();
    v54 = v53;
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v54 = &type metadata for AuthenticationModel.BindableState.Substate;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84160], v52);
    swift_willThrow();
    (*(v127 + 8))(v39, v35);
LABEL_34:
    swift_unknownObjectRelease();
    goto LABEL_35;
  }

  v81[1] = v48;
  switch(v49)
  {
    case 1:
      v129 = 1;
      sub_2405AE848();
      v69 = v84;
      v70 = v85;
      sub_24075AA54();
      if (v70)
      {
        goto LABEL_33;
      }

      (*(v87 + 8))(v69, v88);
      goto LABEL_38;
    case 2:
      v130 = 2;
      sub_2405AE7F4();
      v63 = v112;
      v64 = v85;
      sub_24075AA54();
      if (v64)
      {
        goto LABEL_33;
      }

      (*(v89 + 8))(v63, v90);
      goto LABEL_38;
    case 3:
      v131 = 3;
      sub_2405AE7A0();
      v65 = v113;
      v66 = v85;
      sub_24075AA54();
      if (v66)
      {
        goto LABEL_33;
      }

      (*(v91 + 8))(v65, v92);
      goto LABEL_38;
    case 4:
      v132 = 4;
      sub_2405AE74C();
      v58 = v85;
      sub_24075AA54();
      if (v58)
      {
        goto LABEL_33;
      }

      (*(v93 + 8))(v44, v94);
      goto LABEL_38;
    case 5:
      v133 = 5;
      sub_2405AE6F8();
      v71 = v85;
      sub_24075AA54();
      if (v71)
      {
        goto LABEL_33;
      }

      (*(v95 + 8))(v43, v96);
      goto LABEL_38;
    case 6:
      v134 = 6;
      sub_2405AE6A4();
      v74 = v85;
      sub_24075AA54();
      if (v74)
      {
        goto LABEL_33;
      }

      (*(v97 + 8))(v45, v98);
      goto LABEL_38;
    case 7:
      v135 = 7;
      sub_2405AE650();
      v67 = v114;
      v68 = v85;
      sub_24075AA54();
      if (v68)
      {
        goto LABEL_33;
      }

      (*(v99 + 8))(v67, v100);
      goto LABEL_38;
    case 8:
      v136 = 8;
      sub_2405AE5FC();
      v77 = v115;
      v78 = v85;
      sub_24075AA54();
      if (v78)
      {
        goto LABEL_33;
      }

      (*(v101 + 8))(v77, v102);
      goto LABEL_38;
    case 9:
      v137 = 9;
      sub_2405AE5A8();
      v61 = v116;
      v62 = v85;
      sub_24075AA54();
      if (v62)
      {
        goto LABEL_33;
      }

      (*(v103 + 8))(v61, v104);
      goto LABEL_38;
    case 10:
      v138 = 10;
      sub_2405AE554();
      v75 = v117;
      v76 = v85;
      sub_24075AA54();
      if (v76)
      {
        goto LABEL_33;
      }

      (*(v105 + 8))(v75, v106);
      goto LABEL_38;
    case 11:
      v139 = 11;
      sub_2405AE500();
      v56 = v118;
      v57 = v85;
      sub_24075AA54();
      if (v57)
      {
        goto LABEL_33;
      }

      (*(v107 + 8))(v56, v108);
      goto LABEL_38;
    case 12:
      v140 = 12;
      sub_2405AE4AC();
      v59 = v119;
      v60 = v85;
      sub_24075AA54();
      if (v60)
      {
        goto LABEL_33;
      }

      (*(v109 + 8))(v59, v110);
      goto LABEL_38;
    case 13:
      v141 = 13;
      sub_2405AE458();
      v72 = v120;
      v73 = v85;
      sub_24075AA54();
      if (v73)
      {
        goto LABEL_33;
      }

      (*(v111 + 8))(v72, v47);
      goto LABEL_38;
    default:
      v128 = 0;
      sub_2405AE89C();
      v50 = v83;
      v51 = v85;
      sub_24075AA54();
      if (v51)
      {
LABEL_33:
        (*(v127 + 8))(v39, v35);
        goto LABEL_34;
      }

      (*(v86 + 8))(v50, v82);
LABEL_38:
      (*(v127 + 8))(v39, v35);
      swift_unknownObjectRelease();
      v79 = v126;
      *v46 = v49;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_240598D78()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 21;
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

uint64_t sub_240598DAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
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

uint64_t sub_240598DE0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t sub_240598E14()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_240598E48()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_240598E7C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
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

uint64_t sub_240598EB0()
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

uint64_t sub_240598EE4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
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

uint64_t sub_240598F18()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
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

uint64_t sub_240598F4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

void AuthenticationModel.PreflightRepair.init(account:success:error:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v9 = *(v8 + 24);
  *(a4 + v9) = 0;
  sub_2405AE39C(a1, a4, type metadata accessor for IdMSAccount);
  *(a4 + *(v8 + 20)) = a2;

  *(a4 + v9) = a3;
}

uint64_t AuthenticationModel.BasicLogin.init(username:password:shouldShowPasswordField:supportsSplitAccounts:isSplitAccountSetup:authenticationContext:currentServices:error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = *a3;
  v17 = a3[1];
  *(a9 + 33) = 514;
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = -1;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = v16;
  *(a9 + 24) = v17;
  *(a9 + 32) = a4;
  *(a9 + 35) = a5;
  *(a9 + 36) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  return result;
}

uint64_t AuthenticationModel.BindableState.basicLogin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 24);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 48);
  v13 = *(v3 + 32);
  v8 = v13;
  v14 = v7;
  v9 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  *(a1 + 16) = v9;
  *(a1 + 64) = v4;
  *(a1 + 80) = v5;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 96) = v6;
  return sub_2405AE958(v12, v11);
}

__n128 AuthenticationModel.BindableState.basicLogin.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 24);
  v4 = *(v3 + 80);
  v10[4] = *(v3 + 64);
  v10[5] = v4;
  v11 = *(v3 + 96);
  v5 = *(v3 + 48);
  v10[2] = *(v3 + 32);
  v10[3] = v5;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v10[1] = v6;
  sub_2405AE36C(v10);
  v7 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v7;
  *(v3 + 96) = *(a1 + 96);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  result = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = result;
  return result;
}

uint64_t AuthenticationModel.BindableState.secondFactor.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 28));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2405AE9EC(v10, &v9);
}

__n128 AuthenticationModel.BindableState.secondFactor.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 28));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2405AE30C(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

__n128 _s12AppleIDSetup19AuthenticationModelV12SecondFactorV10codeLength21authenticationContext9errorInfoAESi_So023AKAppleIDAuthenticationJ0CAC05ErrorL0VSgtcfC_0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a3 + 32);
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 72) = 0;
  *a4 = a2;
  *(a4 + 8) = a1;
  sub_2405AE990(0, 1, 0, 0, 0);
  result = *a3;
  v8 = *(a3 + 16);
  *(a4 + 32) = *a3;
  *(a4 + 48) = v8;
  *(a4 + 64) = v6;
  return result;
}

uint64_t AuthenticationModel.BindableState.secondFactorAlert.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 32));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_2405AEA24(v10, &v9);
}

__n128 AuthenticationModel.BindableState.secondFactorAlert.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 32));
  v4 = v3[3];
  v8[2] = v3[2];
  v8[3] = v4;
  v8[4] = v3[4];
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_2405AE33C(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  v3[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t AuthenticationModel.ServerRedirect.init(authenticationContext:configuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0;
  *a3 = result;
  a3[1] = a2;
  return result;
}

id AuthenticationModel.BindableState.serverRedirect.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v13 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v13;
  a1[4] = v7;
  v8 = v7;
  v9 = v4;
  v10 = v5;
  v11 = v6;

  return v13;
}

__n128 AuthenticationModel.BindableState.serverRedirect.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 36);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(v4 + 32);

  result = *a1;
  v10 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  return result;
}

id AuthenticationModel.BindableState.nativeRecovery.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v12 = v6;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v7;
  v9 = v4;
  v10 = v5;

  return v12;
}

__n128 AuthenticationModel.BindableState.nativeRecovery.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 40);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

id AuthenticationModel.BindableState.fidoChallenge.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v12 = v6;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  v8 = v7;
  v9 = v4;
  v10 = v5;

  return v12;
}

__n128 AuthenticationModel.BindableState.fidoChallenge.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);

  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t AuthenticationModel.KeepUsing.init(authenticationContext:username:keepUsing:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t AuthenticationModel.BindableState.keepUsing.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 48));
  v4 = *(v3 + 2);
  v5 = *(v3 + 24);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = v6;
}

__n128 AuthenticationModel.BindableState.keepUsing.setter(__n128 *a1)
{
  v8 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 48);
  v5 = *v4;
  v6 = *(v4 + 16);

  result = v8;
  *v4 = v8;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

__n128 AuthenticationModel.Alert.init(title:message:isPresented:error:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *(a6 + 32);
  v10 = *(a6 + 40);
  v11 = *(a6 + 48);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 81) = a5;
  sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
  result = *a6;
  v13 = *(a6 + 16);
  *(a7 + 32) = *a6;
  *(a7 + 48) = v13;
  *(a7 + 64) = v9;
  *(a7 + 72) = v10;
  *(a7 + 80) = v11;
  return result;
}

uint64_t AuthenticationModel.BindableState.alert.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 52);
  v4 = *(v3 + 64);
  v7 = *(v3 + 16);
  v6 = *(v3 + 32);
  v13 = *(v3 + 48);
  v5 = v13;
  v14 = v4;
  v15 = *(v3 + 80);
  v8 = v15;
  v12[1] = v7;
  v12[2] = v6;
  v12[0] = *v3;
  v9 = v12[0];
  *(a1 + 32) = v6;
  *(a1 + 48) = v5;
  *(a1 + 64) = v4;
  *(a1 + 80) = v8;
  *a1 = v9;
  *(a1 + 16) = v7;
  return sub_2405AE2A4(v12, v11);
}

__n128 AuthenticationModel.BindableState.alert.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AuthenticationModel.BindableState(0) + 52);
  v4 = *(v3 + 64);
  v9[3] = *(v3 + 48);
  v9[4] = v4;
  v10 = *(v3 + 80);
  v5 = *(v3 + 32);
  v9[1] = *(v3 + 16);
  v9[2] = v5;
  v9[0] = *v3;
  sub_2405AE2DC(v9);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = *(a1 + 80);
  result = *a1;
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  return result;
}

uint64_t AuthenticationModel.BindableState.isAlertPresented.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel.BindableState(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t AuthenticationModel.BindableState.isLoading.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel.BindableState(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t sub_240599DBC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7472656C61;
    v7 = 0xD000000000000010;
    if (a1 != 10)
    {
      v7 = 0x6E6964616F4C7369;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x655265766974616ELL;
    v9 = 0x6C6168436F646966;
    if (a1 != 7)
    {
      v9 = 0x6E6973557065656BLL;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6574617473627573;
    v2 = 0x6146646E6F636573;
    v3 = 0xD000000000000011;
    if (a1 != 4)
    {
      v3 = 0x6552726576726573;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6867696C66657270;
    if (a1 != 1)
    {
      v4 = 0x676F4C6369736162;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_240599F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B6E6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_240599FC0(uint64_t a1)
{
  v2 = sub_2405AF590();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240599FFC(uint64_t a1)
{
  v2 = sub_2405AF590();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BindableState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6628, &qword_24075DA48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v77 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AF590();
  sub_24075AF74();
  LOBYTE(v134[0]) = *v3;
  LOBYTE(v127) = 0;
  sub_2405AF5E4();
  sub_24075ABE4();
  if (!v2)
  {
    v11 = type metadata accessor for AuthenticationModel.BindableState(0);
    v12 = v11[5];
    v136 = 1;
    type metadata accessor for AuthenticationModel.PreflightRepair(0);
    sub_240594D3C(&qword_27E4B6640, type metadata accessor for AuthenticationModel.PreflightRepair);
    sub_24075ABE4();
    v13 = &v3[v11[6]];
    v14 = *(v13 + 3);
    v15 = *(v13 + 4);
    v134[5] = *(v13 + 5);
    v16 = *(v13 + 1);
    v134[0] = *v13;
    v134[1] = v16;
    v17 = *(v13 + 2);
    v19 = *v13;
    v18 = *(v13 + 1);
    v20 = v17;
    v134[3] = *(v13 + 3);
    v134[4] = v15;
    v134[2] = v17;
    v21 = *(v13 + 5);
    v131 = v15;
    v132 = v21;
    v127 = v19;
    v128 = v18;
    v135 = v13[96];
    v133 = v13[96];
    v129 = v20;
    v130 = v14;
    v126 = 2;
    sub_2405AE958(v134, v124);
    sub_2405AF638();
    sub_24075ABE4();
    v124[4] = v131;
    v124[5] = v132;
    v125 = v133;
    v124[0] = v127;
    v124[1] = v128;
    v124[2] = v129;
    v124[3] = v130;
    sub_2405AE36C(v124);
    v22 = &v3[v11[7]];
    v23 = v22[2];
    v24 = *v22;
    v120 = v22[1];
    v121 = v23;
    v25 = v22[2];
    v26 = v22[4];
    v122 = v22[3];
    v123 = v26;
    v27 = *v22;
    v116 = v25;
    v117 = v122;
    v118 = v22[4];
    v119 = v27;
    v114 = v24;
    v115 = v120;
    v113 = 3;
    sub_2405AE9EC(&v119, &v91);
    sub_2405AF68C();
    sub_24075ABE4();
    v108[2] = v116;
    v108[3] = v117;
    v108[4] = v118;
    v108[0] = v114;
    v108[1] = v115;
    sub_2405AE30C(v108);
    v28 = &v3[v11[8]];
    v29 = v28[1];
    v30 = v28[3];
    v110 = v28[2];
    v111 = v30;
    v31 = v28[3];
    v112 = v28[4];
    v32 = v28[1];
    v109[0] = *v28;
    v109[1] = v32;
    v105 = v110;
    v106 = v31;
    v107 = v28[4];
    v103 = v109[0];
    v104 = v29;
    v102 = 4;
    sub_2405AEA24(v109, &v91);
    sub_2405AF6E0();
    sub_24075ABE4();
    v101[2] = v105;
    v101[3] = v106;
    v101[4] = v107;
    v101[0] = v103;
    v101[1] = v104;
    sub_2405AE33C(v101);
    v33 = &v3[v11[9]];
    v34 = *v33;
    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    v78 = *(v33 + 1);
    v79 = v36;
    v37 = *(v33 + 4);
    *&v80 = v35;
    *(&v80 + 1) = v37;
    *&v91 = v34;
    *(&v91 + 1) = v78;
    *&v92 = v36;
    *(&v92 + 1) = v35;
    *&v93 = v37;
    LOBYTE(v85) = 5;
    v137 = sub_2405AF734();
    v38 = v34;
    v39 = v78;
    v40 = v79;
    v41 = v80;
    v42 = *(&v80 + 1);
    sub_24075ABE4();
    v43 = *(&v91 + 1);
    v80 = v92;
    v137 = v93;

    v44 = &v3[v11[10]];
    v46 = *v44;
    v45 = *(v44 + 1);
    v48 = *(v44 + 2);
    v47 = *(v44 + 3);
    v79 = v45;
    *&v80 = v48;
    *(&v80 + 1) = v47;
    *&v91 = v46;
    *(&v91 + 1) = v45;
    *&v92 = v48;
    *(&v92 + 1) = v47;
    LOBYTE(v85) = 6;
    v137 = sub_2405AF788();
    v49 = v46;
    v50 = v79;
    v51 = v80;
    v52 = *(&v80 + 1);
    sub_24075ABE4();
    v53 = *(&v91 + 1);
    v137 = *(&v92 + 1);
    *(&v80 + 1) = v92;

    v54 = &v3[v11[11]];
    v56 = *v54;
    v55 = *(v54 + 1);
    v58 = *(v54 + 2);
    v57 = *(v54 + 3);
    v79 = v55;
    *&v80 = v58;
    *(&v80 + 1) = v57;
    *&v91 = v56;
    *(&v91 + 1) = v55;
    *&v92 = v58;
    *(&v92 + 1) = v57;
    LOBYTE(v85) = 7;
    v137 = sub_2405AF7DC();
    v59 = v56;
    v60 = v79;
    v61 = v80;
    v62 = *(&v80 + 1);
    sub_24075ABE4();
    v64 = *(&v91 + 1);
    v137 = *(&v92 + 1);
    *(&v80 + 1) = v92;

    v65 = &v3[v11[12]];
    v66 = *(v65 + 2);
    v67 = v65[24];
    v98 = *v65;
    v99 = v66;
    v100 = v67;
    v97 = 8;
    *(&v80 + 1) = v98;
    v137 = sub_2405AF830();
    v68 = *(&v80 + 1);

    sub_24075ABE4();
    v69 = v98;

    v70 = &v3[v11[13]];
    v71 = *(v70 + 3);
    v72 = *(v70 + 1);
    v93 = *(v70 + 2);
    v94 = v71;
    v73 = *(v70 + 3);
    v95 = *(v70 + 4);
    v74 = *(v70 + 1);
    v91 = *v70;
    v92 = v74;
    v87 = v93;
    v88 = v73;
    v89 = *(v70 + 4);
    v96 = *(v70 + 40);
    v90 = *(v70 + 40);
    v85 = v91;
    v86 = v72;
    v84 = 9;
    sub_2405AE2A4(&v91, v82);
    sub_2405AF884();
    sub_24075ABE4();
    v82[2] = v87;
    v82[3] = v88;
    v82[4] = v89;
    v83 = v90;
    v82[0] = v85;
    v82[1] = v86;
    sub_2405AE2DC(v82);
    v75 = v3[v11[14]];
    v81 = 10;
    sub_24075ABC4();
    v76 = v3[v11[15]];
    v81 = 11;
    sub_24075ABC4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t AuthenticationModel.BindableState.hash(into:)(uint64_t a1)
{
  v2 = v1;
  MEMORY[0x245CC6BA0](*v1);
  v4 = type metadata accessor for AuthenticationModel.BindableState(0);
  v5 = &v1[v4[5]];
  IdMSAccount.hash(into:)(a1);
  v6 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v7 = v5[*(v6 + 20)];
  sub_24075AE94();
  v8 = *&v5[*(v6 + 24)];
  sub_24075AE94();
  if (v8)
  {
    v9 = v8;
    sub_24075A6E4();
  }

  v10 = &v2[v4[6]];
  v58 = *(v10 + 4);
  v61 = *(v10 + 5);
  v62 = v10[96];
  v40 = *v10;
  v46 = *(v10 + 1);
  v52 = *(v10 + 2);
  v55 = *(v10 + 3);
  AuthenticationModel.BasicLogin.hash(into:)();
  v11 = &v2[v4[7]];
  v53 = *(v11 + 2);
  v56 = *(v11 + 3);
  v59 = *(v11 + 4);
  v41 = *v11;
  v47 = *(v11 + 1);
  AuthenticationModel.SecondFactor.hash(into:)(a1);
  v12 = &v2[v4[8]];
  v54 = *(v12 + 2);
  v57 = *(v12 + 3);
  v60 = *(v12 + 4);
  v42 = *v12;
  v48 = *(v12 + 1);
  AuthenticationModel.SecondFactor.hash(into:)(a1);
  v13 = &v2[v4[9]];
  v43 = *v13;
  v49 = *(v13 + 1);
  *&v54 = *(v13 + 4);
  AuthenticationModel.ServerRedirect.hash(into:)();
  v14 = &v2[v4[10]];
  v44 = *v14;
  v50 = *(v14 + 1);
  AuthenticationModel.FidoChallenge.hash(into:)(a1);
  v15 = &v2[v4[11]];
  v45 = *v15;
  v51 = *(v15 + 1);
  AuthenticationModel.FidoChallenge.hash(into:)(a1);
  v16 = &v2[v4[12]];
  v18 = *v16;
  v17 = *(v16 + 1);
  v19 = *(v16 + 2);
  v20 = v16[24];
  if (*v16)
  {
    sub_24075AE94();
    v21 = v18;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075A114();
  if (v20 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  v38 = v4;
  v39 = v2;
  v22 = &v2[v4[13]];
  v23 = *v22;
  v24 = *(v22 + 1);
  v25 = *(v22 + 2);
  v26 = *(v22 + 3);
  v27 = *(v22 + 4);
  v28 = *(v22 + 5);
  v29 = *(v22 + 6);
  v30 = *(v22 + 7);
  v32 = *(v22 + 8);
  v31 = *(v22 + 9);
  v33 = v22[80];
  v37 = v22[81];
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  if (v33 != 255)
  {
    sub_2405AF8D8(v27, v28, v29, v30, v32, v31, v33);
    SetupError.hash(into:)(a1);
    sub_2405AEA70(v27, v28, v29, v30, v32, v31, v33);
  }

  sub_24075AE94();
  v34 = v39[v38[14]];
  sub_24075AE94();
  v35 = v39[v38[15]];
  return sub_24075AE94();
}

uint64_t AuthenticationModel.BindableState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v159 = a1;
  v140 = a2;
  *&v160 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v2 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v141 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6688, &unk_24075DA50);
  v142 = *(v4 - 8);
  v143 = v4;
  v5 = *(v142 + 64);
  MEMORY[0x28223BE20](v4);
  v157 = &v140 - v6;
  v158 = sub_2407595E4();
  v156 = *(v158 - 8);
  v7 = *(v156 + 8);
  MEMORY[0x28223BE20](v158);
  v155 = &v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  *&v148 = &v140 - v11;
  v12 = sub_240759634();
  v144 = *(v12 - 1);
  v145 = v12;
  v13 = *(v144 + 64);
  MEMORY[0x28223BE20](v12);
  v146 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_240759454();
  *&v149 = *(v152 - 8);
  v15 = *(v149 + 64);
  MEMORY[0x28223BE20](v152);
  v147 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AuthenticationModel.BindableState(0);
  v18 = *(*(v17 - 8) + 64);
  v151 = MEMORY[0x28223BE20](v17);
  v20 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v20[v151[5]];
  if (qword_27E4B5F10 != -1)
  {
    swift_once();
  }

  v225 = xmmword_27E4B8D90;
  v226 = xmmword_27E4B8DA0;
  v227 = xmmword_27E4B8DB0;
  v228 = xmmword_27E4B8DC0;
  v224 = xmmword_27E4B8D80;
  v22 = type metadata accessor for IdMSAccount();
  v23 = v22[5];
  sub_2405AF99C(&v224, &v217);
  sub_240759594();
  sub_2405AF9F8(v229);
  v24 = (v21 + v22[8]);
  v161 = xmmword_24075D8C0;
  *v24 = xmmword_24075D8C0;
  v25 = v21 + v22[9];
  *v25 = 0;
  v25[8] = 1;
  v26 = v225;
  v27 = v227;
  v21[2] = v226;
  v21[3] = v27;
  v21[4] = v228;
  *v21 = v224;
  v21[1] = v26;
  v28 = (v21 + v22[6]);
  v29 = v229[7];
  v28[6] = v229[6];
  v28[7] = v29;
  v30 = v229[9];
  v28[8] = v229[8];
  v28[9] = v30;
  v31 = v229[3];
  v28[2] = v229[2];
  v28[3] = v31;
  v32 = v229[5];
  v28[4] = v229[4];
  v28[5] = v32;
  v33 = v229[1];
  *v28 = v229[0];
  v28[1] = v33;
  *(v21 + v22[7]) = MEMORY[0x277D84FA0];
  sub_2405AFA1C(*v24, v24[1]);
  *v24 = v161;
  *v25 = 0;
  v25[8] = 0;
  v34 = v160;
  v35 = *(v160 + 24);
  *(v21 + v35) = 0;
  *(v21 + *(v34 + 20)) = 0;

  v230 = v21;
  *(v21 + v35) = 0;
  v36 = v151;
  v37 = v20;
  v38 = &v20[v151[6]];
  v39 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 33) = 514;
  *(v38 + 5) = 0;
  *(v38 + 56) = 0u;
  *(v38 + 72) = 0u;
  *(v38 + 11) = 0;
  v38[96] = -1;
  *v38 = 0;
  *(v38 + 1) = 0;

  *(v38 + 35) = 0;
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  v38[32] = 0;

  v40 = MEMORY[0x277D84F90];
  *(v38 + 5) = v39;
  *(v38 + 6) = v40;

  *(v38 + 7) = 0;
  v41 = &v20[v36[7]];
  v42 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  v41[24] = 1;
  v161 = xmmword_24075D8E0;
  *(v41 + 2) = xmmword_24075D8E0;
  *(v41 + 3) = 0u;
  *(v41 + 4) = 0u;
  *(v41 + 1) = 6;
  *(v41 + 2) = 0;
  *v41 = v42;
  sub_2405AE990(*(v41 + 4), *(v41 + 5), 0, *(v41 + 7), *(v41 + 8));
  *(v41 + 2) = v161;
  *(v41 + 7) = 0;
  *(v41 + 8) = 0;
  *(v41 + 6) = 0;
  v154 = v41;
  v43 = &v20[v36[8]];
  v44 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(v43 + 1) = 6;
  *(v43 + 2) = 0;
  v43[24] = 1;
  *(v43 + 2) = v161;
  *(v43 + 3) = 0u;
  *(v43 + 4) = 0u;
  *v43 = v44;
  sub_2405AE990(*(v43 + 4), *(v43 + 5), 0, *(v43 + 7), *(v43 + 8));
  *(v43 + 2) = v161;
  *(v43 + 7) = 0;
  *(v43 + 8) = 0;
  *(v43 + 6) = 0;
  v153 = v43;
  v45 = &v37[v36[9]];
  *&v161 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  (*(v144 + 56))(v148, 1, 1, v145);
  (*(v156 + 13))(v155, *MEMORY[0x277CC91D8], v158);
  sub_240759624();
  v46 = v147;
  sub_240759414();
  v47 = objc_allocWithZone(MEMORY[0x277CF02D8]);
  v48 = sub_2407593F4();
  v49 = [v47 initWithRequest:v48 requestType:0];

  (*(v149 + 8))(v46, v152);
  *(v45 + 4) = 0;
  *v45 = 0u;
  *(v45 + 1) = 0u;
  *v45 = v161;

  *&v161 = v45;
  *(v45 + 1) = v49;
  v50 = &v37[v36[10]];
  *v50 = 0u;
  v50[1] = 0u;
  v158 = v50;
  v51 = &v37[v36[11]];
  *v51 = 0u;
  v51[1] = 0u;
  v156 = v51;
  v52 = &v37[v36[12]];
  *v52 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(v52 + 1) = 0;
  *(v52 + 2) = 0xE000000000000000;
  v155 = v52;
  v52[24] = 2;
  v53 = &v37[v36[13]];
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 32) = 0u;
  *(v53 + 80) = 511;
  *v53 = 0;
  *(v53 + 8) = 0xE000000000000000;
  *(v53 + 16) = 0;
  *(v53 + 24) = 0xE000000000000000;
  sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
  *(v53 + 48) = 0u;
  *(v53 + 64) = 0u;
  *(v53 + 32) = 0u;
  v152 = v53;
  *(v53 + 80) = -1;
  v54 = v159;
  v55 = v159[4];
  __swift_project_boxed_opaque_existential_1(v159, v159[3]);
  sub_2405AF590();
  v56 = v150;
  sub_24075AF34();
  if (v56)
  {
    *&v160 = v56;
LABEL_5:
    v58 = v153;
    v57 = v154;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_240593D7C(v230, type metadata accessor for AuthenticationModel.PreflightRepair);
    v60 = *(v38 + 5);
    v221 = *(v38 + 4);
    v222 = v60;
    v223 = v38[96];
    v61 = *(v38 + 1);
    v217 = *v38;
    v218 = v61;
    v62 = *(v38 + 3);
    v219 = *(v38 + 2);
    v220 = v62;
    sub_2405AE36C(&v217);
    v63 = *(v57 + 3);
    v174 = *(v57 + 2);
    v175 = v63;
    v176 = *(v57 + 4);
    v64 = *(v57 + 1);
    v172 = *v57;
    v173 = v64;
    sub_2405AE30C(&v172);
    v65 = *(v58 + 3);
    v204 = *(v58 + 2);
    v205 = v65;
    v206 = *(v58 + 4);
    v66 = *(v58 + 1);
    v202 = *v58;
    v203 = v66;
    sub_2405AE33C(&v202);
    v67 = *(v161 + 8);
    v68 = *(v161 + 16);
    v69 = *(v161 + 24);
    v70 = *(v161 + 32);

    v71 = *(v158 + 8);
    v72 = *(v158 + 16);
    v73 = *(v158 + 24);

    v74 = *(v156 + 1);
    v75 = *(v156 + 2);
    v76 = *(v156 + 3);

    v77 = *v155;
    v78 = *(v155 + 2);

    v79 = *(v152 + 48);
    v211 = *(v152 + 32);
    v212 = v79;
    v213 = *(v152 + 64);
    LOWORD(v214) = *(v152 + 80);
    v80 = *(v152 + 16);
    v209 = *v152;
    v210 = v80;
    return sub_2405AE2DC(&v209);
  }

  v150 = v37;
  LOBYTE(v209) = 0;
  sub_2405AFA60();
  sub_24075AAF4();
  v58 = v153;
  v57 = v154;
  *v150 = v217;
  LOBYTE(v217) = 1;
  sub_240594D3C(&qword_27E4B66A0, type metadata accessor for AuthenticationModel.PreflightRepair);
  v59 = v141;
  sub_24075AAF4();
  sub_2405AE8F0(v59, v230, type metadata accessor for AuthenticationModel.PreflightRepair);
  v216 = 2;
  sub_2405AFAB4();
  sub_24075AAF4();
  v206 = v221;
  v207 = v222;
  v208 = v223;
  v202 = v217;
  v203 = v218;
  v204 = v219;
  v205 = v220;
  v82 = *(v38 + 1);
  v209 = *v38;
  v210 = v82;
  v83 = *(v38 + 2);
  v84 = *(v38 + 3);
  v85 = *(v38 + 4);
  v86 = *(v38 + 5);
  v215 = v38[96];
  v213 = v85;
  v214 = v86;
  v211 = v83;
  v212 = v84;
  sub_2405AE36C(&v209);
  v87 = v207;
  *(v38 + 4) = v206;
  *(v38 + 5) = v87;
  v38[96] = v208;
  v88 = v203;
  *v38 = v202;
  *(v38 + 1) = v88;
  v89 = v205;
  *(v38 + 2) = v204;
  *(v38 + 3) = v89;
  v196 = 3;
  sub_2405AFB08();
  sub_24075AAF4();
  v192 = v199;
  v193 = v200;
  v190 = v197;
  v191 = v198;
  v90 = *(v57 + 2);
  v91 = *(v57 + 3);
  v92 = *v57;
  v195[1] = *(v57 + 1);
  v195[2] = v90;
  v93 = *(v57 + 4);
  v195[3] = v91;
  v195[4] = v93;
  v194 = v201;
  v195[0] = v92;
  sub_2405AE30C(v195);
  v94 = v193;
  *(v57 + 2) = v192;
  *(v57 + 3) = v94;
  *(v57 + 4) = v194;
  v95 = v191;
  *v57 = v190;
  *(v57 + 1) = v95;
  v184 = 4;
  sub_2405AFB5C();
  sub_24075AAF4();
  v180 = v187;
  v181 = v188;
  v178 = v185;
  v179 = v186;
  v96 = *(v58 + 2);
  v97 = *(v58 + 3);
  v98 = *v58;
  v183[1] = *(v58 + 1);
  v183[2] = v96;
  v99 = *(v58 + 4);
  v183[3] = v97;
  v183[4] = v99;
  v182 = v189;
  v183[0] = v98;
  sub_2405AE33C(v183);
  v100 = v181;
  *(v58 + 2) = v180;
  *(v58 + 3) = v100;
  *(v58 + 4) = v182;
  v101 = v179;
  *v58 = v178;
  *(v58 + 1) = v101;
  LOBYTE(v169[0]) = 5;
  sub_2405AFBB0();
  sub_24075AAF4();
  *&v160 = v174;
  v102 = v161;
  v103 = *v161;
  v104 = *(v161 + 8);
  v105 = *(v161 + 24);
  v145 = *(v161 + 16);
  v146 = v105;
  v147 = *(v161 + 32);
  v148 = v173;
  v149 = v172;

  v106 = v148;
  *v102 = v149;
  *(v102 + 16) = v106;
  *(v102 + 32) = v160;
  LOBYTE(v169[0]) = 6;
  sub_2405AFC04();
  sub_24075AAF4();
  v107 = v158;
  v108 = *v158;
  v109 = *(v158 + 16);
  v110 = *(v158 + 24);
  v147 = *(v158 + 8);
  *&v148 = v109;
  v160 = v172;
  v149 = v173;

  v111 = v149;
  *v107 = v160;
  v107[1] = v111;
  LOBYTE(v169[0]) = 7;
  sub_2405AFC58();
  sub_24075AAF4();
  *&v160 = 0;
  v112 = v156;
  v113 = *v156;
  v114 = *(v156 + 1);
  v116 = *(v156 + 2);
  v115 = *(v156 + 3);
  v148 = v173;
  v149 = v172;

  v117 = v143;
  v118 = v157;
  v119 = v148;
  *v112 = v149;
  v112[1] = v119;
  LOBYTE(v169[0]) = 8;
  sub_2405AFCAC();
  v120 = v160;
  sub_24075AAF4();
  *&v160 = v120;
  if (v120)
  {
    (*(v142 + 8))(v118, v117);
    v54 = v159;
    goto LABEL_7;
  }

  v149 = v172;
  v121 = v173;
  v122 = BYTE8(v173);
  v123 = v155;
  v124 = *v155;
  v125 = *(v155 + 2);

  *v123 = v149;
  *(v123 + 2) = v121;
  v123[24] = v122;
  v171 = 9;
  sub_2405AFD00();
  v126 = v160;
  sub_24075AAF4();
  *&v160 = v126;
  if (v126)
  {
    goto LABEL_13;
  }

  v165 = v174;
  v166 = v175;
  v167 = v176;
  v168 = v177;
  v163 = v172;
  v164 = v173;
  v127 = v152;
  v128 = *(v152 + 48);
  v169[2] = *(v152 + 32);
  v169[3] = v128;
  v169[4] = *(v152 + 64);
  v170 = *(v152 + 80);
  v129 = *(v152 + 16);
  v169[0] = *v152;
  v169[1] = v129;
  sub_2405AE2DC(v169);
  v130 = v166;
  *(v127 + 32) = v165;
  *(v127 + 48) = v130;
  *(v127 + 64) = v167;
  *(v127 + 80) = v168;
  v131 = v164;
  *v127 = v163;
  *(v127 + 16) = v131;
  v162 = 10;
  v132 = v160;
  v133 = sub_24075AAD4();
  *&v160 = v132;
  if (v132 || (v150[v151[14]] = v133 & 1, v162 = 11, v134 = v160, v135 = sub_24075AAD4(), (*&v160 = v134) != 0))
  {
LABEL_13:
    (*(v142 + 8))(v157, v143);
    v54 = v159;
    goto LABEL_5;
  }

  v136 = v135;
  v137 = v151[15];
  (*(v142 + 8))(v157, v143);
  v138 = v136 & 1;
  v139 = v150;
  v150[v137] = v138;
  sub_240594008(v139, v140, type metadata accessor for AuthenticationModel.BindableState);
  __swift_destroy_boxed_opaque_existential_1(v159);
  return sub_240593D7C(v139, type metadata accessor for AuthenticationModel.BindableState);
}

double sub_24059BBA4@<D0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = -1;
  *a1 = 0;
  *(a1 + 8) = 0;

  *&result = 514;
  *(a1 + 33) = 514;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v4 = MEMORY[0x277D84F90];
  *(a1 + 40) = v2;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_24059BC20@<X0>(void *a1@<X8>)
{
  v23 = sub_2407595E4();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6690, &qword_24076CFD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = sub_240759634();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = sub_240759454();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v23);
  sub_240759624();
  sub_240759414();
  v18 = objc_allocWithZone(MEMORY[0x277CF02D8]);
  v19 = sub_2407593F4();
  v20 = [v18 initWithRequest:v19 requestType:0];

  result = (*(v14 + 8))(v17, v13);
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  *a1 = v22;
  a1[1] = v20;
  return result;
}

unint64_t sub_24059BF78(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x6867696C66657270;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 7369331;
      break;
    case 4:
      result = 0x676F4C6369736162;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6146646E6F636573;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x6552726576726573;
      break;
    case 10:
      result = 0xD000000000000017;
      break;
    case 11:
      result = 0x655265766974616ELL;
      break;
    case 12:
      result = 0x6C6168436F646966;
      break;
    case 13:
      result = 0x6E6973557065656BLL;
      break;
    case 14:
      result = 0x7472656C61;
      break;
    case 15:
      result = 0x676E6964616F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24059C164(uint64_t a1)
{
  v2 = sub_2405AFDFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C1A0(uint64_t a1)
{
  v2 = sub_2405AFDFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C1F0(uint64_t a1)
{
  v2 = sub_2405B0144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C22C(uint64_t a1)
{
  v2 = sub_2405B0144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B7270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24059C2A4(uint64_t a1)
{
  v2 = sub_2405AFD54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C2E0(uint64_t a1)
{
  v2 = sub_2405AFD54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C31C(uint64_t a1)
{
  v2 = sub_2405B00F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C358(uint64_t a1)
{
  v2 = sub_2405B00F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C394(uint64_t a1)
{
  v2 = sub_2405B01EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C3D0(uint64_t a1)
{
  v2 = sub_2405B01EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C40C(uint64_t a1)
{
  v2 = sub_2405AFFF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C448(uint64_t a1)
{
  v2 = sub_2405AFFF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C484(uint64_t a1)
{
  v2 = sub_2405AFF4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C4C0(uint64_t a1)
{
  v2 = sub_2405AFF4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C4FC(uint64_t a1)
{
  v2 = sub_2405AFEA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C538(uint64_t a1)
{
  v2 = sub_2405AFEA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C574(uint64_t a1)
{
  v2 = sub_2405B0294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C5B0(uint64_t a1)
{
  v2 = sub_2405B0294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C5EC(uint64_t a1)
{
  v2 = sub_2405AFE50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C628(uint64_t a1)
{
  v2 = sub_2405AFE50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C664(uint64_t a1)
{
  v2 = sub_2405AFDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C6A0(uint64_t a1)
{
  v2 = sub_2405AFDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C6DC(uint64_t a1)
{
  v2 = sub_2405AFEF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C718(uint64_t a1)
{
  v2 = sub_2405AFEF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C754(uint64_t a1)
{
  v2 = sub_2405B0240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C790(uint64_t a1)
{
  v2 = sub_2405B0240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C7CC(uint64_t a1)
{
  v2 = sub_2405B0048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C808(uint64_t a1)
{
  v2 = sub_2405B0048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C844(uint64_t a1)
{
  v2 = sub_2405B009C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C880(uint64_t a1)
{
  v2 = sub_2405B009C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C8BC(uint64_t a1)
{
  v2 = sub_2405AFFA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C8F8(uint64_t a1)
{
  v2 = sub_2405AFFA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24059C934(uint64_t a1)
{
  v2 = sub_2405B0198();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24059C970(uint64_t a1)
{
  v2 = sub_2405B0198();

  return MEMORY[0x2821FE720](a1, v2);
}

void AuthenticationModel.State.encode(to:)(void *a1)
{
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B66E8, &qword_24075DA60);
  v184 = *(v185 - 8);
  v2 = *(v184 + 64);
  MEMORY[0x28223BE20](v185);
  v183 = &v139 - v3;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B66F0, &qword_24075DA68);
  v187 = *(v188 - 1);
  v4 = v187[8];
  MEMORY[0x28223BE20](v188);
  v186 = &v139 - v5;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B66F8, &qword_24075DA70);
  v181 = *(v182 - 8);
  v6 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v180 = &v139 - v7;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6700, &qword_24075DA78);
  v178 = *(v179 - 8);
  v8 = *(v178 + 64);
  MEMORY[0x28223BE20](v179);
  v177 = &v139 - v9;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6708, &qword_24075DA80);
  v175 = *(v176 - 8);
  v10 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v139 - v11;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6710, &qword_24075DA88);
  v172 = *(v173 - 8);
  v12 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v139 - v13;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6718, &qword_24075DA90);
  v169 = *(v170 - 8);
  v14 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v167 = &v139 - v15;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6720, &qword_24075DA98);
  v166 = *(v168 - 8);
  v16 = *(v166 + 64);
  MEMORY[0x28223BE20](v168);
  v165 = &v139 - v17;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6728, &qword_24075DAA0);
  v163 = *(v164 - 8);
  v18 = *(v163 + 64);
  MEMORY[0x28223BE20](v164);
  v162 = &v139 - v19;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6730, &qword_24075DAA8);
  v160 = *(v161 - 8);
  v20 = *(v160 + 64);
  MEMORY[0x28223BE20](v161);
  v158 = &v139 - v21;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6738, &qword_24075DAB0);
  v157 = *(v159 - 8);
  v22 = *(v157 + 64);
  MEMORY[0x28223BE20](v159);
  v156 = &v139 - v23;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6740, &qword_24075DAB8);
  v154 = *(v155 - 8);
  v24 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v153 = &v139 - v25;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6748, &qword_24075DAC0);
  v148 = *(v151 - 8);
  v26 = *(v148 + 64);
  MEMORY[0x28223BE20](v151);
  v146 = &v139 - v27;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6750, &qword_24075DAC8);
  v150 = *(v152 - 8);
  v28 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v147 = &v139 - v29;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6758, &qword_24075DAD0);
  v144 = *(v145 - 8);
  v30 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v143 = &v139 - v31;
  v189 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v32 = *(*(v189 - 1) + 64);
  v33 = MEMORY[0x28223BE20](v189);
  v142 = &v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v141 = &v139 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6760, &qword_24075DAD8);
  v140 = *(v36 - 8);
  v37 = *(v140 + 64);
  MEMORY[0x28223BE20](v36);
  v39 = &v139 - v38;
  v40 = type metadata accessor for AuthenticationModel.State(0);
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v139 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42);
  v149 = &v139 - v46;
  MEMORY[0x28223BE20](v45);
  v48 = &v139 - v47;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6768, &qword_24075DAE0);
  v192[0] = *(v193 - 8);
  v49 = *(v192[0] + 64);
  MEMORY[0x28223BE20](v193);
  v51 = &v139 - v50;
  v52 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AFD54();
  v191 = v51;
  sub_24075AF74();
  sub_240594008(v190, v48, type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = v142;
      sub_2405AE39C(v48, v142, type metadata accessor for AuthenticationModel.PreflightRepair);
      LOBYTE(v201) = 2;
      sub_2405B01EC();
      v54 = v147;
      v55 = v193;
      v56 = v191;
      sub_24075AB54();
      sub_240594D3C(&qword_27E4B6640, type metadata accessor for AuthenticationModel.PreflightRepair);
      v57 = v152;
      sub_24075ABE4();
      v58 = &v182;
      goto LABEL_16;
    case 2u:
      v98 = *(v48 + 5);
      v205 = *(v48 + 4);
      v206 = v98;
      v207 = v48[96];
      v99 = *(v48 + 1);
      v201 = *v48;
      v202 = v99;
      v100 = *(v48 + 3);
      v203 = *(v48 + 2);
      v204 = v100;
      LOBYTE(v194) = 4;
      sub_2405B0144();
      v101 = v153;
      v102 = v193;
      v103 = v191;
      sub_24075AB54();
      v198 = v205;
      v199 = v206;
      v200 = v207;
      v194 = v201;
      v195 = v202;
      v197 = v204;
      v196 = v203;
      sub_2405AF638();
      v104 = v155;
      sub_24075ABE4();
      v105 = &v186;
      goto LABEL_13;
    case 3u:
      v107 = *(v48 + 5);
      v205 = *(v48 + 4);
      v206 = v107;
      v207 = v48[96];
      v108 = *(v48 + 1);
      v201 = *v48;
      v202 = v108;
      v109 = *(v48 + 3);
      v203 = *(v48 + 2);
      v204 = v109;
      LOBYTE(v194) = 5;
      sub_2405B00F0();
      v101 = v156;
      v102 = v193;
      v103 = v191;
      sub_24075AB54();
      v198 = v205;
      v199 = v206;
      v200 = v207;
      v194 = v201;
      v195 = v202;
      v197 = v204;
      v196 = v203;
      sub_2405AF638();
      v104 = v159;
      sub_24075ABE4();
      v105 = &v189;
LABEL_13:
      (*(*(v105 - 32) + 1))(v101, v104);
      (*(v192[0] + 8))(v103, v102);
      sub_2405AE36C(&v201);
      return;
    case 4u:
      v69 = *(v48 + 3);
      v203 = *(v48 + 2);
      v204 = v69;
      v205 = *(v48 + 4);
      v70 = *(v48 + 1);
      v201 = *v48;
      v202 = v70;
      LOBYTE(v194) = 6;
      sub_2405B009C();
      v71 = v158;
      v72 = v193;
      v73 = v191;
      sub_24075AB54();
      v196 = v203;
      v197 = v204;
      v198 = v205;
      v195 = v202;
      v194 = v201;
      sub_2405AF68C();
      v74 = v161;
      sub_24075ABE4();
      v75 = v192;
      goto LABEL_20;
    case 5u:
      v119 = *(v48 + 3);
      v203 = *(v48 + 2);
      v204 = v119;
      v205 = *(v48 + 4);
      v120 = *(v48 + 1);
      v201 = *v48;
      v202 = v120;
      LOBYTE(v194) = 7;
      sub_2405B0048();
      v121 = v162;
      v122 = v193;
      v123 = v191;
      sub_24075AB54();
      v196 = v203;
      v197 = v204;
      v198 = v205;
      v195 = v202;
      v194 = v201;
      sub_2405AF6E0();
      v124 = v164;
      sub_24075ABE4();
      (*(v163 + 8))(v121, v124);
      (*(v192[0] + 8))(v123, v122);
      sub_2405AE33C(&v201);
      return;
    case 6u:
      v131 = *(v48 + 3);
      v203 = *(v48 + 2);
      v204 = v131;
      v205 = *(v48 + 4);
      v132 = *(v48 + 1);
      v201 = *v48;
      v202 = v132;
      LOBYTE(v194) = 8;
      sub_2405AFFF4();
      v71 = v165;
      v72 = v193;
      v73 = v191;
      sub_24075AB54();
      v196 = v203;
      v197 = v204;
      v198 = v205;
      v195 = v202;
      v194 = v201;
      sub_2405AF68C();
      v74 = v168;
      sub_24075ABE4();
      v75 = &v195 + 8;
LABEL_20:
      (*(*(v75 - 32) + 8))(v71, v74);
      (*(v192[0] + 8))(v73, v72);
      sub_2405AE30C(&v201);
      return;
    case 7u:
      v111 = *v48;
      v110 = *(v48 + 1);
      v113 = *(v48 + 2);
      v112 = *(v48 + 3);
      v114 = *(v48 + 4);
      LOBYTE(v201) = 9;
      sub_2405AFFA0();
      v115 = v167;
      v116 = v191;
      sub_24075AB54();
      v186 = v111;
      *&v201 = v111;
      *(&v201 + 1) = v110;
      v187 = v110;
      v188 = v113;
      *&v202 = v113;
      *(&v202 + 1) = v112;
      v189 = v112;
      v190 = v114;
      *&v203 = v114;
      sub_2405AF734();
      v117 = v170;
      sub_24075ABE4();
      v118 = &v197;
      goto LABEL_24;
    case 8u:
      v135 = *v48;
      v134 = *(v48 + 1);
      v137 = *(v48 + 2);
      v136 = *(v48 + 3);
      v138 = *(v48 + 4);
      LOBYTE(v201) = 10;
      sub_2405AFF4C();
      v115 = v171;
      v116 = v191;
      sub_24075AB54();
      v186 = v135;
      *&v201 = v135;
      *(&v201 + 1) = v134;
      v187 = v134;
      v188 = v137;
      *&v202 = v137;
      *(&v202 + 1) = v136;
      v189 = v136;
      v190 = v138;
      *&v203 = v138;
      sub_2405AF734();
      v117 = v173;
      sub_24075ABE4();
      v118 = &v198 + 8;
LABEL_24:
      (*(*(v118 - 32) + 8))(v115, v117);
      (*(v192[0] + 8))(v116, v193);

      goto LABEL_25;
    case 9u:
      v90 = *v48;
      v89 = *(v48 + 1);
      v92 = *(v48 + 2);
      v91 = *(v48 + 3);
      LOBYTE(v201) = 11;
      sub_2405AFEF8();
      v93 = v174;
      v94 = v193;
      v95 = v191;
      sub_24075AB54();
      *&v201 = v90;
      *(&v201 + 1) = v89;
      *&v202 = v92;
      *(&v202 + 1) = v91;
      v190 = v91;
      sub_2405AF788();
      v96 = v176;
      sub_24075ABE4();
      v97 = &v200;
      goto LABEL_22;
    case 0xAu:
      v90 = *v48;
      v89 = *(v48 + 1);
      v92 = *(v48 + 2);
      v133 = *(v48 + 3);
      LOBYTE(v201) = 12;
      sub_2405AFEA4();
      v93 = v177;
      v94 = v193;
      v95 = v191;
      sub_24075AB54();
      *&v201 = v90;
      *(&v201 + 1) = v89;
      *&v202 = v92;
      *(&v202 + 1) = v133;
      v190 = v133;
      sub_2405AF7DC();
      v96 = v179;
      sub_24075ABE4();
      v97 = &v201 + 8;
LABEL_22:
      (*(*(v97 - 32) + 8))(v93, v96);
      (*(v192[0] + 8))(v95, v94);

LABEL_25:
      return;
    case 0xBu:
      v61 = *v48;
      v62 = *(v48 + 1);
      v63 = *(v48 + 2);
      v64 = v48[24];
      LOBYTE(v201) = 13;
      sub_2405AFE50();
      v65 = v180;
      v66 = v193;
      v67 = v191;
      sub_24075AB54();
      *&v201 = v61;
      *(&v201 + 1) = v62;
      *&v202 = v63;
      BYTE8(v202) = v64;
      sub_2405AF830();
      v68 = v182;
      sub_24075ABE4();
      (*(v181 + 8))(v65, v68);
      (*(v192[0] + 8))(v67, v66);

      return;
    case 0xCu:
      v76 = *v48;
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v78 = swift_projectBox();
      v79 = *(v78 + 32);
      v80 = *(v78 + 48);
      v81 = *(v78 + 64);
      LOWORD(v206) = *(v78 + 80);
      v204 = v80;
      v205 = v81;
      v82 = *(v78 + 16);
      v201 = *v78;
      v202 = v82;
      v203 = v79;
      v83 = v149;
      sub_240594008(v78 + *(v77 + 48), v149, type metadata accessor for AuthenticationModel.State);
      v208 = 14;
      sub_2405AE2A4(&v201, &v194);
      sub_2405AFDFC();
      v84 = v186;
      v85 = v193;
      v86 = v191;
      sub_24075AB54();
      v196 = v203;
      v197 = v204;
      v198 = v205;
      LOWORD(v199) = v206;
      v194 = v201;
      v195 = v202;
      v208 = 0;
      sub_2405AF884();
      v87 = v188;
      v88 = v192[1];
      sub_24075ABE4();
      if (v88)
      {
        (v187[1])(v84, v87);
        sub_240593D7C(v83, type metadata accessor for AuthenticationModel.State);
        (*(v192[0] + 8))(v86, v85);
        sub_2405AE2DC(&v201);
      }

      else
      {
        LOBYTE(v194) = 1;
        sub_240594D3C(&qword_27E4B6448, type metadata accessor for AuthenticationModel.State);
        sub_24075ABE4();
        sub_2405AE2DC(&v201);
        (v187[1])(v84, v87);
        sub_240593D7C(v83, type metadata accessor for AuthenticationModel.State);
        (*(v192[0] + 8))(v86, v85);
      }

      goto LABEL_27;
    case 0xDu:
      v125 = *v48;
      v126 = swift_projectBox();
      sub_240594008(v126, v44, type metadata accessor for AuthenticationModel.State);
      LOBYTE(v201) = 15;
      sub_2405AFDA8();
      v127 = v183;
      v128 = v193;
      v129 = v191;
      sub_24075AB54();
      sub_240594D3C(&qword_27E4B6448, type metadata accessor for AuthenticationModel.State);
      v130 = v185;
      sub_24075ABE4();
      (*(v184 + 8))(v127, v130);
      sub_240593D7C(v44, type metadata accessor for AuthenticationModel.State);
      (*(v192[0] + 8))(v129, v128);
LABEL_27:

      return;
    case 0xEu:
      LOBYTE(v201) = 0;
      sub_2405B0294();
      v59 = v193;
      v60 = v191;
      sub_24075AB54();
      (*(v140 + 8))(v39, v36);
      goto LABEL_11;
    case 0xFu:
      LOBYTE(v201) = 3;
      sub_2405B0198();
      v106 = v146;
      v59 = v193;
      v60 = v191;
      sub_24075AB54();
      (*(v148 + 8))(v106, v151);
LABEL_11:
      (*(v192[0] + 8))(v60, v59);
      break;
    default:
      v53 = v141;
      sub_2405AE39C(v48, v141, type metadata accessor for AuthenticationModel.PreflightRepair);
      LOBYTE(v201) = 1;
      sub_2405B0240();
      v54 = v143;
      v55 = v193;
      v56 = v191;
      sub_24075AB54();
      sub_240594D3C(&qword_27E4B6640, type metadata accessor for AuthenticationModel.PreflightRepair);
      v57 = v145;
      sub_24075ABE4();
      v58 = &v176;
LABEL_16:
      (*(*(v58 - 32) + 8))(v54, v57);
      sub_240593D7C(v53, type metadata accessor for AuthenticationModel.PreflightRepair);
      (*(v192[0] + 8))(v56, v55);
      break;
  }
}

void AuthenticationModel.State.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v81[-v9];
  v11 = type metadata accessor for AuthenticationModel.State(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v81[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v81[-v19];
  sub_240594008(v2, &v81[-v19], type metadata accessor for AuthenticationModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2405AE39C(v20, v8, type metadata accessor for AuthenticationModel.PreflightRepair);
      MEMORY[0x245CC6BA0](2);
      IdMSAccount.hash(into:)(a1);
      v71 = v8[*(v4 + 20)];
      sub_24075AE94();
      v72 = *&v8[*(v4 + 24)];
      sub_24075AE94();
      if (v72)
      {
        v73 = v72;
        sub_24075A6E4();
      }

      v80 = v8;
      goto LABEL_35;
    case 2u:
      v58 = *(v20 + 5);
      v103 = *(v20 + 4);
      v104 = v58;
      v105 = v20[96];
      v59 = *(v20 + 1);
      v99 = *v20;
      v100 = v59;
      v60 = *(v20 + 3);
      v101 = *(v20 + 2);
      v102 = v60;
      v61 = 4;
      goto LABEL_15;
    case 3u:
      v62 = *(v20 + 5);
      v103 = *(v20 + 4);
      v104 = v62;
      v105 = v20[96];
      v63 = *(v20 + 1);
      v99 = *v20;
      v100 = v63;
      v64 = *(v20 + 3);
      v101 = *(v20 + 2);
      v102 = v64;
      v61 = 5;
LABEL_15:
      MEMORY[0x245CC6BA0](v61);
      v96 = v103;
      v97 = v104;
      v98 = v105;
      v92 = v99;
      v93 = v100;
      v95 = v102;
      v94 = v101;
      AuthenticationModel.BasicLogin.hash(into:)();
      sub_2405AE36C(&v99);
      return;
    case 4u:
      v30 = *(v20 + 3);
      v101 = *(v20 + 2);
      v102 = v30;
      v103 = *(v20 + 4);
      v31 = *(v20 + 1);
      v99 = *v20;
      v100 = v31;
      v32 = 6;
      goto LABEL_22;
    case 5u:
      v74 = *(v20 + 3);
      v101 = *(v20 + 2);
      v102 = v74;
      v103 = *(v20 + 4);
      v75 = *(v20 + 1);
      v99 = *v20;
      v100 = v75;
      MEMORY[0x245CC6BA0](7);
      v94 = v101;
      v95 = v102;
      v96 = v103;
      v93 = v100;
      v92 = v99;
      AuthenticationModel.SecondFactor.hash(into:)(a1);
      sub_2405AE33C(&v99);
      return;
    case 6u:
      v78 = *(v20 + 3);
      v101 = *(v20 + 2);
      v102 = v78;
      v103 = *(v20 + 4);
      v79 = *(v20 + 1);
      v99 = *v20;
      v100 = v79;
      v32 = 8;
LABEL_22:
      MEMORY[0x245CC6BA0](v32);
      v94 = v101;
      v95 = v102;
      v96 = v103;
      v93 = v100;
      v92 = v99;
      AuthenticationModel.SecondFactor.hash(into:)(a1);
      sub_2405AE30C(&v99);
      return;
    case 7u:
      v65 = *v20;
      v66 = *(v20 + 1);
      v67 = *(v20 + 2);
      v68 = *(v20 + 3);
      v69 = *(v20 + 4);
      v70 = 9;
      goto LABEL_26;
    case 8u:
      v65 = *v20;
      v66 = *(v20 + 1);
      v67 = *(v20 + 2);
      v68 = *(v20 + 3);
      v69 = *(v20 + 4);
      v70 = 10;
LABEL_26:
      MEMORY[0x245CC6BA0](v70);
      *&v99 = v65;
      *(&v99 + 1) = v66;
      *&v100 = v67;
      *(&v100 + 1) = v68;
      *&v101 = v69;
      AuthenticationModel.ServerRedirect.hash(into:)();

      return;
    case 9u:
      v53 = *v20;
      v54 = *(v20 + 1);
      v55 = *(v20 + 2);
      v56 = *(v20 + 3);
      v57 = 11;
      goto LABEL_24;
    case 0xAu:
      v53 = *v20;
      v54 = *(v20 + 1);
      v55 = *(v20 + 2);
      v56 = *(v20 + 3);
      v57 = 12;
LABEL_24:
      MEMORY[0x245CC6BA0](v57);
      *&v99 = v53;
      *(&v99 + 1) = v54;
      *&v100 = v55;
      *(&v100 + 1) = v56;
      AuthenticationModel.FidoChallenge.hash(into:)(a1);

      return;
    case 0xBu:
      v26 = *v20;
      v25 = *(v20 + 1);
      v27 = *(v20 + 2);
      v28 = v20[24];
      MEMORY[0x245CC6BA0](13);
      sub_24075AE94();
      if (v26)
      {
        v29 = v26;
        sub_24075A6E4();
      }

      sub_24075A114();
      if (v28 != 2)
      {
        sub_24075AE94();
      }

      sub_24075AE94();

      return;
    case 0xCu:
      v33 = *v20;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v91 = v33;
      v35 = swift_projectBox();
      v36 = *(v35 + 8);
      v90 = *v35;
      v37 = *(v35 + 24);
      v89 = *(v35 + 16);
      v38 = *(v35 + 32);
      v84 = *(v35 + 40);
      v39 = *(v35 + 48);
      v83 = *(v35 + 56);
      v41 = *(v35 + 64);
      v40 = *(v35 + 72);
      v82 = *(v35 + 80);
      v85 = *(v35 + 81);
      sub_240594008(v35 + *(v34 + 48), v18, type metadata accessor for AuthenticationModel.State);
      MEMORY[0x245CC6BA0](14);

      v42 = v38;
      v43 = v38;
      v44 = v84;
      v87 = v39;
      v45 = v39;
      v46 = v83;
      v88 = v41;
      v47 = v41;
      v48 = v82;
      v86 = v40;
      sub_2405B02E8(v43, v84, v45, v83, v47, v40, v82);
      v90 = v36;
      sub_24075A114();
      v89 = v37;
      sub_24075A114();
      if (v48 == 255)
      {
        sub_24075AE94();
        v49 = v42;
        v50 = v87;
        v51 = v88;
        v52 = v86;
      }

      else
      {
        v49 = v42;
        *&v99 = v42;
        *(&v99 + 1) = v44;
        v50 = v87;
        *&v100 = v87;
        *(&v100 + 1) = v46;
        v51 = v88;
        v52 = v86;
        *&v101 = v88;
        *(&v101 + 1) = v86;
        LOBYTE(v102) = v48;
        sub_24075AE94();
        sub_2405AF8D8(v49, v44, v50, v46, v51, v52, v48);
        SetupError.hash(into:)(a1);
        sub_2405AEA70(v99, *(&v99 + 1), v100, *(&v100 + 1), v101, *(&v101 + 1), v102);
      }

      sub_24075AE94();
      AuthenticationModel.State.hash(into:)(a1);

      sub_2405AEA5C(v49, v44, v50, v46, v51, v52, v48);
      sub_240593D7C(v18, type metadata accessor for AuthenticationModel.State);
      goto LABEL_32;
    case 0xDu:
      v76 = *v20;
      v77 = swift_projectBox();
      sub_240594008(v77, v15, type metadata accessor for AuthenticationModel.State);
      MEMORY[0x245CC6BA0](15);
      AuthenticationModel.State.hash(into:)(a1);
      sub_240593D7C(v15, type metadata accessor for AuthenticationModel.State);
LABEL_32:

      return;
    case 0xEu:
      v24 = 0;
      goto LABEL_13;
    case 0xFu:
      v24 = 3;
LABEL_13:
      MEMORY[0x245CC6BA0](v24);
      break;
    default:
      sub_2405AE39C(v20, v10, type metadata accessor for AuthenticationModel.PreflightRepair);
      MEMORY[0x245CC6BA0](1);
      IdMSAccount.hash(into:)(a1);
      v21 = v10[*(v4 + 20)];
      sub_24075AE94();
      v22 = *&v10[*(v4 + 24)];
      sub_24075AE94();
      if (v22)
      {
        v23 = v22;
        sub_24075A6E4();
      }

      v80 = v10;
LABEL_35:
      sub_240593D7C(v80, type metadata accessor for AuthenticationModel.PreflightRepair);
      break;
  }
}

uint64_t sub_24059ED7C(void (*a1)(_BYTE *))
{
  sub_24075AE64();
  a1(v3);
  return sub_24075AED4();
}

uint64_t AuthenticationModel.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v225 = a2;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B67F8, &qword_24075DAE8);
  v209 = *(v210 - 8);
  v3 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v223 = v168 - v4;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6800, &qword_24075DAF0);
  v227 = *(v232 - 8);
  v5 = *(v227 + 64);
  MEMORY[0x28223BE20](v232);
  v224 = v168 - v6;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6808, &qword_24075DAF8);
  v226 = *(v208 - 8);
  v7 = *(v226 + 64);
  MEMORY[0x28223BE20](v208);
  v222 = v168 - v8;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6810, &qword_24075DB00);
  v206 = *(v207 - 8);
  v9 = *(v206 + 64);
  MEMORY[0x28223BE20](v207);
  v221 = v168 - v10;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6818, &qword_24075DB08);
  v204 = *(v205 - 8);
  v11 = *(v204 + 64);
  MEMORY[0x28223BE20](v205);
  v220 = v168 - v12;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6820, &qword_24075DB10);
  v202 = *(v203 - 8);
  v13 = *(v202 + 64);
  MEMORY[0x28223BE20](v203);
  v219 = v168 - v14;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6828, &qword_24075DB18);
  v200 = *(v201 - 8);
  v15 = *(v200 + 64);
  MEMORY[0x28223BE20](v201);
  v218 = v168 - v16;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6830, &qword_24075DB20);
  v198 = *(v199 - 8);
  v17 = *(v198 + 64);
  MEMORY[0x28223BE20](v199);
  v217 = v168 - v18;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6838, &qword_24075DB28);
  v196 = *(v197 - 8);
  v19 = *(v196 + 64);
  MEMORY[0x28223BE20](v197);
  v216 = v168 - v20;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6840, &qword_24075DB30);
  v194 = *(v195 - 8);
  v21 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v215 = v168 - v22;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6848, &qword_24075DB38);
  v192 = *(v193 - 8);
  v23 = *(v192 + 64);
  MEMORY[0x28223BE20](v193);
  v214 = v168 - v24;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6850, &qword_24075DB40);
  v190 = *(v191 - 8);
  v25 = *(v190 + 64);
  MEMORY[0x28223BE20](v191);
  v213 = v168 - v26;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6858, &qword_24075DB48);
  v187 = *(v188 - 8);
  v27 = *(v187 + 64);
  MEMORY[0x28223BE20](v188);
  v212 = v168 - v28;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6860, &qword_24075DB50);
  v189 = *(v184 - 8);
  v29 = *(v189 + 64);
  MEMORY[0x28223BE20](v184);
  v211 = v168 - v30;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6868, &qword_24075DB58);
  v185 = *(v186 - 8);
  v31 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v231 = v168 - v32;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6870, &qword_24075DB60);
  v182 = *(v183 - 8);
  v33 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v229 = v168 - v34;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6878, &qword_24075DB68);
  v233 = *(v230 - 8);
  v35 = *(v233 + 64);
  MEMORY[0x28223BE20](v230);
  v37 = v168 - v36;
  v228 = type metadata accessor for AuthenticationModel.State(0);
  v38 = *(*(v228 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v228);
  v181 = (v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v39);
  v180 = (v168 - v42);
  v43 = MEMORY[0x28223BE20](v41);
  v179 = (v168 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v178 = (v168 - v46);
  v47 = MEMORY[0x28223BE20](v45);
  v176 = (v168 - v48);
  v49 = MEMORY[0x28223BE20](v47);
  v177 = v168 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v175 = v168 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v174 = v168 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v57 = v168 - v56;
  v58 = MEMORY[0x28223BE20](v55);
  v60 = v168 - v59;
  v61 = MEMORY[0x28223BE20](v58);
  v63 = v168 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v66 = v168 - v65;
  MEMORY[0x28223BE20](v64);
  v68 = (v168 - v67);
  v69 = a1[3];
  v70 = a1[4];
  v235 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v69);
  sub_2405AFD54();
  v234 = v37;
  v71 = v236;
  sub_24075AF34();
  v236 = v71;
  if (v71)
  {
LABEL_53:
    v95 = v235;
    return __swift_destroy_boxed_opaque_existential_1(v95);
  }

  v171 = v66;
  v172 = v63;
  v169 = v60;
  v170 = v57;
  v72 = v229;
  v74 = v231;
  v73 = v232;
  v173 = v68;
  v75 = v230;
  v76 = sub_24075AB34();
  if (*(v76 + 16) != 1 || (v77 = *(v76 + 32), v77 == 16))
  {
    v83 = sub_24075A8C4();
    v84 = swift_allocError();
    v85 = v75;
    v87 = v86;
    v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
    *v87 = v228;
    v89 = v234;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v83 - 8) + 104))(v87, *MEMORY[0x277D84160], v83);
    v236 = v84;
    swift_willThrow();
    (*(v233 + 8))(v89, v85);
LABEL_52:
    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  v168[1] = v76;
  v78 = v234;
  v79 = v227;
  v80 = v226;
  switch(v77)
  {
    case 1:
      LOBYTE(v237) = 1;
      sub_2405B0240();
      v136 = v236;
      sub_24075AA54();
      v236 = v136;
      if (v136)
      {
        goto LABEL_51;
      }

      type metadata accessor for AuthenticationModel.PreflightRepair(0);
      sub_240594D3C(&qword_27E4B66A0, type metadata accessor for AuthenticationModel.PreflightRepair);
      v137 = v171;
      v138 = v186;
      v139 = v236;
      sub_24075AAF4();
      (*(v185 + 8))(v74, v138);
      (*(v233 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v95 = v235;
      v236 = v139;
      if (!v139)
      {
        v140 = v235;
        swift_storeEnumTagMultiPayload();
        v82 = v173;
        sub_2405AE39C(v137, v173, type metadata accessor for AuthenticationModel.State);
        goto LABEL_67;
      }

      return __swift_destroy_boxed_opaque_existential_1(v95);
    case 2:
      LOBYTE(v237) = 2;
      sub_2405B01EC();
      v120 = v211;
      v121 = v236;
      sub_24075AA54();
      v236 = v121;
      if (v121)
      {
        goto LABEL_51;
      }

      type metadata accessor for AuthenticationModel.PreflightRepair(0);
      sub_240594D3C(&qword_27E4B66A0, type metadata accessor for AuthenticationModel.PreflightRepair);
      v122 = v172;
      v123 = v184;
      v124 = v236;
      sub_24075AAF4();
      v236 = v124;
      if (v124)
      {
        (*(v189 + 8))(v120, v123);
        goto LABEL_51;
      }

      (*(v189 + 8))(v120, v123);
      (*(v233 + 8))(v78, v75);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v160 = v122;
      goto LABEL_64;
    case 3:
      LOBYTE(v237) = 3;
      sub_2405B0198();
      v130 = v212;
      v131 = v236;
      sub_24075AA54();
      v236 = v131;
      if (v131)
      {
        goto LABEL_51;
      }

      (*(v187 + 8))(v130, v188);
      (*(v233 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v82 = v173;
      goto LABEL_65;
    case 4:
      LOBYTE(v237) = 4;
      sub_2405B0144();
      v104 = v213;
      v105 = v236;
      sub_24075AA54();
      v236 = v105;
      if (v105)
      {
        goto LABEL_51;
      }

      sub_2405AFAB4();
      v106 = v191;
      v107 = v236;
      sub_24075AAF4();
      v108 = (v190 + 8);
      v109 = (v233 + 8);
      v236 = v107;
      if (v107)
      {
        goto LABEL_56;
      }

      (*v108)(v104, v106);
      (*v109)(v78, v75);
      swift_unknownObjectRelease();
      v110 = v242;
      v103 = v169;
      *(v169 + 4) = v241;
      v103[5] = v110;
      *(v103 + 96) = v243;
      v111 = v238;
      *v103 = v237;
      v103[1] = v111;
      v112 = v240;
      v103[2] = v239;
      v103[3] = v112;
      goto LABEL_63;
    case 5:
      LOBYTE(v237) = 5;
      sub_2405B00F0();
      v104 = v214;
      v141 = v236;
      sub_24075AA54();
      v236 = v141;
      if (v141)
      {
        goto LABEL_51;
      }

      sub_2405AFAB4();
      v106 = v193;
      v142 = v236;
      sub_24075AAF4();
      v108 = (v192 + 8);
      v109 = (v233 + 8);
      v236 = v142;
      if (v142)
      {
        goto LABEL_56;
      }

      (*v108)(v104, v106);
      (*v109)(v78, v75);
      swift_unknownObjectRelease();
      v143 = v242;
      v103 = v170;
      *(v170 + 4) = v241;
      v103[5] = v143;
      *(v103 + 96) = v243;
      v144 = v238;
      *v103 = v237;
      v103[1] = v144;
      v145 = v240;
      v103[2] = v239;
      v103[3] = v145;
      goto LABEL_63;
    case 6:
      LOBYTE(v237) = 6;
      sub_2405B009C();
      v104 = v215;
      v150 = v236;
      sub_24075AA54();
      v236 = v150;
      if (v150)
      {
        goto LABEL_51;
      }

      sub_2405AFB08();
      v106 = v195;
      v151 = v236;
      sub_24075AAF4();
      v108 = (v194 + 8);
      v109 = (v233 + 8);
      v236 = v151;
      if (v151)
      {
        goto LABEL_56;
      }

      (*v108)(v104, v106);
      (*v109)(v78, v75);
      swift_unknownObjectRelease();
      v152 = v240;
      v103 = v174;
      *(v174 + 2) = v239;
      v103[3] = v152;
      v103[4] = v241;
      v153 = v238;
      *v103 = v237;
      v103[1] = v153;
      goto LABEL_63;
    case 7:
      LOBYTE(v237) = 7;
      sub_2405B0048();
      v104 = v216;
      v132 = v236;
      sub_24075AA54();
      v236 = v132;
      if (v132)
      {
        goto LABEL_51;
      }

      sub_2405AFB5C();
      v106 = v197;
      v133 = v236;
      sub_24075AAF4();
      v108 = (v196 + 8);
      v109 = (v233 + 8);
      v236 = v133;
      if (v133)
      {
        goto LABEL_56;
      }

      (*v108)(v104, v106);
      (*v109)(v78, v75);
      swift_unknownObjectRelease();
      v134 = v240;
      v103 = v175;
      *(v175 + 2) = v239;
      v103[3] = v134;
      v103[4] = v241;
      v135 = v238;
      *v103 = v237;
      v103[1] = v135;
      goto LABEL_63;
    case 8:
      LOBYTE(v237) = 8;
      sub_2405AFFF4();
      v104 = v217;
      v156 = v236;
      sub_24075AA54();
      v236 = v156;
      if (v156)
      {
        goto LABEL_51;
      }

      sub_2405AFB08();
      v106 = v199;
      v158 = v236;
      sub_24075AAF4();
      v108 = (v198 + 8);
      v109 = (v233 + 8);
      v236 = v158;
      if (v158)
      {
LABEL_56:
        (*v108)(v104, v106);
        (*v109)(v78, v75);
        goto LABEL_52;
      }

      (*v108)(v104, v106);
      (*v109)(v78, v75);
      swift_unknownObjectRelease();
      v166 = v240;
      v103 = v177;
      *(v177 + 2) = v239;
      v103[3] = v166;
      v103[4] = v241;
      v167 = v238;
      *v103 = v237;
      v103[1] = v167;
      goto LABEL_63;
    case 9:
      LOBYTE(v237) = 9;
      sub_2405AFFA0();
      v96 = v218;
      v116 = v236;
      sub_24075AA54();
      v236 = v116;
      if (v116)
      {
        goto LABEL_51;
      }

      sub_2405AFBB0();
      v98 = v201;
      v117 = v236;
      sub_24075AAF4();
      v100 = v233;
      v236 = v117;
      v101 = &v232;
      if (v117)
      {
        goto LABEL_48;
      }

      (*(v200 + 8))(v96, v98);
      (*(v100 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v118 = v239;
      v119 = v238;
      v103 = v176;
      *v176 = v237;
      v103[1] = v119;
      *(v103 + 4) = v118;
      goto LABEL_63;
    case 10:
      LOBYTE(v237) = 10;
      sub_2405AFF4C();
      v96 = v219;
      v154 = v236;
      sub_24075AA54();
      v236 = v154;
      if (v154)
      {
        goto LABEL_51;
      }

      sub_2405AFBB0();
      v98 = v203;
      v155 = v236;
      sub_24075AAF4();
      v100 = v233;
      v236 = v155;
      v101 = &v234;
      if (v155)
      {
        goto LABEL_48;
      }

      (*(v202 + 8))(v96, v98);
      (*(v100 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v164 = v239;
      v165 = v238;
      v103 = v178;
      *v178 = v237;
      v103[1] = v165;
      *(v103 + 4) = v164;
      goto LABEL_63;
    case 11:
      LOBYTE(v237) = 11;
      sub_2405AFEF8();
      v96 = v220;
      v97 = v236;
      sub_24075AA54();
      v236 = v97;
      if (v97)
      {
        goto LABEL_51;
      }

      sub_2405AFC04();
      v98 = v205;
      v99 = v236;
      sub_24075AAF4();
      v100 = v233;
      v236 = v99;
      v101 = &v236;
      if (v99)
      {
        goto LABEL_48;
      }

      (*(v204 + 8))(v96, v98);
      (*(v100 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v102 = v238;
      v103 = v179;
      *v179 = v237;
      v103[1] = v102;
      goto LABEL_63;
    case 12:
      LOBYTE(v237) = 12;
      sub_2405AFEA4();
      v96 = v221;
      v113 = v236;
      sub_24075AA54();
      v236 = v113;
      if (v113)
      {
        goto LABEL_51;
      }

      sub_2405AFC58();
      v98 = v207;
      v114 = v236;
      sub_24075AAF4();
      v100 = v233;
      v236 = v114;
      v101 = &v237 + 1;
      if (!v114)
      {
        (*(v206 + 8))(v96, v98);
        (*(v100 + 8))(v78, v75);
        swift_unknownObjectRelease();
        v115 = v238;
        v103 = v180;
        *v180 = v237;
        v103[1] = v115;
        goto LABEL_63;
      }

LABEL_48:
      (*(*(v101 - 32) + 8))(v96, v98);
      goto LABEL_49;
    case 13:
      LOBYTE(v237) = 13;
      sub_2405AFE50();
      v146 = v222;
      v147 = v236;
      sub_24075AA54();
      v236 = v147;
      if (v147)
      {
        goto LABEL_51;
      }

      sub_2405AFCAC();
      v148 = v208;
      v149 = v236;
      sub_24075AAF4();
      v100 = v233;
      v236 = v149;
      if (!v149)
      {
        (*(v80 + 8))(v146, v148);
        (*(v100 + 8))(v78, v75);
        swift_unknownObjectRelease();
        v162 = v238;
        v163 = BYTE8(v238);
        v103 = v181;
        *v181 = v237;
        *(v103 + 2) = v162;
        *(v103 + 24) = v163;
LABEL_63:
        swift_storeEnumTagMultiPayload();
        v160 = v103;
LABEL_64:
        v82 = v173;
        sub_2405AE39C(v160, v173, type metadata accessor for AuthenticationModel.State);
        goto LABEL_66;
      }

      (*(v80 + 8))(v146, v148);
LABEL_49:
      (*(v100 + 8))(v78, v75);
      goto LABEL_52;
    case 14:
      LOBYTE(v237) = 14;
      sub_2405AFDFC();
      v90 = v224;
      v91 = v236;
      sub_24075AA54();
      v236 = v91;
      if (v91)
      {
        goto LABEL_51;
      }

      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
      v93 = swift_allocBox();
      LOBYTE(v237) = 0;
      sub_2405AFD00();
      v94 = v236;
      sub_24075AAF4();
      if (v94)
      {
        (*(v79 + 8))(v90, v73);
        (*(v233 + 8))(v78, v75);
        swift_unknownObjectRelease();
        swift_deallocBox();
        v95 = v235;
        v236 = v94;
        return __swift_destroy_boxed_opaque_existential_1(v95);
      }

      v159 = *(v92 + 48);
      v244 = 1;
      sub_240594D3C(&qword_27E4B6490, type metadata accessor for AuthenticationModel.State);
      sub_24075AAF4();
      v236 = 0;
      (*(v227 + 8))(v90, v73);
      (*(v233 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v82 = v173;
      *v173 = v93;
      goto LABEL_65;
    case 15:
      LOBYTE(v237) = 15;
      sub_2405AFDA8();
      v125 = v223;
      v126 = v236;
      sub_24075AA54();
      v236 = v126;
      if (v126)
      {
        goto LABEL_51;
      }

      v127 = swift_allocBox();
      sub_240594D3C(&qword_27E4B6490, type metadata accessor for AuthenticationModel.State);
      v128 = v210;
      v129 = v236;
      sub_24075AAF4();
      v236 = v129;
      if (v129)
      {
        (*(v209 + 8))(v125, v128);
        (*(v233 + 8))(v78, v75);
        swift_unknownObjectRelease();
        swift_deallocBox();
        goto LABEL_53;
      }

      (*(v209 + 8))(v125, v128);
      (*(v233 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v161 = v173;
      *v173 = v127;
      v82 = v161;
      goto LABEL_65;
    default:
      LOBYTE(v237) = 0;
      sub_2405B0294();
      v81 = v236;
      sub_24075AA54();
      v236 = v81;
      if (v81)
      {
LABEL_51:
        (*(v233 + 8))(v78, v75);
        goto LABEL_52;
      }

      (*(v182 + 8))(v72, v183);
      (*(v233 + 8))(v78, v75);
      swift_unknownObjectRelease();
      v82 = v173;
LABEL_65:
      swift_storeEnumTagMultiPayload();
LABEL_66:
      v140 = v235;
LABEL_67:
      sub_2405AE39C(v82, v225, type metadata accessor for AuthenticationModel.State);
      v95 = v140;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v95);
}

uint64_t sub_2405A0E0C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_24075AE64();
  a3(v5);
  return sub_24075AED4();
}

uint64_t sub_2405A0E70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

uint64_t sub_2405A0EB4()
{
  v1 = 0x6C616E6F6974706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6465726975716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_2405A0F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B7798(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405A0F34(uint64_t a1)
{
  v2 = sub_2405B02FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A0F70(uint64_t a1)
{
  v2 = sub_2405B02FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A0FAC(uint64_t a1)
{
  v2 = sub_2405B03F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A0FE8(uint64_t a1)
{
  v2 = sub_2405B03F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A1024(uint64_t a1)
{
  v2 = sub_2405B03A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A1060(uint64_t a1)
{
  v2 = sub_2405B03A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A109C(uint64_t a1)
{
  v2 = sub_2405B0350();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A10D8(uint64_t a1)
{
  v2 = sub_2405B0350();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.UserInteraction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6880, &qword_24075DB70);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6888, &qword_24075DB78);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6890, &qword_24075DB80);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6898, &qword_24075DB88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B02FC();
  sub_24075AF74();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_2405B03A4();
      v12 = v26;
      sub_24075AB54();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_2405B0350();
      v12 = v29;
      sub_24075AB54();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_2405B03F8();
    sub_24075AB54();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t AuthenticationModel.UserInteraction.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68C0, &qword_24075DB90);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68C8, &qword_24075DB98);
  v41 = *(v44 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68D0, &qword_24075DBA0);
  v46 = *(v9 - 8);
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68D8, &qword_24075DBA8);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B02FC();
  v18 = v49;
  sub_24075AF34();
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
  v22 = sub_24075AB34();
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
          sub_2405B03A4();
          v33 = v40;
          sub_24075AA54();
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
          sub_2405B0350();
          v37 = v40;
          sub_24075AA54();
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
        sub_2405B03F8();
        v35 = v40;
        sub_24075AA54();
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

  v26 = sub_24075A8C4();
  swift_allocError();
  v28 = v27;
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
  *v28 = &type metadata for AuthenticationModel.UserInteraction;
  sub_24075AA64();
  sub_24075A8A4();
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

BOOL AuthenticationModel.isLoading.getter()
{
  v1 = type metadata accessor for AuthenticationModel.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AuthenticationModel(0);
  sub_240594008(v0 + *(v5 + 40), v4, type metadata accessor for AuthenticationModel.State);
  v6 = swift_getEnumCaseMultiPayload() == 13;
  sub_240593D7C(v4, type metadata accessor for AuthenticationModel.State);
  return v6;
}

double AuthenticationModel.alertModel.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = type metadata accessor for AuthenticationModel.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for AuthenticationModel(0);
  sub_240594008(v1 + *(v11 + 40), v10, type metadata accessor for AuthenticationModel.State);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v12 = *v10;
    v13 = swift_projectBox();
    sub_2405B044C(v13, v6, &qword_27E4B64B0, &qword_240774850);
    v14 = *(v6 + 3);
    v21 = *(v6 + 2);
    v22 = v14;
    v23 = *(v6 + 4);
    v24 = *(v6 + 40);
    v15 = *(v6 + 1);
    v19 = *v6;
    v20 = v15;
    sub_240593D7C(&v6[*(v3 + 48)], type metadata accessor for AuthenticationModel.State);

    v16 = v22;
    *(a1 + 32) = v21;
    *(a1 + 48) = v16;
    *(a1 + 64) = v23;
    *(a1 + 80) = v24;
    result = *&v19;
    v18 = v20;
    *a1 = v19;
    *(a1 + 16) = v18;
  }

  else
  {
    sub_240593D7C(v10, type metadata accessor for AuthenticationModel.State);
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 81) = 0;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 80) = -1;
  }

  return result;
}

uint64_t AuthenticationModel.isAlertPresented.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - v3;
  v5 = type metadata accessor for AuthenticationModel.State(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AuthenticationModel(0);
  sub_240594008(v0 + *(v9 + 40), v8, type metadata accessor for AuthenticationModel.State);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v10 = *v8;
    v11 = swift_projectBox();
    sub_2405B044C(v11, v4, &qword_27E4B64B0, &qword_240774850);
    v13 = *v4;
    v12 = *(v4 + 1);
    v14 = *(v4 + 2);
    v15 = *(v4 + 3);
    v16 = *(v4 + 3);
    v25 = *(v4 + 2);
    v26 = v16;
    v18 = *(v4 + 8);
    v17 = *(v4 + 9);
    v19 = v4[81];
    v20 = *(v1 + 48);
    v21 = v4[80];
    sub_240593D7C(&v4[v20], type metadata accessor for AuthenticationModel.State);

    v22 = v25;
    v23 = v26;
  }

  else
  {
    sub_240593D7C(v8, type metadata accessor for AuthenticationModel.State);
    v21 = -1;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    v17 = 0;
    v18 = 0;
    v14 = 0;
    v13 = 0;
    v19 = 0;
    v22 = 0uLL;
    v15 = 0xE000000000000000;
    v23 = 0uLL;
    v12 = 0xE000000000000000;
  }

  v27[0] = v13;
  v27[1] = v12;
  v27[2] = v14;
  v27[3] = v15;
  v28 = v22;
  v29 = v23;
  v30 = v18;
  v31 = v17;
  v32 = v21;
  v33 = v19;
  sub_2405AE2DC(v27);
  return v33;
}

uint64_t AuthenticationModel.isAlertPresented.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B64B0, &qword_240774850);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = type metadata accessor for AuthenticationModel.State(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = *(type metadata accessor for AuthenticationModel(0) + 40);
  sub_240594008(v1 + v14, v11, type metadata accessor for AuthenticationModel.State);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    return sub_240593D7C(v11, type metadata accessor for AuthenticationModel.State);
  }

  v15 = *v11;
  v16 = swift_projectBox();
  sub_2405B044C(v16, v6, &qword_27E4B64B0, &qword_240774850);
  v17 = *(v6 + 3);
  v30 = *(v6 + 2);
  v31 = v17;
  v32 = *(v6 + 4);
  v33 = v6[80];
  v18 = *(v6 + 1);
  v28 = *v6;
  v29 = v18;
  sub_2405AE39C(&v6[*(v3 + 48)], v13, type metadata accessor for AuthenticationModel.State);

  v19 = a1 & 1;
  v20 = swift_allocBox();
  v21 = *(v3 + 48);
  v22 = v29;
  *v23 = v28;
  *(v23 + 16) = v22;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  *(v23 + 80) = v33;
  *(v23 + 48) = v25;
  *(v23 + 64) = v26;
  *(v23 + 32) = v24;
  *(v23 + 81) = v19;
  sub_2405AE39C(v13, v23 + v21, type metadata accessor for AuthenticationModel.State);
  sub_240593D7C(v1 + v14, type metadata accessor for AuthenticationModel.State);
  *(v1 + v14) = v20;
  return swift_storeEnumTagMultiPayload();
}

uint64_t (*AuthenticationModel.isAlertPresented.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = AuthenticationModel.isAlertPresented.getter() & 1;
  return sub_2405A2210;
}

uint64_t sub_2405A2238()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B6400);
  v1 = __swift_project_value_buffer(v0, qword_27E4B6400);
  if (qword_27E4B5EB8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E4B8518);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t AuthenticationModel.BasicLogin.username.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AuthenticationModel.BasicLogin.username.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticationModel.BasicLogin.password.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t AuthenticationModel.BasicLogin.password.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void *AuthenticationModel.BasicLogin.authenticationContext.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t AuthenticationModel.BasicLogin.currentServices.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

void *AuthenticationModel.BasicLogin.error.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.BasicLogin.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405A261C;
}

id AuthenticationModel.BasicLogin.userSubmission.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  return sub_2405B04B4(v2, v3, v4, v5, v6);
}

__n128 AuthenticationModel.BasicLogin.userSubmission.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_2405B0544(*(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v5;
  *(v1 + 96) = v3;
  return result;
}

void sub_2405A26A4(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      if (v3)
      {
        v11 = *v1;
      }

      else
      {
        v11 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      }

      v24 = qword_27E4B5E90;
      v25 = v3;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = sub_240759AE4();
      __swift_project_value_buffer(v26, qword_27E4B6400);
      v27 = v11;
      v28 = sub_240759AC4();
      v29 = sub_24075A5E4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v27;
        v27;
        _os_log_impl(&dword_240579000, v28, v29, "Failed to submit username and password: %@", v30, 0xCu);
        sub_2405B8A50(v31, &qword_27E4B92A0, &qword_240762400);
        MEMORY[0x245CC76B0](v31, -1, -1);
        MEMORY[0x245CC76B0](v30, -1, -1);
      }
    }

    else
    {
      if (!(*(v1 + 16) | v4 | v3 | *(v1 + 24)))
      {
        if (qword_27E4B5E90 != -1)
        {
          swift_once();
        }

        v32 = sub_240759AE4();
        __swift_project_value_buffer(v32, qword_27E4B6400);
        v33 = sub_240759AC4();
        v34 = sub_24075A5C4();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_240579000, v33, v34, "User submitted empty response", v35, 2u);
          MEMORY[0x245CC76B0](v35, -1, -1);
        }

        v3 = 0;
        v4 = 0;
        goto LABEL_34;
      }

      if (qword_27E4B5E90 != -1)
      {
        swift_once();
      }

      v19 = sub_240759AE4();
      __swift_project_value_buffer(v19, qword_27E4B6400);
      v20 = sub_240759AC4();
      v21 = sub_24075A5C4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_240579000, v20, v21, "Client decided to skip basic login, means they are cancelling", v22, 2u);
        MEMORY[0x245CC76B0](v22, -1, -1);
      }

      sub_2405B8998();
      swift_allocError();
      *v23 = 3;
      *(v23 + 8) = 0u;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0;
      *(v23 + 48) = 6;
    }

    swift_willThrow();
    return;
  }

  v36 = *(v1 + 16);
  if (*(v1 + 32))
  {
    v12 = qword_27E4B5E90;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_240759AE4();
    __swift_project_value_buffer(v13, qword_27E4B6400);

    v14 = sub_240759AC4();
    v15 = sub_24075A5C4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v37 = v17;
      *v16 = 136315394;
      *(v16 + 4) = sub_2405BBA7C(v3, v4, &v37);
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2405BBA7C(0x657463616465723CLL, 0xEA00000000003E64, &v37);
      _os_log_impl(&dword_240579000, v14, v15, "User submitted username: %s and password: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v17, -1, -1);
      MEMORY[0x245CC76B0](v16, -1, -1);
    }

    v18 = v36;
    goto LABEL_35;
  }

  v5 = qword_27E4B5E90;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B6400);

  v7 = sub_240759AC4();
  v8 = sub_24075A5C4();
  sub_2405B0558(v3, v4, v36, *(&v36 + 1), 0);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2405BBA7C(v3, v4, &v37);
    _os_log_impl(&dword_240579000, v7, v8, "User submitted only username: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CC76B0](v10, -1, -1);
    MEMORY[0x245CC76B0](v9, -1, -1);
  }

LABEL_34:
  v18 = 0uLL;
LABEL_35:
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v18;
  *(a1 + 32) = 0;
}

unint64_t sub_2405A2CD8()
{
  v1 = *v0;
  v2 = 0x72657355796C6E6FLL;
  v3 = 0x6572756C696166;
  v4 = 0x7974706D65;
  if (v1 != 3)
  {
    v4 = 0x64657070696B73;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2405A2D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B78AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405A2DA4(uint64_t a1)
{
  v2 = sub_2405B05D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A2DE0(uint64_t a1)
{
  v2 = sub_2405B05D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A2E1C(uint64_t a1)
{
  v2 = sub_2405B067C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A2E58(uint64_t a1)
{
  v2 = sub_2405B067C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A2E94(uint64_t a1)
{
  v2 = sub_2405B06D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A2ED0(uint64_t a1)
{
  v2 = sub_2405B06D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A2F0C()
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](0);
  return sub_24075AED4();
}

uint64_t sub_2405A2F50()
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](0);
  return sub_24075AED4();
}

uint64_t sub_2405A2F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24075ACF4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2405A3010(uint64_t a1)
{
  v2 = sub_2405B07D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A304C(uint64_t a1)
{
  v2 = sub_2405B07D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A3088(uint64_t a1)
{
  v2 = sub_2405B0628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A30C4(uint64_t a1)
{
  v2 = sub_2405B0628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A3100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2405A31CC(uint64_t a1)
{
  v2 = sub_2405B0724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A3208(uint64_t a1)
{
  v2 = sub_2405B0724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BasicLogin.Submission.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68E0, &qword_24075DBB0);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68E8, &qword_24075DBB8);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v39 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68F0, &qword_24075DBC0);
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v46 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B68F8, &qword_24075DBC8);
  v49 = *(v12 - 8);
  v50 = v12;
  v13 = *(v49 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6900, &qword_24075DBD0);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6908, &qword_24075DBD8);
  v53 = *(v20 - 8);
  v54 = v20;
  v21 = *(v53 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v39 - v22;
  v24 = *v1;
  *&v52 = v1[1];
  *(&v52 + 1) = v24;
  v25 = v1[3];
  *&v51 = v1[2];
  *(&v51 + 1) = v25;
  v26 = *(v1 + 32);
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B05D4();
  sub_24075AF74();
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      LOBYTE(v56) = 2;
      sub_2405B06D0();
      v29 = v46;
      v30 = v54;
      sub_24075AB54();
      *&v56 = *(&v52 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
      sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
      v31 = v48;
      sub_24075ABE4();
      (*(v47 + 8))(v29, v31);
      return (*(v53 + 8))(v23, v30);
    }

    v28 = v54;
    if ((v51 | v52) == 0)
    {
      LOBYTE(v56) = 3;
      sub_2405B067C();
      v36 = v39;
      sub_24075AB54();
      v38 = v40;
      v37 = v41;
    }

    else
    {
      LOBYTE(v56) = 4;
      sub_2405B0628();
      v36 = v42;
      sub_24075AB54();
      v38 = v43;
      v37 = v44;
    }

    (*(v38 + 8))(v36, v37);
    return (*(v53 + 8))(v23, v28);
  }

  if (!v26)
  {
    LOBYTE(v56) = 0;
    sub_2405B07D8();
    v28 = v54;
    sub_24075AB54();
    sub_24075ABB4();
    (*(v45 + 8))(v19, v16);
    return (*(v53 + 8))(v23, v28);
  }

  LOBYTE(v56) = 1;
  sub_2405B0724();
  v33 = v54;
  sub_24075AB54();
  LOBYTE(v56) = 0;
  v34 = v50;
  v35 = v55;
  sub_24075ABB4();
  if (!v35)
  {
    v56 = v51;
    v57 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
    sub_2405B0778(&qword_27E4B6940, &qword_27E4B6938, &qword_24075DBE8);
    sub_24075ABE4();
  }

  (*(v49 + 8))(v15, v34);
  return (*(v53 + 8))(v23, v33);
}

void AuthenticationModel.BasicLogin.Submission.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*(v0 + 32) > 1u)
  {
    if (*(v0 + 32) == 2)
    {
      MEMORY[0x245CC6BA0](2);
      if (v1)
      {
        sub_24075AE94();
        v5 = v1;
        sub_24075A6E4();

        sub_2405B0558(v1, v2, v4, v3, 2);
      }

      else
      {
        sub_24075AE94();
      }
    }

    else
    {
      if (v4 | v2 | v1 | v3)
      {
        v6 = 4;
      }

      else
      {
        v6 = 3;
      }

      MEMORY[0x245CC6BA0](v6);
    }
  }

  else
  {
    if (*(v0 + 32))
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
    }

    else
    {
      MEMORY[0x245CC6BA0](0);
    }

    sub_24075A114();
  }
}

uint64_t AuthenticationModel.BasicLogin.Submission.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_24075AE64();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      MEMORY[0x245CC6BA0](2);
      sub_24075AE94();
      if (v1)
      {
        v6 = v1;
        sub_24075A6E4();
        sub_2405B0558(v1, v2, v4, v3, 2);
      }
    }

    else
    {
      if (v4 | v2 | v1 | v3)
      {
        v7 = 4;
      }

      else
      {
        v7 = 3;
      }

      MEMORY[0x245CC6BA0](v7);
    }
  }

  else
  {
    if (v5)
    {
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
    }

    else
    {
      MEMORY[0x245CC6BA0](0);
    }

    sub_24075A114();
  }

  return sub_24075AED4();
}

uint64_t AuthenticationModel.BasicLogin.Submission.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6950, &qword_24075DBF0);
  v71 = *(v73 - 8);
  v3 = *(v71 + 64);
  MEMORY[0x28223BE20](v73);
  v81 = &v66 - v4;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6958, &qword_24075DBF8);
  v72 = *(v74 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v80 = &v66 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6960, &qword_24075DC00);
  v75 = *(v77 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v78 = &v66 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6968, &qword_24075DC08);
  v76 = *(v70 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x28223BE20](v70);
  v11 = &v66 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6970, &qword_24075DC10);
  v69 = *(v12 - 8);
  v13 = *(v69 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6978, &qword_24075DC18);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v66 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2405B05D4();
  v23 = v82;
  sub_24075AF34();
  if (!v23)
  {
    v67 = 0;
    v68 = v17;
    v25 = v80;
    v24 = v81;
    v82 = v16;
    v26 = sub_24075AB34();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 5) : (v29 = 1), v29))
    {
      v30 = sub_24075A8C4();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40) + 48);
      *v32 = &type metadata for AuthenticationModel.BasicLogin.Submission;
      v34 = v82;
      sub_24075AA64();
      sub_24075A8A4();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      v35 = v20;
      v36 = v68;
    }

    else
    {
      if (*(v26 + 32) <= 1u)
      {
        if (*(v26 + 32))
        {
          LOBYTE(v84) = 1;
          sub_2405B0724();
          v55 = v11;
          v56 = v82;
          v57 = v67;
          sub_24075AA54();
          if (!v57)
          {
            LOBYTE(v84) = 0;
            v58 = v70;
            v59 = sub_24075AAC4();
            v44 = v63;
            v81 = v59;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
            v86 = 1;
            sub_2405B082C();
            sub_24075AAF4();
            (*(v76 + 8))(v55, v58);
            (*(v68 + 8))(v20, v56);
            swift_unknownObjectRelease();
            v45 = v84;
            v46 = v85;
            v47 = 1;
            v43 = v81;
            goto LABEL_29;
          }

          (*(v68 + 8))(v20, v56);
        }

        else
        {
          LOBYTE(v84) = 0;
          sub_2405B07D8();
          v48 = v82;
          v49 = v67;
          sub_24075AA54();
          if (!v49)
          {
            v60 = v12;
            v61 = sub_24075AAC4();
            v62 = v68;
            v44 = v64;
            v65 = v61;
            (*(v69 + 8))(v15, v60);
            (*(v62 + 8))(v20, v82);
            swift_unknownObjectRelease();
            v43 = v65;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            goto LABEL_29;
          }

          (*(v68 + 8))(v20, v48);
        }

LABEL_10:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v83);
      }

      if (v28 != 2)
      {
        v78 = v26;
        v38 = v68;
        v39 = v82;
        if (v28 == 3)
        {
          LOBYTE(v84) = 3;
          sub_2405B067C();
          v40 = v20;
          v41 = v67;
          sub_24075AA54();
          v42 = v79;
          if (!v41)
          {
            (*(v72 + 8))(v25, v74);
            (*(v38 + 8))(v40, v39);
            swift_unknownObjectRelease();
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = 3;
LABEL_30:
            *v42 = v43;
            *(v42 + 8) = v44;
            *(v42 + 16) = v45;
            *(v42 + 24) = v46;
            *(v42 + 32) = v47;
            return __swift_destroy_boxed_opaque_existential_1(v83);
          }
        }

        else
        {
          LOBYTE(v84) = 4;
          sub_2405B0628();
          v40 = v20;
          v54 = v67;
          sub_24075AA54();
          v42 = v79;
          if (!v54)
          {
            (*(v71 + 8))(v24, v73);
            (*(v38 + 8))(v40, v39);
            swift_unknownObjectRelease();
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = 3;
            v43 = 1;
            goto LABEL_30;
          }
        }

        (*(v38 + 8))(v40, v39);
        goto LABEL_10;
      }

      LOBYTE(v84) = 2;
      sub_2405B06D0();
      v34 = v82;
      v50 = v67;
      sub_24075AA54();
      v35 = v20;
      v36 = v68;
      if (!v50)
      {
        v51 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
        v52 = v78;
        sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
        v53 = v77;
        sub_24075AAF4();
        (*(v75 + 8))(v52, v53);
        (*(v36 + 8))(v51, v34);
        swift_unknownObjectRelease();
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v43 = v84;
        v47 = 2;
LABEL_29:
        v42 = v79;
        goto LABEL_30;
      }
    }

    (*(v36 + 8))(v35, v34);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_2405A45A8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_24075AE64();
  AuthenticationModel.BasicLogin.Submission.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2405A4600()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  sub_24075AE64();
  AuthenticationModel.BasicLogin.Submission.hash(into:)();
  return sub_24075AED4();
}

unint64_t AuthenticationModel.BasicLogin.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 34);
  sub_24075A864();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v3, v4);

  MEMORY[0x245CC5E60](0x70696B537369202CLL, 0xED0000203A646570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6988, &qword_24075DC20);
  v5 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v5);

  return 0xD00000000000001ALL;
}

unint64_t AuthenticationModel.BasicLogin.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 34);

  sub_24075A864();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6450, &qword_24076F340);
  v5 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v5);

  MEMORY[0x245CC5E60](0x736150736168202CLL, 0xEF203A64726F7773);
  if (v3)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v3)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v6, v7);

  MEMORY[0x245CC5E60](0x70696B537369202CLL, 0xED0000203A646570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6988, &qword_24075DC20);
  v8 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v8);

  return 0xD000000000000010;
}

unint64_t sub_2405A48DC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x656D616E72657375;
    v7 = 0xD000000000000017;
    v8 = 0x6C65636E61437369;
    if (a1 != 3)
    {
      v8 = 0x657070696B537369;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x64726F7773736170;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x53746E6572727563;
    v2 = 0x726F727265;
    if (a1 != 9)
    {
      v2 = 0x6D62755372657375;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    v4 = 0xD000000000000013;
    if (a1 != 6)
    {
      v4 = 0xD000000000000015;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2405A4A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B7A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405A4AA4(uint64_t a1)
{
  v2 = sub_2405B08A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A4AE0(uint64_t a1)
{
  v2 = sub_2405B08A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.BasicLogin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6990, &qword_24075DC28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[3];
  v39 = v1[2];
  v40 = v10;
  v47 = *(v1 + 32);
  v11 = *(v1 + 33);
  v37 = *(v1 + 34);
  v38 = v11;
  v12 = *(v1 + 35);
  v35 = *(v1 + 36);
  v36 = v12;
  v13 = v1[5];
  v33 = v1[6];
  v34 = v13;
  v14 = v1[7];
  v16 = v1[9];
  v15 = v1[10];
  v28 = v1[8];
  v29 = v16;
  v31 = v15;
  v32 = v14;
  v30 = v1[11];
  v17 = *(v1 + 96);
  v19 = a1[3];
  v18 = a1[4];
  v20 = a1;
  v22 = v21;
  __swift_project_boxed_opaque_existential_1(v20, v19);
  sub_2405B08A8();
  sub_24075AF74();
  LOBYTE(v42) = 0;
  v23 = v41;
  sub_24075AB64();
  if (!v23)
  {
    LODWORD(v41) = v17;
    v42 = v39;
    v43 = v40;
    v48 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
    sub_2405B0778(&qword_27E4B6940, &qword_27E4B6938, &qword_24075DBE8);
    sub_24075AB94();

    LOBYTE(v42) = 2;
    sub_24075ABC4();
    LOBYTE(v42) = 3;
    sub_24075AB74();
    LOBYTE(v42) = 4;
    sub_24075AB74();
    LOBYTE(v42) = 5;
    sub_24075ABC4();
    LOBYTE(v42) = 6;
    sub_24075ABC4();
    v42 = v34;
    v48 = 7;
    v24 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075ABE4();

    v42 = v33;
    v48 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    sub_24059532C(&qword_27E4B6468, &qword_27E4B6470);
    sub_24075ABE4();
    v42 = v32;
    v48 = 9;
    v25 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();

    v42 = v28;
    v43 = v29;
    v44 = v31;
    v45 = v30;
    v46 = v41;
    v48 = 10;
    sub_2405B04B4(v28, v29, v31, v30, v41);
    sub_2405B08FC();
    sub_24075AB94();
    sub_2405B0544(v42, v43, v44, v45, v46);
  }

  return (*(v4 + 8))(v7, v22);
}

void AuthenticationModel.BasicLogin.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  v5 = *(v0 + 34);
  v24 = *(v0 + 35);
  v25 = *(v0 + 36);
  v26 = v0[5];
  v27 = v0[6];
  v28 = v0[7];
  v20 = v0[8];
  v21 = v0[9];
  v22 = v0[10];
  v23 = v0[11];
  v6 = *(v0 + 96);
  if (v0[1])
  {
    v7 = *v0;
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
LABEL_3:
      sub_24075AE94();
      sub_24075A114();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24075AE94();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  sub_24075AE94();
LABEL_6:
  sub_24075AE94();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  v8 = v6;
  sub_24075AE94();
  if (v5 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075AE94();
  sub_24075AE94();
  sub_24075AE94();
  if (v26)
  {
    v9 = v26;
    sub_24075A6E4();
  }

  MEMORY[0x245CC6BA0](*(v27 + 16));
  v10 = *(v27 + 16);
  if (v10)
  {
    v11 = (v27 + 32);
    do
    {
      v12 = *v11++;
      sub_24075A0B4();
      v13 = v12;
      sub_24075A114();

      --v10;
    }

    while (v10);
  }

  if (v28)
  {
    sub_24075AE94();
    v14 = v28;
    sub_24075A6E4();

    if (v8 == 255)
    {
LABEL_17:
      sub_24075AE94();
      return;
    }
  }

  else
  {
    sub_24075AE94();
    if (v8 == 255)
    {
      goto LABEL_17;
    }
  }

  sub_24075AE94();
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      MEMORY[0x245CC6BA0](2);
      sub_24075AE94();
      if (v20)
      {
        sub_2405B04C8(v20, v21, v22, v23, 2);
        sub_24075A6E4();
        v15 = v20;
      }

      else
      {
        v15 = 0;
      }

      v16 = v21;
      v17 = v22;
      v18 = v23;
      v19 = 2;
    }

    else
    {
      if (v22 | v21 | v20 | v23)
      {
        MEMORY[0x245CC6BA0](4);
        v15 = 1;
      }

      else
      {
        MEMORY[0x245CC6BA0](3);
        v15 = 0;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 3;
    }
  }

  else if (v8)
  {
    MEMORY[0x245CC6BA0](1);
    sub_2405B04C8(v20, v21, v22, v23, 1);
    sub_24075A114();
    sub_24075A114();
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = 1;
  }

  else
  {
    MEMORY[0x245CC6BA0](0);
    sub_2405B04C8(v20, v21, v22, v23, 0);
    sub_24075A114();
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    v19 = 0;
  }

  sub_2405B0544(v15, v16, v17, v18, v19);
}

uint64_t AuthenticationModel.BasicLogin.hashValue.getter()
{
  sub_24075AE64();
  AuthenticationModel.BasicLogin.hash(into:)();
  return sub_24075AED4();
}

void AuthenticationModel.BasicLogin.init(from:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69B8, &qword_24075DC38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B08A8();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_2405B0544(0, 0, 0, 0, 255);
  }

  else
  {
    LOBYTE(v51) = 0;
    v11 = sub_24075AA74();
    v13 = v12;
    v43 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6938, &qword_24075DBE8);
    LOBYTE(v44) = 1;
    sub_2405B082C();
    sub_24075AAA4();
    v14 = v51;
    v42 = v52;

    LOBYTE(v51) = 2;
    v15 = sub_24075AAD4();
    LOBYTE(v51) = 3;
    v73 = sub_24075AA84();
    LOBYTE(v51) = 4;
    v16 = sub_24075AA84();
    v41 = v15;
    v17 = v16;
    LOBYTE(v51) = 5;
    v39 = sub_24075AAD4();
    v40 = v17;
    LOBYTE(v51) = 6;
    LODWORD(v38) = sub_24075AAD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v44) = 7;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075AAF4();
    v37 = a2;
    v18 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6460, &qword_24075D930);
    LOBYTE(v44) = 8;
    sub_24059532C(&qword_27E4B6498, &qword_27E4B64A0);
    sub_24075AAF4();
    v35 = v14;
    v36 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    LOBYTE(v44) = 9;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    v19 = v51;
    v74 = 10;
    sub_2405B0950();
    sub_24075AAA4();
    v20 = v41 & 1;
    v34 = v41 & 1;
    v39 &= 1u;
    v41 = v38 & 1;
    (*(v6 + 8))(v9, v5);
    v21 = v68;
    v22 = v69;
    v38 = v68;
    v23 = v70;
    v33 = v71;
    v32 = v72;
    sub_2405B0544(0, 0, 0, 0, 255);
    *&v44 = v43;
    *(&v44 + 1) = v13;
    *&v45 = v35;
    *(&v45 + 1) = v42;
    LOBYTE(v46) = v20;
    BYTE1(v46) = v73;
    BYTE2(v46) = v40;
    BYTE3(v46) = v39;
    BYTE4(v46) = v41;
    *(&v46 + 1) = v18;
    *&v47 = v36;
    *(&v47 + 1) = v19;
    *&v48 = v21;
    *(&v48 + 1) = v22;
    v24 = v33;
    *&v49 = v23;
    *(&v49 + 1) = v33;
    LOBYTE(v21) = v32;
    v50 = v32;
    v25 = v45;
    v26 = v37;
    *v37 = v44;
    v26[1] = v25;
    v27 = v46;
    v28 = v47;
    v29 = v48;
    v30 = v49;
    *(v26 + 96) = v21;
    v26[4] = v29;
    v26[5] = v30;
    v26[2] = v27;
    v26[3] = v28;
    sub_2405AE958(&v44, &v51);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v51 = v43;
    v52 = v13;
    v53 = v35;
    v54 = v42;
    v55 = v34;
    v56 = v73;
    v57 = v40;
    v58 = v39;
    v59 = v41;
    v60 = v18;
    v61 = v36;
    v62 = v19;
    v63 = v38;
    v64 = v22;
    v65 = v23;
    v66 = v24;
    v67 = v21;
    sub_2405AE36C(&v51);
  }
}

uint64_t sub_2405A5C6C()
{
  sub_24075AE64();
  AuthenticationModel.BasicLogin.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2405A5CB0()
{
  sub_24075AE64();
  AuthenticationModel.BasicLogin.hash(into:)();
  return sub_24075AED4();
}

id AuthenticationModel.SecondFactor.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AuthenticationModel.SecondFactor.collectedCode.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AuthenticationModel.SecondFactor.collectedCode.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

void *AuthenticationModel.SecondFactor.error.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.SecondFactor.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t sub_2405A5E48(uint64_t a1)
{
  v2 = sub_2405B09F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A5E84(uint64_t a1)
{
  v2 = sub_2405B09F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void AuthenticationModel.SecondFactor.init(from:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69E8, &qword_24075DC48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B09F4();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_2405AE990(0, 1, 0, 0, 0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v32) = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075AAF4();
    v31 = v37;
    LOBYTE(v37) = 1;
    v11 = sub_24075AAE4();
    LOBYTE(v37) = 2;
    v12 = sub_24075AA94();
    v48 = v13 & 1;
    LOBYTE(v32) = 3;
    sub_2405B0A9C();
    sub_24075AAA4();
    v26 = v12;
    v28 = v11;
    v30 = v6;
    v27 = a2;
    v15 = v37;
    v14 = v38;
    v16 = v39;
    v29 = v40;
    v17 = v41;
    sub_2405AE990(0, 1, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v49 = 4;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    (*(v30 + 8))(v9, v5);
    v30 = v47;
    v18 = v31;
    *&v32 = v31;
    *(&v32 + 1) = v28;
    v19 = v26;
    *&v33 = v26;
    v25 = v48;
    BYTE8(v33) = v48;
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v20 = v29;
    *&v35 = v16;
    *(&v35 + 1) = v29;
    *&v36 = v17;
    *(&v36 + 1) = v47;
    v21 = v35;
    v22 = v27;
    v27[2] = v34;
    v22[3] = v21;
    v23 = v33;
    *v22 = v32;
    v22[1] = v23;
    v22[4] = v36;
    sub_2405AE9EC(&v32, &v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = v18;
    v38 = v28;
    v39 = v19;
    LOBYTE(v40) = v25;
    v41 = v15;
    v42 = v14;
    v43 = v16;
    v44 = v20;
    v45 = v17;
    v46 = v30;
    sub_2405AE30C(&v37);
  }
}

uint64_t _s12AppleIDSetup19AuthenticationModelV12SecondFactorV9errorInfoAC05ErrorH0VSgvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_2405B09A4(v2, v3, v4, v5, v6);
}

__n128 _s12AppleIDSetup19AuthenticationModelV12SecondFactorV9errorInfoAC05ErrorH0VSgvs_0(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_2405AE990(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v5;
  *(v1 + 64) = v3;
  return result;
}

void (*AuthenticationModel.SecondFactorAlert.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t sub_2405A652C(uint64_t a1)
{
  v2 = sub_2405B0AF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A6568(uint64_t a1)
{
  v2 = sub_2405B0AF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2405A65E8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v12 = *v4;
  v11 = *(v4 + 8);
  v31 = *(v4 + 16);
  v32 = v11;
  v40 = *(v4 + 24);
  v13 = *(v4 + 32);
  v29 = *(v4 + 40);
  v30 = v13;
  v14 = *(v4 + 56);
  v26 = *(v4 + 48);
  v27 = v14;
  v15 = *(v4 + 72);
  v28 = *(v4 + 64);
  v25 = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v17 = v12;
  sub_24075AF74();
  v35 = v12;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30);
  v18 = v33;
  sub_24075ABE4();
  if (v18)
  {

    return (*(v34 + 8))(v10, v7);
  }

  else
  {
    v20 = v30;
    v21 = v29;
    v22 = v34;

    LOBYTE(v35) = 1;
    sub_24075ABD4();
    LOBYTE(v35) = 2;
    sub_24075AB84();
    v35 = v20;
    v36 = v21;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v41 = 3;
    sub_2405B09A4(v20, v21, v26, v27, v28);
    sub_2405B0A48();
    sub_24075AB94();
    sub_2405AE990(v35, v36, v37, v38, v39);
    v35 = v25;
    v41 = 4;
    v23 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();

    return (*(v22 + 8))(v10, v7);
  }
}

void _s12AppleIDSetup19AuthenticationModelV12SecondFactorV4hash4intoys6HasherVz_tF_0()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  *v11 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  if (*v0)
  {
    sub_24075AE94();
    v9 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  MEMORY[0x245CC6BA0](v1);
  sub_24075AE94();
  if (!v4)
  {
    MEMORY[0x245CC6BA0](v3);
  }

  if (v11[0] != 1)
  {
    sub_24075AE94();
    v10 = v7;

    AuthenticationModel.ErrorInfo.hash(into:)();

    if (v8)
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_24075AE94();
    return;
  }

  sub_24075AE94();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_8:
  sub_24075AE94();
  v12 = v8;
  sub_24075A6E4();
}

uint64_t sub_2405A6AFC(void (*a1)(_BYTE *))
{
  sub_24075AE64();
  a1(v3);
  return sub_24075AED4();
}

void AuthenticationModel.SecondFactorAlert.init(from:)(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A08, &qword_24075DC58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0AF0();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_2405AE990(0, 1, 0, 0, 0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    LOBYTE(v32) = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075AAF4();
    v31 = v37;
    LOBYTE(v37) = 1;
    v11 = sub_24075AAE4();
    LOBYTE(v37) = 2;
    v12 = sub_24075AA94();
    v48 = v13 & 1;
    LOBYTE(v32) = 3;
    sub_2405B0A9C();
    sub_24075AAA4();
    v26 = v12;
    v28 = v11;
    v30 = v6;
    v27 = a2;
    v15 = v37;
    v14 = v38;
    v16 = v39;
    v29 = v40;
    v17 = v41;
    sub_2405AE990(0, 1, 0, 0, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v49 = 4;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    (*(v30 + 8))(v9, v5);
    v30 = v47;
    v18 = v31;
    *&v32 = v31;
    *(&v32 + 1) = v28;
    v19 = v26;
    *&v33 = v26;
    v25 = v48;
    BYTE8(v33) = v48;
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v20 = v29;
    *&v35 = v16;
    *(&v35 + 1) = v29;
    *&v36 = v17;
    *(&v36 + 1) = v47;
    v21 = v35;
    v22 = v27;
    v27[2] = v34;
    v22[3] = v21;
    v23 = v33;
    *v22 = v32;
    v22[1] = v23;
    v22[4] = v36;
    sub_2405AEA24(&v32, &v37);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v37 = v18;
    v38 = v28;
    v39 = v19;
    LOBYTE(v40) = v25;
    v41 = v15;
    v42 = v14;
    v43 = v16;
    v44 = v20;
    v45 = v17;
    v46 = v30;
    sub_2405AE33C(&v37);
  }
}

uint64_t sub_2405A7020(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_24075AE64();
  a3(v5);
  return sub_24075AED4();
}

uint64_t sub_2405A7080(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24075AE64();
  a4(v6);
  return sub_24075AED4();
}

uint64_t AuthenticationModel.ErrorInfo.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AuthenticationModel.ErrorInfo.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void (*AuthenticationModel.ErrorInfo.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t AuthenticationModel.ErrorInfo.init(title:message:error:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_2405A71AC()
{
  v1 = 0x6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_2405A7200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B7FD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405A7228(uint64_t a1)
{
  v2 = sub_2405B0B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A7264(uint64_t a1)
{
  v2 = sub_2405B0B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.ErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A10, &qword_24075DC60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v17 = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B44();
  sub_24075AF74();
  v24 = 0;
  v12 = v20;
  sub_24075AB64();
  if (!v12)
  {
    v14 = v17;
    v23 = 1;
    sub_24075AB64();
    v21 = v14;
    v22 = 2;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();
  }

  return (*(v4 + 8))(v7, v3);
}

void AuthenticationModel.ErrorInfo.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  if (v0[1])
  {
    v4 = *v0;
    sub_24075AE94();
    sub_24075A114();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_9:
    sub_24075AE94();
    return;
  }

  sub_24075AE94();
  if (!v2)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_24075AE94();
  v5 = v3;
  sub_24075A6E4();
}

uint64_t AuthenticationModel.ErrorInfo.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_24075AE64();
  AuthenticationModel.ErrorInfo.hash(into:)();
  return sub_24075AED4();
}

uint64_t AuthenticationModel.ErrorInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A20, &qword_24075DC68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B44();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v11 = sub_24075AA74();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  v19 = sub_24075AA74();
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
  v23 = 2;
  sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
  sub_24075AAF4();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  *a2 = v21;
  a2[1] = v13;
  v16 = v20;
  a2[2] = v19;
  a2[3] = v16;
  a2[4] = v15;
  v17 = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2405A7914()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_24075AE64();
  AuthenticationModel.ErrorInfo.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2405A796C()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_24075AE64();
  AuthenticationModel.ErrorInfo.hash(into:)();
  return sub_24075AED4();
}

id AuthenticationModel.ServerRedirect.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AuthenticationModel.ServerRedirect.configuration.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AuthenticationModel.ServerRedirect.finalURLResponse.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.ServerRedirect.finalURLResponse.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

void *AuthenticationModel.ServerRedirect.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.ServerRedirect.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

void *AuthenticationModel.ServerRedirect.additionalOptions.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

unint64_t sub_2405A7C10()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x726F727265;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_2405A7CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B80E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405A7CE4(uint64_t a1)
{
  v2 = sub_2405B0B98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A7D20(uint64_t a1)
{
  v2 = sub_2405B0B98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.ServerRedirect.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A28, &qword_24075DC70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v24 = *(v1 + 16);
  v25 = v9;
  v22 = *(v1 + 32);
  v23 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B98();
  v13 = v10;
  sub_24075AF74();
  v27 = v10;
  v14 = v4;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30);
  sub_24075ABE4();
  if (!v2)
  {
    v15 = v24;

    v27 = v25;
    v26 = 1;
    v16 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A38, &qword_24075DC78);
    sub_240590128(&qword_27E4B6A40, &qword_27E4B6A38, &qword_24075DC78);
    sub_24075ABE4();

    v27 = v15;
    v26 = 2;
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A48, &qword_24075DC80);
    sub_240590128(&qword_27E4B6A50, &qword_27E4B6A48, &qword_24075DC80);
    sub_24075ABE4();

    v27 = v23;
    v26 = 3;
    v19 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();

    v27 = v22;
    v26 = 4;
    v20 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    sub_240590128(&qword_27E4B6A60, &qword_27E4B6A58, &qword_24075DC88);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v8, v14);
}

void AuthenticationModel.ServerRedirect.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0)
  {
    sub_24075AE94();
    v6 = v2;
    sub_24075A6E4();

    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    if (v1)
    {
LABEL_3:
      sub_24075AE94();
      v7 = v1;
      sub_24075A6E4();

      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_24075AE94();
  if (v4)
  {
LABEL_4:
    sub_24075AE94();
    v8 = v4;
    sub_24075A6E4();

    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_24075AE94();
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_24075AE94();
    return;
  }

LABEL_11:
  sub_24075AE94();
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_24075AE94();
  v9 = v3;
  sub_24075A6E4();

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_6:
  sub_24075AE94();
  v10 = v5;
  sub_24075A6E4();
}

uint64_t AuthenticationModel.ServerRedirect.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_24075AE64();
  AuthenticationModel.ServerRedirect.hash(into:)();
  return sub_24075AED4();
}

void AuthenticationModel.ServerRedirect.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A68, &qword_24075DC90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0B98();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v25 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075AAF4();
    v24 = a2;
    v11 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A38, &qword_24075DC78);
    v25 = 1;
    sub_240590128(&qword_27E4B6A70, &qword_27E4B6A38, &qword_24075DC78);
    sub_24075AAF4();
    v12 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A48, &qword_24075DC80);
    v25 = 2;
    sub_240590128(&qword_27E4B6A78, &qword_27E4B6A48, &qword_24075DC80);
    sub_24075AAF4();
    v13 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v25 = 3;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    v23 = v6;
    v14 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    v25 = 4;
    sub_240590128(&qword_27E4B6A80, &qword_27E4B6A58, &qword_24075DC88);
    sub_24075AAF4();
    (*(v23 + 8))(v9, v5);
    v15 = v26;
    v16 = v24;
    *v24 = v11;
    v16[1] = v12;
    v16[2] = v13;
    v16[3] = v14;
    v16[4] = v15;
    v17 = v15;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2405A8810()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_24075AE64();
  AuthenticationModel.ServerRedirect.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2405A8868()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_24075AE64();
  AuthenticationModel.ServerRedirect.hash(into:)();
  return sub_24075AED4();
}

void (*AuthenticationModel.NativeRecovery.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

unint64_t sub_2405A894C()
{
  v1 = 0x747865746E6F63;
  v2 = 0x726F727265;
  if (*v0 != 2)
  {
    v2 = 0x657265766F636572;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_2405A89D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B82A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405A89FC(uint64_t a1)
{
  v2 = sub_2405B0BEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A8A38(uint64_t a1)
{
  v2 = sub_2405B0BEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.NativeRecovery.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A88, &qword_24075DC98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v21 = *(v1 + 16);
  v22 = v9;
  v20 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0BEC();
  v13 = v10;
  sub_24075AF74();
  v24 = v10;
  v14 = v4;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30);
  sub_24075ABE4();
  if (!v2)
  {
    v15 = v21;

    v24 = v22;
    v23 = 1;
    v16 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A98, &qword_24075DCA0);
    sub_240590128(&qword_27E4B6AA0, &qword_27E4B6A98, &qword_24075DCA0);
    sub_24075ABE4();

    v24 = v15;
    v23 = 2;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();

    v24 = v20;
    v23 = 3;
    v19 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    sub_240590128(&qword_27E4B6A60, &qword_27E4B6A58, &qword_24075DC88);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v8, v14);
}

uint64_t AuthenticationModel.NativeRecovery.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v3);
  return sub_24075AED4();
}

void AuthenticationModel.NativeRecovery.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AA8, &qword_24075DCA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0BEC();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v21 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075AAF4();
    v20 = a2;
    v11 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A98, &qword_24075DCA0);
    v21 = 1;
    sub_240590128(&qword_27E4B6AB0, &qword_27E4B6A98, &qword_24075DCA0);
    sub_24075AAF4();
    v12 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v21 = 2;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    v13 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6A58, &qword_24075DC88);
    v21 = 3;
    sub_240590128(&qword_27E4B6A80, &qword_27E4B6A58, &qword_24075DC88);
    sub_24075AAF4();
    (*(v6 + 8))(v9, v5);
    v14 = v22;
    v15 = v20;
    *v20 = v11;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    v16 = v14;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2405A924C()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t sub_2405A9298()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v3);
  return sub_24075AED4();
}

id AuthenticationModel.FidoChallenge.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AuthenticationModel.FidoChallenge.context.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *AuthenticationModel.FidoChallenge.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.FidoChallenge.response.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

void *AuthenticationModel.FidoChallenge.error.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void (*AuthenticationModel.FidoChallenge.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

unint64_t sub_2405A94C0()
{
  v1 = 0x747865746E6F63;
  v2 = 0x65736E6F70736572;
  if (*v0 != 2)
  {
    v2 = 0x726F727265;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_2405A953C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B841C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405A9564(uint64_t a1)
{
  v2 = sub_2405B0C40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405A95A0(uint64_t a1)
{
  v2 = sub_2405B0C40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.FidoChallenge.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AB8, &qword_24075DCB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v21 = *(v1 + 16);
  v22 = v9;
  v20 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C40();
  v13 = v10;
  sub_24075AF74();
  v24 = v10;
  v14 = v4;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30);
  sub_24075ABE4();
  if (!v2)
  {
    v15 = v21;

    v24 = v22;
    v23 = 1;
    v16 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AC8, &qword_24075DCB8);
    sub_240590128(&qword_27E4B6AD0, &qword_27E4B6AC8, &qword_24075DCB8);
    sub_24075ABE4();

    v24 = v15;
    v23 = 2;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AD8, &qword_24075DCC0);
    sub_240590128(&qword_27E4B6AE0, &qword_27E4B6AD8, &qword_24075DCC0);
    sub_24075ABE4();

    v24 = v20;
    v23 = 3;
    v19 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v8, v14);
}

void sub_2405A9944()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (*v0)
  {
    sub_24075AE94();
    v5 = v2;
    sub_24075A6E4();

    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24075AE94();
    if (v1)
    {
LABEL_3:
      sub_24075AE94();
      v6 = v1;
      sub_24075A6E4();

      if (v4)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_24075AE94();
      if (v3)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_24075AE94();
      return;
    }
  }

  sub_24075AE94();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_24075AE94();
  v7 = v4;
  sub_24075A6E4();

  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_24075AE94();
  v8 = v3;
  sub_24075A6E4();
}

uint64_t AuthenticationModel.FidoChallenge.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24075AE64();
  AuthenticationModel.FidoChallenge.hash(into:)(v3);
  return sub_24075AED4();
}

void AuthenticationModel.FidoChallenge.init(from:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AE8, &qword_24075DCC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C40();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v21 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075AAF4();
    v20 = a2;
    v11 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AC8, &qword_24075DCB8);
    v21 = 1;
    sub_240590128(&qword_27E4B6AF0, &qword_27E4B6AC8, &qword_24075DCB8);
    sub_24075AAF4();
    v12 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6AD8, &qword_24075DCC0);
    v21 = 2;
    sub_240590128(&qword_27E4B6AF8, &qword_27E4B6AD8, &qword_24075DCC0);
    sub_24075AAF4();
    v13 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v21 = 3;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    (*(v6 + 8))(v9, v5);
    v14 = v22;
    v15 = v20;
    *v20 = v11;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    v16 = v14;
    v17 = v11;
    v18 = v12;
    v19 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

id AuthenticationModel.KeepUsing.authenticationContext.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t AuthenticationModel.KeepUsing.username.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

unint64_t sub_2405A9F7C()
{
  v1 = 0x656D616E72657375;
  if (*v0 != 1)
  {
    v1 = 0x6E6973557065656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_2405A9FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B8588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405AA008(uint64_t a1)
{
  v2 = sub_2405B0C94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405AA044(uint64_t a1)
{
  v2 = sub_2405B0C94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.KeepUsing.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B00, &qword_24075DCD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v9;
  v14[1] = *(v1 + 24);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C94();
  v12 = v10;
  sub_24075AF74();
  v20 = v10;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
  sub_240590128(&qword_27E4B69A8, &qword_27E4B69A0, &qword_24075DC30);
  sub_24075ABE4();

  if (!v2)
  {
    v18 = 1;
    sub_24075ABB4();
    v17 = 2;
    sub_24075AB74();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AuthenticationModel.KeepUsing.hash(into:)()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0)
  {
    sub_24075AE94();
    v5 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  sub_24075A114();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  return sub_24075AE94();
}

uint64_t AuthenticationModel.KeepUsing.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_24075AE64();
  sub_24075AE94();
  if (v2)
  {
    v5 = v2;
    sub_24075A6E4();
  }

  sub_24075A114();
  if (v4 != 2)
  {
    sub_24075AE94();
  }

  sub_24075AE94();
  return sub_24075AED4();
}

void AuthenticationModel.KeepUsing.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B10, &qword_24075DCD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0C94();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B69A0, &qword_24075DC30);
    v21 = 0;
    sub_240590128(&qword_27E4B69C0, &qword_27E4B69A0, &qword_24075DC30);
    sub_24075AAF4();
    v11 = v22;
    v20 = 1;
    v12 = sub_24075AAC4();
    v14 = v13;
    v18 = v12;
    v19 = 2;
    v15 = sub_24075AA84();
    (*(v6 + 8))(v9, v5);
    v16 = v18;
    *a2 = v11;
    *(a2 + 8) = v16;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    v17 = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2405AA6D4()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_24075AE64();
  AuthenticationModel.KeepUsing.hash(into:)();
  return sub_24075AED4();
}

uint64_t sub_2405AA734()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 24);
  sub_24075AE64();
  AuthenticationModel.KeepUsing.hash(into:)();
  return sub_24075AED4();
}

uint64_t AuthenticationModel.PreflightRepair.success.setter(char a1)
{
  result = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

void *AuthenticationModel.PreflightRepair.error.getter()
{
  v1 = *(v0 + *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24));
  v2 = v1;
  return v1;
}

void sub_2405AA890(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void AuthenticationModel.PreflightRepair.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24);

  *(v1 + v3) = a1;
}

void (*AuthenticationModel.PreflightRepair.error.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v1 + *(type metadata accessor for AuthenticationModel.PreflightRepair(0) + 24);
  *(v4 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t sub_2405AA99C()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_2405AA9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B86B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405AAA1C(uint64_t a1)
{
  v2 = sub_2405B0CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405AAA58(uint64_t a1)
{
  v2 = sub_2405B0CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.PreflightRepair.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B18, &qword_24075DCE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0CE8();
  sub_24075AF74();
  v18 = 0;
  type metadata accessor for IdMSAccount();
  sub_240594D3C(&qword_27E4B6438, type metadata accessor for IdMSAccount);
  sub_24075ABE4();
  if (!v2)
  {
    v11 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
    v12 = *(v3 + *(v11 + 20));
    v17 = 1;
    sub_24075ABC4();
    v16 = *(v3 + *(v11 + 24));
    v15[15] = 2;
    v13 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    sub_240590128(&qword_27E4B6398, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075ABE4();
  }

  return (*(v6 + 8))(v9, v5);
}

void AuthenticationModel.PreflightRepair.hash(into:)(uint64_t a1)
{
  IdMSAccount.hash(into:)(a1);
  v2 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v3 = *(v1 + *(v2 + 20));
  sub_24075AE94();
  v4 = *(v1 + *(v2 + 24));
  if (v4)
  {
    sub_24075AE94();
    v5 = v4;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }
}

uint64_t AuthenticationModel.PreflightRepair.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v6);
  v1 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v2 = *(v0 + *(v1 + 20));
  sub_24075AE94();
  v3 = *(v0 + *(v1 + 24));
  sub_24075AE94();
  if (v3)
  {
    v4 = v3;
    sub_24075A6E4();
  }

  return sub_24075AED4();
}

void AuthenticationModel.PreflightRepair.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for IdMSAccount();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B28, &qword_24075DCE8);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AuthenticationModel.PreflightRepair(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v13 + 24);
  *&v15[v25] = 0;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0CE8();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = v22;
    v29 = 0;
    sub_240594D3C(&qword_27E4B6480, type metadata accessor for IdMSAccount);
    v18 = v23;
    sub_24075AAF4();
    sub_2405AE39C(v24, v15, type metadata accessor for IdMSAccount);
    v28 = 1;
    v15[*(v11 + 20)] = sub_24075AAD4() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6390, &qword_24075DBE0);
    v27 = 2;
    sub_240590128(&qword_27E4B63B0, &qword_27E4B6390, &qword_24075DBE0);
    sub_24075AAF4();
    (*(v17 + 8))(v10, v18);
    v20 = v25;
    v19 = v26;

    *&v15[v20] = v19;
    sub_240594008(v15, v21, type metadata accessor for AuthenticationModel.PreflightRepair);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_240593D7C(v15, type metadata accessor for AuthenticationModel.PreflightRepair);
  }
}

uint64_t sub_2405AB244(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v7);
  v3 = *(v1 + *(a1 + 20));
  sub_24075AE94();
  v4 = *(v1 + *(a1 + 24));
  sub_24075AE94();
  if (v4)
  {
    v5 = v4;
    sub_24075A6E4();
  }

  return sub_24075AED4();
}

void sub_2405AB2E0(uint64_t a1, uint64_t a2)
{
  IdMSAccount.hash(into:)(a1);
  v4 = *(v2 + *(a2 + 20));
  sub_24075AE94();
  v5 = *(v2 + *(a2 + 24));
  if (v5)
  {
    sub_24075AE94();
    v6 = v5;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }
}

uint64_t sub_2405AB390(uint64_t a1, uint64_t a2)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v8);
  v4 = *(v2 + *(a2 + 20));
  sub_24075AE94();
  v5 = *(v2 + *(a2 + 24));
  sub_24075AE94();
  if (v5)
  {
    v6 = v5;
    sub_24075A6E4();
  }

  return sub_24075AED4();
}

uint64_t AuthenticationModel.Alert.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t AuthenticationModel.Alert.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AuthenticationModel.Alert.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t AuthenticationModel.Alert.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t AuthenticationModel.Alert.error.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 80);
  *(a1 + 48) = v8;
  return sub_2405B02E8(v2, v3, v4, v5, v6, v7, v8);
}

__n128 AuthenticationModel.Alert.error.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_2405AEA5C(*(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80));
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v7;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  return result;
}

uint64_t sub_2405AB608()
{
  v1 = 0x656C746974;
  v2 = 0x726F727265;
  if (*v0 != 2)
  {
    v2 = 0x6E65736572507369;
  }

  if (*v0)
  {
    v1 = 0x6567617373656DLL;
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

uint64_t sub_2405AB684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2405B87C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2405AB6AC(uint64_t a1)
{
  v2 = sub_2405B0D3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2405AB6E8(uint64_t a1)
{
  v2 = sub_2405B0D3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AuthenticationModel.Alert.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B30, &qword_24075DCF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v12 = v1[6];
  v24 = v1[7];
  v25 = v12;
  v13 = v1[8];
  v22 = v1[9];
  v23 = v13;
  v38 = *(v1 + 80);
  v21[3] = *(v1 + 81);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0D3C();
  sub_24075AF74();
  LOBYTE(v31) = 0;
  v15 = v30;
  sub_24075ABB4();
  if (!v15)
  {
    v16 = v24;
    v17 = v25;
    v19 = v26;
    v18 = v27;
    LOBYTE(v31) = 1;
    sub_24075ABB4();
    v31 = v18;
    v32 = v19;
    v33 = v17;
    v34 = v16;
    v35 = v23;
    v36 = v22;
    v37 = v38;
    v39 = 2;
    sub_2405B02E8(v18, v19, v17, v16, v23, v22, v38);
    sub_2405B0D90();
    sub_24075AB94();
    sub_2405AEA5C(v31, v32, v33, v34, v35, v36, v37);
    LOBYTE(v31) = 3;
    sub_24075ABC4();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AuthenticationModel.Alert.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[5];
  v14 = v1[4];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = *(v1 + 80);
  v15 = *(v1 + 81);
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  if (v12 != 255)
  {
    sub_2405AF8D8(v14, v7, v8, v9, v10, v11, v12);
    SetupError.hash(into:)(a1);
    sub_2405AEA70(v14, v7, v8, v9, v10, v11, v12);
  }

  return sub_24075AE94();
}

uint64_t AuthenticationModel.Alert.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v11 = v0[5];
  v12 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[9];
  v9 = *(v0 + 80);
  v13 = *(v0 + 81);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075AE94();
  if (v9 != 255)
  {
    sub_2405AF8D8(v12, v11, v5, v6, v7, v8, v9);
    SetupError.hash(into:)(v14);
    sub_2405AEA70(v12, v11, v5, v6, v7, v8, v9);
  }

  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t AuthenticationModel.Alert.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6B48, &qword_24075DCF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405B0D3C();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
  }

  else
  {
    LOBYTE(v38) = 0;
    v11 = sub_24075AAC4();
    v30 = v12;
    LOBYTE(v38) = 1;
    *&v26 = sub_24075AAC4();
    *(&v26 + 1) = v13;
    LOBYTE(v32) = 2;
    sub_2405B0DE4();
    sub_24075AAA4();
    v28 = v38;
    v29 = v39;
    v27 = v40;
    v31 = v41;
    v48 = v42;
    sub_2405AEA5C(0, 0, 0, 0, 0, 0, 0xFFu);
    v49 = 3;
    v14 = sub_24075AAD4();
    (*(v6 + 8))(v9, v5);
    v15 = v14 & 1;
    v25 = v14 & 1;
    *&v32 = v11;
    *(&v32 + 1) = v30;
    v33 = v26;
    v16 = v28;
    v34 = v28;
    v17 = *(&v28 + 1);
    v18 = v29;
    v35 = v29;
    v19 = *(&v29 + 1);
    v20 = v27;
    *&v36 = v27;
    *(&v36 + 1) = v31;
    LOBYTE(v37) = v48;
    HIBYTE(v37) = v15;
    v21 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v21;
    *(a2 + 64) = v36;
    *(a2 + 80) = v37;
    v22 = v33;
    *a2 = v32;
    *(a2 + 16) = v22;
    sub_2405AE2A4(&v32, &v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v38 = v11;
    *(&v38 + 1) = v30;
    v39 = v26;
    v40 = v16;
    v41 = v17;
    v42 = v18;
    v43 = v19;
    v44 = v20;
    v45 = v31;
    v46 = v48;
    v47 = v25;
    return sub_2405AE2DC(&v38);
  }
}