uint64_t sub_23861A9D0(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v2 = type metadata accessor for AccountListView.AccountRow(0);
  sub_23860F2A0(a1 + *(v2 + 20));
}

uint64_t sub_23861AAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11810, &unk_238778DE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11800, &qword_238778DD8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF117E8, &qword_238778DD0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_23875CE60();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11860, &unk_238778E80);
  sub_23861AD48(a1, &v7[*(v16 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  sub_2384396E4(v7, v11, &qword_27DF11810, &unk_238778DE0);
  v17 = &v11[*(v8 + 36)];
  v18 = v22[5];
  *(v17 + 4) = v22[4];
  *(v17 + 5) = v18;
  *(v17 + 6) = v22[6];
  v19 = v22[1];
  *v17 = v22[0];
  *(v17 + 1) = v19;
  v20 = v22[3];
  *(v17 + 2) = v22[2];
  *(v17 + 3) = v20;
  sub_2384396E4(v11, v15, &qword_27DF11800, &qword_238778DD8);
  v15[*(v12 + 36)] = 0;
  sub_2384396E4(v15, a2, &qword_27DF117E8, &qword_238778DD0);
}

uint64_t sub_23861AD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v55 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v2 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - v5;
  v7 = sub_23875A9F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccountLogo();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v58 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v57 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v51 - v22;
  sub_23875ED50();
  v56 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v51 = v23;
  sub_238618958(v23);
  v24 = *(type metadata accessor for AccountListView.AccountRow(0) + 20);
  sub_238758580();
  sub_238758530();
  v25 = sub_23875A9B0();
  v27 = v26;
  (*(v8 + 8))(v11, v7);
  KeyPath = swift_getKeyPath();
  v29 = &v17[v12[5]];
  *v29 = v25;
  v29[1] = v27;
  v17[v12[6]] = 4;
  v30 = &v17[v12[7]];
  *v30 = KeyPath;
  v30[8] = 0;
  v31 = &v17[v12[8]];
  LOBYTE(v61[0]) = 0;
  sub_23875E1A0();
  v32 = *(&v63 + 1);
  *v31 = v63;
  *(v31 + 1) = v32;
  v33 = v12[9];
  v34 = sub_238757B60();
  (*(*(v34 - 8) + 56))(v6, 1, 1, v34);
  sub_23843981C(v6, v52, &qword_27DF0A0C0, &qword_238771EF0);
  sub_23875E1A0();
  sub_238439884(v6, &qword_27DF0A0C0, &qword_238771EF0);
  v35 = v12[10];
  v61[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *&v17[v35] = v63;
  v53 = sub_23875D030();
  LOBYTE(v63) = 1;
  sub_23861B350(v60);
  *&v59[7] = v60[0];
  *&v59[23] = v60[1];
  *&v59[39] = v60[2];
  *&v59[55] = v60[3];
  v36 = v63;
  v37 = v51;
  v38 = v57;
  sub_23843981C(v51, v57, &qword_27DF11820, &qword_238778DF0);
  v39 = v58;
  sub_23861E93C(v17, v58, type metadata accessor for AccountLogo);
  v40 = v54;
  sub_23843981C(v38, v54, &qword_27DF11820, &qword_238778DF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11868, &unk_238778EC8);
  sub_23861E93C(v39, v40 + v41[12], type metadata accessor for AccountLogo);
  v42 = v40 + v41[16];
  v43 = v53;
  v61[0] = v53;
  v61[1] = 0;
  v62[0] = v36;
  *&v62[1] = *v59;
  *&v62[17] = *&v59[16];
  *&v62[33] = *&v59[32];
  *&v62[49] = *&v59[48];
  v44 = *&v59[63];
  *&v62[64] = *&v59[63];
  v45 = *v62;
  *v42 = v53;
  *(v42 + 16) = v45;
  v46 = *&v62[16];
  v47 = *&v62[32];
  v48 = *&v62[48];
  *(v42 + 80) = v44;
  *(v42 + 48) = v47;
  *(v42 + 64) = v48;
  *(v42 + 32) = v46;
  v49 = v40 + v41[20];
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_23843981C(v61, &v63, &qword_27DF0B3F8, &unk_238768110);
  sub_23861F3B4(v17, type metadata accessor for AccountLogo);
  sub_238439884(v37, &qword_27DF11820, &qword_238778DF0);
  v63 = v43;
  v64 = v36;
  v66 = *&v59[16];
  v67 = *&v59[32];
  *v68 = *&v59[48];
  *&v68[15] = *&v59[63];
  v65 = *v59;
  sub_238439884(&v63, &qword_27DF0B3F8, &unk_238768110);
  sub_23861F3B4(v39, type metadata accessor for AccountLogo);
  sub_238439884(v38, &qword_27DF11820, &qword_238778DF0);
}

uint64_t sub_23861B350@<X0>(uint64_t *a1@<X8>)
{
  v66 = a1;
  v1 = sub_238757FC0();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v1);
  v57 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_238758A00();
  v64 = *(v60 - 8);
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v60);
  v62 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = v56 - v7;
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(type metadata accessor for AccountListView.AccountRow(0) + 20);
  v68 = sub_2387585B0();
  v69 = v9;
  v56[1] = sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  v14 = v13;
  LODWORD(v68) = sub_23875D420();
  v15 = sub_23875DA20();
  v17 = v16;
  v19 = v18;
  sub_2384397FC(v10, v12, v14 & 1);

  sub_23875D820();
  v20 = sub_23875DA60();
  v22 = v21;
  v63 = v23;
  v25 = v24;

  sub_2384397FC(v15, v17, v19 & 1);

  v56[0] = v8;
  v26 = v61;
  sub_238758580();
  v27 = v64;
  v28 = v62;
  v29 = v60;
  (*(v64 + 104))(v62, *MEMORY[0x277CC7158], v60);
  sub_23861C5F4(&unk_27DF0B400, MEMORY[0x277CC7180]);
  sub_23875EC40();
  sub_23875EC40();
  v30 = *(v27 + 8);
  v30(v28, v29);
  v30(v26, v29);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (v68 == v67)
  {
    v35 = v57;
    sub_2387585C0();
    v36 = sub_238757FB0();
    v38 = v37;
    (*(v58 + 8))(v35, v59);
    v68 = v36;
    v69 = v38;
    v39 = sub_23875DAA0();
    v41 = v40;
    LOBYTE(v35) = v42;
    LODWORD(v68) = sub_23875D440();
    v43 = sub_23875DA20();
    v45 = v44;
    v47 = v46;
    v64 = v25;
    sub_2384397FC(v39, v41, v35 & 1);

    sub_23875D970();
    v31 = sub_23875DA60();
    v32 = v48;
    v62 = v22;
    v49 = v20;
    v51 = v50;
    v34 = v52;

    sub_2384397FC(v43, v45, v47 & 1);
    v25 = v64;

    v33 = v51 & 1;
    v20 = v49;
    v22 = v62;
    sub_23843980C(v31, v32, v33);
  }

  v53 = v63 & 1;
  sub_23843980C(v20, v22, v63 & 1);

  sub_238476F5C(v31, v32, v33, v34);
  sub_238476FA0(v31, v32, v33, v34);
  LOBYTE(v68) = v53;
  v54 = v66;
  *v66 = v20;
  v54[1] = v22;
  *(v54 + 16) = v53;
  v54[3] = v25;
  v54[4] = v31;
  v54[5] = v32;
  v54[6] = v33;
  v54[7] = v34;
  sub_238476FA0(v31, v32, v33, v34);
  sub_2384397FC(v20, v22, v53);
}

uint64_t sub_23861B8C4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v2 = *(v20[0] + 56);

  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v6 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 1868983913;
  v9 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v9;
  strcpy((inited + 88), "accountSelect");
  *(inited + 102) = -4864;
  v10 = v5;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v13;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v20);

  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23861C5F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v16 = sub_23875E910();

  [v15 subject:v2 sendEvent:v16];

  v17 = a1 + *(type metadata accessor for AccountListView.AccountRow(0) + 24);
  v18 = *(v17 + 8);
  LOBYTE(v20[0]) = *v17;
  v20[1] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  sub_23875E1C0();
}

double sub_23861BC04@<D0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - v3;
  v5 = sub_23875D990();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875E0E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E0D0();
  (*(v11 + 104))(v14, *MEMORY[0x277CE0FE0], v10);
  v15 = sub_23875E150();

  (*(v11 + 8))(v14, v10);
  (*(v6 + 104))(v9, *MEMORY[0x277CE0A68], v5);
  v16 = sub_23875D840();
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = sub_23875D8D0();
  sub_238439884(v4, &qword_27DF0C7F0, &qword_23877B880);
  (*(v6 + 8))(v9, v5);
  KeyPath = swift_getKeyPath();
  v28 = v15;
  LOWORD(v29) = 1;
  *(&v29 + 1) = KeyPath;
  *&v30 = v17;
  sub_23875D860();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11840, &unk_238778E00);
  sub_23861F91C();
  v19 = v27;
  sub_23875DAF0();

  v20 = sub_23875DFC0();
  v21 = swift_getKeyPath();
  v22 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11838, &qword_238778DF8) + 36));
  *v22 = v21;
  v22[1] = v20;
  sub_23875E4A0();
  sub_23875C5C0();

  v23 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11820, &qword_238778DF0) + 36));
  v24 = v29;
  *v23 = v28;
  v23[1] = v24;
  result = *&v30;
  v23[2] = v30;
  return result;
}

uint64_t sub_23861C02C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v39 = a2;
  v2 = sub_23875A9F0();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_238757FC0();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238758680();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccountInfoView(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = type metadata accessor for AccountListView.AccountRow(0);
  (*(v11 + 16))(v14, &v34[*(v19 + 20)], v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  sub_23875E400();
  v34 = *(v40 + 56);

  v20 = v15[9];
  *&v18[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v21 = sub_2387585B0();
  v22 = &v18[v15[5]];
  *v22 = v21;
  v22[1] = v23;
  sub_2387585C0();
  v24 = sub_238757FB0();
  v26 = v25;
  (*(v6 + 8))(v9, v36);
  v27 = &v18[v15[6]];
  *v27 = v24;
  v27[1] = v26;
  sub_238758580();
  sub_238758530();
  v28 = sub_23875A9B0();
  v30 = v29;
  (*(v37 + 8))(v5, v38);
  (*(v11 + 8))(v14, v10);
  v31 = &v18[v15[7]];
  *v31 = v28;
  v31[1] = v30;
  *&v18[v15[8]] = v34;
  sub_23861C5F4(&qword_27DF117A0, type metadata accessor for AccountInfoView);
  sub_23875DDF0();
  sub_23861F3B4(v18, type metadata accessor for AccountInfoView);
}

unint64_t sub_23861C468()
{
  result = qword_27DF115E0;
  if (!qword_27DF115E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115D8, &qword_238778A78);
    sub_23861C4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF115E0);
  }

  return result;
}

unint64_t sub_23861C4EC()
{
  result = qword_27DF115E8;
  if (!qword_27DF115E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF115F0, &unk_238778A80);
    sub_23861C5F4(&qword_27DF115F8, type metadata accessor for AccountListView.AccountRow);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF115E8);
  }

  return result;
}

uint64_t sub_23861C5F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23861C63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for AccountListView(0) - 8) + 80);

  return sub_238618748(a1, a2);
}

uint64_t keypath_setTm_0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

void sub_23861C6FC(void **a1)
{
  v2 = *(sub_238758680() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_238491594(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_23861C7A4(v5);
  *a1 = v3;
}

void sub_23861C7A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23875F5E0();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_238758680();
        v6 = sub_23875ECA0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_238758680() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23861CDCC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23861C8D0(0, v2, 1, a1);
  }
}

