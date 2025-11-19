uint64_t sub_238466AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = HIDWORD(a1);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  DWORD1(v43) = v4;
  *(&v43 + 1) = a2;
  sub_2384397A8();

  v6 = sub_23875DAA0();
  v8 = v7;
  v10 = v9;
  sub_23875D7F0();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v6, v8, v10 & 1);

  LODWORD(v43) = sub_23875D440();
  v16 = sub_23875DA20();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2384397FC(v11, v13, v15 & 1);

  v23 = sub_23875CE60();
  v33[0] = 1;
  sub_238466E2C(&v43);
  v36 = *v44;
  v37 = *&v44[16];
  v38 = *&v44[32];
  v39 = *&v44[48];
  v35 = v43;
  v40[1] = *v44;
  v40[2] = *&v44[16];
  v40[3] = *&v44[32];
  v40[4] = *&v44[48];
  v40[0] = v43;
  sub_23843981C(&v35, v41, &qword_27DF0A248, &unk_238765310);
  sub_238439884(v40, &qword_27DF0A248, &unk_238765310);
  *&v34[71] = v39;
  *&v34[55] = v38;
  *&v34[39] = v37;
  *&v34[23] = v36;
  *&v34[7] = v35;
  v41[0] = v23;
  v41[1] = 0;
  v42[0] = 1;
  v24 = *&v34[16];
  *&v42[17] = *&v34[16];
  v25 = *v34;
  *&v42[1] = *v34;
  *&v42[80] = *(&v39 + 1);
  v26 = *&v34[64];
  *&v42[65] = *&v34[64];
  v27 = *&v34[48];
  *&v42[49] = *&v34[48];
  v28 = *&v34[32];
  *&v42[33] = *&v34[32];
  v29 = *v42;
  *(a3 + 32) = v23;
  *(a3 + 48) = v29;
  v30 = *&v42[64];
  *(a3 + 96) = *&v42[48];
  *(a3 + 112) = v30;
  v31 = *&v42[32];
  *(a3 + 64) = *&v42[16];
  *(a3 + 80) = v31;
  *&v44[17] = v24;
  *&v44[1] = v25;
  v33[104] = v20 & 1;
  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v20 & 1;
  *(a3 + 24) = v22;
  *(a3 + 128) = *&v42[80];
  v43 = v23;
  v44[0] = 1;
  *&v45[15] = *&v34[79];
  *v45 = v26;
  *&v44[49] = v27;
  *&v44[33] = v28;
  sub_23843980C(v16, v18, v20 & 1);

  sub_23843981C(v41, v33, &qword_27DF0A250, &qword_238768E60);
  sub_238439884(&v43, &qword_27DF0A250, &qword_238768E60);
  sub_2384397FC(v16, v18, v20 & 1);
}

uint64_t sub_238466E2C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8();

  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_23875BC10();
  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v12 & 1;
  *(a1 + 72) = v14;
  sub_23843980C(v2, v4, v6 & 1);

  sub_23843980C(v9, v11, v13);

  sub_2384397FC(v9, v11, v13);

  sub_2384397FC(v2, v4, v6 & 1);
}

unint64_t sub_238466FF4()
{
  result = qword_27DF0A1C8;
  if (!qword_27DF0A1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A1C0, &qword_238765278);
    sub_23843A3E8(&qword_27DF0A1D0, &qword_27DF0A1D8, &qword_238765280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A1C8);
  }

  return result;
}

uint64_t sub_2384670A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementBalanceHistoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238467108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountConsentManagementBalanceHistoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23846716C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AccountConsentManagementBalanceHistoryView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_238465668(a1, a2, v8, a3);
}

uint64_t sub_2384671F4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_238467224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A208, &unk_2387652D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238467294()
{
  result = qword_27DF0A258;
  if (!qword_27DF0A258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A260, qword_238765320);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A1B0, &qword_238765268);
    sub_23843A3E8(&qword_27DF0A1E0, &qword_27DF0A1B0, &qword_238765268);
    swift_getOpaqueTypeConformance2();
    sub_2384673C0(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A258);
  }

  return result;
}

uint64_t sub_2384673C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DataRestrictedTransactionPickerView.init(cancelAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DataRestrictedTransactionPickerView.body.getter()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A268, &qword_238765360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A270, &qword_238765368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A278, &qword_238765370);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A288, &qword_238765378);
  sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C790();
}

uint64_t sub_238467590@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A270, &qword_238765368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - v4;
  sub_23875ED50();
  v10[0] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_23875D400();
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A278, &qword_238765370);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A288, &qword_238765378);
  v8 = sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378);
  v10[2] = v7;
  v10[3] = v8;
  swift_getOpaqueTypeConformance2();
  sub_23875DEF0();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_238467874@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_238467590(a1);
}

uint64_t sub_238467898@<X0>(uint64_t a1@<X8>)
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

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_238467A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = sub_23875D2A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A288, &qword_238765378);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875D250();
  MEMORY[0x28223BE20](v12);
  v15[-2] = a1;
  v15[-1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  sub_23875C990();
  v13 = sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378);
  MEMORY[0x23EE61E80](v11, v7, v13);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_238467CB8()
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

  sub_23875E230();
}

uint64_t sub_238467E68()
{
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A268, &qword_238765360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A270, &qword_238765368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A278, &qword_238765370);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A288, &qword_238765378);
  sub_23843A3E8(&qword_27DF0A290, &qword_27DF0A288, &qword_238765378);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_23875C790();
}

uint64_t sub_238468000()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_238467CB8();
}

uint64_t sub_23846800C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_238468054(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2384680A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  swift_bridgeObjectRetain_n();

  v10 = sub_23875E030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_238763310;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 32) = 0xD000000000000027;
  *(v11 + 40) = 0x8000000238786800;
  *(v11 + 56) = v12;
  *(v11 + 64) = 0xD000000000000027;
  *(v11 + 72) = 0x8000000238786800;
  *(v11 + 88) = v12;
  *(v11 + 96) = 0xD000000000000020;
  *(v11 + 104) = 0x8000000238786830;
  *(v11 + 152) = v12;
  *(v11 + 120) = v12;
  *(v11 + 128) = a3;
  *(v11 + 136) = a4;
  v13 = sub_23875EA50();
  v14 = sub_23875EC60();

  v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:v14];

  a5[2] = a3;
  a5[3] = a4;
  a5[4] = v10;
  a5[5] = 0x65746F6E6B6E6162;
  a5[7] = 0x79636E6572727543;
  a5[8] = 0xE800000000000000;
  a5[6] = 0xE800000000000000;
  *a5 = a1;
  a5[1] = a2;
  result = swift_allocObject();
  *(result + 16) = v15;
  a5[9] = &unk_2387654B0;
  a5[10] = result;
  return result;
}

uint64_t sub_23846826C()
{
  result = MEMORY[0x23EE607D0]();
  qword_27DF2F640 = result;
  return result;
}

uint64_t sub_238468298(void *a1, uint64_t a2)
{
  v3 = sub_2384682F4(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

void *sub_2384682F4(void *a1, uint64_t a2)
{
  v4 = sub_23875BD00();
  v69 = *(v4 - 8);
  v5 = *(v69 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v63 = &v56 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v56 - v10;
  v68 = a1;
  if ((sub_23875EB40() - 4) < 0xFFFFFFFFFFFFFFFELL)
  {
    return MEMORY[0x277D84F90];
  }

  if (qword_27DF08CA8 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v12 = qword_27DF2F640;
    v13 = *(qword_27DF2F640 + 16);
    v66 = v4;
    v62 = v13;
    if (!v13)
    {
      break;
    }

    v14 = 0;
    v56 = (v69 + 8);
    v58 = (v69 + 32);
    v59 = v69 + 16;
    v65 = MEMORY[0x277D84F90];
    v57 = v11;
    v60 = qword_27DF2F640;
    while (v14 < *(v12 + 16))
    {
      v67 = ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v15 = *(v69 + 72);
      (*(v69 + 16))(v11, &v67[v12 + v15 * v14], v4);
      v16 = v4;
      *&v74 = sub_23875BCE0();
      *(&v74 + 1) = v17;
      v72 = v68;
      v73 = a2;
      sub_2384397A8();
      v70 = sub_23875F250();
      v71 = v18;
      sub_2384688CC();
      sub_238468920();
      v19 = sub_23875E970();

      if (v19)
      {
        v20 = *v58;
        (*v58)(v63, v11, v16);
        v21 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v21;
        if (isUniquelyReferenced_nonNull_native)
        {
          v4 = v16;
        }

        else
        {
          sub_2385FE7CC(0, *(v21 + 16) + 1, 1);
          v4 = v66;
          v21 = v75;
        }

        v12 = v60;
        v23 = v67;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        v26 = v21;
        if (v25 >= v24 >> 1)
        {
          sub_2385FE7CC(v24 > 1, v25 + 1, 1);
          v4 = v66;
          v26 = v75;
        }

        *(v26 + 16) = v25 + 1;
        v65 = v26;
        v20(&v23[v26 + v25 * v15], v63, v4);
        v11 = v57;
      }

      else
      {
        (*v56)(v11, v16);
        v4 = v16;
        v12 = v60;
      }

      if (v62 == ++v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v65 = MEMORY[0x277D84F90];
LABEL_16:
  v27 = *(v65 + 16);
  if (v27)
  {
    v28 = v65;
    v72 = MEMORY[0x277D84F90];
    sub_2385FE7AC(0, v27, 0);
    v29 = v66;
    v30 = v72;
    v67 = *(v69 + 16);
    v31 = v28 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v32 = *(v69 + 72);
    v69 += 16;
    v62 = (v69 - 8);
    v63 = v32;
    v61 = a2;
    do
    {
      v33 = v64;
      (v67)(v64, v31, v29);
      *&v74 = v68;
      *(&v74 + 1) = a2;
      sub_2384397A8();
      v34 = sub_23875F250();
      v36 = v35;
      v37 = sub_23875BCE0();
      v29 = v66;
      v38 = v37;
      v40 = v39;
      (*v62)(v33, v66);
      v72 = v30;
      v42 = v30[2];
      v41 = v30[3];
      if (v42 >= v41 >> 1)
      {
        sub_2385FE7AC((v41 > 1), v42 + 1, 1);
        v29 = v66;
        v30 = v72;
      }

      v30[2] = v42 + 1;
      v43 = &v30[4 * v42];
      v43[4] = v34;
      v43[5] = v36;
      v43[6] = v38;
      v43[7] = v40;
      v31 += v63;
      --v27;
      a2 = v61;
    }

    while (v27);

    v44 = v30[2];
    if (v44)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

  v30 = MEMORY[0x277D84F90];
  v44 = *(MEMORY[0x277D84F90] + 16);
  if (!v44)
  {
LABEL_28:

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  v72 = MEMORY[0x277D84F90];
  sub_2385FE78C(0, v44, 0);
  v45 = v72;
  v46 = v30 + 7;
  do
  {
    v47 = *(v46 - 3);
    v48 = *(v46 - 2);
    v49 = *(v46 - 1);
    v50 = *v46;
    v51 = swift_allocObject();
    v51[2] = v47;
    v51[3] = v48;
    v51[4] = v49;
    v51[5] = v50;
    v72 = v45;
    v52 = v45[2];
    v53 = v45[3];

    if (v52 >= v53 >> 1)
    {
      sub_2385FE78C((v53 > 1), v52 + 1, 1);
      v45 = v72;
    }

    v45[2] = v52 + 1;
    v54 = &v45[6 * v52];
    v54[4] = v51;
    *(v54 + 5) = v74;
    v54[7] = &type metadata for CurrencyCodeTokenProvider;
    v54[8] = &off_284B261A8;
    *(v54 + 72) = 0;
    v46 += 4;
    --v44;
  }

  while (v44);

  return v45;
}

unint64_t sub_2384688CC()
{
  result = qword_27DF0A2A8;
  if (!qword_27DF0A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A2A8);
  }

  return result;
}

unint64_t sub_238468920()
{
  result = qword_27DF0A2B0;
  if (!qword_27DF0A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A2B0);
  }

  return result;
}

uint64_t sub_238468974(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2384494A4;

  return sub_23874E920(a1, v4);
}

uint64_t sub_238468A30(uint64_t a1)
{
  v2 = sub_238757E10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  if ((*(v3 + 48))(a1, 1, v2) == 1)
  {
    sub_238468C90(a1);
  }

  else
  {
    v10 = *(v3 + 32);
    v10(v9, a1, v2);
    v10(v7, v9, v2);
    v11 = (*(v3 + 88))(v7, v2);
    if (v11 != *MEMORY[0x277CC6C48])
    {
      if (v11 == *MEMORY[0x277CC6C28])
      {
        return 1;
      }

      if (v11 == *MEMORY[0x277CC6C58])
      {
        return 2;
      }

      if (v11 == *MEMORY[0x277CC6C40])
      {
        return 3;
      }

      if (v11 == *MEMORY[0x277CC6C50])
      {
        return 4;
      }

      if (v11 == *MEMORY[0x277CC6C30])
      {
        return 5;
      }

      if (v11 == *MEMORY[0x277CC6C38])
      {
        return 6;
      }

      if (v11 == *MEMORY[0x277CC6C60])
      {
        return 7;
      }

      (*(v3 + 8))(v7, v2);
    }
  }

  return 0;
}

uint64_t sub_238468C90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_238468D0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_238468D54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238468DB0()
{
  sub_2387579D0();
  sub_2387579A0();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_238757820();
}

uint64_t sub_238468F4C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 12) = *(a1 + 28);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 12) = *(a2 + 28);
  return sub_23846C7F4(&v5, &v7) & 1;
}

uint64_t sub_238468F98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v4 = v3 - 8;
  v59 = *(v3 - 8);
  v5 = *(v59 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v61 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v60 = (v57 - v8);
  MEMORY[0x28223BE20](v7);
  v10 = v57 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2D8, &qword_2387655A0);
  v65 = *(v67 - 8);
  v11 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v13 = v57 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2E0, &qword_2387655A8);
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v66 = v57 - v16;
  v72 = v2;
  v71 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2E8, &unk_2387655B0);
  type metadata accessor for ExtractedOrderActionsItems(0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
  v18 = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  v19 = sub_23846CBA0();
  v73 = v17;
  v74 = &type metadata for OrderActionsMenuLabelStyle;
  v75 = v18;
  v76 = v19;
  swift_getOpaqueTypeConformance2();
  sub_23846CEF4(&qword_27DF0A308, type metadata accessor for ExtractedOrderActionsItems);
  v64 = v13;
  sub_23875D9D0();
  v20 = v2 + *(v4 + 32);
  v21 = *v20;
  v22 = *(v20 + 8);
  v81 = v21;
  v82 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v62 = v73;
  v63 = v75;
  v23 = *(v2 + 32);
  v58 = *(v2 + 24);
  v57[2] = v23;
  sub_23846D3EC(v2, v10, type metadata accessor for ExtractedOrderActionsMenu);
  v24 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v25 = swift_allocObject();
  sub_23846D454(v10, v25 + v24, type metadata accessor for ExtractedOrderActionsMenu);
  v26 = v60;
  sub_23846D3EC(v2, v60, type metadata accessor for ExtractedOrderActionsMenu);
  v27 = swift_allocObject();
  sub_23846D454(v26, v27 + v24, type metadata accessor for ExtractedOrderActionsMenu);
  v28 = v61;
  sub_23846D3EC(v2, v61, type metadata accessor for ExtractedOrderActionsMenu);
  v29 = swift_allocObject();
  sub_23846D454(v28, v29 + v24, type metadata accessor for ExtractedOrderActionsMenu);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v30 = qword_2814F1B90;
  v31 = sub_23875EA50();
  v32 = sub_23875EA50();
  v33 = sub_23875EA50();
  v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

  v35 = sub_23875EA80();
  v37 = v36;
  v61 = v36;

  v60 = v57;
  v73 = v35;
  v74 = v37;
  v39 = MEMORY[0x28223BE20](v38);
  v57[-10] = sub_23846CBF4;
  v57[-9] = v25;
  v59 = v25;
  v57[1] = v29;
  v57[0] = v27;
  MEMORY[0x28223BE20](v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A310, &unk_2387655D0);
  v58 = v40;
  v41 = sub_23843A3E8(&qword_27DF0A318, &qword_27DF0A2D8, &qword_2387655A0);
  v42 = sub_2384397A8();
  v43 = sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0);
  v55 = v43;
  v56 = MEMORY[0x277CE0BC8];
  v53 = v41;
  v54 = v42;
  v51 = v40;
  v52 = MEMORY[0x277CE0BD8];
  v50 = MEMORY[0x277D837D0];
  v44 = v67;
  v49 = v67;
  v45 = v66;
  v46 = v64;
  sub_23875DEC0();

  (*(v65 + 8))(v46, v44);

  v73 = v44;
  v74 = MEMORY[0x277D837D0];
  v75 = v58;
  v76 = MEMORY[0x277CE0BD8];
  v77 = v41;
  v78 = v42;
  v79 = v43;
  v80 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v47 = v69;
  sub_23875DE00();
  return (*(v68 + 8))(v45, v47);
}

