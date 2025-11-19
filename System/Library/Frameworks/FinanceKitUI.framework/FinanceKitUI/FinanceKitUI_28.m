uint64_t sub_23871D350(uint64_t a1)
{
  v2 = type metadata accessor for TransactionSearchList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(a1 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  sub_23871FF7C(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23872019C(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for TransactionSearchList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
  sub_23875BCB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152B8, &qword_238782CF0);
  sub_23843A3E8(&qword_27DF0B670, &qword_27DF0B660, &unk_238768630);
  sub_23871FE3C(&qword_27DF152B0, &qword_27DF152B8, &qword_238782CF0, sub_23871FBBC);
  sub_2384B4E44();
  sub_23875E380();
}

uint64_t sub_23871D5F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v28 - v4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152D0, &unk_238782D00);
  v6 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v28 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15318, &qword_238782DC8);
  v31 = *(v33 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v28 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152C8, &qword_238782CF8);
  v12 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v14 = &v28 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF152B8, &qword_238782CF0);
  v15 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v17 = &v28 - v16;
  sub_23875ED50();
  v30 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385BA5E8(v39);
  v19 = v39[2];
  v18 = v39[3];

  sub_2384B5DE4(v39);
  *&v41 = v19;
  *(&v41 + 1) = v18;
  sub_2385BA5E8(v40);

  sub_2384B5DE4(v40);
  sub_2384397A8();
  sub_23875E190();
  sub_23875E4A0();
  sub_23875C9C0();
  (*(v2 + 32))(v8, v5, v32);
  v20 = &v8[*(v35 + 36)];
  v21 = v46;
  *(v20 + 4) = v45;
  *(v20 + 5) = v21;
  *(v20 + 6) = v47;
  v22 = v42;
  *v20 = v41;
  *(v20 + 1) = v22;
  v23 = v44;
  *(v20 + 2) = v43;
  *(v20 + 3) = v23;
  sub_23871FCCC();
  sub_2384B4E44();
  sub_23875DCC0();
  sub_238439884(v8, &qword_27DF152D0, &unk_238782D00);
  (*(v31 + 32))(v14, v11, v33);
  v24 = &v14[*(v29 + 36)];
  v24[32] = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = [objc_opt_self() systemBackgroundColor];
  v38 = sub_23875DFB0();
  v26 = sub_23875E2D0();
  sub_2384396E4(v14, v17, &qword_27DF152C8, &qword_238782CF8);
  *&v17[*(v34 + 36)] = v26;
  sub_2384396E4(v17, v37, &qword_27DF152B8, &qword_238782CF0);
}

uint64_t sub_23871DAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = type metadata accessor for TransactionSearchList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(v3 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  sub_23875C500();
  swift_getKeyPath();
  sub_23871FF7C(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_23872019C(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TransactionSearchList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15300, &unk_238782D18);
  sub_23843A3E8(&qword_27DF12998, &qword_27DF12940, &qword_23877B698);
  sub_238720060(&qword_27DF0B110, sub_2384FF9D8);
  sub_23871FE3C(&qword_27DF152F8, &qword_27DF15300, &unk_238782D18, sub_2384DD238);
  sub_23875E370();
}

uint64_t sub_23871DDA4@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a3;
  v75 = a2;
  v77 = type metadata accessor for TransactionSearchList();
  v65 = *(v77 - 1);
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v77);
  v66 = v5;
  v67 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v60[-v8];
  v69 = type metadata accessor for TransactionView();
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C518, &unk_23876A9D0);
  v12 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v73 = &v60[-v13];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15300, &unk_238782D18);
  v14 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v60[-v15];
  v16 = sub_238758F50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v64 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v21 = &v60[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v60[-v23];
  v25 = *a1;
  sub_23875ED50();
  v68 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = v25;
  sub_238758F60();
  v76 = v17;
  v27 = *(v17 + 16);
  v62 = v21;
  v28 = v27(v21, v24, v16);
  v29 = v75;
  v30 = *(v75 + *(v77 + 8));
  MEMORY[0x28223BE20](v28);
  *&v60[-16] = v24;
  v31 = v78;
  sub_23854CF80(sub_2387200A8, v32, v78);
  v33 = sub_238758680();
  v34 = *(v33 - 8);
  v77 = v24;
  v63 = v16;
  v35 = v34;
  result = (*(v34 + 48))(v31, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v80 = *v29;
    v81 = *(v29 + 8);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v79, v37);
    v38 = v77;
    v61 = sub_23860E62C(v77, v79);

    v39 = v67;
    sub_23871FF7C(v29, v67);
    v40 = v64;
    v41 = v38;
    v42 = v63;
    v27(v64, v41, v63);
    v43 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v44 = v76;
    v45 = (v66 + *(v76 + 80) + v43) & ~*(v76 + 80);
    v46 = swift_allocObject();
    sub_23872019C(v39, v46 + v43, type metadata accessor for TransactionSearchList);
    v47 = *(v44 + 32);
    v47(v46 + v45, v40, v42);
    *v11 = swift_getKeyPath();
    v11[8] = 0;
    v48 = v69;
    v49 = *(v69 + 20);
    *&v11[v49] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v47(&v11[v48[6]], v62, v42);
    (*(v35 + 32))(&v11[v48[7]], v78, v33);
    v11[v48[8]] = v61 & 1;
    v50 = &v11[v48[9]];
    *v50 = sub_2387200C8;
    v50[1] = v46;
    v51 = v48[10];
    v52 = *MEMORY[0x277CDFA00];
    v53 = sub_23875C880();
    (*(*(v53 - 8) + 104))(&v11[v51], v52, v53);
    v54 = v73;
    sub_23872019C(v11, v73, type metadata accessor for TransactionView);
    v55 = &v54[*(v70 + 36)];
    *v55 = xmmword_23876A640;
    *(v55 + 1) = xmmword_23876A640;
    v55[32] = 0;
    v56 = v76;
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v80 = qword_27DF2F920;

    v57 = sub_23875E2D0();
    v58 = v54;
    v59 = v71;
    sub_2384396E4(v58, v71, &qword_27DF0C518, &unk_23876A9D0);
    *&v59[*(v72 + 36)] = v57;
    sub_2384396E4(v59, v74, &qword_27DF15300, &unk_238782D18);
    (*(v56 + 8))(v77, v42);
  }

  return result;
}

uint64_t sub_23871E4F8()
{
  v0 = sub_23875BCB0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238758640();
  sub_238758F40();
  v8 = sub_23875BC80();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v7, v0);

  return v8 & 1;
}

uint64_t sub_23871E69C(char a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C598, &unk_23877B770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v29 - v8;
  v10 = sub_238758F50();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v29 - v17;
  if (a1)
  {
    (*(v11 + 16))(v14, a3, v10, v16);
    v19 = *a2;
    v20 = a2[1];
    v29[1] = a3;
    v21 = a2[2];
    v34 = v19;
    v35 = v20;
    v36 = v21;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v37);
    sub_2387099C0(v18, v14);
    (*(v11 + 8))(v18, v10);
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v30 = v37;
    sub_23875E2F0();

    v22 = a2[3];
    v23 = a2[4];
    v24 = a2[5];
    v34 = v22;
    v35 = v23;
    v36 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v37);
    sub_2384DB11C();
  }

  else
  {
    v26 = a2[1];
    v27 = a2[2];
    v34 = *a2;
    v25 = v34;
    v35 = v26;
    v36 = v27;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
    MEMORY[0x23EE62DC0](&v37);
    sub_2386F1FAC(a3, v9);
    sub_238439884(v9, &qword_27DF0C598, &unk_23877B770);
    v31 = v25;
    v32 = v26;
    v33 = v27;
    v30 = v37;
    sub_23875E2F0();

    v22 = a2[3];
    v23 = a2[4];
    v24 = a2[5];
    v34 = v22;
    v35 = v23;
    v36 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
    MEMORY[0x23EE62DC0](&v37);
    sub_2384DB6C8();
  }

  v31 = v22;
  v32 = v23;
  v33 = v24;
  v30 = v37;
  sub_23875E2F0();
}

uint64_t sub_23871EA3C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15250, &qword_238782B70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15258, &unk_238782B78);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23871ECF8();
  if (v11)
  {
    MEMORY[0x28223BE20](v11);
    MEMORY[0x28223BE20](v12);
    sub_23875D400();
    (*(v3 + 32))(v10, v6, v2);
    (*(v3 + 56))(v10, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v2);
  }

  sub_2384396E4(v10, a1, &qword_27DF15258, &unk_238782B78);
}

BOOL sub_23871ECF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12940, &qword_23877B698);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - v4;
  v6 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v8 = v17;
  v7 = v18;

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9 || (swift_getKeyPath(), swift_getKeyPath(), sub_23875C2D0(), , , v10 = *(v17 + 16), , v10))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    if ((v17 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23875C2D0();

      v11 = *(v17 + 16);

      if (!v11)
      {
        v12 = *(type metadata accessor for TransactionSearchList() + 28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
        sub_23875C500();
        sub_23843A3E8(&qword_27DF15260, &qword_27DF12940, &qword_23877B698);
        sub_23875EED0();
        sub_23875EF00();
        (*(v2 + 8))(v5, v1);
        if (v17 == v16)
        {
          return 1;
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v17 != 1)
  {
    return 0;
  }

  v14 = *(type metadata accessor for TransactionSearchList() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF15260, &qword_27DF12940, &qword_23877B698);
  sub_23875EED0();
  sub_23875EF00();
  (*(v2 + 8))(v5, v1);
  return v17 == v16;
}

uint64_t sub_23871F0CC@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23871F1B0();
  sub_2384397A8();
  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_23871F1B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2387632F0;
  v1 = sub_23871F4DC();
  v3 = v2;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_238448C58();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_23875EA80();
  v9 = sub_23875EAA0();

  return v9;
}

uint64_t sub_23871F334@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23871F4DC()
{
  v1 = *(v0 + 56);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v2 = *(v47 + 16);
  if (v2)
  {
    v54 = MEMORY[0x277D84F90];
    sub_2385FE468(0, v2, 0);
    v3 = v54;
    v4 = v47 + 32;
    for (i = v2 - 1; ; --i)
    {
      sub_2385BA73C(v4, v53);
      sub_2385BA73C(v53, &v44);
      if (v46 >= 4u)
      {
        v11 = v44;
        v12 = v45;

        v13 = [v12 title];
        v14 = sub_23875EA80();
        v16 = v15;

        *&v36 = v14;
        *(&v36 + 1) = v16;
        v17 = [v12 subtitle];
        v18 = sub_23875EA80();
        v20 = v19;

        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = v18 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          v22 = [v12 subtitle];
          v23 = sub_23875EA80();
          v25 = v24;

          v42 = 8236;
          v43 = 0xE200000000000000;
          MEMORY[0x23EE63650](v23, v25);

          MEMORY[0x23EE63650](v42, v43);
        }

        v26 = v36;
        v27 = sub_23875E030();
        v28 = swift_allocObject();
        *(v28 + 16) = v11;
        *(v28 + 32) = v12;
        v48 = v26;
        *&v49 = v27;
        *(&v49 + 1) = 0xD000000000000012;
        *(&v50 + 1) = 0x6E6F697461636F4CLL;
        *&v51 = 0xE800000000000000;
        *&v50 = 0x800000023878C470;
        v47 = v11;
        *(&v51 + 1) = &unk_238782BD0;
        v52 = v28;
      }

      else
      {
        sub_2384347C0(&v44, &v36);
        v6 = *(&v37 + 1);
        v7 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(v7 + 8))(&v47, v6, v7);
        __swift_destroy_boxed_opaque_existential_1(&v36);
      }

      v38 = v49;
      v39 = v50;
      v40 = v51;
      v41 = v52;
      v36 = v47;
      v37 = v48;
      v8 = v48;

      sub_2384B5DE4(&v36);
      sub_23871FAB0(v53);
      v54 = v3;
      v10 = *(v3 + 2);
      v9 = *(v3 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_2385FE468((v9 > 1), v10 + 1, 1);
        v3 = v54;
      }

      *(v3 + 2) = v10 + 1;
      *&v3[16 * v10 + 32] = v8;
      if (!i)
      {
        break;
      }

      v4 += 48;
    }
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v29 = v47;

  v30 = HIBYTE(*(&v29 + 1)) & 0xFLL;
  if ((*(&v29 + 1) & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v31 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_238497C2C(0, *(v3 + 2) + 1, 1, v3);
    }

    v33 = *(v3 + 2);
    v32 = *(v3 + 3);
    if (v33 >= v32 >> 1)
    {
      v3 = sub_238497C2C((v32 > 1), v33 + 1, 1, v3);
    }

    *(v3 + 2) = v33 + 1;
    *&v3[16 * v33 + 32] = v31;
  }

  *&v47 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
  sub_23843A3E8(&qword_27DF0AEC0, &qword_27DF09550, &qword_2387638E0);
  v34 = sub_23875E980();

  return v34;
}

uint64_t sub_23871F9FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2384494A4;

  return sub_23864FFDC(a1);
}

unint64_t sub_23871FB0C()
{
  result = qword_27DF152A8;
  if (!qword_27DF152A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152A0, &qword_238782CE8);
    sub_23871FE3C(&qword_27DF152B0, &qword_27DF152B8, &qword_238782CF0, sub_23871FBBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152A8);
  }

  return result;
}

unint64_t sub_23871FBBC()
{
  result = qword_27DF152C0;
  if (!qword_27DF152C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152C8, &qword_238782CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152D0, &unk_238782D00);
    sub_23871FCCC();
    sub_2384B4E44();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152C0);
  }

  return result;
}

unint64_t sub_23871FCCC()
{
  result = qword_27DF152D8;
  if (!qword_27DF152D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152D0, &unk_238782D00);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152D8);
  }

  return result;
}

unint64_t sub_23871FD8C()
{
  result = qword_27DF152F0;
  if (!qword_27DF152F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF152E8, &qword_238782D10);
    sub_23871FE3C(&qword_27DF152F8, &qword_27DF15300, &unk_238782D18, sub_2384DD238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF152F0);
  }

  return result;
}

uint64_t sub_23871FE3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23871FEEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23871FF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionSearchList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23871FFE0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TransactionSearchList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23871DDA4(a1, v6, a2);
}

uint64_t sub_238720060(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2387200C8(char a1)
{
  v3 = *(type metadata accessor for TransactionSearchList() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238758F50() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_23871E69C(a1, (v1 + v4), v7);
}

uint64_t sub_23872019C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = (type metadata accessor for TransactionSearchList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = *(v0 + v3 + 56);

  v12 = v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12920, &unk_23877B610);
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = *(v0 + v3 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23872033C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(type metadata accessor for TransactionSearchList() - 8) + 80);

  return sub_23871D5F4(a1, a2);
}

unint64_t sub_2387203BC()
{
  result = qword_27DF15320;
  if (!qword_27DF15320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15240, &qword_238782B60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15220, &qword_238782B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15218, &qword_238782B48);
    sub_23875D310();
    sub_23843A3E8(&qword_27DF15238, &qword_27DF15218, &qword_238782B48);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF15328, &qword_27DF15248, &qword_238782B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15320);
  }

  return result;
}

id AppSettingsController.__allocating_init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers] = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider] = 0;
  v6 = &v5[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id AppSettingsController.init(bundleIdentifier:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider] = 0;
  v3 = &v2[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for AppSettingsController();
  return objc_msgSendSuper2(&v5, sel_initWithNibName_bundle_, 0, 0);
}

id sub_2387207A0(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider] = 0;
  v5 = &v3[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  if (a2)
  {
    v6 = sub_23875EA50();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for AppSettingsController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);

  return v7;
}

id sub_238720A18(char a1)
{
  v22.receiver = v1;
  v22.super_class = type metadata accessor for AppSettingsController();
  objc_msgSendSuper2(&v22, sel_viewDidAppear_, a1 & 1);
  v3 = *MEMORY[0x277D38568];
  v4 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v3, 24, v4);

  v6 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_accountSpecifiers);
  if (v6 >> 62)
  {
LABEL_26:
    result = sub_23875F3A0();
    v7 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v16 = v1;

      v17 = 0;
      v8 = 0;
      v1 = &selRef_returnDeadline;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x23EE63F70](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_24:

          result = v16;
          return [result reloadSpecifiers];
        }

        v12 = sub_23875EA50();
        v13 = [v10 propertyForKey_];

        if (v13)
        {
          sub_23875F2E0();
          swift_unknownObjectRelease();
        }

        else
        {
          v19 = 0u;
          v20 = 0u;
        }

        v21[0] = v19;
        v21[1] = v20;
        if (!*(&v20 + 1))
        {
          break;
        }

        if (swift_dynamicCast() & 1) != 0 && (v18)
        {
          v14 = sub_23875ECD0();
          v15 = sub_23875EA50();
          [v10 setProperty:v14 forKey:v15];

          v17 = 1;
          v8 = v11;
          if (v11 == v7)
          {
            goto LABEL_24;
          }
        }

        else
        {

LABEL_5:
          ++v8;
          if (v11 == v7)
          {

            result = v16;
            if ((v17 & 1) == 0)
            {
              return result;
            }

            return [result reloadSpecifiers];
          }
        }
      }

      sub_238721954(v21);
      goto LABEL_5;
    }
  }

  return result;
}

char *sub_238720D80()
{
  v1 = sub_23875C1E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875EA50();
  v7 = [v0 valueForKey_];

  if (v7)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32 = v30;
  v33 = v31;
  if (*(&v31 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
    if (swift_dynamicCast())
    {
      v8 = sub_2386C7328(v29[0]);
LABEL_21:

      return v8;
    }
  }

  else
  {
    sub_238721954(&v32);
  }

  v9 = &v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier];
  v10 = *&v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_bundleIdentifier + 8];
  if (v10)
  {
LABEL_17:
    v17 = OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider;
    if (*&v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider])
    {
      v18 = *&v0[OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider];
    }

    else
    {
      v19 = *v9;
      v20 = objc_allocWithZone(type metadata accessor for AppSettingsProvider());

      v18 = sub_2387217D8(v19, v10, v0, 0, 0, v20);
      v21 = *&v0[v17];
    }

    *&v0[v17] = v18;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v22 = [v18 specifiers];
    swift_unknownObjectRelease();
    sub_2384950FC();
    v23 = sub_23875EC80();

    sub_2386C7328(v23);
    v24 = sub_23875EC60();

    [v0 setSpecifiers_];

    v8 = sub_2386C7328(v23);
    goto LABEL_21;
  }

  v11 = [v0 specifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_23875EA50();
    v14 = [v12 propertyForKey_];

    if (v14)
    {
      sub_23875F2E0();
      swift_unknownObjectRelease();
    }

    else
    {

      v30 = 0u;
      v31 = 0u;
    }

    v32 = v30;
    v33 = v31;
    if (!*(&v31 + 1))
    {
      sub_238721954(&v32);
      v10 = v9[1];
      if (v10)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if (swift_dynamicCast())
    {
      v15 = v29[1];
      v16 = v9[1];
      *v9 = v29[0];
      v9[1] = v15;
    }
  }

  v10 = v9[1];
  if (v10)
  {
    goto LABEL_17;
  }

LABEL_24:
  sub_23875C120();
  v26 = sub_23875C1B0();
  v27 = sub_23875EFE0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2383F8000, v26, v27, "Expected to be initialized with bundleID or obtain from property of specifier", v28, 2u);
    MEMORY[0x23EE64DF0](v28, -1, -1);
  }

  (*(v2 + 8))(v5, v1);
  return MEMORY[0x277D84F90];
}

uint64_t sub_23872129C(uint64_t a1)
{
  result = sub_2387212DC(a1);
  if (result)
  {

    return [v1 reloadSpecifiers];
  }

  return result;
}

uint64_t sub_2387212DC(uint64_t a1)
{
  v3 = sub_23875C1E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider);
  if (v8)
  {
    if (v8 == a1)
    {
      return 1;
    }

    v9 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI21AppSettingsController_provider);
    swift_unknownObjectRetain();
    sub_23875C120();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v10 = sub_23875C1B0();
    v11 = sub_23875EFE0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136315394;
      v14 = sub_23875E9D0();
      v16 = sub_2384615AC(v14, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2080;
      v17 = sub_23875E9D0();
      v19 = sub_2384615AC(v17, v18, &v22);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_2383F8000, v10, v11, "delegate mismatch: provider: %s, self.provider: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v13, -1, -1);
      MEMORY[0x23EE64DF0](v12, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v4 + 8))(v7, v3);
  }

  return 0;
}

uint64_t sub_238721600(uint64_t a1, uint64_t a2)
{
  result = sub_2387212DC(a1);
  if (result)
  {

    return [v2 reloadSpecifier_];
  }

  return result;
}

id AppSettingsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppSettingsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2387217D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_authorizationStateManager;
  v27[3] = sub_2387588D0();
  v27[4] = MEMORY[0x277CC70E0];
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_2387588C0();
  v14 = sub_23875A460();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&a6[v13] = sub_23875A420();
  v17 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_storeCoordinator;
  v18 = sub_23875AA80();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&a6[v17] = sub_23875AA70();
  v21 = OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountForSpecifier;
  v22 = MEMORY[0x277D84F90];
  *&a6[v21] = sub_23854C324(MEMORY[0x277D84F90]);
  *&a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_accountSpecifiers] = v22;
  v23 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_bundleIdentifier];
  *v23 = a1;
  *(v23 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v24 = &a6[OBJC_IVAR____TtC12FinanceKitUI19AppSettingsProvider_localizedTitle];
  *v24 = a4;
  *(v24 + 1) = a5;
  v26.receiver = a6;
  v26.super_class = ObjectType;
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_238721954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4A8, &qword_238767840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_238721A7C()
{
  v0 = sub_238759A00();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2387599B0();
  sub_238723DD8();
  v5 = sub_23875F2F0();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    v7 = sub_238498120(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_238498120((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v7[v9 + 32] = 0;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_2387599A0();
  v10 = sub_23875F2F0();
  v6(v4, v0);
  if (v10)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_238498120((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v7[v12 + 32] = 1;
  }

  sub_2387599F0();
  v13 = sub_23875F2F0();
  v6(v4, v0);
  if (v13 & 1) != 0 && (sub_238759990(), v14 = sub_23875F2F0(), v6(v4, v0), (v14))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      v7 = sub_238498120((v15 > 1), v16 + 1, 1, v7);
    }

    v18 = 4;
  }

  else
  {
    sub_2387599F0();
    v19 = sub_23875F2F0();
    v6(v4, v0);
    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v20 = *(v7 + 3);
      v17 = v16 + 1;
      if (v16 >= v20 >> 1)
      {
        v7 = sub_238498120((v20 > 1), v16 + 1, 1, v7);
      }

      v18 = 2;
    }

    else
    {
      sub_238759990();
      v21 = sub_23875F2F0();
      v6(v4, v0);
      if ((v21 & 1) == 0)
      {
        goto LABEL_32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v22 = *(v7 + 3);
      v17 = v16 + 1;
      if (v16 >= v22 >> 1)
      {
        v7 = sub_238498120((v22 > 1), v16 + 1, 1, v7);
      }

      v18 = 3;
    }
  }

  *(v7 + 2) = v17;
  v7[v16 + 32] = v18;
LABEL_32:
  sub_2387599C0();
  v23 = sub_23875F2F0();
  v6(v4, v0);
  if (v23)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
    }

    v25 = *(v7 + 2);
    v24 = *(v7 + 3);
    if (v25 >= v24 >> 1)
    {
      v7 = sub_238498120((v24 > 1), v25 + 1, 1, v7);
    }

    *(v7 + 2) = v25 + 1;
    v7[v25 + 32] = 5;
  }

  sub_2387599D0();
  v26 = sub_23875F2F0();
  v6(v4, v0);
  if (v26)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
    }

    v28 = *(v7 + 2);
    v27 = *(v7 + 3);
    if (v28 >= v27 >> 1)
    {
      v7 = sub_238498120((v27 > 1), v28 + 1, 1, v7);
    }

    *(v7 + 2) = v28 + 1;
    v7[v28 + 32] = 6;
  }

  sub_2387599E0();
  v29 = sub_23875F2F0();
  v6(v4, v0);
  if (v29)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
    }

    v31 = *(v7 + 2);
    v30 = *(v7 + 3);
    if (v31 >= v30 >> 1)
    {
      v7 = sub_238498120((v30 > 1), v31 + 1, 1, v7);
    }

    *(v7 + 2) = v31 + 1;
    v7[v31 + 32] = 7;
  }

  sub_238759980();
  v32 = sub_23875F2F0();
  v6(v4, v0);
  if (v32)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_238498120(0, *(v7 + 2) + 1, 1, v7);
    }

    v34 = *(v7 + 2);
    v33 = *(v7 + 3);
    if (v34 >= v33 >> 1)
    {
      v7 = sub_238498120((v33 > 1), v34 + 1, 1, v7);
    }

    *(v7 + 2) = v34 + 1;
    v7[v34 + 32] = 8;
  }

  return v7;
}

uint64_t sub_238722108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15348, &qword_238782E98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v64 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15350, &qword_238782EA0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15358, &qword_238782EA8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15360, &qword_238782EB0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  *v6 = sub_23875D030();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15368, &qword_238782EB8);
  sub_238722528(a1, &v6[*(v22 + 44)]);
  sub_23875E4B0();
  sub_23875C9C0();
  sub_2384396E4(v6, v11, &qword_27DF15348, &qword_238782E98);
  v23 = &v11[*(v8 + 44)];
  v24 = v70;
  *(v23 + 4) = v69;
  *(v23 + 5) = v24;
  *(v23 + 6) = v71;
  v25 = v66;
  *v23 = v65;
  *(v23 + 1) = v25;
  v26 = v68;
  *(v23 + 2) = v67;
  *(v23 + 3) = v26;
  LOBYTE(a1) = sub_23875D770();
  sub_23875C3D0();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_2384396E4(v11, v16, &qword_27DF15350, &qword_238782EA0);
  v35 = &v16[*(v13 + 44)];
  *v35 = a1;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  LOBYTE(a1) = sub_23875D7D0();
  sub_23875C3D0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_2384396E4(v16, v21, &qword_27DF15358, &qword_238782EA8);
  v44 = &v21[*(v18 + 44)];
  *v44 = a1;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15370, &qword_238782EC0);
  v46 = v64;
  v47 = (v64 + *(v45 + 36));
  v48 = *(sub_23875C980() + 20);
  v49 = *MEMORY[0x277CE0118];
  v50 = sub_23875CF50();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  __asm { FMOV            V0.2D, #26.0 }

  *v47 = _Q0;
  v56 = [objc_opt_self() secondarySystemBackgroundColor];
  v57 = sub_23875DFB0();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15378, &qword_238782EC8);
  *&v47[*(v58 + 52)] = v57;
  *&v47[*(v58 + 56)] = 256;
  v59 = sub_23875E4A0();
  v61 = v60;
  v62 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15380, &qword_238782ED0) + 36)];
  *v62 = v59;
  v62[1] = v61;
  return sub_2384396E4(v21, v46, &qword_27DF15360, &qword_238782EB0);
}

uint64_t sub_238722528@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15388, &qword_238782ED8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v30[-v7];
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238722A04(&v43);
  v34 = v43;
  v32 = v44;
  v31 = v45;
  v36 = v47;
  v35 = sub_23875D7A0();
  sub_23875C3D0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v39) = 0;
  *v8 = sub_23875E4A0();
  *(v8 + 1) = v17;
  *(v8 + 2) = 0x4024000000000000;
  v8[24] = 0;
  *(v8 + 4) = 0x4018000000000000;
  v8[40] = 0;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15390, &qword_238782EE0) + 44);
  v43 = a1;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15398, &qword_238782F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF153A0, &qword_238782F18);
  sub_23843A3E8(&qword_27DF153A8, &qword_27DF15398, &qword_238782F10);
  sub_23843A3E8(&qword_27DF153B0, &qword_27DF153A0, &qword_238782F18);
  sub_23875E370();

  v19 = v37;
  sub_23843981C(v8, v37, &qword_27DF15388, &qword_238782ED8);
  v20 = v34;
  *&v39 = v34;
  v21 = v32;
  *(&v39 + 1) = v32;
  LOBYTE(v18) = v31;
  LOBYTE(v40) = v31;
  *(&v40 + 1) = v56[0];
  DWORD1(v40) = *(v56 + 3);
  v22 = v36;
  *(&v40 + 1) = v36;
  v23 = v35;
  LOBYTE(v41) = v35;
  *(&v41 + 1) = *v55;
  DWORD1(v41) = *&v55[3];
  *(&v41 + 1) = v10;
  *v42 = v12;
  *&v42[8] = v14;
  *&v42[16] = v16;
  v42[24] = 0;
  v24 = v39;
  v25 = v40;
  v26 = v33;
  *(v33 + 57) = *&v42[9];
  v27 = *v42;
  v26[2] = v41;
  v26[3] = v27;
  *v26 = v24;
  v26[1] = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF153B8, &unk_238782F20);
  sub_23843981C(v19, v26 + *(v28 + 48), &qword_27DF15388, &qword_238782ED8);
  sub_23843981C(&v39, &v43, &qword_27DF0BAE8, &unk_23876A630);
  sub_238439884(v8, &qword_27DF15388, &qword_238782ED8);
  sub_238439884(v19, &qword_27DF15388, &qword_238782ED8);
  v43 = v20;
  v44 = v21;
  v45 = v18;
  *v46 = v56[0];
  *&v46[3] = *(v56 + 3);
  v47 = v22;
  v48 = v23;
  *v49 = *v55;
  *&v49[3] = *&v55[3];
  v50 = v10;
  v51 = v12;
  v52 = v14;
  v53 = v16;
  v54 = 0;
  sub_238439884(&v43, &qword_27DF0BAE8, &unk_23876A630);
}

uint64_t sub_238722A04@<X0>(uint64_t a1@<X8>)
{
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
  sub_23875D920();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v7, v9, v4 & 1);

  sub_23875D890();
  v16 = sub_23875D9E0();
  v18 = v17;
  LOBYTE(v4) = v19;
  v21 = v20;
  sub_2384397FC(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v21;
  return result;
}

__n128 sub_238722BF8@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.n128_u64[0] = sub_23875CE60();
  v7.n128_u8[8] = 0;
  sub_238722CD8(v3, v8);

  v4 = v8[2];
  *(a2 + 32) = v8[1];
  *(a2 + 48) = v4;
  *(a2 + 64) = v8[3];
  *(a2 + 80) = v9;
  result = v7;
  v6 = v8[0];
  *a2 = v7;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_238722CD8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 == 5)
  {
    sub_2387231B8();
  }

  v21 = sub_23875E0D0();
  v20 = sub_23875D970();
  KeyPath = swift_getKeyPath();
  v18 = sub_23875D020();
  sub_238722FA4();
  sub_2384397A8();
  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  sub_23875D7F0();
  v9 = sub_23875DA60();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_2384397FC(v4, v6, v8 & 1);

  v16 = sub_23875D030();
  *a2 = v21;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v9;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13 & 1;
  *(a2 + 56) = v15;
  *(a2 + 64) = v16;

  sub_23843980C(v9, v11, v13 & 1);

  sub_2384397FC(v9, v11, v13 & 1);
}

uint64_t sub_238722FA4()
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();

  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_23875EA80();
  return v5;
}

unint64_t sub_23872318C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_238724228(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2387231B8()
{
  v0 = 0xD000000000000014;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E140, &unk_238775000);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = sub_23875BD20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCD0();
  sub_23875BD10();
  v10 = sub_23875BD00();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) != 1)
  {
    v12 = sub_23875BCE0();
    v14 = v13;
    (*(v11 + 8))(v4, v10);
    v15 = v12 == 4477781 && v14 == 0xE300000000000000;
    if (v15 || (sub_23875F630() & 1) != 0)
    {
      goto LABEL_24;
    }

    v16 = v12 == 4475720 && v14 == 0xE300000000000000;
    if (v16 || (sub_23875F630() & 1) != 0)
    {
      goto LABEL_24;
    }

    v17 = v12 == 4478273 && v14 == 0xE300000000000000;
    if (v17 || (sub_23875F630() & 1) != 0 || v12 == 4473155 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 4479566 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
      goto LABEL_24;
    }

    if (v12 == 5395781 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 4476502 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_148:

      goto LABEL_26;
    }

    if (v12 == 5853258 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5722699 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_38:

      v0 = 0xD000000000000013;
      goto LABEL_26;
    }

    if (v12 == 5853780 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_46:

      v0 = 0xD00000000000001BLL;
      goto LABEL_26;
    }

    if (v12 == 5525069 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    if (v12 == 5528139 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
    {
LABEL_54:

      v0 = 0xD000000000000015;
      goto LABEL_26;
    }

    if ((v12 != 5259847 || v14 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
    {
      if (v12 == 5459017 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_24;
      }

      if (v12 == 5522498 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 4347218 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_54;
      }

      if (v12 == 5460545 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5262403 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5263171 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5264707 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5263172 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5134413 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5593429 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_148;
      }

      if (v12 == 5264197 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_24;
      }

      if (v12 == 5130062 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5134913 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_54;
      }

      if (v12 == 4998471 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_148;
      }

      if (v12 == 4931916 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_38;
      }

      if (v12 == 5393993 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_46;
      }

      if (v12 == 4735317 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 4675920 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {

        v0 = 0xD000000000000017;
        goto LABEL_26;
      }

      if (v12 == 4606019 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_54;
      }

      if (v12 == 4675393 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
      {
        goto LABEL_24;
      }

      if ((v12 != 5395010 || v14 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
      {
        if (v12 == 4411971 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
        {

          v0 = 0xD00000000000001DLL;
          goto LABEL_26;
        }

        if ((v12 != 5457991 || v14 != 0xE300000000000000) && (sub_23875F630() & 1) == 0 && (v12 != 4343892 || v14 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_148;
      }
    }

    v0 = 0xD000000000000018;
    goto LABEL_26;
  }

  sub_238439884(v4, &qword_27DF0E140, &unk_238775000);
LABEL_25:
  v0 = 0xD000000000000016;
LABEL_26:
  (*(v6 + 8))(v9, v5);
  return v0;
}

unint64_t sub_238723DD8()
{
  result = qword_27DF0AA10;
  if (!qword_27DF0AA10)
  {
    sub_238759A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0AA10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BankConnectPrivacyNutritionLabelItem(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BankConnectPrivacyNutritionLabelItem(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238723F80()
{
  result = qword_27DF153C0;
  if (!qword_27DF153C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15370, &qword_238782EC0);
    sub_238724094(&qword_27DF153C8, &qword_27DF15360, &qword_238782EB0, sub_238724064);
    sub_23843A3E8(&qword_27DF153E8, &qword_27DF15380, &qword_238782ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF153C0);
  }

  return result;
}

uint64_t sub_238724094(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238724118()
{
  result = qword_27DF153D8;
  if (!qword_27DF153D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15350, &qword_238782EA0);
    sub_23843A3E8(&qword_27DF153E0, &qword_27DF15348, &qword_238782E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF153D8);
  }

  return result;
}

unint64_t sub_2387241D4()
{
  result = qword_27DF153F0;
  if (!qword_27DF153F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF153F0);
  }

  return result;
}

unint64_t sub_238724228(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

uint64_t ShippingBox.init(backgroundColor:foregroundColor:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = a4;
  return result;
}

uint64_t ShippingBox.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = sub_2387243BC;
  a1[1] = v6;
}

uint64_t sub_2387242C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a4 = sub_23875E4A0();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15408, &qword_2387830C8);
  sub_2387243E4(a2, a3, a1, (a4 + *(v9 + 44)));
}

uint64_t sub_2387243E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21[1] = a3;
  v22 = a2;
  v24 = a4;
  v5 = sub_23875E0E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15410, &qword_2387830D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v21 - v15;
  sub_23875ED50();
  v23 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875E0D0();
  (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
  v17 = sub_23875E150();

  (*(v6 + 8))(v9, v5);
  sub_23875C630();
  sub_23875E4A0();
  sub_23875C5C0();
  *&v27[22] = v28[6];
  *&v27[38] = v29;
  *&v27[6] = v28[5];
  *(v26 + 2) = *v27;
  LOBYTE(v28[0]) = 1;
  v25 = v17;
  LOWORD(v26[0]) = 1;
  *(&v26[1] + 2) = *&v27[16];
  *(&v26[2] + 2) = *&v27[32];
  *&v26[3] = *(&v29 + 1);
  *(&v26[3] + 1) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15418, &qword_2387830D8);
  sub_23872486C();
  sub_23875DBF0();
  v28[1] = v26[0];
  v28[2] = v26[1];
  v28[3] = v26[2];
  v28[4] = v26[3];
  v28[0] = v25;
  sub_238439884(v28, &qword_27DF15418, &qword_2387830D8);
  sub_238724924(v16, v13);
  v18 = v24;
  *v24 = a1;
  *(v18 + 4) = 256;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15428, &unk_2387830E0);
  sub_238724924(v13, v18 + *(v19 + 48));

  sub_238439884(v16, &qword_27DF15410, &qword_2387830D0);
  sub_238439884(v13, &qword_27DF15410, &qword_2387830D0);
}

uint64_t sub_238724798@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t *@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 4) = v5;
  *a1 = sub_238724994;
  a1[1] = v6;
}

uint64_t objectdestroyTm_35()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23872486C()
{
  result = qword_27DF15420;
  if (!qword_27DF15420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15418, &qword_2387830D8);
    sub_238464B48();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15420);
  }

  return result;
}

uint64_t sub_238724924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15410, &qword_2387830D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238724998@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23872BBFC(v2, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23872BCA8(v19, v11, type metadata accessor for BankConnectWebAuthorizationFlow);
      v21 = sub_23875A9A0();
      (*(*(v21 - 8) + 16))(a1, v11, v21);
      v22 = type metadata accessor for BankConnectWebAuthorizationFlow;
      v23 = v11;
    }

    else
    {
      sub_23872BCA8(v19, v7, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v26 = sub_23875A9A0();
      (*(*(v26 - 8) + 16))(a1, v7, v26);
      v22 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
      v23 = v7;
    }

    return sub_23872BD10(v23, v22);
  }

  else
  {
    sub_23872BCA8(v19, v15, type metadata accessor for BankConnectAppAuthorizationFlow);
    v24 = sub_23875A9A0();
    return (*(*(v24 - 8) + 32))(a1, v15, v24);
  }
}

uint64_t BankConnectAppAuthorizationFlow.init(session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875A9A0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t BankConnectAuthorizationFlow.hash(into:)(__int128 *a1)
{
  v31 = a1;
  v2 = sub_23875C0A0();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23872BBFC(v1, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_23872BCA8(v21, v13, type metadata accessor for BankConnectWebAuthorizationFlow);
      MEMORY[0x23EE641F0](1);
      sub_23875A9A0();
      sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
      sub_23875E960();
      v23 = *(v10 + 20);
      sub_23875B940();
      sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260]);
      sub_23875E960();
      v24 = type metadata accessor for BankConnectWebAuthorizationFlow;
      v25 = v13;
    }

    else
    {
      sub_23872BCA8(v21, v9, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v26 = v31;
      MEMORY[0x23EE641F0](2);
      sub_23875A9A0();
      sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
      sub_23875E960();
      v27 = &v9[*(v6 + 20)];
      v28 = *(v27 + 4);
      __swift_project_boxed_opaque_existential_1(v27, *(v27 + 3));
      sub_2387591C0();
      sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
      sub_23875E960();
      (*(v30 + 8))(v5, v2);
      sub_23872B17C(v26, *&v9[*(v6 + 24)]);
      v24 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
      v25 = v9;
    }
  }

  else
  {
    sub_23872BCA8(v21, v17, type metadata accessor for BankConnectAppAuthorizationFlow);
    MEMORY[0x23EE641F0](0);
    sub_23875A9A0();
    sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
    sub_23875E960();
    v24 = type metadata accessor for BankConnectAppAuthorizationFlow;
    v25 = v17;
  }

  return sub_23872BD10(v25, v24);
}

uint64_t BankConnectAuthorizationFlow.hashValue.getter()
{
  sub_23875F700();
  BankConnectAuthorizationFlow.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2387251F4()
{
  sub_23875F700();
  BankConnectAuthorizationFlow.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_238725238()
{
  sub_23875F700();
  BankConnectAuthorizationFlow.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t BankConnectAppAuthorizationFlow.hash(into:)()
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);

  return sub_23875E960();
}

uint64_t BankConnectAppAuthorizationFlow.hashValue.getter()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725388()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725410()
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);

  return sub_23875E960();
}

uint64_t sub_238725494()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t BankConnectWebAuthorizationFlow.init(session:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23875A9A0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  v8 = sub_23875B940();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t static BankConnectWebAuthorizationFlow.== infix(_:_:)()
{
  if ((MEMORY[0x23EE5F410]() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);

  return sub_23875B890();
}

uint64_t BankConnectWebAuthorizationFlow.hash(into:)()
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v0 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260]);
  return sub_23875E960();
}

uint64_t BankConnectWebAuthorizationFlow.hashValue.getter()
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v0 = *(type metadata accessor for BankConnectWebAuthorizationFlow(0) + 20);
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725804(uint64_t a1)
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v2 = *(a1 + 20);
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2387258F0(uint64_t a1, uint64_t a2)
{
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v3 = *(a2 + 20);
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260]);
  return sub_23875E960();
}

uint64_t sub_2387259C4(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v3 = *(a2 + 20);
  sub_23875B940();
  sub_23872BC60(&qword_27DF0D190, MEMORY[0x277CC9260]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_238725AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5F410]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return sub_23875B890();
}

uint64_t BankConnectExtensionAuthorizationFlow.init(session:extensionIdentity:params:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_23875A9A0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  result = sub_2384347C0(a2, a4 + *(v9 + 20));
  *(a4 + *(v9 + 24)) = a3;
  return result;
}

uint64_t sub_238725BA8(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = result;
    v14 = *(*(result + 48) + 8 * v12);
    v15 = (*(result + 56) + 16 * v12);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;

    v19 = sub_2385477FC(v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {

      return 0;
    }

    v22 = (*(a2 + 56) + 16 * v19);
    if (*v22 == v17 && v22[1] == v16)
    {

      result = v13;
      v7 = v25;
    }

    else
    {
      v24 = sub_23875F630();

      result = v13;
      v7 = v25;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v25 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238725D3C(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_23853B46C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_23875F630();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t BankConnectExtensionAuthorizationFlow.hash(into:)(__int128 *a1)
{
  v3 = sub_23875C0A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v8 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v9 = (v1 + *(v8 + 20));
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
  sub_23875E960();
  (*(v4 + 8))(v7, v3);
  return sub_23872B17C(a1, *(v1 + *(v8 + 24)));
}

uint64_t BankConnectExtensionAuthorizationFlow.hashValue.getter()
{
  v1 = sub_23875C0A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v6 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v7 = (v0 + *(v6 + 20));
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
  sub_23875E960();
  (*(v2 + 8))(v5, v1);
  sub_23872B17C(v11, *(v0 + *(v6 + 24)));
  return sub_23875F760();
}

uint64_t sub_238726254(uint64_t a1)
{
  v3 = sub_23875C0A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v8 = (v1 + *(a1 + 20));
  v9 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
  sub_23875E960();
  (*(v4 + 8))(v7, v3);
  sub_23872B17C(v12, *(v1 + *(a1 + 24)));
  return sub_23875F760();
}

uint64_t sub_23872640C(__int128 *a1, uint64_t a2)
{
  v5 = sub_23875C0A0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v10 = (v2 + *(a2 + 20));
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
  sub_23875E960();
  (*(v6 + 8))(v9, v5);
  return sub_23872B17C(a1, *(v2 + *(a2 + 24)));
}

uint64_t sub_2387265B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875C0A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875F700();
  sub_23875A9A0();
  sub_23872BC60(&qword_27DF0D180, MEMORY[0x277CC8048]);
  sub_23875E960();
  v9 = (v2 + *(a2 + 20));
  v10 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2387591C0();
  sub_23872BC60(&qword_27DF0D188, MEMORY[0x277CC5DC0]);
  sub_23875E960();
  (*(v5 + 8))(v8, v4);
  sub_23872B17C(v13, *(v2 + *(a2 + 24)));
  return sub_23875F760();
}

uint64_t sub_23872677C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_238758850() - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v7 = sub_238758E20();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v9 = *(v8 + 64) + 15;
  v5[10] = swift_task_alloc();
  v10 = sub_23875A9A0();
  v5[11] = v10;
  v11 = *(v10 - 8);
  v5[12] = v11;
  v12 = *(v11 + 64) + 15;
  v5[13] = swift_task_alloc();
  v5[14] = sub_23875ED50();
  v5[15] = sub_23875ED40();
  v14 = sub_23875ECE0();
  v5[16] = v14;
  v5[17] = v13;

  return MEMORY[0x2822009F8](sub_238726904, v14, v13);
}

uint64_t sub_238726904()
{
  v1 = v0[14];
  v0[18] = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v0[19] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v0[20] = v3;
  v0[21] = v2;

  return MEMORY[0x2822009F8](sub_23872699C, v3, v2);
}

uint64_t sub_23872699C()
{
  v1 = v0[18];
  v2 = v0[6];
  v3 = *(v2 + 16);
  v4 = sub_23872C620();
  v5 = *(MEMORY[0x277CC7300] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_238726A60;
  v7 = v0[13];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[3];

  return MEMORY[0x282117DF0](v7, v10, v8, v9, v2 + v1, v4);
}

uint64_t sub_238726A60()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_23872704C;
  }

  else
  {
    v7 = sub_238726B9C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_238726B9C()
{
  v1 = v0[19];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_238726C00, v2, v3);
}

uint64_t sub_238726C00()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = v5[11];
  v7 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v6);
  (*(v2 + 104))(v1, *MEMORY[0x277CC7648], v3);
  sub_2384877C4();
  sub_238758800();
  v8 = sub_23875F180();
  v0[24] = v8;
  v9 = *(MEMORY[0x277CC7990] + 4);
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_238726D28;
  v11 = v0[10];

  return MEMORY[0x282118D88](v11, v8, v6, v7);
}

uint64_t sub_238726D28()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 192);
  v4 = *(*v0 + 80);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v7 = *v0;

  (*(v5 + 8))(v4, v6);
  v8 = swift_task_alloc();
  v1[26] = v8;
  *v8 = v7;
  v8[1] = sub_238726F10;
  v9 = v1[13];
  v10 = v1[6];
  v11 = v1[2];

  return sub_238727298(v11, v9);
}

uint64_t sub_238726F10()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_2387271EC;
  }

  else
  {
    v7 = sub_23872713C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23872704C()
{
  v1 = v0[19];

  v2 = v0[16];
  v3 = v0[17];

  return MEMORY[0x2822009F8](sub_2387270B0, v2, v3);
}

uint64_t sub_2387270B0()
{
  v1 = v0[15];

  v2 = v0[23];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23872713C()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[7];

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2387271EC()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];

  (*(v3 + 8))(v2, v4);
  v5 = v0[27];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_238727298(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = sub_23875A980();
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  v7 = sub_23875A9A0();
  v3[31] = v7;
  v8 = *(v7 - 8);
  v3[32] = v8;
  v9 = *(v8 + 64) + 15;
  v3[33] = swift_task_alloc();
  v10 = sub_238757B60();
  v3[34] = v10;
  v11 = *(v10 - 8);
  v3[35] = v11;
  v12 = *(v11 + 64) + 15;
  v3[36] = swift_task_alloc();
  v13 = sub_238758E00();
  v3[37] = v13;
  v14 = *(v13 - 8);
  v3[38] = v14;
  v15 = *(v14 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v16 = sub_23875C1E0();
  v3[42] = v16;
  v17 = *(v16 - 8);
  v3[43] = v17;
  v18 = *(v17 + 64) + 15;
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v19 = sub_23875B940();
  v3[49] = v19;
  v20 = *(v19 - 8);
  v3[50] = v20;
  v21 = *(v20 + 64) + 15;
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  v3[53] = v22;
  v23 = *(v22 - 8);
  v3[54] = v23;
  v24 = *(v23 + 64) + 15;
  v3[55] = swift_task_alloc();
  v3[56] = sub_23875ED50();
  v3[57] = sub_23875ED40();
  v26 = sub_23875ECE0();
  v3[58] = v26;
  v3[59] = v25;

  return MEMORY[0x2822009F8](sub_23872761C, v26, v25);
}

uint64_t sub_23872761C()
{
  v136 = v0;
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  (*(v2 + 16))(v1, *(v0 + 216) + OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager__forceWebAuthorization, v3);
  sub_2387579E0();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 544) == 1)
  {
    v4 = *(v0 + 456);
    v5 = *(v0 + 416);
    v6 = *(v0 + 208);

    sub_238729098(v6, v5);
    v7 = *(v0 + 384);
    sub_23875C120();
    v8 = sub_23875C1B0();
    v9 = sub_23875EFC0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2383F8000, v8, v9, "Force web-based authorization flow.", v10, 2u);
      MEMORY[0x23EE64DF0](v10, -1, -1);
    }

    v11 = *(v0 + 400);
    v126 = *(v0 + 392);
    v131 = *(v0 + 416);
    v12 = *(v0 + 384);
    v14 = *(v0 + 336);
    v13 = *(v0 + 344);
    v16 = *(v0 + 248);
    v15 = *(v0 + 256);
    v17 = *(v0 + 200);
    v18 = *(v0 + 208);

    (*(v13 + 8))(v12, v14);
    (*(v15 + 16))(v17, v18, v16);
    v19 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
    (*(v11 + 32))(v17 + *(v19 + 20), v131, v126);
    goto LABEL_5;
  }

  v31 = *(v0 + 408);
  v32 = *(v0 + 328);
  v34 = *(v0 + 280);
  v33 = *(v0 + 288);
  v35 = *(v0 + 272);
  v36 = *(v0 + 208);
  sub_23875A900();
  sub_238757AF0();
  (*(v34 + 8))(v33, v35);
  sub_238729098(v36, v31);
  v37 = *(v0 + 296);
  v38 = *(v0 + 304);
  v51 = *(v0 + 320);
  v50 = *(v0 + 328);
  sub_238758DC0();
  *(v0 + 480) = sub_23872BC60(&qword_27DF154D0, MEMORY[0x277CC75A8]);
  v52 = sub_23875F2F0();
  v53 = *(v38 + 8);
  *(v0 + 488) = v53;
  *(v0 + 496) = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v53(v51, v37);
  if (v52)
  {
    v54 = swift_task_alloc();
    *(v0 + 504) = v54;
    *v54 = v0;
    v54[1] = sub_238727EDC;
    v55 = *(v0 + 208);
    v56 = *(v0 + 216);

    return sub_238729588(v0 + 120, v55);
  }

  else
  {
    v58 = *(v0 + 488);
    v57 = *(v0 + 496);
    v59 = *(v0 + 480);
    v61 = *(v0 + 320);
    v60 = *(v0 + 328);
    v62 = *(v0 + 296);
    sub_238758DE0();
    LOBYTE(v60) = sub_23875F2F0();
    v58(v61, v62);
    if ((v60 & 1) == 0)
    {
      v66 = *(v0 + 456);

      v68 = *(v0 + 488);
      v67 = *(v0 + 496);
      v69 = *(v0 + 480);
      v71 = *(v0 + 320);
      v70 = *(v0 + 328);
      v72 = *(v0 + 296);
      sub_238758DF0();
      LOBYTE(v70) = sub_23875F2F0();
      v68(v71, v72);
      if ((v70 & 1) == 0)
      {
        v88 = *(v0 + 352);
        v89 = *(v0 + 328);
        v91 = *(v0 + 304);
        v90 = *(v0 + 312);
        v92 = *(v0 + 296);
        sub_23875C120();
        (*(v91 + 16))(v90, v89, v92);
        v93 = sub_23875C1B0();
        v94 = sub_23875EFE0();
        v95 = os_log_type_enabled(v93, v94);
        v96 = *(v0 + 488);
        v97 = *(v0 + 496);
        v99 = *(v0 + 344);
        v98 = *(v0 + 352);
        v100 = *(v0 + 336);
        v101 = *(v0 + 312);
        v102 = *(v0 + 296);
        if (v95)
        {
          v134 = *(v0 + 336);
          v103 = swift_slowAlloc();
          v125 = v94;
          v104 = swift_slowAlloc();
          v135 = v104;
          *v103 = 136315138;
          v105 = sub_238758DD0();
          v130 = v98;
          v107 = v106;
          v96(v101, v102);
          v108 = sub_2384615AC(v105, v107, &v135);

          *(v103 + 4) = v108;
          _os_log_impl(&dword_2383F8000, v93, v125, "Failed to start authorization with auth types:  %s", v103, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v104);
          MEMORY[0x23EE64DF0](v104, -1, -1);
          MEMORY[0x23EE64DF0](v103, -1, -1);

          (*(v99 + 8))(v130, v134);
        }

        else
        {

          v96(v101, v102);
          (*(v99 + 8))(v98, v100);
        }

        v110 = *(v0 + 488);
        v109 = *(v0 + 496);
        v112 = *(v0 + 400);
        v111 = *(v0 + 408);
        v113 = *(v0 + 392);
        v114 = *(v0 + 328);
        v115 = *(v0 + 296);
        sub_23872C5CC();
        swift_allocError();
        *v116 = 1;
        swift_willThrow();
        (*(v112 + 8))(v111, v113);
        v110(v114, v115);
        v39 = *(v0 + 440);
        v41 = *(v0 + 408);
        v40 = *(v0 + 416);
        v43 = *(v0 + 376);
        v42 = *(v0 + 384);
        v45 = *(v0 + 360);
        v44 = *(v0 + 368);
        v46 = *(v0 + 352);
        v47 = *(v0 + 320);
        v48 = *(v0 + 328);
        v117 = *(v0 + 312);
        v120 = *(v0 + 288);
        v123 = *(v0 + 264);
        v128 = *(v0 + 240);

        v30 = *(v0 + 8);
        goto LABEL_7;
      }

      v73 = *(v0 + 360);
      sub_23875C120();
      v74 = sub_23875C1B0();
      v75 = sub_23875EFC0();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_2383F8000, v74, v75, "Starting authorization using web-based flow.", v76, 2u);
        MEMORY[0x23EE64DF0](v76, -1, -1);
      }

      v121 = *(v0 + 488);
      v124 = *(v0 + 496);
      v77 = *(v0 + 400);
      v129 = *(v0 + 392);
      v133 = *(v0 + 408);
      v78 = *(v0 + 360);
      v79 = v74;
      v81 = *(v0 + 336);
      v80 = *(v0 + 344);
      v82 = *(v0 + 328);
      v83 = *(v0 + 296);
      v84 = *(v0 + 256);
      v118 = *(v0 + 248);
      v85 = *(v0 + 200);
      v86 = *(v0 + 208);

      (*(v80 + 8))(v78, v81);
      v121(v82, v83);
      (*(v84 + 16))(v85, v86, v118);
      v87 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
      (*(v77 + 32))(v85 + *(v87 + 20), v133, v129);
LABEL_5:
      type metadata accessor for BankConnectAuthorizationFlow(0);
      swift_storeEnumTagMultiPayload();
      v20 = *(v0 + 440);
      v21 = *(v0 + 408);
      v22 = *(v0 + 416);
      v24 = *(v0 + 376);
      v23 = *(v0 + 384);
      v26 = *(v0 + 360);
      v25 = *(v0 + 368);
      v27 = *(v0 + 352);
      v29 = *(v0 + 320);
      v28 = *(v0 + 328);
      v119 = *(v0 + 312);
      v122 = *(v0 + 288);
      v127 = *(v0 + 264);
      v132 = *(v0 + 240);

      v30 = *(v0 + 8);
LABEL_7:

      return v30();
    }

    v63 = *(v0 + 448);
    *(v0 + 512) = sub_23875ED40();
    v65 = sub_23875ECE0();
    *(v0 + 520) = v65;
    *(v0 + 528) = v64;

    return MEMORY[0x2822009F8](sub_2387287BC, v65, v64);
  }
}

uint64_t sub_238727EDC()
{
  v1 = *v0;
  v2 = *(*v0 + 504);
  v6 = *v0;

  v3 = *(v1 + 472);
  v4 = *(v1 + 464);

  return MEMORY[0x2822009F8](sub_238727FFC, v4, v3);
}

uint64_t sub_238727FFC()
{
  v130 = v0;
  if (*(v0 + 144))
  {
    v1 = *(v0 + 456);
    v2 = *(v0 + 376);

    sub_2384347C0((v0 + 120), v0 + 80);
    sub_23875C120();
    v3 = sub_23875C1B0();
    v4 = sub_23875EFC0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2383F8000, v3, v4, "Authentication extension match found, using extension-based flow.", v5, 2u);
      MEMORY[0x23EE64DF0](v5, -1, -1);
    }

    v6 = *(v0 + 376);
    v7 = *(v0 + 336);
    v8 = *(v0 + 344);
    v9 = v3;
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v14 = *(v0 + 232);
    v124 = *(v0 + 224);
    v15 = *(v0 + 208);

    (*(v8 + 8))(v6, v7);
    (*(v11 + 16))(v10, v15, v12);
    sub_23845C998(v0 + 80, v0 + 160);
    sub_23875A990();
    v16 = sub_23875A960();
    (*(v14 + 8))(v13, v124);
    if (v16)
    {
      v125 = v16;
    }

    else
    {
      v125 = sub_23854B25C(MEMORY[0x277D84F90]);
    }

    v114 = *(v0 + 488);
    v119 = *(v0 + 496);
    v27 = *(v0 + 400);
    v26 = *(v0 + 408);
    v28 = *(v0 + 392);
    v29 = *(v0 + 328);
    v30 = *(v0 + 296);
    v31 = *(v0 + 256);
    v32 = *(v0 + 264);
    v33 = *(v0 + 248);
    v34 = *(v0 + 200);
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    (*(v27 + 8))(v26, v28);
    v114(v29, v30);
    (*(v31 + 32))(v34, v32, v33);
    v35 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
    sub_2384347C0((v0 + 160), v34 + *(v35 + 20));
    *(v34 + *(v35 + 24)) = v125;
    type metadata accessor for BankConnectAuthorizationFlow(0);
    goto LABEL_12;
  }

  sub_238439884(v0 + 120, &qword_27DF154D8, &qword_238783428);
  v18 = *(v0 + 488);
  v17 = *(v0 + 496);
  v19 = *(v0 + 480);
  v21 = *(v0 + 320);
  v20 = *(v0 + 328);
  v22 = *(v0 + 296);
  sub_238758DE0();
  LOBYTE(v20) = sub_23875F2F0();
  v18(v21, v22);
  if ((v20 & 1) == 0)
  {
    v47 = *(v0 + 456);

    v49 = *(v0 + 488);
    v48 = *(v0 + 496);
    v50 = *(v0 + 480);
    v52 = *(v0 + 320);
    v51 = *(v0 + 328);
    v53 = *(v0 + 296);
    sub_238758DF0();
    LOBYTE(v51) = sub_23875F2F0();
    v49(v52, v53);
    if ((v51 & 1) == 0)
    {
      v69 = *(v0 + 352);
      v70 = *(v0 + 328);
      v72 = *(v0 + 304);
      v71 = *(v0 + 312);
      v73 = *(v0 + 296);
      sub_23875C120();
      (*(v72 + 16))(v71, v70, v73);
      v74 = sub_23875C1B0();
      v75 = sub_23875EFE0();
      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 488);
      v78 = *(v0 + 496);
      v80 = *(v0 + 344);
      v79 = *(v0 + 352);
      v81 = *(v0 + 336);
      v82 = *(v0 + 312);
      v83 = *(v0 + 296);
      if (v76)
      {
        v128 = *(v0 + 336);
        v84 = swift_slowAlloc();
        v117 = v75;
        v85 = swift_slowAlloc();
        v129 = v85;
        *v84 = 136315138;
        v86 = sub_238758DD0();
        v122 = v79;
        v88 = v87;
        v77(v82, v83);
        v89 = sub_2384615AC(v86, v88, &v129);

        *(v84 + 4) = v89;
        _os_log_impl(&dword_2383F8000, v74, v117, "Failed to start authorization with auth types:  %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        MEMORY[0x23EE64DF0](v85, -1, -1);
        MEMORY[0x23EE64DF0](v84, -1, -1);

        (*(v80 + 8))(v122, v128);
      }

      else
      {

        v77(v82, v83);
        (*(v80 + 8))(v79, v81);
      }

      v91 = *(v0 + 488);
      v90 = *(v0 + 496);
      v93 = *(v0 + 400);
      v92 = *(v0 + 408);
      v94 = *(v0 + 392);
      v95 = *(v0 + 328);
      v96 = *(v0 + 296);
      sub_23872C5CC();
      swift_allocError();
      *v97 = 1;
      swift_willThrow();
      (*(v93 + 8))(v92, v94);
      v91(v95, v96);
      v98 = *(v0 + 440);
      v100 = *(v0 + 408);
      v99 = *(v0 + 416);
      v102 = *(v0 + 376);
      v101 = *(v0 + 384);
      v104 = *(v0 + 360);
      v103 = *(v0 + 368);
      v105 = *(v0 + 352);
      v106 = *(v0 + 320);
      v107 = *(v0 + 328);
      v110 = *(v0 + 312);
      v113 = *(v0 + 288);
      v118 = *(v0 + 264);
      v123 = *(v0 + 240);

      v46 = *(v0 + 8);
      goto LABEL_13;
    }

    v54 = *(v0 + 360);
    sub_23875C120();
    v55 = sub_23875C1B0();
    v56 = sub_23875EFC0();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_2383F8000, v55, v56, "Starting authorization using web-based flow.", v57, 2u);
      MEMORY[0x23EE64DF0](v57, -1, -1);
    }

    v112 = *(v0 + 488);
    v116 = *(v0 + 496);
    v58 = *(v0 + 400);
    v121 = *(v0 + 392);
    v127 = *(v0 + 408);
    v59 = *(v0 + 360);
    v60 = v55;
    v62 = *(v0 + 336);
    v61 = *(v0 + 344);
    v63 = *(v0 + 328);
    v64 = *(v0 + 296);
    v65 = *(v0 + 256);
    v109 = *(v0 + 248);
    v66 = *(v0 + 200);
    v67 = *(v0 + 208);

    (*(v61 + 8))(v59, v62);
    v112(v63, v64);
    (*(v65 + 16))(v66, v67, v109);
    v68 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
    (*(v58 + 32))(v66 + *(v68 + 20), v127, v121);
    type metadata accessor for BankConnectAuthorizationFlow(0);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v36 = *(v0 + 440);
    v37 = *(v0 + 408);
    v38 = *(v0 + 416);
    v40 = *(v0 + 376);
    v39 = *(v0 + 384);
    v42 = *(v0 + 360);
    v41 = *(v0 + 368);
    v43 = *(v0 + 352);
    v45 = *(v0 + 320);
    v44 = *(v0 + 328);
    v111 = *(v0 + 312);
    v115 = *(v0 + 288);
    v120 = *(v0 + 264);
    v126 = *(v0 + 240);

    v46 = *(v0 + 8);
LABEL_13:

    return v46();
  }

  v23 = *(v0 + 448);
  *(v0 + 512) = sub_23875ED40();
  v25 = sub_23875ECE0();
  *(v0 + 520) = v25;
  *(v0 + 528) = v24;

  return MEMORY[0x2822009F8](sub_2387287BC, v25, v24);
}

uint64_t sub_2387287BC()
{
  v1 = *(v0 + 448);
  v2 = sub_23875ED40();
  *(v0 + 536) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = sub_23875ECE0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](sub_238728850, v3, v5);
}

uint64_t sub_238728850()
{
  v1 = v0[67];
  v2 = v0[51];
  v0[2] = v0;
  v0[7] = v0 + 545;
  v0[3] = sub_238728904;
  v3 = swift_continuation_init();
  sub_2386D9B00(v3);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238728904()
{
  v1 = *v0;
  v5 = *v0;
  *(*v0 + 546) = *(*v0 + 545);
  v2 = *(v1 + 528);
  v3 = *(v1 + 520);

  return MEMORY[0x2822009F8](sub_238728A10, v3, v2);
}

uint64_t sub_238728A10()
{
  v1 = v0[64];

  v2 = v0[58];
  v3 = v0[59];

  return MEMORY[0x2822009F8](sub_238728A74, v2, v3);
}

uint64_t sub_238728A74()
{
  v110 = v0;
  v1 = *(v0 + 546);
  v2 = *(v0 + 456);

  if (v1 == 1)
  {
    v3 = *(v0 + 368);
    sub_23875C120();
    v4 = sub_23875C1B0();
    v5 = sub_23875EFC0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2383F8000, v4, v5, "Able to start authorization using app-based flow.", v6, 2u);
      MEMORY[0x23EE64DF0](v6, -1, -1);
    }

    v100 = *(v0 + 488);
    v105 = *(v0 + 496);
    v7 = *(v0 + 400);
    v87 = *(v0 + 392);
    v88 = *(v0 + 408);
    v8 = *(v0 + 368);
    v10 = *(v0 + 336);
    v9 = *(v0 + 344);
    v11 = *(v0 + 328);
    v12 = *(v0 + 296);
    v13 = *(v0 + 256);
    v14 = *(v0 + 200);
    v91 = *(v0 + 208);
    v95 = *(v0 + 248);

    (*(v9 + 8))(v8, v10);
    (*(v7 + 8))(v88, v87);
    v100(v11, v12);
    (*(v13 + 16))(v14, v91, v95);
    type metadata accessor for BankConnectAuthorizationFlow(0);
  }

  else
  {
    v16 = *(v0 + 488);
    v15 = *(v0 + 496);
    v17 = *(v0 + 480);
    v19 = *(v0 + 320);
    v18 = *(v0 + 328);
    v20 = *(v0 + 296);
    sub_238758DF0();
    LOBYTE(v18) = sub_23875F2F0();
    v16(v19, v20);
    if ((v18 & 1) == 0)
    {
      v47 = *(v0 + 352);
      v48 = *(v0 + 328);
      v50 = *(v0 + 304);
      v49 = *(v0 + 312);
      v51 = *(v0 + 296);
      sub_23875C120();
      (*(v50 + 16))(v49, v48, v51);
      v52 = sub_23875C1B0();
      v53 = sub_23875EFE0();
      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 488);
      v56 = *(v0 + 496);
      v58 = *(v0 + 344);
      v57 = *(v0 + 352);
      v59 = *(v0 + 336);
      v60 = *(v0 + 312);
      v61 = *(v0 + 296);
      if (v54)
      {
        v108 = *(v0 + 336);
        v62 = swift_slowAlloc();
        v98 = v53;
        v63 = swift_slowAlloc();
        v109 = v63;
        *v62 = 136315138;
        v64 = sub_238758DD0();
        v103 = v57;
        v66 = v65;
        v55(v60, v61);
        v67 = sub_2384615AC(v64, v66, &v109);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_2383F8000, v52, v98, "Failed to start authorization with auth types:  %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x23EE64DF0](v63, -1, -1);
        MEMORY[0x23EE64DF0](v62, -1, -1);

        (*(v58 + 8))(v103, v108);
      }

      else
      {

        v55(v60, v61);
        (*(v58 + 8))(v57, v59);
      }

      v69 = *(v0 + 488);
      v68 = *(v0 + 496);
      v71 = *(v0 + 400);
      v70 = *(v0 + 408);
      v72 = *(v0 + 392);
      v73 = *(v0 + 328);
      v74 = *(v0 + 296);
      sub_23872C5CC();
      swift_allocError();
      *v75 = 1;
      swift_willThrow();
      (*(v71 + 8))(v70, v72);
      v69(v73, v74);
      v76 = *(v0 + 440);
      v78 = *(v0 + 408);
      v77 = *(v0 + 416);
      v80 = *(v0 + 376);
      v79 = *(v0 + 384);
      v82 = *(v0 + 360);
      v81 = *(v0 + 368);
      v83 = *(v0 + 352);
      v84 = *(v0 + 320);
      v85 = *(v0 + 328);
      v90 = *(v0 + 312);
      v94 = *(v0 + 288);
      v99 = *(v0 + 264);
      v104 = *(v0 + 240);

      v46 = *(v0 + 8);
      goto LABEL_14;
    }

    v21 = *(v0 + 360);
    sub_23875C120();
    v22 = sub_23875C1B0();
    v23 = sub_23875EFC0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2383F8000, v22, v23, "Starting authorization using web-based flow.", v24, 2u);
      MEMORY[0x23EE64DF0](v24, -1, -1);
    }

    v92 = *(v0 + 488);
    v96 = *(v0 + 496);
    v25 = *(v0 + 400);
    v101 = *(v0 + 392);
    v106 = *(v0 + 408);
    v26 = *(v0 + 360);
    v27 = v22;
    v29 = *(v0 + 336);
    v28 = *(v0 + 344);
    v30 = *(v0 + 328);
    v31 = *(v0 + 296);
    v32 = *(v0 + 256);
    v89 = *(v0 + 248);
    v33 = *(v0 + 200);
    v34 = *(v0 + 208);

    (*(v28 + 8))(v26, v29);
    v92(v30, v31);
    (*(v32 + 16))(v33, v34, v89);
    v35 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
    (*(v25 + 32))(v33 + *(v35 + 20), v106, v101);
    type metadata accessor for BankConnectAuthorizationFlow(0);
  }

  swift_storeEnumTagMultiPayload();
  v36 = *(v0 + 440);
  v37 = *(v0 + 408);
  v38 = *(v0 + 416);
  v40 = *(v0 + 376);
  v39 = *(v0 + 384);
  v42 = *(v0 + 360);
  v41 = *(v0 + 368);
  v43 = *(v0 + 352);
  v45 = *(v0 + 320);
  v44 = *(v0 + 328);
  v93 = *(v0 + 312);
  v97 = *(v0 + 288);
  v102 = *(v0 + 264);
  v107 = *(v0 + 240);

  v46 = *(v0 + 8);
LABEL_14:

  return v46();
}

uint64_t sub_238729098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v43 = sub_23875A9A0();
  v40 = *(v43 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x28223BE20](v43);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C1E0();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875A980();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v37 - v16;
  sub_23875A990();
  sub_23875A950();
  v37 = *(v10 + 8);
  v38 = v9;
  v37(v13, v9);
  sub_23875B910();

  v18 = sub_23875B940();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238439884(v17, &qword_27DF0D040, &qword_2387676A0);
LABEL_7:
    v25 = v44;
    sub_23875C120();
    v26 = v40;
    v27 = v43;
    (*(v40 + 16))(v5, a1, v43);
    v28 = sub_23875C1B0();
    v29 = sub_23875EFE0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      *v30 = 136315138;
      LODWORD(v39) = v29;
      sub_23875A990();
      v32 = sub_23875A950();
      v34 = v33;
      v37(v13, v38);
      (*(v26 + 8))(v5, v43);
      v35 = sub_2384615AC(v32, v34, &v45);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2383F8000, v28, v39, "Failed to parse authorization URL: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x23EE64DF0](v31, -1, -1);
      MEMORY[0x23EE64DF0](v30, -1, -1);

      (*(v41 + 8))(v44, v42);
    }

    else
    {

      (*(v26 + 8))(v5, v27);
      (*(v41 + 8))(v25, v42);
    }

    sub_23872C5CC();
    swift_allocError();
    *v36 = 0;
    return swift_willThrow();
  }

  (*(v19 + 32))(v39, v17, v18);
  v20 = sub_23875B820();
  v22 = v21;

  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    (*(v19 + 8))(v39, v18);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_238729588(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_23875C1E0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = sub_238757750();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = sub_238757B60();
  v3[12] = v10;
  v11 = *(v10 - 8);
  v3[13] = v11;
  v12 = *(v11 + 64) + 15;
  v3[14] = swift_task_alloc();
  sub_23875ED50();
  v3[15] = sub_23875ED40();
  v14 = sub_23875ECE0();
  v3[16] = v14;
  v3[17] = v13;

  return MEMORY[0x2822009F8](sub_238729744, v14, v13);
}

uint64_t sub_238729744()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  sub_23875A900();
  v5 = sub_238757B20();
  v0[18] = v5;
  (*(v2 + 8))(v1, v3);
  if (v5)
  {
    if (*(v5 + 16))
    {
      v7 = v0[10];
      v6 = v0[11];
      v8 = v0[9];
      v9 = v0[4];
      v10 = v9[6];
      v11 = v9[7];
      __swift_project_boxed_opaque_existential_1(v9 + 3, v10);
      (*(v7 + 104))(v6, *MEMORY[0x277CC6560], v8);
      v12 = sub_238757740();
      v14 = v13;
      v0[19] = v13;
      (*(v7 + 8))(v6, v8);
      v15 = *(MEMORY[0x277CC70D8] + 4);
      v16 = swift_task_alloc();
      v0[20] = v16;
      *v16 = v0;
      v16[1] = sub_238729A48;

      return MEMORY[0x282117AE8](v12, v14, v5, v10, v11);
    }

    v18 = v0 + 8;
    v24 = v0[8];
    v25 = v0[15];

    sub_23875C120();
    v20 = sub_23875C1B0();
    v21 = sub_23875EFC0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Extension bundle identifiers were empty.";
      goto LABEL_10;
    }
  }

  else
  {
    v18 = v0 + 7;
    v17 = v0[7];
    v19 = v0[15];

    sub_23875C120();
    v20 = sub_23875C1B0();
    v21 = sub_23875EFC0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "No extension bundle identifiers provided for institution.";
LABEL_10:
      _os_log_impl(&dword_2383F8000, v20, v21, v23, v22, 2u);
      MEMORY[0x23EE64DF0](v22, -1, -1);
    }
  }

  v26 = *v18;
  v27 = v0[5];
  v28 = v0[6];
  v29 = v0[2];

  (*(v28 + 8))(v26, v27);
  *(v29 + 32) = 0;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  v30 = v0[14];
  v31 = v0[11];
  v33 = v0[7];
  v32 = v0[8];

  v34 = v0[1];

  return v34();
}

uint64_t sub_238729A48(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 144);
  v9 = *v1;
  *(*v1 + 168) = a1;

  v6 = *(v2 + 136);
  v7 = *(v2 + 128);

  return MEMORY[0x2822009F8](sub_238729BB0, v7, v6);
}

uint64_t sub_238729BB0()
{
  v1 = v0[21];
  v2 = v0[15];

  v3 = *(v1 + 16);
  v4 = v0[2];
  if (v3)
  {
    sub_23845C998(v0[21] + 32, v0[2]);
  }

  else
  {
    v5 = v0[21];

    *(v4 + 32) = 0;
    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  v6 = v0[14];
  v7 = v0[11];
  v9 = v0[7];
  v8 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_238729C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_23875C1E0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_23875A070();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_23875A9A0();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_238758E20();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  sub_23875ED50();
  v4[19] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v4[20] = v18;
  v4[21] = v17;

  return MEMORY[0x2822009F8](sub_238729E98, v18, v17);
}

uint64_t sub_238729E98()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 40);
  v5 = v4[11];
  v6 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v5);
  *(v0 + 280) = *MEMORY[0x277CC7648];
  v7 = *(v3 + 104);
  *(v0 + 176) = v7;
  *(v0 + 184) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v1);
  v8 = *(MEMORY[0x277CC7988] + 4);
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = sub_238729FA8;
  v10 = *(v0 + 144);
  v11 = MEMORY[0x277D84F90];

  return MEMORY[0x282118D80](v10, v11, v5, v6);
}

uint64_t sub_238729FA8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *(*v2 + 128);
  v7 = *v2;
  v4[25] = v1;

  v8 = (v6 + 8);
  v9 = v4[18];
  v10 = v4[15];
  if (v1)
  {
    v11 = *v8;
    v4[33] = *v8;
    v11(v9, v10);
    v12 = v4[20];
    v13 = v4[21];
    v14 = sub_23872A840;
  }

  else
  {
    v4[26] = a1;
    v15 = *v8;
    v4[27] = *v8;
    v15(v9, v10);
    v12 = v4[20];
    v13 = v4[21];
    v14 = sub_23872A13C;
  }

  return MEMORY[0x2822009F8](v14, v12, v13);
}

uint64_t sub_23872A13C()
{
  v1 = v0[13];
  v0[14] = vextq_s8(v1, v1, 8uLL);
  v2 = v0[7].i64[0];
  v3 = v0[2].i64[1];
  v4 = v0[1].i64[1];
  v5 = *(v3 + 16);
  v6 = v1.i64[0];

  sub_238724998(v2);
  v7 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v8 = *(MEMORY[0x277CC72F8] + 4);
  v9 = swift_task_alloc();
  v0[15].i64[0] = v9;
  *v9 = v0;
  v9[1] = sub_23872A230;
  v10 = v0[7].i64[0];
  v11 = v0[2].i64[0];
  v12 = v0[1].i64[0];

  return MEMORY[0x282117DE8](v12, v10, v11, v6, v3 + v7);
}

uint64_t sub_23872A230()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = v2[29];
  (*(v2[13] + 8))(v2[14], v2[12]);

  v6 = v2[21];
  v7 = v2[20];
  if (v0)
  {
    v8 = sub_23872AA68;
  }

  else
  {
    v8 = sub_23872A3D4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23872A3D4()
{
  v1 = *(v0 + 232);
  if (sub_2387593C0())
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 280);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = *(v0 + 40);
    v11 = v10[11];
    v25 = v10[12];
    __swift_project_boxed_opaque_existential_1(v10 + 8, v11);
    v2(v5, v4, v6);
    (*(v8 + 104))(v7, *MEMORY[0x277CC7CE0], v9);
    v12 = *(MEMORY[0x277CC7998] + 4);
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_23872A598;
    v14 = *(v0 + 136);
    v15 = *(v0 + 88);

    return MEMORY[0x282118D90](v14, v15, v11, v25);
  }

  else
  {
    v16 = *(v0 + 232);
    v17 = *(v0 + 152);

    v19 = *(v0 + 136);
    v18 = *(v0 + 144);
    v20 = *(v0 + 112);
    v21 = *(v0 + 88);
    v22 = *(v0 + 64);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_23872A598()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 88);
  v8 = *(*v0 + 80);
  v9 = *(*v0 + 72);
  v13 = *v0;

  (*(v8 + 8))(v7, v9);
  v3(v4, v6);
  v10 = *(v1 + 168);
  v11 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_23872A794, v11, v10);
}

uint64_t sub_23872A794()
{
  v1 = v0[29];
  v2 = v0[19];

  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23872A840()
{
  v1 = v0[25];
  v2 = v0[8];
  sub_23875C120();
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2383F8000, v4, v5, "Fraud assessment computation has failed, proceeding without it: %@.", v7, 0xCu);
    sub_238439884(v8, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v8, -1, -1);
    MEMORY[0x23EE64DF0](v7, -1, -1);
  }

  v11 = v0[25];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];

  (*(v13 + 8))(v12, v14);
  v15 = sub_2387593E0();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2387593D0();

  v0[28] = v0[33];
  v0[29] = v18;
  v19 = v0[14];
  v20 = v0[5];
  v21 = v0[3];
  v22 = *(v20 + 16);

  sub_238724998(v19);
  v23 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v24 = *(MEMORY[0x277CC72F8] + 4);
  v25 = swift_task_alloc();
  v0[30] = v25;
  *v25 = v0;
  v25[1] = sub_23872A230;
  v26 = v0[14];
  v27 = v0[4];
  v28 = v0[2];

  return MEMORY[0x282117DE8](v28, v26, v27, v18, v20 + v23);
}

uint64_t sub_23872AA68()
{
  v1 = *(v0 + 232);
  if (sub_2387593C0())
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 184);
    v4 = *(v0 + 280);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = *(v0 + 40);
    v11 = v10[11];
    v27 = v10[12];
    __swift_project_boxed_opaque_existential_1(v10 + 8, v11);
    v2(v5, v4, v6);
    (*(v8 + 104))(v7, *MEMORY[0x277CC7CE8], v9);
    v12 = *(MEMORY[0x277CC7998] + 4);
    v13 = swift_task_alloc();
    *(v0 + 272) = v13;
    *v13 = v0;
    v13[1] = sub_23872AC38;
    v14 = *(v0 + 136);
    v15 = *(v0 + 88);

    return MEMORY[0x282118D90](v14, v15, v11, v27);
  }

  else
  {
    v16 = *(v0 + 152);

    v17 = *(v0 + 248);
    v18 = *(v0 + 232);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v21 = *(v0 + 112);
    v22 = *(v0 + 88);
    v23 = *(v0 + 64);
    swift_willThrow();

    v24 = *(v0 + 8);
    v25 = *(v0 + 248);

    return v24();
  }
}

uint64_t sub_23872AC38()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 136);
  v5 = *(*v0 + 128);
  v6 = *(*v0 + 120);
  v7 = *(*v0 + 88);
  v8 = *(*v0 + 80);
  v9 = *(*v0 + 72);
  v13 = *v0;

  (*(v8 + 8))(v7, v9);
  v3(v4, v6);
  v10 = *(v1 + 168);
  v11 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_23872AE34, v11, v10);
}

uint64_t sub_23872AE34()
{
  v1 = v0[19];

  v2 = v0[31];
  v3 = v0[29];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
  v7 = v0[11];
  v8 = v0[8];
  swift_willThrow();

  v9 = v0[1];
  v10 = v0[31];

  return v9();
}

uint64_t sub_23872AEFC()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration;
  v3 = sub_23875AB40();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager__forceWebAuthorization;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12BE0, &qword_238783420);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23872B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_238449A7C;

  return sub_23872677C(a1, a2, a3, a4);
}

uint64_t sub_23872B0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2384494A4;

  return sub_238729C80(a1, a2, a3);
}

uint64_t sub_23872B17C(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(a2 + 48);
    v13 = (v11 << 10) | (16 * __clz(__rbit64(v6)));
    v14 = *(v12 + v13);
    v15 = *(v12 + v13 + 8);
    v6 &= v6 - 1;
    v16 = (*(a2 + 56) + v13);
    v17 = *v16;
    v18 = v16[1];
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_23875EB30();

    sub_23875EB30();

    result = sub_23875F760();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x23EE641F0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12FinanceKitUI28BankConnectAuthorizationFlowO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  v3 = sub_23875C0A0();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v56 = &v55 - v7;
  v60 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BankConnectWebAuthorizationFlow(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BankConnectAppAuthorizationFlow(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for BankConnectAuthorizationFlow(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v55 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v55 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF154F0, &unk_238783430);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v55 - v30;
  v33 = *(v32 + 56);
  sub_23872BBFC(a1, &v55 - v30);
  sub_23872BBFC(v62, &v31[v33]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_23872BBFC(v31, v27);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_23872BCA8(&v31[v33], v17, type metadata accessor for BankConnectAppAuthorizationFlow);
      v51 = MEMORY[0x23EE5F410](v27, v17);
      sub_23872BD10(v17, type metadata accessor for BankConnectAppAuthorizationFlow);
      sub_23872BD10(v27, type metadata accessor for BankConnectAppAuthorizationFlow);
      sub_23872BD10(v31, type metadata accessor for BankConnectAuthorizationFlow);
      return v51 & 1;
    }

    v37 = type metadata accessor for BankConnectAppAuthorizationFlow;
    v38 = v27;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_23872BBFC(v31, v21);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v39 = v61;
      sub_23872BCA8(&v31[v33], v61, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      if (MEMORY[0x23EE5F410](v21, v39))
      {
        v40 = v60;
        v41 = &v21[*(v60 + 20)];
        v42 = *(v41 + 4);
        __swift_project_boxed_opaque_existential_1(v41, *(v41 + 3));
        v43 = v56;
        sub_2387591C0();
        v44 = (v39 + *(v40 + 20));
        v45 = v44[4];
        __swift_project_boxed_opaque_existential_1(v44, v44[3]);
        v46 = v57;
        sub_2387591C0();
        sub_23872BC60(&qword_27DF154E8, MEMORY[0x277CC5DC0]);
        v47 = v59;
        v48 = sub_23875E9E0();
        v49 = *(v58 + 8);
        v49(v46, v47);
        v49(v43, v47);
        if (v48)
        {
          v50 = sub_238725D3C(*&v21[*(v60 + 24)], *(v39 + *(v60 + 24)));
          sub_23872BD10(v39, type metadata accessor for BankConnectExtensionAuthorizationFlow);
          sub_23872BD10(v21, type metadata accessor for BankConnectExtensionAuthorizationFlow);
          if (v50)
          {
            goto LABEL_13;
          }

          goto LABEL_22;
        }
      }

      sub_23872BD10(v39, type metadata accessor for BankConnectExtensionAuthorizationFlow);
      v52 = v21;
      v53 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
LABEL_21:
      sub_23872BD10(v52, v53);
LABEL_22:
      sub_23872BD10(v31, type metadata accessor for BankConnectAuthorizationFlow);
      goto LABEL_23;
    }

    v37 = type metadata accessor for BankConnectExtensionAuthorizationFlow;
    v38 = v21;
LABEL_16:
    sub_23872BD10(v38, v37);
    sub_238439884(v31, &qword_27DF154F0, &unk_238783430);
LABEL_23:
    v51 = 0;
    return v51 & 1;
  }

  sub_23872BBFC(v31, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v37 = type metadata accessor for BankConnectWebAuthorizationFlow;
    v38 = v24;
    goto LABEL_16;
  }

  sub_23872BCA8(&v31[v33], v13, type metadata accessor for BankConnectWebAuthorizationFlow);
  if ((MEMORY[0x23EE5F410](v24, v13) & 1) == 0)
  {
    sub_23872BD10(v13, type metadata accessor for BankConnectWebAuthorizationFlow);
    goto LABEL_20;
  }

  v35 = *(v10 + 20);
  v36 = sub_23875B890();
  sub_23872BD10(v13, type metadata accessor for BankConnectWebAuthorizationFlow);
  if ((v36 & 1) == 0)
  {
LABEL_20:
    v53 = type metadata accessor for BankConnectWebAuthorizationFlow;
    v52 = v24;
    goto LABEL_21;
  }

  sub_23872BD10(v24, type metadata accessor for BankConnectWebAuthorizationFlow);
LABEL_13:
  sub_23872BD10(v31, type metadata accessor for BankConnectAuthorizationFlow);
  v51 = 1;
  return v51 & 1;
}

uint64_t _s12FinanceKitUI37BankConnectExtensionAuthorizationFlowV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875C0A0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  if ((MEMORY[0x23EE5F410](a1, a2, v10) & 1) == 0)
  {
    goto LABEL_4;
  }

  v13 = type metadata accessor for BankConnectExtensionAuthorizationFlow(0);
  v14 = (a1 + *(v13 + 20));
  v15 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  sub_2387591C0();
  v16 = (a2 + *(v13 + 20));
  v17 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_2387591C0();
  sub_23872BC60(&qword_27DF154E8, MEMORY[0x277CC5DC0]);
  v18 = sub_23875E9E0();
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v12, v4);
  if (v18)
  {
    v20 = sub_238725D3C(*(a1 + *(v13 + 24)), *(a2 + *(v13 + 24)));
  }

  else
  {
LABEL_4:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_23872BBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationFlow(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23872BC60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23872BCA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23872BD10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23872BE90()
{
  result = type metadata accessor for BankConnectAppAuthorizationFlow(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for BankConnectWebAuthorizationFlow(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for BankConnectExtensionAuthorizationFlow(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_23872BF40()
{
  result = sub_23875A9A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23872BFD4()
{
  result = sub_23875A9A0();
  if (v1 <= 0x3F)
  {
    result = sub_23875B940();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23872C080()
{
  sub_23875A9A0();
  if (v0 <= 0x3F)
  {
    sub_23872C11C();
    if (v1 <= 0x3F)
    {
      sub_23872C180();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23872C11C()
{
  result = qword_27DF15490;
  if (!qword_27DF15490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DF15490);
  }

  return result;
}

void sub_23872C180()
{
  if (!qword_27DF15498)
  {
    v0 = sub_23875E940();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF15498);
    }
  }
}

uint64_t dispatch thunk of BankConnectAuthorizationFlowManaging.initiateFlow(with:fpanID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_238449A7C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of BankConnectAuthorizationFlowManaging.completeFlow(_:withAuthorizationPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2384494A4;

  return v15(a1, a2, a3, a4, a5);
}

void sub_23872C494()
{
  v0 = sub_23875AB40();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_23872C57C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_23872C57C()
{
  if (!qword_27DF154C0)
  {
    v0 = sub_238757A10();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF154C0);
    }
  }
}

unint64_t sub_23872C5CC()
{
  result = qword_27DF154C8;
  if (!qword_27DF154C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF154C8);
  }

  return result;
}

uint64_t sub_23872C620()
{
  v0 = sub_238758850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - v6;
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 bundleIdentifier];

  if (!v9)
  {
    return 0;
  }

  sub_23875EA80();

  sub_238758830();
  sub_2387587F0();
  sub_23872BC60(&qword_27DF154E0, MEMORY[0x277CC7098]);
  sub_23875EC40();
  sub_23875EC40();
  if (v13[2] == v13[0] && v13[3] == v13[1])
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_23875F630() ^ 1;
  }

  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v7, v0);

  return v10 & 1;
}

unint64_t sub_23872C854()
{
  result = qword_27DF154F8;
  if (!qword_27DF154F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF154F8);
  }

  return result;
}

id CSSearchQueryFactory.make(queryString:attributes:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v1 = sub_23875EC60();
  [v0 setFetchAttributes_];

  v2 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v3 = v0;
  v4 = sub_23875EA50();
  v5 = [v2 initWithQueryString:v4 queryContext:v3];

  return v5;
}

id sub_23872C97C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v1 = sub_23875EC60();
  [v0 setFetchAttributes_];

  v2 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v3 = v0;
  v4 = sub_23875EA50();
  v5 = [v2 initWithQueryString:v4 queryContext:v3];

  return v5;
}

id sub_23872CA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23875EA50();

  if (a3)
  {
    v5 = sub_23875EC60();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithQueryString:v4 attributes:v5];

  return v6;
}

uint64_t (*sub_23872CAE4())()
{
  result = [v0 foundItemsHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_23872D5F4;
  }

  return result;
}

void sub_23872CB58(uint64_t a1, uint64_t a2)
{
  sub_23872D578();
  v3 = sub_23875EC60();
  (*(a2 + 16))(a2, v3);
}

void sub_23872CBC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_23872CC6C;
    v4[3] = &block_descriptor_26_0;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setFoundItemsHandler_];
  _Block_release(v3);
}

uint64_t sub_23872CC6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_23872D578();
  v3 = sub_23875EC80();

  v2(v3);
}

uint64_t (*sub_23872CCE0(uint64_t **a1))()
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
  v2[4] = sub_23872CD50(v2);
  return sub_23872D5EC;
}

void (*sub_23872CD50(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 foundItemsHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_23872D570;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_23872CE18;
}

void sub_23872CE18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_23872CC6C;
      v2[3] = &block_descriptor_17;
      v5 = _Block_copy(v2);
      v6 = v2[5];
    }

    else
    {
      v5 = 0;
    }

    [v2[8] setFoundItemsHandler_];
    _Block_release(v5);
    v10 = v2[7];
    sub_2384348A8(v2[6]);
  }

  else
  {
    if (v3)
    {
      v7 = v2[7];
      v2[4] = v3;
      v2[5] = v7;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_23872CC6C;
      v2[3] = &block_descriptor_20;
      v8 = _Block_copy(v2);
      v9 = v2[5];
    }

    else
    {
      v8 = 0;
    }

    [v2[8] setFoundItemsHandler_];
    _Block_release(v8);
  }

  free(v2);
}

uint64_t (*sub_23872CF80())()
{
  result = [v0 completionHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_23872D5F0;
  }

  return result;
}

void sub_23872CFF4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_23875B720();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_23872D058(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_23872D100;
    v4[3] = &block_descriptor_10;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setCompletionHandler_];
  _Block_release(v3);
}

void sub_23872D100(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t (*sub_23872D16C(uint64_t **a1))()
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
  v2[4] = sub_23872D228(v2);
  return sub_23872D1DC;
}

void sub_23872D1E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_23872D228(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 64) = v2;
  v6 = [v2 completionHandler];
  if (v6)
  {
    v7 = v6;
    v6 = swift_allocObject();
    v6[2] = v7;
    v8 = sub_23872D568;
  }

  else
  {
    v8 = 0;
  }

  *(v5 + 48) = v8;
  *(v5 + 56) = v6;
  return sub_23872D2F0;
}

void sub_23872D2F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {
    if (v3)
    {
      v4 = v2[7];
      v2[4] = v3;
      v2[5] = v4;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_23872D100;
      v2[3] = &block_descriptor_21;
      v5 = _Block_copy(v2);
      v6 = v2[5];
    }

    else
    {
      v5 = 0;
    }

    [v2[8] setCompletionHandler_];
    _Block_release(v5);
    v10 = v2[7];
    sub_2384348A8(v2[6]);
  }

  else
  {
    if (v3)
    {
      v7 = v2[7];
      v2[4] = v3;
      v2[5] = v7;
      *v2 = MEMORY[0x277D85DD0];
      v2[1] = 1107296256;
      v2[2] = sub_23872D100;
      v2[3] = &block_descriptor_7;
      v8 = _Block_copy(v2);
      v9 = v2[5];
    }

    else
    {
      v8 = 0;
    }

    [v2[8] setCompletionHandler_];
    _Block_release(v8);
  }

  free(v2);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23872D578()
{
  result = qword_27DF15500;
  if (!qword_27DF15500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF15500);
  }

  return result;
}

uint64_t _s5LargeVMa()
{
  result = qword_2814F10A8;
  if (!qword_2814F10A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23872D66C()
{
  type metadata accessor for OrderWidgetTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_238487958(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_238566280();
      if (v2 <= 0x3F)
      {
        sub_238487958(319, &qword_2814F09C0, MEMORY[0x277CE3AF8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_23872D774@<X0>(uint64_t a1@<X8>)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15508, &qword_238783600);
  v3 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v5 = v39 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15510, &qword_238783608);
  v6 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v8 = v39 - v7;
  v9 = _s5LargeVMa();
  v40 = *(v9 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v39 - v14;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15518, &qword_238783610);
  v16 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v39 - v20;
  v22 = *v1;
  v23 = *(*v1 + 16);
  if (v23 == 1)
  {
    v24 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
    v25 = *(v24 - 8);
    v39[1] = a1;
    v26 = v25;
    sub_238731F9C(v22 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v15, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v27 = *(v26 + 56);
    v27(v15, 0, 1, v24);
    sub_238731F9C(v1, v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s5LargeVMa);
    v28 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v29 = swift_allocObject();
    sub_23873218C(v11, v29 + v28, _s5LargeVMa);
    v27(v18, 1, 1, v24);
    sub_2384895F4(v15, v18);
    v30 = &v18[*(v41 + 36)];
    *v30 = sub_238731F1C;
    v30[1] = v29;
    v31 = &qword_27DF15518;
    v32 = &qword_238783610;
    sub_2384396E4(v18, v21, &qword_27DF15518, &qword_238783610);
    sub_23843981C(v21, v8, &qword_27DF15518, &qword_238783610);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15528, &qword_27DF15518, &qword_238783610);
    sub_23843A3E8(&qword_27DF15530, &qword_27DF15508, &qword_238783600);
    sub_23875D1B0();
    v33 = v21;
  }

  else
  {
    if (v23 >= 3)
    {
      v34 = 3;
    }

    else
    {
      v34 = *(*v1 + 16);
    }

    v35 = *(type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0) - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);

    *v5 = sub_23875D030();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15520, &qword_238783618);
    sub_23872DD60(v22, v22 + v36, 0, (2 * v34) | 1, v1, &v5[*(v37 + 44)]);
    v31 = &qword_27DF15508;
    v32 = &qword_238783600;
    sub_23843981C(v5, v8, &qword_27DF15508, &qword_238783600);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15528, &qword_27DF15518, &qword_238783610);
    sub_23843A3E8(&qword_27DF15530, &qword_27DF15508, &qword_238783600);
    sub_23875D1B0();

    v33 = v5;
  }

  return sub_238439884(v33, v31, v32);
}

uint64_t sub_23872DCFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_23875D030();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15538, &qword_238783620);
  return sub_238730CAC(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_23872DD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v55 = a6;
  v53 = type metadata accessor for OrderWidgetMoreTextView();
  v51 = *(v53 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v46 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15558, &qword_238783700);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v54 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v52 = &v45 - v17;
  v45 = _s5LargeVMa();
  v18 = *(v45 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v45);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15560, &qword_238783708);
  v47 = *(v49 - 8);
  v20 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v56 = &v45 - v23;
  sub_23875ED50();
  v48 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v57 = a1;
  v58 = a2;
  v59 = a3;
  v60 = a4;
  sub_238731F9C(a5, &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), _s5LargeVMa);
  v24 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a2;
  v25[4] = a3;
  v25[5] = a4;
  sub_23873218C(&v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, _s5LargeVMa);
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15568, &qword_238783710);
  type metadata accessor for OrderIdentifier(0);
  v26 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15570, &qword_238783718);
  sub_23843A3E8(&qword_27DF15578, &qword_27DF15568, &qword_238783710);
  sub_23843A3E8(&qword_27DF15580, &qword_27DF15570, &qword_238783718);
  sub_2387321F4(&qword_27DF15588, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  sub_23875E380();
  v27 = *(a5 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  if (v27 < 4)
  {
    v34 = 1;
    v33 = v52;
    v30 = v53;
  }

  else
  {
    v28 = v27 - 3;
    v29 = v46;
    v30 = v53;
    v31 = v26 + *(v45 + 28);
    sub_2384D5188(&v46[*(v53 + 20)]);
    *v29 = v28;
    v32 = *(v30 + 24);
    *(v29 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v33 = v52;
    sub_23873218C(v29, v52, type metadata accessor for OrderWidgetMoreTextView);
    v34 = 0;
  }

  (*(v51 + 56))(v33, v34, 1, v30);
  v35 = v47;
  v36 = *(v47 + 16);
  v37 = v49;
  v38 = v50;
  v39 = v56;
  v36(v50, v56, v49);
  v40 = v54;
  sub_23843981C(v33, v54, &qword_27DF15558, &qword_238783700);
  v41 = v55;
  v36(v55, v38, v37);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15590, &qword_238783720);
  sub_23843981C(v40, &v41[*(v42 + 48)], &qword_27DF15558, &qword_238783700);
  sub_238439884(v33, &qword_27DF15558, &qword_238783700);
  v43 = *(v35 + 8);
  v43(v39, v37);
  sub_238439884(v40, &qword_27DF15558, &qword_238783700);
  v43(v38, v37);
}

uint64_t sub_23872E388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v120 = a5;
  v127 = a4;
  v132 = a3;
  v108 = a2;
  v8 = sub_23875E360();
  v121 = *(v8 - 8);
  v122 = v8;
  v9 = *(v121 + 64);
  MEMORY[0x28223BE20](v8);
  v103 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15598, &qword_238783728);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v124 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v123 = &v102 - v15;
  v16 = _s5LargeVMa();
  v114 = *(v16 - 8);
  v17 = *(v114 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v115 = v18;
  v117 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v116 = &v102 - v21;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155A0, &qword_238783730);
  v22 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v119 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v118 = &v102 - v25;
  v26 = type metadata accessor for OrderIdentifier(0);
  v27 = *(v26 - 8);
  v28 = v27[8];
  MEMORY[0x28223BE20](v26);
  v104 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155A8, &qword_238783738);
  v30 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v110 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v102 - v33;
  v111 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v129 = *(v111 - 8);
  v35 = v129[8];
  MEMORY[0x28223BE20](v111);
  v102 = &v102 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v102 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155B0, &qword_238783740);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v126 = &v102 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v128 = (&v102 - v44);
  MEMORY[0x28223BE20](v45);
  v125 = &v102 - v46;
  MEMORY[0x28223BE20](v47);
  v105 = &v102 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = (&v102 - v50);
  MEMORY[0x28223BE20](v52);
  v54 = (&v102 - v53);
  sub_23875ED50();
  v112 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v131 = a1;
  sub_2384E6C90(v54);
  v55 = v27[7];
  v56 = 1;
  result = v55(v54, 0, 1, v26);
  v58 = v127 >> 1;
  v127 = v58;
  if (v58 != v132)
  {
    if (v58 <= v132)
    {
      __break(1u);
      goto LABEL_30;
    }

    sub_238731F9C(v108 + v129[9] * v132, v39, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_2384E6C90(v51);
    sub_23873212C(v39, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v56 = 0;
  }

  v107 = a6;
  v109 = v55;
  v55(v51, v56, 1, v26);
  v59 = *(v130 + 48);
  sub_23843981C(v54, v34, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v51, &v34[v59], &qword_27DF155B0, &qword_238783740);
  v60 = v27[6];
  v61 = v60(v34, 1, v26);
  v106 = v27 + 6;
  if (v61 == 1)
  {
    sub_238439884(v51, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v54, &qword_27DF155B0, &qword_238783740);
    v62 = v60(&v34[v59], 1, v26);
    v63 = v125;
    if (v62 == 1)
    {
      sub_238439884(v34, &qword_27DF155B0, &qword_238783740);
      v64 = 1;
LABEL_12:
      v66 = v126;
      goto LABEL_14;
    }

LABEL_11:
    sub_238439884(v34, &qword_27DF155A8, &qword_238783738);
    v64 = 0;
    goto LABEL_12;
  }

  v65 = v105;
  sub_23843981C(v34, v105, &qword_27DF155B0, &qword_238783740);
  if (v60(&v34[v59], 1, v26) == 1)
  {
    sub_238439884(v51, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v54, &qword_27DF155B0, &qword_238783740);
    sub_23873212C(v65, type metadata accessor for OrderIdentifier);
    v63 = v125;
    goto LABEL_11;
  }

  v67 = v104;
  sub_23873218C(&v34[v59], v104, type metadata accessor for OrderIdentifier);
  v64 = sub_2384E6F28(v65, v67);
  sub_23873212C(v67, type metadata accessor for OrderIdentifier);
  sub_238439884(v51, &qword_27DF155B0, &qword_238783740);
  sub_238439884(v54, &qword_27DF155B0, &qword_238783740);
  sub_23873212C(v65, type metadata accessor for OrderIdentifier);
  sub_238439884(v34, &qword_27DF155B0, &qword_238783740);
  v63 = v125;
  v66 = v126;
LABEL_14:
  v68 = v128;
  v69 = v109;
  sub_2384E6C90(v63);
  v70 = 1;
  result = v69(v63, 0, 1, v26);
  if (v127 == v132)
  {
    goto LABEL_17;
  }

  if (v127 <= v132)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v71 = v102;
  sub_238731F9C(v108 + v129[9] * (v127 - 1), v102, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  sub_2384E6C90(v68);
  sub_23873212C(v71, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v70 = 0;
LABEL_17:
  LODWORD(v132) = v64;
  v69(v68, v70, 1, v26);
  v72 = *(v130 + 48);
  v73 = v110;
  sub_23843981C(v63, v110, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v68, v73 + v72, &qword_27DF155B0, &qword_238783740);
  if (v60(v73, 1, v26) == 1)
  {
    sub_238439884(v68, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v63, &qword_27DF155B0, &qword_238783740);
    v74 = v60((v73 + v72), 1, v26);
    v75 = v131;
    if (v74 == 1)
    {
      sub_238439884(v73, &qword_27DF155B0, &qword_238783740);
      LODWORD(v130) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    sub_23843981C(v73, v66, &qword_27DF155B0, &qword_238783740);
    v76 = v60((v73 + v72), 1, v26);
    v75 = v131;
    if (v76 != 1)
    {
      v78 = v73 + v72;
      v79 = v104;
      sub_23873218C(v78, v104, type metadata accessor for OrderIdentifier);
      v80 = sub_2384E6F28(v66, v79);
      sub_23873212C(v79, type metadata accessor for OrderIdentifier);
      sub_238439884(v128, &qword_27DF155B0, &qword_238783740);
      sub_238439884(v63, &qword_27DF155B0, &qword_238783740);
      sub_23873212C(v66, type metadata accessor for OrderIdentifier);
      sub_238439884(v73, &qword_27DF155B0, &qword_238783740);
      v77 = v80 ^ 1;
      goto LABEL_24;
    }

    sub_238439884(v128, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v63, &qword_27DF155B0, &qword_238783740);
    sub_23873212C(v66, type metadata accessor for OrderIdentifier);
  }

  sub_238439884(v73, &qword_27DF155A8, &qword_238783738);
  v77 = 1;
LABEL_24:
  LODWORD(v130) = v77;
LABEL_25:
  v81 = v115;
  v82 = v116;
  sub_238731F9C(v75, v116, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v83 = v129[7];
  v84 = 1;
  v85 = v111;
  v83(v82, 0, 1, v111);
  v86 = v120;
  v87 = v117;
  sub_238731F9C(v120, v117, _s5LargeVMa);
  v88 = (*(v114 + 80) + 16) & ~*(v114 + 80);
  v89 = v88 + v81;
  v90 = swift_allocObject();
  sub_23873218C(v87, v90 + v88, _s5LargeVMa);
  *(v90 + v89) = v132 & 1;
  v91 = v118;
  v83(v118, 1, 1, v85);
  sub_2384895F4(v82, v91);
  v92 = (v91 + *(v113 + 36));
  *v92 = sub_23873208C;
  v92[1] = v90;
  v93 = *(v86 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v95 = v121;
  v94 = v122;
  v96 = v123;
  if (v93 > 3 || (v130 & 1) != 0)
  {
    v97 = v103;
    sub_23875E350();
    (*(v95 + 32))(v96, v97, v94);
    v84 = 0;
  }

  (*(v95 + 56))(v96, v84, 1, v94);
  v98 = v119;
  sub_23843981C(v91, v119, &qword_27DF155A0, &qword_238783730);
  v99 = v124;
  sub_23843981C(v96, v124, &qword_27DF15598, &qword_238783728);
  v100 = v107;
  sub_23843981C(v98, v107, &qword_27DF155A0, &qword_238783730);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155B8, &qword_238783748);
  sub_23843981C(v99, v100 + *(v101 + 48), &qword_27DF15598, &qword_238783728);
  sub_238439884(v96, &qword_27DF15598, &qword_238783728);
  sub_238439884(v91, &qword_27DF155A0, &qword_238783730);
  sub_238439884(v99, &qword_27DF15598, &qword_238783728);
  sub_238439884(v98, &qword_27DF155A0, &qword_238783730);
}

uint64_t sub_23872F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v89 = a4;
  v6 = sub_23875C880();
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x28223BE20](v6);
  v87 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v86 = &v80[-v10];
  v11 = sub_23875CDB0();
  v90 = *(v11 - 8);
  v12 = *(v90 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v80[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155C0, &qword_238783750);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v80[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155C8, &qword_238783758);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v80[-v22];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155D0, &qword_238783760);
  v24 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v91 = &v80[-v25];
  v26 = *(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24)) > 2;
  *v18 = sub_23875CE50();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155D8, &qword_238783768);
  sub_23872F970(a1, v26, a2, &v18[*(v27 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v18, v23, &qword_27DF155C0, &qword_238783750);
  v28 = &v23[*(v20 + 44)];
  v29 = v99;
  v28[4] = v98;
  v28[5] = v29;
  v28[6] = v100;
  v30 = v95;
  *v28 = v94;
  v28[1] = v30;
  v31 = v97;
  v28[2] = v96;
  v28[3] = v31;
  v32 = sub_23875D790();
  v84 = _s5LargeVMa();
  v33 = a2 + *(v84 + 24);
  v34 = *v33;
  v35 = *(v33 + 8);
  if (v35 == 1)
  {
    v36 = *v33;
  }

  else
  {
    v37 = *v33;

    sub_23875EFF0();
    v38 = v35;
    v39 = sub_23875D730();
    sub_23875C110();

    v35 = v38;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v34, 0);
    (*(v90 + 8))(v14, v11);
    LOBYTE(v36) = v93;
  }

  v40 = v11;
  if ((v36 & 1) != 0 && (v92 & 1) == 0)
  {
    v41 = *(v84 + 20);
    v82 = v14;
    v81 = v35;
    v83 = a2;
    v42 = v86;
    sub_2384D5138(v86);
    v43 = v88;
    v44 = v87;
    (*(v88 + 104))(v87, *MEMORY[0x277CDFA00], v6);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
    sub_23875E9B0();
    v45 = *(v43 + 8);
    v46 = v44;
    v40 = v11;
    v45(v46, v6);
    v47 = v42;
    a2 = v83;
    v45(v47, v6);
    v35 = v81;
    v14 = v82;
  }

  sub_23875C3D0();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v23;
  v57 = v91;
  sub_2384396E4(v56, v91, &qword_27DF155C8, &qword_238783758);
  v58 = &v57[*(v85 + 36)];
  *v58 = v32;
  *(v58 + 1) = v49;
  *(v58 + 2) = v51;
  *(v58 + 3) = v53;
  *(v58 + 4) = v55;
  v58[40] = 0;
  v59 = sub_23875D7A0();
  v60 = v90;
  if (!v35)
  {

    sub_23875EFF0();
    v61 = v14;
    v62 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v34, 0);
    (*(v60 + 8))(v61, v40);
    LOBYTE(v34) = v93;
  }

  if ((v34 & 1) != 0 && (v92 & 1) == 0)
  {
    v63 = a2 + *(v84 + 20);
    v64 = v86;
    sub_2384D5138(v86);
    v65 = v88;
    v66 = v87;
    (*(v88 + 104))(v87, *MEMORY[0x277CDFA00], v6);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
    sub_23875E9B0();
    v67 = *(v65 + 8);
    v67(v66, v6);
    v68 = v64;
    v57 = v91;
    v67(v68, v6);
  }

  sub_23875C3D0();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v77 = v89;
  sub_2384396E4(v57, v89, &qword_27DF155D0, &qword_238783760);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155E0, &qword_238783770);
  v79 = v77 + *(result + 36);
  *v79 = v59;
  *(v79 + 8) = v70;
  *(v79 + 16) = v72;
  *(v79 + 24) = v74;
  *(v79 + 32) = v76;
  *(v79 + 40) = 0;
  return result;
}

uint64_t sub_23872F970@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155E8, &qword_238783778);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F0, &qword_238783780);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v20 = sub_23875D030();
  *(v20 + 1) = 0x4000000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F8, &qword_238783788);
  sub_23872FC4C(a1, a2 & 1, &v20[*(v21 + 44)]);
  *v13 = sub_23875D020();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15600, &qword_238783790);
  sub_2387309AC(a1, v27, &v13[*(v22 + 44)]);
  sub_23843981C(v20, v17, &qword_27DF155F0, &qword_238783780);
  sub_23843981C(v13, v10, &qword_27DF155E8, &qword_238783778);
  sub_23843981C(v17, a4, &qword_27DF155F0, &qword_238783780);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15608, &qword_238783798);
  v24 = a4 + *(v23 + 48);
  *v24 = 0x4024000000000000;
  *(v24 + 8) = 0;
  sub_23843981C(v10, a4 + *(v23 + 64), &qword_27DF155E8, &qword_238783778);
  sub_238439884(v13, &qword_27DF155E8, &qword_238783778);
  sub_238439884(v20, &qword_27DF155F0, &qword_238783780);
  sub_238439884(v10, &qword_27DF155E8, &qword_238783778);
  sub_238439884(v17, &qword_27DF155F0, &qword_238783780);
}

uint64_t sub_23872FC4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v141 = a3;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  v5 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v137 = &v127 - v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  v7 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v147 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = &v127 - v10;
  MEMORY[0x28223BE20](v11);
  v149 = &v127 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v127 - v15;
  v17 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v145 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v20 = *(*(v143 - 1) + 64);
  MEMORY[0x28223BE20](v143);
  v144 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v22 = *(*(v150 - 8) + 64);
  MEMORY[0x28223BE20](v150);
  v133 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v131 = &v127 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v127 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v127 - v30;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  v32 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v142 = &v127 - v33;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  v34 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v146 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v129 = &v127 - v37;
  MEMORY[0x28223BE20](v38);
  v148 = &v127 - v39;
  sub_23875ED50();
  v139 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(a1, v31, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v140) = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v145;
    sub_23873218C(v31, v145, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v43 = *(v41 + 80);
    v42 = *(v41 + 88);

    v44 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v41 = v144;
    sub_23873218C(v31, v144, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v45 = (v41 + v143[8]);
    v43 = *v45;
    v42 = v45[1];

    v44 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v41, v44);
  v160 = v43;
  v161 = v42;
  v132 = sub_2384397A8();
  v46 = sub_23875DAA0();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_238731F9C(a1, v28, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v53 = swift_getEnumCaseMultiPayload();
  v138 = a1;
  if (v53 == 1)
  {
    v54 = v145;
    sub_23873218C(v28, v145, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v55 = *(v54 + 96);

    v56 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v54 = v144;
    sub_23873218C(v28, v144, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v55 = *(v54 + v143[9]);

    v56 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v54, v56);
  v160 = v46;
  v161 = v48;
  LOBYTE(v162) = v50 & 1;
  v163 = v52;
  sub_23875D890();
  sub_23875DAF0();
  *&v16[*(v13 + 36)] = v55;
  sub_238489664();

  v57 = v142;
  sub_23875DAB0();
  sub_2384397FC(v46, v48, v50 & 1);

  sub_238439884(v16, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath();
  v59 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36);
  *v59 = KeyPath;
  *(v59 + 8) = 1;
  *(v59 + 16) = 0;
  v60 = swift_getKeyPath();
  v61 = v57 + *(v128 + 36);
  *v61 = v60;
  *(v61 + 8) = 1;
  v62 = v140;
  if (v140)
  {
    v63 = sub_23875D820();
  }

  else
  {
    v63 = sub_23875D8F0();
  }

  v64 = v63;
  v66 = v137;
  v65 = v138;
  v67 = swift_getKeyPath();
  v68 = v129;
  sub_2384396E4(v142, v129, &qword_27DF0ACA8, &qword_238766C00);
  v69 = (v68 + *(v130 + 36));
  *v69 = v67;
  v69[1] = v64;
  sub_2384396E4(v68, v148, &qword_27DF0ACB0, &qword_238766C08);
  v70 = v131;
  sub_238731F9C(v65, v131, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v71 = v145;
    sub_23873218C(v70, v145, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v73 = *(v71 + 32);
    v72 = *(v71 + 40);

    v74 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v71 = v144;
    sub_23873218C(v70, v144, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v75 = (v71 + v143[7]);
    v73 = *v75;
    v72 = v75[1];

    v74 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v71, v74);
  v160 = v73;
  v161 = v72;
  v76 = sub_23875DAA0();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = *(v134 + 36);
  *(v66 + v83) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v66 = v76;
  *(v66 + 8) = v78;
  *(v66 + 16) = v80 & 1;
  *(v66 + 24) = v82;
  if (v62)
  {
    v84 = sub_23875D970();
  }

  else
  {
    v84 = sub_23875D7F0();
  }

  v85 = v84;
  v86 = swift_getKeyPath();
  v87 = v135;
  sub_2384396E4(v66, v135, &qword_27DF0AC90, &qword_238766BE8);
  v88 = (v87 + *(v136 + 36));
  *v88 = v86;
  v88[1] = v85;
  sub_2384396E4(v87, v149, &qword_27DF0AC98, &qword_238766BF0);
  v89 = v133;
  sub_238731F9C(v65, v133, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v90 = v145;
    sub_23873218C(v89, v145, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v92 = *(v90 + 104);
    v91 = *(v90 + 112);

    v93 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v90 = v144;
    sub_23873218C(v89, v144, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v94 = (v90 + v143[10]);
    v92 = *v94;
    v91 = v94[1];

    v93 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v90, v93);
  if (v91)
  {
    v160 = v92;
    v161 = v91;
    v95 = sub_23875DAA0();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = swift_getKeyPath();
    v103 = swift_getKeyPath();
    v153 = v99 & 1;
    v152 = 0;
    v104 = sub_23875D440();
    *&v154 = v95;
    *(&v154 + 1) = v97;
    LOBYTE(v155) = v153;
    *(&v155 + 1) = v101;
    *&v156 = v102;
    BYTE8(v156) = 1;
    *&v157 = v103;
    *(&v157 + 1) = 1;
    v105 = v152;
    LOBYTE(v158) = v152;
    v145 = v155;
    v150 = *(&v156 + 1);
    v143 = v95;
    v160 = v95;
    v161 = v97;
    LOBYTE(v162) = v153;
    v163 = v101;
    v164 = v102;
    LOBYTE(v165) = 1;
    v166 = v103;
    v167 = 1;
    LOBYTE(v168) = v152;
    sub_23843981C(&v154, &v151, &qword_27DF15550, &qword_2387836F8);
    sub_238439884(&v160, &qword_27DF15550, &qword_2387836F8);
    if (v62)
    {
      v106 = sub_23875D970();
    }

    else
    {
      v106 = sub_23875D7F0();
    }

    v135 = v97;
    v138 = v106;
    v142 = swift_getKeyPath();
    v108 = v104 << 32;
    v140 = 1;
    v144 = v101;
    v136 = v103;
    v137 = v102;
    v107 = v150;
  }

  else
  {
    v143 = 0;
    v144 = 0;
    v135 = 0;
    v136 = 0;
    v145 = 0;
    v137 = 0;
    v138 = 0;
    v107 = 0;
    v140 = 0;
    v142 = 0;
    v105 = 0;
    v108 = 0;
  }

  v150 = v107;
  v109 = v146;
  sub_23843981C(v148, v146, &qword_27DF0ACB0, &qword_238766C08);
  v110 = v147;
  sub_23843981C(v149, v147, &qword_27DF0AC98, &qword_238766BF0);
  v111 = v108 | v105;
  v134 = v108 | v105;
  v112 = v141;
  sub_23843981C(v109, v141, &qword_27DF0ACB0, &qword_238766C08);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15618, &qword_2387837A8);
  sub_23843981C(v110, v112 + v113[12], &qword_27DF0AC98, &qword_238766BF0);
  v114 = v112 + v113[16];
  v115 = v143;
  v116 = v135;
  *&v154 = v143;
  *(&v154 + 1) = v135;
  *&v155 = v145;
  *(&v155 + 1) = v144;
  v117 = v137;
  *&v156 = v137;
  *(&v156 + 1) = v107;
  v118 = v136;
  v119 = v140;
  *&v157 = v136;
  *(&v157 + 1) = v140;
  *&v158 = v111;
  v120 = v142;
  *(&v158 + 1) = v142;
  v121 = v157;
  v122 = v158;
  *(v114 + 32) = v156;
  *(v114 + 48) = v121;
  v123 = v155;
  *v114 = v154;
  *(v114 + 16) = v123;
  v124 = v138;
  v159 = v138;
  *(v114 + 80) = v138;
  *(v114 + 64) = v122;
  v125 = v112 + v113[20];
  *v125 = 0;
  *(v125 + 8) = 0;
  sub_23843981C(&v154, &v160, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v149, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v148, &qword_27DF0ACB0, &qword_238766C08);
  v160 = v115;
  v161 = v116;
  v162 = v145;
  v163 = v144;
  v164 = v117;
  v165 = v150;
  v166 = v118;
  v167 = v119;
  v168 = v134;
  v169 = v120;
  v170 = v124;
  sub_238439884(&v160, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v147, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v146, &qword_27DF0ACB0, &qword_238766C08);
}

uint64_t sub_2387309AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderWidgetImageView();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(v28, v8, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v19 = *(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v20 = 86.0;
  v21 = 71.0;
  if (v19 == 3)
  {
    v21 = 82.0;
  }

  if (v19 != 2)
  {
    v20 = v21;
  }

  if (v19 == 1)
  {
    v22 = 176.0;
  }

  else
  {
    v22 = v20;
  }

  sub_23873218C(v8, v15, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v15[v9[5]] = v22;
  *&v15[v9[6]] = v22;
  *&v15[v9[7]] = 0x4018000000000000;
  sub_23873218C(v15, v18, type metadata accessor for OrderWidgetImageView);
  v23 = *(*a2 + 16) < 3uLL;
  sub_238731F9C(v18, v12, type metadata accessor for OrderWidgetImageView);
  *a3 = 0;
  *(a3 + 8) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15610, &qword_2387837A0);
  sub_238731F9C(v12, a3 + *(v24 + 48), type metadata accessor for OrderWidgetImageView);
  v25 = a3 + *(v24 + 64);
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 9) = v23;
  sub_23873212C(v18, type metadata accessor for OrderWidgetImageView);
  sub_23873212C(v12, type metadata accessor for OrderWidgetImageView);
}

uint64_t sub_238730CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v142 = a2;
  v144 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC88, &qword_238766BE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v145 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v143 = (&v130 - v8);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  v9 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v139 = &v130 - v10;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  v11 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v151 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v137 = &v130 - v14;
  MEMORY[0x28223BE20](v15);
  v153 = &v130 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v130 - v19;
  v21 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v146 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v24 = *(*(v148 - 1) + 64);
  MEMORY[0x28223BE20](v148);
  v149 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v135 = &v130 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v133 = &v130 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v130 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v130 - v35;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  v37 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v39 = &v130 - v38;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  v40 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v150 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v130 = &v130 - v43;
  MEMORY[0x28223BE20](v44);
  v152 = &v130 - v45;
  sub_23875ED50();
  v140 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(a1, v36, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v147 = v26;
  if (EnumCaseMultiPayload == 1)
  {
    v47 = v146;
    sub_23873218C(v36, v146, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v49 = *(v47 + 80);
    v48 = *(v47 + 88);

    v50 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v47 = v149;
    sub_23873218C(v36, v149, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v51 = (v47 + v148[8]);
    v49 = *v51;
    v48 = v51[1];

    v50 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v47, v50);
  v162 = v49;
  v163 = v48;
  v134 = sub_2384397A8();
  v52 = sub_23875DAA0();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_238731F9C(a1, v33, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v59 = swift_getEnumCaseMultiPayload();
  v141 = a1;
  if (v59 == 1)
  {
    v60 = v146;
    sub_23873218C(v33, v146, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v61 = *(v60 + 96);

    v62 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v60 = v149;
    sub_23873218C(v33, v149, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v61 = *(v60 + v148[9]);

    v62 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v60, v62);
  v162 = v52;
  v163 = v54;
  LOBYTE(v164) = v56 & 1;
  v165 = v58;
  sub_23875D890();
  sub_23875DAF0();
  *&v20[*(v17 + 36)] = v61;
  sub_238489664();

  sub_23875DAB0();
  sub_2384397FC(v52, v54, v56 & 1);

  sub_238439884(v20, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath();
  v64 = &v39[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36)];
  *v64 = KeyPath;
  *(v64 + 1) = 1;
  v64[16] = 0;
  v65 = swift_getKeyPath();
  v66 = &v39[*(v131 + 36)];
  *v66 = v65;
  v66[8] = 1;
  v67 = sub_23875D8E0();
  v68 = swift_getKeyPath();
  v69 = v130;
  sub_2384396E4(v39, v130, &qword_27DF0ACA8, &qword_238766C00);
  v70 = (v69 + *(v132 + 36));
  *v70 = v68;
  v70[1] = v67;
  sub_2384396E4(v69, v152, &qword_27DF0ACB0, &qword_238766C08);
  v71 = v141;
  v72 = v133;
  sub_238731F9C(v141, v133, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v73 = v146;
    sub_23873218C(v72, v146, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v75 = *(v73 + 32);
    v74 = *(v73 + 40);

    v76 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v73 = v149;
    sub_23873218C(v72, v149, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v77 = (v73 + v148[7]);
    v75 = *v77;
    v74 = v77[1];

    v76 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v73, v76);
  v162 = v75;
  v163 = v74;
  v78 = sub_23875DAA0();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v85 = *(v136 + 36);
  v86 = swift_getKeyPath();
  v87 = v139;
  *&v139[v85] = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v87 = v78;
  *(v87 + 8) = v80;
  *(v87 + 16) = v82 & 1;
  *(v87 + 24) = v84;
  v88 = sub_23875D7F0();
  v89 = swift_getKeyPath();
  v90 = v137;
  sub_2384396E4(v87, v137, &qword_27DF0AC90, &qword_238766BE8);
  v91 = (v90 + *(v138 + 36));
  *v91 = v89;
  v91[1] = v88;
  sub_2384396E4(v90, v153, &qword_27DF0AC98, &qword_238766BF0);
  v92 = v135;
  sub_238731F9C(v71, v135, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v93 = v146;
    sub_23873218C(v92, v146, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v95 = *(v93 + 104);
    v94 = *(v93 + 112);

    v96 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v93 = v149;
    sub_23873218C(v92, v149, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v97 = (v93 + v148[10]);
    v95 = *v97;
    v94 = v97[1];

    v96 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23873212C(v93, v96);
  if (v94)
  {
    v162 = v95;
    v163 = v94;
    v98 = sub_23875DAA0();
    v100 = v99;
    v102 = v101;
    v103 = v71;
    v105 = v104;
    v106 = swift_getKeyPath();
    v107 = swift_getKeyPath();
    v156 = v102 & 1;
    v155 = 0;
    v108 = sub_23875D440();
    *&v157 = v98;
    *(&v157 + 1) = v100;
    LOBYTE(v158) = v156;
    *(&v158 + 1) = v105;
    *&v159 = v106;
    BYTE8(v159) = 1;
    *&v160 = v107;
    *(&v160 + 1) = 1;
    v109 = v155;
    LOBYTE(v161) = v155;
    v136 = v158;
    v148 = *(&v159 + 1);
    v162 = v98;
    v163 = v100;
    v147 = v100;
    LOBYTE(v164) = v156;
    v149 = v105;
    v165 = v105;
    v166 = v106;
    v71 = v103;
    v146 = v106;
    LOBYTE(v167) = 1;
    v139 = v107;
    v168 = v107;
    v169 = 1;
    v138 = 1;
    LOBYTE(v170) = v155;
    sub_23843981C(&v157, v154, &qword_27DF15550, &qword_2387836F8);
    sub_238439884(&v162, &qword_27DF15550, &qword_2387836F8);
    v137 = v109 | (v108 << 32);
  }

  else
  {
    v98 = 0;
    v147 = 0;
    v136 = 0;
    v149 = 0;
    v146 = 0;
    v148 = 0;
    v139 = 0;
    v138 = 0;
    v137 = 0;
  }

  v135 = v98;
  v110 = sub_23875CE60();
  v111 = v143;
  *v143 = v110;
  *(v111 + 8) = 0;
  *(v111 + 16) = 1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC8, &qword_238766CA8);
  sub_238731C38(v71, v142, v111 + *(v112 + 44));
  v113 = v150;
  sub_23843981C(v152, v150, &qword_27DF0ACB0, &qword_238766C08);
  v114 = v151;
  sub_23843981C(v153, v151, &qword_27DF0AC98, &qword_238766BF0);
  v115 = v145;
  sub_23843981C(v111, v145, &qword_27DF0AC88, &qword_238766BE0);
  v116 = v113;
  v117 = v144;
  sub_23843981C(v116, v144, &qword_27DF0ACB0, &qword_238766C08);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15540, &qword_2387836E8);
  sub_23843981C(v114, v117 + v118[12], &qword_27DF0AC98, &qword_238766BF0);
  v119 = v117 + v118[16];
  *&v157 = v98;
  v120 = v147;
  v121 = v136;
  *(&v157 + 1) = v147;
  *&v158 = v136;
  v122 = v146;
  *(&v158 + 1) = v149;
  *&v159 = v146;
  v123 = v139;
  *(&v159 + 1) = v148;
  *&v160 = v139;
  v124 = v138;
  v125 = v137;
  *(&v160 + 1) = v138;
  v161 = v137;
  v126 = v160;
  *(v119 + 32) = v159;
  *(v119 + 48) = v126;
  *(v119 + 64) = v125;
  v127 = v158;
  *v119 = v157;
  *(v119 + 16) = v127;
  v128 = v117 + v118[20];
  *v128 = 0;
  *(v128 + 8) = 1;
  sub_23843981C(v115, v117 + v118[24], &qword_27DF0AC88, &qword_238766BE0);
  sub_23843981C(&v157, &v162, &qword_27DF15548, &qword_2387836F0);
  sub_238439884(v111, &qword_27DF0AC88, &qword_238766BE0);
  sub_238439884(v153, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v152, &qword_27DF0ACB0, &qword_238766C08);
  sub_238439884(v115, &qword_27DF0AC88, &qword_238766BE0);
  v162 = v135;
  v163 = v120;
  v164 = v121;
  v165 = v149;
  v166 = v122;
  v167 = v148;
  v168 = v123;
  v169 = v124;
  v170 = v125;
  sub_238439884(&v162, &qword_27DF15548, &qword_2387836F0);
  sub_238439884(v151, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v150, &qword_27DF0ACB0, &qword_238766C08);
}

uint64_t sub_238731C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderWidgetImageView();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238731F9C(a1, v8, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v19 = *(v26 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v20 = 86.0;
  v21 = 71.0;
  if (v19 == 3)
  {
    v21 = 82.0;
  }

  if (v19 != 2)
  {
    v20 = v21;
  }

  if (v19 == 1)
  {
    v22 = 176.0;
  }

  else
  {
    v22 = v20;
  }

  sub_23873218C(v8, v15, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v15[v9[5]] = v22;
  *&v15[v9[6]] = v22;
  *&v15[v9[7]] = 0x4020000000000000;
  sub_23873218C(v15, v18, type metadata accessor for OrderWidgetImageView);
  sub_238731F9C(v18, v12, type metadata accessor for OrderWidgetImageView);
  *a3 = 0;
  *(a3 + 8) = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD8, &qword_238766CB8);
  sub_238731F9C(v12, a3 + *(v23 + 48), type metadata accessor for OrderWidgetImageView);
  sub_23873212C(v18, type metadata accessor for OrderWidgetImageView);
  sub_23873212C(v12, type metadata accessor for OrderWidgetImageView);
}

uint64_t sub_238731F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5LargeVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23872DCFC(a1, v6, a2);
}

uint64_t sub_238731F9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238732004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5LargeVMa() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_23872E388(a1, v7, v8, v9, v10, a2);
}

uint64_t sub_23873208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s5LargeVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_23872F1B0(a1, v6, v7, a2);
}

uint64_t sub_23873212C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23873218C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2387321F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23873223C()
{
  result = qword_27DF15628;
  if (!qword_27DF15628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15630, &qword_2387837B8);
    sub_23843A3E8(&qword_27DF15528, &qword_27DF15518, &qword_238783610);
    sub_23843A3E8(&qword_27DF15530, &qword_27DF15508, &qword_238783600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15628);
  }

  return result;
}

uint64_t type metadata accessor for OrderLargeBlackButtonStyle()
{
  result = qword_27DF15638;
  if (!qword_27DF15638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238732394()
{
  sub_238566280();
  if (v0 <= 0x3F)
  {
    sub_238438628();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238732434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15648, &qword_238783818);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15650, &qword_238783820);
  v48 = *(v6 - 8);
  v49 = v6;
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15658, &qword_238783828);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15660, &qword_238783830);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15668, &qword_238783838);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v48 - v23;
  sub_23875D4E0();
  v25 = sub_23875D820();
  KeyPath = swift_getKeyPath();
  v27 = &v5[*(v2 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_23875D890();
  sub_238733060();
  sub_23875DAF0();
  sub_238439884(v5, &qword_27DF15648, &qword_238783818);
  sub_23875E4A0();
  sub_23875C9C0();
  (*(v48 + 32))(v14, v9, v49);
  v28 = &v14[*(v11 + 44)];
  v29 = v57;
  *(v28 + 4) = v56;
  *(v28 + 5) = v29;
  *(v28 + 6) = v58;
  v30 = v53;
  *v28 = v52;
  *(v28 + 1) = v30;
  v31 = v55;
  *(v28 + 2) = v54;
  *(v28 + 3) = v31;
  v32 = sub_238732880();
  sub_2384396E4(v14, v19, &qword_27DF15658, &qword_238783828);
  *&v19[*(v16 + 44)] = v32;
  v33 = sub_23875D4F0();
  v34 = sub_238732BBC(v33 & 1);
  LOBYTE(v25) = sub_23875D780();
  sub_2384396E4(v19, v24, &qword_27DF15660, &qword_238783830);
  v35 = &v24[*(v21 + 44)];
  *v35 = v34;
  v35[8] = v25;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15680, &unk_238783878);
  v37 = v50;
  v38 = (v50 + *(v36 + 36));
  v39 = *(sub_23875C980() + 20);
  v40 = *MEMORY[0x277CE0118];
  v41 = sub_23875CF50();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  __asm { FMOV            V0.2D, #12.0 }

  *v38 = _Q0;
  *&v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  return sub_2384396E4(v24, v37, &qword_27DF15668, &qword_238783838);
}

uint64_t sub_238732880()
{
  v1 = sub_23875C450();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_23875CDB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  if (*(v0 + 8) != 1)
  {
    v25 = v12;

    sub_23875EFF0();
    v22 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v15, 0);
    (*(v10 + 8))(v14, v25);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v23 = v0 + *(type metadata accessor for OrderLargeBlackButtonStyle() + 20);
    sub_2384D4E38(v8);
    (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v1);
    LOBYTE(v23) = sub_23875C440();
    v24 = *(v2 + 8);
    v24(v5, v1);
    v24(v8, v1);
    if (v23)
    {
      return sub_23875E040();
    }

    else
    {
      return sub_23875E010();
    }
  }

  if (v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = v0 + *(type metadata accessor for OrderLargeBlackButtonStyle() + 20);
  sub_2384D4E38(v8);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF3D0], v1);
  LOBYTE(v16) = sub_23875C440();
  v17 = *(v2 + 8);
  v17(v5, v1);
  v17(v8, v1);
  v18 = objc_opt_self();
  v19 = &selRef_systemGray3Color;
  if ((v16 & 1) == 0)
  {
    v19 = &selRef_systemGray2Color;
  }

  v20 = [v18 *v19];
  return sub_23875DFB0();
}

uint64_t sub_238732BBC(int a1)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15688, &unk_238783888);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v45 = &v41 - v4;
  v5 = sub_23875C450();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = sub_23875CDB0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  if (*(v1 + 8) != 1)
  {
    v41 = v19;

    sub_23875EFF0();
    v42 = v15;
    v29 = sub_23875D730();
    v43 = v1;
    v30 = v5;
    v31 = v29;
    v15 = v42;
    sub_23875C110();

    v5 = v30;
    v1 = v43;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v22, 0);
    (*(v17 + 8))(v21, v41);
    if (v46 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v32 = v1 + *(type metadata accessor for OrderLargeBlackButtonStyle() + 20);
    sub_2384D4E38(v15);
    v33 = *(v2 + 48);
    v34 = v45;
    (*(v6 + 32))(v45, v15, v5);
    *(v34 + v33) = v44 & 1;
    v35 = (*(v6 + 88))(v34, v5);
    if (v35 == *MEMORY[0x277CDF3D0])
    {
      if ((v44 & 1) == 0)
      {
        v38 = sub_23875E010();
        goto LABEL_17;
      }

      v36 = [objc_opt_self() systemGray3Color];
    }

    else
    {
      if (v35 != *MEMORY[0x277CDF3C0])
      {
        v39 = sub_23875E010();
        sub_238439884(v45, &qword_27DF15688, &unk_238783888);
        return v39;
      }

      if ((v44 & 1) == 0)
      {
        v38 = sub_23875E040();
        goto LABEL_17;
      }

      v36 = [objc_opt_self() systemGray4Color];
    }

    v37 = v36;
    v38 = sub_23875DFB0();
LABEL_17:
    v40 = v38;
    (*(v6 + 8))(v45, v5);
    return v40;
  }

  if (v22)
  {
    goto LABEL_7;
  }

LABEL_3:
  v23 = v1 + *(type metadata accessor for OrderLargeBlackButtonStyle() + 20);
  sub_2384D4E38(v12);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3D0], v5);
  LOBYTE(v23) = sub_23875C440();
  v24 = *(v6 + 8);
  v24(v9, v5);
  v24(v12, v5);
  v25 = objc_opt_self();
  v26 = &selRef_systemGray6Color;
  if ((v23 & 1) == 0)
  {
    v26 = &selRef_systemGray4Color;
  }

  v27 = [v25 *v26];
  return sub_23875DFB0();
}

unint64_t sub_238733060()
{
  result = qword_27DF15670;
  if (!qword_27DF15670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15648, &qword_238783818);
    sub_238733118();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15670);
  }

  return result;
}

unint64_t sub_238733118()
{
  result = qword_27DF15678;
  if (!qword_27DF15678)
  {
    sub_23875D4D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15678);
  }

  return result;
}

unint64_t sub_238733170()
{
  result = qword_27DF15690;
  if (!qword_27DF15690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15680, &unk_238783878);
    sub_238733228();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15690);
  }

  return result;
}

unint64_t sub_238733228()
{
  result = qword_27DF15698;
  if (!qword_27DF15698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15668, &qword_238783838);
    sub_2387332E0();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15698);
  }

  return result;
}

unint64_t sub_2387332E0()
{
  result = qword_27DF156A0;
  if (!qword_27DF156A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15660, &qword_238783830);
    sub_238733398();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF156A0);
  }

  return result;
}

unint64_t sub_238733398()
{
  result = qword_27DF156A8;
  if (!qword_27DF156A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15658, &qword_238783828);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15648, &qword_238783818);
    sub_238733060();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF156A8);
  }

  return result;
}

id sub_238733460()
{
  v0 = sub_23875C8A0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238733808();
  v6 = sub_238733C2C();
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_23875EA50();
  v9 = [v7 initWithString_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_238763E70;
  *(v10 + 32) = v5;
  v30 = v10;
  v11 = *(type metadata accessor for BetaBadgeFormatter() + 24);
  (*(v1 + 104))(v4, *MEMORY[0x277CDFA90], v0);
  v12 = v5;
  v13 = sub_23875C890();
  (*(v1 + 8))(v4, v0);
  v29 = v9;
  if (v13)
  {
    v14 = v6;
    sub_2386CD760(0, 0, v14);

    if (v30 >> 62)
    {
      if (sub_23875F3A0() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v15 = v9;
      sub_2386CD760(1, 1, v15);

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_25;
  }

  v16 = v9;
  MEMORY[0x23EE63730]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_25:
    sub_23875EC90();
  }

  sub_23875ECB0();
  v17 = v6;
  MEMORY[0x23EE63730]();
  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v26 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_23875EC90();
  }

  sub_23875ECB0();
LABEL_9:
  v28 = v12;
  v18 = v30;
  v19 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  if (v18 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23875F3A0())
  {
    v21 = 0;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x23EE63F70](v21, v18);
      }

      else
      {
        if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      [v19 appendAttributedString_];

      ++v21;
      if (v24 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return v19;
}

id sub_238733808()
{
  v1 = *v0;
  v30 = v0[1];
  v2 = objc_opt_self();
  v3 = [v2 preferredFontForTextStyle_];
  v4 = [v3 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B0, &qword_238783898);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v6 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B8, &qword_2387838A0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2387632F0;
  v8 = *MEMORY[0x277D74430];
  *(v7 + 32) = *MEMORY[0x277D74430];
  *(v7 + 40) = *MEMORY[0x277D74420];
  v9 = v6;
  v10 = v8;
  v11 = sub_23854B470(v7);
  swift_setDeallocating();
  sub_238439884(v7 + 32, &qword_27DF156C0, &qword_2387838A8);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156C8, &unk_2387838B0);
  *(inited + 40) = v11;
  sub_23854B560(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0DEE0, &qword_23876E900);
  type metadata accessor for AttributeName(0);
  sub_23873433C(&qword_27DF09228, type metadata accessor for AttributeName);
  v12 = sub_23875E910();

  v13 = [v4 fontDescriptorByAddingAttributes_];

  [v3 pointSize];
  v15 = [v2 fontWithDescriptor:v13 size:{fmax(v14, 17.0)}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F808, &unk_2387838C0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_238763B60;
  v17 = *MEMORY[0x277D740C0];
  *(v16 + 32) = *MEMORY[0x277D740C0];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 labelColor];
  v21 = sub_238449184(0, &qword_27DF156D0, 0x277D75348);
  *(v16 + 40) = v20;
  v22 = *MEMORY[0x277D740A8];
  *(v16 + 64) = v21;
  *(v16 + 72) = v22;
  *(v16 + 104) = sub_238449184(0, &qword_27DF0F810, 0x277D74300);
  *(v16 + 80) = v15;
  v23 = v22;
  v24 = v15;
  sub_23854B584(v16);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DED0, &qword_23876E8F0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_23875EA50();
  type metadata accessor for Key(0);
  sub_23873433C(&qword_27DF091F0, type metadata accessor for Key);
  v27 = sub_23875E910();

  v28 = [v25 initWithString:v26 attributes:v27];

  return v28;
}

id sub_238733C2C()
{
  v52 = sub_23875C450();
  v51 = *(v52 - 8);
  v0 = *(v51 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  if (!v6)
  {
    sub_23875EA80();
    v6 = sub_23875EA50();
  }

  v53 = v6;
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  v49 = v8;
  v9 = [v8 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B0, &qword_238783898);
  inited = swift_initStackObject();
  v48 = xmmword_2387632F0;
  *(inited + 16) = xmmword_2387632F0;
  v11 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156B8, &qword_2387838A0);
  v12 = swift_initStackObject();
  *(v12 + 16) = v48;
  v13 = *MEMORY[0x277D74430];
  *(v12 + 32) = *MEMORY[0x277D74430];
  *(v12 + 40) = *MEMORY[0x277D74418];
  v14 = v11;
  v15 = v13;
  v16 = sub_23854B470(v12);
  swift_setDeallocating();
  sub_238439884(v12 + 32, &qword_27DF156C0, &qword_2387838A8);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF156C8, &unk_2387838B0);
  *(inited + 40) = v16;
  sub_23854B560(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &qword_27DF0DEE0, &qword_23876E900);
  type metadata accessor for AttributeName(0);
  sub_23873433C(&qword_27DF09228, type metadata accessor for AttributeName);
  v17 = sub_23875E910();

  v18 = [v9 fontDescriptorByAddingAttributes_];

  [v8 pointSize];
  v20 = [v7 fontWithDescriptor:v18 size:{fmax(v19, 15.0)}];
  v21 = [objc_allocWithZone(MEMORY[0x277CC4818]) initWithShape_];
  LODWORD(v13) = *(type metadata accessor for BetaBadgeFormatter() + 20);
  v23 = v50;
  v22 = v51;
  v24 = v52;
  (*(v51 + 104))(v50, *MEMORY[0x277CDF3D0], v52);
  v25 = sub_23875C440();
  (*(v22 + 8))(v23, v24);
  v26 = objc_opt_self();
  v27 = &selRef_lightGrayColor;
  if ((v25 & 1) == 0)
  {
    v27 = &selRef_blackColor;
  }

  v28 = [v26 *v27];
  [v21 setColor_];

  [v21 setScale_];
  [v21 setStyle_];
  [v21 setPlatterSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0F808, &unk_2387838C0);
  v29 = swift_initStackObject();
  v30 = MEMORY[0x277D740C0];
  *(v29 + 16) = xmmword_238763300;
  v31 = *v30;
  *(v29 + 32) = *v30;
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 whiteColor];
  v35 = sub_238449184(0, &qword_27DF156D0, 0x277D75348);
  *(v29 + 40) = v34;
  v36 = *MEMORY[0x277CC4810];
  *(v29 + 64) = v35;
  *(v29 + 72) = v36;
  v37 = sub_238449184(0, &qword_27DF156D8, 0x277CC4818);
  *(v29 + 80) = v21;
  v38 = *MEMORY[0x277D740A8];
  *(v29 + 104) = v37;
  *(v29 + 112) = v38;
  *(v29 + 144) = sub_238449184(0, &qword_27DF0F810, 0x277D74300);
  *(v29 + 120) = v20;
  v39 = v36;
  v40 = v21;
  v41 = v38;
  v42 = v20;
  sub_23854B584(v29);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DED0, &qword_23876E8F0);
  swift_arrayDestroy();
  v43 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  sub_23873433C(&qword_27DF091F0, type metadata accessor for Key);
  v44 = sub_23875E910();

  v45 = v53;
  v46 = [v43 initWithString:v53 attributes:v44];

  return v46;
}

uint64_t type metadata accessor for BetaBadgeFormatter()
{
  result = qword_27DF156E0;
  if (!qword_27DF156E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23873433C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2387343AC()
{
  result = sub_23875C450();
  if (v1 <= 0x3F)
  {
    result = sub_23875C8A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double static EdgeInsets.defaultListRowInsets(_:)()
{
  v0 = sub_23875C880();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277CDF9D8], v0, v3);
  sub_23875C870();
  (*(v1 + 8))(v5, v0);
  return 12.0;
}

uint64_t static Section<>.compact<>(header:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a6;
  v46 = a7;
  v40[0] = a5;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v49 = a8;
  v9 = sub_23875CEA0();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23875E3F0();
  v41 = *(v18 - 8);
  v19 = *(v41 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v40 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v40[1] = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v22 = sub_23875C8C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v40 - v29;
  (*(v13 + 16))(v17, v42, a4, v28);
  v32 = v45;
  v31 = v46;
  sub_23875E3B0();
  sub_23875CE90();
  v54 = v32;
  v55 = v31;
  v56 = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v47 + 8))(v12, v48);
  (*(v41 + 8))(v21, v18);
  v34 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  v52 = WitnessTable;
  v53 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  v50 = v35;
  v51 = v36;
  v37 = swift_getWitnessTable();
  sub_23844EA0C(v26, v22, v37);
  v38 = *(v23 + 8);
  v38(v26, v22);
  sub_23844EA0C(v30, v22, v37);
  return (v38)(v30, v22);
}

uint64_t static Section<>.compact<>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v29[3] = a2;
  v30 = a3;
  v29[2] = a1;
  v32 = a4;
  v31 = sub_23875CEA0();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v31);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875E3F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v29[1] = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v13 = sub_23875C8C0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v29 - v19;
  v21 = v30;
  sub_23875E3D0();
  sub_23875CE90();
  v37 = MEMORY[0x277CE1410];
  v38 = v21;
  v39 = MEMORY[0x277CE1410];
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v4 + 8))(v7, v31);
  (*(v9 + 8))(v12, v8);
  v23 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  v35 = WitnessTable;
  v36 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  v33 = v24;
  v34 = v25;
  v26 = swift_getWitnessTable();
  sub_23844EA0C(v17, v13, v26);
  v27 = *(v14 + 8);
  v27(v17, v13);
  sub_23844EA0C(v20, v13, v26);
  return (v27)(v20, v13);
}

uint64_t OrderImageStyle.hashValue.getter()
{
  v1 = *v0;
  sub_23875F700();
  MEMORY[0x23EE641F0](v1);
  return sub_23875F760();
}

uint64_t sub_238734E3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OrderImageStyleModifier();
  sub_23843981C(v1 + *(v12 + 40), v11, &qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C450();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_238735044()
{
  v1 = sub_23875CDB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - v8);
  v10 = sub_23875C880();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  v18 = type metadata accessor for OrderImageStyleModifier();
  sub_23843981C(v0 + *(v18 + 36), v9, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v11 + 32);
    v19(v17, v9, v10);
  }

  else
  {
    v21 = *v9;
    sub_23875EFF0();
    v22 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    v19 = *(v11 + 32);
  }

  v19(v14, v17, v10);
  v23 = (*(v11 + 88))(v14, v10);
  if (v23 == *MEMORY[0x277CDF9F8])
  {
    return 0.8;
  }

  if (v23 == *MEMORY[0x277CDF9E0])
  {
    return 0.85;
  }

  if (v23 == *MEMORY[0x277CDF9E8])
  {
    return 0.9;
  }

  result = 1.0;
  if (v23 != *MEMORY[0x277CDF9D8])
  {
    if (v23 == *MEMORY[0x277CDF9F0])
    {
      return 1.1;
    }

    else if (v23 == *MEMORY[0x277CDFA00])
    {
      return 1.2;
    }

    else if (v23 == *MEMORY[0x277CDFA10])
    {
      return 1.35;
    }

    else
    {
      result = 1.5;
      if (v23 != *MEMORY[0x277CDF988])
      {
        if (v23 == *MEMORY[0x277CDF998])
        {
          return 1.6;
        }

        else if (v23 == *MEMORY[0x277CDF9A8])
        {
          return 1.7;
        }

        else if (v23 == *MEMORY[0x277CDF9B8])
        {
          return 1.8;
        }

        else
        {
          result = 2.0;
          if (v23 != *MEMORY[0x277CDF9D0])
          {
            (*(v11 + 8))(v14, v10, 2.0);
            return 1.0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2387354A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v4 = sub_23875C450();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v59 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v58 - v8;
  v9 = sub_23875C980();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = (&v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15710, &qword_238783AB0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - v21;
  v23 = *v2;
  sub_238735044();
  sub_238735044();
  sub_23875E4A0();
  sub_23875C5C0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15718, &qword_238783AB8);
  (*(*(v24 - 8) + 16))(v22, a1, v24);
  v25 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15720, &qword_238783AC0) + 36)];
  v26 = v65;
  *v25 = v64;
  *(v25 + 1) = v26;
  *(v25 + 2) = v66;
  v27 = v2[1];
  v28 = v27 * sub_238735044();
  v29 = *(v19 + 44);
  v62 = v22;
  v30 = &v22[v29];
  v31 = *(v10 + 28);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_23875CF50();
  v34 = *(*(v33 - 8) + 104);
  v34(v30 + v31, v32, v33);
  *v30 = v28;
  v30[1] = v28;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
  v35 = v27 * sub_238735044();
  v34(v13 + *(v10 + 28), v32, v33);
  *v13 = v35;
  v13[1] = v35;
  v36 = *(v2 + 4);
  if ((v2[5] & 1) == 0)
  {
    v37 = v58;
    sub_238734E3C(v58);
    v39 = v59;
    v38 = v60;
    v40 = v61;
    (*(v60 + 104))(v59, *MEMORY[0x277CDF3D0], v61);
    sub_23875C440();
    v41 = *(v38 + 8);
    v41(v39, v40);
    v41(v37, v40);
  }

  v42 = sub_23875E060();
  sub_23875C4C0();
  sub_23846E86C(v13, v17);
  v43 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v44 = v68;
  *v43 = v67;
  *(v43 + 1) = v44;
  *(v43 + 4) = v69;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v17[*(v45 + 52)] = v42;
  *&v17[*(v45 + 56)] = 256;
  v46 = sub_23875E4A0();
  v48 = v47;
  sub_2387367C8(v13, MEMORY[0x277CDFC08]);
  v49 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v49 = v46;
  v49[1] = v48;
  v50 = sub_23875E4A0();
  v52 = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15728, &qword_238783AC8);
  v54 = v63;
  v55 = v63 + *(v53 + 36);
  sub_2384396E4(v17, v55, &qword_27DF0A438, &unk_2387662D0);
  v56 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
  *v56 = v50;
  v56[1] = v52;
  return sub_2384396E4(v62, v54, &qword_27DF15710, &qword_238783AB0);
}

uint64_t View.orderImageStyle(size:cornerRadius:scale:strokeColor:hideBorder:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v16 = type metadata accessor for OrderImageStyleModifier();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v19 + *(v16 + 36)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v19 + *(v16 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v19 = a7;
  v19[1] = a8;
  *(v19 + 2) = a1;
  *(v19 + 24) = a2 & 1;
  *(v19 + 4) = a3;
  *(v19 + 40) = a4;

  MEMORY[0x23EE629E0](v19, a5, v16, a6);
  return sub_2387367C8(v19, type metadata accessor for OrderImageStyleModifier);
}

uint64_t type metadata accessor for OrderImageStyleModifier()
{
  result = qword_27DF156F8;
  if (!qword_27DF156F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Section<>.compact(header:footer:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v60 = a4;
  v61 = a8;
  v51 = a6;
  v56 = a1;
  v57 = a2;
  v64 = a9;
  v58 = a10;
  v59 = a3;
  v50 = a11;
  v13 = sub_23875CEA0();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = *(v62 + 64);
  MEMORY[0x28223BE20](v13);
  v55 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a5 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875E3F0();
  v53 = *(v26 - 8);
  v27 = *(v53 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v49 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v52 = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v30 = sub_23875C8C0();
  v54 = *(v30 - 8);
  v31 = *(v54 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v34);
  v49 = &v49 - v36;
  (*(v21 + 16))(v25, v56, a5, v35);
  (*(v16 + 16))(v20, v57, a7);
  v37 = v50;
  v38 = v58;
  v39 = v61;
  sub_23875E3C0();
  v40 = v55;
  sub_23875CE90();
  v69 = v39;
  v70 = v38;
  v71 = v37;
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v62 + 8))(v40, v63);
  (*(v53 + 8))(v29, v26);
  v42 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  v67 = WitnessTable;
  v68 = v42;
  v43 = swift_getWitnessTable();
  v44 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  v65 = v43;
  v66 = v44;
  v45 = swift_getWitnessTable();
  v46 = v49;
  sub_23844EA0C(v33, v30, v45);
  v47 = *(v54 + 8);
  v47(v33, v30);
  sub_23844EA0C(v46, v30, v45);
  return (v47)(v46, v30);
}

uint64_t static Section<>.compact<>(footer:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v45 = a6;
  v46 = a7;
  v40[0] = a4;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v49 = a8;
  v9 = sub_23875CEA0();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23875E3F0();
  v41 = *(v18 - 8);
  v19 = *(v41 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v40 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D4D0, &qword_23876D3C0);
  v40[1] = sub_23875C8C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0D480, &qword_23876D950);
  v22 = sub_23875C8C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = v40 - v29;
  (*(v13 + 16))(v17, v42, a5, v28);
  v32 = v45;
  v31 = v46;
  sub_23875E3E0();
  sub_23875CE90();
  v54 = MEMORY[0x277CE1410];
  v55 = v32;
  v56 = v31;
  WitnessTable = swift_getWitnessTable();
  sub_23875DCF0();
  (*(v47 + 8))(v12, v48);
  (*(v41 + 8))(v21, v18);
  v34 = sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
  v52 = WitnessTable;
  v53 = v34;
  v35 = swift_getWitnessTable();
  v36 = sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
  v50 = v35;
  v51 = v36;
  v37 = swift_getWitnessTable();
  sub_23844EA0C(v26, v22, v37);
  v38 = *(v23 + 8);
  v38(v26, v22);
  sub_23844EA0C(v30, v22, v37);
  return (v38)(v30, v22);
}

unint64_t sub_23873657C()
{
  result = qword_27DF156F0;
  if (!qword_27DF156F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF156F0);
  }

  return result;
}

unint64_t sub_2387365E0()
{
  result = qword_27DF0EC78;
  if (!qword_27DF0EC78)
  {
    type metadata accessor for OrderImageStyleModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0EC78);
  }

  return result;
}

void sub_238736660()
{
  sub_23873675C();
  if (v0 <= 0x3F)
  {
    sub_2384482CC(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_2384482CC(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23873675C()
{
  if (!qword_27DF15708)
  {
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF15708);
    }
  }
}

uint64_t sub_2387367C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238736828()
{
  result = qword_27DF15730;
  if (!qword_27DF15730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15728, &qword_238783AC8);
    sub_2387368E0();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15730);
  }

  return result;
}

unint64_t sub_2387368E0()
{
  result = qword_27DF15738;
  if (!qword_27DF15738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15710, &qword_238783AB0);
    sub_238736998();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15738);
  }

  return result;
}

unint64_t sub_238736998()
{
  result = qword_27DF15740;
  if (!qword_27DF15740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15720, &qword_238783AC0);
    sub_23843A3E8(&qword_27DF15748, &qword_27DF15718, &qword_238783AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15740);
  }

  return result;
}

uint64_t sub_238736A50(uint64_t a1)
{
  v43 = sub_238758680();
  v3 = *(v43 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v34 = v1;
  v48 = MEMORY[0x277D84F90];
  sub_2385FEAA8(0, v6, 0);
  v7 = v48;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = sub_23875F320();
  v11 = result;
  v12 = 0;
  v40 = a1 + 56;
  v41 = v3;
  v38 = v3 + 8;
  v39 = v3 + 16;
  v35 = a1 + 64;
  v36 = v6;
  v37 = a1;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v16 = *(a1 + 36);
    v44 = v12;
    v45 = v16;
    v17 = *(a1 + 48);
    v18 = v41;
    v19 = v7;
    v21 = v42;
    v20 = v43;
    (*(v41 + 16))(v42, v17 + *(v41 + 72) * v11, v43);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157D8, &qword_238783C48);
    v22 = (__swift_allocate_boxed_opaque_existential_1(&v46) + *(v47 + 48));
    sub_238758640();
    *v22 = sub_2387585B0();
    v22[1] = v23;
    v24 = v21;
    v7 = v19;
    (*(v18 + 8))(v24, v20);
    v48 = v19;
    v26 = *(v19 + 16);
    v25 = *(v19 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_2385FEAA8((v25 > 1), v26 + 1, 1);
      v7 = v48;
    }

    *(v7 + 16) = v26 + 1;
    result = sub_23846F7C4(&v46, (v7 + 32 * v26 + 32));
    a1 = v37;
    v13 = 1 << *(v37 + 32);
    v8 = v40;
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v27 = *(v40 + 8 * v15);
    if ((v27 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    if (v45 != *(v37 + 36))
    {
      goto LABEL_24;
    }

    v28 = v27 & (-2 << (v11 & 0x3F));
    if (v28)
    {
      v13 = __clz(__rbit64(v28)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v14 = v36;
    }

    else
    {
      v29 = v15 << 6;
      v30 = v15 + 1;
      v14 = v36;
      v31 = (v35 + 8 * v15);
      while (v30 < (v13 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = sub_238434834(v11, v45, 0);
          v13 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = sub_238434834(v11, v45, 0);
    }

LABEL_4:
    v12 = v44 + 1;
    v11 = v13;
    if (v44 + 1 == v14)
    {
      return v7;
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
  return result;
}

uint64_t sub_238736D94(uint64_t a1)
{
  v48 = sub_238758680();
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v39 = v1;
  v54 = MEMORY[0x277D84F90];
  sub_2385FEAC8(0, v6, 0);
  v7 = v54;
  v8 = a1 + 56;
  v9 = -1 << *(a1 + 32);
  result = sub_23875F320();
  v11 = result;
  v12 = 0;
  v45 = v3 + 16;
  v46 = v3;
  v44 = v3 + 8;
  v40 = a1 + 64;
  v43 = xmmword_2387632F0;
  v41 = v6;
  v42 = a1 + 56;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
  {
    v14 = v11 >> 6;
    if ((*(v8 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_21;
    }

    v15 = *(a1 + 36);
    v49 = v12;
    v50 = v15;
    v16 = *(a1 + 48);
    v53 = v7;
    v18 = v46;
    v17 = v47;
    v19 = v48;
    (*(v46 + 16))(v47, v16 + *(v46 + 72) * v11, v48);
    v20 = sub_2387585F0();
    v51 = v21;
    v52 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF30, &qword_238783C40);
    v22 = *(sub_23875BCB0() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = a1;
    v26 = swift_allocObject();
    *(v26 + 16) = v43;
    sub_238758640();
    v27 = *(v18 + 8);
    v7 = v53;
    result = v27(v17, v19);
    v54 = v7;
    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_2385FEAC8((v28 > 1), v29 + 1, 1);
      v7 = v54;
    }

    *(v7 + 16) = v29 + 1;
    v30 = (v7 + 24 * v29);
    v31 = v51;
    v30[4] = v52;
    v30[5] = v31;
    v30[6] = v26;
    v13 = 1 << *(v25 + 32);
    if (v11 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v42;
    v32 = *(v42 + 8 * v14);
    if ((v32 & (1 << v11)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v25;
    if (v50 != *(v25 + 36))
    {
      goto LABEL_24;
    }

    v33 = v32 & (-2 << (v11 & 0x3F));
    if (v33)
    {
      v13 = __clz(__rbit64(v33)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v34 = v14 << 6;
      v35 = v14 + 1;
      v36 = (v40 + 8 * v14);
      while (v35 < (v13 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_238434834(v11, v50, 0);
          v13 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_238434834(v11, v50, 0);
    }

LABEL_4:
    v12 = v49 + 1;
    v11 = v13;
    if (v49 + 1 == v41)
    {
      return v7;
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
  return result;
}

uint64_t sub_238737144(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v35 = MEMORY[0x277D84F90];
  sub_2385FEAA8(0, v1, 0);
  v2 = v35;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_23875F320();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v9;
  v30 = v3 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = *v12;
    v14 = v12[1];
    v15 = v3;
    v16 = *(*(v3 + 56) + 8 * v7);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11000, &unk_2387773A0);
    *&v32 = v13;
    *(&v32 + 1) = v14;
    v33 = v16;
    v34 = v17;
    v35 = v2;
    v18 = *(v2 + 16);
    v19 = *(v2 + 24);

    if (v18 >= v19 >> 1)
    {
      sub_2385FEAA8((v19 > 1), v18 + 1, 1);
      v2 = v35;
    }

    *(v2 + 16) = v18 + 1;
    result = sub_23846F7C4(&v32, (v2 + 32 * v18 + 32));
    v10 = 1 << *(v15 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v3 = v15;
    v4 = v30;
    v20 = *(v30 + 8 * v11);
    if ((v20 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v29;
    if (v29 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v7 & 0x3F));
    if (v21)
    {
      v10 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v11 << 6;
      v23 = v11 + 1;
      v24 = (v27 + 8 * v11);
      while (v23 < (v10 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_238434834(v7, v29, 0);
          v10 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_238434834(v7, v29, 0);
    }

LABEL_4:
    v8 = v31 + 1;
    v7 = v10;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2387373B8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23873742C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_2387374A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2E0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v6 == a1 && v7 == a2)
  {
  }

  else
  {
    v5 = sub_23875F630();

    if ((v5 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_23875C2E0();
    }
  }

  return result;
}

uint64_t sub_238737658()
{
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15808, &qword_238783E68);
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15810, &qword_238783E70);
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15818, &qword_238783E78);
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v11 = sub_23875C200();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106D8, &unk_238783E80) - 8) + 64) + 15;
  v1[22] = swift_task_alloc();
  v15 = sub_23875F090();
  v1[23] = v15;
  v16 = *(v15 - 8);
  v1[24] = v16;
  v17 = *(v16 + 64) + 15;
  v1[25] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106E0, &qword_238775DC0);
  v1[26] = v18;
  v19 = *(v18 - 8);
  v1[27] = v19;
  v20 = *(v19 + 64) + 15;
  v1[28] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15820, &qword_238783E90);
  v1[29] = v21;
  v22 = *(v21 - 8);
  v1[30] = v22;
  v23 = *(v22 + 64) + 15;
  v1[31] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15828, &qword_238783E98);
  v1[32] = v24;
  v25 = *(v24 - 8);
  v1[33] = v25;
  v26 = *(v25 + 64) + 15;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = sub_23875ED50();
  v1[37] = sub_23875ED40();
  v28 = sub_23875ECE0();
  v1[38] = v28;
  v1[39] = v27;

  return MEMORY[0x2822009F8](sub_238737A60, v28, v27);
}

uint64_t sub_238737A60()
{
  v26 = v0[35];
  v28 = v0[33];
  v29 = v0[32];
  v30 = v0[34];
  v34 = v0[31];
  v27 = v0[30];
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v17 = v0[23];
  v18 = v0[27];
  v21 = v0[19];
  v22 = v0[21];
  v24 = v0[18];
  v25 = v0[29];
  v19 = v0[20];
  v20 = v0[17];
  v23 = v0[16];
  v33 = v0[13];
  v31 = v0[15];
  v32 = v0[12];
  v6 = v0[9];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  sub_23875C2A0();
  swift_endAccess();
  sub_23875F080();
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v7 = sub_23875F0A0();
  v0[7] = v7;
  v8 = sub_23875F070();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_23843A3E8(&qword_27DF10710, &qword_27DF106E0, &qword_238775DC0);
  sub_23873E3C0();
  sub_23875C350();
  sub_238439884(v5, &qword_27DF106D8, &unk_238783E80);

  (*(v3 + 8))(v4, v17);
  (*(v18 + 8))(v1, v2);
  (*(v19 + 104))(v22, *MEMORY[0x277CBCBC8], v21);
  (*(v20 + 104))(v24, *MEMORY[0x277CBCBE8], v23);
  sub_23843A3E8(&qword_27DF15830, &qword_27DF15820, &qword_238783E90);
  sub_23875C340();
  (*(v20 + 8))(v24, v23);
  (*(v19 + 8))(v22, v21);
  (*(v27 + 8))(v34, v25);
  (*(v28 + 16))(v30, v26, v29);
  v9 = sub_23843A3E8(&qword_27DF15838, &qword_27DF15828, &qword_238783E98);
  MEMORY[0x23EE60D30](v30, v29, v9);
  sub_23875C240();
  v10 = v0[36];
  v0[40] = sub_23875ED40();
  v11 = sub_23843A3E8(&qword_27DF15840, &qword_27DF15808, &qword_238783E68);
  v12 = *(MEMORY[0x277D856D0] + 4);
  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = sub_238737EBC;
  v14 = v0[12];
  v15 = v0[10];

  return MEMORY[0x282200308](v0 + 5, v15, v11);
}

uint64_t sub_238737EBC()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_23875ECE0();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_2387384C8;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_23875ECE0();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_238738054;
  }

  return MEMORY[0x2822009F8](v9, v6, v8);
}

uint64_t sub_238738054()
{
  v1 = *(v0 + 320);

  *(v0 + 344) = *(v0 + 40);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);

  return MEMORY[0x2822009F8](sub_2387380C4, v2, v3);
}

uint64_t sub_2387380C4()
{
  v1 = v0[44];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[45] = v2;
    *v2 = v0;
    v2[1] = sub_2387382A0;
    v3 = v0[43];
    v4 = v0[9];

    return sub_238738554(v3, v1);
  }

  else
  {
    v6 = v0[37];
    v7 = v0[35];
    v8 = v0[32];
    v9 = v0[33];
    v17 = v0[34];
    v18 = v0[31];
    v19 = v0[28];
    v20 = v0[25];
    v21 = v0[22];
    v22 = v0[21];
    v23 = v0[18];
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[12];
    v13 = v0[13];
    v15 = v0[10];
    v14 = v0[11];

    (*(v14 + 8))(v12, v15);
    (*(v11 + 8))(v10, v13);
    (*(v9 + 8))(v7, v8);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2387382A0()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 352);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return MEMORY[0x2822009F8](sub_2387383E4, v5, v4);
}

uint64_t sub_2387383E4()
{
  v1 = v0[36];
  v0[40] = sub_23875ED40();
  v2 = sub_23843A3E8(&qword_27DF15840, &qword_27DF15808, &qword_238783E68);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_238737EBC;
  v5 = v0[12];
  v6 = v0[10];

  return MEMORY[0x282200308](v0 + 5, v6, v2);
}

uint64_t sub_2387384C8()
{
  *(v0 + 64) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12250, &qword_23876CF90);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_238738554(uint64_t a1, uint64_t a2)
{
  v3[99] = v2;
  v3[98] = a2;
  v3[97] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157E0, &qword_238783C58) - 8) + 64) + 15;
  v3[100] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157E8, &qword_238783C60) - 8) + 64) + 15;
  v3[101] = swift_task_alloc();
  v6 = sub_2387587A0();
  v3[102] = v6;
  v7 = *(v6 - 8);
  v3[103] = v7;
  v8 = *(v7 + 64) + 15;
  v3[104] = swift_task_alloc();
  v3[105] = swift_task_alloc();
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v3[108] = swift_task_alloc();
  v3[109] = swift_task_alloc();
  v3[110] = sub_23875ED50();
  v3[111] = sub_23875ED40();
  v10 = sub_23875ECE0();
  v3[112] = v10;
  v3[113] = v9;

  return MEMORY[0x2822009F8](sub_238738704, v10, v9);
}

uint64_t sub_238738704()
{
  v92 = v0;
  v1 = *(v0 + 792);
  v2 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchText;
  *(v0 + 912) = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchText;
  v3 = (v1 + v2);
  v4 = *(v1 + v2 + 8);
  v5 = *(v0 + 784);
  if (!v4)
  {
    goto LABEL_33;
  }

  if (*v3 != *(v0 + 776) || v4 != v5)
  {
    v7 = *(v0 + 784);
    if ((sub_23875F630() & 1) == 0)
    {
      goto LABEL_33;
    }

    v1 = *(v0 + 792);
  }

  v8 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2D0();

  v9 = *(v0 + 752);
  v10 = *(v9 + 16);
  if (!v10)
  {

    v11 = MEMORY[0x277D84F90];
    if (v8)
    {
      goto LABEL_29;
    }

LABEL_32:

    goto LABEL_33;
  }

  v72 = v8;
  v73 = v5;
  v74 = v3;
  v77 = MEMORY[0x277D84F90];
  sub_2385FEA88(0, v10, 0);
  v11 = v77;
  v12 = v9 + 32;
  v13 = v10 - 1;
  v14 = 0x1FAEFD000uLL;
  while (1)
  {
    sub_2385BA73C(v12, v0 + 208);
    sub_2385BA73C(v0 + 208, v0 + 64);
    v15 = *(v0 + 104);
    if (v15 <= 1)
    {
      v18 = (v0 + 64);
      if (*(v0 + 104))
      {
        sub_2384347C0(v18, v0 + 624);
        v41 = *(v0 + 648);
        v42 = *(v0 + 656);
        __swift_project_boxed_opaque_existential_1((v0 + 624), v41);
        (*(v42 + 8))(&v78, v41, v42);
        __swift_destroy_boxed_opaque_existential_1((v0 + 624));
      }

      else
      {
        sub_2384347C0(v18, v0 + 304);
        v19 = *(v0 + 328);
        v20 = *(v0 + 336);
        __swift_project_boxed_opaque_existential_1((v0 + 304), v19);
        (*(v20 + 8))(&v78, v19, v20);
        __swift_destroy_boxed_opaque_existential_1((v0 + 304));
      }
    }

    else if (v15 == 2)
    {
      sub_2384347C0((v0 + 64), v0 + 584);
      v21 = *(v0 + 608);
      v22 = *(v0 + 616);
      __swift_project_boxed_opaque_existential_1((v0 + 584), v21);
      (*(v22 + 8))(&v78, v21, v22);
      __swift_destroy_boxed_opaque_existential_1((v0 + 584));
    }

    else if (v15 == 3)
    {
      sub_2384347C0((v0 + 64), v0 + 544);
      v16 = *(v0 + 568);
      v17 = *(v0 + 576);
      __swift_project_boxed_opaque_existential_1((v0 + 544), v16);
      (*(v17 + 8))(&v78, v16, v17);
      __swift_destroy_boxed_opaque_existential_1((v0 + 544));
    }

    else
    {
      v76 = *(v0 + 64);
      v23 = *(v0 + 80);

      v24 = v14;
      v25 = [v23 title];
      v26 = sub_23875EA80();
      v28 = v27;

      v84 = v26;
      v85 = v28;
      v29 = v24;
      v75 = v23;
      v30 = [v23 (v24 + 3192)];
      v31 = sub_23875EA80();
      v33 = v32;

      v34 = HIBYTE(v33) & 0xF;
      if ((v33 & 0x2000000000000000) == 0)
      {
        v34 = v31 & 0xFFFFFFFFFFFFLL;
      }

      v14 = v29;
      if (v34)
      {
        v35 = (v29 + 3192);
        v36 = v75;
        v37 = [v75 v35];
        v38 = sub_23875EA80();
        v40 = v39;

        *&v86 = 8236;
        *(&v86 + 1) = 0xE200000000000000;
        MEMORY[0x23EE63650](v38, v40);

        MEMORY[0x23EE63650](v86, *(&v86 + 1));

        v26 = v84;
        v28 = v85;
      }

      else
      {
        v36 = v75;
      }

      v43 = sub_23875E030();
      v44 = swift_allocObject();
      *(v44 + 16) = v76;
      *(v44 + 32) = v36;
      *&v79 = v26;
      *(&v79 + 1) = v28;
      *&v80 = v43;
      *(&v80 + 1) = 0xD000000000000012;
      *(&v81 + 1) = 0x6E6F697461636F4CLL;
      *&v82 = 0xE800000000000000;
      *&v81 = 0x800000023878C470;
      v78 = v76;
      *(&v82 + 1) = &unk_238783DA8;
      v83 = v44;
    }

    v88 = v80;
    v89 = v81;
    v90 = v82;
    v91 = v83;
    v86 = v78;
    v87 = v79;
    sub_23871FAB0(v0 + 208);
    v46 = *(v77 + 16);
    v45 = *(v77 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_2385FEA88((v45 > 1), v46 + 1, 1);
    }

    *(v77 + 16) = v46 + 1;
    v47 = v77 + 88 * v46;
    v48 = v87;
    *(v47 + 32) = v86;
    *(v47 + 48) = v48;
    v49 = v88;
    v50 = v89;
    v51 = v90;
    *(v47 + 112) = v91;
    *(v47 + 80) = v50;
    *(v47 + 96) = v51;
    *(v47 + 64) = v49;
    if (!v13)
    {
      break;
    }

    --v13;
    v12 += 48;
  }

  v5 = v73;
  v3 = v74;
  v8 = v72;
  if (!v72)
  {
    goto LABEL_32;
  }

LABEL_29:
  v52 = sub_238519F34(v8, v11);

  if (v52)
  {
    v53 = *(v0 + 888);

LABEL_41:
    v62 = *(v0 + 872);
    v63 = *(v0 + 864);
    v64 = *(v0 + 856);
    v65 = *(v0 + 848);
    v66 = *(v0 + 840);
    v67 = *(v0 + 832);
    v68 = *(v0 + 808);
    v69 = *(v0 + 800);

    v70 = *(v0 + 8);

    return v70();
  }

LABEL_33:
  *(v0 + 920) = v5;
  v54 = *(v0 + 776) & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v54 = HIBYTE(v5) & 0xF;
  }

  v55 = *(v0 + 792);
  if (!v54)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v56 = *(*(v0 + 736) + 16);

    v55 = *(v0 + 792);
    if (!v56)
    {
      v58 = *(v0 + 888);

      swift_getKeyPath();
      swift_getKeyPath();
      v59 = MEMORY[0x277D84F90];
      *(v0 + 744) = MEMORY[0x277D84F90];

      sub_23875C2E0();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 58) = 0;

      sub_23875C2E0();
      v60 = v3[1];
      *v3 = xmmword_238783B30;

      v61 = *(v55 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags);
      *(v55 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags) = v59;

      goto LABEL_41;
    }
  }

  v57 = *(v55 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_tokenManager);
  *(v0 + 928) = v57;

  return MEMORY[0x2822009F8](sub_238738E64, v57, 0);
}

uint64_t sub_238738E64()
{
  v1 = v0[116];
  v2 = *(v1 + 112);
  v0[117] = v2;
  v3 = v2[2];
  v0[118] = v3;
  if (v3)
  {
    v0[121] = MEMORY[0x277D84F90];
    v0[120] = 0;
    v5 = v2[4];
    v4 = v2[5];
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_4;
    }

    type metadata accessor for TransactionTypeTokenProvider();
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_4;
    }

    if (swift_dynamicCastMetatype())
    {
      v15 = 120;
    }

    else
    {
      type metadata accessor for AccountNameTokenProvider();
      if (!swift_dynamicCastMetatype())
      {
LABEL_4:
        v6 = 0;
LABEL_5:
        v0[122] = v6;
        v7 = *(v4 + 16);
        v16 = (v7 + *v7);
        v8 = v7[1];
        v9 = swift_task_alloc();
        v0[123] = v9;
        *v9 = v0;
        v9[1] = sub_23873A33C;
        v10 = v0[98];
        v11 = v0[97];

        return v16(v11, v10, v6, v5, v4);
      }

      v15 = 128;
    }

    v6 = *(v1 + v15);

    goto LABEL_5;
  }

  v0[119] = MEMORY[0x277D84F90];
  v13 = v0[113];
  v14 = v0[112];

  return MEMORY[0x2822009F8](sub_238739074, v14, v13);
}

uint64_t sub_238739074()
{
  v197 = v0;
  v1 = *(v0 + 952);
  v2 = *(v0 + 920);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = (*(v0 + 792) + *(v0 + 912));
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 768) = v1;

  sub_23875C2E0();
  v6 = v5[1];
  *v5 = v4;
  v5[1] = v2;

  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2D0();

  v7 = *(v0 + 760);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v48 = *(v0 + 760);

    v9 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v182 = MEMORY[0x277D84F90];
  sub_2385FEA88(0, v8, 0);
  v9 = v182;
  v10 = v7 + 32;
  v11 = v8 - 1;
  v12 = &selRef_returnDeadline;
  while (1)
  {
    sub_2385BA73C(v10, v0 + 112);
    sub_2385BA73C(v0 + 112, v0 + 160);
    v13 = *(v0 + 200);
    if (v13 <= 1)
    {
      v17 = (v0 + 160);
      if (*(v0 + 200))
      {
        sub_2384347C0(v17, v0 + 464);
        v39 = *(v0 + 488);
        v40 = *(v0 + 496);
        __swift_project_boxed_opaque_existential_1((v0 + 464), v39);
        (*(v40 + 8))(&v183, v39, v40);
        v16 = (v0 + 464);
      }

      else
      {
        sub_2384347C0(v17, v0 + 504);
        v18 = *(v0 + 528);
        v19 = *(v0 + 536);
        __swift_project_boxed_opaque_existential_1((v0 + 504), v18);
        (*(v19 + 8))(&v183, v18, v19);
        v16 = (v0 + 504);
      }

      goto LABEL_16;
    }

    if (v13 == 2)
    {
      sub_2384347C0((v0 + 160), v0 + 424);
      v20 = *(v0 + 448);
      v21 = *(v0 + 456);
      __swift_project_boxed_opaque_existential_1((v0 + 424), v20);
      (*(v21 + 8))(&v183, v20, v21);
      v16 = (v0 + 424);
      goto LABEL_16;
    }

    if (v13 == 3)
    {
      sub_2384347C0((v0 + 160), v0 + 384);
      v14 = *(v0 + 408);
      v15 = *(v0 + 416);
      __swift_project_boxed_opaque_existential_1((v0 + 384), v14);
      (*(v15 + 8))(&v183, v14, v15);
      v16 = (v0 + 384);
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v16);
      goto LABEL_17;
    }

    v169 = *(v0 + 160);
    v22 = *(v0 + 176);
    v176 = v10;

    v23 = [v22 title];
    v24 = sub_23875EA80();
    v26 = v25;

    v189 = v24;
    v190 = v26;
    v27 = [v22 v12[146]];
    v28 = v12;
    v29 = sub_23875EA80();
    v31 = v30;

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = [v22 v28 + 3192];
      v34 = sub_23875EA80();
      v36 = v35;

      *&v191 = 8236;
      *(&v191 + 1) = 0xE200000000000000;
      MEMORY[0x23EE63650](v34, v36);

      MEMORY[0x23EE63650](v191, *(&v191 + 1));

      v24 = v189;
      v26 = v190;
    }

    v12 = v28;
    v37 = sub_23875E030();
    v38 = swift_allocObject();
    *(v38 + 16) = v169;
    *(v38 + 32) = v22;
    *&v184 = v24;
    *(&v184 + 1) = v26;
    *&v185 = v37;
    *(&v185 + 1) = 0xD000000000000012;
    *(&v186 + 1) = 0x6E6F697461636F4CLL;
    *&v187 = 0xE800000000000000;
    *&v186 = 0x800000023878C470;
    v183 = v169;
    *(&v187 + 1) = &unk_238782BD0;
    v188 = v38;
    v10 = v176;
LABEL_17:
    v193 = v185;
    v194 = v186;
    v195 = v187;
    v196 = v188;
    v191 = v183;
    v192 = v184;
    sub_23871FAB0(v0 + 112);
    v42 = *(v182 + 16);
    v41 = *(v182 + 24);
    if (v42 >= v41 >> 1)
    {
      sub_2385FEA88((v41 > 1), v42 + 1, 1);
    }

    *(v182 + 16) = v42 + 1;
    v43 = v182 + 88 * v42;
    v44 = v192;
    *(v43 + 32) = v191;
    *(v43 + 48) = v44;
    v45 = v193;
    v46 = v194;
    v47 = v195;
    *(v43 + 112) = v196;
    *(v43 + 80) = v46;
    *(v43 + 96) = v47;
    *(v43 + 64) = v45;
    if (!v11)
    {
      break;
    }

    --v11;
    v10 += 48;
  }

LABEL_23:
  v49 = *(v0 + 792);
  v50 = *(v49 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags);
  *(v49 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags) = v9;

  if (qword_27DF08D48 != -1)
  {
    goto LABEL_91;
  }

  while (2)
  {
    v51 = qword_27DF2F8D8;
    v52 = MEMORY[0x277D84F90];
    v172 = *(qword_27DF2F8D8 + 16);
    if (v172)
    {
      v53 = 0;
      v54 = *(v0 + 824);
      v166 = v54;
      v158 = (v54 + 8);
      v161 = (v54 + 32);
      v170 = qword_27DF2F8D8;
      while (v53 < *(v51 + 16))
      {
        v55 = v52;
        v56 = *(v0 + 880);
        v177 = (*(v166 + 80) + 32) & ~*(v166 + 80);
        v57 = *(v166 + 72);
        (*(v166 + 16))(*(v0 + 872), v51 + v177 + v57 * v53, *(v0 + 816));
        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v58 = *(v0 + 872);
        v59 = *(v0 + 784);
        v60 = *(v0 + 776);
        sub_238758770();
        v61 = sub_23875EAE0();
        v63 = v62;

        *(v0 + 696) = v61;
        *(v0 + 704) = v63;
        *(v0 + 680) = v60;
        *(v0 + 688) = v59;
        sub_2384397A8();
        *(v0 + 664) = sub_23875F240();
        *(v0 + 672) = v64;
        LOBYTE(v58) = sub_23875F2A0();

        v65 = *(v0 + 872);
        if (v58)
        {
          v66 = *v161;
          (*v161)(*(v0 + 864), *(v0 + 872), *(v0 + 816));
          v52 = v55;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v191 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2385FE9E0(0, *(v55 + 16) + 1, 1);
            v52 = v191;
          }

          v69 = *(v52 + 16);
          v68 = *(v52 + 24);
          if (v69 >= v68 >> 1)
          {
            sub_2385FE9E0(v68 > 1, v69 + 1, 1);
            v52 = v191;
          }

          v70 = *(v0 + 864);
          v71 = *(v0 + 816);
          *(v52 + 16) = v69 + 1;
          v66(v52 + v177 + v69 * v57, v70, v71);
        }

        else
        {
          (*v158)(*(v0 + 872), *(v0 + 816));
          v52 = v55;
        }

        v51 = v170;
        if (v172 == ++v53)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      swift_once();
      continue;
    }

    break;
  }

LABEL_37:
  v72 = *(v0 + 792);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v73 = *(v0 + 712);
  v74 = *(v73 + 16);
  v171 = v52;
  if (v74)
  {
    v75 = v73 + 32;
    v76 = *(v0 + 824);
    v77 = (v76 + 56);
    v162 = (v76 + 16);
    v78 = (v76 + 48);
    v167 = v76;
    v173 = (v76 + 32);
    v79 = MEMORY[0x277D84F90];
    v165 = (v76 + 48);
    do
    {
      v178 = v79;
      v80 = *(v0 + 880);
      sub_2385BA73C(v75, v0 + 16);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *(v0 + 281) = *(v0 + 41);
      v81 = *(v0 + 32);
      *(v0 + 256) = *(v0 + 16);
      *(v0 + 272) = v81;
      if (*(v0 + 296) == 1)
      {
        v82 = v77;
        v83 = *(v0 + 800);
        sub_2384347C0((v0 + 256), v0 + 344);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15800, &qword_238783DA0);
        v84 = type metadata accessor for TransactionTypeTokenProvider();
        v85 = swift_dynamicCast();
        v86 = *(*(v84 - 8) + 56);
        v87 = *(v0 + 816);
        v88 = *(v0 + 808);
        v89 = *(v0 + 800);
        if (v85)
        {
          v86(*(v0 + 800), 0, 1, v84);
          (*v162)(v88, v89 + *(v84 + 20), v87);
          sub_23873E270(v89);
          v77 = v82;
          (*v82)(v88, 0, 1, v87);
        }

        else
        {
          v86(*(v0 + 800), 1, 1, v84);
          sub_238439884(v89, &qword_27DF157E0, &qword_238783C58);
          v77 = v82;
          (*v82)(v88, 1, 1, v87);
        }

        v78 = v165;
      }

      else
      {
        (*v77)(*(v0 + 808), 1, 1, *(v0 + 816));
        sub_23871FAB0(v0 + 256);
      }

      v90 = *(v0 + 816);
      v91 = *(v0 + 808);
      if ((*v78)(v91, 1, v90) == 1)
      {
        sub_238439884(v91, &qword_27DF157E8, &qword_238783C60);
        v79 = v178;
      }

      else
      {
        v92 = *v173;
        (*v173)(*(v0 + 856), v91, v90);
        v79 = v178;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_23849848C(0, v178[2] + 1, 1, v178);
        }

        v94 = v79[2];
        v93 = v79[3];
        if (v94 >= v93 >> 1)
        {
          v79 = sub_23849848C(v93 > 1, v94 + 1, 1, v79);
        }

        v95 = *(v0 + 856);
        v96 = *(v0 + 816);
        v79[2] = v94 + 1;
        v92(v79 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v94, v95, v96);
      }

      v75 += 48;
      --v74;
    }

    while (v74);

    if (!v79[2])
    {
LABEL_70:

      goto LABEL_73;
    }
  }

  else
  {

    v79 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_70;
    }
  }

  v97 = *(v52 + 16);
  v179 = v79;

  v174 = v97;
  if (v97)
  {
    v98 = 0;
    v99 = *(v0 + 824);
    v163 = (v99 + 32);
    v168 = v99;
    v159 = (v99 + 8);
    v100 = MEMORY[0x277D84F90];
    while (v98 < *(v52 + 16))
    {
      v101 = (*(v168 + 80) + 32) & ~*(v168 + 80);
      v102 = *(v168 + 72);
      v103 = (v98 + 1);
      (*(v168 + 16))(*(v0 + 848), v52 + v101 + v102 * v98, *(v0 + 816));
      v104 = v179 + v101;
      v105 = v179[2] + 1;
      do
      {
        v106 = *(v0 + 848);
        v107 = *(v0 + 816);
        if (!--v105)
        {
          (*v159)(*(v0 + 848), *(v0 + 816));
          goto LABEL_59;
        }

        sub_23867CA98();
        v104 += v102;
      }

      while ((sub_23875E9E0() & 1) == 0);
      v108 = *v163;
      (*v163)(*(v0 + 840), *(v0 + 848), *(v0 + 816));
      v109 = swift_isUniquelyReferenced_nonNull_native();
      *&v191 = v100;
      if ((v109 & 1) == 0)
      {
        sub_2385FE9E0(0, *(v100 + 16) + 1, 1);
        v100 = v191;
      }

      v111 = *(v100 + 16);
      v110 = *(v100 + 24);
      if (v111 >= v110 >> 1)
      {
        sub_2385FE9E0(v110 > 1, v111 + 1, 1);
        v100 = v191;
      }

      v112 = *(v0 + 840);
      v113 = *(v0 + 816);
      *(v100 + 16) = v111 + 1;
      v108(v100 + v101 + v111 * v102, v112, v113);
LABEL_59:
      v98 = v103;
      v52 = v171;
      if (v103 == v174)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_90;
  }

  v100 = MEMORY[0x277D84F90];
LABEL_72:
  swift_bridgeObjectRelease_n();

  v52 = v100;
LABEL_73:
  v114 = MEMORY[0x277D837D0];
  *(v0 + 1000) = sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_2387632F0;
  *(v115 + 56) = v114;
  v116 = sub_238448C58();
  *(v115 + 64) = v116;
  *(v115 + 32) = 0;
  *(v115 + 40) = 0xE000000000000000;
  v117 = sub_23875EF80();
  *(v0 + 1008) = v117;
  *(v0 + 1016) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_2387632E0;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_2387632F0;
  *(v119 + 56) = v114;
  *(v119 + 64) = v116;
  v164 = v116;
  *(v119 + 32) = 0;
  *(v119 + 40) = 0xE000000000000000;
  *(v118 + 32) = sub_23875EF80();
  *(v118 + 40) = v117;
  v120 = swift_allocObject();
  v121 = v120;
  *(v120 + 16) = xmmword_2387632F0;
  v122 = v52;
  v123 = *(v52 + 16);
  v160 = v117;
  if (v123)
  {
    v157 = v120;
    v124 = *(v0 + 824);
    *&v191 = MEMORY[0x277D84F90];
    v125 = v117;
    sub_2385FEA68(0, v123, 0);
    v126 = v191;
    v127 = *(v124 + 16);
    v124 += 16;
    v128 = v122 + ((*(v124 + 64) + 32) & ~*(v124 + 64));
    v175 = *(v124 + 56);
    v180 = v127;
    v129 = (v124 - 8);
    do
    {
      v130 = *(v0 + 832);
      v131 = *(v0 + 816);
      v180(v130, v128, v131);
      v132 = sub_238758790();
      (*v129)(v130, v131);
      *&v191 = v126;
      v134 = *(v126 + 16);
      v133 = *(v126 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_2385FEA68((v133 > 1), v134 + 1, 1);
        v126 = v191;
      }

      *(v126 + 16) = v134 + 1;
      *(v126 + 2 * v134 + 32) = v132;
      v128 += v175;
      --v123;
    }

    while (v123);

    v121 = v157;
  }

  else
  {
    v135 = v117;

    v126 = MEMORY[0x277D84F90];
  }

  v136 = *(v0 + 920);
  if ((v136 & 0x2000000000000000) != 0)
  {
    v137 = HIBYTE(v136) & 0xF;
  }

  else
  {
    v137 = *(v0 + 776) & 0xFFFFFFFFFFFFLL;
  }

  v121[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157F0, &qword_238783D00);
  v121[8] = sub_23843A3E8(&qword_27DF157F8, &qword_27DF157F0, &qword_238783D00);
  v121[4] = v126;
  *(v118 + 48) = sub_23875EF80();
  v138 = sub_23875EC60();

  v139 = objc_opt_self();
  *(v0 + 1024) = v139;
  v140 = [v139 andPredicateWithSubpredicates_];
  *(v0 + 1032) = v140;

  if (v137)
  {
    v181 = v140;
    v141 = *(v0 + 784);
    v142 = *(v0 + 776);
    v143 = swift_allocObject();
    *(v143 + 16) = xmmword_2387632E0;
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_2387632F0;
    *(v144 + 56) = MEMORY[0x277D837D0];
    *(v144 + 64) = v164;
    *(v144 + 32) = v142;
    *(v144 + 40) = v141;

    *(v143 + 32) = sub_23875EF80();
    v145 = swift_allocObject();
    *(v145 + 16) = xmmword_238763E60;
    *(v145 + 32) = v160;
    v146 = swift_allocObject();
    *(v146 + 16) = xmmword_2387632F0;
    *(v146 + 56) = MEMORY[0x277D837D0];
    *(v146 + 64) = v164;
    *(v146 + 32) = v142;
    *(v146 + 40) = v141;

    v147 = v160;
    *(v145 + 40) = sub_23875EF80();
    v148 = sub_23875EC60();

    v149 = [v139 andPredicateWithSubpredicates_];

    *(v143 + 40) = v149;
    *(v143 + 48) = v181;
    v150 = v181;
    v151 = sub_23875EC60();

    v152 = [v139 orPredicateWithSubpredicates_];
  }

  else
  {
    v152 = [objc_opt_self() predicateWithValue_];
  }

  *(v0 + 1040) = v152;
  *(v0 + 720) = MEMORY[0x277D84F90];
  v153 = v152;
  v154 = swift_task_alloc();
  *(v0 + 1048) = v154;
  *v154 = v0;
  v154[1] = sub_23873A750;
  v155 = *(v0 + 792);

  return sub_23873B3CC(v0 + 720);
}

uint64_t sub_23873A33C(uint64_t a1)
{
  v2 = *(*v1 + 984);
  v3 = *(*v1 + 976);
  v4 = *(*v1 + 928);
  v6 = *v1;
  *(*v1 + 992) = a1;

  return MEMORY[0x2822009F8](sub_23873A470, v4, 0);
}

uint64_t sub_23873A470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[124];
  isUniquelyReferenced_nonNull_native = v3[121];
  v6 = *(v4 + 16);
  v7 = *(isUniquelyReferenced_nonNull_native + 16);
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_30;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[121];
  if (isUniquelyReferenced_nonNull_native && v8 <= *(v9 + 24) >> 1)
  {
    if (*(v4 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (v7 <= v8)
    {
      v14 = v7 + v6;
    }

    else
    {
      v14 = v7;
    }

    isUniquelyReferenced_nonNull_native = sub_238498264(isUniquelyReferenced_nonNull_native, v14, 1, v3[121]);
    v9 = isUniquelyReferenced_nonNull_native;
    if (*(v4 + 16))
    {
LABEL_5:
      if ((*(v9 + 24) >> 1) - *(v9 + 16) >= v6)
      {
        v10 = v3[124];
        swift_arrayInitWithCopy();

        if (!v6)
        {
          goto LABEL_14;
        }

        v11 = *(v9 + 16);
        v12 = __OFADD__(v11, v6);
        v13 = v11 + v6;
        if (!v12)
        {
          *(v9 + 16) = v13;
          goto LABEL_14;
        }

LABEL_32:
        __break(1u);
        return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  v15 = v3[124];

  if (v6)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_14:
  v16 = v3[120] + 1;
  if (v16 == v3[118])
  {
    v17 = v3[116];

    v3[119] = v9;
    a3 = v3[113];
    a2 = v3[112];
    isUniquelyReferenced_nonNull_native = sub_238739074;

    return MEMORY[0x2822009F8](isUniquelyReferenced_nonNull_native, a2, a3);
  }

  v3[121] = v9;
  v3[120] = v16;
  v18 = v3[117] + 16 * v16;
  v20 = *(v18 + 32);
  v19 = *(v18 + 40);
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_20;
  }

  type metadata accessor for TransactionTypeTokenProvider();
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_20;
  }

  if (swift_dynamicCastMetatype())
  {
    v28 = 120;
LABEL_28:
    v21 = *(v3[116] + v28);

    goto LABEL_21;
  }

  type metadata accessor for AccountNameTokenProvider();
  if (swift_dynamicCastMetatype())
  {
    v28 = 128;
    goto LABEL_28;
  }

LABEL_20:
  v21 = 0;
LABEL_21:
  v3[122] = v21;
  v22 = *(v19 + 16);
  v29 = (v22 + *v22);
  v23 = v22[1];
  v24 = swift_task_alloc();
  v3[123] = v24;
  *v24 = v3;
  v24[1] = sub_23873A33C;
  v25 = v3[98];
  v26 = v3[97];

  return v29(v26, v25, v21, v20, v19);
}

uint64_t sub_23873A750()
{
  v1 = *v0;
  v2 = *(*v0 + 1048);
  v6 = *v0;

  v3 = *(v1 + 904);
  v4 = *(v1 + 896);

  return MEMORY[0x2822009F8](sub_23873A870, v4, v3);
}

uint64_t sub_23873A870()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v26 = *(v0 + 1008);
  v5 = *(v0 + 1000);
  v6 = *(v0 + 888);
  v7 = *(v0 + 792);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2387632E0;
  v9 = *(v7 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_basePredicate);
  *(v8 + 32) = v9;
  *(v8 + 40) = v1;
  v10 = *(v0 + 720);
  v11 = v9;
  v12 = sub_23875EC60();

  v13 = [v3 andPredicateWithSubpredicates_];

  *(v8 + 48) = v13;
  v14 = sub_23875EC60();

  v15 = [v3 andPredicateWithSubpredicates_];

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 728) = v15;

  sub_23875C2E0();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 57) = 1;

  sub_23875C2E0();

  v16 = *(v0 + 872);
  v17 = *(v0 + 864);
  v18 = *(v0 + 856);
  v19 = *(v0 + 848);
  v20 = *(v0 + 840);
  v21 = *(v0 + 832);
  v22 = *(v0 + 808);
  v23 = *(v0 + 800);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23873AAB4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23849156C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_23873CB88(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23873AB20()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23873ABA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23873AC14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23873AC88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_23873AD08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_23873AD84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_23873AE04(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return sub_23875C2E0();
}

uint64_t sub_23873AECC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15858, &unk_238783EB8);
  v43 = *(v2 - 8);
  v44 = v2;
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15850, &unk_238783EA8);
  v8 = *(v38 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v38);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15848, &qword_238783EA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchText;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_23875C290();
  (*(v18 + 32))(v1 + v22, v21, v17);
  v23 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchTags;
  v24 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
  sub_23875C290();
  v25 = *(v13 + 32);
  v25(v1 + v23, v16, v12);
  v26 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSuggestions;
  v45 = v24;
  sub_23875C290();
  v25(v1 + v26, v16, v12);
  v27 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchPredicate;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF157C0, &qword_238783B60);
  sub_23875C290();
  (*(v8 + 32))(v1 + v27, v11, v38);
  v28 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSubmitted;
  LOBYTE(v45) = 0;
  v29 = v39;
  sub_23875C290();
  (*(v40 + 32))(v1 + v28, v29, v41);
  v30 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__state;
  LOBYTE(v45) = 0;
  v31 = v42;
  sub_23875C290();
  (*(v43 + 32))(v1 + v30, v31, v44);
  v32 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_tokenManager;
  type metadata accessor for TokenManager();
  swift_allocObject();
  *(v1 + v32) = sub_2385B9818();
  if (v24 >> 62 && sub_23875F3A0())
  {
    v33 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  *(v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_cancellableSet) = v33;
  v34 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_basePredicate;
  sub_23875A230();
  *(v1 + v34) = MEMORY[0x23EE5ECD0]();
  *(v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags) = 0;
  v35 = (v1 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchText);
  *v35 = 0;
  v35[1] = 0;
  return v1;
}

uint64_t sub_23873B3CC(uint64_t a1)
{
  v2[63] = a1;
  v2[64] = v1;
  sub_23875ED50();
  v2[65] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v2[66] = v4;
  v2[67] = v3;

  return MEMORY[0x2822009F8](sub_23873B468, v4, v3);
}

void sub_23873B468()
{
  v80 = v0;
  v1 = *(v0 + 512);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v2 = sub_23873DC44(*(v0 + 480));

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_238569F1C(v3, 0);
    v5 = sub_23856BAAC(&v79, v4 + 4, v3, v2);

    sub_238434840();
    if (v5 != v3)
    {
LABEL_44:
      __break(1u);
      return;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v79 = v4;
  sub_23873AAB4(&v79);
  v6 = v79;
  *(v0 + 544) = v79;
  v7 = v6[2];
  *(v0 + 552) = v7;
  if (!v7)
  {
LABEL_27:
    v43 = *(v0 + 520);

    v44 = *(v0 + 8);

    v44();
    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &qword_27DF130B0;
  v11 = 0x277CCAC30;
  v12 = 0x277CCA000uLL;
  v13 = &selRef_returnDeadline;
  while (1)
  {
    *(v0 + 560) = v8;
    v19 = *(v0 + 544);
    if (v8 >= *(v19 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v20 = *(v19 + 24 * v8 + 48);
    *(v0 + 568) = v20;
    v21 = *(v20 + 16);
    *(v0 + 576) = v21;
    if (v21)
    {
      break;
    }

    v22 = *(v9 + 16);
    if (!v22)
    {

LABEL_8:
      v14 = *(v0 + 504);
      sub_238449184(0, v10, v11);
      v15 = sub_23875EC60();

      v16 = *(v12 + 2336);
      v17 = [objc_opt_self() v13[18]];

      MEMORY[0x23EE63730]();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v35 = *(v0 + 504);
        sub_23875EC90();
        v13 = &selRef_returnDeadline;
      }

      v18 = *(v0 + 504);
      sub_23875ECB0();
      goto LABEL_11;
    }

    if (v22 != 1)
    {
      v27 = v11;
      v28 = v12;
      v29 = v10;
      *(v0 + 496) = v9;
      sub_23875F4E0();
      v30 = (v9 + 32);
      do
      {
        v31 = *v30++;
        v32 = v31;
        sub_23875F4C0();
        v33 = *(*(v0 + 496) + 16);
        sub_23875F4F0();
        sub_23875F500();
        sub_23875F4D0();
        --v22;
      }

      while (v22);

      v34 = *(v0 + 496);
      v10 = v29;
      v12 = v28;
      v11 = v27;
      v13 = &selRef_returnDeadline;
      goto LABEL_8;
    }

    v23 = *(v0 + 504);
    v24 = *(v9 + 32);

    v25 = v24;
    MEMORY[0x23EE63730]();
    if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v36 = *(v0 + 504);
      sub_23875EC90();
      v13 = &selRef_returnDeadline;
    }

    v26 = *(v0 + 504);
    sub_23875ECB0();

LABEL_11:
    v8 = *(v0 + 560) + 1;
    if (v8 == *(v0 + 552))
    {
      v42 = *(v0 + 544);
      goto LABEL_27;
    }
  }

  *(v0 + 592) = v9;
  *(v0 + 584) = 0;

  sub_2385BA73C(v37 + 32, v0 + 192);
  sub_2385BA73C(v0 + 192, v0 + 240);
  v38 = *(v0 + 280);
  if (v38 <= 1)
  {
    v45 = (v0 + 240);
    if (*(v0 + 280))
    {
      sub_2384347C0(v45, v0 + 368);
      v70 = *(v0 + 392);
      v71 = *(v0 + 400);
      __swift_project_boxed_opaque_existential_1((v0 + 368), v70);
      (*(v71 + 8))(v70, v71);
      v41 = (v0 + 368);
    }

    else
    {
      sub_2384347C0(v45, v0 + 408);
      v46 = *(v0 + 432);
      v47 = *(v0 + 440);
      __swift_project_boxed_opaque_existential_1((v0 + 408), v46);
      (*(v47 + 8))(v46, v47);
      v41 = (v0 + 408);
    }

    goto LABEL_39;
  }

  if (v38 == 2)
  {
    sub_2384347C0((v0 + 240), v0 + 328);
    v48 = *(v0 + 352);
    v49 = *(v0 + 360);
    __swift_project_boxed_opaque_existential_1((v0 + 328), v48);
    (*(v49 + 8))(v48, v49);
    v41 = (v0 + 328);
LABEL_39:
    __swift_destroy_boxed_opaque_existential_1(v41);
    goto LABEL_40;
  }

  if (v38 == 3)
  {
    sub_2384347C0((v0 + 240), v0 + 288);
    v39 = *(v0 + 312);
    v40 = *(v0 + 320);
    __swift_project_boxed_opaque_existential_1((v0 + 288), v39);
    (*(v40 + 8))(v39, v40);
    v41 = (v0 + 288);
    goto LABEL_39;
  }

  v51 = *(v0 + 240);
  v50 = *(v0 + 248);
  v52 = *(v0 + 256);

  v53 = [v52 title];
  v54 = sub_23875EA80();
  v56 = v55;

  *(v0 + 448) = v54;
  *(v0 + 456) = v56;
  v57 = [v52 subtitle];
  v58 = sub_23875EA80();
  v60 = v59;

  v61 = HIBYTE(v60) & 0xF;
  if ((v60 & 0x2000000000000000) == 0)
  {
    v61 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v61)
  {
    v62 = [v52 subtitle];
    v63 = sub_23875EA80();
    v65 = v64;

    *(v0 + 464) = 8236;
    *(v0 + 472) = 0xE200000000000000;
    MEMORY[0x23EE63650](v63, v65);

    MEMORY[0x23EE63650](*(v0 + 464), *(v0 + 472));
  }

  v66 = *(v0 + 448);
  v67 = *(v0 + 456);
  v68 = sub_23875E030();
  v69 = swift_allocObject();
  v69[2] = v51;
  v69[3] = v50;
  v69[4] = v52;
  *(v0 + 32) = v66;
  *(v0 + 40) = v67;
  *(v0 + 48) = v68;
  *(v0 + 56) = 0xD000000000000012;
  *(v0 + 72) = 0x6E6F697461636F4CLL;
  *(v0 + 80) = 0xE800000000000000;
  *(v0 + 64) = 0x800000023878C470;
  *(v0 + 16) = v51;
  *(v0 + 24) = v50;
  *(v0 + 88) = &unk_238783DB0;
  *(v0 + 96) = v69;
LABEL_40:
  v72 = *(v0 + 64);
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v72;
  v73 = *(v0 + 96);
  *(v0 + 184) = v73;
  v74 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v74;
  v75 = *(v0 + 176);
  *(v0 + 600) = v73;

  sub_2384B5DE4(v0 + 104);
  v78 = (v75 + *v75);
  v76 = v75[1];
  v77 = swift_task_alloc();
  *(v0 + 608) = v77;
  *v77 = v0;
  v77[1] = sub_23873BC5C;

  v78(v0 + 488);
}

uint64_t sub_23873BC5C()
{
  v1 = *v0;
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 600);
  v7 = *v0;

  v4 = *(v1 + 536);
  v5 = *(v1 + 528);

  return MEMORY[0x2822009F8](sub_23873BDA0, v5, v4);
}

uint64_t sub_23873BDA0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 488);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 592);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_44:
    v4 = sub_238498380(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_238498380((v5 > 1), v6 + 1, 1, v4);
  }

  v7 = *(v0 + 576);
  v8 = *(v0 + 584) + 1;
  sub_23871FAB0(v0 + 192);
  *(v4 + 2) = v6 + 1;
  *&v4[8 * v6 + 32] = v2;
  if (v8 != v7)
  {
    v34 = *(v0 + 584) + 1;
    v33 = *(v0 + 568);
LABEL_26:
    *(v0 + 592) = v4;
    *(v0 + 584) = v34;
    sub_2385BA73C(v33 + 48 * v34 + 32, v0 + 192);
    sub_2385BA73C(v0 + 192, v0 + 240);
    v35 = *(v0 + 280);
    if (v35 <= 1)
    {
      v39 = (v0 + 240);
      if (*(v0 + 280))
      {
        sub_2384347C0(v39, v0 + 368);
        v64 = *(v0 + 392);
        v65 = *(v0 + 400);
        __swift_project_boxed_opaque_existential_1((v0 + 368), v64);
        (*(v65 + 8))(v64, v65);
        v38 = (v0 + 368);
      }

      else
      {
        sub_2384347C0(v39, v0 + 408);
        v40 = *(v0 + 432);
        v41 = *(v0 + 440);
        __swift_project_boxed_opaque_existential_1((v0 + 408), v40);
        (*(v41 + 8))(v40, v41);
        v38 = (v0 + 408);
      }
    }

    else if (v35 == 2)
    {
      sub_2384347C0((v0 + 240), v0 + 328);
      v42 = *(v0 + 352);
      v43 = *(v0 + 360);
      __swift_project_boxed_opaque_existential_1((v0 + 328), v42);
      (*(v43 + 8))(v42, v43);
      v38 = (v0 + 328);
    }

    else
    {
      if (v35 != 3)
      {
        v45 = *(v0 + 240);
        v44 = *(v0 + 248);
        v46 = *(v0 + 256);

        v47 = [v46 title];
        v48 = sub_23875EA80();
        v50 = v49;

        *(v0 + 448) = v48;
        *(v0 + 456) = v50;
        v51 = [v46 subtitle];
        v52 = sub_23875EA80();
        v54 = v53;

        v55 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v55 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (v55)
        {
          v56 = [v46 subtitle];
          v57 = sub_23875EA80();
          v59 = v58;

          *(v0 + 464) = 8236;
          *(v0 + 472) = 0xE200000000000000;
          MEMORY[0x23EE63650](v57, v59);

          MEMORY[0x23EE63650](*(v0 + 464), *(v0 + 472));
        }

        v60 = *(v0 + 448);
        v61 = *(v0 + 456);
        v62 = sub_23875E030();
        v63 = swift_allocObject();
        v63[2] = v45;
        v63[3] = v44;
        v63[4] = v46;
        *(v0 + 32) = v60;
        *(v0 + 40) = v61;
        *(v0 + 48) = v62;
        *(v0 + 56) = 0xD000000000000012;
        *(v0 + 72) = 0x6E6F697461636F4CLL;
        *(v0 + 80) = 0xE800000000000000;
        *(v0 + 64) = 0x800000023878C470;
        *(v0 + 16) = v45;
        *(v0 + 24) = v44;
        *(v0 + 88) = &unk_238783DB0;
        *(v0 + 96) = v63;
        goto LABEL_40;
      }

      sub_2384347C0((v0 + 240), v0 + 288);
      v36 = *(v0 + 312);
      v37 = *(v0 + 320);
      __swift_project_boxed_opaque_existential_1((v0 + 288), v36);
      (*(v37 + 8))(v36, v37);
      v38 = (v0 + 288);
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
LABEL_40:
    v66 = *(v0 + 64);
    *(v0 + 168) = *(v0 + 80);
    *(v0 + 136) = *(v0 + 48);
    *(v0 + 152) = v66;
    v67 = *(v0 + 32);
    *(v0 + 104) = *(v0 + 16);
    *(v0 + 184) = *(v0 + 96);
    *(v0 + 120) = v67;
    v68 = *(v0 + 176);
    *(v0 + 600) = *(v0 + 184);

    sub_2384B5DE4(v0 + 104);
    v71 = (v68 + *v68);
    v69 = v68[1];
    v70 = swift_task_alloc();
    *(v0 + 608) = v70;
    *v70 = v0;
    v70[1] = sub_23873BC5C;

    return v71(v0 + 488);
  }

  v9 = *(v0 + 568);

  v10 = MEMORY[0x277D84F90];
  v2 = &selRef_returnDeadline;
  while (1)
  {
    v11 = *(v4 + 2);
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = *(v0 + 504);
        v13 = *(v4 + 4);

        v4 = v13;
        MEMORY[0x23EE63730]();
        if (*((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v28 = *(v0 + 504);
          sub_23875EC90();
        }

        v14 = *(v0 + 504);
        sub_23875ECB0();

        goto LABEL_18;
      }

      v15 = v10;
      *(v0 + 496) = v10;
      sub_23875F4E0();
      v16 = 32;
      do
      {
        v17 = *&v4[v16];
        sub_23875F4C0();
        v18 = *(*(v0 + 496) + 16);
        sub_23875F4F0();
        sub_23875F500();
        sub_23875F4D0();
        v16 += 8;
        --v11;
      }

      while (v11);

      v19 = *(v0 + 496);
      v2 = &selRef_returnDeadline;
      v10 = v15;
    }

    else
    {
    }

    v20 = *(v0 + 504);
    sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
    v21 = sub_23875EC60();

    v4 = [objc_opt_self() v2[18]];

    MEMORY[0x23EE63730]();
    if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *(v0 + 504);
      sub_23875EC90();
    }

    v22 = *(v0 + 504);
    sub_23875ECB0();
LABEL_18:
    v23 = *(v0 + 560) + 1;
    if (v23 == *(v0 + 552))
    {
      break;
    }

    *(v0 + 560) = v23;
    v24 = *(v0 + 544);
    if (v23 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v25 = *(v24 + 24 * v23 + 48);
    *(v0 + 568) = v25;
    v26 = *(v25 + 16);
    *(v0 + 576) = v26;
    v4 = v10;
    if (v26)
    {

      v34 = 0;
      v4 = MEMORY[0x277D84F90];
      goto LABEL_26;
    }
  }

  v29 = *(v0 + 544);
  v30 = *(v0 + 520);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_23873C4FC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238736A50(a1);
  v5 = *(v2 + 128);
  *(v2 + 128) = v4;

  v6 = sub_238736D94(a1);
  if (*(v6 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDC8, &qword_23876E7D0);
    v7 = sub_23875F570();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v11 = v7;
  sub_23873DFCC(v6, 1, &v11);

  v8 = sub_238737144(v11);

  v9 = *(v2 + 120);
  *(v2 + 120) = v8;
}

uint64_t sub_23873C5F0()
{
  v1 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchTags;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15848, &qword_238783EA0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSuggestions, v4);
  v6 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchPredicate;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15850, &unk_238783EA8);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__searchSubmitted;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel__state;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15858, &unk_238783EB8);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_tokenManager);

  v13 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_cancellableSet);

  v14 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchTags);

  v15 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_previousSearchText + 8);

  return v0;
}

uint64_t sub_23873C810()
{
  sub_23873C5F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransactionSearchModel()
{
  result = qword_27DF157A0;
  if (!qword_27DF157A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23873C8BC()
{
  sub_23873CAD4(319, &qword_27DF14670);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_2385500AC(319, &qword_27DF157B0, &qword_27DF0B660, &unk_238768630);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_2385500AC(319, &qword_27DF157B8, &qword_27DF157C0, &qword_238783B60);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_23873CAD4(319, &qword_27DF09EE8);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_23873CAD4(319, &qword_27DF157C8);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_23873CAD4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23875C2F0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_23873CB34()
{
  result = qword_27DF157D0;
  if (!qword_27DF157D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF157D0);
  }

  return result;
}

uint64_t sub_23873CB88(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23875F5E0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11008, &qword_2387773B0);
        v5 = sub_23875ECA0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23873CE84(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23873CC90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23873CC90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_23875ED50();
    v7 = (v6 + 24 * v4);
    v8 = v5 - v4;
LABEL_6:
    v19 = v7;
    v20 = v4;
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v18 = v8;
    while (1)
    {
      v13 = *(v7 - 2);
      v21 = v8;
      v22 = *(v7 - 3);
      v14 = *(v7 - 1);

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v10 == v22 && v11 == v13)
      {

LABEL_5:
        ++v4;
        v7 = v19 + 3;
        v8 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = sub_23875F630();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v10 = *v7;
      v11 = v7[1];
      v16 = v7[2];
      *v7 = *(v7 - 3);
      v7[2] = *(v7 - 1);
      *(v7 - 2) = v11;
      *(v7 - 1) = v16;
      *(v7 - 3) = v10;
      v7 -= 3;
      v8 = v21 + 1;
      if (v21 == -1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23873CE84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_105:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_143;
    }

    v8 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_107:
      v102 = *(v8 + 16);
      if (v102 >= 2)
      {
        while (*v6)
        {
          v103 = *(v8 + 16 * v102);
          v104 = *(v8 + 16 * (v102 - 1) + 40);
          sub_23873D7B0((*v6 + 24 * v103), (*v6 + 24 * *(v8 + 16 * (v102 - 1) + 32)), *v6 + 24 * v104, v7);
          if (v5)
          {
          }

          if (v104 < v103)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_238490ED4(v8);
          }

          if (v102 - 2 >= *(v8 + 16))
          {
            goto LABEL_131;
          }

          v105 = (v8 + 16 * v102);
          *v105 = v103;
          v105[1] = v104;
          result = sub_238490E48(v102 - 1);
          v102 = *(v8 + 16);
          if (v102 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_238490ED4(v8);
    v8 = result;
    goto LABEL_107;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v107 = result;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v108 = v10;
      v109 = v5;
      v13 = *v6;
      v14 = (*v6 + 24 * v12);
      v15 = v11;
      v17 = *v14;
      v16 = v14[1];
      v18 = v14[2];
      v111 = v15;
      v19 = (v13 + 24 * v15);
      v20 = *v19;
      v5 = v19[1];
      v21 = v19[2];
      sub_23875ED50();

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v17 == v20 && v16 == v5)
      {
        v121 = 0;
      }

      else
      {
        v121 = sub_23875F630();
      }

      v23 = 0;
      v24 = v111 + 2;
      v25 = (v13 + 24 * v111 + 64);
      v26 = 24 * v111;
      v120 = v8;
      do
      {
        v7 = v23;
        v6 = v26;
        v117 = v24;
        if (v24 >= v8)
        {
          break;
        }

        v29 = *(v25 - 1);
        v28 = *v25;
        v5 = *(v25 - 4);
        v123 = *(v25 - 5);
        v31 = *(v25 - 3);
        v30 = *(v25 - 2);

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v27 = v30 == v123 && v29 == v5 ? 0 : sub_23875F630();
        v8 = v120;

        v24 = v117 + 1;
        v25 += 3;
        v23 = v7 + 1;
        v26 = (v6 + 3);
      }

      while (((v121 ^ v27) & 1) == 0);
      if (v121)
      {
        v12 = v117;
        v11 = v111;
        if (v117 < v111)
        {
          goto LABEL_134;
        }

        if (v111 < v117)
        {
          v32 = 0;
          v33 = 24 * v111;
          do
          {
            if ((v111 + v32) != &v7[v111 + 1])
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v35 = (v34 + v33);
              v36 = v6 + v34;
              v37 = *v35;
              v38 = *(v35 + 1);
              v39 = *(v36 + 24);
              v35[2] = *(v36 + 5);
              *v35 = v39;
              *(v36 + 3) = v37;
              *(v36 + 2) = v38;
            }

            --v7;
            ++v32;
            v6 -= 3;
            v33 += 24;
          }

          while (v32 + v111 < &v7[v111 + 2]);
        }

        v10 = v108;
        v5 = v109;
        v6 = a3;
        v7 = v107;
      }

      else
      {
        v10 = v108;
        v5 = v109;
        v11 = v111;
        v6 = a3;
        v7 = v107;
        v12 = v117;
      }
    }

    v40 = v6[1];
    if (v12 < v40)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_133;
      }

      if (v12 - v11 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v12 < v11)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_238490EE8(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v57 = *(v10 + 2);
    v56 = *(v10 + 3);
    v58 = v57 + 1;
    if (v57 >= v56 >> 1)
    {
      result = sub_238490EE8((v56 > 1), v57 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v58;
    v59 = &v10[16 * v57];
    *(v59 + 4) = v11;
    *(v59 + 5) = v12;
    v8 = *v7;
    if (!*v7)
    {
      goto LABEL_142;
    }

    v119 = v12;
    if (v57)
    {
      while (1)
      {
        v60 = v58 - 1;
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v61 = *(v10 + 4);
          v62 = *(v10 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_74:
          if (v64)
          {
            goto LABEL_121;
          }

          v77 = &v10[16 * v58];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_124;
          }

          v83 = &v10[16 * v60 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_128;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v58 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v87 = &v10[16 * v58];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_88:
        if (v82)
        {
          goto LABEL_123;
        }

        v90 = &v10[16 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_126;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_95:
        v98 = v60 - 1;
        if (v60 - 1 >= v58)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
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
          goto LABEL_136;
        }

        if (!*v6)
        {
          goto LABEL_139;
        }

        v99 = *&v10[16 * v98 + 32];
        v100 = *&v10[16 * v60 + 40];
        sub_23873D7B0((*v6 + 24 * v99), (*v6 + 24 * *&v10[16 * v60 + 32]), *v6 + 24 * v100, v8);
        if (v5)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_238490ED4(v10);
        }

        if (v98 >= *(v10 + 2))
        {
          goto LABEL_118;
        }

        v101 = &v10[16 * v98];
        *(v101 + 4) = v99;
        *(v101 + 5) = v100;
        result = sub_238490E48(v60);
        v58 = *(v10 + 2);
        if (v58 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v10[16 * v58 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_119;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_120;
      }

      v72 = &v10[16 * v58];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_122;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_125;
      }

      if (v76 >= v68)
      {
        v94 = &v10[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_129;
        }

        if (v63 < v97)
        {
          v60 = v58 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v119;
    if (v119 >= v8)
    {
      goto LABEL_105;
    }
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_135;
  }

  if (v11 + a4 >= v40)
  {
    v41 = v6[1];
  }

  else
  {
    v41 = v11 + a4;
  }

  if (v41 < v11)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v12 == v41)
  {
    goto LABEL_54;
  }

  v110 = v5;
  v42 = *v6;
  sub_23875ED50();
  v122 = v42;
  v43 = (v42 + 24 * v12);
  v112 = v11;
  v44 = v11 - v12;
  v114 = v41;
LABEL_44:
  v116 = v43;
  v118 = v12;
  v45 = (v122 + 24 * v12);
  v46 = *v45;
  v47 = v45[1];
  v48 = v45[2];
  v115 = v44;
  v49 = v44;
  while (1)
  {
    v124 = v49;
    v50 = *(v43 - 3);
    v51 = *(v43 - 2);
    v52 = *(v43 - 1);

    sub_23875ED40();
    sub_23875ECE0();
    v8 = v53;
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v46 == v50 && v47 == v51)
    {

LABEL_43:
      v12 = v118 + 1;
      v43 = v116 + 3;
      v44 = v115 - 1;
      if (v118 + 1 == v114)
      {
        v12 = v114;
        v5 = v110;
        v11 = v112;
        v6 = a3;
        v7 = v107;
        goto LABEL_54;
      }

      goto LABEL_44;
    }

    v54 = sub_23875F630();

    if ((v54 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v122)
    {
      break;
    }

    v46 = *v43;
    v47 = v43[1];
    v55 = v43[2];
    *v43 = *(v43 - 3);
    v43[2] = *(v43 - 1);
    *(v43 - 2) = v47;
    *(v43 - 1) = v55;
    *(v43 - 3) = v46;
    v43 -= 3;
    v49 = v124 + 1;
    if (v124 == -1)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_23873D7B0(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[24 * v11] <= a4)
    {
      memmove(a4, __src, 24 * v11);
    }

    v45 = &v4[24 * v11];
    if (v10 >= 24 && v6 > v7)
    {
      sub_23875ED50();
      v42 = v4;
      v39 = v7;
LABEL_27:
      v37 = v6 - 24;
      v24 = v5 - 24;
      v25 = v45;
      v44 = v6;
      do
      {
        v41 = v24;
        v27 = *(v25 - 3);
        v26 = *(v25 - 2);
        v25 -= 24;
        v28 = *(v25 + 2);
        v29 = *(v6 - 3);
        v30 = *(v6 - 2);
        v31 = *(v6 - 1);

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v27 == v29 && v26 == v30)
        {
          v32 = 0;
        }

        else
        {
          v32 = sub_23875F630();
        }

        v4 = v42;
        v6 = v44;

        if (v32)
        {
          v5 = v41;
          if ((v41 + 24) != v44)
          {
            v34 = *v37;
            *(v41 + 16) = *(v37 + 2);
            *v41 = v34;
          }

          if (v45 <= v42 || (v6 = v37, v37 <= v39))
          {
            v6 = v37;
            goto LABEL_44;
          }

          goto LABEL_27;
        }

        if ((v41 + 24) != v45)
        {
          v33 = *v25;
          *(v41 + 16) = *(v25 + 2);
          *v41 = v33;
        }

        v24 = v41 - 24;
        v45 = v25;
      }

      while (v25 > v42);
      v45 = v25;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v45 = &v4[24 * v9];
    if (v8 >= 24 && v6 < v5)
    {
      sub_23875ED50();
      v40 = v5;
      while (1)
      {
        v38 = v7;
        v12 = *v6;
        v13 = *(v6 + 1);
        v43 = v6;
        v14 = *(v6 + 2);
        v16 = *v4;
        v15 = *(v4 + 1);
        v17 = *(v4 + 2);

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v12 == v16 && v13 == v15)
        {
          break;
        }

        v18 = sub_23875F630();

        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }

        v19 = v6;
        v20 = v38;
        v6 += 24;
        v21 = v40;
        if (v38 != v43)
        {
          goto LABEL_17;
        }

LABEL_18:
        v7 = v20 + 24;
        if (v4 >= v45 || v6 >= v21)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      v19 = v4;
      v20 = v38;
      v22 = v38 == v4;
      v4 += 24;
      v21 = v40;
      if (v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      v23 = *v19;
      *(v20 + 2) = *(v19 + 2);
      *v20 = v23;
      goto LABEL_18;
    }

LABEL_20:
    v6 = v7;
  }

LABEL_44:
  v35 = (v45 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v35])
  {
    memmove(v6, v4, 24 * v35);
  }

  return 1;
}

uint64_t sub_23873DC44(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v56 = MEMORY[0x277D84F98];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  v3 = a1 + 32;
  v57 = 0x800000023878C470;
  while (1)
  {
    sub_2385BA73C(v3, &v54);
    sub_2385BA73C(&v54, &v45);
    if (v47 >= 4u)
    {
      v29 = v45;
      v30 = v46;

      v31 = sub_238650240(v30);
      v33 = v32;
      v34 = sub_23875E030();
      v35 = swift_allocObject();
      *(v35 + 16) = v29;
      *(v35 + 32) = v30;
      *&v49 = v31;
      *(&v49 + 1) = v33;
      *&v50 = v34;
      *(&v50 + 1) = 0xD000000000000012;
      *(&v51 + 1) = 0x6E6F697461636F4CLL;
      *&v52 = 0xE800000000000000;
      *&v51 = v57;
      v48 = v29;
      *(&v52 + 1) = &unk_238783DC0;
      v53 = v35;
    }

    else
    {
      sub_2384347C0(&v45, &v39);
      v5 = *(&v40 + 1);
      v6 = v41;
      __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      (*(v6 + 8))(&v48, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(&v39);
    }

    v42 = v51;
    v43 = v52;
    v40 = v49;
    v41 = v50;
    v44 = v53;
    v39 = v48;
    v8 = *(&v51 + 1);
    v7 = v52;

    sub_2384B5DE4(&v39);
    v10 = sub_23853B46C(v8, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_238548970(v13, 1);
      v1 = v56;
      v15 = sub_23853B46C(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_22;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v37 = v54;
      *v38 = v55[0];
      *&v38[9] = *(v55 + 9);
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_238498264(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_238498264((v20 > 1), v21 + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      *(v18 + 2) = v21 + 1;
      v4 = &v18[48 * v21];
      *(v4 + 57) = *&v38[9];
      *(v4 + 2) = v37;
      *(v4 + 3) = *v38;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF50, &qword_238767568);
      v22 = swift_allocObject();
      v23 = v54;
      v24 = v55[0];
      v22[1] = xmmword_2387632F0;
      v22[2] = v23;
      v22[3] = v24;
      *(v22 + 57) = *(v55 + 9);
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v8;
      v25[1] = v7;
      *(v1[7] + 8 * v10) = v22;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_21;
      }

      v1[2] = v28;
    }

    v3 += 48;
    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_23875F680();
  __break(1u);
  return result;
}

unint64_t sub_23873DFCC(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    v12 = *v4;

    result = sub_23853B46C(v10, v9);
    v14 = v12[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      break;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      sub_238548984(v17, a2 & 1);
      v19 = *v4;
      result = sub_23853B46C(v10, v9);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v21 = *v4;
      if ((v18 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v35 = result;
    sub_23854A3F0();
    result = v35;
    v4 = a3;
    v21 = *a3;
    if ((v18 & 1) == 0)
    {
LABEL_25:
      v21[(result >> 6) + 8] |= 1 << result;
      v36 = (v21[6] + 16 * result);
      *v36 = v10;
      v36[1] = v9;
      *(v21[7] + 8 * result) = v11;
      v37 = v21[2];
      v16 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v16)
      {
        goto LABEL_30;
      }

      v21[2] = v38;
      goto LABEL_5;
    }

LABEL_12:
    v22 = *(v21[7] + 8 * result);
    v23 = *(v11 + 16);
    v24 = v22[2];
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_29;
    }

    v40 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v27 = v22[3] >> 1, v27 < v25))
    {
      if (v24 <= v25)
      {
        v28 = v24 + v23;
      }

      else
      {
        v28 = v24;
      }

      v22 = sub_238498CB8(isUniquelyReferenced_nonNull_native, v28, 1, v22);
      v27 = v22[3] >> 1;
    }

    v4 = a3;
    if (*(v11 + 16))
    {
      v29 = v27 - v22[2];
      v30 = *(sub_23875BCB0() - 8);
      if (v29 < v23)
      {
        goto LABEL_32;
      }

      v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = *(v30 + 72);
      swift_arrayInitWithCopy();

      v4 = a3;
      if (v23)
      {
        v33 = v22[2];
        v16 = __OFADD__(v33, v23);
        v34 = v33 + v23;
        if (v16)
        {
          goto LABEL_33;
        }

        v22[2] = v34;
      }
    }

    else
    {

      if (v23)
      {
        goto LABEL_31;
      }
    }

    v7 = v21[7];
    v8 = *(v7 + 8 * v40);
    *(v7 + 8 * v40) = v22;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_23875F680();
  __break(1u);
  return result;
}

uint64_t sub_23873E270(uint64_t a1)
{
  v2 = type metadata accessor for TransactionTypeTokenProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23873E2CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_23864FFDC(a1);
}

uint64_t objectdestroyTm_36()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_23873E3C0()
{
  result = qword_27DF10720;
  if (!qword_27DF10720)
  {
    sub_238449184(255, &qword_27DF12280, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10720);
  }

  return result;
}

uint64_t BankConnectReconnectAccountsViewModel.__allocating_init(institution:fpanID:flowManager:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = sub_238741984(a1, a2, a3, v15, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v16;
}

uint64_t BankConnectReconnectAccountsView.init(viewModel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_238447830;
  *(a2 + 8) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_23873E4E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t BankConnectReconnectAccountsViewModel.init(institution:fpanID:flowManager:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  v16 = *(*(v13 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_2387417BC(a1, a2, a3, v19, a5, a6, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v21;
}

uint64_t sub_23873E688(uint64_t a1)
{
  v1[8] = a1;
  v2 = *(*(type metadata accessor for BankConnectReconnectAccountsResult(0) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_23875ED50();
  v1[11] = sub_23875ED40();
  v4 = sub_23875ECE0();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x2822009F8](sub_23873E758, v4, v3);
}

uint64_t sub_23873E758()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_23873E860;
    v4 = v0[9];

    return sub_23873EFF0(v4);
  }

  else
  {
    v6 = v0[11];

    v8 = v0[9];
    v7 = v0[10];

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23873E860()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v4 = *(v1 + 104);
  v5 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_23873E9A4, v5, v4);
}

uint64_t sub_23873E9A4()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  sub_2387420B4(v3, v2, type metadata accessor for BankConnectReconnectAccountsResult);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = v0[10];
    v8 = *(Strong + 56);
    v7 = *(Strong + 64);

    v8(v6);
  }

  sub_23874211C(v0[10], type metadata accessor for BankConnectReconnectAccountsResult);
  v10 = v0[9];
  v9 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_23873EAB0(uint64_t a1, uint64_t a2)
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
    sub_2386C3BA4(0, 0, v9, &unk_238784100, v13);
  }

  return result;
}

uint64_t sub_23873EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23875ED50();
  v6[5] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_23873ECDC, v8, v7);
}

uint64_t sub_23873ECDC()
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
  v4[1] = sub_23873EE20;
  v5 = *(v0 + 32);

  return v7();
}

uint64_t sub_23873EE20()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_23873EF40, v4, v3);
}

uint64_t sub_23873EF40()
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

uint64_t sub_23873EFF0(uint64_t a1)
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
  v15 = *(*(type metadata accessor for BankConnectAuthorizationFlow(0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  sub_23875ED50();
  v2[20] = sub_23875ED40();
  v17 = sub_23875ECE0();
  v2[21] = v17;
  v2[22] = v16;

  return MEMORY[0x2822009F8](sub_23873F248, v17, v16);
}

uint64_t sub_23873F248()
{
  v1 = v0[3];
  v2 = *(v1 + 5);
  v3 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v5 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID];
  v6 = *&v1[OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID + 8];
  v7 = *(v3 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_23873F3AC;
  v10 = v0[19];

  return v12(v10, &v1[v4], v5, v6, v2, v3);
}

uint64_t sub_23873F3AC()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_23873F8AC;
  }

  else
  {
    v7 = sub_23873F4E8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23873F4E8()
{
  v50 = v0;
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];

  sub_23875C120();
  sub_23872BBFC(v2, v3);
  sub_23872BBFC(v2, v4);
  v6 = sub_23875C1B0();
  v7 = sub_23875F000();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[17];
  v9 = v0[18];
  v11 = v0[16];
  v12 = v0[14];
  v48 = v0[13];
  if (v8)
  {
    v46 = v0[14];
    v47 = v0[16];
    v14 = v0[11];
    v13 = v0[12];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    v38 = v15;
    v39 = v0[7];
    v40 = v0[6];
    v41 = v0[5];
    v42 = v0[4];
    v44 = v7;
    v18 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v49 = v45;
    *v18 = 136315394;
    log = v6;
    sub_238724998(v13);
    sub_23875A900();
    v19 = *(v14 + 8);
    v19(v13, v15);
    v20 = sub_238757B40();
    v22 = v21;
    (*(v17 + 8))(v16, v39);
    sub_23874211C(v9, type metadata accessor for BankConnectAuthorizationFlow);
    v23 = sub_2384615AC(v20, v22, &v49);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    sub_238724998(v13);
    sub_23875A990();
    v19(v13, v38);
    v24 = sub_23875A970();
    v26 = v25;
    (*(v41 + 8))(v40, v42);
    sub_23874211C(v10, type metadata accessor for BankConnectAuthorizationFlow);
    v27 = sub_2384615AC(v24, v26, &v49);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_2383F8000, log, v44, "Reconnect accounts step successfully initiated consent for institutionID: %s with consentID: %s.", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE64DF0](v45, -1, -1);
    MEMORY[0x23EE64DF0](v18, -1, -1);

    (*(v46 + 8))(v47, v48);
  }

  else
  {

    sub_23874211C(v10, type metadata accessor for BankConnectAuthorizationFlow);
    sub_23874211C(v9, type metadata accessor for BankConnectAuthorizationFlow);
    (*(v12 + 8))(v11, v48);
  }

  sub_2387420B4(v0[19], v0[2], type metadata accessor for BankConnectAuthorizationFlow);
  type metadata accessor for BankConnectReconnectAccountsResult(0);
  swift_storeEnumTagMultiPayload();
  v29 = v0[18];
  v28 = v0[19];
  v31 = v0[16];
  v30 = v0[17];
  v32 = v0[15];
  v33 = v0[12];
  v34 = v0[9];
  v35 = v0[6];

  v36 = v0[1];

  return v36();
}

uint64_t sub_23873F8AC()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[15];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v5, v6, "Reconnect accounts step failed to initialise authorization flow with error: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  v12 = v0[24];
  v14 = v0[14];
  v13 = v0[15];
  v15 = v0[13];
  v16 = v0[2];

  (*(v14 + 8))(v13, v15);
  *v16 = v12;
  type metadata accessor for BankConnectReconnectAccountsResult(0);
  swift_storeEnumTagMultiPayload();
  v18 = v0[18];
  v17 = v0[19];
  v20 = v0[16];
  v19 = v0[17];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[9];
  v24 = v0[6];

  v25 = v0[1];

  return v25();
}

uint64_t BankConnectReconnectAccountsViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  v2 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v3 = sub_238757B60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID + 8);

  v5 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel__isLoading;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t BankConnectReconnectAccountsViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v3 = sub_238757B60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID + 8);

  v5 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel__isLoading;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_23873FC80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t BankConnectReconnectAccountsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15868, &qword_238783EC8);
  return sub_23873FD28(v3, v4, a1 + *(v6 + 44));
}

uint64_t sub_23873FD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158A0, &qword_238784108);
  v20[0] = *(v21 - 8);
  v5 = *(v20[0] + 64);
  MEMORY[0x28223BE20](v21);
  v7 = v20 - v6;
  sub_23875ED50();
  v20[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D760();
  MEMORY[0x28223BE20](v8);
  v20[-4] = a1;
  v20[-3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158A8, &qword_238784110);
  sub_238741E58(&qword_27DF158B0, &qword_27DF158A8, &qword_238784110, sub_238741D94);
  v9 = sub_23875C410();
  MEMORY[0x28223BE20](v9);
  v20[-4] = a1;
  v20[-3] = a2;
  sub_23875D020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158D8, &qword_238784128);
  v10 = sub_23843A3E8(&qword_27DF158E0, &qword_27DF158A0, &qword_238784108);
  v11 = sub_238741E58(&qword_27DF158E8, &qword_27DF158D8, &qword_238784128, sub_238741EDC);
  v18 = v10;
  v19 = v11;
  v12 = v22;
  v13 = v21;
  sub_23875DBA0();
  (*(v20[0] + 8))(v7, v13);
  v14 = sub_23875C910();
  v15 = sub_23875D7D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15900, &unk_238784140);
  v17 = v12 + *(result + 36);
  *v17 = v14;
  *(v17 + 8) = v15;
  return result;
}

void *sub_238740064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_23875D020();
  v32 = 0;
  sub_238740240(a1, a2, a3 & 1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v34, __src, sizeof(v34));
  sub_23843981C(__dst, &v29, &qword_27DF15910, &qword_238784160);
  sub_238439884(v34, &qword_27DF15910, &qword_238784160);
  memcpy(&v31[7], __dst, 0x168uLL);
  v9 = v32;
  v10 = sub_23875D790();
  sub_23875C3D0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  __src[0] = 0;
  v19 = sub_23875D770();
  sub_23875C3D0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  *a4 = v8;
  *(a4 + 8) = 0;
  *(a4 + 16) = v9;
  result = memcpy((a4 + 17), v31, 0x16FuLL);
  *(a4 + 384) = v10;
  *(a4 + 392) = v12;
  *(a4 + 400) = v14;
  *(a4 + 408) = v16;
  *(a4 + 416) = v18;
  *(a4 + 424) = 0;
  *(a4 + 432) = v19;
  *(a4 + 440) = v21;
  *(a4 + 448) = v23;
  *(a4 + 456) = v25;
  *(a4 + 464) = v27;
  *(a4 + 472) = 0;
  return result;
}

uint64_t sub_238740240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v29 = a3;
  v30 = a2;
  v28 = a1;
  v32 = a4;
  v4 = sub_238757B60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v33 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  sub_238741FDC(&qword_27DF15908, type metadata accessor for BankConnectReconnectAccountsViewModel);
  v9 = sub_23875C490();
  (*(v5 + 16))(v8, v9 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution, v4);

  KeyPath = swift_getKeyPath();
  LOBYTE(v38[0]) = 0;
  v61[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v36 = *(&v63 + 1);
  v27 = v63;
  v10 = sub_238757B40();
  v31 = v10;
  v35 = v11;
  (*(v5 + 8))(v8, v4);
  HIDWORD(v25) = LOBYTE(v38[0]);
  v34 = sub_23875D7A0();
  sub_23875C3D0();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v26 = sub_23875D030();
  v67 = 0;
  sub_2387409D8(&v63);
  v75 = *&v64[32];
  v76 = *&v64[48];
  v77[0] = *&v64[64];
  *(v77 + 9) = *&v64[73];
  v72 = v63;
  v73 = *v64;
  v74 = *&v64[16];
  v78[1] = *v64;
  v78[0] = v63;
  v78[2] = *&v64[16];
  v78[4] = *&v64[48];
  v78[3] = *&v64[32];
  v79[0] = *&v64[64];
  *(v79 + 9) = *&v64[73];
  sub_23843981C(&v72, v61, &qword_27DF0AB10, &qword_238766710);
  sub_238439884(v78, &qword_27DF0AB10, &qword_238766710);
  *(&v66[3] + 7) = v75;
  *(&v66[4] + 7) = v76;
  *(&v66[5] + 7) = v77[0];
  v66[6] = *(v77 + 9);
  *(v66 + 7) = v72;
  *(&v66[1] + 7) = v73;
  *(&v66[2] + 7) = v74;
  v20 = v67;
  sub_23875E4B0();
  sub_23875C9C0();
  *&v68[55] = v79[5];
  *&v68[71] = v79[6];
  *&v68[87] = v79[7];
  *&v68[103] = v80;
  *&v68[7] = v79[2];
  *&v68[23] = v79[3];
  *&v68[39] = v79[4];
  *&v55 = v10;
  *(&v55 + 1) = v35;
  LOBYTE(v56) = 3;
  DWORD1(v56) = *(v70 + 3);
  *(&v56 + 1) = v70[0];
  *(&v56 + 1) = 0x3FB999999999999ALL;
  *&v57 = KeyPath;
  v21 = BYTE4(v25);
  BYTE8(v57) = BYTE4(v25);
  *(&v57 + 9) = *v69;
  HIDWORD(v57) = *&v69[3];
  v22 = v27;
  *&v58 = v27;
  *(&v58 + 1) = v36;
  LOBYTE(v59) = v34;
  DWORD1(v59) = *&v71[3];
  *(&v59 + 1) = *v71;
  *(&v59 + 1) = v13;
  *&v60[0] = v15;
  *(&v60[0] + 1) = v17;
  *&v60[1] = v19;
  BYTE8(v60[1]) = 0;
  *&v54[32] = v57;
  *&v54[48] = v58;
  *v54 = v55;
  *&v54[16] = v56;
  *&v54[89] = *(v60 + 9);
  *&v54[64] = v59;
  *&v54[80] = v60[0];
  v23 = v26;
  v61[0] = v26;
  v61[1] = 0;
  v62[0] = v20;
  *&v62[33] = v66[2];
  *&v62[17] = v66[1];
  *&v62[1] = v66[0];
  *&v62[97] = v66[6];
  *&v62[81] = v66[5];
  *&v62[65] = v66[4];
  *&v62[49] = v66[3];
  *&v62[161] = *&v68[48];
  *&v62[145] = *&v68[32];
  *&v62[129] = *&v68[16];
  *&v62[113] = *v68;
  *&v62[224] = *(&v80 + 1);
  *&v62[209] = *&v68[96];
  *&v62[193] = *&v68[80];
  *&v62[177] = *&v68[64];
  *&v54[144] = *&v62[16];
  *&v54[160] = *&v62[32];
  *&v54[112] = v26;
  *&v54[128] = *v62;
  *&v54[208] = *&v62[80];
  *&v54[224] = *&v62[96];
  *&v54[176] = *&v62[48];
  *&v54[192] = *&v62[64];
  *&v54[272] = *&v62[144];
  *&v54[288] = *&v62[160];
  *&v54[240] = *&v62[112];
  *&v54[256] = *&v62[128];
  *&v54[352] = *&v62[224];
  *&v54[320] = *&v62[192];
  *&v54[336] = *&v62[208];
  *&v54[304] = *&v62[176];
  memcpy(v32, v54, 0x168uLL);
  *&v64[49] = v66[3];
  *&v64[65] = v66[4];
  *&v64[81] = v66[5];
  *&v64[97] = v66[6];
  *&v64[1] = v66[0];
  *&v64[17] = v66[1];
  v63 = v23;
  v64[0] = v20;
  *&v64[33] = v66[2];
  *&v64[177] = *&v68[64];
  *&v64[193] = *&v68[80];
  *v65 = *&v68[96];
  *&v65[15] = *&v68[111];
  *&v64[113] = *v68;
  *&v64[129] = *&v68[16];
  *&v64[145] = *&v68[32];
  *&v64[161] = *&v68[48];
  sub_23843981C(&v55, v38, &qword_27DF095D8, &qword_238763980);
  sub_23843981C(v61, v38, &qword_27DF15918, &unk_2387841A0);
  sub_238439884(&v63, &qword_27DF15918, &unk_2387841A0);
  v38[0] = v31;
  v38[1] = v35;
  v39 = 3;
  *v40 = v70[0];
  *&v40[3] = *(v70 + 3);
  v41 = 0x3FB999999999999ALL;
  v42 = KeyPath;
  v43 = v21;
  *v44 = *v69;
  *&v44[3] = *&v69[3];
  v45 = v22;
  v46 = v36;
  v47 = v34;
  *&v48[3] = *&v71[3];
  *v48 = *v71;
  v49 = v13;
  v50 = v15;
  v51 = v17;
  v52 = v19;
  v53 = 0;
  sub_238439884(v38, &qword_27DF095D8, &qword_238763980);
}

uint64_t sub_2387409D8@<X0>(uint64_t a1@<X8>)
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
  LOBYTE(v6) = v10;
  v12 = v11;
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v2 localizedStringForKey:v13 value:v14 table:v15];

  sub_23875EA80();
  v17 = sub_23875DAA0();
  v19 = v18;
  LOBYTE(v16) = v20;
  v22 = v21;
  LOBYTE(v13) = sub_23875D7A0();
  sub_23875C3D0();
  v32[80] = v6 & 1;
  *&v33 = v17;
  *(&v33 + 1) = v19;
  LOBYTE(v34) = v16 & 1;
  *(&v34 + 1) = v22;
  LOBYTE(v35) = v13;
  *(&v35 + 1) = v23;
  *v36 = v24;
  *&v36[8] = v25;
  *&v36[16] = v26;
  v36[24] = 0;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v12;
  v27 = v33;
  v28 = v34;
  v29 = v35;
  *(a1 + 89) = *&v36[9];
  v30 = *v36;
  *(a1 + 64) = v29;
  *(a1 + 80) = v30;
  *(a1 + 32) = v27;
  *(a1 + 48) = v28;
  v37[0] = v17;
  v37[1] = v19;
  v38 = v16 & 1;
  v39 = v22;
  v40 = v13;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v44 = v26;
  v45 = 0;
  sub_23843980C(v7, v9, v6 & 1);

  sub_23843981C(&v33, v32, &qword_27DF0AB28, &qword_238771F60);
  sub_238439884(v37, &qword_27DF0AB28, &qword_238771F60);
  sub_2384397FC(v7, v9, v6 & 1);
}

uint64_t sub_238740D28@<X0>(uint64_t a1@<X8>)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_23875D1D0();
  v3 = sub_23875D770();
  sub_23875C3D0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2E8, &unk_238784130) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_23875D7A0();
  sub_23875C3D0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF158D8, &qword_238784128);
  v23 = a1 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_238740F34@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238741008(a1);
}

uint64_t sub_238741008@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  sub_238741FDC(&qword_27DF15908, type metadata accessor for BankConnectReconnectAccountsViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v14 = swift_allocObject();
  *(v14 + 16) = v3;
  *(v14 + 24) = v4;
  *(v14 + 32) = v5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v16 = v15[9];
  sub_2384D63F0();
  result = sub_23875D610();
  *a1 = v11;
  a1[1] = v13;
  *(a1 + v15[10]) = v19;
  v18 = (a1 + v15[11]);
  *v18 = sub_238741FA0;
  v18[1] = v14;
  return result;
}

uint64_t sub_238741254()
{
  v1 = sub_23875A820();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v29 = *v0;
  v7 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  sub_23875A7E0();
  v9 = sub_23867B330(v5);
  v11 = v10;
  (*(v2 + 8))(v5, v1);
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
  strcpy((v13 + 88), "bankLinkStart");
  *(v13 + 102) = -4864;
  v19 = v14;
  v20 = v17;
  v21 = v18;
  v22 = sub_23854B138(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v22;
  sub_2385C33E4(v12, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v30);

  v24 = *MEMORY[0x277D38550];
  v25 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238741FDC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v26 = sub_23875E910();

  [v25 subject:v24 sendEvent:v26];

  type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  sub_238741FDC(&qword_27DF15908, type metadata accessor for BankConnectReconnectAccountsViewModel);
  sub_23875C490();
  v27 = swift_allocObject();
  swift_weakInit();

  sub_23873EAB0(&unk_238784158, v27);
}

uint64_t sub_238741660@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15868, &qword_238783EC8);
  return sub_23873FD28(v3, v4, a1 + *(v6 + 44));
}

uint64_t sub_2387416C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_238741748(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2387417BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a5;
  v28 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v31 = a8;
  v32 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_1, a4, a8);
  v21 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel__isLoading;
  v29 = 0;
  sub_23875C290();
  (*(v16 + 32))(a7 + v21, v19, v15);
  v22 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_institution;
  v23 = sub_238757B60();
  (*(*(v23 - 8) + 32))(a7 + v22, a1, v23);
  v24 = (a7 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectReconnectAccountsViewModel_fpanID);
  *v24 = a2;
  v24[1] = a3;
  sub_2384347C0(&v30, a7 + 16);
  v25 = v28;
  *(a7 + 56) = v27;
  *(a7 + 64) = v25;
  return a7;
}

uint64_t sub_238741984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a6;
  v15 = *(a8 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](a1);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for BankConnectReconnectAccountsViewModel(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  (*(v15 + 16))(v18, a4, a8);
  return sub_2387417BC(a1, a2, a3, v18, a5, v25, v22, a8, a9);
}

unint64_t sub_238741AF0()
{
  result = type metadata accessor for BankConnectAuthorizationFlow(319);
  if (v1 <= 0x3F)
  {
    result = sub_238484510();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_238741B8C()
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

uint64_t sub_238741CC0(uint64_t a1)
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

  return sub_23873EC40(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_238741D94()
{
  result = qword_27DF158B8;
  if (!qword_27DF158B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF158C0, &qword_238784118);
    sub_23843A3E8(&qword_27DF158C8, &qword_27DF158D0, &qword_238784120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF158B8);
  }

  return result;
}

uint64_t sub_238741E4C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_238740D28(a1);
}

uint64_t sub_238741E58(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238741EDC()
{
  result = qword_27DF158F0;
  if (!qword_27DF158F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B2E8, &unk_238784130);
    sub_23843A3E8(&qword_27DF158F8, &qword_27DF0AAD0, &qword_238766670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF158F0);
  }

  return result;
}

uint64_t sub_238741F94@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_238740F34(a1);
}

uint64_t sub_238741FA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return sub_238741254();
}

uint64_t sub_238741FDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_238742024()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_23873E688(v0);
}

uint64_t sub_2387420B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23874211C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall CopyStringAction.callAsFunction(_:)(Swift::String a1)
{
  v1 = [objc_opt_self() generalPasteboard];
  v2 = sub_23875EA50();
  [v1 setString_];
}

uint64_t EnvironmentValues.copyString.getter()
{
  sub_238742258();

  return sub_23875CDC0();
}

unint64_t sub_238742258()
{
  result = qword_27DF15920;
  if (!qword_27DF15920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15920);
  }

  return result;
}

uint64_t EnvironmentValues.copyString.setter()
{
  sub_238742258();

  return sub_23875CDD0();
}

uint64_t EnvironmentValues.copyURL.getter()
{
  sub_23874239C();

  return sub_23875CDC0();
}

unint64_t sub_23874239C()
{
  result = qword_27DF15928;
  if (!qword_27DF15928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15928);
  }

  return result;
}

uint64_t EnvironmentValues.copyURL.setter()
{
  sub_23874239C();

  return sub_23875CDD0();
}

void CopyURLAction.callAsFunction(_:)()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = sub_23875B860();
  [v0 setURL_];
}

uint64_t (*EnvironmentValues.copyString.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_238742258();
  sub_23875CDC0();
  return sub_238742570;
}

uint64_t sub_238742570(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_23875CDD0();
}

uint64_t (*EnvironmentValues.copyURL.modify(void *a1))(uint64_t *a1)
{
  *a1 = v1;
  a1[1] = sub_23874239C();
  sub_23875CDC0();
  return sub_2387425F8;
}

uint64_t sub_2387425F8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return sub_23875CDD0();
}

void sub_2387426D4()
{
  type metadata accessor for ReturnDetailsContentsSection.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_238742940(319, &qword_27DF0C770, &type metadata for HeaderIconVisibility, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_238742990(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_238742940(319, &qword_27DF0F4F0, &type metadata for CopyStringAction, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238742828()
{
  type metadata accessor for ReturnDetailsHeader.ViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ReturnDetailsStatusLabel.ViewModel(319);
    if (v1 <= 0x3F)
    {
      sub_238742940(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_238742990(319, &qword_27DF0E3B8, type metadata accessor for OrderDetailsLargeLineItem.ViewModel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238742940(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_238742990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_238742A14@<X0>(char *a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15950, &qword_238784310);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15958, &qword_238784318);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15960, &qword_238784320);
  v13 = *(v12 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15968, &qword_238784328);
  sub_238745248();
  sub_23875D9C0();
  v20 = sub_23843A3E8(&qword_27DF159F0, &qword_27DF15950, &qword_238784310);
  sub_23875DB70();
  (*(v3 + 8))(v6, v2);
  v32 = v2;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  sub_23875DD80();
  (*(v29 + 8))(v11, v21);
  v22 = *(v27 + *(type metadata accessor for ReturnDetailsContentsSection.ViewModel(0) + 44));
  v23 = v13[2];
  v23(v16, v19, v12);
  v24 = v30;
  v23(v30, v16, v12);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159F8, &qword_238784370) + 48)] = v22;
  v25 = v13[1];
  swift_bridgeObjectRetain_n();
  v25(v19, v12);

  return (v25)(v16, v12);
}

double sub_238742DBC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_23875CEA0();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReturnDetailsContentsSection(0);
  v39 = *(v6 - 8);
  v7 = v39[8];
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159D0, &qword_238784358);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  sub_23875ED50();
  v42 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = a1;
  sub_2387456D0(a1, v13, type metadata accessor for ReturnDetailsHeader.ViewModel);
  KeyPath = swift_getKeyPath();
  *&v13[*(type metadata accessor for ReturnDetailsHeader(0) + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v16 = sub_23875E4A0();
  v18 = v17;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2387456D0(a1, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsContentsSection);
  v19 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v20 = swift_allocObject();
  sub_238745738(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);

  v39 = &v38;
  v22 = &v13[*(v8 + 36)];
  *v22 = sub_23874579C;
  v22[1] = v20;
  v22[2] = v16;
  v22[3] = v18;
  MEMORY[0x28223BE20](v21);
  *(&v38 - 2) = v14;
  sub_23843981C(v13, v40, &qword_27DF159D0, &qword_238784358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159E8, &qword_238784368);
  sub_2387455E8();
  sub_23843A3E8(&qword_27DF159E0, &qword_27DF159E8, &qword_238784368);
  v23 = v41;
  sub_23875E3B0();
  v24 = v43;
  sub_23875CE90();
  sub_238439884(v13, &qword_27DF159D0, &qword_238784358);
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159B0, &qword_238784348) + 36);
  v27 = v44;
  v26 = v45;
  (*(v44 + 16))(v23 + v25, v24, v45);
  v28 = *(v27 + 56);
  v28(v23 + v25, 0, 1, v26);
  v29 = swift_getKeyPath();
  v30 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF159A0, &qword_238784340) + 36));
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v27 + 32))(v30 + v31, v24, v26);
  v28(v30 + v31, 0, 1, v26);
  *v30 = v29;
  v32 = sub_23875D000();
  v33 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15990, &qword_238784338) + 36));
  *v33 = v32;
  v33[1] = sub_23843480C;
  v33[2] = 0;
  v34 = sub_23875D010();
  v35 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15980, &qword_238784330) + 36));
  *v35 = v34;
  v35[1] = sub_23842A800;
  v35[2] = 0;
  LOBYTE(v34) = sub_23875D7A0();

  v36 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15968, &qword_238784328) + 36);
  *v36 = v34;
  result = 0.0;
  *(v36 + 8) = 0u;
  *(v36 + 24) = 0u;
  *(v36 + 40) = 1;
  return result;
}

uint64_t sub_2387433A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for ReturnDetailsContentsSection(0);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875D2F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D4B0();
  sub_23875C640();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v7 + 8))(v10, v6);
  v19 = sub_23875E020();
  sub_2387456D0(a1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsContentsSection);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_238745738(v5, v21 + v20);
  v22 = (v21 + ((v20 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = v12;
  v22[1] = v14;
  v22[2] = v16;
  v22[3] = v18;
  v32 = v19;
  v33 = sub_238746024;
  v34 = v21;
  v35 = 0;
  v36 = 0;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  v31 = v18;
  sub_2387456D0(a1, v5, type metadata accessor for ReturnDetailsContentsSection);
  v23 = swift_allocObject();
  sub_238745738(v5, v23 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C790, &qword_23876B350);
  type metadata accessor for CGRect(0);
  sub_2384E5D30();
  sub_238746AA8(&qword_27DF0C7A0, type metadata accessor for CGRect);
  sub_23875DF10();
}

uint64_t sub_238743718(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = (a1 + *(type metadata accessor for ReturnDetailsContentsSection(0) + 20));
  v11 = v10[3];
  v12 = v10[1];
  v30 = v10[2];
  v31 = v11;
  v13 = v10[3];
  v32[0] = v10[4];
  *(v32 + 9) = *(v10 + 73);
  v14 = v10[1];
  v28 = *v10;
  v29 = v14;
  *v21 = v10[4];
  *&v21[9] = *(v10 + 73);
  sub_23843981C(&v28, v33, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](&v22);
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = 0;
  v18 = v30;
  v19 = v31;
  *v20 = v32[0];
  *&v20[9] = *(v32 + 9);
  v16 = v28;
  v17 = v29;
  sub_23875E2F0();
  v33[2] = v18;
  v33[3] = v19;
  v34[0] = *v20;
  *(v34 + 9) = *&v20[9];
  v33[0] = v16;
  v33[1] = v17;
  sub_238439884(v33, &qword_27DF0C7A8, &qword_23876B358);
}

uint64_t sub_2387438F8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v10 = a2[1];
  v11 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a3 + *(type metadata accessor for ReturnDetailsContentsSection(0) + 20));
  v5 = v4[3];
  v6 = v4[1];
  v22 = v4[2];
  v23 = v5;
  v7 = v4[3];
  v24[0] = v4[4];
  *(v24 + 9) = *(v4 + 73);
  v8 = v4[1];
  v20 = *v4;
  v21 = v8;
  *v17 = v4[4];
  *&v17[9] = *(v4 + 73);
  sub_23843981C(&v20, v25, &qword_27DF0C7A8, &qword_23876B358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7A8, &qword_23876B358);
  MEMORY[0x23EE62DC0](v18);
  *&v18[7] = v10;
  *&v18[5] = v11;
  v19 = 0;
  v14 = v22;
  v15 = v23;
  *v16 = v24[0];
  *&v16[9] = *(v24 + 9);
  v12 = v20;
  v13 = v21;
  sub_23875E2F0();
  v25[2] = v14;
  v25[3] = v15;
  v26[0] = *v16;
  *(v26 + 9) = *&v16[9];
  v25[0] = v12;
  v25[1] = v13;
  sub_238439884(v25, &qword_27DF0C7A8, &qword_23876B358);
}

uint64_t sub_238743AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a1;
  v99 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A08, &qword_2387843E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v101 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v92 - v6;
  MEMORY[0x28223BE20](v7);
  v98 = &v92 - v8;
  MEMORY[0x28223BE20](v9);
  v110 = &v92 - v10;
  v11 = sub_23875C880();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x28223BE20](v11);
  v96 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v95 = (&v92 - v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v92 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A10, &qword_2387843F0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v92 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A18, &qword_2387843F8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v97 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v92 - v31;
  MEMORY[0x28223BE20](v33);
  v109 = &v92 - v34;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v26 = sub_23875D030();
  *(v26 + 1) = 0x4032000000000000;
  v26[16] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A20, &qword_238784400);
  v36 = v108;
  sub_23874479C(v108, &v26[*(v35 + 44)]);

  v106 = *(type metadata accessor for ReturnDetailsContentsSection(0) + 24);
  sub_2384D5138(v22);
  v37 = v12[13];
  v105 = *MEMORY[0x277CDF9D8];
  v104 = v12 + 13;
  v103 = v37;
  v37(v19);
  v38 = sub_23875C870();
  v39 = v12[1];
  v107 = v12 + 1;
  v39(v19, v11);
  v102 = v39;
  v39(v22, v11);
  if (v38)
  {
    v40 = 0x4028000000000000;
  }

  else
  {
    v40 = 0x4030000000000000;
  }

  sub_2384396E4(v26, v32, &qword_27DF15A10, &qword_2387843F0);
  v41 = &v32[*(v27 + 36)];
  *v41 = 0x4028000000000000;
  *(v41 + 1) = v40;
  *(v41 + 2) = 0;
  *(v41 + 3) = v40;
  v41[32] = 0;
  sub_2384396E4(v32, v109, &qword_27DF15A18, &qword_2387843F8);
  v42 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v43 = v42;
  v44 = (v36 + *(v42 + 40));
  v45 = v44[1];
  v46 = 0x2814F0000uLL;
  if (v45)
  {
    v94 = v42;
    v93 = *v44;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v47 = qword_2814F1B90;
    v48 = sub_23875EA50();
    v49 = sub_23875EA50();
    v50 = sub_23875EA50();
    v51 = [v47 localizedStringForKey:v48 value:v49 table:v50];

    v52 = sub_23875EA80();
    v54 = v53;

    v55 = v108;
    v56 = v95;
    sub_2384D5138(v95);
    v103(v19, v105, v11);
    LOBYTE(v51) = sub_23875C870();
    v57 = v102;
    v102(v19, v11);
    v58 = v57(v56, v11);
    v95 = &v92;
    v121 = 0;
    v59 = 0x4030000000000000;
    if (v51)
    {
      v59 = 0x4028000000000000;
    }

    *&v111 = v52;
    *(&v111 + 1) = v54;
    *&v112 = v93;
    *(&v112 + 1) = v45;
    *&v113 = 0x4028000000000000;
    *(&v113 + 1) = v59;
    *&v114 = 0;
    *(&v114 + 1) = v59;
    v115 = 0;
    MEMORY[0x28223BE20](v58);
    *(&v92 - 4) = v55;
    *(&v92 - 3) = v60;
    *(&v92 - 2) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A38, &unk_238784418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_238745944();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    v61 = v110;
    sub_23875DB50();
    v118 = v113;
    v119 = v114;
    v120 = v115;
    v116 = v111;
    v117 = v112;
    sub_238439884(&v116, &qword_27DF15A38, &unk_238784418);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    v63 = v61;
    v36 = v55;
    (*(*(v62 - 8) + 56))(v63, 0, 1, v62);
    v46 = 0x2814F0000;
    v43 = v94;
  }

  else
  {
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    (*(*(v64 - 8) + 56))(v110, 1, 1, v64);
  }

  v65 = (v36 + *(v43 + 36));
  v66 = v65[1];
  if (v66)
  {
    v67 = *v65;
    if (*(v46 + 2176) != -1)
    {
      swift_once();
    }

    v68 = qword_2814F1B90;
    v69 = sub_23875EA50();
    v70 = sub_23875EA50();
    v71 = sub_23875EA50();
    v72 = [v68 localizedStringForKey:v69 value:v70 table:v71];

    v73 = sub_23875EA80();
    v75 = v74;

    v76 = v96;
    sub_2384D5138(v96);
    v103(v19, v105, v11);
    LOBYTE(v72) = sub_23875C870();
    v77 = v102;
    v102(v19, v11);
    v78 = v77(v76, v11);
    v121 = 0;
    v79 = 0x4030000000000000;
    if (v72)
    {
      v79 = 0x4028000000000000;
    }

    *&v111 = v73;
    *(&v111 + 1) = v75;
    *&v112 = v67;
    *(&v112 + 1) = v66;
    *&v113 = 0x4028000000000000;
    *(&v113 + 1) = v79;
    *&v114 = 0;
    *(&v114 + 1) = v79;
    v115 = 0;
    MEMORY[0x28223BE20](v78);
    *(&v92 - 4) = v80;
    *(&v92 - 3) = v67;
    *(&v92 - 2) = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A38, &unk_238784418);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
    sub_238745944();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    v81 = v98;
    sub_23875DB50();
    v118 = v113;
    v119 = v114;
    v120 = v115;
    v116 = v111;
    v117 = v112;
    sub_238439884(&v116, &qword_27DF15A38, &unk_238784418);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
  }

  else
  {
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A28, &qword_238784408);
    v81 = v98;
    (*(*(v83 - 8) + 56))(v98, 1, 1, v83);
  }

  v84 = v109;
  v85 = v97;
  sub_23843981C(v109, v97, &qword_27DF15A18, &qword_2387843F8);
  v86 = v110;
  v87 = v100;
  sub_23843981C(v110, v100, &qword_27DF15A08, &qword_2387843E8);
  v88 = v101;
  sub_23843981C(v81, v101, &qword_27DF15A08, &qword_2387843E8);
  v89 = v99;
  sub_23843981C(v85, v99, &qword_27DF15A18, &qword_2387843F8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A30, &qword_238784410);
  sub_23843981C(v87, v89 + *(v90 + 48), &qword_27DF15A08, &qword_2387843E8);
  sub_23843981C(v88, v89 + *(v90 + 64), &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v81, &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v86, &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v84, &qword_27DF15A18, &qword_2387843F8);
  sub_238439884(v88, &qword_27DF15A08, &qword_2387843E8);
  sub_238439884(v87, &qword_27DF15A08, &qword_2387843E8);
  return sub_238439884(v85, &qword_27DF15A18, &qword_2387843F8);
}

uint64_t sub_23874479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ReturnDetailsStatusLabel(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v28 - v8);
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  sub_2387456D0(a1 + v10[5], v9 + *(v3 + 20), type metadata accessor for ReturnDetailsStatusLabel.ViewModel);
  *v9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);
  swift_storeEnumTagMultiPayload();
  v11 = (a1 + v10[7]);
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
    v35 = 0;

    sub_23875E1A0();
    v32 = v36;
    v14 = v37;
  }

  else
  {
    v13 = 0;
    v32 = 0;
    v14 = 0;
  }

  v15 = (a1 + v10[6]);
  v16 = v15[1];
  if (v16)
  {
    v31 = *v15;
    v17 = (a1 + v10[8]);
    v19 = *v17;
    v18 = v17[1];
  }

  else
  {
    v19 = 0;
    v18 = 0;
    v31 = 0;
  }

  v29 = v6;
  v30 = v9;
  sub_2387456D0(v9, v6, type metadata accessor for ReturnDetailsStatusLabel);
  v20 = v33;
  sub_2387456D0(v6, v33, type metadata accessor for ReturnDetailsStatusLabel);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A48, &qword_238784428);
  v22 = (v20 + *(v21 + 48));
  *v22 = v13;
  v22[1] = v12;
  v23 = v32;
  v22[2] = v32;
  v22[3] = v14;
  v24 = (v20 + *(v21 + 64));

  sub_238745F2C(v13, v12);
  v25 = v31;
  sub_2385570E8(v19, v18);
  v26 = MEMORY[0x277D85008];
  sub_238745FCC(v13, v12, v23, v14, MEMORY[0x277D85008]);
  *v24 = v19;
  v24[1] = v18;
  v24[2] = v25;
  v24[3] = v16;
  sub_238745F70(v30);
  sub_238745FCC(v19, v18, v25, v16, MEMORY[0x277D84FB8]);
  sub_238745FCC(v13, v12, v23, v14, v26);
  sub_238745F70(v29);
}

uint64_t sub_238744AEC()
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

uint64_t sub_238744C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v15[2] = a4;
  v15[3] = a5;
  v15[0] = a2;
  v15[1] = a6;
  v8 = type metadata accessor for ReturnDetailsContentsSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2387456D0(a1, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReturnDetailsContentsSection);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  sub_238745738(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = (v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v15[0];
  v13[1] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

void sub_238744E8C(uint64_t a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for ReturnDetailsContentsSection(0) + 28);
  if ((*(v7 + 8) & 1) == 0)
  {
    v8 = *v7;

    sub_23875EFF0();
    v9 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2385A9698(v8, 0);
    (*(v3 + 8))(v6, v2);
  }

  v10 = [objc_opt_self() generalPasteboard];
  v11 = sub_23875EA50();
  [v10 setString_];
}

uint64_t sub_2387450A0()
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

unint64_t sub_238745248()
{
  result = qword_27DF15970;
  if (!qword_27DF15970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15968, &qword_238784328);
    sub_238745330(&qword_27DF15978, &qword_27DF15980, &qword_238784330, sub_238745300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15970);
  }

  return result;
}

uint64_t sub_238745330(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2387453B4()
{
  result = qword_27DF15998;
  if (!qword_27DF15998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159A0, &qword_238784340);
    sub_23874546C();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15998);
  }

  return result;
}

unint64_t sub_23874546C()
{
  result = qword_27DF159A8;
  if (!qword_27DF159A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159B0, &qword_238784348);
    sub_238745524();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF159A8);
  }

  return result;
}

unint64_t sub_238745524()
{
  result = qword_27DF159B8;
  if (!qword_27DF159B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159C0, &qword_238784350);
    sub_2387455E8();
    sub_23843A3E8(&qword_27DF159E0, &qword_27DF159E8, &qword_238784368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF159B8);
  }

  return result;
}

unint64_t sub_2387455E8()
{
  result = qword_27DF159C8;
  if (!qword_27DF159C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF159D0, &qword_238784358);
    sub_238746AA8(&qword_27DF159D8, type metadata accessor for ReturnDetailsHeader);
    sub_23843A3E8(&qword_27DF0C818, &qword_27DF0C820, &qword_238784360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF159C8);
  }

  return result;
}

uint64_t sub_2387456D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238745738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReturnDetailsContentsSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23874579C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2387433A0(v4, a1);
}

uint64_t sub_238745848(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A00, &qword_2387843E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_23843981C(a1, &v7 - v4, &qword_27DF15A00, &qword_2387843E0);
  return MEMORY[0x23EE61660](v5);
}

unint64_t sub_238745944()
{
  result = qword_27DF15A40;
  if (!qword_27DF15A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A38, &unk_238784418);
    sub_2385A8F14();
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15A40);
  }

  return result;
}

uint64_t objectdestroy_17Tm_0()
{
  v1 = type metadata accessor for ReturnDetailsContentsSection(0);
  v43 = *(*(v1 - 1) + 80);
  v41 = *(*(v1 - 1) + 64);
  v42 = (v43 + 16) & ~v43;
  v44 = v0;
  v2 = v0 + v42;
  v3 = *(v0 + v42 + 8);

  v4 = type metadata accessor for MerchantImage.ViewModel(0);
  v5 = *(v4 + 20);
  v6 = sub_23875AF90();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *(v2 + *(v4 + 24) + 8);

  v8 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v9 = sub_23875BC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v12 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v13 = v2 + v12[5];
  v14 = sub_23875AD40();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v16 = *(v15 + 20);
  if (!v11(v13 + v16, 1, v9))
  {
    (*(v10 + 8))(v13 + v16, v9);
  }

  v17 = v13 + *(v15 + 24);
  v18 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *(v17 + 8);

      v23 = *(v17 + 24);

      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v25 = sub_23875AD80();
      (*(*(v25 - 8) + 8))(v17 + v24, v25);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v20 = *(v17 + 8);

      v21 = *(v17 + 24);
    }
  }

  v26 = *(v2 + v12[6] + 8);

  v27 = *(v2 + v12[7] + 8);

  v28 = *(v2 + v12[8] + 8);

  v29 = *(v2 + v12[9] + 8);

  v30 = *(v2 + v12[10] + 8);

  v31 = *(v2 + v12[11]);

  v32 = (v2 + v1[5]);
  v33 = *v32;

  v34 = v32[1];

  v35 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = sub_23875C880();
    (*(*(v36 - 8) + 8))(v2 + v35, v36);
  }

  else
  {
    v37 = *(v2 + v35);
  }

  v38 = (v41 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_2385A9698(*(v2 + v1[7]), *(v2 + v1[7] + 8));
  v39 = *(v44 + v38 + 8);

  return MEMORY[0x2821FE8E8](v44, v38 + 16, v43 | 7);
}

void sub_238745E98()
{
  v1 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  sub_238744E8C(v0 + v2);
}

uint64_t sub_238745F2C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_238745F70(uint64_t a1)
{
  v2 = type metadata accessor for ReturnDetailsStatusLabel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_238745FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a2)
  {

    a5(a4);
  }
}

uint64_t sub_238746024()
{
  v1 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  return sub_238743718(v0 + v2, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_37()
{
  v1 = type metadata accessor for ReturnDetailsContentsSection(0);
  v41 = *(*(v1 - 1) + 80);
  v39 = *(*(v1 - 1) + 64);
  v40 = (v41 + 16) & ~v41;
  v42 = v0;
  v2 = v0 + v40;
  v3 = *(v0 + v40 + 8);

  v4 = type metadata accessor for MerchantImage.ViewModel(0);
  v5 = *(v4 + 20);
  v6 = sub_23875AF90();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = *(v2 + *(v4 + 24) + 8);

  v8 = *(type metadata accessor for ReturnDetailsHeader.ViewModel(0) + 20);
  v9 = sub_23875BC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v2 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v8, v9);
  }

  v12 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v13 = v2 + v12[5];
  v14 = sub_23875AD40();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = type metadata accessor for ReturnDetailsStatusLabel.ViewModel(0);
  v16 = *(v15 + 20);
  if (!v11(v13 + v16, 1, v9))
  {
    (*(v10 + 8))(v13 + v16, v9);
  }

  v17 = v13 + *(v15 + 24);
  v18 = type metadata accessor for OrderDetailsNote(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *(v17 + 8);

      v23 = *(v17 + 24);

      v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D610, &qword_238772930) + 64);
      v25 = sub_23875AD80();
      (*(*(v25 - 8) + 8))(v17 + v24, v25);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v20 = *(v17 + 8);

      v21 = *(v17 + 24);
    }
  }

  v26 = *(v2 + v12[6] + 8);

  v27 = *(v2 + v12[7] + 8);

  v28 = *(v2 + v12[8] + 8);

  v29 = *(v2 + v12[9] + 8);

  v30 = *(v2 + v12[10] + 8);

  v31 = *(v2 + v12[11]);

  v32 = (v2 + v1[5]);
  v33 = *v32;

  v34 = v32[1];

  v35 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = sub_23875C880();
    (*(*(v36 - 8) + 8))(v2 + v35, v36);
  }

  else
  {
    v37 = *(v2 + v35);
  }

  sub_2385A9698(*(v2 + v1[7]), *(v2 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v42, v40 + v39, v41 | 7);
}

uint64_t sub_2387464D0(uint64_t a1, __int128 *a2)
{
  v5 = *(type metadata accessor for ReturnDetailsContentsSection(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2387438F8(a1, a2, v6);
}

uint64_t sub_238746550(void *a1, void *a2)
{
  v4 = sub_23875BC40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v18)
  {
    goto LABEL_53;
  }

  v19 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](a1 + *(v19 + 20), a2 + *(v19 + 20)) & 1) == 0)
  {
    goto LABEL_53;
  }

  v20 = *(v19 + 24);
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v21 == *v23 && v22 == v23[1];
  if (!v24 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_53;
  }

  v25 = type metadata accessor for ReturnDetailsHeader.ViewModel(0);
  v26 = a1;
  v27 = v5;
  v28 = *(v25 + 20);
  v29 = *(v13 + 48);
  v62 = v26;
  sub_23843981C(v26 + v28, v16, &qword_27DF12E00, &unk_238763FC0);
  v63 = a2;
  sub_23843981C(a2 + v28, &v16[v29], &qword_27DF12E00, &unk_238763FC0);
  v30 = *(v27 + 48);
  if (v30(v16, 1, v4) == 1)
  {
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
      goto LABEL_21;
    }

LABEL_19:
    sub_238439884(v16, &qword_27DF0DC30, &unk_23876E260);
    goto LABEL_53;
  }

  sub_23843981C(v16, v12, &qword_27DF12E00, &unk_238763FC0);
  if (v30(&v16[v29], 1, v4) == 1)
  {
    (*(v27 + 8))(v12, v4);
    goto LABEL_19;
  }

  (*(v27 + 32))(v8, &v16[v29], v4);
  sub_238746AA8(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  v31 = sub_23875E9E0();
  v32 = *(v27 + 8);
  v32(v8, v4);
  v32(v12, v4);
  sub_238439884(v16, &qword_27DF12E00, &unk_238763FC0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_21:
  v33 = type metadata accessor for ReturnDetailsContentsSection.ViewModel(0);
  v35 = v62;
  v34 = v63;
  if (!sub_23869B4C4(v62 + v33[5], v63 + v33[5]))
  {
    goto LABEL_53;
  }

  v36 = v33[6];
  v37 = (v35 + v36);
  v38 = *(v35 + v36 + 8);
  v39 = (v34 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40 || (*v37 != *v39 || v38 != v40) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v40)
  {
    goto LABEL_53;
  }

  v41 = v33[7];
  v42 = (v35 + v41);
  v43 = *(v35 + v41 + 8);
  v44 = (v34 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45 || (*v42 != *v44 || v43 != v45) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v45)
  {
    goto LABEL_53;
  }

  v46 = v33[8];
  v47 = *(v35 + v46);
  v48 = *(v35 + v46 + 8);
  v49 = (v34 + v46);
  if ((v47 != *v49 || v48 != v49[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_53;
  }

  v50 = v33[9];
  v51 = (v35 + v50);
  v52 = *(v35 + v50 + 8);
  v53 = (v34 + v50);
  v54 = v53[1];
  if (v52)
  {
    if (!v54 || (*v51 != *v53 || v52 != v54) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (v54)
  {
    goto LABEL_53;
  }

  v55 = v33[10];
  v56 = (v35 + v55);
  v57 = *(v35 + v55 + 8);
  v58 = (v34 + v55);
  v59 = v58[1];
  if (v57)
  {
    if (v59 && (*v56 == *v58 && v57 == v59 || (sub_23875F630() & 1) != 0))
    {
      goto LABEL_51;
    }

LABEL_53:
    v60 = 0;
    return v60 & 1;
  }

  if (v59)
  {
    goto LABEL_53;
  }

LABEL_51:
  v60 = sub_238518CAC(*(v35 + v33[11]), *(v34 + v33[11]));
  return v60 & 1;
}

uint64_t sub_238746AA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s6MediumVMa()
{
  result = qword_2814F0F68;
  if (!qword_2814F0F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_238746B80@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A60, &qword_238784490);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  sub_238746CCC(*(*v1 + 16) == 1, v1, v11 - v5);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v6, a1, &qword_27DF15A60, &qword_238784490);
  v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A68, &qword_238784498) + 36);
  v8 = v11[5];
  *(v7 + 64) = v11[4];
  *(v7 + 80) = v8;
  *(v7 + 96) = v11[6];
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 16) = v9;
  result = v11[3];
  *(v7 + 32) = v11[2];
  *(v7 + 48) = result;
  return result;
}

uint64_t sub_238746CCC@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(v46) = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A70, &qword_2387844A0);
  v5 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A78, &qword_2387844A8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - v10;
  v11 = _s6MediumVMa();
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v44 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A80, &qword_2387844B0);
  v19 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A88, &qword_2387844B8);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v48 = &v40 - v27;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v46)
  {
    v41 = a2;
    v42 = v8;
    v46 = a3;
    v28 = *a2;
    v29 = *(v28 + 16);
    v30 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
    v31 = *(v30 - 8);
    if (v29)
    {
      sub_23874B6D4(v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v18, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
      (*(v31 + 56))(v18, 0, 1, v30);
    }

    else
    {
      (*(v31 + 56))(v18, 1, 1, v30);
    }

    v34 = v44;
    sub_2384396E4(v18, v44, &qword_27DF0AC58, &qword_238766B88);
    v35 = v45;
    sub_23874B6D4(v41, v45, _s6MediumVMa);
    v36 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v37 = swift_allocObject();
    sub_23874B8CC(v35, v37 + v36, _s6MediumVMa);
    type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
    (*(v31 + 56))(v21, 1, 1, v30);
    sub_2384895F4(v34, v21);
    v38 = &v21[*(v49 + 36)];
    *v38 = sub_23874B654;
    v38[1] = v37;
    sub_2384396E4(v21, v24, &qword_27DF15A80, &qword_2387844B0);
    sub_23843981C(v24, v50, &qword_27DF15A80, &qword_2387844B0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15A98, &qword_27DF15A80, &qword_2387844B0);
    sub_23843A3E8(&qword_27DF15AA0, &qword_27DF15A70, &qword_2387844A0);
    v33 = v48;
    sub_23875D1B0();
    sub_238439884(v24, &qword_27DF15A80, &qword_2387844B0);
    a3 = v46;
  }

  else
  {
    *v7 = sub_23875D030();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15A90, &qword_2387844C0);
    sub_238748774(a2, &v7[*(v32 + 44)]);
    sub_23843981C(v7, v50, &qword_27DF15A70, &qword_2387844A0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15A98, &qword_27DF15A80, &qword_2387844B0);
    sub_23843A3E8(&qword_27DF15AA0, &qword_27DF15A70, &qword_2387844A0);
    v33 = v48;
    sub_23875D1B0();
    sub_238439884(v7, &qword_27DF15A70, &qword_2387844A0);
  }

  sub_2384396E4(v33, a3, &qword_27DF15A88, &qword_2387844B8);
}

__n128 sub_238747370@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AA8, &qword_2387844C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - v8;
  *v9 = sub_23875CE50();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AB0, &qword_2387844D0);
  sub_2387474D8(a1, a2, &v9[*(v10 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v9, a3, &qword_27DF15AA8, &qword_2387844C8);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AB8, &qword_2387844D8) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_2387474D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AC0, &qword_2387844E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AC8, &qword_2387844E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v19 = sub_23875D030();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AD0, &qword_2387844F0);
  sub_2387477A4(a1, &v19[*(v20 + 44)]);
  *v12 = sub_23875D020();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AD8, &qword_2387844F8);
  sub_2387484B0(a1, a2, &v12[*(v21 + 44)]);
  sub_23843981C(v19, v16, &qword_27DF15AC8, &qword_2387844E8);
  sub_23843981C(v12, v9, &qword_27DF15AC0, &qword_2387844E0);
  sub_23843981C(v16, a3, &qword_27DF15AC8, &qword_2387844E8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AE0, &qword_238784500);
  v23 = a3 + *(v22 + 48);
  *v23 = 0x4024000000000000;
  *(v23 + 8) = 0;
  sub_23843981C(v9, a3 + *(v22 + 64), &qword_27DF15AC0, &qword_2387844E0);
  sub_238439884(v12, &qword_27DF15AC0, &qword_2387844E0);
  sub_238439884(v19, &qword_27DF15AC8, &qword_2387844E8);
  sub_238439884(v9, &qword_27DF15AC0, &qword_2387844E0);
  sub_238439884(v16, &qword_27DF15AC8, &qword_2387844E8);
}

uint64_t sub_2387477A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  v3 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v137 = &v126 - v4;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  v5 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v145 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = &v126 - v8;
  MEMORY[0x28223BE20](v9);
  v147 = &v126 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v126 - v13;
  v15 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v140 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v18 = *(*(v142 - 1) + 64);
  MEMORY[0x28223BE20](v142);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v132 = &v126 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v126 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v126 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v126 - v30;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  v32 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v129 = &v126 - v33;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  v34 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v144 = &v126 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v126 = &v126 - v37;
  MEMORY[0x28223BE20](v38);
  v146 = &v126 - v39;
  sub_23875ED50();
  v138 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874B6D4(a1, v31, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v141 = v21;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v31;
    v42 = v140;
    sub_23874B8CC(v41, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v44 = *(v42 + 80);
    v43 = *(v42 + 88);

    v45 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v46 = v42;
  }

  else
  {
    sub_23874B8CC(v31, v20, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v47 = &v20[v142[8]];
    v44 = *v47;
    v43 = *(v47 + 1);

    v45 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v46 = v20;
  }

  sub_23874B86C(v46, v45);
  v157 = v44;
  v158 = v43;
  v131 = sub_2384397A8();
  v48 = sub_23875DAA0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_23874B6D4(a1, v28, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v55 = swift_getEnumCaseMultiPayload();
  v143 = a1;
  v133 = v20;
  if (v55 == 1)
  {
    v56 = v140;
    sub_23874B8CC(v28, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v57 = *(v56 + 96);

    v58 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
    v59 = v56;
  }

  else
  {
    sub_23874B8CC(v28, v20, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v57 = *&v20[v142[9]];

    v58 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
    v59 = v20;
  }

  sub_23874B86C(v59, v58);
  v157 = v48;
  v158 = v50;
  LOBYTE(v159) = v52 & 1;
  v160 = v54;
  sub_23875D890();
  sub_23875DAF0();
  *&v14[*(v11 + 36)] = v57;
  sub_238489664();

  v60 = v129;
  sub_23875DAB0();
  sub_2384397FC(v48, v50, v52 & 1);

  sub_238439884(v14, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath();
  v62 = &v60[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36)];
  *v62 = KeyPath;
  *(v62 + 1) = 1;
  v62[16] = 0;
  v63 = swift_getKeyPath();
  v64 = &v60[*(v127 + 36)];
  *v64 = v63;
  v64[8] = 1;
  v65 = sub_23875D8F0();
  v66 = swift_getKeyPath();
  v67 = v60;
  v68 = v126;
  sub_2384396E4(v67, v126, &qword_27DF0ACA8, &qword_238766C00);
  v69 = (v68 + *(v128 + 36));
  *v69 = v66;
  v69[1] = v65;
  sub_2384396E4(v68, v146, &qword_27DF0ACB0, &qword_238766C08);
  v70 = v130;
  sub_23874B6D4(v143, v130, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v71 = v140;
    sub_23874B8CC(v70, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v73 = *(v71 + 32);
    v72 = *(v71 + 40);

    v74 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v71 = v133;
    sub_23874B8CC(v70, v133, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v75 = (v71 + v142[7]);
    v73 = *v75;
    v72 = v75[1];

    v74 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v71, v74);
  v157 = v73;
  v158 = v72;
  v76 = sub_23875DAA0();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v83 = *(v134 + 36);
  v84 = swift_getKeyPath();
  v85 = v137;
  *&v137[v83] = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v85 = v76;
  *(v85 + 8) = v78;
  *(v85 + 16) = v80 & 1;
  *(v85 + 24) = v82;
  v86 = sub_23875D7F0();
  v87 = swift_getKeyPath();
  v88 = v135;
  sub_2384396E4(v85, v135, &qword_27DF0AC90, &qword_238766BE8);
  v89 = (v88 + *(v136 + 36));
  *v89 = v87;
  v89[1] = v86;
  sub_2384396E4(v88, v147, &qword_27DF0AC98, &qword_238766BF0);
  v90 = v132;
  sub_23874B6D4(v143, v132, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v91 = v140;
    sub_23874B8CC(v90, v140, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v93 = *(v91 + 104);
    v92 = *(v91 + 112);

    v94 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v91 = v133;
    sub_23874B8CC(v90, v133, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v95 = (v91 + v142[10]);
    v93 = *v95;
    v92 = v95[1];

    v94 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v91, v94);
  if (v92)
  {
    v157 = v93;
    v158 = v92;
    v96 = sub_23875DAA0();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = swift_getKeyPath();
    v104 = swift_getKeyPath();
    v150 = v100 & 1;
    v149 = 0;
    v105 = sub_23875D440();
    *&v151 = v96;
    *(&v151 + 1) = v98;
    LOBYTE(v152) = v150;
    *(&v152 + 1) = v102;
    *&v153 = v103;
    BYTE8(v153) = 1;
    *&v154 = v104;
    *(&v154 + 1) = 1;
    v106 = v149;
    LOBYTE(v155) = v149;
    v133 = *(&v153 + 1);
    v134 = v152;
    v141 = v98;
    v142 = v96;
    v157 = v96;
    v158 = v98;
    LOBYTE(v159) = v150;
    v140 = v102;
    v160 = v102;
    v161 = v103;
    v136 = v104;
    v137 = v103;
    LOBYTE(v162) = 1;
    v163 = v104;
    v164 = 1;
    v135 = 1;
    LOBYTE(v165) = v149;
    sub_23843981C(&v151, &v148, &qword_27DF15550, &qword_2387836F8);
    sub_238439884(&v157, &qword_27DF15550, &qword_2387836F8);
    v132 = sub_23875D7F0();
    v143 = swift_getKeyPath();
    v92 = v105 << 32;
  }

  else
  {
    v141 = 0;
    v142 = 0;
    v133 = 0;
    v134 = 0;
    v140 = 0;
    v136 = 0;
    v137 = 0;
    v135 = 0;
    v143 = 0;
    v132 = 0;
    v106 = 0;
  }

  v107 = v144;
  sub_23843981C(v146, v144, &qword_27DF0ACB0, &qword_238766C08);
  v108 = v145;
  sub_23843981C(v147, v145, &qword_27DF0AC98, &qword_238766BF0);
  v109 = v92 | v106;
  v131 = v92 | v106;
  v110 = v139;
  sub_23843981C(v107, v139, &qword_27DF0ACB0, &qword_238766C08);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AE8, &qword_2387845C8);
  sub_23843981C(v108, v110 + *(v111 + 48), &qword_27DF0AC98, &qword_238766BF0);
  v112 = v110 + *(v111 + 64);
  v113 = v141;
  v114 = v142;
  *&v151 = v142;
  *(&v151 + 1) = v141;
  v115 = v133;
  v116 = v134;
  v117 = v140;
  *&v152 = v134;
  *(&v152 + 1) = v140;
  v119 = v136;
  v118 = v137;
  *&v153 = v137;
  *(&v153 + 1) = v133;
  v120 = v135;
  *&v154 = v136;
  *(&v154 + 1) = v135;
  *&v155 = v109;
  *(&v155 + 1) = v143;
  v121 = v154;
  v122 = v155;
  *(v112 + 32) = v153;
  *(v112 + 48) = v121;
  v123 = v152;
  *v112 = v151;
  *(v112 + 16) = v123;
  v124 = v132;
  v156 = v132;
  *(v112 + 80) = v132;
  *(v112 + 64) = v122;
  sub_23843981C(&v151, &v157, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v147, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v146, &qword_27DF0ACB0, &qword_238766C08);
  v157 = v114;
  v158 = v113;
  v159 = v116;
  v160 = v117;
  v161 = v118;
  v162 = v115;
  v163 = v119;
  v164 = v120;
  v165 = v131;
  v166 = v143;
  v167 = v124;
  sub_238439884(&v157, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v145, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v144, &qword_27DF0ACB0, &qword_238766C08);
}

uint64_t sub_2387484B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderWidgetImageView();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874B6D4(a1, v8, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v19 = *(v25 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v20 = 40.0;
  if (v19 == 2)
  {
    v20 = 50.0;
  }

  if (v19 == 1)
  {
    v21 = 72.0;
  }

  else
  {
    v21 = v20;
  }

  sub_23874B8CC(v8, v15, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v15[v9[5]] = v21;
  *&v15[v9[6]] = v21;
  *&v15[v9[7]] = 0x4018000000000000;
  sub_23874B8CC(v15, v18, type metadata accessor for OrderWidgetImageView);
  sub_23874B6D4(v18, v12, type metadata accessor for OrderWidgetImageView);
  *a3 = 0;
  *(a3 + 8) = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACD8, &qword_238766CB8);
  sub_23874B6D4(v12, a3 + *(v22 + 48), type metadata accessor for OrderWidgetImageView);
  sub_23874B86C(v18, type metadata accessor for OrderWidgetImageView);
  sub_23874B86C(v12, type metadata accessor for OrderWidgetImageView);
}

uint64_t sub_238748774@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for OrderWidgetMoreTextView();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15558, &qword_238783700);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v43 - v10;
  v44 = _s6MediumVMa();
  v11 = *(v44 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v44);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AF0, &qword_2387845D0);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = *(v49 + 64);
  MEMORY[0x28223BE20](v13);
  v48 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v56 = &v43 - v17;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = *a1;
  if (*(*a1 + 16) >= 2uLL)
  {
    v19 = 2;
  }

  else
  {
    v19 = *(*a1 + 16);
  }

  v20 = *(type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0) - 8);
  v21 = v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v22 = 1;
  v57 = v18;
  v58 = v21;
  v23 = (2 * v19) | 1;
  v59 = 0;
  v60 = v23;
  sub_23874B6D4(a1, &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s6MediumVMa);
  v24 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v25[2] = v18;
  v25[3] = v21;
  v25[4] = 0;
  v25[5] = v23;
  sub_23874B8CC(&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, _s6MediumVMa);
  v46 = v18;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15568, &qword_238783710);
  type metadata accessor for OrderIdentifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15AF8, &qword_2387845D8);
  sub_23843A3E8(&qword_27DF15578, &qword_27DF15568, &qword_238783710);
  sub_23843A3E8(&qword_27DF15B00, &qword_27DF15AF8, &qword_2387845D8);
  sub_2387321F4(&qword_27DF15588, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  sub_23875E380();
  v26 = *(a1 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v27 = v52;
  v28 = v53;
  if (v26 >= 3)
  {
    v29 = v26 - 2;
    v30 = v45;
    v31 = a1 + *(v44 + 28);
    sub_2384D5188(&v45[*(v52 + 20)]);
    *v30 = v29;
    v32 = *(v27 + 24);
    *(v30 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_23874B8CC(v30, v28, type metadata accessor for OrderWidgetMoreTextView);
    v22 = 0;
  }

  (*(v51 + 56))(v28, v22, 1, v27);
  v34 = v48;
  v33 = v49;
  v35 = *(v49 + 16);
  v36 = v56;
  v37 = v50;
  v35(v48, v56, v50);
  v38 = v54;
  sub_23843981C(v28, v54, &qword_27DF15558, &qword_238783700);
  v39 = v55;
  v35(v55, v34, v37);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B08, &qword_2387845E0);
  sub_23843981C(v38, &v39[*(v40 + 48)], &qword_27DF15558, &qword_238783700);

  sub_238439884(v28, &qword_27DF15558, &qword_238783700);
  v41 = *(v33 + 8);
  v41(v36, v37);
  sub_238439884(v38, &qword_27DF15558, &qword_238783700);
  v41(v34, v37);
}

uint64_t sub_238748DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v121 = a5;
  v131 = a4;
  v137 = a3;
  v111 = a2;
  v134 = a6;
  v7 = sub_23875E360();
  v122 = *(v7 - 8);
  v123 = v7;
  v8 = *(v122 + 64);
  MEMORY[0x28223BE20](v7);
  v107 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15598, &qword_238783728);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v125 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v124 = &v105 - v14;
  v15 = _s6MediumVMa();
  v116 = *(v15 - 8);
  v16 = *(v116 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v117 = v17;
  v119 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC58, &qword_238766B88);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v118 = &v105 - v20;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B10, &qword_2387845E8);
  v21 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v120 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v133 = &v105 - v24;
  v25 = type metadata accessor for OrderIdentifier(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v108 = &v105 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155A8, &qword_238783738);
  v29 = *(*(v135 - 8) + 64);
  MEMORY[0x28223BE20](v135);
  v129 = &v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v105 - v32;
  v113 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v132 = *(v113 - 8);
  v34 = v132[8];
  MEMORY[0x28223BE20](v113);
  v106 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v105 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155B0, &qword_238783740);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v128 = &v105 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v126 = &v105 - v43;
  MEMORY[0x28223BE20](v44);
  v127 = (&v105 - v45);
  MEMORY[0x28223BE20](v46);
  v109 = &v105 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = (&v105 - v49);
  MEMORY[0x28223BE20](v51);
  v53 = (&v105 - v52);
  v54 = sub_23875ED50();
  v114 = sub_23875ED40();
  v112 = v54;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v136 = a1;
  sub_2384E6C90(v53);
  v55 = v26;
  v56 = *(v26 + 56);
  v57 = 1;
  result = (v56)(v53, 0, 1, v25);
  v59 = v131 >> 1;
  v131 = v59;
  if (v59 != v137)
  {
    if (v59 <= v137)
    {
      __break(1u);
      goto LABEL_33;
    }

    sub_23874B6D4(v111 + v132[9] * v137, v38, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    sub_2384E6C90(v50);
    sub_23874B86C(v38, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
    v57 = 0;
    v55 = v26;
  }

  v130 = v56;
  v56(v50, v57, 1, v25);
  v60 = *(v135 + 48);
  sub_23843981C(v53, v33, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v50, &v33[v60], &qword_27DF155B0, &qword_238783740);
  v63 = *(v55 + 48);
  v62 = v55 + 48;
  v61 = v63;
  if (v63(v33, 1, v25) == 1)
  {
    sub_238439884(v50, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v53, &qword_27DF155B0, &qword_238783740);
    if (v61(&v33[v60], 1, v25) == 1)
    {
      sub_238439884(v33, &qword_27DF155B0, &qword_238783740);
      v110 = 1;
LABEL_12:
      v65 = v129;
      goto LABEL_14;
    }

LABEL_11:
    sub_238439884(v33, &qword_27DF155A8, &qword_238783738);
    v110 = 0;
    goto LABEL_12;
  }

  v64 = v109;
  sub_23843981C(v33, v109, &qword_27DF155B0, &qword_238783740);
  v105 = v62;
  if (v61(&v33[v60], 1, v25) == 1)
  {
    sub_238439884(v50, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v53, &qword_27DF155B0, &qword_238783740);
    sub_23874B86C(v64, type metadata accessor for OrderIdentifier);
    goto LABEL_11;
  }

  v66 = v108;
  sub_23874B8CC(&v33[v60], v108, type metadata accessor for OrderIdentifier);
  v110 = sub_2384E6F28(v64, v66);
  sub_23874B86C(v66, type metadata accessor for OrderIdentifier);
  sub_238439884(v50, &qword_27DF155B0, &qword_238783740);
  sub_238439884(v53, &qword_27DF155B0, &qword_238783740);
  sub_23874B86C(v64, type metadata accessor for OrderIdentifier);
  sub_238439884(v33, &qword_27DF155B0, &qword_238783740);
  v65 = v129;
LABEL_14:
  v67 = v126;
  v68 = v127;
  sub_2384E6C90(v127);
  v69 = 1;
  v70 = v130;
  result = (v130)(v68, 0, 1, v25);
  v71 = v128;
  if (v131 == v137)
  {
    goto LABEL_17;
  }

  if (v131 <= v137)
  {
LABEL_33:
    __break(1u);
    return result;
  }

  v72 = v106;
  sub_23874B6D4(v111 + v132[9] * (v131 - 1), v106, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  sub_2384E6C90(v67);
  sub_23874B86C(v72, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v69 = 0;
  v70 = v130;
LABEL_17:
  v70(v67, v69, 1, v25);
  v73 = *(v135 + 48);
  sub_23843981C(v68, v65, &qword_27DF155B0, &qword_238783740);
  sub_23843981C(v67, v65 + v73, &qword_27DF155B0, &qword_238783740);
  if (v61(v65, 1, v25) != 1)
  {
    sub_23843981C(v65, v71, &qword_27DF155B0, &qword_238783740);
    if (v61((v65 + v73), 1, v25) != 1)
    {
      v77 = v108;
      sub_23874B8CC(v65 + v73, v108, type metadata accessor for OrderIdentifier);
      v76 = sub_2384E6F28(v71, v77);
      sub_23874B86C(v77, type metadata accessor for OrderIdentifier);
      sub_238439884(v67, &qword_27DF155B0, &qword_238783740);
      sub_238439884(v68, &qword_27DF155B0, &qword_238783740);
      sub_23874B86C(v71, type metadata accessor for OrderIdentifier);
      sub_238439884(v65, &qword_27DF155B0, &qword_238783740);
      v75 = v116;
      goto LABEL_24;
    }

    sub_238439884(v67, &qword_27DF155B0, &qword_238783740);
    sub_238439884(v68, &qword_27DF155B0, &qword_238783740);
    sub_23874B86C(v71, type metadata accessor for OrderIdentifier);
    v75 = v116;
    goto LABEL_22;
  }

  sub_238439884(v67, &qword_27DF155B0, &qword_238783740);
  sub_238439884(v68, &qword_27DF155B0, &qword_238783740);
  v74 = v61((v65 + v73), 1, v25);
  v75 = v116;
  if (v74 != 1)
  {
LABEL_22:
    sub_238439884(v65, &qword_27DF155A8, &qword_238783738);
    v76 = 0;
    goto LABEL_24;
  }

  sub_238439884(v65, &qword_27DF155B0, &qword_238783740);
  v76 = 1;
LABEL_24:
  v78 = sub_23875D020();
  v79 = v134;
  *v134 = v78;
  v79[1] = 0;
  *(v79 + 16) = 1;
  v137 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v80 = v118;
  sub_23874B6D4(v136, v118, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v81 = v132[7];
  v82 = v113;
  v81(v80, 0, 1, v113);
  v83 = v121;
  v84 = v119;
  sub_23874B6D4(v121, v119, _s6MediumVMa);
  v85 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v86 = v85 + v117;
  v87 = swift_allocObject();
  sub_23874B8CC(v84, v87 + v85, _s6MediumVMa);
  v88 = (v87 + v86);
  *v88 = v110 & 1;
  v89 = v76 & 1;
  v88[1] = v89;
  v90 = v133;
  v81(v133, 1, 1, v82);
  sub_2384895F4(v80, v90);
  v91 = (v90 + *(v115 + 36));
  *v91 = sub_23874B7C4;
  v91[1] = v87;
  v92 = type metadata accessor for OrderWidgetTimelineEntry(0);
  v93 = 1;
  if (*(v83 + *(v92 + 24)) < 3)
  {
    v94 = v89;
  }

  else
  {
    v94 = 0;
  }

  v96 = v122;
  v95 = v123;
  v97 = v124;
  if ((v94 & 1) == 0)
  {
    v98 = v107;
    sub_23875E350();
    (*(v96 + 32))(v97, v98, v95);
    v93 = 0;
  }

  (*(v96 + 56))(v97, v93, 1, v95);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B18, &qword_2387845F0);
  v100 = v133;
  v101 = v134 + *(v99 + 44);
  v102 = v120;
  sub_23843981C(v133, v120, &qword_27DF15B10, &qword_2387845E8);
  v103 = v125;
  sub_23843981C(v97, v125, &qword_27DF15598, &qword_238783728);
  sub_23843981C(v102, v101, &qword_27DF15B10, &qword_2387845E8);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B20, &qword_2387845F8);
  sub_23843981C(v103, v101 + *(v104 + 48), &qword_27DF15598, &qword_238783728);
  sub_238439884(v97, &qword_27DF15598, &qword_238783728);
  sub_238439884(v100, &qword_27DF15B10, &qword_2387845E8);
  sub_238439884(v103, &qword_27DF15598, &qword_238783728);
  sub_238439884(v102, &qword_27DF15B10, &qword_2387845E8);
}

uint64_t sub_238749CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v74 = a4;
  LODWORD(v80) = a3;
  v82 = a5;
  v7 = sub_23875C880();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  v13 = sub_23875CDB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B28, &qword_238784600);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B30, &qword_238784608);
  v23 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v84 = &v72 - v24;
  v83 = *(a2 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v25 = v83 > 2;
  *v22 = sub_23875CE60();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B38, &qword_238784610);
  sub_23874A37C(a1, v25, a2, &v22[*(v26 + 44)]);
  LOBYTE(a1) = sub_23875D790();
  sub_23875C3D0();
  v27 = &v22[*(v19 + 44)];
  *v27 = a1;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v79 = sub_23875D790();
  v75 = _s6MediumVMa();
  v32 = *(v75 + 24);
  v78 = a2;
  v33 = a2 + v32;
  v34 = *v33;
  v35 = *(v33 + 8);
  if (v35 == 1)
  {
    v36 = *v33;
  }

  else
  {
    v37 = *v33;

    sub_23875EFF0();
    v38 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v34, 0);
    (*(v14 + 8))(v17, v13);
    LOBYTE(v36) = v86;
  }

  v39 = v84;
  if (!(v80 & 1 | ((v36 & 1) == 0)) && v83 >= 3)
  {
    v40 = *(v75 + 20);
    v80 = v14;
    v73 = v13;
    v41 = v35;
    v42 = v17;
    sub_2384D5138(v12);
    v44 = v76;
    v43 = v77;
    (*(v77 + 104))(v76, *MEMORY[0x277CDFA00], v7);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
    sub_23875E9B0();
    v45 = *(v43 + 8);
    v45(v44, v7);
    v45(v12, v7);
    v39 = v84;
    v17 = v42;
    v35 = v41;
    v13 = v73;
    v14 = v80;
  }

  sub_23875C3D0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_2384396E4(v22, v39, &qword_27DF15B28, &qword_238784600);
  v54 = v39 + *(v81 + 36);
  *v54 = v79;
  *(v54 + 8) = v47;
  *(v54 + 16) = v49;
  *(v54 + 24) = v51;
  *(v54 + 32) = v53;
  *(v54 + 40) = 0;
  v55 = sub_23875D7A0();
  if (v35)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {

    sub_23875EFF0();
    v56 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v34, 0);
    (*(v14 + 8))(v17, v13);
    if (v85 != 1)
    {
      goto LABEL_13;
    }
  }

  if (v83 > 2)
  {
    v57 = v78 + *(v75 + 20);
    sub_2384D5138(v12);
    v59 = v76;
    v58 = v77;
    (*(v77 + 104))(v76, *MEMORY[0x277CDFA00], v7);
    sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
    sub_23875E9B0();
    v60 = *(v58 + 8);
    v60(v59, v7);
    v60(v12, v7);
  }

LABEL_13:
  sub_23875C3D0();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v69 = v82;
  sub_2384396E4(v39, v82, &qword_27DF15B30, &qword_238784608);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B40, &qword_238784618);
  v71 = v69 + *(result + 36);
  *v71 = v55;
  *(v71 + 8) = v62;
  *(v71 + 16) = v64;
  *(v71 + 24) = v66;
  *(v71 + 32) = v68;
  *(v71 + 40) = 0;
  return result;
}

uint64_t sub_23874A37C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v36 = a2;
  v39 = a4;
  v5 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for OrderWidgetImageView();
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v35[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v35[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F0, &qword_238783780);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v35[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v25 = &v35[-v24];
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v25 = sub_23875D030();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF155F8, &qword_238783788);
  v27 = v37;
  sub_23874A758(a1, v36 & 1, v37, &v25[*(v26 + 44)]);
  sub_23874B6D4(a1, v8, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  v28 = *(v27 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24));
  v29 = 40.0;
  if (v28 == 2)
  {
    v29 = 50.0;
  }

  if (v28 == 1)
  {
    v30 = 72.0;
  }

  else
  {
    v30 = v29;
  }

  sub_23874B8CC(v8, v15, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  *&v15[v9[5]] = v30;
  *&v15[v9[6]] = v30;
  *&v15[v9[7]] = 0x4018000000000000;
  sub_23874B8CC(v15, v18, type metadata accessor for OrderWidgetImageView);
  sub_23843981C(v25, v22, &qword_27DF155F0, &qword_238783780);
  sub_23874B6D4(v18, v12, type metadata accessor for OrderWidgetImageView);
  v31 = v39;
  sub_23843981C(v22, v39, &qword_27DF155F0, &qword_238783780);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B48, &qword_238784620);
  v33 = v31 + *(v32 + 48);
  *v33 = 0x4024000000000000;
  *(v33 + 8) = 0;
  sub_23874B6D4(v12, v31 + *(v32 + 64), type metadata accessor for OrderWidgetImageView);
  sub_23874B86C(v18, type metadata accessor for OrderWidgetImageView);
  sub_238439884(v25, &qword_27DF155F0, &qword_238783780);
  sub_23874B86C(v12, type metadata accessor for OrderWidgetImageView);
  sub_238439884(v22, &qword_27DF155F0, &qword_238783780);
}

uint64_t sub_23874A758@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v156 = a4;
  v6 = sub_23875C880();
  v150 = *(v6 - 8);
  v151 = v6;
  v7 = *(v150 + 64);
  MEMORY[0x28223BE20](v6);
  v149 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v148 = &v139 - v10;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC90, &qword_238766BE8);
  v11 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v146 = &v139 - v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AC98, &qword_238766BF0);
  v13 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v163 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v144 = &v139 - v16;
  MEMORY[0x28223BE20](v17);
  v165 = &v139 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA0, &qword_238766BF8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v139 - v21;
  v23 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v161 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v26 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v160 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData(0);
  v28 = *(*(v166 - 8) + 64);
  MEMORY[0x28223BE20](v166);
  v147 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v142 = &v139 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v139 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v139 - v36;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACA8, &qword_238766C00);
  v38 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v158 = &v139 - v39;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACB0, &qword_238766C08);
  v40 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v162 = &v139 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v140 = &v139 - v43;
  MEMORY[0x28223BE20](v44);
  v164 = &v139 - v45;
  sub_23875ED50();
  v154 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874B6D4(a1, v37, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v161;
    sub_23874B8CC(v37, v161, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v48 = *(v46 + 80);
    v47 = *(v46 + 88);

    v49 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v46 = v160;
    sub_23874B8CC(v37, v160, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v50 = (v46 + *(v159 + 32));
    v48 = *v50;
    v47 = v50[1];

    v49 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v46, v49);
  v176 = v48;
  v177 = v47;
  v157 = sub_2384397A8();
  v51 = sub_23875DAA0();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  sub_23874B6D4(a1, v34, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  LODWORD(v155) = a2;
  v153 = a1;
  if (EnumCaseMultiPayload == 1)
  {
    v59 = v161;
    sub_23874B8CC(v34, v161, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v60 = *(v59 + 96);

    v61 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v59 = v160;
    sub_23874B8CC(v34, v160, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v60 = *(v59 + *(v159 + 36));

    v61 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v59, v61);
  v176 = v51;
  v177 = v53;
  LOBYTE(v178) = v55 & 1;
  v179 = v57;
  sub_23875D890();
  sub_23875DAF0();
  *&v22[*(v19 + 36)] = v60;
  sub_238489664();

  v62 = v158;
  sub_23875DAB0();
  sub_2384397FC(v51, v53, v55 & 1);

  sub_238439884(v22, &qword_27DF0ACA0, &qword_238766BF8);
  KeyPath = swift_getKeyPath();
  v64 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0ACC0, &qword_238766C40) + 36);
  *v64 = KeyPath;
  *(v64 + 8) = 1;
  *(v64 + 16) = 0;
  v65 = swift_getKeyPath();
  v66 = v62 + *(v139 + 36);
  *v66 = v65;
  *(v66 + 8) = 1;
  v67 = v155;
  if (v155)
  {
    v68 = sub_23875D970();
  }

  else
  {
    v68 = sub_23875D7F0();
  }

  v69 = v68;
  v70 = v153;
  v71 = v146;
  v72 = swift_getKeyPath();
  v73 = v140;
  sub_2384396E4(v158, v140, &qword_27DF0ACA8, &qword_238766C00);
  v74 = (v73 + *(v141 + 36));
  *v74 = v72;
  v74[1] = v69;
  sub_2384396E4(v73, v164, &qword_27DF0ACB0, &qword_238766C08);
  v75 = v142;
  sub_23874B6D4(v70, v142, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v76 = v161;
    sub_23874B8CC(v75, v161, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v78 = *(v76 + 32);
    v77 = *(v76 + 40);

    v79 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v76 = v160;
    sub_23874B8CC(v75, v160, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v80 = (v76 + *(v159 + 28));
    v78 = *v80;
    v77 = v80[1];

    v79 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v76, v79);
  v176 = v78;
  v177 = v77;
  v81 = sub_23875DAA0();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v88 = *(v143 + 36);
  *(v71 + v88) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *v71 = v81;
  *(v71 + 8) = v83;
  *(v71 + 16) = v85 & 1;
  *(v71 + 24) = v87;
  if (v67)
  {
    v89 = sub_23875D960();
  }

  else
  {
    v89 = sub_23875D930();
  }

  v90 = v89;
  v91 = v152;
  v92 = swift_getKeyPath();
  v93 = v144;
  sub_2384396E4(v71, v144, &qword_27DF0AC90, &qword_238766BE8);
  v94 = (v93 + *(v145 + 36));
  *v94 = v92;
  v94[1] = v90;
  sub_2384396E4(v93, v165, &qword_27DF0AC98, &qword_238766BF0);
  v95 = v91 + *(_s6MediumVMa() + 20);
  v96 = v148;
  sub_2384D5138(v148);
  v98 = v149;
  v97 = v150;
  v99 = v151;
  (*(v150 + 104))(v149, *MEMORY[0x277CDFA00], v151);
  sub_2387321F4(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v95) = sub_23875E9B0();
  v100 = *(v97 + 8);
  v100(v98, v99);
  v100(v96, v99);
  v101 = (v95 & 1) != 0 || *(v91 + *(type metadata accessor for OrderWidgetTimelineEntry(0) + 24)) > 2;
  v102 = v147;
  sub_23874B6D4(v70, v147, type metadata accessor for OrderWidgetTimelineEntry.WidgetOrderData);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v103 = v161;
    sub_23874B8CC(v102, v161, type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData);
    v105 = *(v103 + 104);
    v104 = *(v103 + 112);

    v106 = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData;
  }

  else
  {
    v103 = v160;
    sub_23874B8CC(v102, v160, type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData);
    v107 = (v103 + *(v159 + 40));
    v105 = *v107;
    v104 = v107[1];

    v106 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData;
  }

  sub_23874B86C(v103, v106);
  if (!v104)
  {
    goto LABEL_27;
  }

  if (v101)
  {

LABEL_27:
    v151 = 0;
    v152 = 0;
    v155 = 0;
    v158 = 0;
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v153 = 0;
    v166 = 0;
    v157 = 0;
    v108 = 0;
    v109 = 0;
    goto LABEL_32;
  }

  v176 = v105;
  v177 = v104;
  v110 = sub_23875DAA0();
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = v67;
  v118 = swift_getKeyPath();
  v119 = swift_getKeyPath();
  v169 = v114 & 1;
  v168 = 0;
  v120 = sub_23875D440();
  *&v170 = v110;
  *(&v170 + 1) = v112;
  LOBYTE(v171) = v169;
  *(&v171 + 1) = v116;
  *&v172 = v118;
  BYTE8(v172) = 1;
  *&v173 = v119;
  *(&v173 + 1) = 1;
  v108 = v168;
  LOBYTE(v174) = v168;
  v158 = v171;
  v166 = *(&v172 + 1);
  v151 = v110;
  v176 = v110;
  v177 = v112;
  LOBYTE(v178) = v169;
  v179 = v116;
  v180 = v118;
  LOBYTE(v181) = 1;
  v182 = v119;
  v183 = 1;
  LOBYTE(v184) = v168;
  sub_23843981C(&v170, &v167, &qword_27DF15550, &qword_2387836F8);
  sub_238439884(&v176, &qword_27DF15550, &qword_2387836F8);
  if (v117)
  {
    v121 = sub_23875D960();
  }

  else
  {
    v121 = sub_23875D930();
  }

  v152 = v121;
  v161 = v116;
  v157 = swift_getKeyPath();
  v109 = v120 << 32;
  v155 = v112;
  v153 = v118;
  v159 = 1;
  v160 = v119;
LABEL_32:
  v122 = v162;
  sub_23843981C(v164, v162, &qword_27DF0ACB0, &qword_238766C08);
  v123 = v163;
  sub_23843981C(v165, v163, &qword_27DF0AC98, &qword_238766BF0);
  v124 = v109 | v108;
  v150 = v109 | v108;
  v125 = v156;
  sub_23843981C(v122, v156, &qword_27DF0ACB0, &qword_238766C08);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15618, &qword_2387837A8);
  sub_23843981C(v123, v125 + v126[12], &qword_27DF0AC98, &qword_238766BF0);
  v127 = v125 + v126[16];
  v128 = v151;
  v129 = v155;
  *&v170 = v151;
  *(&v170 + 1) = v155;
  v131 = v157;
  v130 = v158;
  *&v171 = v158;
  *(&v171 + 1) = v161;
  v132 = v153;
  *&v172 = v153;
  *(&v172 + 1) = v166;
  *&v173 = v160;
  *(&v173 + 1) = v159;
  *&v174 = v124;
  *(&v174 + 1) = v157;
  v133 = v173;
  v134 = v174;
  *(v127 + 32) = v172;
  *(v127 + 48) = v133;
  v135 = v171;
  *v127 = v170;
  *(v127 + 16) = v135;
  v136 = v152;
  v175 = v152;
  *(v127 + 80) = v152;
  *(v127 + 64) = v134;
  v137 = v125 + v126[20];
  *v137 = 0;
  *(v137 + 8) = 0;
  sub_23843981C(&v170, &v176, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v165, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v164, &qword_27DF0ACB0, &qword_238766C08);
  v176 = v128;
  v177 = v129;
  v178 = v130;
  v179 = v161;
  v180 = v132;
  v181 = v166;
  v182 = v160;
  v183 = v159;
  v184 = v150;
  v185 = v131;
  v186 = v136;
  sub_238439884(&v176, &qword_27DF15620, &qword_2387837B0);
  sub_238439884(v163, &qword_27DF0AC98, &qword_238766BF0);
  sub_238439884(v162, &qword_27DF0ACB0, &qword_238766C08);
}

double sub_23874B654@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s6MediumVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_238747370(a1, v6, a2).n128_u64[0];
  return result;
}

uint64_t sub_23874B6D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23874B73C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(_s6MediumVMa() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_238748DD8(a1, v7, v8, v9, v10, a2);
}

uint64_t sub_23874B7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s6MediumVMa() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = (v6 + *(v5 + 64));
  v8 = *v7;
  v9 = v7[1];

  return sub_238749CB0(a1, v6, v8, v9, a2);
}

uint64_t sub_23874B86C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23874B8CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23874B934()
{
  result = qword_27DF15B50;
  if (!qword_27DF15B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A68, &qword_238784498);
    sub_23874B9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15B50);
  }

  return result;
}

unint64_t sub_23874B9C0()
{
  result = qword_27DF15B58;
  if (!qword_27DF15B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A60, &qword_238784490);
    sub_23874BA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15B58);
  }

  return result;
}

unint64_t sub_23874BA44()
{
  result = qword_27DF15B60;
  if (!qword_27DF15B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15A88, &qword_2387844B8);
    sub_23843A3E8(&qword_27DF15A98, &qword_27DF15A80, &qword_2387844B0);
    sub_23843A3E8(&qword_27DF15AA0, &qword_27DF15A70, &qword_2387844A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15B60);
  }

  return result;
}

uint64_t sub_23874BB28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v75 = a3;
  v76 = a4;
  v77 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v14 = *(v13 - 8);
  v67 = v13;
  v68 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v74 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v72 = &v62 - v24;
  MEMORY[0x28223BE20](v25);
  v70 = &v62 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  sub_23875ED50();
  v69 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v30 = qword_2814F1B90;
  v31 = sub_23875EA50();
  v32 = sub_23875EA50();
  v33 = sub_23875EA50();
  v66 = v30;
  v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

  v35 = sub_23875EA80();
  v37 = v36;

  v78 = v35;
  v79 = v37;
  sub_23875C3B0();
  v38 = sub_23875C3C0();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v64 = v39 + 56;
  v65 = v40;
  v40(v12, 0, 1, v38);
  if (a1)
  {
    v41 = swift_allocObject();
    *(v41 + 16) = a1;
    *(v41 + 24) = a2;
    v42 = sub_2386728DC;
  }

  else
  {
    v42 = sub_23874C1D0;
    v41 = 0;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v41;
  sub_238455C54(a1);
  sub_2384397A8();
  sub_23875E220();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  v44 = v67;
  sub_23875DE00();
  v63 = v29;
  v45 = *(v68 + 8);
  v45(v19, v44);
  v46 = sub_23875EA50();
  v47 = sub_23875EA50();
  v48 = sub_23875EA50();
  v49 = [v66 localizedStringForKey:v46 value:v47 table:v48];

  v50 = sub_23875EA80();
  v52 = v51;

  v78 = v50;
  v79 = v52;
  v53 = v73;
  sub_23875C390();
  v65(v53, 0, 1, v38);

  v54 = v71;
  sub_23875E220();
  v55 = v70;
  sub_23875DE00();
  v45(v54, v44);
  v56 = v63;
  v57 = v72;
  sub_23846CE84(v63, v72);
  v58 = v74;
  sub_23846CE84(v55, v74);
  v59 = v77;
  sub_23846CE84(v57, v77);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B68, &qword_238784628);
  sub_23846CE84(v58, v59 + *(v60 + 48));
  sub_23874C458(v55);
  sub_23874C458(v56);
  sub_23874C458(v58);
  sub_23874C458(v57);
}

uint64_t sub_23874C1D0()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_23874C260@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_23874C430()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23874C458(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A330, &qword_2387655F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23874C508()
{
  sub_2384E115C();
  if (v0 <= 0x3F)
  {
    sub_23846CAFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23874C5E4()
{
  type metadata accessor for OrderActionsMenuContext(319);
  if (v0 <= 0x3F)
  {
    sub_2384E115C();
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

uint64_t sub_23874C69C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v44 = a1;
  v48 = a2;
  v4 = type metadata accessor for ActionsContextMenu(0);
  v5 = v4 - 8;
  v38 = *(v4 - 8);
  v6 = v38[8];
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BA8, &qword_238784758);
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v49 = v2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BB0, &qword_238784760);
  v16 = type metadata accessor for OrderActionsItems(0);
  v17 = sub_23843A3E8(&qword_27DF15BB8, &qword_27DF15BB0, &qword_238784760);
  v18 = sub_23874DB94(&qword_27DF0CC40, type metadata accessor for OrderActionsItems);
  v45 = v14;
  v42 = v15;
  v39 = v17;
  v40 = v16;
  sub_23875DB50();
  v19 = v3 + *(v5 + 28);
  v20 = *v19;
  v43 = *(v19 + 8);
  v44 = v20;
  v41 = *(v19 + 16);
  sub_23874DBDC(v3, v10, type metadata accessor for ActionsContextMenu);
  v21 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v22 = swift_allocObject();
  sub_23874DC44(v10, v22 + v21, type metadata accessor for ActionsContextMenu);
  sub_23874DBDC(v3, v7, type metadata accessor for ActionsContextMenu);
  v23 = swift_allocObject();
  sub_23874DC44(v7, v23 + v21, type metadata accessor for ActionsContextMenu);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v24 = qword_2814F1B90;
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = sub_23875EA50();
  v28 = [v24 localizedStringForKey:v25 value:v26 table:v27];

  v29 = sub_23875EA80();
  v31 = v30;

  v38 = &v37;
  v54 = v29;
  v55 = v31;
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CC48, &unk_23876C048);
  v50 = v42;
  v51 = v40;
  v52 = v39;
  v53 = v18;
  swift_getOpaqueTypeConformance2();
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0CC58, &qword_27DF0CC48, &unk_23876C048);
  v34 = v47;
  v35 = v45;
  sub_23875DEC0();

  (*(v46 + 8))(v35, v34);
}

uint64_t sub_23874CC18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActionsContextMenu(0);
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

  v7 = type metadata accessor for OrderActionsItems(0);
  sub_23874DBDC(a1, a2 + v7[5], type metadata accessor for OrderActionsMenuContext);
  sub_23874DBDC(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActionsContextMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_23874DC44(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ActionsContextMenu);
  v10 = *MEMORY[0x277D38658];
  sub_23875EA80();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_23875EA50();
  [v11 initWithSuiteName_];

  *a2 = sub_23875C370();
  v13 = (a2 + v7[6]);
  *v13 = sub_23874DE7C;
  v13[1] = v9;
  v14 = v7[7];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_23874CE8C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for ActionsContextMenu(0) + 20));
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  return sub_23875E2F0();
}

uint64_t sub_23874CF00(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for ActionsContextMenu(0) + 24);
  sub_2384D5160(v6);
  sub_2384F6B58(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_23874D008@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for ExtractedOrderActionsContextMenu(0);
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B90, &qword_238784718);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v45 - v10;
  v59 = v1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15B98, &qword_238784720);
  v13 = type metadata accessor for ExtractedOrderActionsItems(0);
  v14 = sub_23843A3E8(&qword_27DF15BA0, &qword_27DF15B98, &qword_238784720);
  v15 = sub_23874DB94(&qword_27DF0A308, type metadata accessor for ExtractedOrderActionsItems);
  v55 = v11;
  v50 = v13;
  v51 = v12;
  v49 = v14;
  sub_23875DB50();
  v16 = *(v1 + 48);
  v53 = *(v1 + 56);
  v54 = v16;
  v52 = *(v1 + 64);
  v17 = *(v1 + 24);
  v47 = *(v1 + 32);
  v48 = v17;
  sub_23874DBDC(v1, v7, type metadata accessor for ExtractedOrderActionsContextMenu);
  v18 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v19 = swift_allocObject();
  sub_23874DC44(v7, v19 + v18, type metadata accessor for ExtractedOrderActionsContextMenu);
  sub_23874DBDC(v1, v4, type metadata accessor for ExtractedOrderActionsContextMenu);
  v20 = swift_allocObject();
  sub_23874DC44(v4, v20 + v18, type metadata accessor for ExtractedOrderActionsContextMenu);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v21 = qword_2814F1B90;
  v22 = sub_23875EA50();
  v23 = sub_23875EA50();
  v24 = sub_23875EA50();
  v25 = [v21 localizedStringForKey:v22 value:v23 table:v24];

  v26 = sub_23875EA80();
  v28 = v27;
  v46 = v27;

  v45[2] = v45;
  v64 = v26;
  v65 = v28;
  MEMORY[0x28223BE20](v29);
  v45[-10] = sub_23874D9B8;
  v45[-9] = v19;
  v45[0] = v19;
  v45[1] = v20;
  MEMORY[0x28223BE20](v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A310, &unk_2387655D0);
  v60 = v51;
  v61 = v50;
  v62 = v49;
  v63 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_2384397A8();
  v43 = sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0);
  v44 = MEMORY[0x277CE0BC8];
  v41 = OpaqueTypeConformance2;
  v42 = v33;
  v39 = v31;
  v40 = MEMORY[0x277CE0BD8];
  v38 = MEMORY[0x277D837D0];
  v34 = v57;
  v37 = v57;
  v35 = v55;
  sub_23875DEC0();

  (*(v56 + 8))(v35, v34);
}

uint64_t sub_23874D5D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExtractedOrderActionsContextMenu(0);
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
  sub_23874DBDC(a1, &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ExtractedOrderActionsContextMenu);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_23874DC44(&v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8, type metadata accessor for ExtractedOrderActionsContextMenu);
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
  *(a2 + 56) = sub_23874DB60;
  *(a2 + 64) = v9;
  v14 = *(type metadata accessor for ExtractedOrderActionsItems(0) + 28);
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_23874D848(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  return sub_23875E2F0();
}

uint64_t sub_23874D8A8(__int128 *a1)
{
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v10 = *a1;
  v11[0] = v7;
  *(v11 + 12) = *(a1 + 28);
  v8 = a1 + *(type metadata accessor for ExtractedOrderActionsContextMenu(0) + 24);
  sub_2384D5160(v6);
  sub_238468DB0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t objectdestroy_15Tm()
{
  v1 = (type metadata accessor for ExtractedOrderActionsContextMenu(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 56);

  v10 = v1[8];
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

uint64_t sub_23874DB94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23874DBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23874DC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_25Tm()
{
  v1 = (type metadata accessor for ActionsContextMenu(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(type metadata accessor for OrderActionsMenuContext(0) + 20);
  v7 = sub_23875A710();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = (v0 + v3 + v1[7]);
  v9 = *v8;

  v10 = v8[1];

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C1E0();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23874DEA8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t ImageProcessingUIImplementation.__allocating_init(iconGenerator:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ImageProcessingUIImplementation.init(iconGenerator:)(a1);
  return v2;
}

uint64_t ImageProcessingUIImplementation.init(iconGenerator:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_238758850();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23874E138(a1, &v14);
  if (v15)
  {
    sub_23874E1A8(a1);
    sub_2384347C0(&v14, &v16);
  }

  else
  {
    sub_23874E1A8(&v14);
    v9 = [objc_opt_self() ephemeralSessionConfiguration];
    sub_2387587F0();
    sub_238758840();
    v10 = sub_23875EA50();

    [v9 set:v10 sourceApplicationBundleIdentifier:?];

    v11 = type metadata accessor for MapsTransactionIconGenerator();
    v12 = swift_allocObject();
    *(v12 + 16) = [objc_opt_self() sessionWithConfiguration_];
    v17 = v11;
    v18 = &protocol witness table for MapsTransactionIconGenerator;

    *&v16 = v12;
    sub_23874E1A8(a1);
    (*(v5 + 8))(v8, v4);
  }

  sub_2384347C0(&v16, v2 + 16);
  return v2;
}

uint64_t sub_23874E138(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD70, &qword_23876E660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23874E1A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD70, &qword_23876E660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ImageProcessingUIImplementation.generateIcon(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23874E234, 0, 0);
}

uint64_t sub_23874E234()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_23874E364;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_23874E364()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ImageProcessingUIImplementation.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_23874E4B0(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_23874E4D8, 0, 0);
}

uint64_t sub_23874E4D8()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_23874E608;
  v7 = v0[2];
  v8 = v0[3];

  return v10(v7, v8, v2, v3);
}

uint64_t sub_23874E608()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t static TransactionSearchTokenModel.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v15 = a1[8];
  v16 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v13 = a2[8];
  v14 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0 || (v2 != v8 || v3 != v7) && (sub_23875F630() & 1) == 0 || (sub_23875DFE0() & 1) == 0 || (v5 != v9 || v6 != v11) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t TransactionSearchTokenModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v5 = v0[3];

  MEMORY[0x23EE63650](95, 0xE100000000000000);

  MEMORY[0x23EE63650](v1, v2);

  return v4;
}

uint64_t sub_23874E920(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23874E940, 0, 0);
}

uint64_t sub_23874E940()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = v1;
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}

uint64_t sub_23874E9AC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v7 = v1[3];

  MEMORY[0x23EE63650](95, 0xE100000000000000);

  MEMORY[0x23EE63650](v3, v4);

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t sub_23874EA34(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v15 = a1[8];
  v16 = a1[7];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v13 = a2[8];
  v14 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0 || (v2 != v8 || v3 != v7) && (sub_23875F630() & 1) == 0 || (sub_23875DFE0() & 1) == 0 || (v5 != v9 || v6 != v11) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  if (v16 == v14 && v15 == v13)
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t sub_23874EBD8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BD0, &unk_2387849A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  sub_23875ED50();
  v28[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23874EFAC(v10);
  v11 = sub_23875D7A0();
  sub_23875C3D0();
  v12 = &v10[*(v4 + 36)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  v17 = sub_23875D030();
  v42 = 0;
  sub_23874F97C(a1, &v38);
  v43 = v38;
  v44 = *v39;
  v45 = *&v39[16];
  v46 = *&v39[32];
  v47[0] = v38;
  v47[1] = *v39;
  v47[2] = *&v39[16];
  v47[3] = *&v39[32];
  sub_23843981C(&v43, &v36, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v47, &qword_27DF0B360, &qword_23877AE40);
  *&v41[7] = v43;
  *&v41[23] = v44;
  *&v41[39] = v45;
  *&v41[55] = v46;
  v18 = v42;
  sub_23875E4B0();
  sub_23875C9C0();
  sub_23843981C(v10, v7, &qword_27DF15BD0, &unk_2387849A8);
  sub_23843981C(v7, a2, &qword_27DF15BD0, &unk_2387849A8);
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BD8, &qword_2387849B8) + 48);
  *&v37[17] = *&v41[16];
  *&v37[33] = *&v41[32];
  v20 = a2 + v19;
  v36 = v17;
  v37[0] = v18;
  *&v37[49] = *&v41[48];
  *&v37[64] = *&v41[63];
  *&v37[1] = *v41;
  *&v37[72] = v29;
  *&v37[88] = v30;
  *&v37[104] = v31;
  *&v37[120] = v32;
  *&v37[136] = v33;
  *&v37[152] = v34;
  *&v37[168] = v35;
  v21 = *&v37[96];
  *(v20 + 96) = *&v37[80];
  *(v20 + 112) = v21;
  v22 = *&v37[128];
  *(v20 + 128) = *&v37[112];
  *(v20 + 144) = v22;
  v23 = *&v37[160];
  *(v20 + 160) = *&v37[144];
  *(v20 + 176) = v23;
  v24 = *&v37[64];
  *(v20 + 64) = *&v37[48];
  *(v20 + 80) = v24;
  v25 = *&v37[32];
  *(v20 + 32) = *&v37[16];
  *(v20 + 48) = v25;
  *(v20 + 192) = *&v37[176];
  v26 = *v37;
  *v20 = v36;
  *(v20 + 16) = v26;
  sub_23843981C(&v36, &v38, &qword_27DF133F0, &unk_2387849C0);
  sub_238439884(v10, &qword_27DF15BD0, &unk_2387849A8);
  v38 = v17;
  v39[0] = v18;
  *&v39[17] = *&v41[16];
  *&v39[33] = *&v41[32];
  *v40 = *&v41[48];
  *&v40[15] = *&v41[63];
  *&v39[1] = *v41;
  *&v40[23] = v29;
  *&v40[39] = v30;
  *&v40[55] = v31;
  *&v40[119] = v35;
  *&v40[103] = v34;
  *&v40[87] = v33;
  *&v40[71] = v32;
  sub_238439884(&v38, &qword_27DF133F0, &unk_2387849C0);
  sub_238439884(v7, &qword_27DF15BD0, &unk_2387849A8);
}

uint64_t sub_23874EFAC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v63 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BE0, &qword_2387849D0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v76 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BE8, &qword_2387849D8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v72 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v73 = &v63 - v17;
  MEMORY[0x28223BE20](v18);
  v71 = &v63 - v19;
  MEMORY[0x28223BE20](v20);
  v75 = &v63 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BF0, &qword_2387849E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v63 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BF8, &qword_2387849E8);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C00, &qword_2387849F0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v63 - v32;
  v88 = *v2;
  v34 = v88;
  if (v88)
  {
    v66 = v10;
    v67 = v26;
    v68 = v30;
    v69 = v29;
    v70 = v22;
    sub_238750000(v2, &v80);
    sub_238750038(&v88, &v80);
    sub_238750000(v2, &v80);
    sub_238750038(&v88, &v80);
    *v25 = sub_23875CE60();
    *(v25 + 1) = 0x4024000000000000;
    v25[16] = 0;
    sub_23875ED50();
    v65 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v35 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C08, &qword_2387849F8) + 44)];
    v36 = *(v2 + 48);
    v37 = *(v2 + 56);
    v38 = *(v2 + 8);
    sub_23868852C(v38, v84, v36, v37);

    v64 = v25;
    v63 = v2;
    v87 = *(&v84[0] + 1);
    v80 = v84[0];
    v81 = v84[1];
    v82 = v85;
    sub_238750070();
    v39 = v75;
    sub_23875DBF0();

    sub_238439884(&v87, &qword_27DF13388, &qword_238784A00);
    v40 = sub_23875E0D0();
    sub_23875D880();
    v41 = sub_23875D840();
    (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
    v42 = sub_23875D8C0();
    sub_238439884(v6, &qword_27DF0C7F0, &qword_23877B880);
    KeyPath = swift_getKeyPath();
    v44 = sub_23875E070();
    v45 = swift_getKeyPath();
    *&v80 = v40;
    *(&v80 + 1) = KeyPath;
    *&v81 = v42;
    *(&v81 + 1) = v45;
    v82 = v44;
    v83 = 257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C18, &qword_238784A68);
    sub_2387500C4();
    v46 = v76;
    sub_23875DBF0();

    sub_23868852C(v34, &v80, v36, v37);
    sub_238750208(&v88);
    v86 = *(&v80 + 1);
    v77 = v80;
    v78 = v81;
    v79 = v82;
    v47 = v71;
    sub_23875DBF0();

    sub_238439884(&v86, &qword_27DF13388, &qword_238784A00);
    v48 = v39;
    v49 = v73;
    sub_23843981C(v48, v73, &qword_27DF15BE8, &qword_2387849D8);
    v50 = v66;
    sub_23843981C(v46, v66, &qword_27DF15BE0, &qword_2387849D0);
    v51 = v72;
    sub_23843981C(v47, v72, &qword_27DF15BE8, &qword_2387849D8);
    sub_23843981C(v49, v35, &qword_27DF15BE8, &qword_2387849D8);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C38, &qword_238784A80);
    sub_23843981C(v50, v35 + *(v52 + 48), &qword_27DF15BE0, &qword_2387849D0);
    sub_23843981C(v51, v35 + *(v52 + 64), &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v47, &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v76, &qword_27DF15BE0, &qword_2387849D0);
    sub_238439884(v75, &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v51, &qword_27DF15BE8, &qword_2387849D8);
    sub_238439884(v50, &qword_27DF15BE0, &qword_2387849D0);
    sub_238439884(v49, &qword_27DF15BE8, &qword_2387849D8);

    sub_238750208(&v88);
    v53 = v63;
    sub_23861EFCC(v63);
    sub_23861EFCC(v53);
    v54 = v64;
    sub_23843981C(v64, v69, &qword_27DF15BF0, &qword_2387849E0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15C40, &qword_27DF15C00, &qword_2387849F0);
    sub_23843A3E8(&qword_27DF15C48, &qword_27DF15BF0, &qword_2387849E0);
    sub_23875D1B0();
    sub_238750208(&v88);
    v55 = v54;
    v56 = &qword_27DF15BF0;
    v57 = &qword_2387849E0;
  }

  else
  {
    v58 = swift_allocObject();
    v59 = *(v2 + 16);
    v58[1] = *v2;
    v58[2] = v59;
    v60 = *(v2 + 48);
    v58[3] = *(v2 + 32);
    v58[4] = v60;
    sub_238750000(v2, &v80);
    *v33 = sub_23875CE60();
    *(v33 + 1) = 0x4024000000000000;
    v33[16] = 0;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C50, &qword_238784A88);
    sub_23874FB94(sub_23874FB20, sub_238750238, &v33[*(v61 + 44)]);

    sub_23843981C(v33, v29, &qword_27DF15C00, &qword_2387849F0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF15C40, &qword_27DF15C00, &qword_2387849F0);
    sub_23843A3E8(&qword_27DF15C48, &qword_27DF15BF0, &qword_2387849E0);
    sub_23875D1B0();
    v55 = v33;
    v56 = &qword_27DF15C00;
    v57 = &qword_2387849F0;
  }

  return sub_238439884(v55, v56, v57);
}

uint64_t sub_23874F97C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a1[2];
  v21 = a1[3];
  sub_2384397A8();

  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v20 = a1[4];
  v22 = a1[5];

  v11 = sub_23875DAA0();
  v13 = v12;
  v14 = v8 & 1;
  LOBYTE(v20) = v8 & 1;
  v16 = v15 & 1;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v15 & 1;
  *(a2 + 56) = v17;
  sub_23843980C(v4, v6, v14);

  sub_23843980C(v11, v13, v16);

  sub_2384397FC(v11, v13, v16);

  sub_2384397FC(v4, v6, v20);
}

double sub_23874FB2C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 8);
  sub_23868852C(v5, v8, v3, v4);

  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_23874FB94@<X0>(void (*a1)(uint64_t *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  *&v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7F0, &qword_23877B880);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BE0, &qword_2387849D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(&v32, isCurrentExecutor);
  v17 = v32;
  v18 = sub_23875E0D0();
  sub_23875D880();
  v19 = sub_23875D840();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = sub_23875D8C0();
  sub_238439884(v8, &qword_27DF0C7F0, &qword_23877B880);
  KeyPath = swift_getKeyPath();
  v22 = sub_23875E070();
  v23 = swift_getKeyPath();
  v32 = v18;
  v33 = KeyPath;
  *&v34 = v20;
  *(&v34 + 1) = v23;
  v35 = v22;
  v36 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C18, &qword_238784A68);
  sub_2387500C4();
  sub_23875DBF0();

  (v31)(&v32, v24);
  v25 = v32;
  v26 = v33;
  v31 = v34;
  v27 = v35;
  sub_23843981C(v15, v12, &qword_27DF15BE0, &qword_2387849D0);
  *a3 = v17;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C58, &qword_238784A90);
  sub_23843981C(v12, &a3[*(v28 + 48)], &qword_27DF15BE0, &qword_2387849D0);
  v29 = &a3[*(v28 + 64)];
  *v29 = v25;
  *(v29 + 1) = v26;
  *(v29 + 1) = v31;
  *(v29 + 4) = v27;

  sub_238439884(v15, &qword_27DF15BE0, &qword_2387849D0);

  sub_238439884(v12, &qword_27DF15BE0, &qword_2387849D0);
}

uint64_t sub_23874FF38@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v17[0] = *v1;
  v17[1] = v3;
  v4 = v1[3];
  v17[2] = v1[2];
  v17[3] = v4;
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BC0, &qword_238784998);
  sub_23874EBD8(v17, a1 + *(v5 + 44));
  v6 = sub_23875D770();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15BC8, &qword_2387849A0);
  v16 = a1 + *(result + 36);
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v14;
  *(v16 + 40) = 0;
  return result;
}

unint64_t sub_238750070()
{
  result = qword_27DF15C10;
  if (!qword_27DF15C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C10);
  }

  return result;
}

unint64_t sub_2387500C4()
{
  result = qword_27DF15C20;
  if (!qword_27DF15C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C18, &qword_238784A68);
    sub_238750150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C20);
  }

  return result;
}

unint64_t sub_238750150()
{
  result = qword_27DF15C28;
  if (!qword_27DF15C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15C30, &unk_238784A70);
    sub_23846E74C();
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C28);
  }

  return result;
}

uint64_t sub_238750240(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238750290(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2387502E4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_23875030C()
{
  result = qword_27DF15C60;
  if (!qword_27DF15C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15BC8, &qword_2387849A0);
    sub_23843A3E8(&qword_27DF15C68, &qword_27DF15C70, &unk_238784AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15C60);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2387503D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_238750420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238750474(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 33);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v6 && v3 == v7)
  {
    if (v4 != v8)
    {
      return 0;
    }

    return v5 ^ v9 ^ 1u;
  }

  v11 = sub_23875F630();
  result = 0;
  if ((v11 & 1) != 0 && ((v4 ^ v8) & 1) == 0)
  {
    return v5 ^ v9 ^ 1u;
  }

  return result;
}

uint64_t type metadata accessor for ExtractedOrderListRowActionsModifier()
{
  result = qword_27DF15C78;
  if (!qword_27DF15C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2387505B8()
{
  sub_2384B49C4();
  if (v0 <= 0x3F)
  {
    sub_23846CAFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_238750668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v60 = a2;
  v4 = type metadata accessor for ExtractedOrderListRowActionsModifier();
  v48 = *(v4 - 8);
  v5 = v48[8];
  MEMORY[0x28223BE20](v4 - 8);
  v49 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C88, &qword_238784BB8);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v47 - v11;
  v61 = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15C90, &unk_238784BC0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11BE8, &qword_238779830);
  v15 = sub_23843A3E8(&qword_27DF15C98, &qword_27DF15C90, &unk_238784BC0);
  v16 = sub_23843A3E8(&qword_27DF11BF8, &qword_27DF11BE8, &qword_238779830);
  v56 = v13;
  v57 = v12;
  v55 = v14;
  v53 = v15;
  sub_23875DBD0();
  v17 = *(v3 + 48);
  LOBYTE(v66) = *(v3 + 40);
  v67 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  LODWORD(v54) = v64;
  v18 = *(v3 + 24);
  v51 = *(v3 + 16);
  v52 = v63;
  v50 = v18;
  sub_2387522CC(v3, v8);
  v19 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v20 = swift_allocObject();
  sub_238752330(v8, v20 + v19);
  v21 = v49;
  sub_2387522CC(v3, v49);
  v22 = swift_allocObject();
  sub_238752330(v21, v22 + v19);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v23 = qword_2814F1B90;
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

  v28 = sub_23875EA80();
  v30 = v29;
  v49 = v29;

  v48 = v47;
  v66 = v28;
  v67 = v30;
  MEMORY[0x28223BE20](v31);
  v47[-10] = sub_238752394;
  v47[-9] = v20;
  v47[2] = v20;
  v47[1] = v22;
  MEMORY[0x28223BE20](v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A310, &unk_2387655D0);
  v62 = v56;
  v63 = v55;
  v64 = v53;
  v65 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_2384397A8();
  v45 = sub_23843A3E8(&qword_27DF0A320, &qword_27DF0A310, &unk_2387655D0);
  v46 = MEMORY[0x277CE0BC8];
  v43 = OpaqueTypeConformance2;
  v44 = v35;
  v41 = v33;
  v42 = MEMORY[0x277CE0BD8];
  v40 = MEMORY[0x277D837D0];
  v36 = v59;
  v39 = v59;
  v37 = v57;
  sub_23875DEC0();

  (*(v58 + 8))(v37, v36);
}

uint64_t sub_238750C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v43 = *(v3 - 8);
  v44 = v3;
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C00, &qword_238779848);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - v10;
  v11 = type metadata accessor for ExtractedOrderListRowActionsModifier();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D500, &unk_238779850);
  v14 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v42 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2387522CC(a1, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v20 = swift_allocObject();
  sub_238752330(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
  v21 = sub_23875DFF0();
  KeyPath = swift_getKeyPath();
  v23 = &v18[*(v40 + 36)];
  *v23 = KeyPath;
  v23[1] = v21;
  if (*(a1 + 32) != 1)
  {
    v32 = 1;
    v26 = v45;
LABEL_8:
    v30 = v43;
    v31 = v44;
    goto LABEL_9;
  }

  v24 = a1;
  v25 = *(a1 + 33);
  v26 = v45;
  if (v25 != 1)
  {
    v32 = 1;
    goto LABEL_8;
  }

  sub_2387522CC(v24, &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_238752330(&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v19);
  v28 = v39;
  sub_23875E200();
  v30 = v43;
  v29 = v44;
  (*(v43 + 32))(v26, v28, v44);
  v31 = v29;
  v32 = 0;
LABEL_9:
  (*(v30 + 56))(v26, v32, 1, v31);
  v33 = v42;
  sub_23843981C(v18, v42, &qword_27DF0D500, &unk_238779850);
  v34 = v46;
  sub_23843981C(v26, v46, &qword_27DF11C00, &qword_238779848);
  v35 = v47;
  sub_23843981C(v33, v47, &qword_27DF0D500, &unk_238779850);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF11C08, &qword_238779890);
  sub_23843981C(v34, v35 + *(v36 + 48), &qword_27DF11C00, &qword_238779848);
  sub_238439884(v26, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v18, &qword_27DF0D500, &unk_238779850);
  sub_238439884(v34, &qword_27DF11C00, &qword_238779848);
  sub_238439884(v33, &qword_27DF0D500, &unk_238779850);
}

uint64_t sub_238751188(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
}

uint64_t sub_238751258()
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

uint64_t sub_2387513FC()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875149C();
}

uint64_t sub_23875149C()
{
  v29 = sub_23875C1E0();
  v28 = *(v29 - 8);
  v0 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23875BC40();
  v2 = *(v30 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v32 = v19;
  sub_2385C33E4(v7, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v32);

  v21 = *MEMORY[0x277D38548];
  v22 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v23 = sub_23875E910();

  [v22 subject:v21 sendEvent:v23];

  sub_2387579D0();
  sub_2387579A0();
  v24 = *v31;
  v25 = v31[1];
  sub_23875BBF0();
  sub_238757970();
  (*(v2 + 8))(v5, v30);
}

uint64_t sub_2387519E0()
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

uint64_t sub_238751B88(uint64_t *a1)
{
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
  v7 = sub_23875EA80();
  v8 = MEMORY[0x277D38390];
  *(v4 + 40) = v7;
  *(v4 + 48) = v9;
  v10 = *v8;
  *(v4 + 56) = *v8;
  *(v4 + 64) = 0x6574656C6564;
  v11 = *MEMORY[0x277D384B8];
  *(v4 + 72) = 0xE600000000000000;
  *(v4 + 80) = v11;
  *(v4 + 88) = 0xD000000000000014;
  *(v4 + 96) = 0x8000000238784E10;
  v12 = v5;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v15;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v23);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];

  v20 = *a1;
  v21 = a1[1];
  return sub_238751E00();
}

uint64_t sub_238751E00()
{
  v0 = sub_23875C1E0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  sub_2387579D0();
  sub_2387579A0();
  sub_238757820();
}

uint64_t sub_238752044(uint64_t *a1)
{
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
  *(v4 + 64) = 0xD000000000000016;
  v9 = *MEMORY[0x277D384B8];
  *(v4 + 72) = 0x8000000238785C30;
  *(v4 + 80) = v9;
  *(v4 + 88) = 0xD000000000000014;
  *(v4 + 96) = 0x8000000238784E10;
  v10 = v5;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v13;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v21);

  v15 = *MEMORY[0x277D38548];
  v16 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384FC024();
  v17 = sub_23875E910();

  [v16 subject:v15 sendEvent:v17];

  v18 = *a1;
  v19 = a1[1];
  return sub_238751E00();
}

uint64_t sub_2387522CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderListRowActionsModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238752330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedOrderListRowActionsModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_38()
{
  v1 = (type metadata accessor for ExtractedOrderListRowActionsModifier() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 48);

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23875C1E0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238752520(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExtractedOrderListRowActionsModifier() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2387525B8(uint64_t a1)
{
  v2 = sub_23875C6D0();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23875CCA0();
}

char *static OrderImportControllerProvider.makeViewController(with:completion:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_23875B950();
  if (!v3)
  {
    v8 = v6;
    v9 = v7;
    a3 = sub_238755270(v6, v7, a2, a3);
    sub_23844C954(v8, v9);
  }

  return a3;
}

void sub_238752944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_23875B720();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t OrderImportPreview.init(orderData:sourceApplication:financeStore:completion:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_23875E1A0();
  *(a8 + 48) = v23;
  *(a8 + 56) = v24;
  v13 = type metadata accessor for OrderImportPreview();
  v14 = *(v13 + 36);
  *(a8 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v15 = *(v13 + 40);
  *(a8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  if (sub_2387577C0())
  {

    v16 = sub_238757770();
    sub_238756860(&qword_27DF15CA0, MEMORY[0x277CC65F8]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277CC65C8], v16);
    swift_willThrow();

    sub_23844C954(a1, a2);
LABEL_5:

    sub_238439884(a8 + v14, &qword_27DF0D9F0, &unk_23876DD40);
    return sub_238439884(a8 + v15, &qword_27DF0B118, &qword_23876F450);
  }

  *(a8 + 40) = a5;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  result = sub_2386620B4(a1, a2);
  if (v8)
  {

    goto LABEL_5;
  }

  *a8 = result;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  return result;
}

id OrderImportControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OrderImportControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id OrderImportControllerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_238752EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OrderImportPreview();
  sub_23843981C(v1 + *(v12 + 36), v11, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C600();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_2387530E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OrderImportPreview();
  sub_23843981C(v1 + *(v12 + 40), v11, &qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C6D0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t OrderImportPreview.init(orderBundleURL:sourceApplication:financeStore:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a2;
  v34 = a6;
  v35 = a1;
  v30 = a5;
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  sub_23875E1A0();
  v15 = v37;
  *(a7 + 48) = v36;
  v33 = v15;
  *(a7 + 56) = v15;
  v16 = type metadata accessor for OrderImportPreview();
  v17 = *(v16 + 36);
  *(a7 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v18 = *(v16 + 40);
  *(a7 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  if (sub_2387577C0())
  {

    v19 = sub_238757770();
    sub_238756860(&qword_27DF15CA0, MEMORY[0x277CC65F8]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277CC65C8], v19);
    swift_willThrow();

    (*(v11 + 8))(v35, v10);
LABEL_7:

    sub_238439884(a7 + v17, &qword_27DF0D9F0, &unk_23876DD40);
    return sub_238439884(a7 + v18, &qword_27DF0B118, &qword_23876F450);
  }

  *(a7 + 8) = v31;
  *(a7 + 16) = a3;
  v31 = a3;
  (*(v11 + 16))(v14, v35, v10);
  v21 = sub_23875B8C0();
  v22 = v32;
  v23 = sub_23875B950();
  if (v22)
  {
    if (v21)
    {
      sub_23875B8A0();
    }

    v25 = *(v11 + 8);
    v25(v35, v10);
    v25(v14, v10);

    goto LABEL_7;
  }

  v27 = sub_2386620B4(v23, v24);
  if (v21)
  {
    sub_23875B8A0();
  }

  v28 = *(v11 + 8);
  v28(v35, v10);
  result = (v28)(v14, v10);
  *a7 = v27;
  v29 = v34;
  *(a7 + 24) = v30;
  *(a7 + 32) = v29;
  *(a7 + 40) = a4;
  return result;
}

uint64_t OrderImportPreview.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for OrderImportPreview();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v22[-v9];
  v26 = *v1;
  v11 = *(v1 + 56);
  v30 = *(v1 + 48);
  v31 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v24 = v28;
  v25 = v27;
  v23 = v29;
  sub_238755690(v1, v10);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_2387556F4(v10, v13 + v12);
  sub_238755690(v2, v7);
  v14 = swift_allocObject();
  sub_2387556F4(v7, v14 + v12);
  sub_238755690(v2, v10);
  v15 = swift_allocObject();
  sub_2387556F4(v10, v15 + v12);
  v16 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CA8, &qword_238784C78) + 36));
  v17 = v16 + *(sub_23875C6E0() + 20);
  sub_23875ED60();
  *v16 = &unk_238784C70;
  v16[1] = v15;
  v18 = v25;
  *a1 = v26;
  *(a1 + 8) = v18;
  *(a1 + 16) = v24;
  *(a1 + 24) = v23;
  *(a1 + 32) = sub_238755758;
  *(a1 + 40) = v13;
  *(a1 + 48) = sub_2387557C8;
  *(a1 + 56) = v14;
  sub_238755690(v2, v10);
  v19 = swift_allocObject();
  sub_2387556F4(v10, v19 + v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CB0, &qword_238784C80);
  v21 = (a1 + *(result + 36));
  *v21 = sub_238755A64;
  v21[1] = v19;
  v21[2] = 0;
  v21[3] = 0;
  return result;
}

uint64_t sub_238753930(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v38 = a1;
  v2 = type metadata accessor for OrderImportPreview();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  v12 = *MEMORY[0x277D38428];
  v13 = sub_23875EA80();
  v14 = MEMORY[0x277D38390];
  *(v10 + 40) = v13;
  *(v10 + 48) = v15;
  v16 = *v14;
  *(v10 + 56) = *v14;
  *(v10 + 64) = 0x6B63617274;
  v17 = *MEMORY[0x277D384B8];
  *(v10 + 72) = 0xE500000000000000;
  *(v10 + 80) = v17;
  *(v10 + 88) = 0xD000000000000010;
  *(v10 + 96) = 0x8000000238784EA0;
  v18 = v11;
  v19 = v16;
  v20 = v17;
  v21 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v21;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v39);

  v23 = *MEMORY[0x277D38548];
  v24 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238756860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v25 = sub_23875E910();

  [v24 subject:v23 sendEvent:v25];

  v26 = sub_23875ED80();
  (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
  v27 = v37;
  sub_238755690(v35, v37);
  sub_23875ED50();
  v28 = v38;

  v29 = sub_23875ED40();
  v30 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v31 = swift_allocObject();
  v32 = MEMORY[0x277D85700];
  *(v31 + 16) = v29;
  *(v31 + 24) = v32;
  sub_2387556F4(v27, v31 + v30);
  *(v31 + ((v3 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  sub_2386C3BA4(0, 0, v7, &unk_238784D98, v31);
}

uint64_t sub_238753DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23875A260();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = sub_238759C60();
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = sub_23875ED50();
  v5[11] = sub_23875ED40();
  v13 = sub_23875ECE0();
  v5[12] = v13;
  v5[13] = v12;

  return MEMORY[0x2822009F8](sub_238753EF8, v13, v12);
}

uint64_t sub_238753EF8()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[3];
  v4 = *(v0[2] + 40);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_23875A250();
  sub_238757800();
  v0[14] = 0;
  (*(v0[5] + 8))(v0[6], v0[4]);

  return MEMORY[0x2822009F8](sub_238753FE0, 0, 0);
}

uint64_t sub_238753FE0()
{
  v1 = *(v0 + 80);
  *(v0 + 120) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_23875406C, v3, v2);
}

void sub_23875406C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[9];
  v4 = v0[2];

  sub_238754370(v4, v3);
  if (v2)
  {
  }

  else
  {
    v5 = v0[12];
    v6 = v0[13];

    MEMORY[0x2822009F8](sub_238754118, v5, v6);
  }
}

uint64_t sub_238754118()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  (*(v3 + 8))(v2, v4);
  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2387541B4()
{
  v1 = *(v0 + 80);
  *(v0 + 128) = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_238754240, v3, v2);
}

uint64_t sub_238754240()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[2];

  sub_2387547C8(v3, v2);
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x2822009F8](sub_2387542F0, v4, v5);
}

uint64_t sub_2387542F0()
{
  v1 = v0[14];
  v2 = v0[11];

  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_238754370(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_23875C600();
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C6D0();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23875B940();
  v30 = *(v32 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_23875A710();
  v27 = *(v29 - 8);
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875A7D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = a1[3];
  v21 = a1[4];
  v38 = 1;
  v20(&v38);
  v22 = a1[5];
  if (sub_2387577D0())
  {
    sub_238759C50();
    v23 = (*(v16 + 88))(v19, v15);
    if (v23 == *MEMORY[0x277CC7F50] || v23 == *MEMORY[0x277CC7F48])
    {
      sub_238759C40();
      v24 = v28;
      sub_2387576B0();
      v25 = v31;
      sub_2387530E8(v31);
      sub_23875C6A0();
      (*(v33 + 8))(v25, v34);
      (*(v30 + 8))(v24, v32);
      (*(v27 + 8))(v14, v29);
    }

    else
    {
      (*(v16 + 8))(v19, v15);
    }
  }

  sub_238752EE0(v6);
  sub_23875C5F0();
  (*(v36 + 8))(v6, v37);
}

uint64_t sub_2387547C8(uint64_t a1, void *a2)
{
  v4 = sub_23875C600();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  v14 = a2;
  v11 = a2;
  v10(&v14);
  sub_238448A54(v14);
  sub_238752EE0(v8);
  sub_23875C5F0();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_238754944(uint64_t a1)
{
  v28 = sub_23875C600();
  v27 = *(v28 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
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
  v10 = sub_23875EA80();
  v11 = MEMORY[0x277D38390];
  *(v7 + 40) = v10;
  *(v7 + 48) = v12;
  v13 = *v11;
  *(v7 + 56) = *v11;
  *(v7 + 64) = 0x6C65636E6163;
  v14 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0xE600000000000000;
  *(v7 + 80) = v14;
  *(v7 + 88) = 0xD000000000000010;
  *(v7 + 96) = 0x8000000238784EA0;
  v15 = v8;
  v16 = v13;
  v17 = v14;
  v18 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v18;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v29);

  v20 = *MEMORY[0x277D38548];
  v21 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_238756860(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v22 = sub_23875E910();

  [v21 subject:v20 sendEvent:v22];

  v23 = *(a1 + 24);
  v24 = *(a1 + 32);
  v29 = 0;
  v23(&v29);
  sub_238752EE0(v4);
  sub_23875C5F0();
  return (*(v27 + 8))(v4, v28);
}

uint64_t sub_238754CB4(uint64_t a1)
{
  v1[4] = a1;
  sub_23875ED50();
  v1[5] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_238754D4C, v3, v2);
}

uint64_t sub_238754D4C()
{
  v1 = *(v0 + 32);
  v2 = *v1;
  v3 = v1[5];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_238754E04;

  return (sub_238755EA0)(v2, v3);
}

uint64_t sub_238754E04(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 73) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_238754F2C, v5, v4);
}

uint64_t sub_238754F2C()
{
  v1 = *(v0 + 73);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = *(v3 + 56);
  *(v0 + 16) = *(v3 + 48);
  *(v0 + 24) = v4;
  *(v0 + 72) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_238754FD4()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_238755074();
}

void sub_238755074()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 8);

    v3 = sub_23844CC84(v2, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238763B60;
    *(inited + 32) = sub_23875EA50();
    if (v3 <= 2u)
    {
      if (v3)
      {
        if (v3 == 1)
        {
          v5 = 0x800000023878E100;
          v6 = 0xD000000000000014;
        }

        else
        {
          v5 = 0xE600000000000000;
          v6 = 0x746567646977;
        }
      }

      else
      {
        v5 = 0xE600000000000000;
        v6 = 0x697261666173;
      }
    }

    else if (v3 > 4u)
    {
      if (v3 == 5)
      {
        v5 = 0xE400000000000000;
        v6 = 1936744813;
      }

      else
      {
        v5 = 0xE500000000000000;
        v6 = 0x7070416E69;
      }
    }

    else if (v3 == 3)
    {
      v5 = 0xE400000000000000;
      v6 = 1818845549;
    }

    else
    {
      v5 = 0xE800000000000000;
      v6 = 0x6567617373654D69;
    }

    *(inited + 40) = v6;
    *(inited + 48) = v5;
    *(inited + 56) = sub_23875EA50();
    *(inited + 64) = 0x63697373616C63;
    *(inited + 72) = 0xE700000000000000;
    v7 = sub_23854B138(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    sub_23844C218(*MEMORY[0x277D38548], 6, v7);
  }
}

char *sub_238755270(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v37 = a1;
  v6 = type metadata accessor for OrderImportPreview();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = [objc_opt_self() mainBundle];
  v16 = [v15 bundleIdentifier];

  if (v16)
  {
    v17 = sub_23875EA80();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  sub_2387579D0();

  v21 = sub_2387579A0();
  v42 = 0;
  sub_23875E1A0();
  v22 = v41;
  v11[48] = v40;
  *(v11 + 7) = v22;
  v23 = *(v6 + 36);
  *&v11[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v24 = *(v6 + 40);
  *&v11[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  swift_storeEnumTagMultiPayload();
  if (sub_2387577C0())
  {

    v25 = sub_238757770();
    sub_238756860(&qword_27DF15CA0, MEMORY[0x277CC65F8]);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277CC65C8], v25);
    swift_willThrow();
  }

  else
  {
    v35 = v14;
    *(v11 + 5) = v21;
    *(v11 + 1) = v17;
    *(v11 + 2) = v19;
    v27 = v37;
    v28 = v38;
    sub_23844C8EC(v37, v38);
    v29 = v39;
    v30 = sub_2386620B4(v27, v28);
    if (!v29)
    {
      *v11 = v30;
      *(v11 + 3) = sub_2387569C8;
      *(v11 + 4) = v20;
      v32 = v35;
      sub_2387556F4(v11, v35);
      sub_238755690(v32, v36);
      v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CD8, &unk_238784DA0));
      v11 = sub_23875D080();
      sub_238756A18(v32);
      return v11;
    }
  }

  sub_238439884(&v11[v23], &qword_27DF0D9F0, &unk_23876DD40);
  sub_238439884(&v11[v24], &qword_27DF0B118, &qword_23876F450);
  return v11;
}

uint64_t type metadata accessor for OrderImportPreview()
{
  result = qword_27DF15CB8;
  if (!qword_27DF15CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238755690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImportPreview();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2387556F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderImportPreview();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238755758(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderImportPreview() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_238753930(a1, v4);
}

uint64_t sub_2387557E0()
{
  v2 = *(type metadata accessor for OrderImportPreview() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238449A7C;

  return sub_238754CB4(v0 + v3);
}

uint64_t objectdestroyTm_39()
{
  v1 = type metadata accessor for OrderImportPreview();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C600();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_23875C6D0();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238755A7C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderImportPreview() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_238755B58()
{
  type metadata accessor for OrderManagementModel.ConfirmationData(319);
  if (v0 <= 0x3F)
  {
    sub_2384C6178(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23846D0DC();
      if (v2 <= 0x3F)
      {
        sub_2387579D0();
        if (v3 <= 0x3F)
        {
          sub_2384C6178(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_238755CD4(319, &qword_27DF0DA10, MEMORY[0x277CDD848]);
            if (v5 <= 0x3F)
            {
              sub_238755CD4(319, &qword_27DF0B130, MEMORY[0x277CDF708]);
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

void sub_238755CD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI18OrderImportPreviewV0E6ResultO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_238755D50()
{
  result = qword_27DF15CC8;
  if (!qword_27DF15CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15CB0, &qword_238784C80);
    sub_238755DDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15CC8);
  }

  return result;
}

unint64_t sub_238755DDC()
{
  result = qword_27DF15CD0;
  if (!qword_27DF15CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF15CA8, &qword_238784C78);
    sub_2385E26AC();
    sub_238756860(&qword_27DF08DC8, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF15CD0);
  }

  return result;
}

uint64_t sub_238755EA0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = sub_23875C1E0();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v7 = sub_2387577F0();
  v2[12] = v7;
  v8 = *(v7 - 8);
  v2[13] = v8;
  v9 = *(v8 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v10 = sub_23875BC40();
  v2[16] = v10;
  v11 = *(v10 - 8);
  v2[17] = v11;
  v12 = *(v11 + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = sub_23875A710();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  sub_23875ED50();
  v2[22] = sub_23875ED40();
  v17 = sub_23875ECE0();
  v2[23] = v17;
  v2[24] = v16;

  return MEMORY[0x2822009F8](sub_2387560EC, v17, v16);
}

uint64_t sub_2387560EC()
{
  v1 = v0[7];
  if (sub_2387577D0())
  {
    v2 = v0[22];

    v3 = v0[21];
    v4 = v0[18];
    v6 = v0[14];
    v5 = v0[15];
    v8 = v0[10];
    v7 = v0[11];

    v9 = v0[1];

    return v9(1);
  }

  else
  {
    v11 = v0[21];
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];
    v15 = v0[11];
    v16 = v0[6];
    sub_2387586C0();
    sub_2387586F0();
    (*(v13 + 16))(v15, v12, v14);
    (*(v13 + 56))(v15, 0, 1, v14);
    v17 = *(MEMORY[0x277CC6648] + 4);
    v18 = swift_task_alloc();
    v0[25] = v18;
    *v18 = v0;
    v18[1] = sub_2387562AC;
    v19 = v0[21];
    v20 = v0[15];
    v21 = v0[11];
    v22 = v0[7];

    return MEMORY[0x282116D68](v20, v19, v21);
  }
}

uint64_t sub_2387562AC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 208) = v0;

  sub_238439884(v4, &qword_27DF12E00, &unk_238763FC0);
  v6 = *(v2 + 192);
  v7 = *(v2 + 184);
  if (v0)
  {
    v8 = sub_2387565CC;
  }

  else
  {
    v8 = sub_238756414;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_238756414()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];
  v21 = v0[15];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  (*(v8 + 32))(v9, v21, v10);
  v11 = (*(v8 + 88))(v9, v10);
  if (v11 == *MEMORY[0x277CC66F8])
  {
    goto LABEL_2;
  }

  if (v11 != *MEMORY[0x277CC6700])
  {
    if (v11 == *MEMORY[0x277CC66E8])
    {
LABEL_2:
      v12 = 0;
      goto LABEL_5;
    }

    if (v11 != *MEMORY[0x277CC66F0])
    {
      (*(v0[13] + 8))(v0[14], v0[12]);
    }
  }

  v12 = 1;
LABEL_5:
  v13 = v0[21];
  v14 = v0[18];
  v16 = v0[14];
  v15 = v0[15];
  v18 = v0[10];
  v17 = v0[11];

  v19 = v0[1];

  return v19(v12);
}

uint64_t sub_2387565CC()
{
  v45 = v0;
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[10];

  sub_23875C180();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[26];
    v8 = v0[20];
    v40 = v0[19];
    v42 = v0[21];
    v9 = v0[17];
    v38 = v0[16];
    v39 = v0[18];
    v10 = v0[9];
    v37 = v0[10];
    v35 = v7;
    v36 = v0[8];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v44 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v14 = v0[2];
    v13 = v0[3];
    v15 = v0[4];
    v16 = sub_23875F690();
    v18 = sub_2384615AC(v16, v17, &v44);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to query order: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x23EE64DF0](v12, -1, -1);
    MEMORY[0x23EE64DF0](v11, -1, -1);

    (*(v10 + 8))(v37, v36);
    (*(v9 + 8))(v39, v38);
    (*(v8 + 8))(v42, v40);
  }

  else
  {
    v19 = v0[26];
    v20 = v0[20];
    v21 = v0[18];
    v41 = v0[19];
    v43 = v0[21];
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[9];
    v25 = v0[10];
    v26 = v0[8];

    (*(v24 + 8))(v25, v26);
    (*(v22 + 8))(v21, v23);
    (*(v20 + 8))(v43, v41);
  }

  v27 = v0[21];
  v28 = v0[18];
  v30 = v0[14];
  v29 = v0[15];
  v32 = v0[10];
  v31 = v0[11];

  v33 = v0[1];

  return v33(0);
}

uint64_t sub_238756860(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2387568A8(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderImportPreview() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2384494A4;

  return sub_238753DA4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_2387569C8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1)
    {
      v5 = 2;
      v4 = 0;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v2(v5, v4);
}

uint64_t sub_238756A18(uint64_t a1)
{
  v2 = type metadata accessor for OrderImportPreview();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238756ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider_wrappedObject);
  v2 = sub_23875EA50();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF15CE8, &unk_238784DE0);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_238721954(v8);
    return 0;
  }
}

uint64_t sub_238756D40()
{
  v1 = *(v0 + OBJC_IVAR____TtCO12FinanceKitUI22PrivacySettingsStaging15WrappedProvider_wrappedObject);
  v2 = sub_23875EA50();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_238721954(v8);
  }

  return MEMORY[0x277D84F90];
}

id sub_238756F94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacySettingsStaging.WrappedProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_27DF2F5E8 == -1)
  {
    if (qword_27DF2F5F0)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_27DF2F5F0)
    {
      goto LABEL_3;
    }
  }

  if (qword_27DF2F5E0 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_27DF2F5D4 > a3)
      {
        goto LABEL_11;
      }

      if (dword_27DF2F5D4 >= a3)
      {
        result = dword_27DF2F5D8 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_27DF2F5F0;
  if (qword_27DF2F5F0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27DF2F5F0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x23EE645A0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_27DF2F5D4, &dword_27DF2F5D8);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
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

  v25 = *MEMORY[0x277D85DE8];
  return result;
}