void sub_23861C8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = sub_23875BCB0();
  v8 = *(v59 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v49 - v12;
  v68 = sub_238758680();
  v13 = *(v68 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  v51 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = sub_23875ED50();
    v25 = *(v13 + 16);
    v24 = v13 + 16;
    v65 = v25;
    v66 = v23;
    v26 = *(v24 + 56);
    v56 = (v8 + 8);
    v64 = (v24 - 8);
    v67 = v24;
    v27 = (v22 + v26 * (a3 - 1));
    v60 = -v26;
    v61 = (v24 + 16);
    v28 = a1 - a3;
    v62 = v22;
    v50 = v26;
    v29 = v22 + v26 * a3;
LABEL_5:
    v55 = a3;
    v52 = v29;
    v53 = v28;
    v54 = v27;
    v30 = v28;
    v31 = v68;
    while (1)
    {
      v74 = v30;
      v32 = v65;
      v65(v21, v29, v31);
      v32(v18, v27, v31);
      v69 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v72 = sub_2387585B0();
      v73 = v33;
      v70 = sub_2387585B0();
      v71 = v34;
      sub_2384397A8();
      v35 = sub_23875F290();

      if (v35)
      {
        v72 = sub_2387585B0();
        v73 = v36;
        v70 = sub_2387585B0();
        v71 = v37;
        v38 = sub_23875F290();

        LOBYTE(v38) = v38 == -1;
      }

      else
      {
        v39 = v57;
        sub_238758640();
        v40 = v58;
        sub_238758640();
        v38 = MEMORY[0x23EE60750](v39, v40);
        v41 = *v56;
        v42 = v40;
        v43 = v59;
        (*v56)(v42, v59);
        v41(v39, v43);
      }

      v44 = *v64;
      v31 = v68;
      (*v64)(v18, v68);
      v44(v21, v31);
      v45 = v74;
      if ((v38 & 1) == 0)
      {
LABEL_4:
        a3 = v55 + 1;
        v27 = &v54[v50];
        v28 = v53 - 1;
        v29 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v62)
      {
        break;
      }

      v46 = *v61;
      v47 = v63;
      (*v61)(v63, v29, v31);
      swift_arrayInitWithTakeFrontToBack();
      v46(v27, v47, v31);
      v27 += v60;
      v29 += v60;
      v48 = __CFADD__(v45, 1);
      v30 = v45 + 1;
      if (v48)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_23861CDCC(int64_t *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v5 = v4;
  v157 = a1;
  v174 = sub_23875BCB0();
  v8 = *(v174 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v174);
  v173 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v172 = &v153 - v12;
  v185 = sub_238758680();
  v13 = *(v185 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v185);
  v161 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v177 = &v153 - v17;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v153 - v22;
  MEMORY[0x28223BE20](v24);
  v155 = &v153 - v25;
  v30.n128_f64[0] = MEMORY[0x28223BE20](v26);
  v154 = &v153 - v31;
  v32 = *(a3 + 8);
  v162 = a3;
  if (v32 < 1)
  {
    v34 = MEMORY[0x277D84F90];
LABEL_106:
    a4 = *v157;
    if (!*v157)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_139:
      v34 = sub_238490ED4(v34);
    }

    v149 = v5;
    v192 = v34;
    v150 = *(v34 + 2);
    if (v150 >= 2)
    {
      do
      {
        v151 = *a3;
        if (!*a3)
        {
          goto LABEL_143;
        }

        v5 = *&v34[16 * v150];
        a3 = *&v34[16 * v150 + 24];
        sub_23861DD7C(v151 + v13[9] * v5, v151 + v13[9] * *&v34[16 * v150 + 16], v151 + v13[9] * a3, a4);
        if (v149)
        {
          break;
        }

        if (a3 < v5)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_238490ED4(v34);
        }

        if (v150 - 2 >= *(v34 + 2))
        {
          goto LABEL_133;
        }

        v152 = &v34[16 * v150];
        *v152 = v5;
        *(v152 + 1) = a3;
        v192 = v34;
        sub_238490E48(v150 - 1);
        v34 = v192;
        v150 = *(v192 + 2);
        a3 = v162;
      }

      while (v150 > 1);
    }

LABEL_116:

    return;
  }

  v169 = v23;
  v170 = v29;
  v180 = v28;
  v181 = v27;
  v33 = 0;
  v183 = (v13 + 1);
  v184 = v13 + 2;
  v171 = (v8 + 8);
  v182 = (v13 + 4);
  v34 = MEMORY[0x277D84F90];
  v166 = v13;
  v156 = a4;
  while (1)
  {
    v35 = v33 + 1;
    v168 = v34;
    if (v33 + 1 >= v32)
    {
      goto LABEL_32;
    }

    v175 = v32;
    v153 = v5;
    v36 = *a3;
    v37 = v13[9];
    v38 = v33 + 1;
    v39 = v36 + v37 * v35;
    v40 = v13[2];
    v41 = v185;
    v40(v154, v39, v185, v30);
    v158 = v33;
    v178 = v37;
    v167 = v40;
    (v40)(v155, v36 + v37 * v33, v41);
    v42 = sub_23875ED50();
    sub_23875ED40();
    v165 = v42;
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    a3 = v154;
    v43 = v155;
    LODWORD(v176) = sub_23861E71C();

    v44 = *v183;
    v5 = v185;
    (*v183)(v43, v185);
    v164 = v44;
    (v44)(a3, v5);
    v45 = v158 + 2;
    v46 = v178 * (v158 + 2);
    v47 = v36 + v46;
    v48 = v38;
    v49 = v178 * v38;
    v50 = v36 + v178 * v38;
    do
    {
      v35 = v45;
      v59 = v48;
      a4 = v49;
      v60 = v46;
      v187 = v45;
      if (v45 >= v175)
      {
        break;
      }

      v186 = v48;
      v61 = v167;
      v167(v169, v47, v5);
      v61(v170, v50, v5);
      v179 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v190 = sub_2387585B0();
      v191 = v51;
      v188 = sub_2387585B0();
      v189 = v52;
      sub_2384397A8();
      v53 = sub_23875F290();

      if (v53)
      {
        v190 = sub_2387585B0();
        v191 = v54;
        v188 = sub_2387585B0();
        v189 = v55;
        v56 = sub_23875F290();

        LOBYTE(v56) = v56 == -1;
      }

      else
      {
        v62 = v172;
        sub_238758640();
        v63 = v173;
        sub_238758640();
        v56 = MEMORY[0x23EE60750](v62, v63);
        v64 = *v171;
        v65 = v63;
        v66 = v174;
        (*v171)(v65, v174);
        v64(v62, v66);
      }

      v13 = v166;
      v5 = v185;
      a3 = v183;
      v57 = v164;
      (v164)(v170, v185);
      v57(v169, v5);
      v58 = v56 & 1;
      v59 = v186;
      v35 = v187;
      v45 = v187 + 1;
      v47 += v178;
      v50 += v178;
      v48 = (v186 + 1);
      v49 = &v178[a4];
      v46 = &v178[v60];
      v34 = v168;
    }

    while ((v176 & 1) == v58);
    if ((v176 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v35 < v158)
    {
      goto LABEL_136;
    }

    if (v158 < v35)
    {
      v67 = v158 * v178;
      v68 = v158;
      do
      {
        if (v68 != v59)
        {
          v71 = *v162;
          if (!*v162)
          {
            goto LABEL_142;
          }

          v72 = v59;
          v73 = *v182;
          (*v182)(v161, v71 + v67, v185);
          if (v67 < a4 || v71 + v67 >= (v71 + v60))
          {
            v69 = v185;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v69 = v185;
            if (v67 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v73((v71 + a4), v161, v69);
          v34 = v168;
          v59 = v72;
          v13 = v166;
        }

        ++v68;
        a4 -= v178;
        v60 -= v178;
        v67 += v178;
      }

      while (v68 < v59--);
      v35 = v187;
LABEL_30:
      v5 = v153;
      a3 = v162;
      v33 = v158;
      goto LABEL_31;
    }

    v5 = v153;
    a3 = v162;
    v33 = v158;
LABEL_31:
    a4 = v156;
LABEL_32:
    v74 = *(a3 + 8);
    if (v35 < v74)
    {
      if (__OFSUB__(v35, v33))
      {
        goto LABEL_135;
      }

      if (v35 - v33 < a4)
      {
        if (__OFADD__(v33, a4))
        {
          goto LABEL_137;
        }

        if (v33 + a4 >= v74)
        {
          a4 = *(a3 + 8);
        }

        else
        {
          a4 += v33;
        }

        if (a4 < v33)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v35 != a4)
        {
          break;
        }
      }
    }

LABEL_55:
    if (v35 < v33)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_238490EE8(0, *(v34 + 2) + 1, 1, v34);
    }

    a4 = *(v34 + 2);
    v103 = *(v34 + 3);
    v104 = a4 + 1;
    if (a4 >= v103 >> 1)
    {
      v34 = sub_238490EE8((v103 > 1), a4 + 1, 1, v34);
    }

    *(v34 + 2) = v104;
    v105 = &v34[16 * a4];
    v106 = v167;
    *(v105 + 4) = v33;
    *(v105 + 5) = v106;
    v107 = *v157;
    if (!*v157)
    {
      goto LABEL_144;
    }

    if (a4)
    {
      while (1)
      {
        v108 = v104 - 1;
        if (v104 >= 4)
        {
          break;
        }

        if (v104 == 3)
        {
          v109 = *(v34 + 4);
          v110 = *(v34 + 5);
          v119 = __OFSUB__(v110, v109);
          v111 = v110 - v109;
          v112 = v119;
LABEL_75:
          if (v112)
          {
            goto LABEL_123;
          }

          v125 = &v34[16 * v104];
          v127 = *v125;
          v126 = *(v125 + 1);
          v128 = __OFSUB__(v126, v127);
          v129 = v126 - v127;
          v130 = v128;
          if (v128)
          {
            goto LABEL_126;
          }

          v131 = &v34[16 * v108 + 32];
          v133 = *v131;
          v132 = *(v131 + 1);
          v119 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v119)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v129, v134))
          {
            goto LABEL_130;
          }

          if (v129 + v134 >= v111)
          {
            if (v111 < v134)
            {
              v108 = v104 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v135 = &v34[16 * v104];
        v137 = *v135;
        v136 = *(v135 + 1);
        v119 = __OFSUB__(v136, v137);
        v129 = v136 - v137;
        v130 = v119;
LABEL_89:
        if (v130)
        {
          goto LABEL_125;
        }

        v138 = &v34[16 * v108];
        v140 = *(v138 + 4);
        v139 = *(v138 + 5);
        v119 = __OFSUB__(v139, v140);
        v141 = v139 - v140;
        if (v119)
        {
          goto LABEL_128;
        }

        if (v141 < v129)
        {
          goto LABEL_3;
        }

LABEL_96:
        a4 = v108 - 1;
        if (v108 - 1 >= v104)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_141;
        }

        v146 = *&v34[16 * a4 + 32];
        v147 = *&v34[16 * v108 + 40];
        sub_23861DD7C(*a3 + v13[9] * v146, *a3 + v13[9] * *&v34[16 * v108 + 32], *a3 + v13[9] * v147, v107);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v147 < v146)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_238490ED4(v34);
        }

        if (a4 >= *(v34 + 2))
        {
          goto LABEL_120;
        }

        v148 = &v34[16 * a4];
        *(v148 + 4) = v146;
        *(v148 + 5) = v147;
        v192 = v34;
        sub_238490E48(v108);
        v34 = v192;
        v104 = *(v192 + 2);
        if (v104 <= 1)
        {
          goto LABEL_3;
        }
      }

      v113 = &v34[16 * v104 + 32];
      v114 = *(v113 - 64);
      v115 = *(v113 - 56);
      v119 = __OFSUB__(v115, v114);
      v116 = v115 - v114;
      if (v119)
      {
        goto LABEL_121;
      }

      v118 = *(v113 - 48);
      v117 = *(v113 - 40);
      v119 = __OFSUB__(v117, v118);
      v111 = v117 - v118;
      v112 = v119;
      if (v119)
      {
        goto LABEL_122;
      }

      v120 = &v34[16 * v104];
      v122 = *v120;
      v121 = *(v120 + 1);
      v119 = __OFSUB__(v121, v122);
      v123 = v121 - v122;
      if (v119)
      {
        goto LABEL_124;
      }

      v119 = __OFADD__(v111, v123);
      v124 = v111 + v123;
      if (v119)
      {
        goto LABEL_127;
      }

      if (v124 >= v116)
      {
        v142 = &v34[16 * v108 + 32];
        v144 = *v142;
        v143 = *(v142 + 1);
        v119 = __OFSUB__(v143, v144);
        v145 = v143 - v144;
        if (v119)
        {
          goto LABEL_131;
        }

        if (v111 < v145)
        {
          v108 = v104 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v32 = *(a3 + 8);
    v33 = v167;
    a4 = v156;
    if (v167 >= v32)
    {
      goto LABEL_106;
    }
  }

  v153 = v5;
  v75 = *a3;
  v76 = sub_23875ED50();
  v77 = v13[9];
  v178 = v13[2];
  v179 = v76;
  v78 = v75 + v77 * (v35 - 1);
  v175 = -v77;
  v158 = v33;
  v79 = (v33 - v35);
  v176 = v75;
  v159 = v77;
  v80 = v75 + v35 * v77;
  v81 = v185;
  v82 = v180;
  v83 = v181;
  v160 = a4;
LABEL_43:
  v167 = v35;
  v163 = v80;
  v164 = v79;
  v84 = v79;
  v165 = v78;
  while (1)
  {
    v186 = v84;
    v85 = v178;
    (v178)(v82, v80, v81);
    v85(v83, v78, v81);
    v187 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v82 = v180;
    v190 = sub_2387585B0();
    v191 = v86;
    v83 = v181;
    v188 = sub_2387585B0();
    v189 = v87;
    sub_2384397A8();
    v88 = sub_23875F290();

    if (v88)
    {
      v190 = sub_2387585B0();
      v191 = v89;
      v188 = sub_2387585B0();
      v189 = v90;
      v91 = sub_23875F290();

      LOBYTE(v91) = v91 == -1;
    }

    else
    {
      v92 = v172;
      sub_238758640();
      v93 = v173;
      sub_238758640();
      v91 = MEMORY[0x23EE60750](v92, v93);
      v94 = *v171;
      v95 = v93;
      v96 = v174;
      (*v171)(v95, v174);
      v94(v92, v96);
    }

    v97 = *v183;
    v81 = v185;
    (*v183)(v83, v185);
    (v97)(v82, v81);
    if ((v91 & 1) == 0)
    {
LABEL_42:
      v35 = v167 + 1;
      v78 = v165 + v159;
      v79 = v164 - 1;
      v80 = v163 + v159;
      a4 = v160;
      if (v167 + 1 != v160)
      {
        goto LABEL_43;
      }

      v35 = v160;
      v5 = v153;
      a3 = v162;
      v13 = v166;
      v34 = v168;
      v33 = v158;
      goto LABEL_55;
    }

    v98 = v186;
    if (!v176)
    {
      break;
    }

    v99 = *v182;
    v100 = v177;
    (*v182)(v177, v80, v81);
    swift_arrayInitWithTakeFrontToBack();
    v99(v78, v100, v81);
    v78 += v175;
    v80 += v175;
    v101 = __CFADD__(v98, 1);
    v84 = v98 + 1;
    if (v101)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

void sub_23861DD7C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v85 = a3;
  v80 = sub_23875BCB0();
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v72 - v11;
  v89 = sub_238758680();
  v12 = *(v89 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v89);
  v82 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v72 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_73;
  }

  v25 = v85 - a2;
  if (v85 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_74;
  }

  v26 = (a2 - a1) / v24;
  v96 = a1;
  v95 = a4;
  if (v26 >= v25 / v24)
  {
    v28 = v25 / v24 * v24;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v29 = v85;
    }

    else
    {
      v29 = v85;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    if (v28 < 1)
    {
      v51 = a4 + v28;
    }

    else
    {
      v49 = -v24;
      v77 = (v12 + 16);
      v74 = (v7 + 8);
      v76 = (v12 + 8);
      v50 = a4 + v28;
      v51 = a4 + v28;
      v87 = a4;
      v85 = v49;
      while (2)
      {
        while (1)
        {
          v73 = v51;
          v52 = a2;
          a2 += v49;
          v88 = a2;
          v81 = v52;
          while (1)
          {
            if (v52 <= a1)
            {
              v96 = v52;
              v94 = v73;
              goto LABEL_71;
            }

            v53 = v29;
            v75 = v51;
            v54 = *v77;
            v83 = v50 + v49;
            v55 = v89;
            v54(v86);
            v56 = v82;
            (v54)(v82, a2, v55);
            sub_23875ED50();
            v84 = sub_23875ED40();
            sub_23875ECE0();
            if ((swift_task_isCurrentExecutor() & 1) == 0)
            {
              swift_task_reportUnexpectedExecutor();
            }

            v92 = sub_2387585B0();
            v93 = v57;
            v90 = sub_2387585B0();
            v91 = v58;
            sub_2384397A8();
            v59 = sub_23875F290();

            if (v59)
            {
              v92 = sub_2387585B0();
              v93 = v60;
              v90 = sub_2387585B0();
              v91 = v61;
              v62 = sub_23875F290();

              LOBYTE(v62) = v62 == -1;
            }

            else
            {
              v63 = v78;
              sub_238758640();
              v64 = v79;
              sub_238758640();
              v62 = MEMORY[0x23EE60750](v63, v64);
              v65 = *v74;
              v66 = v64;
              v67 = v80;
              (*v74)(v66, v80);
              v65(v63, v67);
            }

            v29 = v53 + v85;
            v68 = *v76;
            v69 = v89;
            (*v76)(v56, v89);
            v68(v86, v69);
            v70 = v87;
            a2 = v88;
            if (v62)
            {
              break;
            }

            v71 = v83;
            v51 = v83;
            if (v53 < v50 || v29 >= v50)
            {
              swift_arrayInitWithTakeFrontToBack();
              v49 = v85;
            }

            else
            {
              v49 = v85;
              if (v53 != v50)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v50 = v51;
            v52 = v81;
            if (v71 <= v70)
            {
              a2 = v81;
              goto LABEL_70;
            }
          }

          if (v53 < v81 || v29 >= v81)
          {
            break;
          }

          v51 = v75;
          v49 = v85;
          if (v53 != v81)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v50 <= v70)
          {
            goto LABEL_70;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v51 = v75;
        v49 = v85;
        if (v50 > v70)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v96 = a2;
    v94 = v51;
  }

  else
  {
    v27 = v26 * v24;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v86 = (a4 + v27);
    v94 = a4 + v27;
    if (v27 >= 1 && a2 < v85)
    {
      v31 = *(v12 + 16);
      v77 = (v7 + 8);
      v83 = v24;
      v84 = v12 + 16;
      v81 = (v12 + 8);
      v82 = v31;
      do
      {
        v88 = a2;
        v32 = a2;
        v33 = v89;
        v34 = v82;
        (v82)(v22, v32, v89);
        v87 = a4;
        v34(v19, a4, v33);
        sub_23875ED50();
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v92 = sub_2387585B0();
        v93 = v35;
        v90 = sub_2387585B0();
        v91 = v36;
        sub_2384397A8();
        v37 = sub_23875F290();

        if (v37)
        {
          v92 = sub_2387585B0();
          v93 = v38;
          v90 = sub_2387585B0();
          v91 = v39;
          v40 = sub_23875F290();

          LOBYTE(v40) = v40 == -1;
        }

        else
        {
          v41 = v78;
          sub_238758640();
          v42 = v79;
          sub_238758640();
          v40 = MEMORY[0x23EE60750](v41, v42);
          v43 = *v77;
          v44 = v42;
          v45 = v80;
          (*v77)(v44, v80);
          (v43)(v41, v45);
        }

        a2 = v88;
        v46 = v89;
        v47 = *v81;
        (*v81)(v19, v89);
        v47(v22, v46);
        a4 = v87;
        v48 = v83;
        if (v40)
        {
          if (a1 < a2 || a1 >= a2 + v83)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v48;
        }

        else
        {
          if (a1 < v87 || a1 >= v87 + v83)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v87)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v95 = a4 + v48;
          a4 += v48;
        }

        a1 += v48;
        v96 = a1;
      }

      while (a4 < v86 && a2 < v85);
    }
  }

LABEL_71:
  sub_238709008(&v96, &v95, &v94);
}

uint64_t sub_23861E71C()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v18 = sub_2387585B0();
  v19 = v8;
  v16 = sub_2387585B0();
  v17 = v9;
  sub_2384397A8();
  v10 = sub_23875F290();

  if (v10)
  {
    v18 = sub_2387585B0();
    v19 = v11;
    v16 = sub_2387585B0();
    v17 = v12;
    v13 = sub_23875F290();

    LOBYTE(v13) = v13 == -1;
  }

  else
  {
    sub_238758640();
    sub_238758640();
    v13 = MEMORY[0x23EE60750](v7, v4);
    v14 = *(v1 + 8);
    v14(v4, v0);
    v14(v7, v0);
  }

  return v13 & 1;
}

uint64_t sub_23861E93C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23861E9A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23861EA0C()
{
  v2 = *(type metadata accessor for SelectAccountsView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_238616674(v4, v5, v0 + v3);
}

unint64_t sub_23861EB2C()
{
  result = qword_27DF11680;
  if (!qword_27DF11680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11678, &unk_238778BE0);
    sub_23843A3E8(&qword_27DF0CAA0, &qword_27DF09580, &qword_238763900);
    sub_23861EBE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11680);
  }

  return result;
}

unint64_t sub_23861EBE4()
{
  result = qword_27DF11688;
  if (!qword_27DF11688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11690, &qword_238778BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11698, &unk_238778BF8);
    sub_23875D620();
    sub_23843A3E8(&qword_27DF116A0, &qword_27DF11698, &unk_238778BF8);
    sub_23861C5F4(&qword_27DF0DB38, MEMORY[0x277CDE400]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11688);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{
  v1 = (type metadata accessor for SelectAccountsView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v0 + v3 + v1[9];
  v9 = sub_23875D530();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = *(v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0EF48, &unk_238778940) + 40));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

id sub_23861EEC0()
{
  v1 = *(type metadata accessor for SelectAccountsView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_2386133E0();
}

double sub_23861EF1C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_238616ADC(a1).n128_u64[0];
  return result;
}

unint64_t sub_23861EF24()
{
  result = qword_27DF116C0;
  if (!qword_27DF116C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF116C0);
  }

  return result;
}

unint64_t sub_23861EF78()
{
  result = qword_27DF11720;
  if (!qword_27DF11720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11720);
  }

  return result;
}

void sub_23861F048()
{
  sub_238617248(319, &qword_27DF115A0, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    sub_238758680();
    if (v1 <= 0x3F)
    {
      sub_2384B49C4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23861F100()
{
  result = qword_27DF11748;
  if (!qword_27DF11748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11610, &unk_238778AF8);
    sub_23843A3E8(&qword_27DF11750, &qword_27DF11758, &qword_238778CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11748);
  }

  return result;
}

uint64_t sub_23861F1D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccountListView.AccountRow(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_23861C02C(v4, a1);
}

unint64_t sub_23861F244()
{
  result = qword_27DF11788;
  if (!qword_27DF11788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11770, &qword_238778D30);
    sub_23861F2FC();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11788);
  }

  return result;
}

unint64_t sub_23861F2FC()
{
  result = qword_27DF11790;
  if (!qword_27DF11790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11768, &qword_238778D28);
    sub_23843A3E8(&qword_27DF11798, &qword_27DF11760, &qword_238778D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11790);
  }

  return result;
}

uint64_t sub_23861F3B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_110Tm()
{
  v1 = (type metadata accessor for AccountListView.AccountRow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11588, &qword_238778970);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_238758680();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23861F57C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23861F600()
{
  result = qword_27DF117F0;
  if (!qword_27DF117F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF117E8, &qword_238778DD0);
    sub_23861F6B8();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF117F0);
  }

  return result;
}