uint64_t sub_238469804@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1[1];
  v17 = *a1;
  v18[0] = v7;
  *(v18 + 12) = *(a1 + 28);
  sub_23846D3EC(a1, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ExtractedOrderActionsMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_23846D454(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ExtractedOrderActionsMenu);
  v10 = *MEMORY[0x277D38658];
  sub_23875EA80();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  sub_23846CF68(&v17, v16);
  v12 = sub_23875EA50();
  [v11 initWithSuiteName_];

  *a2 = sub_23875C370();
  v13 = v18[0];
  *(a2 + 8) = v17;
  *(a2 + 24) = v13;
  *(a2 + 36) = *(v18 + 12);
  *(a2 + 56) = sub_23846CF3C;
  *(a2 + 64) = v9;
  v14 = *(type metadata accessor for ExtractedOrderActionsItems(0) + 28);
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_238469A70(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ExtractedOrderActionsMenu(0) + 24));
  v3 = *v1;
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_238469AE4(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
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

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  v16[0] = v12;
  v16[1] = v14;
  sub_2384397A8();
  sub_23875E190();
  LOBYTE(v16[0]) = *a1;
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23846CBA0();
  sub_23875DB00();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_238469D98(__int128 *a1)
{
  v29 = sub_23875C1E0();
  v28 = *(v29 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v7 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_238763300;
  v9 = *MEMORY[0x277D383D8];
  *(v8 + 32) = *MEMORY[0x277D383D8];
  v10 = *MEMORY[0x277D38428];
  *(v8 + 40) = sub_23875EA80();
  *(v8 + 48) = v11;
  v12 = *MEMORY[0x277D38390];
  *(v8 + 56) = *MEMORY[0x277D38390];
  *(v8 + 64) = 0x6574656C6564;
  v13 = *MEMORY[0x277D384B8];
  *(v8 + 72) = 0xE600000000000000;
  *(v8 + 80) = v13;
  if (v5)
  {
    v14 = 8;
  }

  else
  {
    v14 = 0;
  }

  *(v8 + 88) = sub_238449A8C(v14);
  *(v8 + 96) = v15;
  v16 = v9;
  v17 = v12;
  v18 = v13;
  v19 = sub_23854B138(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30 = v19;
  sub_2385C33E4(v7, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v30);

  v21 = *MEMORY[0x277D38548];
  v22 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v23 = sub_23875E910();

  [v22 subject:v21 sendEvent:v23];

  v24 = a1[1];
  v30 = *a1;
  v31[0] = v24;
  *(v31 + 12) = *(a1 + 28);
  v25 = a1 + *(type metadata accessor for ExtractedOrderActionsMenu(0) + 20);
  sub_2384D5160(v4);
  sub_238468DB0();
  return (*(v28 + 8))(v4, v29);
}

uint64_t sub_23846A110(__int128 *a1)
{
  v29 = sub_23875C1E0();
  v28 = *(v29 - 8);
  v2 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v7 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_238763300;
  v9 = *MEMORY[0x277D383D8];
  *(v8 + 32) = *MEMORY[0x277D383D8];
  v10 = *MEMORY[0x277D38428];
  *(v8 + 40) = sub_23875EA80();
  *(v8 + 48) = v11;
  v12 = *MEMORY[0x277D38390];
  *(v8 + 56) = *MEMORY[0x277D38390];
  *(v8 + 64) = 0xD000000000000016;
  v13 = *MEMORY[0x277D384B8];
  *(v8 + 72) = 0x8000000238785C30;
  *(v8 + 80) = v13;
  if (v5)
  {
    v14 = 8;
  }

  else
  {
    v14 = 0;
  }

  *(v8 + 88) = sub_238449A8C(v14);
  *(v8 + 96) = v15;
  v16 = v9;
  v17 = v12;
  v18 = v13;
  v19 = sub_23854B138(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30 = v19;
  sub_2385C33E4(v7, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v30);

  v21 = *MEMORY[0x277D38548];
  v22 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v23 = sub_23875E910();

  [v22 subject:v21 sendEvent:v23];

  v24 = a1[1];
  v30 = *a1;
  v31[0] = v24;
  *(v31 + 12) = *(a1 + 28);
  v25 = a1 + *(type metadata accessor for ExtractedOrderActionsMenu(0) + 20);
  sub_2384D5160(v4);
  sub_238468DB0();
  return (*(v28 + 8))(v4, v29);
}

void sub_23846A490(unsigned __int8 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v3 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(v4 + 32) = *MEMORY[0x277D383D8];
  v6 = *MEMORY[0x277D38428];
  *(v4 + 40) = sub_23875EA80();
  *(v4 + 48) = v7;
  v8 = *MEMORY[0x277D38390];
  *(v4 + 56) = *MEMORY[0x277D38390];
  *(v4 + 64) = 0x776F4E746F6ELL;
  v9 = *MEMORY[0x277D384B8];
  *(v4 + 72) = 0xE600000000000000;
  *(v4 + 80) = v9;
  if (v1)
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  *(v4 + 88) = sub_238449A8C(v10);
  *(v4 + 96) = v11;
  v12 = v5;
  v13 = v8;
  v14 = v9;
  v15 = sub_23854B138(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v15;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v20);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

uint64_t sub_23846A728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, unsigned __int8 a9)
{
  v83 = a7;
  v80 = a5;
  v81 = a6;
  v79 = a4;
  v75 = a2;
  v76 = a3;
  v73 = a1;
  v87 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v70 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v92 = *(v77 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x28223BE20](v77);
  v15 = v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v86 = v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v85 = v70 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v84 = v70 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v78 = v70 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v91 = v70 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = v70 - v28;
  sub_23875ED50();
  v82 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v74 = a9;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v30 = qword_2814F1B90;
  v71 = qword_2814F1B90;
  v31 = sub_23875EA50();
  v32 = sub_23875EA50();
  v70[1] = "_DETAILS_HEADER_VIEW_SUBTITLE";
  v33 = sub_23875EA50();
  v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

  v35 = sub_23875EA80();
  v37 = v36;

  v93 = v35;
  v94 = v37;
  sub_23875C390();
  v89 = sub_23875C3C0();
  v38 = *(v89 - 8);
  v88 = *(v38 + 56);
  v70[2] = v38 + 56;
  v88(v12, 0, 1, v89);
  v90 = sub_2384397A8();

  sub_23875E220();
  v39 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  v72 = v29;
  v40 = v77;
  v73 = v39;
  sub_23875DE00();
  v41 = *(v92 + 8);
  v92 += 8;
  v41(v15, v40);
  v42 = sub_23875EA50();
  v43 = sub_23875EA50();
  v44 = sub_23875EA50();
  v45 = v71;
  v46 = [v71 localizedStringForKey:v42 value:v43 table:v44];

  v47 = sub_23875EA80();
  v49 = v48;

  v93 = v47;
  v94 = v49;
  sub_23875C390();
  v88(v12, 0, 1, v89);

  sub_23875E220();
  sub_23875DE00();
  v41(v15, v40);
  v50 = sub_23875EA50();
  v51 = sub_23875EA50();
  v52 = sub_23875EA50();
  v53 = [v45 localizedStringForKey:v50 value:v51 table:v52];

  v54 = sub_23875EA80();
  v56 = v55;

  v93 = v54;
  v94 = v56;
  sub_23875C3B0();
  v88(v12, 0, 1, v89);
  v57 = swift_allocObject();
  v58 = v79;
  v59 = v80;
  *(v57 + 16) = v79;
  *(v57 + 24) = v59;
  v60 = v83;
  *(v57 + 32) = v81;
  *(v57 + 40) = v60;
  *(v57 + 48) = v74 & 1;
  sub_238455C54(v58);

  sub_23875E220();
  v61 = v78;
  sub_23875DE00();
  v41(v15, v40);
  v62 = v72;
  v63 = v84;
  sub_23846CE84(v72, v84);
  v64 = v91;
  v65 = v85;
  sub_23846CE84(v91, v85);
  v66 = v86;
  sub_23846CE84(v61, v86);
  v67 = v87;
  sub_23846CE84(v63, v87);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A338, &qword_2387655F8);
  sub_23846CE84(v65, v67 + *(v68 + 48));
  sub_23846CE84(v66, v67 + *(v68 + 64));
  sub_238439884(v61, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v64, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v62, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v66, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v65, &qword_27DF0A330, &qword_2387655F0);
  sub_238439884(v63, &qword_27DF0A330, &qword_2387655F0);
}

uint64_t sub_23846AF90(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    a1(isCurrentExecutor);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();
}

uint64_t sub_23846B088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238763B60;
  *(v5 + 56) = MEMORY[0x277D837D0];
  v6 = sub_238448C58();
  *(v5 + 64) = v6;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v7 = qword_2814F0880;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = v6;
  *(v5 + 72) = v13;
  *(v5 + 80) = v15;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v8 localizedStringForKey:v16 value:v17 table:v18];

  sub_23875EA80();
  sub_23875EAA0();

  sub_2384397A8();
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v16) = v23;
  v25 = v24;

  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 16) = v16 & 1;
  *(a3 + 24) = v25;
  return result;
}

uint64_t sub_23846B364@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A370, &qword_2387656B8);
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  v3 = MEMORY[0x28223BE20](v38);
  v39 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - v5;
  v7 = type metadata accessor for ExtractedOrderActionsItems(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  if (*(v1 + 50) == 1)
  {
    v11 = *(v1 + 51);
    sub_23846D3EC(v1, v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderActionsItems);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v13 = swift_allocObject();
    sub_23846D454(v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v14, type metadata accessor for ExtractedOrderActionsItems);

    v12 = sub_23846D608;
  }

  v36 = v12;
  if (*(v1 + 49) == 1 && (v15 = *v1, v10 = sub_23875C380(), (v40 & 1) == 0))
  {
    v19 = v8;
    v16 = v13;
    v17 = *(v1 + 48);
    sub_23846D3EC(v1, v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderActionsItems);
    v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v21 = swift_allocObject();
    sub_23846D454(v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for ExtractedOrderActionsItems);
    v34 = v21;

    v18 = sub_23846D4BC;
  }

  else
  {
    v16 = v13;
    v17 = 0;
    v18 = 0;
    v34 = 0;
  }

  MEMORY[0x28223BE20](v10);
  v32[-2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A378, &qword_2387656C0);
  sub_23846D304();
  v22 = v6;
  v33 = v6;
  sub_23875E3D0();
  v23 = v35;
  v24 = *(v35 + 16);
  v25 = v38;
  v24(v39, v22, v38);
  v27 = v36;
  v26 = v37;
  *v37 = v11;
  v26[1] = v27;
  v32[1] = v16;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[5] = v34;
  v28 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A398, &qword_2387656D0) + 64);
  v29 = v39;
  v24(v28, v39, v25);
  sub_2383FE9BC(v11, v27);
  sub_2383FE9BC(v17, v18);
  sub_2383FE9CC(v17, v18);
  sub_2383FE9CC(v11, v27);
  v30 = *(v23 + 8);
  v30(v33, v25);
  v30(v29, v25);
  sub_2383FE9CC(v17, v18);
  return sub_2383FE9CC(v11, v27);
}

uint64_t sub_23846B798(int a1, uint64_t a2)
{
  v39 = sub_23875C1E0();
  v38 = *(v39 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23875BC40();
  v40 = *(v41 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v9 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_238763300;
  v13 = *MEMORY[0x277D383D8];
  *(v12 + 32) = *MEMORY[0x277D383D8];
  v14 = *MEMORY[0x277D38428];
  v15 = sub_23875EA80();
  v16 = MEMORY[0x277D38390];
  *(v12 + 40) = v15;
  *(v12 + 48) = v17;
  v18 = *v16;
  *(v12 + 56) = *v16;
  v42 = a1;
  if (a1)
  {
    v19 = 18;
  }

  else
  {
    v19 = 19;
  }

  v20 = sub_23844B4DC(v19);
  v21 = MEMORY[0x277D384B8];
  *(v12 + 64) = v20;
  *(v12 + 72) = v22;
  v23 = *v21;
  *(v12 + 80) = *v21;
  if (v9)
  {
    v24 = 8;
  }

  else
  {
    v24 = 0;
  }

  *(v12 + 88) = sub_238449A8C(v24);
  *(v12 + 96) = v25;
  v26 = v13;
  v27 = v18;
  v28 = v23;
  v29 = sub_23854B138(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v29;
  sub_2385C33E4(v11, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v44);

  v31 = *MEMORY[0x277D38548];
  v32 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v33 = sub_23875E910();

  [v32 subject:v31 sendEvent:v33];

  sub_2387579D0();
  sub_2387579A0();
  v34 = *(v43 + 16);
  v35 = *(v43 + 24);
  sub_23875BBF0();
  sub_238757970();
  (*(v40 + 8))(v8, v41);
}

uint64_t sub_23846BD24(int a1, uint64_t a2)
{
  v39 = sub_23875C1E0();
  v38 = *(v39 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23875BC40();
  v40 = *(v41 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v9 = *(a2 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 1818845549;
  *(inited + 48) = 0xE400000000000000;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_238763300;
  v13 = *MEMORY[0x277D383D8];
  *(v12 + 32) = *MEMORY[0x277D383D8];
  v14 = *MEMORY[0x277D38428];
  v15 = sub_23875EA80();
  v16 = MEMORY[0x277D38390];
  *(v12 + 40) = v15;
  *(v12 + 48) = v17;
  v18 = *v16;
  *(v12 + 56) = *v16;
  v42 = a1;
  if (a1)
  {
    v19 = 20;
  }

  else
  {
    v19 = 21;
  }

  v20 = sub_23844B4DC(v19);
  v21 = MEMORY[0x277D384B8];
  *(v12 + 64) = v20;
  *(v12 + 72) = v22;
  v23 = *v21;
  *(v12 + 80) = *v21;
  if (v9)
  {
    v24 = 8;
  }

  else
  {
    v24 = 0;
  }

  *(v12 + 88) = sub_238449A8C(v24);
  *(v12 + 96) = v25;
  v26 = v13;
  v27 = v18;
  v28 = v23;
  v29 = sub_23854B138(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v29;
  sub_2385C33E4(v11, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v44);

  v31 = *MEMORY[0x277D38548];
  v32 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23846CEF4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v33 = sub_23875E910();

  [v32 subject:v31 sendEvent:v33];

  sub_2387579D0();
  sub_2387579A0();
  v34 = *(v43 + 16);
  v35 = *(v43 + 24);
  sub_23875BBF0();
  sub_238757990();
  (*(v40 + 8))(v8, v41);
}

uint64_t sub_23846C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = type metadata accessor for ExtractedOrderActionsItems(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A390, &qword_2387656C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23846D3EC(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ExtractedOrderActionsItems);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_23846D454(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for ExtractedOrderActionsItems);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3A0, &unk_2387656D8);
  sub_23846D6D0();
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0A388, &qword_27DF0A390, &qword_2387656C8);
  sub_23875DE00();
  (*(v7 + 8))(v10, v6);
}

uint64_t sub_23846C578(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 64);
  (*(a1 + 56))(isCurrentExecutor);
}

uint64_t sub_23846C61C@<X0>(uint64_t a1@<X8>)
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

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  sub_23875E190();
  v7 = sub_23875DFF0();
  KeyPath = swift_getKeyPath();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3A0, &unk_2387656D8);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v7;
  return result;
}

uint64_t sub_23846C7F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v5 || (sub_23875F630()) && (*(a1 + 3) == *(a2 + 3) ? (v6 = *(a1 + 4) == *(a2 + 4)) : (v6 = 0), (v6 || (sub_23875F630()) && ((a1[40] ^ a2[40]) & 1) == 0 && ((a1[41] ^ a2[41]) & 1) == 0 && ((a1[42] ^ a2[42]) & 1) == 0))
  {
    v7 = a1[43] ^ a2[43] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

id sub_23846C8C4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v18 = a2 & 1;
  v5 = [a1 trackedOrderIdentifier];
  v6 = sub_23875EA80();
  v8 = v7;

  v9 = [a1 orderContent];
  v10 = [v9 merchantDisplayName];

  v11 = sub_23875EA80();
  v13 = v12;

  LOBYTE(v10) = [a1 notificationsEnabled];
  v14 = sub_238759460() & 1;
  v15 = [a1 orderContent];
  v16 = sub_23875A5D0();

  result = [a1 isMarkedAsComplete];
  *a3 = v18;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v11;
  *(a3 + 32) = v13;
  *(a3 + 40) = v10;
  *(a3 + 41) = v14;
  *(a3 + 42) = v16 & 1;
  *(a3 + 43) = result;
  return result;
}

void sub_23846CA4C()
{
  sub_23846CAFC();
  if (v0 <= 0x3F)
  {
    sub_23846D088(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23846CAFC()
{
  if (!qword_27DF09E20)
  {
    sub_23875C1E0();
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF09E20);
    }
  }
}

unint64_t sub_23846CBA0()
{
  result = qword_27DF0A300;
  if (!qword_27DF0A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A300);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C1E0();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23846CD8C(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_23846CE74()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return sub_23846AF90(*(v0 + 16));
}

uint64_t sub_23846CE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23846CEF4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23846CFC8()
{
  sub_23846D088(319, &qword_27DF0A350, MEMORY[0x277CDD630]);
  if (v0 <= 0x3F)
  {
    sub_23846D0DC();
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

void sub_23846D088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23846D0DC()
{
  result = qword_27DF0A358;
  if (!qword_27DF0A358)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DF0A358);
  }

  return result;
}

unint64_t sub_23846D12C()
{
  result = qword_27DF0A360;
  if (!qword_27DF0A360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A368, &qword_238765660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2D8, &qword_2387655A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A310, &unk_2387655D0);
    sub_23843A3E8(&qword_27DF0A318, &qword_27DF0A2D8, &qword_2387655A0);
    sub_2384397A8();
    sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0);
    swift_getOpaqueTypeConformance2();
    sub_23846CEF4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A360);
  }

  return result;
}

unint64_t sub_23846D304()
{
  result = qword_27DF0A380;
  if (!qword_27DF0A380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A378, &qword_2387656C0);
    sub_23843A3E8(&qword_27DF0A388, &qword_27DF0A390, &qword_2387656C8);
    sub_23846CEF4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A380);
  }

  return result;
}

uint64_t sub_23846D3EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23846D454(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_32Tm()
{
  v1 = (type metadata accessor for ExtractedOrderActionsItems(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 64);

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C1E0();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23846D620(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ExtractedOrderActionsItems(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_23846D6D0()
{
  result = qword_27DF0A3A8;
  if (!qword_27DF0A3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3A0, &unk_2387656D8);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A3A8);
  }

  return result;
}

uint64_t type metadata accessor for OrderWidgetBackground()
{
  result = qword_2814F0DE8;
  if (!qword_2814F0DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23846D828()
{
  sub_238438628();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_23846D8B0@<X0>(_WORD *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = 256;
  return result;
}

uint64_t sub_23846D940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = a1;
  v7[1] = a2;
  v8 = sub_23875D640();
  v2 = *(v8 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v8);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875D630();
  sub_23875E4A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3C0, &qword_238765788);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3C8, &qword_238765790);
  sub_23843A3E8(&qword_2814F0938, &qword_27DF0A3C0, &qword_238765788);
  sub_23843A3E8(&qword_2814F09C8, &qword_27DF0A3C8, &qword_238765790);
  sub_23875DD30();
  return (*(v2 + 8))(v5, v8);
}

uint64_t sub_23846DB08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23846DB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23846DBBC@<X0>(uint64_t a1@<X8>)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  v3 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v5 = &v64 - v4;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D8, &unk_23876A8A0);
  v6 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v8 = &v64 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E0, &qword_238765840);
  v9 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v11 = &v64 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3E8, &unk_23876A8B0);
  v12 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v74 = &v64 - v13;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F0, &qword_238765848);
  v14 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v77 = &v64 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3F8, &unk_23876A8C0);
  v16 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v78 = &v64 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A400, &qword_238765850);
  v18 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v80 = &v64 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A408, &qword_23876A8D0);
  v20 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v79 = &v64 - v21;
  v22 = sub_23875C980();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v1;
  v28 = v1[1];
  v69 = *(v1 + 16);
  v29 = qword_238765888[v69];
  v30 = *(v24 + 28);
  v31 = *MEMORY[0x277CE0118];
  v32 = sub_23875CF50();
  (*(*(v32 - 8) + 104))(&v26[v30], v31, v32);
  *v26 = v29;
  *(v26 + 1) = v29;

  v71 = v27;
  v70 = v28;
  v33 = sub_23875E0D0();
  v34 = sub_23875D8E0();
  KeyPath = swift_getKeyPath();
  *&v81 = v33;
  *(&v81 + 1) = KeyPath;
  *&v82 = v34;
  v36 = *MEMORY[0x277CDF9E8];
  v37 = sub_23875C880();
  (*(*(v37 - 8) + 104))(v5, v36, v37);
  sub_23846E6F4();
  result = sub_23875E9E0();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A410, &unk_238773730);
    sub_23846E74C();
    v64 = a1;
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220);
    sub_23875DC50();
    sub_23846E804(v5);

    *&v8[*(v66 + 36)] = sub_23875E040();
    sub_23875E4A0();
    sub_23875C9C0();
    sub_2384396E4(v8, v11, &qword_27DF0A3D8, &unk_23876A8A0);
    v39 = &v11[*(v67 + 36)];
    v40 = v86;
    *(v39 + 4) = v85;
    *(v39 + 5) = v40;
    *(v39 + 6) = v87;
    v41 = v82;
    *v39 = v81;
    *(v39 + 1) = v41;
    v42 = v84;
    *(v39 + 2) = v83;
    *(v39 + 3) = v42;
    sub_23875E010();
    v43 = sub_23875E060();

    v44 = v74;
    sub_2384396E4(v11, v74, &qword_27DF0A3E0, &qword_238765840);
    v45 = v44 + *(v68 + 36);
    *v45 = v43;
    *(v45 + 8) = xmmword_2387657B0;
    *(v45 + 24) = 0x4000000000000000;
    v46 = [objc_opt_self() systemBlackColor];
    v47 = sub_23875DFB0();
    LOBYTE(v43) = sub_23875D780();
    v48 = v44;
    v49 = v77;
    sub_2384396E4(v48, v77, &qword_27DF0A3E8, &unk_23876A8B0);
    v50 = v49 + *(v73 + 36);
    *v50 = v47;
    *(v50 + 8) = v43;
    v51 = v69;
    v52 = qword_2387658B8[v69];
    sub_23875E4A0();
    sub_23875C5C0();
    v53 = v78;
    sub_2384396E4(v49, v78, &qword_27DF0A3F0, &qword_238765848);
    v54 = (v53 + *(v76 + 36));
    v55 = v89;
    *v54 = v88;
    v54[1] = v55;
    v54[2] = v90;
    v56 = v80;
    v57 = &v80[*(v72 + 36)];
    sub_23846E86C(v26, v57);
    *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    sub_2384396E4(v53, v56, &qword_27DF0A3F8, &unk_23876A8C0);
    v58 = sub_23875E4A0();
    v60 = v59;
    v61 = v79;
    v62 = &v79[*(v75 + 36)];
    sub_23846E418(v26, v51, v62);
    v63 = (v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
    *v63 = v58;
    v63[1] = v60;
    sub_2384396E4(v56, v61, &qword_27DF0A400, &qword_238765850);
    sub_2384396E4(v61, v64, &qword_27DF0A408, &qword_23876A8D0);
    return sub_23846E8D0(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23846E418@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_23875DFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24[-v13];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
    sub_23875E090();
  }

  else
  {
    sub_23875E070();
  }

  v15 = sub_23875E060();

  sub_23875C4C0();
  sub_23846E86C(a1, v14);
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v17 = v25;
  *v16 = *&v24[8];
  *(v16 + 1) = v17;
  *(v16 + 4) = v26;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v14[*(v18 + 52)] = v15;
  *&v14[*(v18 + 56)] = 256;
  v19 = sub_23875E4A0();
  v21 = v20;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v22 = v19;
  v22[1] = v21;
  sub_23846E92C(v14, a3);
}

unint64_t sub_23846E6F4()
{
  result = qword_2814F0998;
  if (!qword_2814F0998)
  {
    sub_23875C880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814F0998);
  }

  return result;
}

unint64_t sub_23846E74C()
{
  result = qword_27DF0A418;
  if (!qword_27DF0A418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A410, &unk_238773730);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A418);
  }

  return result;
}

uint64_t sub_23846E804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A3D0, &unk_238771220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23846E86C(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875C980();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23846E8D0(uint64_t a1)
{
  v2 = sub_23875C980();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23846E92C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23846E99C()
{
  result = qword_27DF0A458;
  if (!qword_27DF0A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A408, &qword_23876A8D0);
    sub_23846EA54();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A458);
  }

  return result;
}

unint64_t sub_23846EA54()
{
  result = qword_27DF0A460;
  if (!qword_27DF0A460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A400, &qword_238765850);
    sub_23846EB0C();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A460);
  }

  return result;
}