unint64_t sub_23861F6B8()
{
  result = qword_27DF117F8;
  if (!qword_27DF117F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11800, &qword_238778DD8);
    sub_23843A3E8(&qword_27DF11808, &qword_27DF11810, &unk_238778DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF117F8);
  }

  return result;
}

unint64_t sub_23861F79C()
{
  result = qword_27DF11828;
  if (!qword_27DF11828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11820, &qword_238778DF0);
    sub_23861F828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11828);
  }

  return result;
}

unint64_t sub_23861F828()
{
  result = qword_27DF11830;
  if (!qword_27DF11830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11838, &qword_238778DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11840, &unk_238778E00);
    sub_23861F91C();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11830);
  }

  return result;
}

unint64_t sub_23861F91C()
{
  result = qword_27DF11848;
  if (!qword_27DF11848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11840, &unk_238778E00);
    sub_238464BD4();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11848);
  }

  return result;
}

uint64_t sub_23861FA20@<X0>(uint64_t a1@<X8>)
{
  sub_2384397A8();

  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  sub_23875D8E0();
  v7 = sub_23875DA60();
  v9 = v8;
  v11 = v10;

  sub_2384397FC(v2, v4, v6 & 1);

  sub_23875D890();
  v12 = sub_23875D9E0();
  v14 = v13;
  LOBYTE(v4) = v15;
  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875D420();
  v16 = sub_23875DA20();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2384397FC(v12, v14, v4 & 1);

  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB38, &unk_238766830) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C20, &qword_2387711C0) + 28);
  v25 = sub_23875DA40();
  (*(*(v25 - 8) + 56))(v23 + v24, 1, 1, v25);
  result = swift_getKeyPath();
  *v23 = result;
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_23861FC24@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_23861FA20(a1);
}

uint64_t sub_23861FC94()
{
  result = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23861FD28()
{
  result = sub_2387590B0();
  if (v1 <= 0x3F)
  {
    result = sub_23875B0A0();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ProductImage.ViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23861FDFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118A0, &qword_238779080);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - v3;
  *v4 = sub_23875CE60();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118A8, &qword_238779088);
  sub_23861FF78(v0, &v4[*(v5 + 44)]);
  v9 = 0;
  v10 = 0xE000000000000000;
  sub_23875F470();

  v9 = 0xD00000000000002DLL;
  v10 = 0x800000023878DDB0;
  v8[1] = *(v0 + 24);
  v6 = sub_23875F600();
  MEMORY[0x23EE63650](v6);

  sub_238620D24();
  sub_23875DE00();

  return sub_238439884(v4, &qword_27DF118A0, &qword_238779080);
}

uint64_t sub_23861FF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_23875DFD0();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B10, &unk_238779090);
  v8 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v36 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v31[-v11];
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = sub_23875D030();
  v39 = 1;
  sub_238620538(a1, &v52);
  v46 = *&v53[80];
  v47[0] = *&v53[96];
  *(v47 + 12) = *&v53[108];
  v42 = *&v53[16];
  v43 = *&v53[32];
  v44 = *&v53[48];
  v45 = *&v53[64];
  v40 = v52;
  v41 = *v53;
  v48[6] = *&v53[80];
  v49[0] = *&v53[96];
  *(v49 + 12) = *&v53[108];
  v48[2] = *&v53[16];
  v48[3] = *&v53[32];
  v48[4] = *&v53[48];
  v48[5] = *&v53[64];
  v48[0] = v52;
  v48[1] = *v53;
  sub_23843981C(&v40, &v50, &qword_27DF092F0, &qword_238763090);
  sub_238439884(v48, &qword_27DF092F0, &qword_238763090);
  *&v38[87] = v45;
  *&v38[103] = v46;
  *&v38[119] = v47[0];
  *&v38[131] = *(v47 + 12);
  *&v38[23] = v41;
  *&v38[39] = v42;
  *&v38[55] = v43;
  *&v38[71] = v44;
  *&v38[7] = v40;
  v32 = v39;
  v13 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  sub_238620D88(a1 + *(v13 + 32), v12);
  v14 = *(type metadata accessor for ProductImage(0) + 20);
  *&v12[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v33);
  v15 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0) + 36)];
  v18 = type metadata accessor for OrderImageStyleModifier();
  *&v17[*(v18 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v18 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v17 = xmmword_238762FA0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  *(v17 + 4) = v15;
  v17[40] = 1;
  v19 = swift_getKeyPath();
  v20 = &v12[*(v35 + 36)];
  *v20 = v19;
  swift_storeEnumTagMultiPayload();
  *(v20 + *(type metadata accessor for OrderImageVignette() + 20)) = 1;
  v21 = v36;
  sub_23843981C(v12, v36, &qword_27DF10B10, &unk_238779090);
  v22 = v34;
  v50 = v34;
  v23 = v32;
  v51[0] = v32;
  *&v51[113] = *&v38[112];
  *&v51[97] = *&v38[96];
  *&v51[129] = *&v38[128];
  *&v51[144] = *&v38[143];
  *&v51[33] = *&v38[32];
  *&v51[49] = *&v38[48];
  *&v51[65] = *&v38[64];
  *&v51[81] = *&v38[80];
  *&v51[1] = *v38;
  *&v51[17] = *&v38[16];
  v24 = *&v51[128];
  *(a2 + 128) = *&v51[112];
  *(a2 + 144) = v24;
  *(a2 + 160) = *&v51[144];
  v25 = *&v51[64];
  *(a2 + 64) = *&v51[48];
  *(a2 + 80) = v25;
  v26 = *&v51[96];
  *(a2 + 96) = *&v51[80];
  *(a2 + 112) = v26;
  v27 = *v51;
  *a2 = v50;
  *(a2 + 16) = v27;
  v28 = *&v51[32];
  *(a2 + 32) = *&v51[16];
  *(a2 + 48) = v28;
  *(a2 + 168) = 0;
  *(a2 + 176) = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118B8, &unk_238779108);
  sub_23843981C(v21, a2 + *(v29 + 64), &qword_27DF10B10, &unk_238779090);
  sub_23843981C(&v50, &v52, &qword_27DF09308, &qword_238763110);
  sub_238439884(v12, &qword_27DF10B10, &unk_238779090);
  sub_238439884(v21, &qword_27DF10B10, &unk_238779090);
  *&v53[97] = *&v38[96];
  *&v53[113] = *&v38[112];
  v54[0] = *&v38[128];
  *&v53[33] = *&v38[32];
  *&v53[49] = *&v38[48];
  *&v53[65] = *&v38[64];
  *&v53[81] = *&v38[80];
  *&v53[1] = *v38;
  v52 = v22;
  v53[0] = v23;
  *(v54 + 15) = *&v38[143];
  *&v53[17] = *&v38[16];
  sub_238439884(&v52, &qword_27DF09308, &qword_238763110);
}

uint64_t sub_238620538@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v92 = a2;
  v91 = sub_2387590C0();
  v3 = *(*(v91 - 8) + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2387590B0();
  v86 = *(v5 - 8);
  v87 = v5;
  v6 = *(v86 + 64);
  MEMORY[0x28223BE20](v5);
  v88 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875BE40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875BE20();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23875BD20();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v94 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2387595E0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v93 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_23875B1B0();
  v22 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v23 = sub_23875B0A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v90 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v84 = *(a1 + 32);
  v85 = v29;
  v30 = *(a1 + 40);
  v82 = v28;
  v83 = v30;
  v79 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
  (*(v24 + 16))(v27, a1 + *(v79 + 28), v23);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_238620FB4(&qword_27DF0A050, MEMORY[0x277CC8560]);
  sub_238620FB4(&qword_27DF118C0, MEMORY[0x277CC8540]);
  v31 = sub_23875DA80();
  v33 = v32;
  v35 = v34;
  sub_23875D8E0();
  v36 = sub_23875DA60();
  v75 = a1;
  v76 = v15;
  v37 = v36;
  v39 = v38;
  v77 = v11;
  v41 = v40;

  sub_2384397FC(v31, v33, v35 & 1);

  sub_23875D890();
  v42 = sub_23875D9E0();
  v44 = v43;
  v46 = v45;
  sub_2384397FC(v37, v39, v41 & 1);

  LODWORD(v103[0]) = sub_23875D420();
  v47 = sub_23875DA20();
  v80 = v48;
  v81 = v49;
  v78 = v50;
  sub_2384397FC(v42, v44, v46 & 1);

  (*(v86 + 16))(v88, v75 + *(v79 + 24), v87);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_238620FB4(&qword_27DF0A030, MEMORY[0x277CC7708]);
  sub_238620FB4(&qword_27DF0A038, MEMORY[0x277CC76F0]);
  v51 = sub_23875DA80();
  v53 = v52;
  LOBYTE(v31) = v54;
  v56 = v55;
  KeyPath = swift_getKeyPath();
  v58 = sub_23875D820();
  v59 = swift_getKeyPath();
  v60 = v31 & 1;
  LOBYTE(v103[0]) = v31 & 1;
  LOBYTE(v99) = 0;
  v61 = sub_23875D420();
  LOBYTE(v31) = v78 & 1;
  v96 = v78 & 1;
  *&v99 = v51;
  *(&v99 + 1) = v53;
  LOBYTE(v100) = v60;
  v62 = v98[0];
  *(&v100 + 1) = v98[0];
  DWORD1(v100) = *(v98 + 3);
  *(&v100 + 1) = v56;
  *&v101 = KeyPath;
  *&v102[4] = *&v97[3];
  v63 = *v97;
  *&v102[1] = *v97;
  *(&v101 + 1) = 1;
  v102[0] = 0;
  *&v102[8] = v59;
  *&v102[16] = v58;
  *&v102[24] = v61;
  v64 = v92;
  *v92 = v82;
  v65 = v96;
  v66 = v84;
  *(v64 + 1) = v85;
  *(v64 + 2) = v66;
  v64[24] = v83;
  v67 = v80;
  *(v64 + 4) = v47;
  *(v64 + 5) = v67;
  v64[48] = v65;
  *(v64 + 7) = v81;
  v68 = v99;
  v69 = v100;
  v70 = v101;
  *(v64 + 124) = *&v102[12];
  v71 = *v102;
  *(v64 + 6) = v70;
  *(v64 + 7) = v71;
  *(v64 + 4) = v68;
  *(v64 + 5) = v69;
  v103[0] = v51;
  v103[1] = v53;
  v104 = v60;
  *&v105[3] = *(v98 + 3);
  *v105 = v62;
  v106 = v56;
  v107 = KeyPath;
  v108 = 1;
  v109 = 0;
  *&v110[3] = *&v97[3];
  *v110 = v63;
  v111 = v59;
  v112 = v58;
  v113 = v61;
  v72 = v67;
  sub_23843980C(v47, v67, v31);

  sub_23843981C(&v99, &v95, &qword_27DF09318, &unk_23877D280);
  sub_238439884(v103, &qword_27DF09318, &unk_23877D280);
  sub_2384397FC(v47, v72, v31);
}

unint64_t sub_238620D24()
{
  result = qword_27DF118B0;
  if (!qword_27DF118B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF118A0, &qword_238779080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF118B0);
  }

  return result;
}

uint64_t sub_238620D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductImage.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238620DEC(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && ((*(a1 + 40) ^ *(a2 + 40)) & 1) == 0)
  {
    v6 = type metadata accessor for OrderDetailsCollapsedFulfillment.ViewModel(0);
    if (MEMORY[0x23EE5DB60](a1 + v6[6], a2 + v6[6]) & 1) != 0 && (MEMORY[0x23EE5FB50](a1 + v6[7], a2 + v6[7]))
    {
      v7 = v6[8];
      v8 = a1 + v7;
      v9 = a2 + v7;
      if (MEMORY[0x23EE5FA60](v8, v9))
      {
        v10 = type metadata accessor for ProductImage.ViewModel(0);
        if (sub_238518C1C(*(v8 + *(v10 + 20)), *(v9 + *(v10 + 20))))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_238620EF8()
{
  result = qword_27DF118C8;
  if (!qword_27DF118C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF118D0, &unk_238779180);
    sub_238620D24();
    sub_238620FB4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF118C8);
  }

  return result;
}

uint64_t sub_238620FB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238620FFC@<X0>(void *a1@<X8>)
{
  sub_23844ACFC();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_23862104C(uint64_t *a1)
{
  v2 = *a1;
  sub_23844ACFC();

  return sub_23875CDD0();
}

uint64_t SavedOrderDetails.init(managedOrder:fulfillmentIdentifier:sourceApplication:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = swift_getKeyPath();
  *(a6 + 48) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = result;
  return result;
}

uint64_t sub_23862110C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  while (v5)
  {
LABEL_4:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(a1 + 56) + 16 * v10);
    v12 = v11[1];
    if (v12)
    {
      v14 = *(*(a1 + 48) + 8 * v10);
      v32 = *v11;
      swift_bridgeObjectRetain_n();
      v15 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = sub_2385477FC(v15);
      v19 = v8[2];
      v20 = (v18 & 1) == 0;
      v21 = __OFADD__(v19, v20);
      v22 = v19 + v20;
      if (v21)
      {
        goto LABEL_22;
      }

      v23 = v18;
      if (v8[3] >= v22)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30 = v17;
          sub_23854A0B4();
          v17 = v30;
        }
      }

      else
      {
        sub_2385483BC(v22, isUniquelyReferenced_nonNull_native);
        v17 = sub_2385477FC(v15);
        if ((v23 & 1) != (v24 & 1))
        {
          goto LABEL_24;
        }
      }

      if (v23)
      {
        v25 = (v8[7] + 16 * v17);
        v26 = v25[1];
        *v25 = v32;
        v25[1] = v12;
      }

      else
      {
        v8[(v17 >> 6) + 8] |= 1 << v17;
        *(v8[6] + 8 * v17) = v15;
        v27 = (v8[7] + 16 * v17);
        *v27 = v32;
        v27[1] = v12;

        v28 = v8[2];
        v21 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v21)
        {
          goto LABEL_23;
        }

        v8[2] = v29;
      }
    }
  }

  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v13);
    ++v7;
    if (v5)
    {
      v7 = v13;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for PKAnalyticsKey(0);
  result = sub_23875F680();
  __break(1u);
  return result;
}