unint64_t sub_23846EB0C()
{
  result = qword_27DF0A468;
  if (!qword_27DF0A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3F8, &unk_23876A8C0);
    sub_23846EB98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A468);
  }

  return result;
}

unint64_t sub_23846EB98()
{
  result = qword_27DF0A470;
  if (!qword_27DF0A470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3F0, &qword_238765848);
    sub_23846EC50();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A470);
  }

  return result;
}

unint64_t sub_23846EC50()
{
  result = qword_27DF0A478;
  if (!qword_27DF0A478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3E8, &unk_23876A8B0);
    sub_23846ECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A478);
  }

  return result;
}

unint64_t sub_23846ECDC()
{
  result = qword_27DF0A480;
  if (!qword_27DF0A480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3E0, &qword_238765840);
    sub_23846ED68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A480);
  }

  return result;
}

unint64_t sub_23846ED68()
{
  result = qword_27DF0A488;
  if (!qword_27DF0A488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3D8, &unk_23876A8A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A410, &unk_238773730);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A3D0, &unk_238771220);
    sub_23846E74C();
    sub_23843A3E8(&qword_2814F0870, &qword_27DF0A3D0, &unk_238771220);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A488);
  }

  return result;
}

id sub_23846EEBC(double a1)
{
  v1 = sub_23846F130(a1);
  if (!v1)
  {
    v17 = 0u;
    v18 = 0u;
LABEL_10:
    sub_238439884(&v17, &qword_27DF0A4A8, &qword_238767840);
    return 0;
  }

  v2 = v1;
  v3 = sub_23875EA50();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {

    goto LABEL_10;
  }

  sub_23846F4E8();
  if (swift_dynamicCast())
  {
    v5 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4B8, &qword_2387658E8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    v7 = *MEMORY[0x277CBF930];
    *(inited + 32) = *MEMORY[0x277CBF930];
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4C0, &qword_2387658F0);
    *(inited + 40) = v5;
    v8 = v7;
    v9 = v5;
    sub_23854B238(inited);
    swift_setDeallocating();
    sub_238439884(inited + 32, &qword_27DF0A4C8, &qword_23876E8E0);
    v10 = objc_allocWithZone(MEMORY[0x277CBF740]);
    type metadata accessor for CIContextOption(0);
    sub_23846F76C();
    v11 = sub_23875E910();

    v12 = [v10 initWithOptions_];

    [v15 extent];
    v13 = [v12 createCGImage:v15 fromRect:?];

    return v13;
  }

  return 0;
}

id sub_23846F130(double a1)
{
  v2 = sub_238757FE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v14 = sub_23875B260();
  result = 0;
  if (v13 >> 60 != 15)
  {
    v25 = v13;
    sub_23875B270();
    (*(v3 + 16))(v10, v12, v2);
    v16 = (*(v3 + 88))(v10, v2);
    if (v16 == *MEMORY[0x277CC6D70] || v16 == *MEMORY[0x277CC6D88] || v16 == *MEMORY[0x277CC6D78] || v16 == *MEMORY[0x277CC6D80])
    {
      v17 = *(v3 + 8);
      v17(v12, v2);
    }

    else
    {
      v17 = *(v3 + 8);
      v17(v12, v2);
      v17(v10, v2);
    }

    sub_23875B270();
    v18 = v14;
    v19 = v14;
    v20 = v25;
    sub_23846F534(v19, v25, a1);
    v17(v7, v2);
    v21 = sub_23875EA50();

    v22 = sub_23875E910();

    v23 = [objc_opt_self() filterWithName:v21 withInputParameters:v22];

    sub_23844C940(v18, v20);
    return v23;
  }

  return result;
}

unint64_t sub_23846F4E8()
{
  result = qword_27DF0A4B0;
  if (!qword_27DF0A4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0A4B0);
  }

  return result;
}

unint64_t sub_23846F534(uint64_t a1, unint64_t a2, double a3)
{
  v7 = sub_238757FE0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4D0, &unk_2387713A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  strcpy((inited + 32), "inputMessage");
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_23844C8EC(a1, a2);
  v13 = sub_23853BB18(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0A4D8, &qword_238766B00);
  (*(v8 + 16))(v11, v3, v7);
  v14 = (*(v8 + 88))(v11, v7);
  LODWORD(a1) = *MEMORY[0x277CC6D88];
  (*(v8 + 8))(v11, v7);
  if (v14 == a1)
  {
    v21 = MEMORY[0x277D85048];
    v20[0] = a3;
    sub_23846F7C4(v20, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v13;
    sub_2386CC844(v19, 0x6975517475706E69, 0xEF65636170537465, isUniquelyReferenced_nonNull_native);
    return v18;
  }

  return v13;
}

unint64_t sub_23846F76C()
{
  result = qword_27DF09148;
  if (!qword_27DF09148)
  {
    type metadata accessor for CIContextOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09148);
  }

  return result;
}

_OWORD *sub_23846F7C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23846F7D4()
{
  v1 = v0;
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875C120();
  v7 = sub_23875C1B0();
  v8 = sub_23875EFD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel);
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_23846F954()
{
  v1 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  sub_2384723D0(*(v0 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel) + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, &v13 - v6);
  sub_238472368(v7, v5, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return EnumCaseMultiPayload;
      }

      v11 = 8;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v11 = 5;
    }

    else
    {
      v11 = 6;
    }
  }

  else
  {
    v9 = 1;
    v10 = 3;
    if (EnumCaseMultiPayload != 2)
    {
      v10 = 4;
    }

    if (EnumCaseMultiPayload)
    {
      v9 = 2;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  sub_238472434(v5, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v11;
}

uint64_t sub_23846FABC(uint64_t a1)
{
  v27 = a1;
  v26 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v26);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - v8;
  MEMORY[0x28223BE20](v7);
  v28 = &v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A550, &qword_238765A50);
  v11 = *(v2 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2387632F0;
  sub_2384723D0(*(v1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel) + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v13 + v12);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2D0();

  v14 = v29;
  v29 = v13;
  sub_238569ACC(v14);
  v15 = v29;
  v16 = *(v29 + 16);
  if (!v16)
  {
LABEL_27:

    return 0;
  }

  v25 = v6;
  result = sub_23875ED50();
  v18 = v15 + v12 + v16 * v11;
  v19 = v15 + v12 + v11 * (v16 - 1);
  while (1)
  {
    if (v16 > *(v15 + 16))
    {
      __break(1u);
      return result;
    }

    sub_2384723D0(v19, v28);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_238472368(v28, v9, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v21 = 3;
        }

        else
        {
          v21 = 4;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v21 = 2;
      }

      else
      {
        v21 = 1;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v21 = 5;
      }

      else
      {
        v21 = 6;
      }

      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v21 = 8;
LABEL_20:
      sub_238472434(v9, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      goto LABEL_21;
    }

    v21 = EnumCaseMultiPayload;
LABEL_21:

    if (v21 == v27)
    {
      break;
    }

    v18 -= v11;
    v19 -= v11;
    if (!--v16)
    {
      goto LABEL_27;
    }
  }

  if (v16 >= *(v15 + 16))
  {
    goto LABEL_27;
  }

  v22 = v25;
  sub_2384723D0(v18, v25);

  v23 = sub_238500420();
  sub_238472434(v22, type metadata accessor for BankConnectAuthorizationNavigationDestination);
  return v23;
}

uint64_t sub_23846FE78(uint64_t a1)
{
  v3 = sub_23875C1E0();
  v31 = *(v3 - 8);
  v32 = v3;
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProvisioningStepView(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D3B0, &qword_238765A48);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v30 = a1;
  sub_2384701FC(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_238439884(v14, &qword_27DF0D3B0, &qword_238765A48);
    sub_23875C120();
    v23 = sub_23875C1B0();
    v24 = sub_23875EFE0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = v30;
      _os_log_impl(&dword_2383F8000, v23, v24, "Could not determine a destination for the authorization step %ld.", v25, 0xCu);
      MEMORY[0x23EE64DF0](v25, -1, -1);
    }

    (*(v31 + 8))(v6, v32);
    return 0;
  }

  else
  {
    sub_238472368(v14, v22, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    sub_2384723D0(v22, v20);
    v27 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel);
    *(objc_allocWithZone(type metadata accessor for ProvisioningStepViewController(0)) + qword_27DF0A510) = v27;
    sub_2384723D0(v20, v10);
    *&v10[*(v7 + 20)] = v27;
    swift_retain_n();
    v28 = sub_23875D080();
    sub_238472434(v20, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    sub_238472434(v22, type metadata accessor for BankConnectAuthorizationNavigationDestination);
    return v28;
  }
}

uint64_t sub_2384701FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v27 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A550, &qword_238765A50);
  v10 = *(v3 + 72);
  v24 = v3;
  v11 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2387632F0;
  sub_2384723D0(*(v2 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel) + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination, v12 + v11);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2D0();

  v13 = v28;
  v28 = v12;
  sub_238569ACC(v13);
  v14 = v28;
  v15 = *(v28 + 16);
  if (v15)
  {
    result = sub_23875ED50();
    v17 = v14 + v11 + v10 * (v15 - 1);
    v18 = -v10;
    while (1)
    {
      if (v15 > *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      sub_2384723D0(v17, v9);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238472368(v9, v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        break;
      }

      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v20 = 5;
        }

        else
        {
          v20 = 6;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v20 = 8;
LABEL_20:
        sub_238472434(v7, type metadata accessor for BankConnectAuthorizationNavigationDestination);
        goto LABEL_21;
      }

      v20 = EnumCaseMultiPayload;
LABEL_21:

      if (v20 == v26)
      {
        v22 = v25;
        sub_2384723D0(v17, v25);
        v21 = 0;
        goto LABEL_27;
      }

      v17 += v18;
      if (!--v15)
      {
        goto LABEL_25;
      }
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v20 = 3;
      }

      else
      {
        v20 = 4;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    goto LABEL_20;
  }

LABEL_25:
  v21 = 1;
  v22 = v25;
LABEL_27:

  return (*(v24 + 56))(v22, v21, 1, v27);
}

id sub_23847056C(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v33 = sub_23875C1E0();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v33);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for BankConnectAuthorizationError();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2D0();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_238439884(v11, &unk_27DF0B540, &qword_238765900);
    sub_23875C120();
    v18 = sub_23875C1B0();
    v19 = sub_23875EFE0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2383F8000, v18, v19, "Requested to build an error alert but no error was thrown during authorization.", v20, 2u);
      MEMORY[0x23EE64DF0](v20, -1, -1);
    }

    (*(v4 + 8))(v7, v33);
    return 0;
  }

  else
  {
    sub_238472368(v11, v16, type metadata accessor for BankConnectAuthorizationError);
    BankConnectAuthorizationError.failureReason.getter();
    if (v22)
    {
      v23 = sub_23875EA50();
    }

    else
    {
      v23 = 0;
    }

    v21 = [objc_opt_self() alertControllerWithTitle:v23 message:0 preferredStyle:1];

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v24 = qword_2814F1B90;
    v25 = sub_23875EA50();
    v26 = sub_23875EA50();
    v27 = sub_23875EA50();
    v28 = [v24 localizedStringForKey:v25 value:v26 table:v27];

    if (!v28)
    {
      sub_23875EA80();
      v28 = sub_23875EA50();
    }

    v29 = swift_allocObject();
    *(v29 + 16) = v34;
    *(v29 + 24) = a2;
    aBlock[4] = sub_238472348;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_238461390;
    aBlock[3] = &block_descriptor_1;
    v30 = _Block_copy(aBlock);

    v31 = [objc_opt_self() actionWithTitle:v28 style:1 handler:v30];
    _Block_release(v30);

    [v21 addAction_];
    sub_238472434(v16, type metadata accessor for BankConnectAuthorizationError);
  }

  return v21;
}

uint64_t sub_238470A74(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

id sub_238470B38()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FKBankConnectProvisioningFlowManager.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v1 = [v0 manager];
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_23846F7D4();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id FKBankConnectProvisioningFlowManager.init(paymentPass:institution:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPaymentPass:a1 institution:a2];

  return v4;
}

{
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(type metadata accessor for BankConnectProvisioningFlowManager());
  *&v2[OBJC_IVAR___FKBankConnectProvisioningFlowManager_manager] = sub_238471E64(a1);
  v8.receiver = v2;
  v8.super_class = FKBankConnectProvisioningFlowManager;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t FKBankConnectProvisioningFlowManager.rootStep.getter()
{
  v1 = [v0 manager];
  v2 = sub_23846F954();

  return v2;
}

BOOL FKBankConnectProvisioningFlowManager.hasErrorAlertToDisplay.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10 - v3;
  v5 = [v0 manager];
  v6 = *&v5[OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2D0();

  v7 = type metadata accessor for BankConnectAuthorizationError();
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_238439884(v4, &unk_27DF0B540, &qword_238765900);
  return v8;
}

uint64_t FKBankConnectProvisioningFlowManager.nextStep(after:)(uint64_t a1)
{
  v3 = [v1 manager];
  v4 = sub_23846FABC(a1);

  return v4;
}

uint64_t FKBankConnectProvisioningFlowManager.viewController(for:)(uint64_t a1)
{
  v3 = [v1 manager];
  v4 = sub_23846FE78(a1);

  return v4;
}

id FKBankConnectProvisioningFlowManager.errorAlert(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 manager];
  v6 = sub_23847056C(a1, a2);

  return v6;
}

id FKBankConnectProvisioningFlowManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_2384718F0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

uint64_t sub_2384719E8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_238471B18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningStepViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_238471B60(char *a1)
{
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B8B0();
  v7 = *&a1[qword_27DF0A510];
  v8 = a1;
  sub_23850A5BC(v6);
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_238471CC8()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t sub_238471D54(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_238471DD0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_238472494(a1, &v10 - v6);
  v8 = *a2;
  return sub_238505570(v7);
}

id sub_238471E64(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_23875A820();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  sub_23875EFB0();
  v17 = v13[8];
  v18 = sub_23875A9A0();
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  v19 = v13[9];
  v20 = *MEMORY[0x277CC8260];
  v21 = sub_23875AB40();
  (*(*(v21 - 8) + 104))(&v16[v19], v20, v21);
  *&v16[v13[7]] = a1;
  v16[v13[10]] = 1;
  v22 = a1;
  sub_23875A7E0();
  sub_238758CC0();
  v23 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v24 = sub_238758870();

  v25 = type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  (*(v5 + 16))(v9, v11, v4);
  v29 = sub_2384ABCA4(v16, 0, v9, v23, v24, nullsub_1, 0, v28);

  (*(v5 + 8))(v11, v4);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI34BankConnectProvisioningFlowManager_viewModel] = v29;
  v33.receiver = v2;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

unint64_t type metadata accessor for FKBankConnectProvisioningFlowManager()
{
  result = qword_27DF0A508;
  if (!qword_27DF0A508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0A508);
  }

  return result;
}

uint64_t sub_238472278()
{
  result = type metadata accessor for BankConnectAuthorizationNavigationDestination(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BankConnectAuthorizationFlowViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238472368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384723D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238472434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238472494(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_238472504()
{
  result = qword_27DF0A558;
  if (!qword_27DF0A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A560, &qword_238765AA0);
    sub_238472590();
    sub_238472A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A558);
  }

  return result;
}

unint64_t sub_238472590()
{
  result = qword_27DF0D1D0;
  if (!qword_27DF0D1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A570, &qword_238765AA8);
    sub_23847261C();
    sub_238472908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D1D0);
  }

  return result;
}

unint64_t sub_23847261C()
{
  result = qword_27DF0D1E0;
  if (!qword_27DF0D1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A580, &qword_238765AB0);
    sub_238472DD4(&unk_27DF0D1F0, type metadata accessor for BankConnectTermsAndConditionsView);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A590, &qword_238765AB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D200, &qword_238765AC0);
    type metadata accessor for BankConnectPrivacyOnboardingView(255);
    sub_238472DD4(&unk_27DF0A5A0, type metadata accessor for BankConnectPrivacyOnboardingView);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
    sub_2384727E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D1E0);
  }

  return result;
}

unint64_t sub_2384727E4()
{
  result = qword_27DF0A5B0;
  if (!qword_27DF0A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D210, &qword_238765AC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D220, &qword_238765AD0);
    sub_2384728A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A5B0);
  }

  return result;
}

unint64_t sub_2384728A4()
{
  result = qword_27DF0A5C0;
  if (!qword_27DF0A5C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0D220, &qword_238765AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A5C0);
  }

  return result;
}

unint64_t sub_238472908()
{
  result = qword_27DF0D230;
  if (!qword_27DF0D230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A5D0, &qword_238765AD8);
    sub_2384729EC();
    swift_getOpaqueTypeConformance2();
    sub_238472A40();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D230);
  }

  return result;
}

unint64_t sub_2384729EC()
{
  result = qword_27DF0D240;
  if (!qword_27DF0D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D240);
  }

  return result;
}

unint64_t sub_238472A40()
{
  result = qword_27DF0A5E0;
  if (!qword_27DF0A5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A5E0);
  }

  return result;
}

unint64_t sub_238472A94()
{
  result = qword_27DF0D250;
  if (!qword_27DF0D250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A5F0, &qword_238765AE0);
    sub_238472B20();
    sub_238472C80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D250);
  }

  return result;
}

unint64_t sub_238472B20()
{
  result = qword_27DF0D260;
  if (!qword_27DF0D260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A600, &qword_238765AE8);
    sub_238472BD8();
    sub_238472C2C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D260);
  }

  return result;
}

unint64_t sub_238472BD8()
{
  result = qword_27DF0D270;
  if (!qword_27DF0D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D270);
  }

  return result;
}

unint64_t sub_238472C2C()
{
  result = qword_27DF0A610;
  if (!qword_27DF0A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A610);
  }

  return result;
}

unint64_t sub_238472C80()
{
  result = qword_27DF0D280;
  if (!qword_27DF0D280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0A620, &unk_238765AF0);
    type metadata accessor for BankConnectAccountConnectionView(255);
    sub_238472DD4(&unk_27DF0D290, type metadata accessor for BankConnectAccountConnectionView);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for BankConnectOfflineLabPrivacyConsentView(255);
    sub_238472DD4(qword_27DF0A630, type metadata accessor for BankConnectOfflineLabPrivacyConsentView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D280);
  }

  return result;
}

uint64_t sub_238472DD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238472E1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BankConnectReviewAccountConnectionFlowView();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23875BCB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BC90();
  objc_allocWithZone(type metadata accessor for BankConnectReviewAccountConnectionFlowViewController());
  sub_23875EFB0();
  (*(v14 + 16))(&v12[v9[7]], v17, v13);
  *&v12[v9[8]] = a2;
  v18 = &v12[v9[9]];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = a2;

  v20 = sub_23875D080();
  (*(v14 + 8))(v17, v13);
  return v20;
}