id SavedOrderDetails.body.getter@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v3;
  v17[2] = *(v1 + 32);
  v18 = *(v1 + 48);
  v4 = *&v17[0];
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = *(v1 + 48);
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = *(v1 + 48);
  sub_23862196C(v17, v16);
  sub_23862196C(v17, v16);

  result = [v4 managedObjectContext];
  if (result)
  {
    v10 = result;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118D8, &qword_238779258);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = v4;
    v15 = sub_2386280B0(v4, v10, sub_2386218E0, v5);

    *a1 = v15;
    a1[1] = 0;
    a1[2] = sub_238621964;
    a1[3] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2386214A4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_23875CDB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238758FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1;
  sub_238757D90();
  if ((*(v12 + 88))(v15, v11) == *MEMORY[0x277CC76A8])
  {
    (*(v12 + 96))(v15, v11);
    v16 = *v15;
    v17 = *(a2 + 16);
    v35 = *(a2 + 8);
    v40 = *(a2 + 48);
    v18 = *(a2 + 40);
    v39 = v18;
    v19 = v40;

    sub_23843981C(&v39, &v38, &qword_27DF11A20, &qword_2387794F0);
    if (v19 != 1)
    {
      sub_23875EFF0();
      v20 = v6;
      v21 = sub_23875D730();
      sub_23875C110();

      sub_23875CDA0();
      swift_getAtKeyPath();
      sub_238439884(&v39, &qword_27DF11A20, &qword_2387794F0);
      (*(v7 + 8))(v10, v20);
      v18 = v38;
    }

    v22 = *(a2 + 24);
    v36 = *(a2 + 32);
    v23 = v37;
    v24 = v16;
    sub_2385259B8(v23, v24, v35, v17, 0, a3);
    v25 = type metadata accessor for SavedOrderDetails.ViewModel(0);
    v26 = v25[5];
    v27 = v23;
    v28 = v24;
    sub_23853E82C(v27, v28, a3 + v26);
    v29 = a3 + v25[7];
    *v29 = 1;
    v30 = type metadata accessor for OrderActionsMenuContext(0);
    v31 = v30[5];
    v32 = v28;
    sub_238757D40();
    v29[v30[6]] = [v27 notificationsEnabled];
    v29[v30[7]] = [v27 isActive];
    v29[v30[8]] = sub_2385BA98C() & 1;
    v29[v30[9]] = [v27 isMarkedAsComplete];
    v29[v30[10]] = sub_238757DC0() & 1;
    LOBYTE(v28) = [v27 automaticUpdatesEnabled];

    v29[v30[11]] = v28;
    *(a3 + v25[6]) = sub_238623B7C(v27, v32, v22, v36, v18);
    LOBYTE(v28) = [v27 isActive];

    *(a3 + v25[8]) = v28;
  }

  else
  {
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

uint64_t sub_2386218E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2386219A4(a1, a2, a3);
  v5 = *a2;
  v6 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11968, &qword_2387793D8) + 36);
  sub_238757D40();
  v7 = v6 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
  result = swift_getKeyPath();
  *v7 = result;
  *(v7 + 8) = 0;
  return result;
}

uint64_t sub_2386219A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v68 = a3;
  v4 = sub_23875ED50();
  v69 = sub_23875ED40();
  v58 = v4;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = type metadata accessor for SavedOrderDetails.ContentItem(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23862F0B8(a1, v8, type metadata accessor for SavedOrderDetails.ContentItem);
  v9 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v67 = v54;
  v66 = *(v9 - 8);
  v56 = *(v66 + 8);
  MEMORY[0x28223BE20](v9 - 8);
  v57 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v54 - v57;
  sub_23862F054(v8, v54 - v57);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11970, &unk_238779408);
  v65 = v54;
  v63 = *(v64 - 8);
  v12 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E78, &unk_238761D00);
  v15 = *(v14 - 8);
  v60 = (v14 - 8);
  v61 = v54;
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v14 - 8);
  v18 = v54 - v17;
  v19 = type metadata accessor for OrderDetails(0);
  v55 = v54;
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23862F0B8(v11, v22, type metadata accessor for OrderDetails.ViewModel);
  v54[1] = v54;
  MEMORY[0x28223BE20](v23);
  v54[-2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11978, &qword_238779418);
  sub_23862F330(&qword_27DF11980, type metadata accessor for OrderDetails);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11988, &unk_238779420);
  v25 = sub_23843A3E8(&qword_27DF11990, &qword_27DF11988, &unk_238779420);
  v71 = v24;
  v72 = v25;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  v26 = sub_23862F268(v22, type metadata accessor for OrderDetails);
  MEMORY[0x28223BE20](v26);
  v27 = v57;
  sub_23862F0B8(v11, v54 - v57, type metadata accessor for SavedOrderDetails.ViewModel);
  v28 = v66[80];
  v29 = swift_allocObject();
  v30 = sub_23862F054(v54 - v27, v29 + ((v28 + 16) & ~v28));
  v31 = *(v60 + 11);
  v60 = v18;
  v32 = &v18[v31];
  *v32 = sub_23862F128;
  v32[1] = v29;
  v32[2] = 0;
  v32[3] = 0;
  MEMORY[0x28223BE20](v30);
  v66 = v11;
  sub_23862F0B8(v11, v54 - v27, type metadata accessor for SavedOrderDetails.ViewModel);
  v33 = v59;
  sub_23862196C(v59, &v71);
  v34 = sub_23875ED40();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = MEMORY[0x277D85700];
  v36 = *(v33 + 16);
  *(v35 + 32) = *v33;
  *(v35 + 48) = v36;
  *(v35 + 64) = *(v33 + 32);
  *(v35 + 80) = *(v33 + 48);
  sub_23862F054(v54 - v27, v35 + ((v28 + 81) & ~v28));
  v37 = sub_23875ED80();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v41 = v54 - v40;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v57 = sub_23875C830();
    v58 = v54;
    v56 = *(v57 - 8);
    v42 = *(v56 + 64);
    MEMORY[0x28223BE20](v57);
    v59 = v54;
    v55 = v54 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_23875F470();

    v71 = 0xD000000000000031;
    v72 = 0x800000023878DE30;
    v70 = 97;
    v44 = sub_23875F600();
    MEMORY[0x23EE63650](v44);

    v46 = MEMORY[0x28223BE20](v45);
    (*(v38 + 16))(v54 - v40, v41, v37, v46);
    v47 = v55;
    sub_23875C820();
    (*(v38 + 8))(v41, v37);
    v48 = v62;
    sub_2384217C4(v60, v62);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E80, &qword_238779440);
    (*(v56 + 32))(v48 + *(v49 + 36), v47, v57);
  }

  else
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E88, &unk_238761D10);
    v48 = v62;
    v51 = (v62 + *(v50 + 36));
    v52 = sub_23875C6E0();
    (*(v38 + 32))(&v51[*(v52 + 20)], v54 - v40, v37);
    *v51 = &unk_238779438;
    *(v51 + 1) = v35;
    sub_2384217C4(v60, v48);
  }

  (*(v63 + 32))(v68, v48, v64);
  sub_23862F268(v66, type metadata accessor for SavedOrderDetails.ViewModel);
}

uint64_t sub_2386222A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_23875D2A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11988, &unk_238779420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_23875D270();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119A8, &qword_238779448);
  sub_23843A3E8(&qword_27DF119B0, &qword_27DF119A8, &qword_238779448);
  sub_23875C990();
  v11 = sub_23843A3E8(&qword_27DF11990, &qword_27DF11988, &unk_238779420);
  MEMORY[0x23EE61E80](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_238622514@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = a1;
  v65 = a2;
  v62 = type metadata accessor for OrderActionsMenu(0);
  v2 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119B8, &qword_238779450);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v64 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v53 - v9;
  v10 = sub_23875D2E0();
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrderShareLink(0);
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119C0, &qword_238779458);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119C8, &qword_238779460);
  v57 = *(v23 - 8);
  v58 = v23;
  v24 = *(v57 + 64);
  MEMORY[0x28223BE20](v23);
  v60 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v53 - v27;
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  v30 = v61;
  sub_23862F0B8(v61 + *(v29 + 20), v18, type metadata accessor for OrderShareLink.ViewModel);
  v31 = &v18[v15[5]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v15[6];
  *&v18[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  v33 = v15[7];
  v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *&v18[v33] = v69;
  sub_23862F330(&qword_27DF119D0, type metadata accessor for OrderShareLink);
  sub_23875DE00();
  sub_23862F268(v18, type metadata accessor for OrderShareLink);
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119D8, &qword_238779498) + 36)] = xmmword_238779190;
  sub_23875E4A0();
  sub_23875C5C0();
  v34 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF119E0, &qword_2387794A0) + 36)];
  v35 = v70;
  *v34 = v69;
  *(v34 + 1) = v35;
  *(v34 + 2) = v71;
  v22[*(v19 + 36)] = 0;
  sub_23875D2D0();
  sub_23862F380();
  sub_23862F330(&qword_27DF0F7C0, MEMORY[0x277CDE0B8]);
  v36 = v28;
  v54 = v28;
  v37 = v55;
  sub_23875DB30();
  (*(v56 + 8))(v14, v37);
  sub_238439884(v22, &qword_27DF119C0, &qword_238779458);
  sub_23862F0B8(v30 + *(v29 + 28), v4, type metadata accessor for OrderActionsMenuContext);
  v38 = v62;
  v39 = *(v62 + 20);
  *&v4[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v40 = &v4[*(v38 + 24)];
  v66 = 0;
  sub_23875E1A0();
  v41 = v68;
  *v40 = v67;
  *(v40 + 1) = v41;
  sub_23862F330(&qword_27DF11A10, type metadata accessor for OrderActionsMenu);
  v42 = v63;
  sub_23875DE00();
  sub_23862F268(v4, type metadata accessor for OrderActionsMenu);
  v43 = v57;
  v44 = *(v57 + 16);
  v45 = v60;
  v46 = v36;
  v47 = v58;
  v44(v60, v46, v58);
  v48 = v64;
  sub_23843981C(v42, v64, &qword_27DF119B8, &qword_238779450);
  v49 = v65;
  v44(v65, v45, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A18, &qword_2387794E8);
  sub_23843981C(v48, &v49[*(v50 + 48)], &qword_27DF119B8, &qword_238779450);
  sub_238439884(v42, &qword_27DF119B8, &qword_238779450);
  v51 = *(v43 + 8);
  v51(v54, v47);
  sub_238439884(v48, &qword_27DF119B8, &qword_238779450);
  v51(v45, v47);
}

uint64_t sub_238622CA4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + *(type metadata accessor for SavedOrderDetails.ViewModel(0) + 24));
  v20 = *(v2 + 16);
  if (!v20)
  {
  }

  v3 = 0;
  v19 = *MEMORY[0x277D38548];
  v18 = *MEMORY[0x277D38470];
  v4 = *MEMORY[0x277D383D8];
  v5 = *MEMORY[0x277D384B8];
  while (v3 < *(v2 + 16))
  {
    v6 = *(v2 + 32 + 8 * v3);
    v7 = sub_23875EA80();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 32) = v4;
    *(inited + 16) = xmmword_238763B60;
    *(inited + 40) = v7;
    *(inited + 48) = v9;
    *(inited + 56) = v5;
    strcpy((inited + 64), "orderDetails");
    *(inited + 77) = 0;
    *(inited + 78) = -5120;

    v11 = v4;
    v12 = v5;
    v13 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v13;
    sub_2385C3214(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v21);

    ++v3;
    v15 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_23862F330(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v16 = sub_23875E910();

    [v15 subject:v19 sendEvent:v16];

    if (v20 == v3)
    {
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_238622F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[11] = sub_23875ED50();
  v4[12] = sub_23875ED40();
  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23862301C, v6, v5);
}

uint64_t sub_23862301C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];

  v32 = *v2;
  v33 = v2[1];
  v34 = v2[2];
  v35 = *(v2 + 48);
  v4 = *(v3 + *(type metadata accessor for SavedOrderDetails.ViewModel(0) + 32));
  if (sub_238623458(v4))
  {
    v5 = [objc_opt_self() sharedApplication];
    v6 = [v5 connectedScenes];

    sub_238449184(0, &qword_27DF11998, 0x277D75940);
    sub_23862F2C8();
    v7 = sub_23875EE60();

    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_23875F360();
      sub_23875EEA0();
      v7 = v0[2];
      v8 = v0[3];
      v9 = v0[4];
      v10 = v0[5];
      v11 = v0[6];
    }

    else
    {
      v12 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v13 = ~v12;
      v14 = -v12;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v11 = v15 & *(v7 + 56);

      v9 = v13;
      v10 = 0;
    }

    v16 = (v9 + 64) >> 6;
    if (v7 < 0)
    {
      goto LABEL_15;
    }

LABEL_9:
    v17 = v10;
    v18 = v11;
    if (v11)
    {
LABEL_13:
      v19 = (v18 - 1) & v18;
      v20 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v18)))));
      if (v20)
      {
        while (1)
        {
          v22 = v0[11];
          sub_23875ED40();
          sub_23875ECE0();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v23 = [v20 activationState];

          if (!v23)
          {
            break;
          }

          v11 = v19;
          if ((v7 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_15:
          v21 = sub_23875F3D0();
          if (v21)
          {
            v0[8] = v21;
            swift_dynamicCast();
            v20 = v0[7];
            v19 = v11;
            if (v20)
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        sub_238434840();

        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v30;
          v25 = [objc_allocWithZone(MEMORY[0x277D38B90]) init];
          [v25 requestReviewInScene:v31 trigger:3];

LABEL_26:
          goto LABEL_27;
        }
      }

      else
      {
LABEL_22:
        sub_238434840();
      }

      if (qword_27DF08CD8 == -1)
      {
LABEL_24:
        v24 = sub_23875C1E0();
        __swift_project_value_buffer(v24, qword_27DF2F690);
        v25 = sub_23875C1B0();
        v26 = sub_23875EFE0();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_2383F8000, v25, v26, "Cannot find active window scene", v27, 2u);
          MEMORY[0x23EE64DF0](v27, -1, -1);
        }

        goto LABEL_26;
      }
    }

    else
    {
      while (1)
      {
        v10 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v10 >= v16)
        {
          goto LABEL_22;
        }

        v18 = *(v8 + 8 * v10);
        ++v17;
        if (v18)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_24;
  }

LABEL_27:
  v28 = v0[1];

  return v28();
}

uint64_t sub_238623458(char a1)
{
  v2 = sub_23875BD30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875BE20();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - v13;
  v15 = sub_23875BC40();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v45 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v42 - v23;
  if (a1)
  {
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v25 = sub_23875C1E0();
    __swift_project_value_buffer(v25, qword_27DF2F690);
    v26 = sub_23875C1B0();
    v27 = sub_23875EFC0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2383F8000, v26, v27, "App Store review prompt not shown since order is still active.", v28, 2u);
      MEMORY[0x23EE64DF0](v28, -1, -1);
    }
  }

  else
  {
    v29 = PKLastReviewPromptDate();
    if (v29)
    {
      v30 = v29;
      sub_23875BBE0();

      v42 = v3;
      v31 = v2;
      v32 = v24;
      v33 = *(v16 + 32);
      v33(v14, v21, v15);
      (*(v16 + 56))(v14, 0, 1, v15);
      v33(v32, v14, v15);
      v24 = v32;
      v2 = v31;
      v3 = v42;
    }

    else
    {
      (*(v16 + 56))(v14, 1, 1, v15);
      sub_23875BAE0();
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        sub_238439884(v14, &qword_27DF12E00, &unk_238763FC0);
      }
    }

    (*(v3 + 104))(v6, *MEMORY[0x277CC9810], v2);
    sub_23875BD40();
    (*(v3 + 8))(v6, v2);
    v34 = v45;
    sub_23875B9E0();
    (*(v43 + 8))(v10, v44);
    sub_23875BBF0();
    v35 = sub_23875BB50();
    v36 = *(v16 + 8);
    v36(v21, v15);
    if (v35)
    {
      v36(v34, v15);
      v36(v24, v15);
      return 1;
    }

    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v38 = sub_23875C1E0();
    __swift_project_value_buffer(v38, qword_27DF2F690);
    v39 = sub_23875C1B0();
    v40 = sub_23875EFC0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2383F8000, v39, v40, "App Store review prompt not shown since last review prompt was less than 30 days ago.", v41, 2u);
      MEMORY[0x23EE64DF0](v41, -1, -1);
    }

    v36(v34, v15);
    v36(v24, v15);
  }

  return 0;
}

id sub_238623A14@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v3;
  v17[2] = *(v1 + 32);
  v18 = *(v1 + 48);
  v4 = *&v17[0];
  v5 = swift_allocObject();
  v6 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = *(v1 + 48);
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v1 + 32);
  *(v7 + 64) = *(v1 + 48);
  sub_23862196C(v17, v16);
  sub_23862196C(v17, v16);

  result = [v4 managedObjectContext];
  if (result)
  {
    v10 = result;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF118D8, &qword_238779258);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = v4;
    v15 = sub_2386280B0(v4, v10, sub_23862F984, v5);

    *a1 = v15;
    a1[1] = 0;
    a1[2] = sub_23862F988;
    a1[3] = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238623B7C(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v409 = a5;
  v417 = a2;
  v414 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v381 = v369 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v369 - v11;
  MEMORY[0x28223BE20](v13);
  v379 = v369 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v369 - v16;
  MEMORY[0x28223BE20](v18);
  v372 = v369 - v19;
  MEMORY[0x28223BE20](v20);
  v371 = v369 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A28, &qword_2387794F8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v370 = v369 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5D0, &unk_238770FE0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v373 = v369 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v386 = v369 - v29;
  v30 = sub_23875BC40();
  v411 = *(v30 - 8);
  v31 = *(v411 + 64);
  MEMORY[0x28223BE20](v30);
  v387 = v369 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_238758090();
  v412 = *(v33 - 8);
  v413 = v33;
  v34 = *(v412 + 64);
  MEMORY[0x28223BE20](v33);
  v393 = v369 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v415 = v369 - v38;
  v39 = sub_238758D20();
  v404 = *(v39 - 8);
  v405 = v39;
  v40 = *(v404 + 64);
  MEMORY[0x28223BE20](v39);
  v403 = v369 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D648, &unk_238779500);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42 - 8);
  v406 = v369 - v44;
  v45 = sub_23875A710();
  v401 = *(v45 - 8);
  v402 = v45;
  v46 = *(v401 + 8);
  MEMORY[0x28223BE20](v45);
  v400 = v369 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = sub_23875B940();
  v410 = *(v408 - 8);
  v48 = *(v410 + 64);
  MEMORY[0x28223BE20](v408);
  v398 = v369 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = v369 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = v369 - v55;
  if (a4)
  {

    LODWORD(v399) = sub_23844CC84(a3, a4);
  }

  else
  {
    LODWORD(v399) = 7;
  }

  v57 = sub_23875A540();
  v58 = v57;
  v380 = v12;
  v377 = v53;
  v378 = v17;
  v407 = v30;
  if (v57 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23875F3A0())
  {
    v60 = 0;
    v416 = v58 & 0xC000000000000001;
    v61 = (v410 + 56);
    while (1)
    {
      if (v416)
      {
        v62 = MEMORY[0x23EE63F70](v60, v58);
      }

      else
      {
        if (v60 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v62 = *(v58 + 8 * v60 + 32);
      }

      v63 = v62;
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v65 = [v62 launchURL];
      if (v65)
      {
        v66 = v65;

        v67 = v398;
        sub_23875B8B0();

        v68 = v410 + 32;
        v69 = v67;
        v70 = v408;
        (*(v410 + 32))(v56, v69, v408);
        (*(v68 + 24))(v56, 0, 1, v70);
        sub_238439884(v56, &qword_27DF0D040, &qword_2387676A0);
        v71 = MEMORY[0x277D38528];
        goto LABEL_20;
      }

      (*v61)(v56, 1, 1, v408);
      sub_238439884(v56, &qword_27DF0D040, &qword_2387676A0);
      ++v60;
      if (v64 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  v71 = MEMORY[0x277D38520];
LABEL_20:
  v72 = sub_23875A540();
  v73 = v72;
  v416 = v71;
  if (v72 >> 62)
  {
    goto LABEL_34;
  }

  for (j = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_23875F3A0())
  {
    v75 = 0;
    while (1)
    {
      if ((v73 & 0xC000000000000001) != 0)
      {
        v76 = MEMORY[0x23EE63F70](v75, v73);
      }

      else
      {
        if (v75 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v76 = *(v73 + 8 * v75 + 32);
      }

      v77 = v76;
      v78 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      v79 = [v76 customProductPageIdentifier];
      if (v79)
      {
        v80 = v79;

        v81 = MEMORY[0x277D38528];
        goto LABEL_36;
      }

      ++v75;
      if (v78 == j)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  v81 = MEMORY[0x277D38520];
LABEL_36:
  v398 = v81;
  v82 = v417;
  v83 = sub_23875A540();
  if (v83 >> 62)
  {
    goto LABEL_53;
  }

  for (k = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_23875F3A0())
  {

    v85 = [v82 payment];
    v86 = MEMORY[0x277D38520];
    v397 = k;
    if (!v85)
    {
      break;
    }

    v87 = v85;
    v88 = sub_238758FC0();

    if (v88 >> 62)
    {
      v82 = sub_23875F3A0();
      if (!v82)
      {
LABEL_55:

        v86 = MEMORY[0x277D38520];
        break;
      }
    }

    else
    {
      v82 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v82)
      {
        goto LABEL_55;
      }
    }

    v89 = 0;
    while (1)
    {
      if ((v88 & 0xC000000000000001) != 0)
      {
        v90 = MEMORY[0x23EE63F70](v89, v88);
      }

      else
      {
        if (v89 >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v90 = *(v88 + 8 * v89 + 32);
      }

      v91 = v90;
      v92 = (v89 + 1);
      if (__OFADD__(v89, 1))
      {
        break;
      }

      v93 = [v90 receiptName];
      if (v93)
      {
        v94 = v93;

        v86 = MEMORY[0x277D38528];
        goto LABEL_56;
      }

      ++v89;
      if (v92 == v82)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_56:
  v95 = v400;
  v96 = sub_238757D40();
  v97 = *(v409 + 16);
  MEMORY[0x28223BE20](v96);
  v369[-2] = v95;
  v98 = *(*v97 + *MEMORY[0x277D841D0] + 16);
  v99 = (*(*v97 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v97 + v99));
  sub_23862F63C(&v419);
  os_unfair_lock_unlock((v97 + v99));
  v395.i64[0] = v419;
  v394.i64[0] = v420;
  (*(v401 + 1))(v95, v402);
  v100 = v406;
  sub_23875A500();
  v101 = sub_23875A4E0();
  LODWORD(v402) = (*(*(v101 - 8) + 48))(v100, 1, v101);
  sub_238439884(v100, &qword_27DF0D648, &unk_238779500);
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD60, &qword_2387744A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387791A0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = xmmword_2387791B0;
  *(inited + 56) = sub_23875EA50();
  v103 = v403;
  sub_23875A570();
  v105 = v404;
  v104 = v405;
  v106 = (*(v404 + 88))(v103, v405);
  v107 = *MEMORY[0x277CC7480];
  *&v396 = v86;
  v409 = inited + 32;
  if (v106 == v107)
  {
    v108 = xmmword_2387791C0;
    v109 = v415;
  }

  else
  {
    v109 = v415;
    if (v106 == *MEMORY[0x277CC7490])
    {
      v108 = xmmword_2387791D0;
    }

    else if (v106 == *MEMORY[0x277CC7488])
    {
      v108 = xmmword_2387791E0;
    }

    else
    {
      (*(v105 + 8))(v103, v104);
      v108 = 0uLL;
    }
  }

  v415 = 0;
  v110 = MEMORY[0x277D38528];
  *(inited + 64) = v108;
  *(inited + 80) = sub_23875EA50();
  v111 = [v417 statusDescription];
  if (v111)
  {
    v112 = v111;
    v113 = v110;
    v114 = *v110;
    v115 = sub_23875EA80();
    v117 = v116;
  }

  else
  {
    v113 = v110;
    v118 = *MEMORY[0x277D38520];
    v115 = sub_23875EA80();
    v117 = v119;
  }

  *(inited + 88) = v115;
  *(inited + 96) = v117;
  *(inited + 104) = sub_23875EA50();
  v120 = v417;
  v121 = [v417 orderNumber];
  if (v121)
  {
    v122 = v121;
    v123 = sub_23875EA80();
    v125 = v124;
  }

  else
  {
    v123 = 0;
    v125 = 0;
  }

  v126 = sub_2385C0B98(v123, v125);
  v128 = v127;

  *(inited + 112) = v126;
  *(inited + 120) = v128;
  *(inited + 128) = sub_23875EA50();
  v129 = [v120 merchant];
  v130 = [v129 logoName];

  if (v130)
  {
    v131 = sub_23875EA80();
    v133 = v132;
  }

  else
  {
    v131 = 0;
    v133 = 0;
  }

  v134 = sub_2385C0B98(v131, v133);
  v136 = v135;

  *(inited + 136) = v134;
  *(inited + 144) = v136;
  *(inited + 152) = sub_23875EA50();
  v137 = [v120 payment];
  v138 = MEMORY[0x277D38520];
  if (v137)
  {
    v139 = v137;
    sub_238758FD0();

    v140 = 0;
    v141 = MEMORY[0x277D38528];
  }

  else
  {
    v140 = 1;
    v141 = MEMORY[0x277D38520];
  }

  (*(v412 + 56))(v109, v140, 1, v413);
  v142 = *v141;
  v143 = sub_23875EA80();
  v145 = v144;
  sub_238439884(v109, &unk_27DF0B080, &unk_2387662A0);
  *(inited + 160) = v143;
  *(inited + 168) = v145;
  *(inited + 176) = sub_23875EA50();
  v146 = v417;
  sub_23843B030(v414);
  *(inited + 184) = v147;
  *(inited + 192) = v148;
  *(inited + 200) = sub_23875EA50();
  v149 = [v146 merchant];
  v150 = sub_238759210();

  if (v150 <= 1)
  {
    v151 = v138;
  }

  else
  {
    v151 = v113;
  }

  v152 = *v151;
  *(inited + 208) = sub_23875EA80();
  *(inited + 216) = v153;
  *(inited + 224) = sub_23875EA50();
  v154 = sub_23875A540();
  if (v154 >> 62)
  {
    v161 = v154;
    v162 = sub_23875F3A0();
    v154 = v161;
    if (v162)
    {
      goto LABEL_80;
    }

LABEL_85:

    v163 = *v138;
    v158 = sub_23875EA80();
    v160 = v164;
    goto LABEL_86;
  }

  if (!*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_85;
  }

LABEL_80:
  if ((v154 & 0xC000000000000001) != 0)
  {
    v155 = MEMORY[0x23EE63F70](0);
  }

  else
  {
    if (!*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_190;
    }

    v155 = *(v154 + 32);
  }

  v156 = v155;

  v157 = *v113;
  v158 = sub_23875EA80();
  v160 = v159;

LABEL_86:
  *(inited + 232) = v158;
  *(inited + 240) = v160;
  *(inited + 248) = sub_23875EA50();
  v165 = v417;
  *(inited + 256) = sub_23843AD74();
  *(inited + 264) = v166;
  *(inited + 272) = sub_23875EA50();
  v167 = [v165 payment];
  if (v167)
  {
    v168 = v167;
    v169 = v393;
    sub_238758FD0();

    v170 = sub_238758040();
    v172 = v171;
    (*(v412 + 8))(v169, v413);
  }

  else
  {
    v172 = 0xE700000000000000;
    v170 = 0x6E776F6E6B6E75;
  }

  *(inited + 280) = v170;
  *(inited + 288) = v172;
  *(inited + 296) = sub_23875EA50();
  v173 = *(sub_23875A4F0() + 16);

  if (v173 <= 1)
  {
    v174 = v138;
  }

  else
  {
    v174 = v113;
  }

  v175 = *v174;
  *(inited + 304) = sub_23875EA80();
  *(inited + 312) = v176;
  *(inited + 320) = sub_23875EA50();
  *(inited + 328) = sub_23843B254();
  *(inited + 336) = v177;
  *(inited + 344) = sub_23875EA50();
  if (v399 <= 3u)
  {
    if (v399 > 1u)
    {
      if (v399 == 2)
      {
        v178 = 0xE600000000000000;
        v179 = 0x746567646977;
      }

      else
      {
        v178 = 0xE400000000000000;
        v179 = 1818845549;
      }
    }

    else if (v399)
    {
      v178 = 0x800000023878E100;
      v179 = 0xD000000000000014;
    }

    else
    {
      v178 = 0xE600000000000000;
      v179 = 0x697261666173;
    }

    v180 = v416;
    v181 = v397;
    goto LABEL_107;
  }

  if (v399 <= 5u)
  {
    v180 = v416;
    v181 = v397;
    if (v399 == 4)
    {
      v178 = 0xE800000000000000;
      v179 = 0x6567617373654D69;
    }

    else
    {
      v178 = 0xE400000000000000;
      v179 = 1936744813;
    }

    goto LABEL_107;
  }

  v180 = v416;
  v181 = v397;
  if (v399 == 6)
  {
    v178 = 0xE500000000000000;
    v179 = 0x7070416E69;
LABEL_107:
    *(inited + 352) = v179;
    *(inited + 360) = v178;
    goto LABEL_108;
  }

  *(inited + 352) = 0;
  *(inited + 360) = 0;
LABEL_108:
  *(inited + 368) = sub_23875EA50();
  v182 = *v180;
  *(inited + 376) = sub_23875EA80();
  *(inited + 384) = v183;
  *(inited + 392) = sub_23875EA50();
  v184 = v113;
  if (v181 < 2)
  {
    v419 = v181;
    v186 = sub_23875F600();
  }

  else
  {
    v418[0] = 1;
    v419 = sub_23875F600();
    v420 = v185;
    MEMORY[0x23EE63650](43, 0xE100000000000000);
    v186 = v419;
    v187 = v420;
  }

  *(inited + 400) = v186;
  *(inited + 408) = v187;
  *(inited + 416) = sub_23875EA50();
  v188 = v417;
  v189 = [v417 createdDate];
  v190 = v387;
  sub_23875BBE0();

  v191 = sub_23844C544(v190);
  v193 = v192;
  v195 = v411 + 8;
  v194 = *(v411 + 8);
  v196 = v407;
  v194(v190, v407);
  *(inited + 424) = v191;
  *(inited + 432) = v193;
  *(inited + 440) = sub_23875EA50();
  v197 = [v188 updatedDate];
  sub_23875BBE0();

  v198 = sub_23844C544(v190);
  v200 = v199;
  v384 = v194;
  v385 = v195;
  v194(v190, v196);
  *(inited + 448) = v198;
  *(inited + 456) = v200;
  *(inited + 464) = sub_23875EA50();
  v201 = *v398;
  *(inited + 472) = sub_23875EA80();
  *(inited + 480) = v202;
  *(inited + 488) = sub_23875EA50();
  v203 = *v396;
  *(inited + 496) = sub_23875EA80();
  *(inited + 504) = v204;
  *(inited + 512) = sub_23875EA50();
  *(inited + 520) = v395.i64[0];
  *(inited + 528) = v394.i64[0];
  *(inited + 536) = sub_23875EA50();
  v205 = v184;
  v206 = MEMORY[0x277D38520];
  if (v402 == 1)
  {
    v207 = MEMORY[0x277D38520];
  }

  else
  {
    v207 = v205;
  }

  v208 = *v207;
  *(inited + 544) = sub_23875EA80();
  *(inited + 552) = v209;
  *(inited + 560) = sub_23875EA50();
  v210 = [v188 merchant];
  v211 = [v210 displayName];

  v212 = sub_2387586A0();
  v214 = v213;

  *(inited + 568) = v212;
  *(inited + 576) = v214;
  *(inited + 584) = sub_23875EA50();
  *(inited + 592) = xmmword_2387791F0;
  v215 = sub_23854BB54(inited);
  swift_setDeallocating();
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0FD68, &qword_2387744A8);
  swift_arrayDestroy();
  v216 = sub_23862110C(v215);

  v217 = sub_23875EA50();
  v218 = sub_238757DE0();
  if (v218 >> 62)
  {
    v225 = v218;
    v226 = sub_23875F3A0();
    v218 = v225;
    if (v226)
    {
      goto LABEL_116;
    }

LABEL_122:

    v227 = *v206;
    v222 = sub_23875EA80();
    v224 = v228;
LABEL_123:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v419 = v216;
    sub_2386CCCEC(v222, v224, v217, isUniquelyReferenced_nonNull_native);

    v230 = v419;
    v231 = *(sub_23875A4F0() + 16);

    if (v231)
    {
      v232 = sub_23875A4F0();
      v233 = v232;
      v234 = *(v232 + 16);
      if (v234)
      {
        v402 = "poweredByPlatformProvided";
        v403 = "orderEmailAvailable";
        v400 = "trackingNumberSpecified";
        v401 = "fulfillmentStatus";
        v391 = "deliveryETASpecified";
        v392 = "productIconCount";
        v398 = "pickupLocationSpecified";
        v399 = "trackingUrlSpecified";
        v389 = "orderShippingAddressSpecified";
        v390 = "pickupBarcodeSpecified";
        v388 = "howToPickupSpecified";
        v397 = "pickupDurationSpecified";
        v416 = *v205;
        v235 = (v410 + 56);
        v410 = v411 + 56;
        v409 = v411 + 48;
        v383 = (v411 + 32);
        v369[1] = "productSubtitleSpecified";
        v375 = "carrierSpecified";
        v376 = v235;
        v374 = "daysSinceDelivered";
        v236 = MEMORY[0x277D84F90];
        v237 = 32;
        v396 = xmmword_238779200;
        v395 = xmmword_238779210;
        v394 = xmmword_238779220;
        v393 = v230;
        v404 = v232;
        while (1)
        {
          v413 = v236;
          v414 = v234;
          v412 = v237;
          v238 = *(v233 + v237);
          v239 = swift_allocObject();
          *(v239 + 16) = v396;
          v240 = (v238 & 0x7FFFFFFFFFFFFFFFLL);
          *(v239 + 32) = sub_23875EA50();
          v411 = v239 + 32;
          *(v239 + 40) = sub_23843A644(v238);
          *(v239 + 48) = v241;
          v242 = sub_23875EA50();
          v243 = vdup_n_s32(v238 >= 0);
          *(v239 + 56) = v242;
          v244.i64[0] = v243.u32[0];
          v244.i64[1] = v243.u32[1];
          *(v239 + 64) = vbslq_s8(vcltzq_s64(vshlq_n_s64(v244, 0x3FuLL)), v394, v395);
          *(v239 + 80) = sub_23875EA50();
          *(v239 + 88) = sub_23843A430();
          *(v239 + 96) = v245;
          *(v239 + 104) = sub_23875EA50();
          v417 = v240;
          if (v238 < 0)
          {
            *(v239 + 112) = 0;
            *(v239 + 120) = 0;
            v254 = 0;
            v255 = 0;
            *(v239 + 128) = sub_23875EA50();
          }

          else
          {
            v246 = v377;
            v247 = v240;
            v248 = v238;
            v249 = [v248 trackingNumber];
            if (v249)
            {
              v250 = v249;
              v251 = sub_23875EA80();
              v253 = v252;
            }

            else
            {

              v251 = 0;
              v253 = 0;
            }

            v256 = sub_23875EA80();
            v258 = v257;

            sub_23862F658(v251, v253);
            *(v239 + 112) = v256;
            *(v239 + 120) = v258;
            *(v239 + 128) = sub_23875EA50();
            v259 = v247;
            v260 = [v248 trackingURL];
            if (v260)
            {
              v261 = v246;
              v262 = v260;
              sub_23875B8B0();

              v263 = 0;
            }

            else
            {
              v263 = 1;
              v261 = v246;
            }

            v240 = v417;
            (*v376)(v261, v263, 1, v408);
            sub_238439884(v261, &qword_27DF0D040, &qword_2387676A0);

            v254 = sub_23875EA80();
            v255 = v264;
          }

          *(v239 + 136) = v254;
          *(v239 + 144) = v255;
          *(v239 + 152) = sub_23875EA50();
          if (v238 < 0)
          {
            *(v239 + 160) = 0;
            *(v239 + 168) = 0;
            v276 = 0;
            v277 = 0;
            *(v239 + 176) = sub_23875EA50();
          }

          else
          {
            v265 = v238;
            v266 = v386;
            sub_23875AA20();
            sub_238439884(v266, &qword_27DF0D5D0, &unk_238770FE0);
            v267 = sub_23875EA80();
            v269 = v268;

            *(v239 + 160) = v267;
            *(v239 + 168) = v269;
            *(v239 + 176) = sub_23875EA50();
            v270 = v240;
            v271 = [v265 recipientFamilyName];
            if (v271)
            {
              v272 = v271;
              v273 = sub_23875EA80();
              v275 = v274;
            }

            else
            {

              v273 = 0;
              v275 = 0;
            }

            v276 = sub_23875EA80();
            v277 = v278;

            sub_23862F658(v273, v275);
          }

          *(v239 + 184) = v276;
          *(v239 + 192) = v277;
          *(v239 + 200) = sub_23875EA50();
          if (v238 < 0)
          {
            v281 = v417;
            v282 = [v281 barcode];
            v283 = sub_23875EA80();
            v285 = v284;

            *(v239 + 208) = v283;
            *(v239 + 216) = v285;
            *(v239 + 224) = sub_23875EA50();
            v286 = v281;
            v287 = [v286 address];
            v279 = sub_23875EA80();
            v280 = v288;
          }

          else
          {
            *(v239 + 208) = 0;
            *(v239 + 216) = 0;
            v279 = 0;
            v280 = 0;
            *(v239 + 224) = sub_23875EA50();
          }

          v289 = v407;
          *(v239 + 232) = v279;
          *(v239 + 240) = v280;
          *(v239 + 248) = sub_23875EA50();
          if (v238 < 0)
          {
            v296 = v417;
            v297 = [v296 notes];
            v298 = sub_23875EA80();
            v300 = v299;

            *(v239 + 256) = v298;
            *(v239 + 264) = v300;
            v301 = sub_23875EA50();
            *(v239 + 280) = 0;
            *(v239 + 288) = 0;
            *(v239 + 272) = v301;
            *(v239 + 296) = sub_23875EA50();
            v302 = v296;
            v303 = v373;
            v382 = v302;
            sub_23875A7B0();
            v304 = v303;
            v305 = sub_23875AEB0();
            v306 = *(v305 - 8);
            if ((*(v306 + 48))(v304, 1, v305) == 1)
            {
              v307 = sub_23875B2B0();
              v308 = v370;
              (*(*(v307 - 8) + 56))(v370, 1, 1, v307);
            }

            else
            {
              v314 = v386;
              sub_23843981C(v304, v386, &qword_27DF0D5D0, &unk_238770FE0);
              v308 = v370;
              sub_23875AE70();
              v304 = v373;
              v315 = v314;
              v289 = v407;
              (*(v306 + 8))(v315, v305);
            }

            sub_238439884(v304, &qword_27DF0D5D0, &unk_238770FE0);
            sub_238439884(v308, &qword_27DF11A28, &qword_2387794F8);
            v312 = sub_23875EA80();
            v313 = v316;
          }

          else
          {
            *(v239 + 256) = 0;
            *(v239 + 264) = 0;
            *(v239 + 272) = sub_23875EA50();
            v290 = v417;
            v291 = [v238 carrier];
            if (v291)
            {
              v292 = v291;
              v293 = sub_23875EA80();
              v295 = v294;
            }

            else
            {

              v293 = 0;
              v295 = 0;
            }

            v309 = sub_23875EA80();
            v311 = v310;

            sub_23862F658(v293, v295);
            *(v239 + 280) = v309;
            *(v239 + 288) = v311;
            v312 = 0;
            v313 = 0;
            *(v239 + 296) = sub_23875EA50();
          }

          *(v239 + 304) = v312;
          *(v239 + 312) = v313;
          *(v239 + 320) = sub_23875EA50();
          *(v239 + 328) = sub_23843A7EC(v238);
          *(v239 + 336) = v317;
          *(v239 + 344) = sub_23875EA50();
          *(v239 + 352) = sub_23843A7F8(v238);
          *(v239 + 360) = v318;
          *(v239 + 368) = sub_23875EA50();
          *(v239 + 376) = sub_23843A894(v238);
          *(v239 + 384) = v319;
          v320 = sub_23854BB54(v239);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v321 = sub_23862110C(v320);

          v419 = v321;
          if (v238 < 0)
          {
            v327 = [v417 pickedUpDate];
            v328 = v371;
            if (v327)
            {
              v329 = v327;
              sub_23875BBE0();

              v330 = 0;
            }

            else
            {
              v330 = 1;
            }

            (*v410)(v328, v330, 1, v289);
            v356 = v372;
            sub_23843981C(v328, v372, &qword_27DF12E00, &unk_238763FC0);
            if ((*v409)(v356, 1, v289) == 1)
            {
              sub_238439884(v328, &qword_27DF12E00, &unk_238763FC0);
              v357 = 0;
              v358 = 0;
            }

            else
            {
              v359 = v387;
              (*v383)(v387, v356, v289);
              v357 = sub_23844C544(v359);
              v358 = v360;
              v384(v359, v289);
              sub_238439884(v328, &qword_27DF12E00, &unk_238763FC0);
            }

            v349 = v393;
            v350 = v417;
            v355 = sub_23875EA50();
            v353 = v357;
            v354 = v358;
          }

          else
          {
            v322 = v238;
            v323 = [v322 deliveryDate];
            v324 = v378;
            if (v323)
            {
              v325 = v323;
              sub_23875BBE0();

              v326 = 0;
            }

            else
            {
              v326 = 1;
            }

            v331 = *v410;
            (*v410)(v324, v326, 1, v289);
            v332 = v379;
            sub_23843981C(v324, v379, &qword_27DF12E00, &unk_238763FC0);
            v333 = *v409;
            if ((*v409)(v332, 1, v289) == 1)
            {
              sub_238439884(v324, &qword_27DF12E00, &unk_238763FC0);
              v334 = 0;
              v335 = 0;
            }

            else
            {
              v336 = v387;
              (*v383)(v387, v332, v289);
              v334 = sub_23844C544(v336);
              v335 = v337;
              v384(v336, v289);
              sub_238439884(v324, &qword_27DF12E00, &unk_238763FC0);
            }

            v338 = sub_23875EA50();
            sub_2386C41A8(v334, v335, v338);
            v339 = [v322 shippedDate];
            if (v339)
            {
              v340 = v380;
              v341 = v339;
              sub_23875BBE0();

              v342 = 0;
            }

            else
            {
              v342 = 1;
              v340 = v380;
            }

            v331(v340, v342, 1, v289);
            v343 = v381;
            sub_23843981C(v340, v381, &qword_27DF12E00, &unk_238763FC0);
            if (v333(v343, 1, v289) == 1)
            {
              sub_238439884(v340, &qword_27DF12E00, &unk_238763FC0);
              v344 = 0;
              v345 = 0;
            }

            else
            {
              v346 = v387;
              (*v383)(v387, v343, v289);
              v344 = sub_23844C544(v346);
              v347 = v340;
              v345 = v348;
              v384(v346, v289);
              sub_238439884(v347, &qword_27DF12E00, &unk_238763FC0);
            }

            v349 = v393;
            v350 = v417;
            v351 = sub_23875EA50();
            sub_2386C41A8(v344, v345, v351);
            v352 = sub_23875EA50();
            v353 = (sub_23875AA00() & 1) != 0 ? 0x79726576696C6564 : 0x676E697070696873;
            v354 = 0xE800000000000000;
            v355 = v352;
          }

          sub_2386C41A8(v353, v354, v355);
          v361 = v415;

          v362 = v419;

          v363 = swift_isUniquelyReferenced_nonNull_native();
          v418[0] = v349;
          sub_2385C33E4(v362, sub_2386E31DC, 0, v363, v418);

          v364 = v418[0];
          v236 = v413;
          if (v361)
          {
            break;
          }

          v365 = swift_isUniquelyReferenced_nonNull_native();
          v415 = 0;
          if ((v365 & 1) == 0)
          {
            v236 = sub_2384989EC(0, v236[2] + 1, 1, v236);
          }

          v367 = v236[2];
          v366 = v236[3];
          if (v367 >= v366 >> 1)
          {
            v236 = sub_2384989EC((v366 > 1), v367 + 1, 1, v236);
          }

          v236[2] = v367 + 1;
          v236[v367 + 4] = v364;
          v237 = v412 + 8;
          v234 = v414 - 1;
          v233 = v404;
          if (v414 == 1)
          {

            return v236;
          }
        }

        goto LABEL_191;
      }

      return MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF10, &qword_2387744B0);
      v236 = swift_allocObject();
      *(v236 + 1) = xmmword_2387632F0;
      v236[4] = v230;
    }

    return v236;
  }

  if (!*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_122;
  }

LABEL_116:
  if ((v218 & 0xC000000000000001) != 0)
  {
    v219 = MEMORY[0x23EE63F70](0);
    goto LABEL_119;
  }

  if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v219 = *(v218 + 32);
LABEL_119:
    v220 = v219;

    v221 = *v205;
    v222 = sub_23875EA80();
    v224 = v223;

    goto LABEL_123;
  }

LABEL_190:
  __break(1u);
LABEL_191:

  __break(1u);
  return result;
}

uint64_t sub_238626118(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(*a1 + 104);
  swift_beginAccess();
  sub_23862F8F0(a2, a1 + v8, a3, a4);
  return swift_endAccess();
}

char *sub_2386261A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for OrderArchiveMonthContentItem(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862F6C8;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_116;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_2386266D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD8, &qword_23876DE60);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862F894;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_166;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238626C04(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862EE94;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_38;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_23862712C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  active = type metadata accessor for OrderListContent.ActiveContentItem(0);
  v11 = *(*(active - 8) + 56);
  v11(&v4[v9], 1, 1, active);
  v11(&v4[*(*v4 + 112)], 1, 1, active);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862F838;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_156;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238627654(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862F7DC;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_146;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238627B7C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862F66C;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_106;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_2386280B0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for SavedOrderDetails.ContentItem(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862EFF8;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_76;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

uint64_t sub_238628600(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_238628648(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2386286A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedOrderDetails.ViewModel(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, j____swift_get_extra_inhabitant_indexTm_0);
}

uint64_t sub_238628720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SavedOrderDetails.ViewModel(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, j____swift_store_extra_inhabitant_indexTm_0);
}

uint64_t sub_2386287A8(uint64_t a1)
{
  result = type metadata accessor for SavedOrderDetails.ViewModel(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for OrderDetails.ViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for OrderShareLink.ViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for OrderActionsMenuContext(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for OrderDetails.ViewModel(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for OrderShareLink.ViewModel(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = type metadata accessor for OrderActionsMenuContext(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_238628B5C()
{
  type metadata accessor for OrderDetails.ViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for OrderShareLink.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_2385C3738();
      if (v2 <= 0x3F)
      {
        type metadata accessor for OrderActionsMenuContext(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

char *sub_238628C18(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = sub_238758BB0();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862EF40;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_56;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238629140(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = sub_238757B60();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862EF9C;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_66;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238629668(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = sub_238758680();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862A654;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862EE48;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_12;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_238629B90(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  active = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
  v11 = *(*(active - 8) + 56);
  v11(&v4[v9], 1, 1, active);
  v11(&v4[*(*v4 + 112)], 1, 1, active);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862F780;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_136;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

char *sub_23862A0B8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 104);
  v10 = type metadata accessor for OrderSearchResults.PastContentItem(0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[*(*v4 + 112)], 1, 1, v10);
  v12 = *(*v4 + 120);
  *&v4[v12] = 0;
  v13 = &v4[*(*v4 + 128)];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = &v4[*(*v4 + 136)];
  sub_23875BEC0();
  v15 = *&v4[v12];
  *&v4[v12] = a1;
  v41 = a1;

  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v16 = objc_opt_self();

  v42 = [v16 defaultCenter];
  v17 = *MEMORY[0x277CBE1A0];
  v47[3] = sub_238449184(0, &qword_2814F0888, 0x277CBE440);
  v47[0] = a2;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_opt_self();
  v40 = a2;

  v20 = [v19 mainQueue];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23862F724;
  *(v21 + 24) = v18;
  sub_23843981C(v47, &aBlock, &qword_27DF0A4A8, &qword_238767840);
  v22 = *(&v44 + 1);
  if (*(&v44 + 1))
  {
    v23 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v44 + 1));
    v39 = &v39;
    v24 = v17;
    v25 = *(v22 - 8);
    v26 = *(v25 + 64);
    v27 = MEMORY[0x28223BE20](v23);
    v29 = &v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v29, v27);

    v30 = sub_23875F620();
    (*(v25 + 8))(v29, v22);
    v17 = v24;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
  }

  else
  {

    v30 = 0;
  }

  v45 = sub_23862F9B8;
  v46 = v21;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v44 = sub_23862ED54;
  *(&v44 + 1) = &block_descriptor_126;
  v31 = _Block_copy(&aBlock);

  v32 = [v42 addObserverForName:v17 object:v30 queue:v20 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();

  sub_238439884(v47, &qword_27DF0A4A8, &qword_238767840);
  v34 = &v4[*(*v4 + 128)];
  swift_beginAccess();
  if (*v34)
  {
    v35 = *(v34 + 1);
    aBlock = *v34;
    v44 = v35;
    v45 = *(v34 + 4);
    v36 = aBlock;
    __swift_project_boxed_opaque_existential_1(&aBlock + 1, v45);
    v37 = v36;
    [v37 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock + 1);
  }

  *v34 = v42;
  *(v34 + 1) = v32;
  *(v34 + 1) = aBlock;
  *(v34 + 4) = ObjectType;
  swift_endAccess();
  return v4;
}

uint64_t sub_23862A5E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

void sub_23862A684()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A50, &unk_238779520);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = type metadata accessor for OrderArchiveMonthContentItem(0);
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238759C20();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11A58, &qword_27DF0CE38, &qword_23876C678);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF11A50, &unk_238779520);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF11A50, &unk_238779520);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862AC68()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AB0, &qword_238779568);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DAD8, &qword_23876DE60);
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_23875A4C0();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11AB8, &qword_27DF0DA50, &qword_238779570);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF11AB0, &qword_238779568);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF11AB0, &qword_238779568);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862B258()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11928, &qword_2387793C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = type metadata accessor for FetchedExtractedOrderDetails.ViewModel(0);
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238759480();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11930, &qword_27DF0FD10, &qword_2387743E8);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF11928, &qword_2387793C0);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF11928, &qword_2387793C0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862B83C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AA0, &qword_238779560);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          active = type metadata accessor for OrderListContent.ActiveContentItem(0);
                          v34 = *(active - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, active);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238759C20();
                          *(&v39 - 1) = active;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11AA8, &qword_27DF10D70, &qword_238776C48);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF11AA0, &qword_238779560);
                          v40(v5, 1, 1, active);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF11AA0, &qword_238779560);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862BE20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A90, &unk_238779550);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238759C20();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11A98, &qword_27DF10D48, &unk_238776BF0);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF11A90, &unk_238779550);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF11A90, &unk_238779550);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862C404()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A38, &unk_238779510);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A30, &qword_23877FEA0);
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238757DF0();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11A40, &qword_27DF11A48, &qword_23877A090);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF11A38, &unk_238779510);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF11A38, &unk_238779510);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862C9F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11958, &qword_2387793D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = type metadata accessor for SavedOrderDetails.ContentItem(0);
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238757DF0();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11960, &qword_27DF118D8, &qword_238779258);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF11958, &qword_2387793D0);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF11958, &qword_2387793D0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862CFD8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D358, &unk_23876CF80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = sub_238758BB0();
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_2387582B0();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11938, &qword_27DF11940, &qword_2387793C8);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF0D358, &unk_23876CF80);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF0D358, &unk_23876CF80);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862D5BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A0C0, &qword_238771EF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = sub_238757B60();
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238758CF0();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11948, &qword_27DF11950, &unk_238779D50);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF0A0C0, &qword_238771EF0);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF0A0C0, &qword_238771EF0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862DBA0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v39 - v4;
  v6 = *(*v0 + 120);
  v7 = *(v0 + v6);
  if (v7)
  {
    v8 = v7;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v42 = sub_23875EA80();
      v43 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v44);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v46);
          sub_23854CE50(v44);

          if (*(&v47 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v44[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v1 + v6);
                *(v1 + v6) = 0;

                v19 = v1 + *(*v1 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v44[0] = *v19;
                  v44[1] = v20;
                  v45 = *(v19 + 32);
                  v21 = *&v44[0];
                  __swift_project_boxed_opaque_existential_1(v44 + 1, v45);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v44 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v42 = sub_23875EA80();
                v43 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v44);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v46);
                    sub_23854CE50(v44);

                    if (*(&v47 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v44[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = *(v1 + 24);
                          (*(v1 + 16))(v8);
                          v33 = sub_238758680();
                          v34 = *(v33 - 8);
                          v40 = *(v34 + 56);
                          v41 = v34 + 56;
                          v35 = v40(v5, 0, 1, v33);
                          MEMORY[0x28223BE20](v35);
                          *(&v39 - 2) = sub_238759780();
                          *(&v39 - 1) = v33;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v39 - 2) = v1;
                          *(&v39 - 1) = v5;
                          v37 = *(*v1 + 136);
                          *&v44[0] = v1;
                          sub_23843A3E8(&qword_27DF11918, &qword_27DF11920, &qword_2387793B8);
                          sub_23875BE80();

                          sub_238439884(v5, &qword_27DF09520, &unk_2387637E0);
                          v40(v5, 1, 1, v33);
                          v38 = *(*v1 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v5, v1 + v38, &qword_27DF09520, &unk_2387637E0);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v44);
              }

              v46 = 0u;
              v47 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v46, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v44);
    }

    v46 = 0u;
    v47 = 0u;
    goto LABEL_13;
  }
}