uint64_t type metadata accessor for BankConnectReviewAccountConnectionFlowViewController()
{
  result = qword_27DF0A658;
  if (!qword_27DF0A658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id BankConnectReviewAccountConnectionFlowViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectReviewAccountConnectionFlowViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectReviewAccountConnectionFlowViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_238473454()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_238473588(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_238473618()
{
  sub_238473714(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_238473714(319, &qword_27DF0A6E8, MEMORY[0x277CC6F70], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_238473778();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_238473714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238473778()
{
  if (!qword_27DF0A6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D390, &unk_238763350);
    v0 = sub_23875E340();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A6F0);
    }
  }
}

uint64_t sub_2384737F8(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectAccountPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[1] = *(a1 + *(v2 + 20));
  swift_getKeyPath();
  sub_2384756BC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_238476DF4(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for BankConnectAccountPickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A718, &qword_238765C48);
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0);
  sub_2384757A0(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  sub_23843A3E8(&qword_27DF0A710, &qword_27DF0A718, &qword_238765C48);
  sub_23875E370();
}

uint64_t sub_238473AC0(uint64_t a1)
{
  v2 = sub_23875BCB0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_238758650();
}

uint64_t sub_238473B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v146 = a2;
  v122 = a1;
  v143 = a3;
  v120 = sub_23875C880();
  v119 = *(v120 - 8);
  v3 = *(v119 + 64);
  v4 = MEMORY[0x28223BE20](v120);
  v116 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v115 = &v106 - v6;
  v118 = sub_23875E360();
  v117 = *(v118 - 8);
  v7 = *(v117 + 64);
  MEMORY[0x28223BE20](v118);
  v114 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v141 = *(v9 - 8);
  v142 = v9;
  v10 = *(v141 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v106 - v13;
  v138 = sub_23875BCB0();
  v135 = *(v138 - 8);
  v14 = *(v135 + 64);
  MEMORY[0x28223BE20](v138);
  v107 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A730, &unk_238765CD0);
  v16 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v137 = &v106 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v131 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v144 = &v106 - v23;
  MEMORY[0x28223BE20](v22);
  v130 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v140 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v139 = &v106 - v29;
  v30 = sub_23875C950();
  v127 = *(v30 - 8);
  v128 = v30;
  v31 = *(v127 + 64);
  MEMORY[0x28223BE20](v30);
  v126 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_238758680();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v111 = &v106 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v106 - v37;
  v125 = type metadata accessor for BankConnectAccountPickerView(0);
  v39 = *(v125 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A738, &qword_238765CE8);
  v123 = *(v124 - 8);
  v41 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v121 = &v106 - v42;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A740, &qword_238765CF0);
  v134 = *(v136 - 8);
  v43 = *(v134 + 64);
  v44 = MEMORY[0x28223BE20](v136);
  v133 = &v106 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v145 = &v106 - v46;
  sub_23875ED50();
  v132 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384756BC(v146, &v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = *(v34 + 16);
  v48 = v122;
  v109 = v34 + 16;
  v108 = v47;
  v47(v38, v122, v33);
  v49 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v50 = *(v34 + 80);
  v51 = swift_allocObject();
  sub_238476DF4(&v106 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v51 + v49, type metadata accessor for BankConnectAccountPickerView);
  v52 = *(v34 + 32);
  v110 = v33;
  v53 = v52(v51 + ((v40 + v50 + v49) & ~v50), v38, v33);
  MEMORY[0x28223BE20](v53);
  v54 = v146;
  *(&v106 - 2) = v48;
  *(&v106 - 1) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A748, &qword_238765CF8);
  sub_2384758BC();
  v55 = v121;
  sub_23875E200();
  v56 = v126;
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0A770, &qword_27DF0A738, &qword_238765CE8);
  sub_2384757A0(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  v57 = v124;
  v58 = v128;
  sub_23875DB30();
  (*(v127 + 8))(v56, v58);
  (*(v123 + 8))(v55, v57);
  v59 = v130;
  sub_238758640();
  v60 = v135;
  v61 = *(v135 + 56);
  v62 = 1;
  v63 = v138;
  v61(v59, 0, 1, v138);
  v64 = *(v54 + *(v125 + 20));
  v65 = *(v64 + 16);
  if (v65)
  {
    v66 = v111;
    v67 = v110;
    v108(v111, v64 + ((v50 + 32) & ~v50) + *(v34 + 72) * (v65 - 1), v110);
    v68 = v144;
    sub_238758640();
    (*(v34 + 8))(v66, v67);
    v62 = 0;
  }

  else
  {
    v68 = v144;
  }

  v61(v68, v62, 1, v63);
  v69 = *(v129 + 48);
  v70 = v137;
  sub_23843981C(v59, v137, &unk_27DF0B520, &qword_2387681F0);
  sub_23843981C(v68, v70 + v69, &unk_27DF0B520, &qword_2387681F0);
  v71 = *(v60 + 48);
  v72 = v71(v70, 1, v63);
  v73 = v131;
  if (v72 == 1)
  {
    sub_238439884(v68, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v59, &unk_27DF0B520, &qword_2387681F0);
    if (v71(v70 + v69, 1, v63) == 1)
    {
      sub_238439884(v70, &unk_27DF0B520, &qword_2387681F0);
      v74 = 1;
      v75 = v142;
LABEL_18:
      v90 = v139;
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  sub_23843981C(v70, v131, &unk_27DF0B520, &qword_2387681F0);
  if (v71(v70 + v69, 1, v63) == 1)
  {
    sub_238439884(v144, &unk_27DF0B520, &qword_2387681F0);
    sub_238439884(v59, &unk_27DF0B520, &qword_2387681F0);
    (*(v60 + 8))(v73, v63);
LABEL_11:
    sub_238439884(v70, &qword_27DF0A730, &unk_238765CD0);
    v75 = v142;
    goto LABEL_12;
  }

  v91 = v70 + v69;
  v92 = v107;
  (*(v60 + 32))(v107, v91, v63);
  sub_2384757A0(&qword_27DF0A788, MEMORY[0x277CC95F0]);
  v93 = sub_23875E9E0();
  v94 = *(v60 + 8);
  v94(v92, v63);
  sub_238439884(v144, &unk_27DF0B520, &qword_2387681F0);
  sub_238439884(v59, &unk_27DF0B520, &qword_2387681F0);
  v94(v73, v63);
  sub_238439884(v70, &unk_27DF0B520, &qword_2387681F0);
  v75 = v142;
  if (v93)
  {
    v74 = 1;
    goto LABEL_18;
  }

LABEL_12:
  v76 = v114;
  sub_23875E350();
  v77 = v115;
  sub_2384D5138(v115);
  v78 = v119;
  v79 = v116;
  v80 = v120;
  (*(v119 + 104))(v116, *MEMORY[0x277CDF9D8], v120);
  v81 = sub_23875C870();
  v82 = *(v78 + 8);
  v82(v79, v80);
  v82(v77, v80);
  if (v81)
  {
    v83 = 0x4028000000000000;
  }

  else
  {
    v83 = 0x4030000000000000;
  }

  v84 = sub_23875D780();
  v85 = v113;
  (*(v117 + 32))(v113, v76, v118);
  v86 = &v85[*(v75 + 36)];
  *v86 = v84;
  *(v86 + 1) = 0;
  *(v86 + 2) = v83;
  *(v86 + 3) = 0;
  *(v86 + 4) = 0;
  v86[40] = 0;
  v87 = v85;
  v88 = v112;
  sub_2384396E4(v87, v112, &qword_27DF09510, &qword_2387637D0);
  v89 = v88;
  v90 = v139;
  sub_2384396E4(v89, v139, &qword_27DF09510, &qword_2387637D0);
  v74 = 0;
LABEL_19:
  (*(v141 + 56))(v90, v74, 1, v75);
  v96 = v133;
  v95 = v134;
  v97 = v90;
  v98 = *(v134 + 16);
  v99 = v145;
  v100 = v136;
  v98(v133, v145, v136);
  v101 = v140;
  sub_23843981C(v97, v140, &qword_27DF09528, &qword_238765CE0);
  v102 = v143;
  v98(v143, v96, v100);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A780, &qword_238765D08);
  sub_23843981C(v101, &v102[*(v103 + 48)], &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v97, &qword_27DF09528, &qword_238765CE0);
  v104 = *(v95 + 8);
  v104(v99, v100);
  sub_238439884(v101, &qword_27DF09528, &qword_238765CE0);
  v104(v96, v100);
}

uint64_t sub_238474ADC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758530();
  v7 = sub_23875A9F0();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = *(type metadata accessor for BankConnectAccountPickerView(0) + 24);
  sub_23843981C(v6, v4, &qword_27DF0D390, &unk_238763350);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  sub_23875E2F0();
  sub_238439884(v6, &qword_27DF0D390, &unk_238763350);
}

uint64_t sub_238474CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a1;
  v48 = a2;
  v55 = a3;
  v3 = sub_23875A9F0();
  v56 = *(v3 - 8);
  v4 = *(v56 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A790, &qword_238765D10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = sub_238758680();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v57 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for BankConnectAccountPickerItemView(0);
  v23 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v25 = (&v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A748, &qword_238765CF8);
  v26 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - v27;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v53 = v20;
  v54 = v19;
  (*(v20 + 16))(v57, v47, v19);
  sub_238758530();
  v28 = v56;
  (*(v56 + 56))(v18, 0, 1, v3);
  v29 = *(type metadata accessor for BankConnectAccountPickerView(0) + 24);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6D0, &qword_238765BB8);
  MEMORY[0x23EE62DC0](v30);
  v31 = *(v6 + 48);
  sub_23843981C(v18, v9, &qword_27DF0D390, &unk_238763350);
  sub_23843981C(v16, &v9[v31], &qword_27DF0D390, &unk_238763350);
  v32 = *(v28 + 48);
  if (v32(v9, 1, v3) != 1)
  {
    v37 = v46;
    sub_23843981C(v9, v46, &qword_27DF0D390, &unk_238763350);
    if (v32(&v9[v31], 1, v3) != 1)
    {
      v38 = v56;
      v39 = v45;
      (*(v56 + 32))(v45, &v9[v31], v3);
      sub_2384757A0(&qword_27DF0A798, MEMORY[0x277CC8058]);
      v36 = sub_23875E9E0();
      v40 = *(v38 + 8);
      v40(v39, v3);
      sub_238439884(v16, &qword_27DF0D390, &unk_238763350);
      sub_238439884(v18, &qword_27DF0D390, &unk_238763350);
      v40(v46, v3);
      sub_238439884(v9, &qword_27DF0D390, &unk_238763350);
      v35 = v53;
      v34 = v54;
      goto LABEL_10;
    }

    sub_238439884(v16, &qword_27DF0D390, &unk_238763350);
    sub_238439884(v18, &qword_27DF0D390, &unk_238763350);
    (*(v56 + 8))(v37, v3);
    v35 = v53;
    v34 = v54;
    goto LABEL_8;
  }

  sub_238439884(v16, &qword_27DF0D390, &unk_238763350);
  sub_238439884(v18, &qword_27DF0D390, &unk_238763350);
  v33 = v32(&v9[v31], 1, v3);
  v35 = v53;
  v34 = v54;
  if (v33 != 1)
  {
LABEL_8:
    sub_238439884(v9, &qword_27DF0A790, &qword_238765D10);
    v36 = 0;
    goto LABEL_10;
  }

  sub_238439884(v9, &qword_27DF0D390, &unk_238763350);
  v36 = 1;
LABEL_10:
  *v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v41 = v52;
  (*(v35 + 32))(v25 + *(v52 + 20), v57, v34);
  *(v25 + *(v41 + 24)) = v36 & 1;
  v42 = v50;
  sub_238476DF4(v25, v50, type metadata accessor for BankConnectAccountPickerItemView);
  *(v42 + *(v51 + 36)) = 0;
  sub_2384396E4(v42, v55, &qword_27DF0A748, &qword_238765CF8);
}

uint64_t sub_238475364()
{
  v1 = type metadata accessor for ContinuousGroupBoxStyle();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A6F8, &qword_238765C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  v12 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A700, &qword_238765C40);
  sub_2384755B0();
  sub_23875E470();
  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v4 + *(v1 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF0A720, &qword_27DF0A6F8, &qword_238765C38);
  sub_2384757A0(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_238475660(v4);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2384755B0()
{
  result = qword_27DF0A708;
  if (!qword_27DF0A708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A700, &qword_238765C40);
    sub_23843A3E8(&qword_27DF0A710, &qword_27DF0A718, &qword_238765C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A708);
  }

  return result;
}

uint64_t sub_238475660(uint64_t a1)
{
  v2 = type metadata accessor for ContinuousGroupBoxStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384756BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAccountPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238475720@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for BankConnectAccountPickerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_238473B88(a1, v6, a2);
}

uint64_t sub_2384757A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384757E8()
{
  v1 = *(type metadata accessor for BankConnectAccountPickerView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_238758680() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_238474ADC();
}

unint64_t sub_2384758BC()
{
  result = qword_27DF0A750;
  if (!qword_27DF0A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A748, &qword_238765CF8);
    sub_2384757A0(&qword_27DF0A758, type metadata accessor for BankConnectAccountPickerItemView);
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A750);
  }

  return result;
}

uint64_t sub_2384759C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7B0, &qword_238765DC8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  *v14 = sub_23875CE60();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7B8, &qword_238765DD0);
  sub_238475BEC(v1, &v14[*(v15 + 44)]);
  sub_2384D5138(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDF9D8], v3);
  v16 = sub_23875C870();
  v17 = *(v4 + 8);
  v17(v8, v3);
  v17(v10, v3);
  if (v16)
  {
    v18 = 0x4028000000000000;
  }

  else
  {
    v18 = 0x4030000000000000;
  }

  v19 = sub_23875D780();
  sub_2384396E4(v14, a1, &qword_27DF0A7B0, &qword_238765DC8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7C0, &qword_238765DD8);
  v21 = a1 + *(result + 36);
  *v21 = v19;
  *(v21 + 8) = 0x4028000000000000;
  *(v21 + 16) = v18;
  *(v21 + 24) = 0x4028000000000000;
  *(v21 + 32) = v18;
  *(v21 + 40) = 0;
  return result;
}

uint64_t sub_238475BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7C8, &qword_238765DE0);
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v5 = &v31 - v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7D0, &qword_238765DE8);
  v6 = *(*(v32 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v32);
  v38 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  MEMORY[0x28223BE20](v9);
  v36 = &v31 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7D8, &qword_238765DF0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v34 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - v17;
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v18 = sub_23875D030();
  *(v18 + 1) = 0x4008000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7E0, &qword_238765DF8);
  sub_23847602C(a1, &v18[*(v19 + 44)]);
  v20 = sub_23875E0D0();
  v21 = sub_23875DFC0();
  KeyPath = swift_getKeyPath();
  v40 = v20;
  v41 = KeyPath;
  v42 = v21;
  sub_23875D870();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09678, &unk_2387639F0);
  sub_238448F8C();
  sub_23875DAF0();

  if (*(a1 + *(type metadata accessor for BankConnectAccountPickerItemView(0) + 24)))
  {
    v23 = 1.0;
  }

  else
  {
    v23 = 0.0;
  }

  (*(v35 + 32))(v11, v5, v37);
  *&v11[*(v32 + 36)] = v23;
  v24 = v36;
  sub_2384396E4(v11, v36, &qword_27DF0A7D0, &qword_238765DE8);
  v25 = v34;
  sub_23843981C(v18, v34, &qword_27DF0A7D8, &qword_238765DF0);
  v26 = v38;
  sub_2383FF8B0(v24, v38);
  v27 = v39;
  sub_23843981C(v25, v39, &qword_27DF0A7D8, &qword_238765DF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7E8, &qword_238765E30);
  v29 = v27 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_2383FF8B0(v26, v27 + *(v28 + 64));
  sub_2383FF920(v24);
  sub_238439884(v18, &qword_27DF0A7D8, &qword_238765DF0);
  sub_2383FF920(v26);
  sub_238439884(v25, &qword_27DF0A7D8, &qword_238765DF0);
}

uint64_t sub_23847602C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v3 = sub_23875BD20();
  v81 = *(v3 - 8);
  v82 = v3;
  v4 = *(v81 + 64);
  MEMORY[0x28223BE20](v3);
  v80 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238757AD0();
  v78 = *(v6 - 8);
  v79 = v6;
  v7 = *(v78 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238758B60();
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = *(v76 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7F0, &qword_238765E38);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v75 - v16;
  v18 = sub_238758090();
  v84 = *(v18 - 8);
  v85 = v18;
  v19 = *(v84 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v75 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A7F8, &qword_238765E40);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v87 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v75 - v28;
  sub_23875ED50();
  v86 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v29 = sub_23875CE40();
  *(v29 + 1) = 0;
  v29[16] = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A800, &qword_238765E48);
  sub_238476900(a1, &v29[*(v30 + 44)]);
  v31 = sub_23875D980();
  KeyPath = swift_getKeyPath();
  v33 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A808, &qword_238765E80) + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = swift_getKeyPath();
  v35 = &v29[*(v24 + 36)];
  *v35 = v34;
  *(v35 + 1) = 1;
  v35[16] = 0;
  LODWORD(KeyPath) = *(type metadata accessor for BankConnectAccountPickerItemView(0) + 20);
  sub_2387585E0();
  v36 = sub_238759660();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v17, 1, v36) == 1)
  {
    sub_238439884(v17, &qword_27DF0A7F0, &qword_238765E38);
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
  }

  else
  {
    sub_238759650();
    (*(v37 + 8))(v17, v36);
    sub_238758B50();
    (*(v76 + 8))(v13, v77);
    (*(v84 + 32))(v83, v22, v85);
    sub_238758590();
    v43 = v78;
    v42 = v79;
    v44 = (*(v78 + 88))(v9, v79);
    if (v44 != *MEMORY[0x277CC6B50] && v44 != *MEMORY[0x277CC6B58])
    {
      (*(v43 + 8))(v9, v42);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_2387632F0;
    v46 = v80;
    sub_23875BCC0();
    v47 = sub_238758080();
    v49 = v48;
    (*(v81 + 8))(v46, v82);
    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = sub_238448C58();
    *(v45 + 32) = v47;
    *(v45 + 40) = v49;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v50 = qword_2814F1B90;
    v51 = sub_23875EA50();

    v52 = sub_23875EA50();
    v53 = sub_23875EA50();
    v54 = [v50 localizedStringForKey:v51 value:v52 table:v53];

    sub_23875EA80();
    v55 = sub_23875EAA0();
    v57 = v56;

    v89 = v55;
    v90 = v57;
    sub_2384397A8();
    v58 = sub_23875DAA0();
    v60 = v59;
    LOBYTE(v57) = v61;
    LODWORD(v89) = sub_23875D440();
    v62 = sub_23875DA20();
    v64 = v63;
    v66 = v65;
    sub_2384397FC(v58, v60, v57 & 1);

    sub_23875D7F0();
    v38 = sub_23875DA60();
    v39 = v67;
    v69 = v68;
    v41 = v70;

    sub_2384397FC(v62, v64, v66 & 1);

    (*(v84 + 8))(v83, v85);
    v40 = v69 & 1;
    sub_23843980C(v38, v39, v69 & 1);
  }

  v71 = v87;
  sub_23843981C(v29, v87, &qword_27DF0A7F8, &qword_238765E40);
  v72 = v88;
  sub_23843981C(v71, v88, &qword_27DF0A7F8, &qword_238765E40);
  v73 = (v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A810, &qword_238765EB8) + 48));
  sub_238476F5C(v38, v39, v40, v41);
  sub_238476FA0(v38, v39, v40, v41);
  *v73 = v38;
  v73[1] = v39;
  v73[2] = v40;
  v73[3] = v41;
  sub_238439884(v29, &qword_27DF0A7F8, &qword_238765E40);
  sub_238476FA0(v38, v39, v40, v41);
  sub_238439884(v71, &qword_27DF0A7F8, &qword_238765E40);
}

uint64_t sub_238476900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = sub_238757FC0();
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  MEMORY[0x28223BE20](v3);
  v66 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A818, &qword_238765EC8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  sub_23875ED50();
  v69 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v64 = *(type metadata accessor for BankConnectAccountPickerItemView(0) + 20);
  v73 = sub_2387585B0();
  v74 = v17;
  v65 = sub_2384397A8();
  v18 = sub_23875DAA0();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = *(v6 + 36);
  v57 = a1;
  v26 = &v16[v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0);
  v62 = v6;
  v63 = v27;
  v28 = *(v27 + 28);
  v29 = v16;
  v30 = *MEMORY[0x277CE0B28];
  v31 = sub_23875DA00();
  v32 = *(v31 - 8);
  v58 = *(v32 + 104);
  v59 = v32 + 104;
  v58(v26 + v28, v30, v31);
  *v26 = swift_getKeyPath();
  *v29 = v18;
  *(v29 + 8) = v20;
  *(v29 + 16) = v22 & 1;
  *(v29 + 24) = v24;
  v56 = v29;
  sub_23875CF00();
  v33 = sub_23875DA90();
  v35 = v34;
  v60 = v36;
  v61 = v37;
  v38 = v66;
  sub_2387585C0();
  v39 = sub_238757FB0();
  v41 = v40;
  (*(v67 + 8))(v38, v68);
  v73 = v39;
  v74 = v41;
  v42 = sub_23875DAA0();
  v44 = v43;
  LOBYTE(v41) = v45;
  v47 = v46;
  v48 = &v14[*(v62 + 36)];
  v58(v48 + *(v63 + 28), *MEMORY[0x277CE0B20], v31);
  *v48 = swift_getKeyPath();
  *v14 = v42;
  *(v14 + 1) = v44;
  v14[16] = v41 & 1;
  *(v14 + 3) = v47;
  v49 = v71;
  sub_23843981C(v29, v71, &qword_27DF0A818, &qword_238765EC8);
  v50 = v70;
  sub_23843981C(v14, v70, &qword_27DF0A818, &qword_238765EC8);
  v51 = v72;
  sub_23843981C(v49, v72, &qword_27DF0A818, &qword_238765EC8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A820, &qword_238765F08);
  v53 = v51 + *(v52 + 48);
  *v53 = v33;
  *(v53 + 8) = v35;
  LOBYTE(v47) = v60 & 1;
  *(v53 + 16) = v60 & 1;
  *(v53 + 24) = v61;
  sub_23843981C(v50, v51 + *(v52 + 64), &qword_27DF0A818, &qword_238765EC8);
  sub_23843980C(v33, v35, v47);

  sub_238439884(v14, &qword_27DF0A818, &qword_238765EC8);
  sub_238439884(v56, &qword_27DF0A818, &qword_238765EC8);
  sub_238439884(v50, &qword_27DF0A818, &qword_238765EC8);
  sub_2384397FC(v33, v35, v47);

  sub_238439884(v49, &qword_27DF0A818, &qword_238765EC8);
}

uint64_t sub_238476DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_238476E84()
{
  sub_238473714(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_238758680();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238476F5C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23843980C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_238476FA0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2384397FC(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_238476FE4()
{
  result = qword_27DF0A828;
  if (!qword_27DF0A828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A7C0, &qword_238765DD8);
    sub_23843A3E8(&qword_27DF0A830, &qword_27DF0A7B0, &qword_238765DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A828);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2384770BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_238477104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23847717C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_23875CDB0();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v23 - v7;
  v9 = *v1;
  v34 = v1[1];
  v35 = v9;
  v33 = *(v1 + 40);
  v29 = *(v1 + 4);
  v32 = v29;
  v26 = v33;
  v10 = swift_allocObject();
  v11 = v1[1];
  v10[1] = *v1;
  v10[2] = v11;
  *(v10 + 41) = *(v1 + 25);
  sub_238477AFC(&v35, &v30);
  sub_23843981C(&v34, &v30, &qword_27DF0A118, &unk_2387655C0);
  sub_23843981C(&v32, &v30, &qword_27DF0A838, &unk_238765FF8);
  sub_23875E200();
  v31 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v12 = swift_allocObject();
  v13 = v1[1];
  v12[1] = *v1;
  v12[2] = v13;
  *(v12 + 41) = *(v1 + 25);
  sub_238477AFC(&v35, &v30);
  sub_23843981C(&v34, &v30, &qword_27DF0A118, &unk_2387655C0);
  sub_23843981C(&v32, &v30, &qword_27DF0A838, &unk_238765FF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F88, &qword_238764EF0);
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  v14 = v28;
  sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0);
  v15 = v27;
  sub_23875DED0();

  (*(v5 + 8))(v8, v15);
  if (v26 == 1)
  {
    v16 = v29;
  }

  else
  {

    sub_23875EFF0();
    v17 = sub_23875D730();
    sub_23875C110();

    v18 = v23;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v32, &qword_27DF0A838, &unk_238765FF8);
    (*(v24 + 8))(v18, v25);
    v16 = v30;
  }

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v16 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A840, &qword_238766038);
  v22 = (v14 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_238477BAC;
  v22[2] = v20;
  return result;
}

uint64_t sub_238477640(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v3[1] = *(a1 + 16);
  v5 = *(&v4 + 1);
  sub_23843981C(&v5, v3, &qword_27DF0A848, &unk_238766070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1B0();
  v3[0] = v4;
  sub_23875E1C0();
  sub_238439884(&v4, &qword_27DF0A118, &unk_2387655C0);
}

uint64_t sub_238477774@<X0>(uint64_t a1@<X8>)
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

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_238477918()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  sub_238462EB0();
  sub_23875C790();
}

uint64_t sub_238477A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 8) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09FB0, &qword_238766040);
  sub_23875E1A0();
  *(a2 + 16) = v6;
  *(a2 + 32) = swift_getKeyPath();
  *(a2 + 72) = 0;
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_2384348B8(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

unint64_t sub_238477BBC()
{
  result = qword_27DF0A850;
  if (!qword_27DF0A850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A840, &qword_238766038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF09F88, &qword_238764EF0);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF09F98, &qword_27DF09F88, &qword_238764EF0);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A850);
  }

  return result;
}

id sub_238477D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v145 = a3;
  v146 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B070, &unk_238766290);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v117 - v6;
  v122 = sub_238759FF0();
  v121 = *(v122 - 8);
  v7 = *(v121 + 64);
  v8 = MEMORY[0x28223BE20](v122);
  v117 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v118 = &v117 - v10;
  v11 = sub_23875A010();
  v140 = *(v11 - 8);
  v141 = v11;
  v12 = *(v140 + 64);
  MEMORY[0x28223BE20](v11);
  v142 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v134 = &v117 - v16;
  v17 = sub_238758F50();
  v143 = *(v17 - 8);
  v144 = v17;
  v18 = *(v143 + 64);
  MEMORY[0x28223BE20](v17);
  v133 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2387587A0();
  v135 = *(v20 - 8);
  v136 = v20;
  v21 = *(v135 + 64);
  MEMORY[0x28223BE20](v20);
  v138 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_238758AD0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v131 = &v117 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v129 = &v117 - v28;
  v128 = sub_23875BC40();
  v127 = *(v128 - 8);
  v29 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v123 = &v117 - v33;
  v137 = sub_238758090();
  v124 = *(v137 - 8);
  v34 = *(v124 + 64);
  v35 = MEMORY[0x28223BE20](v137);
  v125 = &v117 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v117 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v132 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v130 = &v117 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v117 - v45;
  v47 = sub_2387594B0();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v117 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_238758E70();
  sub_2387594A0();
  (*(v48 + 8))(v51, v47);
  v53 = sub_23875EA50();

  [v52 setIdentifier_];

  v139 = a1;
  sub_238758E50();
  if (!v54)
  {
    sub_23843981C(v146, v46, &qword_27DF0A928, &qword_238766270);
    v56 = v140;
    v55 = v141;
    if ((*(v140 + 48))(v46, 1, v141) == 1)
    {
      sub_238439884(v46, &qword_27DF0A928, &qword_238766270);
      v57 = 0;
      goto LABEL_6;
    }

    sub_238759E80();
    (*(v56 + 8))(v46, v55);
  }

  v57 = sub_23875EA50();

LABEL_6:
  [v52 setPaymentHash_];

  v58 = v139;
  sub_238758EA0();
  sub_238758060();
  v59 = v124;
  v60 = *(v124 + 8);
  v61 = v137;
  v60(v38, v137);
  v62 = sub_23875F1E0();
  [v52 setAmount_];

  sub_238758EA0();
  sub_238758040();
  v63 = v38;
  v64 = v58;
  v65 = v61;
  v119 = v60;
  v60(v63, v61);
  v66 = sub_23875EA50();

  [v52 setCurrencyCode_];

  v67 = v123;
  sub_238758EE0();
  if ((*(v59 + 48))(v67, 1, v61) == 1)
  {
    sub_238439884(v67, &unk_27DF0B080, &unk_2387662A0);
  }

  else
  {
    (*(v59 + 32))(v125, v67, v61);
    v68 = [objc_allocWithZone(MEMORY[0x277D38148]) init];
    sub_238758060();
    v69 = sub_23875F1E0();
    sub_238758040();
    v70 = sub_23875EA50();

    v71 = PKCurrencyAmountMake();

    [v68 setDestinationCurrencyAmount_];
    v72 = sub_238758F00();
    if ((v74 & 0x100000000) == 0)
    {
      v75 = HIDWORD(v72);
      v76 = HIWORD(v72);
      v77 = v73 >> 16;
      v123 = HIDWORD(v73);
      v78 = HIWORD(v73);
      v124 = v74 >> 16;
      v79 = v72;
      v80 = v74;
      v81 = v73;
      v82 = objc_allocWithZone(MEMORY[0x277CCA980]);
      v147 = v79;
      v148 = v75;
      v65 = v137;
      v149 = v76;
      v150 = v81;
      v151 = v77;
      v152 = v123;
      v153 = v78;
      v154 = v80;
      v64 = v139;
      v155 = v124;
      v83 = [v82 initWithDecimal_];
      [v68 setExchangeRate_];
    }

    [v52 setForeignExchangeInformation_];

    v119(v125, v65);
  }

  v84 = v126;
  sub_238758E80();
  v85 = sub_23875BB40();
  v86 = v127;
  v87 = *(v127 + 8);
  v88 = v128;
  v87(v84, v128);
  [v52 setTransactionDate_];

  v89 = v129;
  sub_238758E40();
  v90 = (*(v86 + 48))(v89, 1, v88);
  v91 = v143;
  v92 = v144;
  v93 = v138;
  if (v90 == 1)
  {
    v94 = 0;
  }

  else
  {
    v94 = sub_23875BB40();
    v87(v89, v88);
  }

  [v52 setTransactionStatusChangedDate_];

  [v52 setTransactionSource_];
  sub_238758F30();
  v95 = sub_23875F170();
  [v52 setTransactionStatus_];
  sub_238758E90();
  v96 = MEMORY[0x23EE63C40](v93);
  [v52 setTransactionType_];
  sub_238758EF0();
  v97 = sub_23875EA50();

  [v52 setMerchantProvidedDescription_];

  sub_238449184(0, &qword_27DF0A958, 0x277D37F50);
  v98 = v133;
  (*(v91 + 16))(v133, v64, v92);
  v99 = v146;
  v100 = v130;
  sub_23843981C(v146, v130, &qword_27DF0A928, &qword_238766270);
  v101 = v134;
  sub_23843981C(v145, v134, &qword_27DF0A920, &qword_238766268);
  v102 = sub_238478C68(v98, v100, v101);
  [v52 setMerchant_];

  v103 = v132;
  sub_23843981C(v99, v132, &qword_27DF0A928, &qword_238766270);
  v105 = v140;
  v104 = v141;
  if ((*(v140 + 48))(v103, 1, v141) == 1)
  {
    sub_238439884(v103, &qword_27DF0A928, &qword_238766270);
    v106 = v143;
    v107 = v144;
  }

  else
  {
    (*(v105 + 32))(v142, v103, v104);
    v108 = v120;
    sub_23875A000();
    v109 = v121;
    v110 = v122;
    if ((*(v121 + 48))(v108, 1, v122) == 1)
    {
      sub_238439884(v108, &unk_27DF0B070, &unk_238766290);
    }

    else
    {
      v111 = v118;
      (*(v109 + 32))(v118, v108, v110);
      sub_238449184(0, &qword_27DF0A960, 0x277CE41F8);
      (*(v109 + 16))(v117, v111, v110);
      v112 = sub_23875EF70();
      [v52 setLocation_];

      v113 = v111;
      v93 = v138;
      (*(v109 + 8))(v113, v110);
    }

    v106 = v143;
    v107 = v144;
    v114 = sub_238759F50();
    if (v114 != 2)
    {
      [v52 setCoarseLocation_];
    }

    (*(v105 + 8))(v142, v104);
  }

  sub_238758E90();
  sub_238758770();
  (*(v135 + 8))(v93, v136);
  v115 = sub_23875EA50();

  [v52 setLocalizedTypeDescription_];

  sub_238439884(v145, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v146, &qword_27DF0A928, &qword_238766270);
  (*(v106 + 8))(v64, v107);
  return v52;
}

id sub_238478C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v133 = &v122 - v8;
  v9 = sub_23875A010();
  v10 = *(v9 - 8);
  v137 = v9;
  v138 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v132 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A968, &unk_2387662B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v136 = &v122 - v15;
  v16 = sub_23875B3A0();
  v130 = *(v16 - 8);
  v131 = v16;
  v17 = *(v130 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v125 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v126 = &v122 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A970, &unk_23876E8B0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v122 - v23;
  v25 = sub_238757F40();
  v127 = *(v25 - 8);
  v128 = v25;
  v26 = *(v127 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v123 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v124 = &v122 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v129 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v141 = &v122 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v122 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v122 - v41;
  MEMORY[0x28223BE20](v40);
  v142 = &v122 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A978, &unk_2387662C0);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44 - 8);
  v47 = &v122 - v46;
  v48 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_238758EF0();
  v49 = sub_23875EA50();

  [v48 setName_];

  v140 = a3;
  [v48 setFallbackcategory_];
  v139 = v48;

  v135 = a1;
  sub_238758ED0();
  v50 = sub_238759230();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v47, 1, v50) == 1)
  {
    sub_238439884(v47, &qword_27DF0A978, &unk_2387662C0);
    v52 = 0;
  }

  else
  {
    v53 = sub_238759220();
    (*(v51 + 8))(v47, v50);
    v52 = v53;
  }

  [v139 setIndustryCode_];
  v54 = v142;
  sub_23843981C(v140, v142, &qword_27DF0A920, &qword_238766268);
  v134 = a2;
  sub_23843981C(a2, v141, &qword_27DF0A928, &qword_238766270);
  v55 = sub_238757BB0();
  v56 = *(v55 - 8);
  v57 = *(v56 + 48);
  if (v57(v54, 1, v55) == 1 && (*(v138 + 48))(v141, 1, v137) == 1)
  {
    v58 = v135;
    sub_238758EF0();
    v59 = sub_23875EA50();

    v60 = PKMerchantFormattedDisplayName();

    v61 = v139;
    [v139 setRawName_];

    sub_238758EF0();
    v62 = sub_23875EA50();

    [v61 setRawCANL_];

    v63 = 1;
    v64 = &selRef_setUseRawMerchantData_;
    v65 = v134;
    goto LABEL_63;
  }

  sub_23843981C(v142, v42, &qword_27DF0A920, &qword_238766268);
  if (v57(v42, 1, v55) == 1)
  {
    sub_238439884(v42, &qword_27DF0A920, &qword_238766268);
    (*(v127 + 56))(v24, 1, 1, v128);
LABEL_10:
    sub_238439884(v24, &qword_27DF0A970, &unk_23876E8B0);
    v68 = v138;
    v61 = v139;
    goto LABEL_12;
  }

  sub_238757BA0();
  (*(v56 + 8))(v42, v55);
  v66 = v127;
  v67 = v128;
  if ((*(v127 + 48))(v24, 1, v128) == 1)
  {
    goto LABEL_10;
  }

  v69 = v124;
  (*(v66 + 32))(v124, v24, v67);
  sub_238449184(0, &qword_27DF0A988, 0x277D37F48);
  v70 = v66;
  v71 = v123;
  (*(v66 + 16))(v123, v69, v67);
  v72 = sub_238479BEC(v71);
  v61 = v139;
  [v139 setMapsMerchant_];

  (*(v70 + 8))(v69, v67);
  v68 = v138;
LABEL_12:
  v73 = v131;
  v74 = v136;
  sub_23843981C(v142, v39, &qword_27DF0A920, &qword_238766268);
  v75 = v57(v39, 1, v55);
  v76 = v137;
  if (v75 == 1)
  {
    sub_238439884(v39, &qword_27DF0A920, &qword_238766268);
    (*(v130 + 56))(v74, 1, 1, v73);
    v65 = v134;
    v58 = v135;
    v77 = v132;
    v78 = v133;
  }

  else
  {
    sub_238757B90();
    v74 = v136;
    (*(v56 + 8))(v39, v55);
    v79 = v130;
    v80 = (*(v130 + 48))(v74, 1, v73);
    v65 = v134;
    v58 = v135;
    v77 = v132;
    v78 = v133;
    if (v80 != 1)
    {
      v81 = v76;
      v82 = v135;
      v83 = v134;
      v84 = v126;
      (*(v79 + 32))(v126, v74, v73);
      sub_238449184(0, &qword_27DF0A980, 0x277D37F40);
      v85 = v125;
      (*(v79 + 16))(v125, v84, v73);
      v86 = v79;
      v87 = sub_23847A224(v85);
      [v61 setMapsBrand_];

      v88 = v84;
      v65 = v83;
      v58 = v82;
      v76 = v81;
      v78 = v133;
      v68 = v138;
      (*(v86 + 8))(v88, v73);
      goto LABEL_17;
    }
  }

  sub_238439884(v74, &qword_27DF0A968, &unk_2387662B0);
LABEL_17:
  v89 = v129;
  sub_23843981C(v141, v129, &qword_27DF0A928, &qword_238766270);
  if ((*(v68 + 48))(v89, 1, v76) == 1)
  {
    sub_238439884(v89, &qword_27DF0A928, &qword_238766270);
  }

  else
  {
    (*(v68 + 32))(v77, v89, v76);
    sub_238759F20();
    if (v90)
    {
      v91 = sub_23875EA50();
    }

    else
    {
      v91 = 0;
    }

    [v61 setRawName_];

    sub_238759F40();
    if (v92)
    {
      v93 = sub_23875EA50();
    }

    else
    {
      v93 = 0;
    }

    [v61 setIndustryCategory_];

    sub_238759F70();
    if (v94)
    {
      v95 = sub_23875EA50();
    }

    else
    {
      v95 = 0;
    }

    [v61 setMerchantIdentifier_];

    sub_238759F00();
    if (v96)
    {
      v97 = sub_23875EA50();
    }

    else
    {
      v97 = 0;
    }

    [v61 setRawCANL_];

    sub_238759EA0();
    if (v98)
    {
      v99 = sub_23875EA50();
    }

    else
    {
      v99 = 0;
    }

    [v61 setCity_];

    sub_238759F10();
    if (v100)
    {
      v101 = sub_23875EA50();
    }

    else
    {
      v101 = 0;
    }

    [v61 setRawCity_];

    sub_238759ED0();
    if (v102)
    {
      v103 = sub_23875EA50();
    }

    else
    {
      v103 = 0;
    }

    [v61 setState_];

    sub_238759F60();
    if (v104)
    {
      v105 = sub_23875EA50();
    }

    else
    {
      v105 = 0;
    }

    [v61 setRawState_];

    sub_238759E70();
    if (v106)
    {
      v107 = sub_23875EA50();
    }

    else
    {
      v107 = 0;
    }

    [v61 setZip_];

    sub_238759F80();
    if (v108)
    {
      v109 = sub_23875EA50();
    }

    else
    {
      v109 = 0;
    }

    [v61 setRawCountry_];

    v110 = sub_238759FD0();
    if ((v110 & 0x10000) == 0)
    {
      [v61 setCleanConfidenceLevel_];
    }

    v111 = sub_238759EE0();
    if ((v112 & 1) == 0)
    {
      [v61 setAdamIdentifier_];
    }

    sub_238759FE0();
    v113 = sub_23875B940();
    v114 = *(v113 - 8);
    v115 = 0;
    if ((*(v114 + 48))(v78, 1, v113) != 1)
    {
      v115 = sub_23875B860();
      (*(v114 + 8))(v78, v113);
    }

    [v61 setOriginURL_];

    sub_238759FB0();
    if (v116)
    {
      v117 = sub_23875EA50();
    }

    else
    {
      v117 = 0;
    }

    [v61 setWebMerchantIdentifier_];

    sub_238759F30();
    if (v118)
    {
      v119 = sub_23875EA50();
    }

    else
    {
      v119 = 0;
    }

    [v61 setWebMerchantName_];

    (*(v68 + 8))(v77, v76);
  }

  v63 = 0;
  v64 = &selRef_setMapsDataIsFromLocalMatch_;
LABEL_63:
  [v61 *v64];
  sub_238439884(v140, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v65, &qword_27DF0A928, &qword_238766270);
  v120 = sub_238758F50();
  (*(*(v120 - 8) + 8))(v58, v120);
  sub_238439884(v142, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v141, &qword_27DF0A928, &qword_238766270);
  return v61;
}

id sub_238479BEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v57 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v18 setIdentifier_];
  v19 = sub_238757EE0();
  if ((v19 & 0x100000000) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  [v18 setResultProviderIdentifier_];
  sub_238757F20();
  if (v21)
  {
    v22 = sub_23875EA50();
  }

  else
  {
    v22 = 0;
  }

  [v18 setName_];

  sub_238757E30();
  if (v23)
  {
    v24 = sub_23875EA50();
  }

  else
  {
    v24 = 0;
  }

  [v18 setPhoneNumber_];

  sub_238757EF0();
  v25 = sub_23875B940();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = 0;
  if (v27(v17, 1, v25) != 1)
  {
    v28 = sub_23875B860();
    (*(v26 + 8))(v17, v25);
  }

  [v18 setURL_];

  sub_238757E40();
  if (v27(v15, 1, v25) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_23875B860();
    (*(v26 + 8))(v15, v25);
  }

  [v18 setHeroImageURL_];

  sub_238757ED0();
  if (v30)
  {
    v31 = sub_23875EA50();
  }

  else
  {
    v31 = 0;
  }

  [v18 setHeroImageAttributionName_];

  sub_238757E50();
  v32 = sub_238468A30(v8);
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  [v18 setCategory_];
  sub_238757EC0();
  if (v35)
  {
    v36 = sub_23875EA50();
  }

  else
  {
    v36 = 0;
  }

  [v18 setDetailedCategory_];

  v37 = sub_238757EB0();
  if (v38 >> 60 == 15)
  {
    v39 = 0;
  }

  else
  {
    v40 = v37;
    v41 = v38;
    v39 = sub_23875B980();
    sub_23844C940(v40, v41);
  }

  v43 = v57;
  v42 = v58;
  [v18 setStylingInfoData_];

  sub_238757E70();
  if (v27(v43, 1, v25) == 1)
  {
    v44 = 0;
  }

  else
  {
    v44 = sub_23875B860();
    (*(v26 + 8))(v43, v25);
  }

  [v18 setBusinessChatURL_];

  sub_238757E90();
  v45 = sub_23875BC40();
  v46 = *(v45 - 8);
  v47 = 0;
  if ((*(v46 + 48))(v42, 1, v45) != 1)
  {
    v47 = sub_23875BB40();
    (*(v46 + 8))(v42, v45);
  }

  [v18 setLastProcessedDate_];

  v48 = sub_238757E80();
  if ((v49 & 1) == 0)
  {
    v50 = *&v48;
    v51 = sub_238757EA0();
    if ((v52 & 1) == 0)
    {
      v53 = *&v51;
      [v18 setLocationLatitude_];
      [v18 setLocationLongitude_];
    }
  }

  v54 = sub_238757E60();
  [v18 setPostalAddress_];

  v55 = sub_238757F40();
  (*(*(v55 - 8) + 8))(a1, v55);
  return v18;
}