void sub_23862E184()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A78, &qword_238779540);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - v3;
  v5 = *(*v0 + 120);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v0;
    v8 = v6;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v43 = sub_23875EA80();
      v44 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v45);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v47);
          sub_23854CE50(v45);

          if (*(&v48 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v45[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v7 + v5);
                *(v7 + v5) = 0;

                v19 = v7 + *(*v7 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v45[0] = *v19;
                  v45[1] = v20;
                  v46 = *(v19 + 32);
                  v21 = *&v45[0];
                  __swift_project_boxed_opaque_existential_1(v45 + 1, v46);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v45 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v43 = sub_23875EA80();
                v44 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v45);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v47);
                    sub_23854CE50(v45);

                    if (*(&v48 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v45[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = v7;
                          v33 = *(v7 + 24);
                          (*(v7 + 16))(v8);
                          active = type metadata accessor for OrderSearchResults.ActiveContentItem(0);
                          v35 = *(active - 8);
                          v41 = *(v35 + 56);
                          v42 = v35 + 56;
                          v36 = v41(v4, 0, 1, active);
                          MEMORY[0x28223BE20](v36);
                          *(&v40 - 2) = sub_238759C20();
                          *(&v40 - 1) = active;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v40 - 2) = v32;
                          *(&v40 - 1) = v4;
                          v38 = *(*v32 + 136);
                          *&v45[0] = v32;
                          sub_23843A3E8(&qword_27DF11A80, &qword_27DF11A88, &qword_238779548);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11A78, &qword_238779540);
                          v41(v4, 1, 1, active);
                          v39 = *(*v32 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v4, v32 + v39, &qword_27DF11A78, &qword_238779540);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v47, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v45);
              }

              v47 = 0u;
              v48 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v47, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v45);
    }

    v47 = 0u;
    v48 = 0u;
    goto LABEL_13;
  }
}