id sub_23847A224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v55 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v21 setIdentifier_];
  v22 = sub_23875B340();
  if ((v22 & 0x100000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  [v21 setResultProviderIdentifier_];
  sub_23875B380();
  if (v24)
  {
    v25 = sub_23875EA50();
  }

  else
  {
    v25 = 0;
  }

  [v21 setName_];

  sub_23875B2C0();
  if (v26)
  {
    v27 = sub_23875EA50();
  }

  else
  {
    v27 = 0;
  }

  [v21 setPhoneNumber_];

  sub_23875B350();
  v28 = sub_23875B940();
  v56 = *(v28 - 8);
  v29 = *(v56 + 48);
  v30 = 0;
  if (v29(v20, 1, v28) != 1)
  {
    v30 = sub_23875B860();
    (*(v56 + 8))(v20, v28);
  }

  [v21 setURL_];

  sub_23875B2D0();
  if (v29(v18, 1, v28) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = sub_23875B860();
    (*(v56 + 8))(v18, v28);
  }

  [v21 setHeroImageURL_];

  sub_23875B330();
  if (v32)
  {
    v33 = sub_23875EA50();
  }

  else
  {
    v33 = 0;
  }

  [v21 setHeroImageAttributionName_];

  sub_23875B2E0();
  v34 = sub_238468A30(v8);
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  [v21 setCategory_];
  sub_23875B320();
  if (v37)
  {
    v38 = sub_23875EA50();
  }

  else
  {
    v38 = 0;
  }

  [v21 setDetailedCategory_];

  v39 = sub_23875B310();
  if (v40 >> 60 == 15)
  {
    v41 = 0;
  }

  else
  {
    v42 = v39;
    v43 = v40;
    v41 = sub_23875B980();
    sub_23844C940(v42, v43);
  }

  v44 = v54;
  [v21 setStylingInfoData_];

  sub_23875B2F0();
  if (v29(v15, 1, v28) == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_23875B860();
    (*(v56 + 8))(v15, v28);
  }

  [v21 setBusinessChatURL_];

  sub_23875B300();
  v46 = sub_23875BC40();
  v47 = *(v46 - 8);
  v48 = 0;
  if ((*(v47 + 48))(v44, 1, v46) != 1)
  {
    v48 = sub_23875BB40();
    (*(v47 + 8))(v44, v46);
  }

  [v21 setLastProcessedDate_];

  v49 = v55;
  sub_23875B390();
  if (v29(v49, 1, v28) == 1)
  {
    v50 = 0;
  }

  else
  {
    v50 = sub_23875B860();
    (*(v56 + 8))(v49, v28);
  }

  [v21 setLogoURL_];

  v51 = sub_23875B3A0();
  (*(*(v51 - 8) + 8))(a1, v51);
  return v21;
}

id sub_23847A884()
{
  result = [objc_allocWithZone(MEMORY[0x277D37F58]) init];
  qword_27DF0A868 = result;
  return result;
}

uint64_t TransactionIconImage.init(transaction:style:context:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_238758F50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  sub_2387588A0();
  *(a4 + 16) = v13;
  (*(v9 + 16))(v12, a1, v8);
  v14 = qword_238766318[v13];
  v15 = type metadata accessor for TransactionIconImage.Loader();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v18[2] = 0;
  sub_23875BEC0();
  (*(v9 + 8))(a1, v8);
  v18[3] = v14;
  v18[4] = v14;
  result = (*(v9 + 32))(v18 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction, v12, v8);
  *(v18 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_context) = a3;
  *a4 = v18;
  *(a4 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for TransactionIconImage.Loader()
{
  result = qword_27DF0A8F8;
  if (!qword_27DF0A8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransactionIconImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A880, &qword_238766080);
  v2 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v74 = (&v70 - v3);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A888, &qword_238766088);
  v4 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v70 - v5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A890, &qword_238766090);
  v6 = *(*(v89 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v89);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v70 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A898, &qword_238766098);
  v10 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v70 - v11;
  v76 = sub_23875E0E0();
  v12 = *(v76 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v76);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A128, &qword_2387660A0);
  v16 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v18 = &v70 - v17;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8A0, &qword_2387660A8);
  v19 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v70 - v20;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8A8, &qword_2387660B0);
  v21 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v70 - v22;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8B0, &qword_2387660B8);
  v23 = *(*(v86 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v86);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = &v70 - v27;
  v28 = sub_23875C980();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v70 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v1;
  v33 = v1[1];
  v34 = *(v1 + 16);
  v83 = *(v1 + 16);
  v85 = v32;
  *&v93 = v32;
  *(&v93 + 1) = v33;
  v84 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8B8, &qword_2387660C0);
  sub_23875E1B0();
  v35 = v92;
  swift_getKeyPath();
  *&v93 = v35;
  sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader);
  sub_23875BE90();

  v36 = *(v35 + 16);
  v37 = v36;

  if (v36)
  {
    v38 = qword_238766348[v34];
    v39 = *(v28 + 20);
    v40 = *MEMORY[0x277CE0118];
    v41 = sub_23875CF50();
    (*(*(v41 - 8) + 104))(&v31[v39], v40, v41);
    *v31 = v38;
    *(v31 + 1) = v38;
    v42 = v37;
    sub_23875E0C0();
    v43 = v76;
    (*(v12 + 104))(v15, *MEMORY[0x277CE0FE0], v76);
    v44 = sub_23875E150();

    (*(v12 + 8))(v15, v43);
    v45 = qword_238766378[v34];
    sub_23875E4A0();
    sub_23875C5C0();
    LOBYTE(v92) = 1;
    *&v91[6] = v93;
    *&v91[22] = v94;
    *&v91[38] = v95;
    v46 = &v18[*(v77 + 36)];
    sub_23846E86C(v31, v46);
    *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
    v47 = *&v91[16];
    *(v18 + 18) = *v91;
    *v18 = v44;
    *(v18 + 1) = 0;
    *(v18 + 8) = 1;
    *(v18 + 34) = v47;
    *(v18 + 50) = *&v91[32];
    *(v18 + 8) = *&v91[46];
    v48 = sub_23875E4A0();
    v50 = v49;
    v51 = v81;
    v52 = &v81[*(v78 + 36)];
    sub_23847B488(v31, v83, v52);
    v53 = (v52 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
    *v53 = v48;
    v53[1] = v50;
    sub_2384396E4(v18, v51, &qword_27DF0A128, &qword_2387660A0);
    v54 = v79;
    sub_2384396E4(v51, v79, &qword_27DF0A8A0, &qword_2387660A8);
    *(v54 + *(v80 + 36)) = 257;
    sub_2384396E4(v54, v26, &qword_27DF0A8A8, &qword_2387660B0);
    v26[*(v86 + 36)] = 1;
    v55 = v82;
    sub_2384396E4(v26, v82, &qword_27DF0A8B0, &qword_2387660B8);
    sub_23843981C(v55, v88, &qword_27DF0A8B0, &qword_2387660B8);
    swift_storeEnumTagMultiPayload();
    sub_23847DFEC();
    sub_23847E1BC();
    sub_23875D1B0();

    sub_238439884(v55, &qword_27DF0A8B0, &qword_2387660B8);
    return sub_23846E8D0(v31);
  }

  else
  {
    v57 = sub_23875E020();
    KeyPath = swift_getKeyPath();
    v59 = swift_allocObject();
    v60 = v84;
    *(v59 + 16) = v85;
    *(v59 + 24) = v60;
    *(v59 + 32) = v83;
    v61 = v74;
    v62 = v74 + *(v70 + 36);
    v63 = *(sub_23875C6E0() + 20);

    sub_23875ED60();
    *v62 = &unk_238766128;
    *(v62 + 1) = v59;
    *v61 = KeyPath;
    v61[1] = v57;
    v64 = qword_238766378[v34];
    sub_23875E4A0();
    sub_23875C5C0();
    v65 = v73;
    sub_2384396E4(v61, v73, &qword_27DF0A880, &qword_238766080);
    v66 = (v65 + *(v72 + 36));
    v67 = v94;
    *v66 = v93;
    v66[1] = v67;
    v66[2] = v95;
    v68 = v71;
    sub_2384396E4(v65, v71, &qword_27DF0A888, &qword_238766088);
    *(v68 + *(v89 + 36)) = 257;
    v69 = v75;
    sub_2384396E4(v68, v75, &qword_27DF0A890, &qword_238766090);
    sub_23843981C(v69, v88, &qword_27DF0A890, &qword_238766090);
    swift_storeEnumTagMultiPayload();
    sub_23847DFEC();
    sub_23847E1BC();
    sub_23875D1B0();
    return sub_238439884(v69, &qword_27DF0A890, &qword_238766090);
  }
}

uint64_t sub_23847B488@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_23875DFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24[-v13];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
    sub_23875E090();
  }

  else
  {
    sub_23875E070();
  }

  v15 = sub_23875E060();

  sub_23875C4C0();
  sub_23846E86C(a1, v14);
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v17 = v25;
  *v16 = *&v24[8];
  *(v16 + 1) = v17;
  *(v16 + 4) = v26;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v14[*(v18 + 52)] = v15;
  *&v14[*(v18 + 56)] = 256;
  v19 = sub_23875E4A0();
  v21 = v20;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v22 = v19;
  v22[1] = v21;
  sub_2384396E4(v14, a3, &qword_27DF0A438, &unk_2387662D0);
}

uint64_t sub_23847B770(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = sub_23875ED50();
  v2[9] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23847B844, v5, v4);
}

uint64_t sub_23847B844()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  v0[2] = v5;
  v0[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A8B8, &qword_2387660C0);
  sub_23875E1B0();
  v6 = v0[4];
  v7 = sub_23875ED80();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);

  v8 = sub_23875ED40();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v6;
  sub_23847C784(0, 0, v3, &unk_2387662F0, v9);

  v11 = v0[1];

  return v11();
}

void *sub_23847B9A4()
{
  swift_getKeyPath();
  sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader);
  sub_23875BE90();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

id sub_23847BA4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader);
  sub_23875BE90();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_23847BB04(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23847E390(&qword_27DF0A8C0, type metadata accessor for TransactionIconImage.Loader);
    sub_23875BE80();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_238449184(0, &qword_27DF0A940, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_23875F1B0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

id sub_23847BC94()
{
  result = [objc_allocWithZone(MEMORY[0x277D38B80]) initWithCache:1 scale:sub_2387588A0()];
  qword_27DF0A870 = result;
  return result;
}

uint64_t sub_23847BCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A990, &qword_2387662F8);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v4[12] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A998, &qword_238766300);
  v4[13] = v10;
  v11 = *(v10 - 8);
  v4[14] = v11;
  v12 = *(v11 + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = sub_23875ED50();
  v4[17] = sub_23875ED40();
  v13 = swift_task_alloc();
  v4[18] = v13;
  *v13 = v4;
  v13[1] = sub_23847BEB8;

  return sub_23847CE28(v9);
}

uint64_t sub_23847BEB8()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v11 = *v1;
  v3[19] = v2;

  v8 = sub_23875ECE0();
  v3[20] = v8;
  v3[21] = v7;
  if (v2)
  {
    v9 = sub_23847C5E4;
  }

  else
  {
    v9 = sub_23847C018;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_23847C018()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  sub_23875EDB0();
  (*(v3 + 8))(v2, v4);
  v5 = v0[16];
  v6 = sub_23875ED40();
  v0[22] = v6;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_23847C108;
  v9 = v0[15];
  v10 = v0[13];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 6, v6, v11, v10);
}

uint64_t sub_23847C108()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v7 = *v0;

  v4 = *(v1 + 168);
  v5 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_23847C24C, v5, v4);
}

uint64_t sub_23847C24C()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[16];
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[7];
    v6 = sub_23875ED80();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v4, 1, 1, v6);

    v8 = v1;
    v9 = sub_23875ED40();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v5;
    v10[5] = v8;
    sub_23843981C(v4, v3, &unk_27DF09920, &qword_238764D80);
    LODWORD(v3) = (*(v7 + 48))(v3, 1, v6);

    v12 = v0[8];
    if (v3 == 1)
    {
      sub_238439884(v0[8], &unk_27DF09920, &qword_238764D80);
    }

    else
    {
      sub_23875ED70();
      (*(v7 + 8))(v12, v6);
    }

    v20 = v10[2];
    v19 = v10[3];
    swift_unknownObjectRetain();

    if (v20)
    {
      swift_getObjectType();
      v21 = sub_23875ECE0();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_238439884(v0[9], &unk_27DF09920, &qword_238764D80);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_238766310;
    *(v24 + 24) = v10;
    if (v23 | v21)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v21;
      v0[5] = v23;
    }

    swift_task_create();

    v25 = v0[16];
    v26 = sub_23875ED40();
    v0[22] = v26;
    v27 = *(MEMORY[0x277D85798] + 4);
    v28 = swift_task_alloc();
    v0[23] = v28;
    *v28 = v0;
    v28[1] = sub_23847C108;
    v29 = v0[15];
    v30 = v0[13];
    v31 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 6, v26, v31, v30);
  }

  else
  {
    v13 = v0[17];
    v14 = v0[12];
    v16 = v0[8];
    v15 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_23847C5E4()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v5 = v0[8];
  v4 = v0[9];

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

uint64_t sub_23847C67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_23875ED50();
  v5[4] = sub_23875ED40();
  v7 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23847C714, v7, v6);
}

uint64_t sub_23847C714()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = v2;
  sub_23847BB04(v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_23847C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_23843981C(a3, v24 - v10, &unk_27DF09920, &qword_238764D80);
  v12 = sub_23875ED80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238439884(v11, &unk_27DF09920, &qword_238764D80);
  }

  else
  {
    sub_23875ED70();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23875ECE0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23875EB00() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_238439884(a3, &unk_27DF09920, &qword_238764D80);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238439884(a3, &unk_27DF09920, &qword_238764D80);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_23847CA30(void *a1@<X8>)
{
  v3 = sub_238757D00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v28 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  sub_23875A230();
  v14 = sub_23875A080();
  if (!v1)
  {
    v15 = v14;
    if (!v14)
    {
      v17 = MEMORY[0x277D84F90];
LABEL_21:
      *a1 = v17;
      return;
    }

    v28[1] = 0;
    v16 = sub_23875A0B0();
    v29 = a1;
    if (v16)
    {
      v28[0] = v16;
      sub_238757BC0();
      (*(v4 + 104))(v13, *MEMORY[0x277CC6BE8], v3);
      v17 = sub_2384980F8(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = v17[2];
      v18 = v17[3];
      if (v19 >= v18 >> 1)
      {
        v17 = sub_2384980F8(v18 > 1, v19 + 1, 1, v17);
      }

      v17[2] = v19 + 1;
      (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19, v13, v3);
      a1 = v29;
      v20 = sub_23875A1E0();
      if (!v20)
      {
LABEL_7:
        v21 = sub_23875A0D0();
        if (v21)
        {
LABEL_8:
          v22 = v21;
          sub_23875A020();
          (*(v4 + 104))(v8, *MEMORY[0x277CC6BF0], v3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_2384980F8(0, v17[2] + 1, 1, v17);
          }

          v24 = v17[2];
          v23 = v17[3];
          if (v24 >= v23 >> 1)
          {
            v17 = sub_2384980F8(v23 > 1, v24 + 1, 1, v17);
          }

          v17[2] = v24 + 1;
          (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24, v8, v3);
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      v20 = sub_23875A1E0();
      if (!v20)
      {
        goto LABEL_7;
      }
    }

    v25 = v20;
    sub_23875A8B0();
    (*(v4 + 104))(v11, *MEMORY[0x277CC6BE0], v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2384980F8(0, v17[2] + 1, 1, v17);
    }

    v27 = v17[2];
    v26 = v17[3];
    if (v27 >= v26 >> 1)
    {
      v17 = sub_2384980F8(v26 > 1, v27 + 1, 1, v17);
    }

    v17[2] = v27 + 1;
    (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v27, v11, v3);
    a1 = v29;
    v21 = sub_23875A0D0();
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_20:

    goto LABEL_21;
  }
}

uint64_t sub_23847CE28(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A918, &qword_238766260);
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_238758F50();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v9 = sub_238757D00();
  v2[12] = v9;
  v10 = *(v9 - 8);
  v2[13] = v10;
  v11 = *(v10 + 64) + 15;
  v2[14] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268) - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A928, &qword_238766270) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v14 = sub_23875BCB0();
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = sub_23875ED50();
  v2[23] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v2[24] = v18;
  v2[25] = v17;

  return MEMORY[0x2822009F8](sub_23847D0F0, v18, v17);
}

uint64_t sub_23847D0F0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[4];
  v0[26] = OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction;
  sub_238758F10();
  v0[27] = *(v3 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_context);
  v0[28] = sub_23875ED40();
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23847D1AC, v5, v4);
}

uint64_t sub_23847D1AC()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[20];
  v3 = v0[21];

  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A930, &qword_238766278);
  sub_23875F120();
  v0[29] = 0;
  v6 = v0[21];
  v7 = v0[19];

  v0[30] = v0[2];
  (*(v4 + 8))(v6, v7);
  v8 = v0[24];
  v9 = v0[25];

  return MEMORY[0x2822009F8](sub_23847D2D8, v8, v9);
}

uint64_t sub_23847D2D8()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[16];

  v5 = sub_23875A010();
  v6 = *(v5 - 8);
  v40 = v5;
  v39 = *(v6 + 56);
  v39(v3, 1, 1);
  v7 = sub_238757BB0();
  v8 = *(v7 - 8);
  v49 = v7;
  v46 = *(v8 + 56);
  v46(v4, 1, 1);
  v9 = *(v1 + 16);
  if (v9)
  {
    v10 = v0[13];
    v12 = *(v10 + 16);
    v11 = v10 + 16;
    v54 = v12;
    v13 = v0[30] + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v52 = *(v11 + 56);
    v51 = *MEMORY[0x277CC6BE8];
    v45 = *MEMORY[0x277CC6BE0];
    v14 = (v11 + 80);
    v38 = (v6 + 32);
    v15 = (v8 + 32);
    v42 = *MEMORY[0x277CC6BF0];
    do
    {
      v16 = v0[14];
      v17 = v0[12];
      v54(v16, v13, v17);
      v18 = (*(v11 + 72))(v16, v17);
      if (v18 == v51)
      {
        v19 = v0[16];
        v20 = v0[14];
        v21 = v0[12];
        sub_238439884(v19, &qword_27DF0A920, &qword_238766268);
        (*v14)(v20, v21);
        (*v15)(v19, v20, v49);
        (v46)(v19, 0, 1, v49);
      }

      else if (v18 == v45 || v18 != v42)
      {
        (*(v11 - 8))(v0[14], v0[12]);
      }

      else
      {
        v22 = v0[18];
        v23 = v0[14];
        v24 = v0[12];
        sub_238439884(v22, &qword_27DF0A928, &qword_238766270);
        (*v14)(v23, v24);
        (*v38)(v22, v23, v40);
        (v39)(v22, 0, 1, v40);
      }

      v13 += v52;
      --v9;
    }

    while (v9);
    v25 = v0[30];
  }

  v26 = v0[26];
  v53 = v0[21];
  v28 = v0[17];
  v27 = v0[18];
  v41 = v0[16];
  v43 = v0[15];
  v55 = v0[14];
  v29 = v0[10];
  v30 = v0[11];
  v31 = v0[9];
  v32 = v0[7];
  v47 = v0[8];
  v48 = v0[6];
  v33 = v0[4];
  v44 = v0[5];
  v50 = v0[3];
  sub_238449184(0, &qword_27DF0A938, 0x277D38140);
  (*(v29 + 16))(v30, v33 + v26, v31);
  sub_23843981C(v27, v28, &qword_27DF0A928, &qword_238766270);
  sub_23843981C(v41, v43, &qword_27DF0A920, &qword_238766268);
  v34 = sub_238477D44(v30, v28, v43);
  v35 = swift_task_alloc();
  v35[2] = v34;
  v35[3] = v33;
  v35[4] = v44;
  sub_238449184(0, &qword_27DF0A940, 0x277D755B8);
  (*(v32 + 104))(v47, *MEMORY[0x277D85778], v48);
  sub_23875EDD0();

  sub_238439884(v41, &qword_27DF0A920, &qword_238766268);
  sub_238439884(v27, &qword_27DF0A928, &qword_238766270);

  v36 = v0[1];

  return v36();
}

uint64_t sub_23847D80C()
{
  v1 = v0[23];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];

  v10 = v0[1];
  v11 = v0[29];

  return v10();
}

uint64_t sub_23847D8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A948, &qword_238766280);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v22 = &v22 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27DF08CB8 != -1)
  {
    swift_once();
  }

  v13 = qword_27DF0A870;
  if (qword_27DF0A870)
  {
    v14 = *(a3 + 24);
    v15 = *(a3 + 32);
    (*(v9 + 16))(v12, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v12, v8);
    aBlock[4] = sub_23847E634;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23847DD7C;
    aBlock[3] = &block_descriptor_2;
    v18 = _Block_copy(aBlock);

    v19 = [v13 iconForTransaction:v25 size:0 ignoreLogoURL:0 requestType:v18 iconHandler:{v14, v15}];
    _Block_release(v18);
    if (v19)
    {
      aBlock[0] = v19;
      v20 = v22;
      sub_23875ED90();
      (*(v23 + 8))(v20, v24);
    }
  }
}

uint64_t sub_23847DC58(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A948, &qword_238766280);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = v12 - v8;
  if (a2)
  {
    if (a1)
    {
      v12[1] = a1;
      v10 = result;
      v11 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288);
      sub_23875ED90();
      (*(v5 + 8))(v9, v10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288);
    return sub_23875EDA0();
  }

  return result;
}

void sub_23847DD7C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_23847DDF4()
{
  v1 = OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction;
  v2 = sub_238758F50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader___observationRegistrar;
  v4 = sub_23875BED0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 12);
  v6 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_23847DEEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CAE0();
  *a1 = result;
  return result;
}

uint64_t sub_23847DF18(uint64_t *a1)
{
  v1 = *a1;

  return sub_23875CAF0();
}

uint64_t sub_23847DF44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2384494A4;

  return sub_23847B770(v2, v3);
}

unint64_t sub_23847DFEC()
{
  result = qword_27DF0A8C8;
  if (!qword_27DF0A8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A8B0, &qword_2387660B8);
    sub_23847E078();
    sub_23844970C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8C8);
  }

  return result;
}

unint64_t sub_23847E078()
{
  result = qword_27DF0A8D0;
  if (!qword_27DF0A8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A8A8, &qword_2387660B0);
    sub_23847E104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8D0);
  }

  return result;
}

unint64_t sub_23847E104()
{
  result = qword_27DF0A8D8;
  if (!qword_27DF0A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A8A0, &qword_2387660A8);
    sub_238464A90();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8D8);
  }

  return result;
}

unint64_t sub_23847E1BC()
{
  result = qword_27DF0A8E0;
  if (!qword_27DF0A8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A890, &qword_238766090);
    sub_23847E248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8E0);
  }

  return result;
}

unint64_t sub_23847E248()
{
  result = qword_27DF0A8E8;
  if (!qword_27DF0A8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A888, &qword_238766088);
    sub_23847E2D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8E8);
  }

  return result;
}

unint64_t sub_23847E2D4()
{
  result = qword_27DF0A8F0;
  if (!qword_27DF0A8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A880, &qword_238766080);
    sub_2384497EC();
    sub_23847E390(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A8F0);
  }

  return result;
}

uint64_t sub_23847E390(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23847E3F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23847E43C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23847E494()
{
  result = sub_238758F50();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_23875BED0();
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

unint64_t sub_23847E580()
{
  result = qword_27DF0A908;
  if (!qword_27DF0A908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A910, &qword_238766238);
    sub_23847DFEC();
    sub_23847E1BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0A908);
  }

  return result;
}

void sub_23847E60C(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_23847CA30(a1);
}

uint64_t sub_23847E634(void *a1, char a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A950, &qword_238766288) - 8) + 80);

  return sub_23847DC58(a1, a2);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23847E6D8(unint64_t result)
{
  if (result >= 9)
  {
    return -1;
  }

  return result;
}

uint64_t sub_23847E6E4(uint64_t result)
{
  if ((result - 1) >= 0x16)
  {
    return 0;
  }

  return result;
}

id sub_23847E6F4(uint64_t a1, uint64_t a2)
{
  v32[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A978, &unk_2387662C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A920, &qword_238766268);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2C0, &qword_23876BCF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v32 - v16;
  v18 = sub_238757E10();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(a2, v10, &qword_27DF0A920, &qword_238766268);
  v23 = sub_238757BB0();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v10, 1, v23) == 1)
  {
    sub_238439884(v10, &qword_27DF0A920, &qword_238766268);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  else
  {
    sub_238757B80();
    (*(v24 + 8))(v10, v23);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v22, v17, v18);
      (*(v19 + 16))(v15, v22, v18);
      (*(v19 + 56))(v15, 0, 1, v18);
      v29 = sub_238468A30(v15);
      v31 = v30;
      (*(v19 + 8))(v22, v18);
      if ((v31 & 1) == 0)
      {
        result = v29;
        if (v29)
        {
          return result;
        }
      }

      goto LABEL_5;
    }
  }

  sub_238439884(v17, &qword_27DF0A2C0, &qword_23876BCF0);
LABEL_5:
  sub_238758ED0();
  v25 = sub_238759230();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v6, 1, v25) == 1)
  {
    sub_238439884(v6, &qword_27DF0A978, &unk_2387662C0);
    return 0;
  }

  v27 = sub_238759220();
  (*(v26 + 8))(v6, v25);
  if (v27 < 1)
  {
    return 0;
  }

  if (qword_27DF08CB0 != -1)
  {
    swift_once();
  }

  return [qword_27DF0A868 categoryForIndustryCode_];
}

void sub_23847EB70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_23847EBA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_23847BCE0(a1, v4, v5, v6);
}

uint64_t sub_23847EC5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_23847C67C(a1, v4, v5, v7, v6);
}

uint64_t sub_23847ED1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23847ED90@<X0>(uint64_t a1@<X8>)
{
  v16[0] = a1;
  v1 = sub_238759A00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  sub_238757AE0();
  v9 = MEMORY[0x277CC7BF0];
  sub_238484974(&qword_27DF0AA10, MEMORY[0x277CC7BF0]);
  sub_23875F300();
  sub_238484974(&qword_27DF0AA18, v9);
  v10 = sub_23875E9E0();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if ((v10 & 1) == 0)
  {
    return sub_238757AE0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA20, &qword_238766608);
  v12 = *(v2 + 72);
  v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_238763320;
  sub_2387599B0();
  sub_2387599A0();
  sub_2387599F0();
  sub_238759990();
  sub_2387599C0();
  v16[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA28, &qword_238766610);
  sub_23843A3E8(&qword_27DF0AA30, &qword_27DF0AA28, &qword_238766610);
  return sub_23875F310();
}

uint64_t BankConnectPrivacyOnboardingViewModel.__allocating_init(institution:fpanID:isExistingConnection:flowManager:flowType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v17 = a5[3];
  v16 = a5[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a5, v17);
  v19 = sub_23848428C(a1, a2, a3, a4, v18, a6, a7, a8, v8, v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v19;
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

uint64_t BankConnectPrivacyOnboardingViewModel.init(institution:fpanID:isExistingConnection:flowManager:flowType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v24 = a7;
  v25 = a8;
  v16 = a5[3];
  v15 = a5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a5, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_2384840A4(a1, a2, a3, a4, v20, a6, v24, v25, v8, v16, v15);
  __swift_destroy_boxed_opaque_existential_1(a5);
  return v22;
}

uint64_t sub_23847F278()
{
  v1 = type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_isExistingConnection))
  {
    v6 = *(v0 + 56);
    v5 = *(v0 + 64);
    v7 = type metadata accessor for BankConnectAuthorizationFlow(0);
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    swift_storeEnumTagMultiPayload();
    v6(v4);
    return sub_238484A4C(v4, type metadata accessor for BankConnectPrivacyOnboardingResult);
  }

  else
  {
    v9 = swift_allocObject();
    swift_weakInit();

    sub_23847FD50(&unk_238766600, v9);
  }
}

uint64_t sub_23847F3D0(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_23875A820();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v5 = *(*(type metadata accessor for BankConnectPrivacyOnboardingResult(0) - 8) + 64) + 15;
  v1[29] = swift_task_alloc();
  sub_23875ED50();
  v1[30] = sub_23875ED40();
  v7 = sub_23875ECE0();
  v1[31] = v7;
  v1[32] = v6;

  return MEMORY[0x2822009F8](sub_23847F4F0, v7, v6);
}

uint64_t sub_23847F4F0()
{
  v1 = v0[25];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[34] = v3;
    *v3 = v0;
    v3[1] = sub_23847F5F8;
    v4 = v0[29];

    return sub_238480290(v4);
  }

  else
  {
    v6 = v0[30];

    v8 = v0[28];
    v7 = v0[29];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23847F5F8()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v6 = *v0;

  v3 = *(v1 + 256);
  v4 = *(v1 + 248);

  return MEMORY[0x2822009F8](sub_23847F718, v4, v3);
}

uint64_t sub_23847F718()
{
  v34 = v0;
  v1 = v0[33];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];

  v6 = MEMORY[0x277D38550];
  if (!*(v1 + 72))
  {
    v6 = MEMORY[0x277D38560];
  }

  v7 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v9 = sub_23867B330(v3);
  v11 = v10;
  (*(v4 + 8))(v3, v5);
  *(inited + 40) = v9;
  *(inited + 48) = v11;
  v12 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_238763300;
  v14 = *MEMORY[0x277D383D8];
  *(v13 + 32) = *MEMORY[0x277D383D8];
  v15 = *MEMORY[0x277D38428];
  *(v13 + 40) = sub_23875EA80();
  *(v13 + 48) = v16;
  v17 = *MEMORY[0x277D38390];
  *(v13 + 56) = *MEMORY[0x277D38390];
  *(v13 + 64) = 0x65756E69746E6F63;
  v18 = *MEMORY[0x277D384B8];
  *(v13 + 72) = 0xE800000000000000;
  *(v13 + 80) = v18;
  strcpy((v13 + 88), "consentPrompt");
  *(v13 + 102) = -4864;
  v19 = v14;
  v20 = v17;
  v21 = v18;
  v22 = sub_23854B138(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v22;
  sub_2385C33E4(v12, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v33);

  v24 = v0[33];
  v25 = v0[29];
  v26 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238484974(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v27 = sub_23875E910();

  [v26 subject:v7 sendEvent:v27];

  v28 = *(v24 + 64);
  (*(v24 + 56))(v25);
  sub_238484A4C(v25, type metadata accessor for BankConnectPrivacyOnboardingResult);

  v30 = v0[28];
  v29 = v0[29];

  v31 = v0[1];

  return v31();
}

void sub_23847FABC()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v8 = *MEMORY[0x277D38470];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277D384B8];
  *(inited + 56) = *MEMORY[0x277D384B8];
  strcpy((inited + 64), "consentPrompt");
  *(inited + 78) = -4864;
  v11 = v7;
  v12 = v10;
  *(inited + 80) = sub_23875EA50();
  sub_23875A7E0();
  v13 = sub_23867B330(v5);
  v15 = v14;
  (*(v2 + 8))(v5, v1);
  *(inited + 88) = v13;
  *(inited + 96) = v15;
  sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  v16 = MEMORY[0x277D38550];
  if (!*(v0 + 72))
  {
    v16 = MEMORY[0x277D38560];
  }

  v17 = *v16;
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238484974(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

uint64_t sub_23847FD50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15[-v8];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if ((v15[15] & 1) == 0)
  {
    v11 = sub_23875ED80();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_23875ED50();

    v12 = sub_23875ED40();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v3;
    v13[5] = a1;
    v13[6] = a2;
    sub_2386C3BA4(0, 0, v9, &unk_2387665F0, v13);
  }

  return result;
}

uint64_t sub_23847FEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23875ED50();
  v6[5] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_23847FF7C, v8, v7);
}

uint64_t sub_23847FF7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 1;

  sub_23875C2E0();
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_2384800C0;
  v5 = *(v0 + 32);

  return v7();
}

uint64_t sub_2384800C0()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2384801E0, v4, v3);
}

uint64_t sub_2384801E0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 73) = 0;

  sub_23875C2E0();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238480290(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_23875A980();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_238757B60();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_23875A9A0();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v12 = sub_23875C1E0();
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v15 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v2[17] = v15;
  v16 = *(v15 - 8);
  v2[18] = v16;
  v17 = *(v16 + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_23875ED50();
  v2[22] = sub_23875ED40();
  v19 = sub_23875ECE0();
  v2[23] = v19;
  v2[24] = v18;

  return MEMORY[0x2822009F8](sub_238480518, v19, v18);
}

uint64_t sub_238480518()
{
  v1 = v0[3];
  v2 = *(v1 + 5);
  v3 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v5 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID];
  v6 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID + 8];
  v7 = *(v3 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_23848067C;
  v10 = v0[21];

  return v12(v10, &v1[v4], v5, v6, v2, v3);
}

uint64_t sub_23848067C()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(*v1 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  if (v0)
  {
    v7 = sub_238480BBC;
  }

  else
  {
    v7 = sub_2384807B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2384807B8()
{
  v53 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[16];

  sub_23875C120();
  sub_238484D78(v2, v3, type metadata accessor for BankConnectAuthorizationFlow);
  sub_238484D78(v2, v4, type metadata accessor for BankConnectAuthorizationFlow);
  v6 = sub_23875C1B0();
  v7 = sub_23875F000();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[19];
  v9 = v0[20];
  v11 = v0[16];
  v12 = v0[14];
  v51 = v0[13];
  if (v8)
  {
    v49 = v0[14];
    v50 = v0[16];
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    v41 = v15;
    v42 = v0[7];
    v43 = v0[6];
    v44 = v0[5];
    v45 = v0[4];
    v47 = v7;
    v18 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v52 = v48;
    *v18 = 136315394;
    log = v6;
    sub_238724998(v13);
    sub_23875A900();
    v19 = *(v14 + 8);
    v19(v13, v15);
    v20 = sub_238757B40();
    v22 = v21;
    (*(v17 + 8))(v16, v42);
    sub_238484A4C(v9, type metadata accessor for BankConnectAuthorizationFlow);
    v23 = sub_2384615AC(v20, v22, &v52);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_238724998(v13);
    sub_23875A990();
    v19(v13, v41);
    v24 = sub_23875A970();
    v26 = v25;
    (*(v44 + 8))(v43, v45);
    sub_238484A4C(v10, type metadata accessor for BankConnectAuthorizationFlow);
    v27 = sub_2384615AC(v24, v26, &v52);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_2383F8000, log, v47, "Privacy onboarding step successfully initiated consent for institutionID: %s with consentID: %s.", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v48, -1, -1);
    MEMORY[0x23EE64DF0](v18, -1, -1);

    (*(v49 + 8))(v50, v51);
  }

  else
  {

    sub_238484A4C(v10, type metadata accessor for BankConnectAuthorizationFlow);
    sub_238484A4C(v9, type metadata accessor for BankConnectAuthorizationFlow);
    (*(v12 + 8))(v11, v51);
  }

  v28 = v0[17];
  v29 = v0[18];
  v30 = v0[2];
  sub_238484DE0(v0[21], v30, type metadata accessor for BankConnectAuthorizationFlow);
  (*(v29 + 56))(v30, 0, 1, v28);
  type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  swift_storeEnumTagMultiPayload();
  v32 = v0[20];
  v31 = v0[21];
  v33 = v0[19];
  v35 = v0[15];
  v34 = v0[16];
  v36 = v0[12];
  v37 = v0[9];
  v38 = v0[6];

  v39 = v0[1];

  return v39();
}

uint64_t sub_238480BBC()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[15];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "Privacy onboarding step failed to initialise authorization flow with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[26];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  v16 = v0[2];

  (*(v14 + 8))(v13, v15);
  *v16 = v12;
  type metadata accessor for BankConnectPrivacyOnboardingResult(0);
  swift_storeEnumTagMultiPayload();
  v18 = v0[20];
  v17 = v0[21];
  v19 = v0[19];
  v21 = v0[15];
  v20 = v0[16];
  v22 = v0[12];
  v23 = v0[9];
  v24 = v0[6];

  v25 = v0[1];

  return v25();
}

uint64_t BankConnectPrivacyOnboardingViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  v2 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v3 = sub_238757B60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID + 8);

  v5 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel__isLoading;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t BankConnectPrivacyOnboardingViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v3 = sub_238757B60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID + 8);

  v5 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel__isLoading;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_238480F90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_238480FD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23843981C(v2, &v17 - v11, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t BankConnectPrivacyOnboardingView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v5 = *(v4 + 20);
  v6 = *MEMORY[0x277CDFA10];
  v7 = sub_23875C880();
  result = (*(*(v7 - 8) + 104))(a2 + v5, v6, v7);
  v9 = a2 + *(v4 + 24);
  *v9 = sub_238447830;
  *(v9 + 1) = a1;
  v9[16] = 0;
  return result;
}

uint64_t BankConnectPrivacyOnboardingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A9A8, &qword_2387663F0);
  return sub_238481300(v1, a1 + *(v3 + 44));
}

uint64_t sub_238481300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = v5;
  v25 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA38, &qword_238766618);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  sub_23875ED50();
  v22[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875D760();
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA40, &qword_238766620);
  sub_238484AB4();
  v12 = sub_23875C410();
  MEMORY[0x28223BE20](v12);
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA60, &qword_238766630);
  sub_23843A3E8(&qword_27DF0AA68, &qword_27DF0AA38, &qword_238766618);
  sub_238484B74();
  v13 = v26;
  sub_23875DBA0();
  (*(v7 + 8))(v10, v6);
  v14 = sub_23875C910();
  v15 = sub_23875D7D0();
  v16 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAA8, &qword_238766650) + 36);
  *v16 = v14;
  *(v16 + 8) = v15;
  v17 = v25;
  sub_238484D78(a1, v25, type metadata accessor for BankConnectPrivacyOnboardingView);
  v18 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v19 = swift_allocObject();
  sub_238484DE0(v17, v19 + v18, type metadata accessor for BankConnectPrivacyOnboardingView);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAB0, &qword_238766658);
  v21 = (v13 + *(result + 36));
  *v21 = sub_238484E48;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  return result;
}