void sub_23862E76C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11A60, &qword_238779530);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v40 - v3;
  v5 = *(*v0 + 120);
  v6 = *(v0 + v5);
  if (v6)
  {
    v7 = v0;
    v8 = v6;
    v9 = sub_23875B520();
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x277CBE148];
      v43 = sub_23875EA80();
      v44 = v12;
      sub_23875F410();
      if (*(v10 + 16))
      {
        v13 = sub_238547A14(v45);
        if (v14)
        {
          sub_238453DB4(*(v10 + 56) + 32 * v13, &v47);
          sub_23854CE50(v45);

          if (*(&v48 + 1))
          {
            sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
            if (swift_dynamicCast())
            {
              v15 = *&v45[0];
              v16 = [v8 objectID];
              v17 = [v15 containsObject_];

              if (v17)
              {

                v18 = *(v7 + v5);
                *(v7 + v5) = 0;

                v19 = v7 + *(*v7 + 128);
                swift_beginAccess();
                if (*v19)
                {
                  v20 = *(v19 + 16);
                  v45[0] = *v19;
                  v45[1] = v20;
                  v46 = *(v19 + 32);
                  v21 = *&v45[0];
                  __swift_project_boxed_opaque_existential_1(v45 + 1, v46);
                  v22 = v21;
                  [v22 removeObserver_];

                  swift_unknownObjectRelease();
                  __swift_destroy_boxed_opaque_existential_1(v45 + 1);
                }

                *(v19 + 32) = 0;
                *v19 = 0u;
                *(v19 + 16) = 0u;
                goto LABEL_22;
              }

LABEL_15:
              v23 = sub_23875B520();
              if (v23)
              {
                v24 = v23;
                v25 = *MEMORY[0x277CBE308];
                v43 = sub_23875EA80();
                v44 = v26;
                sub_23875F410();
                if (*(v24 + 16))
                {
                  v27 = sub_238547A14(v45);
                  if (v28)
                  {
                    sub_238453DB4(*(v24 + 56) + 32 * v27, &v47);
                    sub_23854CE50(v45);

                    if (*(&v48 + 1))
                    {
                      sub_238449184(0, &qword_27DF11910, 0x277CBEB98);
                      if (swift_dynamicCast())
                      {
                        v29 = *&v45[0];
                        v30 = [v8 objectID];
                        v31 = [v29 containsObject_];

                        if (v31)
                        {
                          v32 = v7;
                          v33 = *(v7 + 24);
                          (*(v7 + 16))(v8);
                          v34 = type metadata accessor for OrderSearchResults.PastContentItem(0);
                          v35 = *(v34 - 8);
                          v41 = *(v35 + 56);
                          v42 = v35 + 56;
                          v36 = v41(v4, 0, 1, v34);
                          MEMORY[0x28223BE20](v36);
                          *(&v40 - 2) = sub_238759C20();
                          *(&v40 - 1) = v34;
                          KeyPath = swift_getKeyPath();
                          MEMORY[0x28223BE20](KeyPath);
                          *(&v40 - 2) = v32;
                          *(&v40 - 1) = v4;
                          v38 = *(*v32 + 136);
                          *&v45[0] = v32;
                          sub_23843A3E8(&qword_27DF11A68, &qword_27DF11A70, &qword_238779538);
                          sub_23875BE80();

                          sub_238439884(v4, &qword_27DF11A60, &qword_238779530);
                          v41(v4, 1, 1, v34);
                          v39 = *(*v32 + 112);
                          swift_beginAccess();
                          sub_2385309FC(v4, v32 + v39, &qword_27DF11A60, &qword_238779530);
LABEL_22:
                          swift_endAccess();
                          return;
                        }
                      }

                      goto LABEL_26;
                    }

LABEL_25:
                    sub_238439884(&v47, &qword_27DF0A4A8, &qword_238767840);
LABEL_26:

                    return;
                  }
                }

                sub_23854CE50(v45);
              }

              v47 = 0u;
              v48 = 0u;
              goto LABEL_25;
            }

LABEL_14:
            v15 = 0;
            goto LABEL_15;
          }

LABEL_13:
          sub_238439884(&v47, &qword_27DF0A4A8, &qword_238767840);
          goto LABEL_14;
        }
      }

      sub_23854CE50(v45);
    }

    v47 = 0u;
    v48 = 0u;
    goto LABEL_13;
  }
}

uint64_t sub_23862ED54(uint64_t a1)
{
  v2 = sub_23875B530();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_23875B510();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_23()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_23862F054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedOrderDetails.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23862F0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23862F128()
{
  v1 = *(type metadata accessor for SavedOrderDetails.ViewModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_238622CA4(v2);
}

uint64_t sub_23862F188()
{
  v2 = *(type metadata accessor for SavedOrderDetails.ViewModel(0) - 8);
  v3 = (*(v2 + 80) + 81) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2384494A4;

  return sub_238622F80(v4, v5, v0 + 32, v0 + v3);
}

uint64_t sub_23862F268(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23862F2C8()
{
  result = qword_27DF119A0;
  if (!qword_27DF119A0)
  {
    sub_238449184(255, &qword_27DF11998, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119A0);
  }

  return result;
}

uint64_t sub_23862F330(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23862F380()
{
  result = qword_27DF119E8;
  if (!qword_27DF119E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF119C0, &qword_238779458);
    sub_23862F438();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119E8);
  }

  return result;
}

unint64_t sub_23862F438()
{
  result = qword_27DF119F0;
  if (!qword_27DF119F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF119E0, &qword_2387794A0);
    sub_23862F4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119F0);
  }

  return result;
}

unint64_t sub_23862F4C4()
{
  result = qword_27DF119F8;
  if (!qword_27DF119F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF119D8, &qword_238779498);
    sub_23862F550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF119F8);
  }

  return result;
}

unint64_t sub_23862F550()
{
  result = qword_27DF11A00;
  if (!qword_27DF11A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11A08, &unk_2387794A8);
    sub_23862F330(&qword_27DF119D0, type metadata accessor for OrderShareLink);
    sub_23862F330(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11A00);
  }

  return result;
}

uint64_t sub_23862F658(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_23862F8F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_23862FA04()
{
  result = type metadata accessor for MerchantImage.ViewModel(319);
  if (v1 <= 0x3F)
  {
    result = sub_2387590B0();
    if (v2 <= 0x3F)
    {
      result = sub_23875B0A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23862FAA4@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AE0, &qword_238779610);
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v4 = &v30 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AE8, &qword_238779618);
  v5 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AF0, &qword_238779620);
  v7 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11AF8, &qword_238779628);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B00, &qword_238779630);
  v14 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v16 = &v30 - v15;
  v17 = sub_23875C880();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1 + *(type metadata accessor for OrderListRow(0) + 20);
  sub_2384D5138(v21);
  LOBYTE(v22) = sub_23875C860();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    *v13 = sub_23875D030();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B40, &qword_238779648);
    sub_23862FF54(&v13[*(v23 + 44)]);
    *&v13[*(v10 + 36)] = 256;
    sub_238631BB8();
    sub_23875DE00();
    sub_238439884(v13, &qword_27DF11AF8, &qword_238779628);
    sub_23843981C(v16, v9, &qword_27DF11B00, &qword_238779630);
    swift_storeEnumTagMultiPayload();
    sub_238631AFC();
    sub_238631C70();
    sub_23875D1B0();
    v24 = v16;
    v25 = &qword_27DF11B00;
    v26 = &qword_238779630;
  }

  else
  {
    *v4 = sub_23875CE60();
    *(v4 + 1) = 0x4028000000000000;
    v4[16] = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B08, &qword_238779638);
    sub_238631360(&v4[*(v27 + 44)]);
    sub_23843A3E8(&qword_27DF11B10, &qword_27DF11AE0, &qword_238779610);
    v28 = v31;
    sub_23875DE00();
    sub_238439884(v4, &qword_27DF11AE0, &qword_238779610);
    sub_23843981C(v28, v9, &qword_27DF11AE8, &qword_238779618);
    swift_storeEnumTagMultiPayload();
    sub_238631AFC();
    sub_238631C70();
    sub_23875D1B0();
    v24 = v28;
    v25 = &qword_27DF11AE8;
    v26 = &qword_238779618;
  }

  return sub_238439884(v24, v25, v26);
}

uint64_t sub_23862FF54@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B48, &qword_238779650);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v12);
  v45 = &v42 - v13;
  MEMORY[0x28223BE20](v14);
  v50 = &v42 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B50, &qword_238779658);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B58, &qword_238779660);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v51 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v28 = sub_23875CE50();
  *(v28 + 1) = 0;
  v28[16] = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B60, &qword_238779668) + 44)];
  sub_2386304F8(v22);
  v43 = v28;
  sub_23843981C(v22, v19, &qword_27DF11B50, &qword_238779658);
  sub_23843981C(v19, v29, &qword_27DF11B50, &qword_238779658);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B68, &qword_238779670) + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_238439884(v22, &qword_27DF11B50, &qword_238779658);
  sub_238439884(v19, &qword_27DF11B50, &qword_238779658);

  v31 = v50;
  sub_2386307CC();
  v32 = v46;
  sub_238630950(v46);
  v33 = v45;
  sub_238630FB8();
  v34 = v51;
  sub_23843981C(v28, v51, &qword_27DF11B58, &qword_238779660);
  sub_23843981C(v31, v11, &qword_27DF0E838, &unk_23877A3B0);
  v35 = v48;
  sub_23843981C(v32, v48, &qword_27DF11B48, &qword_238779650);
  v36 = v47;
  sub_23843981C(v33, v47, &qword_27DF0E838, &unk_23877A3B0);
  v37 = v34;
  v38 = v11;
  v42 = v11;
  v39 = v49;
  sub_23843981C(v37, v49, &qword_27DF11B58, &qword_238779660);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B70, &qword_238779678);
  sub_23843981C(v38, v39 + v40[12], &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v35, v39 + v40[16], &qword_27DF11B48, &qword_238779650);
  sub_23843981C(v36, v39 + v40[20], &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v33, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v32, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v50, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v43, &qword_27DF11B58, &qword_238779660);
  sub_238439884(v36, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v35, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v42, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v51, &qword_27DF11B58, &qword_238779660);
}

uint64_t sub_2386304F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v21[1] = a1;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B78, &qword_2387796E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  sub_2385418C8(v2, v21 - v10);
  v12 = type metadata accessor for MerchantImage(0);
  v11[*(v12 + 20)] = 1;
  v13 = *(v12 + 24);
  *&v11[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
  v14 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v16 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0) + 36)];
  v17 = type metadata accessor for OrderImageStyleModifier();
  *&v16[*(v17 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v16[*(v17 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v16 = xmmword_23876D160;
  *(v16 + 2) = 0;
  v16[24] = 1;
  *(v16 + 4) = v14;
  v16[40] = 0;
  v18 = sub_23875D000();
  v19 = &v11[*(v8 + 36)];
  *v19 = v18;
  v19[1] = sub_23843480C;
  v19[2] = 0;
  sub_238631D58();
  sub_23875DE00();
  return sub_238439884(v11, &qword_27DF11B78, &qword_2387796E0);
}

uint64_t sub_2386307CC()
{
  v1 = (v0 + *(type metadata accessor for MerchantImage.ViewModel(0) + 24));
  v17 = *v1;
  v18 = v1[1];
  sub_2384397A8();

  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  sub_23875D820();
  v7 = sub_23875DA60();
  v9 = v8;
  v11 = v10;

  sub_2384397FC(v2, v4, v6 & 1);

  sub_23875D890();
  v12 = sub_23875D9E0();
  v14 = v13;
  LOBYTE(v2) = v15;
  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875DE00();
  sub_2384397FC(v12, v14, v2 & 1);
}

uint64_t sub_238630950@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = sub_23875DA00();
  v62 = *(v1 - 8);
  v63 = v1;
  v2 = *(v62 + 64);
  MEMORY[0x28223BE20](v1);
  v61 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23875C880();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v52[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23875BE40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23875BE20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_23875BD20();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_2387595E0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_2387590C0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v17 = sub_2387590B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v22 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v24 = &v52[-v23];
  v56 = *(type metadata accessor for OrderListRow.ViewModel(0) + 20);
  (*(v18 + 16))(v21, v65 + v56, v17);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_238631DE4(&qword_27DF0A030, MEMORY[0x277CC7708]);
  sub_238631DE4(&qword_27DF0A038, MEMORY[0x277CC76F0]);
  v25 = sub_23875DA80();
  v27 = v26;
  v29 = v28;
  sub_23875D7F0();
  v30 = sub_23875DA60();
  v32 = v31;
  LOBYTE(v18) = v33;

  sub_2384397FC(v25, v27, v29 & 1);

  v66 = sub_23875D440();
  v54 = sub_23875DA20();
  v55 = v34;
  v36 = v35;
  v53 = v37;
  sub_2384397FC(v30, v32, v18 & 1);

  v38 = v65 + *(type metadata accessor for OrderListRow(0) + 20);
  v39 = v58;
  sub_2384D5138(v58);
  v40 = sub_23875C860();
  (*(v59 + 8))(v39, v60);
  KeyPath = swift_getKeyPath();
  v42 = sub_238759070();
  v44 = v61;
  v43 = v62;
  v45 = MEMORY[0x277CE0B30];
  if (v42 <= 1)
  {
    v45 = MEMORY[0x277CE0B28];
  }

  v46 = v63;
  (*(v62 + 104))(v61, *v45, v63);
  if (v40)
  {
    v47 = 3;
  }

  else
  {
    v47 = 2;
  }

  v48 = swift_getKeyPath();
  v49 = &v24[*(v57 + 36)];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0);
  (*(v43 + 32))(v49 + *(v50 + 28), v44, v46);
  *v49 = v48;
  *v24 = v54;
  *(v24 + 1) = v36;
  v24[16] = v53 & 1;
  *(v24 + 3) = v55;
  *(v24 + 4) = KeyPath;
  *(v24 + 5) = v47;
  v24[48] = 0;
  sub_2385EFE54();
  sub_23875DE00();
  return sub_238439884(v24, &qword_27DF0A028, &qword_238764FC0);
}

uint64_t sub_238630FB8()
{
  v0 = sub_23875BE40();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_23875BE20();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23875BD20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_2387595E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_23875B1B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for OrderListRow.ViewModel(0) + 24);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_238631DE4(&qword_27DF0A050, MEMORY[0x277CC8560]);
  sub_23875B090();
  (*(v9 + 8))(v12, v8);
  v34 = v30;
  v35 = v31;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  sub_23875D7F0();
  v19 = sub_23875DA60();
  v21 = v20;
  LOBYTE(v9) = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  LODWORD(v30) = sub_23875D440();
  v23 = sub_23875DA20();
  v25 = v24;
  LOBYTE(v14) = v26;
  v28 = v27;
  sub_2384397FC(v19, v21, v9 & 1);

  v30 = v23;
  v31 = v25;
  v32 = v14 & 1;
  v33 = v28;
  sub_23875DE00();
  sub_2384397FC(v23, v25, v14 & 1);
}

uint64_t sub_238631360@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B88, &qword_238779748);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B50, &qword_238779658);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386304F8(v15);
  *v8 = sub_23875D030();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B90, &qword_238779750);
  sub_2386315F4(&v8[*(v16 + 44)]);
  sub_23843981C(v15, v12, &qword_27DF11B50, &qword_238779658);
  sub_23843981C(v8, v5, &qword_27DF11B88, &qword_238779748);
  sub_23843981C(v12, a1, &qword_27DF11B50, &qword_238779658);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B98, &qword_238779758);
  sub_23843981C(v5, a1 + *(v17 + 48), &qword_27DF11B88, &qword_238779748);
  sub_238439884(v8, &qword_27DF11B88, &qword_238779748);
  sub_238439884(v15, &qword_27DF11B50, &qword_238779658);
  sub_238439884(v5, &qword_27DF11B88, &qword_238779748);
  sub_238439884(v12, &qword_27DF11B50, &qword_238779658);
}

uint64_t sub_2386315F4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11B48, &qword_238779650);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E838, &unk_23877A3B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v25 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v25 - v20;
  sub_23875ED50();
  v25[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386307CC();
  sub_238630950(v8);
  sub_238630FB8();
  sub_23843981C(v21, v15, &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v8, v5, &qword_27DF11B48, &qword_238779650);
  sub_23843981C(v18, v12, &qword_27DF0E838, &unk_23877A3B0);
  sub_23843981C(v15, a1, &qword_27DF0E838, &unk_23877A3B0);
  v22 = v5;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BA0, &qword_238779760);
  sub_23843981C(v22, a1 + *(v23 + 48), &qword_27DF11B48, &qword_238779650);
  sub_23843981C(v12, a1 + *(v23 + 64), &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v18, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v8, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v21, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v12, &qword_27DF0E838, &unk_23877A3B0);
  sub_238439884(v22, &qword_27DF11B48, &qword_238779650);
  sub_238439884(v15, &qword_27DF0E838, &unk_23877A3B0);
}

uint64_t sub_238631914(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = type metadata accessor for MerchantImage.ViewModel(0);
  if (MEMORY[0x23EE5FA60](a1 + *(v8 + 20), a2 + *(v8 + 20)))
  {
    v9 = *(v8 + 24);
    v10 = *(a1 + v9);
    v11 = *(a1 + v9 + 8);
    v12 = (a2 + v9);
    v13 = v10 == *v12 && v11 == v12[1];
    if (v13 || (sub_23875F630() & 1) != 0)
    {
      v14 = type metadata accessor for OrderListRow.ViewModel(0);
      if (MEMORY[0x23EE5DB60](a1 + *(v14 + 20), a2 + *(v14 + 20)))
      {
        v15 = *(v14 + 24);

        JUMPOUT(0x23EE5FB50);
      }
    }
  }

  return 0;
}

void sub_238631A5C()
{
  type metadata accessor for OrderListRow.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384BEA74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_238631AFC()
{
  result = qword_27DF11B18;
  if (!qword_27DF11B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11B00, &qword_238779630);
    sub_238631BB8();
    sub_238631DE4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B18);
  }

  return result;
}

unint64_t sub_238631BB8()
{
  result = qword_27DF11B20;
  if (!qword_27DF11B20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11AF8, &qword_238779628);
    sub_23843A3E8(&qword_27DF11B28, &qword_27DF11B30, &qword_238779640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B20);
  }

  return result;
}

unint64_t sub_238631C70()
{
  result = qword_27DF11B38;
  if (!qword_27DF11B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11AE8, &qword_238779618);
    sub_23843A3E8(&qword_27DF11B10, &qword_27DF11AE0, &qword_238779610);
    sub_238631DE4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B38);
  }

  return result;
}

unint64_t sub_238631D58()
{
  result = qword_27DF11B80;
  if (!qword_27DF11B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11B78, &qword_2387796E0);
    sub_23858A534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11B80);
  }

  return result;
}

uint64_t sub_238631DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_238631E2C()
{
  result = qword_27DF11BA8;
  if (!qword_27DF11BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF11BB0, &qword_238779768);
    sub_238631AFC();
    sub_238631C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF11BA8);
  }

  return result;
}

uint64_t sub_238631F00()
{
  result = sub_23875A710();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238631F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_238632030()
{
  type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384B49C4();
    if (v1 <= 0x3F)
    {
      sub_23846CAFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2386320E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v44 = a2;
  v3 = type metadata accessor for OrderListRowActionsModifier(0);
  v4 = v3 - 8;
  v35 = *(v3 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BD8, &qword_238779820);
  v42 = *(v6 - 8);
  v43 = v6;
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v45 = v2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BE0, &qword_238779828);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BE8, &qword_238779830);
  v12 = sub_23843A3E8(&qword_27DF11BF0, &qword_27DF11BE0, &qword_238779828);
  v13 = sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830);
  v40 = v10;
  v41 = v9;
  v38 = v11;
  sub_23875DBD0();
  v14 = v34;
  v15 = v34 + *(v4 + 28);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v50) = v16;
  v51 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v39 = v46;
  v37 = v47;
  v36 = v48;
  sub_238634B3C(v14, &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListRowActionsModifier);
  v18 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v19 = swift_allocObject();
  sub_238634A68(&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v20 = qword_2814F1B90;
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = [v20 localizedStringForKey:v21 value:v22 table:v23];

  v25 = sub_23875EA80();
  v27 = v26;

  v50 = v25;
  v51 = v27;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v46 = v40;
  v47 = v38;
  v48 = v12;
  v49 = v13;
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048);
  v30 = v43;
  v31 = v41;
  sub_23875DEC0();

  (*(v42 + 8))(v31, v30);
}

uint64_t sub_238632640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C00, &qword_238779848);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v39 - v10;
  v11 = type metadata accessor for OrderListRowActionsModifier(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  v14 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238634B3C(a1, &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListRowActionsModifier);
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_238634A68(&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
  v21 = sub_23875DFF0();
  KeyPath = swift_getKeyPath();
  v23 = &v18[*(v41 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = a1;
  v25 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  if (*(a1 + *(v25 + 20)) != 1)
  {
    v33 = 1;
    v27 = v46;
LABEL_8:
    v31 = v44;
    v32 = v45;
    goto LABEL_9;
  }

  v26 = *(a1 + *(v25 + 24));
  v27 = v46;
  if (v26 != 1)
  {
    v33 = 1;
    goto LABEL_8;
  }

  sub_238634B3C(v24, &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListRowActionsModifier);
  v28 = swift_allocObject();
  sub_238634A68(&v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v19);
  v29 = v40;
  sub_23875E200();
  v31 = v44;
  v30 = v45;
  (*(v44 + 32))(v27, v29, v45);
  v32 = v30;
  v33 = 0;
LABEL_9:
  (*(v31 + 56))(v27, v33, 1, v32);
  v34 = v43;
  sub_23843981C(v18, v43, &qword_27DF0D500, &unk_238779850);
  v35 = v47;
  sub_23843981C(v27, v47, &qword_27DF11C00, &qword_238779848);
  v36 = v48;
  sub_23843981C(v34, v48, &qword_27DF0D500, &unk_238779850);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C08, &qword_238779890);
  sub_23843981C(v35, v36 + *(v37 + 48), &qword_27DF11C00, &qword_238779848);
  sub_238439884(v27, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v18, &qword_27DF0D500, &unk_238779850);
  sub_238439884(v35, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v34, &qword_27DF0D500, &unk_238779850);
}

void sub_238632BBC(uint64_t a1)
{
  v2 = type metadata accessor for OrderListRowActionsModifier(0);
  v41[0] = *(v2 - 8);
  v3 = *(v41[0] + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875A710();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v41 - v11;
  v13 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238634B3C(a1, v16, type metadata accessor for OrderListRowActionsModifier.ViewModel);
  v17 = sub_23875ED80();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  (*(v6 + 16))(v8, v16, v5);
  sub_238634B3C(a1, v4, type metadata accessor for OrderListRowActionsModifier);
  sub_23875ED50();
  v18 = sub_23875ED40();
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v20 = (v7 + *(v41[0] + 80) + v19) & ~*(v41[0] + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  *(v21 + 16) = v18;
  *(v21 + 24) = v22;
  (*(v6 + 32))(v21 + v19, v8, v5);
  sub_238634A68(v4, v21 + v20);
  sub_2386C3BA4(0, 0, v12, &unk_238779840, v21);

  (*(v6 + 8))(v16, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v24 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_238763300;
  v26 = *MEMORY[0x277D383D8];
  *(v25 + 32) = *MEMORY[0x277D383D8];
  v27 = *MEMORY[0x277D38428];
  v28 = sub_23875EA80();
  v29 = MEMORY[0x277D38390];
  *(v25 + 40) = v28;
  *(v25 + 48) = v30;
  v31 = *v29;
  *(v25 + 56) = *v29;
  *(v25 + 64) = 0x6574656C6564;
  v32 = *MEMORY[0x277D384B8];
  *(v25 + 72) = 0xE600000000000000;
  *(v25 + 80) = v32;
  *(v25 + 88) = 0xD000000000000014;
  *(v25 + 96) = 0x8000000238784E10;
  v33 = v26;
  v34 = v31;
  v35 = v32;
  v36 = sub_23854B138(v25);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v36;
  sub_2385C33E4(v24, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v42);

  v38 = *MEMORY[0x277D38548];
  v39 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v40 = sub_23875E910();

  [v39 subject:v38 sendEvent:v40];
}

void sub_23863311C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v1 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(v2 + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  v5 = sub_23875EA80();
  v6 = MEMORY[0x277D38390];
  *(v2 + 40) = v5;
  *(v2 + 48) = v7;
  v8 = *v6;
  *(v2 + 56) = *v6;
  *(v2 + 64) = 0x776F4E746F6ELL;
  v9 = *MEMORY[0x277D384B8];
  *(v2 + 72) = 0xE600000000000000;
  *(v2 + 80) = v9;
  *(v2 + 88) = 0xD000000000000014;
  *(v2 + 96) = 0x8000000238784E10;
  v10 = v3;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v13;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v18);

  v15 = *MEMORY[0x277D38548];
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];
}

uint64_t sub_23863338C()
{
  v0 = type metadata accessor for OrderListRowActionsModifier(0);
  v32 = *(v0 - 8);
  v1 = *(v32 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v33 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v7 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_238763300;
  v9 = *MEMORY[0x277D383D8];
  *(v8 + 32) = *MEMORY[0x277D383D8];
  v10 = *MEMORY[0x277D38428];
  v11 = sub_23875EA80();
  v12 = MEMORY[0x277D38390];
  *(v8 + 40) = v11;
  *(v8 + 48) = v13;
  v14 = *v12;
  *(v8 + 56) = *v12;
  *(v8 + 64) = 0xD000000000000010;
  v15 = *MEMORY[0x277D384B8];
  *(v8 + 72) = 0x8000000238785C70;
  *(v8 + 80) = v15;
  strcpy((v8 + 88), "orderDashboard");
  *(v8 + 103) = -18;
  v16 = v9;
  v17 = v14;
  v18 = v15;
  v19 = sub_23854B138(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v19;
  sub_2385C33E4(v7, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v34);

  v21 = *MEMORY[0x277D38548];
  v22 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v23 = sub_23875E910();

  [v22 subject:v21 sendEvent:v23];

  v24 = sub_23875ED80();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = v33;
  sub_238634B3C(v31, v33, type metadata accessor for OrderListRowActionsModifier);
  sub_23875ED50();
  v26 = sub_23875ED40();
  v27 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 16) = v26;
  *(v28 + 24) = v29;
  sub_238634A68(v25, v28 + v27);
  sub_2386C3BA4(0, 0, v5, &unk_2387798A0, v28);
}

uint64_t sub_2386337CC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8();
  sub_23875E190();
}

void sub_238633974(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderListRowActionsModifier(0) + 20));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v21[0]) = v3;
  v21[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  v9 = *MEMORY[0x277D38428];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v10;
  v11 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  *(v7 + 64) = 0x6C436574656C6564;
  v12 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0xEB000000006B6369;
  *(v7 + 80) = v12;
  strcpy((v7 + 88), "orderDashboard");
  *(v7 + 103) = -18;
  v13 = v8;
  v14 = v11;
  v15 = v12;
  v16 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v16;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v21);

  v18 = *MEMORY[0x277D38548];
  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v20 = sub_23875E910();

  [v19 subject:v18 sendEvent:v20];
}

uint64_t sub_238633CAC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  sub_2384397A8();
  sub_23875E190();
}

uint64_t sub_238633E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_23875C1E0();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = *(*(type metadata accessor for OrderListRowActionsModifier.ViewModel(0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v10 = sub_23875A710();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  sub_23875ED50();
  v4[15] = sub_23875ED40();
  v14 = sub_23875ECE0();
  v4[16] = v14;
  v4[17] = v13;

  return MEMORY[0x2822009F8](sub_238634004, v14, v13);
}

uint64_t sub_238634004()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_238634B3C(v0[6], v4, type metadata accessor for OrderListRowActionsModifier.ViewModel);
  (*(v2 + 32))(v1, v4, v3);
  sub_2387579D0();
  v0[18] = sub_2387579A0();
  sub_23875BBF0();
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = *(MEMORY[0x277CC6738] + 4);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_23863415C;
  v9 = v0[14];
  v10 = v0[10];

  return MEMORY[0x282116E28](v9, 0, v10);
}

uint64_t sub_23863415C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_238439884(v5, &qword_27DF12E00, &unk_238763FC0);

  v7 = *(v2 + 136);
  v8 = *(v2 + 128);
  if (v0)
  {
    v9 = sub_238634394;
  }

  else
  {
    v9 = sub_2386342E8;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2386342E8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];

  (*(v4 + 8))(v2, v3);
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];

  v9 = v0[1];

  return v9();
}

uint64_t sub_238634394()
{
  v38 = v0;
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v4 + *(type metadata accessor for OrderListRowActionsModifier(0) + 24);
  sub_2384D5160(v3);
  v6 = v1;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[20];
    v10 = v0[13];
    v35 = v0[12];
    v36 = v0[14];
    v11 = v0[8];
    v33 = v0[7];
    v34 = v0[9];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v37 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = v0[2];
    v14 = v0[3];
    v16 = v0[4];
    v17 = sub_23875F690();
    v19 = sub_2384615AC(v17, v18, &v37);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_2383F8000, v7, v8, "Failed to mark an order as active: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v12, -1, -1);

    (*(v11 + 8))(v34, v33);
    (*(v10 + 8))(v36, v35);
  }

  else
  {
    v20 = v0[20];
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];
    v25 = v0[8];
    v24 = v0[9];
    v26 = v0[7];

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
  }

  v27 = v0[14];
  v28 = v0[10];
  v29 = v0[11];
  v30 = v0[9];

  v31 = v0[1];

  return v31();
}