uint64_t sub_2384816D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAF8, &qword_2387666C0);
  sub_2384817F8(a1, a2 + *(v4 + 44));
  v5 = sub_23875D790();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA40, &qword_238766620);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_2384817F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB00, &qword_2387666C8);
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  MEMORY[0x28223BE20](v3);
  v101 = (&v101 - v5);
  v102 = sub_23875C880();
  v114 = *(v102 - 8);
  v6 = *(v114 + 64);
  MEMORY[0x28223BE20](v102);
  v110 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB08, &qword_2387666D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v117 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v119 = &v101 - v12;
  v13 = sub_238759A00();
  v108 = *(v13 - 8);
  v109 = v13;
  v14 = *(v108 + 64);
  MEMORY[0x28223BE20](v13);
  v105 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_238757B60();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v118 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v22 = v121 + *(v21 + 24);
  v23 = *v22;
  v24 = *(v22 + 8);
  v106 = v21;
  v107 = v23;
  v104 = v24;
  v25 = *(v22 + 16);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  v103 = sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel);
  v26 = sub_23875C490();
  (*(v17 + 16))(v20, v26 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution, v16);

  KeyPath = swift_getKeyPath();
  LOBYTE(v185) = 0;
  v135[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v126 = *(&v136 + 1);
  v127 = v136;
  v27 = sub_238757B40();
  v123 = v28;
  v124 = v27;
  (*(v17 + 8))(v20, v16);
  v122 = v185;
  v125 = sub_23875D7A0();
  sub_23875C3D0();
  v111 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v120 = sub_23875D030();
  LOBYTE(v185) = 0;
  v36 = v121;
  sub_238482474(v121, &v136);
  v179 = *&v137[48];
  v180[0] = *&v137[64];
  *(v180 + 9) = *&v137[73];
  v175 = v136;
  v176 = *v137;
  v177 = *&v137[16];
  v178 = *&v137[32];
  v181[0] = v136;
  v181[1] = *v137;
  v181[2] = *&v137[16];
  v181[3] = *&v137[32];
  v181[4] = *&v137[48];
  v182[0] = *&v137[64];
  *(v182 + 9) = *&v137[73];
  sub_23843981C(&v175, v135, &qword_27DF0AB10, &qword_238766710);
  sub_238439884(v181, &qword_27DF0AB10, &qword_238766710);
  *(&v169[3] + 7) = v178;
  *(&v169[4] + 7) = v179;
  *(&v169[5] + 7) = v180[0];
  v169[6] = *(v180 + 9);
  *(v169 + 7) = v175;
  *(&v169[1] + 7) = v176;
  *(&v169[2] + 7) = v177;
  v112 = v185;
  v113 = sub_23875D770();
  sub_23875C3D0();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v170 = 0;
  sub_23875E4B0();
  v45 = 1;
  sub_23875C9C0();
  *&v171[55] = v188;
  *&v171[71] = v189;
  *&v171[87] = v190;
  *&v171[103] = v191;
  *&v171[7] = v185;
  *&v171[23] = v186;
  *&v171[39] = v187;
  sub_23875C490();
  v46 = v105;
  sub_23847ED90(v105);

  v107 = sub_238721A7C();
  (*(v108 + 8))(v46, v109);
  LODWORD(v109) = sub_23875D770();
  sub_23875C3D0();
  v108 = v47;
  v104 = v49;
  v105 = v48;
  v103 = v50;
  v51 = v110;
  sub_238480FD0(v110);
  v52 = *(v106 + 20);
  sub_238484974(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v53 = v102;
  LOBYTE(v52) = sub_23875E990();
  (*(v114 + 8))(v51, v53);
  v54 = v116;
  if (v52)
  {
    v55 = sub_23875D020();
    v56 = v101;
    *v101 = v55;
    *(v56 + 8) = 0;
    *(v56 + 16) = 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAC8, &qword_238766668);
    sub_238483030(v36, (v56 + *(v57 + 44)));
    v58 = sub_23875D770();
    v114 = v38;
    sub_23875C3D0();
    v110 = v40;
    v60 = v59;
    v106 = v42;
    v62 = v61;
    v63 = v44;
    v65 = v64;
    v121 = v35;
    v66 = v33;
    v68 = v67;
    v69 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA90, &qword_238766640) + 36);
    *v69 = v58;
    *(v69 + 8) = v60;
    *(v69 + 16) = v62;
    *(v69 + 24) = v65;
    *(v69 + 32) = v68;
    v44 = v63;
    *(v69 + 40) = 0;
    v70 = sub_23875D7A0();
    sub_23875C3D0();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v79 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA78, &qword_238766638) + 36);
    *v79 = v70;
    *(v79 + 8) = v72;
    *(v79 + 16) = v74;
    v33 = v66;
    v35 = v121;
    v38 = v114;
    *(v79 + 24) = v76;
    *(v79 + 32) = v78;
    v40 = v110;
    v42 = v106;
    *(v79 + 40) = 0;
    v80 = sub_23875D790();
    sub_23875C3D0();
    v81 = v56 + *(v54 + 36);
    *v81 = v80;
    *(v81 + 8) = v82;
    *(v81 + 16) = v83;
    *(v81 + 24) = v84;
    *(v81 + 32) = v85;
    *(v81 + 40) = 0;
    sub_238485078(v56, v119);
    v45 = 0;
  }

  v86 = v119;
  (*(v115 + 56))(v119, v45, 1, v54);
  v87 = v117;
  sub_23843981C(v86, v117, &qword_27DF0AB08, &qword_2387666D0);
  *&v129 = v124;
  *(&v129 + 1) = v123;
  LOBYTE(v130) = 3;
  *(&v130 + 1) = v173[0];
  DWORD1(v130) = *(v173 + 3);
  *(&v130 + 1) = 0x3FB999999999999ALL;
  *&v131 = KeyPath;
  BYTE8(v131) = v122;
  HIDWORD(v131) = *&v172[3];
  *(&v131 + 9) = *v172;
  *&v132 = v127;
  *(&v132 + 1) = v126;
  LOBYTE(v133) = v125;
  DWORD1(v133) = *&v174[3];
  *(&v133 + 1) = *v174;
  v88 = v111;
  *(&v133 + 1) = v111;
  *&v134[0] = v31;
  *(&v134[0] + 1) = v33;
  *&v134[1] = v35;
  BYTE8(v134[1]) = 0;
  v89 = v130;
  *a2 = v129;
  *(a2 + 16) = v89;
  v90 = v131;
  v91 = v132;
  v92 = v133;
  v93 = v134[0];
  *(a2 + 89) = *(v134 + 9);
  *(a2 + 64) = v92;
  *(a2 + 80) = v93;
  *(a2 + 32) = v90;
  *(a2 + 48) = v91;
  v135[0] = v120;
  v135[1] = 0;
  v94 = v112;
  LOBYTE(v135[2]) = v112;
  *(&v135[6] + 1) = v169[2];
  *(&v135[4] + 1) = v169[1];
  *(&v135[2] + 1) = v169[0];
  *(&v135[14] + 1) = v169[6];
  *(&v135[12] + 1) = v169[5];
  *(&v135[10] + 1) = v169[4];
  *(&v135[8] + 1) = v169[3];
  HIDWORD(v135[16]) = *&v184[3];
  *(&v135[16] + 1) = *v184;
  v95 = v113;
  LOBYTE(v135[17]) = v113;
  HIDWORD(v135[17]) = *&v183[3];
  *(&v135[17] + 1) = *v183;
  v135[18] = v38;
  v135[19] = v40;
  v135[20] = v42;
  v135[21] = v44;
  LOBYTE(v135[22]) = 0;
  *(&v135[32] + 1) = *&v171[80];
  *(&v135[34] + 1) = *&v171[96];
  *(&v135[28] + 1) = *&v171[48];
  *(&v135[26] + 1) = *&v171[32];
  *(&v135[24] + 1) = *&v171[16];
  *(&v135[22] + 1) = *v171;
  v135[36] = *&v171[111];
  *(&v135[30] + 1) = *&v171[64];
  memcpy((a2 + 112), v135, 0x128uLL);
  *(a2 + 408) = v107;
  *(a2 + 416) = v109;
  v97 = v104;
  v96 = v105;
  *(a2 + 424) = v108;
  *(a2 + 432) = v96;
  v98 = v103;
  *(a2 + 440) = v97;
  *(a2 + 448) = v98;
  *(a2 + 456) = 0;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB18, &unk_238766718);
  sub_23843981C(v87, a2 + *(v99 + 80), &qword_27DF0AB08, &qword_2387666D0);
  sub_23843981C(&v129, &v136, &qword_27DF095D8, &qword_238763980);
  sub_23843981C(v135, &v136, &qword_27DF0AB20, &qword_238766728);

  sub_238439884(v86, &qword_27DF0AB08, &qword_2387666D0);
  sub_238439884(v87, &qword_27DF0AB08, &qword_2387666D0);

  *&v137[49] = v169[3];
  *&v137[65] = v169[4];
  *&v137[81] = v169[5];
  *&v137[97] = v169[6];
  *&v137[1] = v169[0];
  *&v137[17] = v169[1];
  v136 = v120;
  v137[0] = v94;
  *&v137[33] = v169[2];
  *&v138[3] = *&v184[3];
  *v138 = *v184;
  v139 = v95;
  *&v140[3] = *&v183[3];
  *v140 = *v183;
  v141 = v38;
  v142 = v40;
  v143 = v42;
  v144 = v44;
  v145 = 0;
  v151 = *&v171[80];
  *v152 = *&v171[96];
  v150 = *&v171[64];
  *&v152[15] = *&v171[111];
  v146 = *v171;
  v147 = *&v171[16];
  v148 = *&v171[32];
  v149 = *&v171[48];
  sub_238439884(&v136, &qword_27DF0AB20, &qword_238766728);
  v153[0] = v124;
  v153[1] = v123;
  v154 = 3;
  *v155 = v173[0];
  *&v155[3] = *(v173 + 3);
  v156 = 0x3FB999999999999ALL;
  v157 = KeyPath;
  v158 = v122;
  *v159 = *v172;
  *&v159[3] = *&v172[3];
  v160 = v127;
  v161 = v126;
  v162 = v125;
  *&v163[3] = *&v174[3];
  *v163 = *v174;
  v164 = v88;
  v165 = v31;
  v166 = v33;
  v167 = v35;
  v168 = 0;
  sub_238439884(v153, &qword_27DF095D8, &qword_238763980);
}

uint64_t sub_238482474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = sub_238757B60();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v66);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v70 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v63 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v64 = "ON_PICKER_CANCEL_BUTTON_TITLE";
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  v79 = v13;
  v80 = v15;
  sub_2384397A8();
  v16 = sub_23875DAA0();
  v68 = v17;
  v69 = v16;
  v65 = v18;
  v67 = v19;
  v62 = "PRIVACY_ONBOARDING_TITLE";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2387632F0;
  v21 = (a1 + *(type metadata accessor for BankConnectPrivacyOnboardingView(0) + 24));
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel);
  v25 = sub_23875C490();
  v26 = v66;
  (*(v4 + 16))(v7, v25 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution, v66);

  v27 = sub_238757B50();
  v29 = v28;
  (*(v4 + 8))(v7, v26);
  v79 = v27;
  v80 = v29;
  *&v75 = 32;
  *(&v75 + 1) = 0xE100000000000000;
  v71[0] = 41154;
  v71[1] = 0xA200000000000000;
  v30 = MEMORY[0x277D837D0];
  v31 = sub_23875F260();
  v33 = v32;

  *(v20 + 56) = v30;
  *(v20 + 64) = sub_238448C58();
  *(v20 + 32) = v31;
  *(v20 + 40) = v33;
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = [v63 localizedStringForKey:v34 value:v35 table:v36];

  sub_23875EA80();
  v38 = sub_23875EAA0();
  v40 = v39;

  v79 = v38;
  v80 = v40;
  v41 = sub_23875DAA0();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v30) = sub_23875D7A0();
  sub_23875C3D0();
  LOBYTE(v38) = v65 & 1;
  v72 = v65 & 1;
  v48 = *v74;
  *(&v76 + 1) = *v74;
  DWORD1(v76) = *&v74[3];
  DWORD1(v77) = *&v73[3];
  v49 = *v73;
  *(&v77 + 1) = *v73;
  *(a2 + 16) = v65 & 1;
  *&v75 = v41;
  *(&v75 + 1) = v43;
  LOBYTE(v76) = v45 & 1;
  *(&v76 + 1) = v47;
  LOBYTE(v77) = v30;
  *(&v77 + 1) = v50;
  *&v78[0] = v51;
  *(&v78[0] + 1) = v52;
  *&v78[1] = v53;
  BYTE8(v78[1]) = 0;
  v55 = v68;
  v54 = v69;
  *a2 = v69;
  *(a2 + 8) = v55;
  *(a2 + 24) = v67;
  v56 = v77;
  v57 = v78[0];
  *(a2 + 89) = *(v78 + 9);
  *(a2 + 64) = v56;
  *(a2 + 80) = v57;
  v58 = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = v58;
  v79 = v41;
  v80 = v43;
  v81 = v45 & 1;
  *&v82[3] = *&v74[3];
  *v82 = v48;
  v83 = v47;
  v84 = v30;
  *&v85[3] = *&v73[3];
  *v85 = v49;
  v86 = v50;
  v87 = v51;
  v88 = v52;
  v89 = v53;
  v90 = 0;
  v59 = v54;
  v60 = v55;
  sub_23843980C(v54, v55, v38);

  sub_23843981C(&v75, v71, &qword_27DF0AB28, &qword_238771F60);
  sub_238439884(&v79, &qword_27DF0AB28, &qword_238771F60);
  sub_2384397FC(v59, v60, v38);
}

uint64_t sub_238482A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_23875CFB0();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA78, &qword_238766638);
  v6 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v8 = &v45 - v7;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAB8, &qword_238766660);
  v9 = *(v51 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v51);
  v46 = &v45 - v11;
  v12 = sub_23875C880();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA60, &qword_238766630);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238480FD0(v16);
  v21 = *(type metadata accessor for BankConnectPrivacyOnboardingView(0) + 20);
  sub_238484974(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v22 = sub_23875E990();
  (*(v13 + 8))(v16, v12);
  v23 = 1;
  v24 = v51;
  if ((v22 & 1) == 0)
  {
    *v8 = sub_23875D020();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAC8, &qword_238766668);
    sub_238483030(a1, &v8[*(v25 + 44)]);
    v26 = sub_23875D770();
    sub_23875C3D0();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AA90, &qword_238766640) + 36)];
    *v35 = v26;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = sub_23875D7A0();
    sub_23875C3D0();
    v37 = v48;
    v38 = &v8[*(v47 + 36)];
    *v38 = v36;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    sub_23875CFA0();
    sub_238484C34();
    v43 = v46;
    sub_23875DD10();
    (*(v49 + 8))(v37, v50);
    sub_238439884(v8, &qword_27DF0AA78, &qword_238766638);
    (*(v9 + 32))(v20, v43, v24);
    v23 = 0;
  }

  (*(v9 + 56))(v20, v23, 1, v24);
  sub_2383FFEFC(v20, v52);
}

uint64_t sub_238482F10(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for BankConnectPrivacyOnboardingView(0) + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel);
  sub_23875C490();
  sub_23847FABC();
}

uint64_t sub_238483030@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v58 = a1;
  v57 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD0, &qword_238766670);
  v62 = *(v63 - 8);
  v2 = *(v62 + 64);
  v3 = MEMORY[0x28223BE20](v63);
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v59 = &v56 - v5;
  v6 = sub_23875D910();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v60 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v18 = v17;

  v75 = v16;
  v76 = v18;
  sub_2384397A8();
  v19 = sub_23875DAA0();
  v21 = v20;
  LOBYTE(v13) = v22;
  sub_23875D930();
  (*(v7 + 104))(v10, *MEMORY[0x277CE0A10], v6);
  sub_23875D950();

  (*(v7 + 8))(v10, v6);
  v23 = sub_23875DA60();
  v25 = v24;
  v27 = v26;

  sub_2384397FC(v19, v21, v13 & 1);

  LODWORD(v75) = sub_23875D440();
  v65 = sub_23875DA20();
  v56 = v28;
  LOBYTE(v19) = v29;
  v66 = v30;
  sub_2384397FC(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v64 = sub_23875D7A0();
  v32 = sub_23875C3D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v19 & 1;
  LOBYTE(v75) = v19 & 1;
  LOBYTE(v70) = 0;
  MEMORY[0x28223BE20](v32);
  *(&v56 - 2) = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0);
  v42 = v59;
  sub_23875D1D0();
  v43 = v62;
  v44 = *(v62 + 16);
  v45 = v61;
  v46 = v63;
  v44(v61, v42, v63);
  *&v70 = v65;
  v47 = v56;
  *(&v70 + 1) = v56;
  LOBYTE(v71) = v41;
  *(&v71 + 1) = *v69;
  DWORD1(v71) = *&v69[3];
  *(&v71 + 1) = v66;
  *&v72 = KeyPath;
  BYTE8(v72) = 0;
  HIDWORD(v72) = *&v68[3];
  *(&v72 + 9) = *v68;
  LOBYTE(v73) = v64;
  DWORD1(v73) = *&v67[3];
  *(&v73 + 1) = *v67;
  *(&v73 + 1) = v34;
  *v74 = v36;
  *&v74[8] = v38;
  *&v74[16] = v40;
  v74[24] = 0;
  v48 = v71;
  v49 = v57;
  *v57 = v70;
  v49[1] = v48;
  v50 = v72;
  v51 = v73;
  v52 = *v74;
  *(v49 + 73) = *&v74[9];
  v49[3] = v51;
  v49[4] = v52;
  v49[2] = v50;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAE8, &qword_2387666B0);
  v44(v49 + *(v53 + 48), v45, v46);
  sub_23843981C(&v70, &v75, &qword_27DF0AAF0, &qword_2387666B8);
  v54 = *(v43 + 8);
  v54(v42, v46);
  v54(v45, v46);
  v75 = v65;
  v76 = v47;
  v77 = v41;
  *v78 = *v69;
  *&v78[3] = *&v69[3];
  v79 = v66;
  v80 = KeyPath;
  v81 = 0;
  *v82 = *v68;
  *&v82[3] = *&v68[3];
  v83 = v64;
  *&v84[3] = *&v67[3];
  *v84 = *v67;
  v85 = v34;
  v86 = v36;
  v87 = v38;
  v88 = v40;
  v89 = 0;
  sub_238439884(&v75, &qword_27DF0AAF0, &qword_2387666B8);
}

uint64_t sub_238483788@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238483838(a1);
}

uint64_t sub_238483838@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23875EA80();
  v12 = v11;

  v13 = v1 + *(v3 + 24);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
  type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  LOBYTE(v15) = v24;
  sub_238484D78(v1, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BankConnectPrivacyOnboardingView);
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_238484DE0(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for BankConnectPrivacyOnboardingView);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v20 = a1 + v19[9];
  result = sub_23875D610();
  *a1 = v10;
  a1[1] = v12;
  *(a1 + v19[10]) = v15;
  v22 = (a1 + v19[11]);
  *v22 = sub_23848501C;
  v22[1] = v18;
  return result;
}

uint64_t sub_238483B30()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for BankConnectPrivacyOnboardingView(0) + 24));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel);
  v35 = v7;
  v34 = v8;
  v33 = v9;
  v32[1] = v10;
  LODWORD(v7) = *(sub_23875C490() + 72);

  v11 = MEMORY[0x277D38550];
  if (!v7)
  {
    v11 = MEMORY[0x277D38560];
  }

  v12 = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v14 = sub_23867B330(v5);
  v16 = v15;
  (*(v2 + 8))(v5, v1);
  *(inited + 40) = v14;
  *(inited + 48) = v16;
  v17 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_238763300;
  v19 = *MEMORY[0x277D383D8];
  *(v18 + 32) = *MEMORY[0x277D383D8];
  v20 = *MEMORY[0x277D38428];
  *(v18 + 40) = sub_23875EA80();
  *(v18 + 48) = v21;
  v22 = *MEMORY[0x277D38390];
  *(v18 + 56) = *MEMORY[0x277D38390];
  *(v18 + 64) = 0x65756E69746E6F63;
  v23 = *MEMORY[0x277D384B8];
  *(v18 + 72) = 0xE800000000000000;
  *(v18 + 80) = v23;
  strcpy((v18 + 88), "consentPrompt");
  *(v18 + 102) = -4864;
  v24 = v19;
  v25 = v22;
  v26 = v23;
  v27 = sub_23854B138(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = v27;
  sub_2385C33E4(v17, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v36);

  v29 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238484974(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v30 = sub_23875E910();

  [v29 subject:v12 sendEvent:v30];

  sub_23875C490();
  sub_23847F278();
}

uint64_t sub_238483F60@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A9A8, &qword_2387663F0);
  return sub_238481300(v1, a1 + *(v3 + 44));
}

uint64_t sub_238483FB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_238484030(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2384840A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v31 = a7;
  v32 = a8;
  v30 = a4;
  v29 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  v35 = a10;
  v36 = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a5, a10);
  v21 = *a6;
  v22 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel__isLoading;
  v33 = 0;
  sub_23875C290();
  (*(v16 + 32))(a9 + v22, v19, v15);
  v23 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_institution;
  v24 = sub_238757B60();
  (*(*(v24 - 8) + 32))(a9 + v23, a1, v24);
  v25 = (a9 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_fpanID);
  v26 = v29;
  *v25 = a2;
  v25[1] = v26;
  *(a9 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectPrivacyOnboardingViewModel_isExistingConnection) = v30;
  sub_2384347C0(&v34, a9 + 16);
  *(a9 + 72) = v21;
  v27 = v32;
  *(a9 + 56) = v31;
  *(a9 + 64) = v27;
  return a9;
}

uint64_t sub_23848428C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v16 = *(a10 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BankConnectPrivacyOnboardingViewModel(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v16 + 16))(v19, a5, a10);
  return sub_2384840A4(a1, a2, a3, a4, v19, v26, v27, v28, v23, a10, a11);
}

void sub_23848446C()
{
  sub_2384847B4(319, &qword_27DF0A9C0, type metadata accessor for BankConnectAuthorizationFlow, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_238484510();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_238484510()
{
  result = qword_27DF0A9C8;
  if (!qword_27DF0A9C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF0A9C8);
  }

  return result;
}

void sub_23848459C()
{
  v0 = sub_238757B60();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_238461990();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2384846E8()
{
  sub_2384847B4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_23875C880();
    if (v1 <= 0x3F)
    {
      sub_238484818();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384847B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238484818()
{
  if (!qword_27DF0A9F0)
  {
    type metadata accessor for BankConnectPrivacyOnboardingViewModel(255);
    sub_238484974(&qword_27DF0A9F8, type metadata accessor for BankConnectPrivacyOnboardingViewModel);
    v0 = sub_23875C4B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A9F0);
    }
  }
}

uint64_t sub_2384848AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238449A7C;

  return sub_23847FEE0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_238484974(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384849BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_23847F3D0(v0);
}

uint64_t sub_238484A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238484AB4()
{
  result = qword_27DF0AA48;
  if (!qword_27DF0AA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA40, &qword_238766620);
    sub_23843A3E8(&qword_27DF0AA50, &qword_27DF0AA58, &qword_238766628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA48);
  }

  return result;
}

unint64_t sub_238484B74()
{
  result = qword_27DF0AA70;
  if (!qword_27DF0AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA60, &qword_238766630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA78, &qword_238766638);
    sub_238484C34();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA70);
  }

  return result;
}

unint64_t sub_238484C34()
{
  result = qword_27DF0AA80;
  if (!qword_27DF0AA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA78, &qword_238766638);
    sub_238484CC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA80);
  }

  return result;
}

unint64_t sub_238484CC0()
{
  result = qword_27DF0AA88;
  if (!qword_27DF0AA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0AA90, &qword_238766640);
    sub_23843A3E8(&qword_27DF0AA98, &qword_27DF0AAA0, &qword_238766648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA88);
  }

  return result;
}

uint64_t sub_238484D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238484DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_238484E48()
{
  v1 = *(type metadata accessor for BankConnectPrivacyOnboardingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_238482F10(v2);
}

uint64_t objectdestroy_33Tm()
{
  v1 = type metadata accessor for BankConnectPrivacyOnboardingView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C880();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v1 + 20);
  v9 = sub_23875C880();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = &v5[*(v1 + 24)];
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = v10[16];
  sub_2383FC164();

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23848501C()
{
  v1 = *(type metadata accessor for BankConnectPrivacyOnboardingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_238483B30();
}

uint64_t sub_238485078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB00, &qword_2387666C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238485114(uint64_t a1, int a2)
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