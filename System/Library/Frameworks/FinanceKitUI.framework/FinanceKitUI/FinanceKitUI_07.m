uint64_t sub_2384B7448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_23875D990();
  v59 = *(v3 - 8);
  v4 = *(v59 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C880();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8E8, &qword_238768C38);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  sub_23875ED50();
  v61 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384B7B10(v17);
  v18 = sub_23875D7C0();
  sub_23875C3D0();
  v19 = &v17[*(v12 + 36)];
  *v19 = v18;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  *(v19 + 4) = v23;
  v19[40] = 0;
  sub_2384B7E64(&v72);
  v65 = v72;
  v64 = v73;
  v63 = v74;
  v66 = sub_23875D7C0();
  sub_23875C3D0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for TransactionView();
  v33 = a1 + *(v32 + 20);
  sub_2384D5138(v11);
  v34 = *(v32 + 40);
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v34) = sub_23875E990();
  (*(v8 + 8))(v11, v7);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (v34)
  {
    v72 = sub_2384B8FDC();
    v73 = v40;
    sub_2384397A8();
    v41 = sub_23875DAA0();
    v43 = v42;
    v45 = v44;
    v46 = v59;
    (*(v59 + 104))(v6, *MEMORY[0x277CE0A68], v3);
    MEMORY[0x23EE62380](0x502D687361434653, 0xEC0000006E69616CLL, v6, 17.0);
    (*(v46 + 8))(v6, v3);
    v36 = sub_23875DA60();
    v37 = v47;
    v49 = v48;
    v39 = v50;

    sub_2384397FC(v41, v43, v45 & 1);

    v38 = v49 & 1;
    sub_23843980C(v36, v37, v49 & 1);

    sub_2384397FC(v36, v37, v49 & 1);

    sub_23843980C(v36, v37, v49 & 1);

    v35 = 1;
  }

  v51 = v60;
  sub_23843981C(v17, v60, &qword_27DF0B8E8, &qword_238768C38);
  v52 = v62;
  sub_23843981C(v51, v62, &qword_27DF0B8E8, &qword_238768C38);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8F0, &qword_238768C40);
  v54 = v52 + *(v53 + 48);
  *&v67 = v65;
  *(&v67 + 1) = v64;
  LOBYTE(v68) = v63;
  *(&v68 + 1) = v84[0];
  DWORD1(v68) = *(v84 + 3);
  BYTE8(v68) = v66;
  HIDWORD(v68) = *&v83[3];
  *(&v68 + 9) = *v83;
  *&v69 = v25;
  *(&v69 + 1) = v27;
  *&v70 = v29;
  *(&v70 + 1) = v31;
  v71 = 0;
  *(v54 + 64) = 0;
  v55 = v68;
  *v54 = v67;
  *(v54 + 16) = v55;
  v56 = v70;
  *(v54 + 32) = v69;
  *(v54 + 48) = v56;
  v57 = (v52 + *(v53 + 64));
  sub_23843981C(&v67, &v72, &qword_27DF0B8F8, &qword_238768C48);
  sub_2384B9D50(0, v35, v36, v37, v38, v39);
  sub_2384B9D9C(0, v35, v36, v37, v38, v39);
  *v57 = 0;
  v57[1] = v35;
  v57[2] = v36;
  v57[3] = v37;
  v57[4] = v38;
  v57[5] = v39;
  sub_238439884(v17, &qword_27DF0B8E8, &qword_238768C38);
  sub_2384B9D9C(0, v35, v36, v37, v38, v39);
  v72 = v65;
  v73 = v64;
  v74 = v63;
  *v75 = v84[0];
  *&v75[3] = *(v84 + 3);
  v76 = v66;
  *v77 = *v83;
  *&v77[3] = *&v83[3];
  v78 = v25;
  v79 = v27;
  v80 = v29;
  v81 = v31;
  v82 = 0;
  sub_238439884(&v72, &qword_27DF0B8F8, &qword_238768C48);
  sub_238439884(v51, &qword_27DF0B8E8, &qword_238768C38);
}

uint64_t sub_2384B7B10@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B900, &qword_238768C50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v28 - v5;
  v7 = *(v1 + *(type metadata accessor for TransactionView() + 32));
  v8 = sub_23875E0D0();
  if (v7 == 1)
  {
    v9 = sub_23875DFC0();
    v29 = v8;
    v30 = v9;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v10 = qword_2814F1B90;
  }

  else
  {
    v11 = sub_23875E080();
    v29 = v8;
    v30 = v11;
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v10 = qword_2814F1B90;
  }

  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v10 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v18 = v17;

  v28[2] = v16;
  v28[3] = v18;
  sub_2384397A8();
  v19 = sub_23875DAA0();
  v21 = v20;
  LOBYTE(v15) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B908, &qword_238773820);
  sub_2384B9DE8();
  sub_23875DBE0();
  sub_2384397FC(v19, v21, v15 & 1);

  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B918, &qword_238768C58) + 36));
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B920, &qword_238768C60) + 28);
  v25 = *MEMORY[0x277CE1058];
  v26 = sub_23875E130();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  return sub_2384396E4(v6, a1, &qword_27DF0B900, &qword_238768C50);
}

uint64_t sub_2384B7E64@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758F50();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = type metadata accessor for TransactionView();
  v16 = *(v8 + 16);
  v16(v14, v1 + *(v15 + 24), v7);
  v17 = *v1;
  if (*(v1 + 8) == 1)
  {
    v18 = v17;
  }

  else
  {
    v19 = *v1;

    sub_23875EFF0();
    v20 = sub_23875D730();
    v28 = v12;
    v21 = a1;
    v22 = v20;
    sub_23875C110();

    a1 = v21;
    v12 = v28;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384B4E98(v17, 0);
    (*(v29 + 8))(v6, v30);
    v18 = v31;
  }

  sub_2387588A0();
  v16(v12, v14, v7);
  v23 = type metadata accessor for TransactionIconImage.Loader();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  sub_23875BEC0();
  (*(v8 + 8))(v14, v7);
  *(v26 + 24) = vdupq_n_s64(0x4045000000000000uLL);
  result = (*(v8 + 32))(v26 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_transaction, v12, v7);
  *(v26 + OBJC_IVAR____TtCV12FinanceKitUI20TransactionIconImage6Loader_context) = v18;
  *a1 = v26;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_2384B8148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v71 = sub_23875BC40();
  v63 = *(v71 - 8);
  v3 = *(v63 + 64);
  v4 = MEMORY[0x28223BE20](v71);
  v69 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8C0, &qword_238768B80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v74 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - v11;
  sub_23875ED50();
  v72 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v12 = sub_23875CE40();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8C8, &qword_238768B88);
  sub_2384B86D8(a1, &v12[*(v13 + 44)]);
  v75 = sub_2384B932C();
  v76 = v14;
  sub_2384397A8();
  v15 = sub_23875DAA0();
  v70 = v12;
  v17 = v16;
  v62 = a1;
  v19 = v18;
  sub_23875D7F0();
  v20 = sub_23875DA60();
  v22 = v21;
  v24 = v23;

  sub_2384397FC(v15, v17, v19 & 1);

  LODWORD(v75) = sub_23875D440();
  v25 = sub_23875DA20();
  v65 = v26;
  v66 = v25;
  v64 = v27;
  v67 = v28;
  sub_2384397FC(v20, v22, v24 & 1);

  if (qword_27DF08CD0 != -1)
  {
    swift_once();
  }

  v29 = sub_238759140();
  __swift_project_value_buffer(v29, qword_27DF0B820);
  v30 = v62 + *(type metadata accessor for TransactionView() + 24);
  v31 = v68;
  sub_238758E80();
  v32 = v69;
  sub_23875BBF0();
  v33 = sub_238759130();
  v35 = v34;
  v36 = *(v63 + 8);
  v37 = v32;
  v38 = v71;
  v36(v37, v71);
  v36(v31, v38);
  v75 = v33;
  v76 = v35;
  v39 = sub_23875DAA0();
  v41 = v40;
  LOBYTE(v31) = v42;
  sub_23875D7F0();
  v43 = sub_23875DA60();
  v45 = v44;
  LOBYTE(v36) = v46;

  sub_2384397FC(v39, v41, v31 & 1);

  LODWORD(v75) = sub_23875D440();
  v47 = sub_23875DA20();
  v49 = v48;
  LODWORD(v71) = v50;
  v52 = v51;
  sub_2384397FC(v43, v45, v36 & 1);

  v53 = v70;
  v54 = v74;
  sub_23843981C(v70, v74, &qword_27DF0B8C0, &qword_238768B80);
  LOBYTE(v36) = v64 & 1;
  LOBYTE(v75) = v64 & 1;
  v55 = v73;
  sub_23843981C(v54, v73, &qword_27DF0B8C0, &qword_238768B80);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8D0, &qword_238768B90);
  v57 = v55 + *(v56 + 48);
  v59 = v65;
  v58 = v66;
  *v57 = v66;
  *(v57 + 8) = v59;
  *(v57 + 16) = v36;
  *(v57 + 24) = v67;
  v60 = v55 + *(v56 + 64);
  *v60 = v47;
  *(v60 + 8) = v49;
  LOBYTE(v55) = v71 & 1;
  *(v60 + 16) = v71 & 1;
  *(v60 + 24) = v52;
  sub_23843980C(v58, v59, v36);

  sub_23843980C(v47, v49, v55);

  sub_238439884(v53, &qword_27DF0B8C0, &qword_238768B80);
  sub_2384397FC(v47, v49, v55);

  sub_2384397FC(v58, v59, v75);

  sub_238439884(v54, &qword_27DF0B8C0, &qword_238768B80);
}

uint64_t sub_2384B86D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_23875D990();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C880();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8D8, &qword_238768B98);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v45 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384B8BB4(v17);
  v18 = type metadata accessor for TransactionView();
  v19 = a1 + *(v18 + 20);
  sub_2384D5138(v11);
  v20 = *(v18 + 40);
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v21 = sub_23875E9C0();
  (*(v8 + 8))(v11, v7);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (v21)
  {
    v47 = sub_2384B8FDC();
    v48 = v27;
    sub_2384397A8();
    v28 = sub_23875DAA0();
    v30 = v29;
    v32 = v31;
    v33 = v43;
    (*(v4 + 104))(v43, *MEMORY[0x277CE0A68], v3);
    MEMORY[0x23EE62380](0x502D687361434653, 0xEC0000006E69616CLL, v33, 17.0);
    (*(v4 + 8))(v33, v3);
    v23 = sub_23875DA60();
    v24 = v34;
    v36 = v35;
    v26 = v37;

    sub_2384397FC(v28, v30, v32 & 1);

    v25 = v36 & 1;
    sub_23843980C(v23, v24, v36 & 1);

    sub_2384397FC(v23, v24, v36 & 1);

    sub_23843980C(v23, v24, v36 & 1);

    v22 = 1;
  }

  v38 = v45;
  sub_23843981C(v17, v45, &qword_27DF0B8D8, &qword_238768B98);
  v39 = v46;
  sub_23843981C(v38, v46, &qword_27DF0B8D8, &qword_238768B98);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8E0, &qword_238768BA0) + 48));
  sub_2384B9D50(0, v22, v23, v24, v25, v26);
  sub_2384B9D9C(0, v22, v23, v24, v25, v26);
  *v40 = 0;
  v40[1] = v22;
  v40[2] = v23;
  v40[3] = v24;
  v40[4] = v25;
  v40[5] = v26;
  sub_238439884(v17, &qword_27DF0B8D8, &qword_238768B98);
  sub_2384B9D9C(0, v22, v23, v24, v25, v26);
  sub_238439884(v38, &qword_27DF0B8D8, &qword_238768B98);
}

uint64_t sub_2384B8BB4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_23875C880();
  v3 = *(v2 - 8);
  v46 = v2;
  v47 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v44 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v7 = *(v6 - 8);
  v45 = v6 - 8;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v42 - v9;
  v11 = type metadata accessor for TransactionView();
  v12 = v1 + v11[6];
  v49 = sub_238758EB0();
  v50 = v13;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  v19 = sub_23875DA50();
  v21 = v20;
  v23 = v22;
  sub_2384397FC(v14, v16, v18 & 1);

  sub_23875D820();
  v24 = sub_23875DA60();
  v26 = v25;
  LOBYTE(v14) = v27;
  v43 = v28;

  sub_2384397FC(v19, v21, v23 & 1);

  v29 = v42[1] + v11[5];
  v30 = v44;
  sub_2384D5138(v44);
  v31 = v11[10];
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  v32 = v46;
  LOBYTE(v31) = sub_23875E9C0();
  (*(v47 + 8))(v30, v32);
  KeyPath = swift_getKeyPath();
  v34 = &v10[*(v45 + 44)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v36 = *MEMORY[0x277CE0B28];
  v37 = sub_23875DA00();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  *v10 = v24;
  *(v10 + 1) = v26;
  v10[16] = v14 & 1;
  *(v10 + 3) = v43;
  *(v10 + 4) = KeyPath;
  *(v10 + 5) = v31 & 1;
  v10[48] = (v31 & 1) == 0;
  v38 = swift_getKeyPath();
  v39 = v48;
  sub_2384396E4(v10, v48, &qword_27DF0A028, &qword_238764FC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8D8, &qword_238768B98);
  v41 = v39 + *(result + 36);
  *v41 = v38;
  *(v41 + 8) = 1;
  return result;
}

uint64_t sub_2384B8F1C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for TransactionView();
  v3 = a1 + *(v2 + 36);
  v4 = *(v3 + 8);
  (*v3)((*(a1 + *(v2 + 32)) & 1) == 0);
}

uint64_t sub_2384B8FDC()
{
  v0 = sub_23875BD20();
  v25 = *(v0 - 8);
  v26 = v0;
  v1 = *(v25 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238758090();
  v23 = *(v4 - 8);
  v24 = v4;
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2387591B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23875B7C0();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for TransactionView() + 24);
  sub_238758EC0();
  v18 = (*(v9 + 88))(v12, v8);
  if (v18 == *MEMORY[0x277CC7790])
  {
    sub_23875B7A0();
LABEL_5:
    sub_238758EA0();
    sub_23875BCC0();
    v19 = sub_238758070();
    (*(v25 + 8))(v3, v26);
    (*(v23 + 8))(v7, v24);
    (*(v13 + 8))(v16, v22);
    return v19;
  }

  if (v18 == *MEMORY[0x277CC7788])
  {
    sub_23875B790();
    goto LABEL_5;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2384B932C()
{
  v30 = sub_238757FC0();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v30);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238758A00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = *(type metadata accessor for TransactionView() + 28);
  sub_238758580();
  (*(v5 + 104))(v9, *MEMORY[0x277CC7158], v4);
  sub_2384B9D08(&unk_27DF0B400, MEMORY[0x277CC7180]);
  sub_23875EC40();
  sub_23875EC40();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  if (v32 != v31)
  {
    return sub_2387585B0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_238763B60;
  v15 = sub_2387585B0();
  v17 = v16;
  v18 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v19 = sub_238448C58();
  *(v14 + 64) = v19;
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  sub_2387585C0();
  v20 = sub_238757FB0();
  v22 = v21;
  (*(v0 + 8))(v3, v30);
  *(v14 + 96) = v18;
  *(v14 + 104) = v19;
  *(v14 + 72) = v20;
  *(v14 + 80) = v22;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v23 = qword_2814F1B90;
  v24 = sub_23875EA50();
  v25 = sub_23875EA50();
  v26 = sub_23875EA50();
  v27 = [v23 localizedStringForKey:v24 value:v25 table:v26];

  sub_23875EA80();
  v28 = sub_23875EAA0();

  return v28;
}

uint64_t sub_2384B9708()
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
  v8 = sub_238759120();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238759140();
  __swift_allocate_value_buffer(v13, qword_27DF0B820);
  __swift_project_value_buffer(v13, qword_27DF0B820);
  (*(v9 + 104))(v12, *MEMORY[0x277CC7748], v8);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  return sub_238759110();
}

unint64_t sub_2384B9960()
{
  result = qword_27DF0B858;
  if (!qword_27DF0B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B858);
  }

  return result;
}

unint64_t sub_2384B99B4()
{
  result = qword_27DF0B860;
  if (!qword_27DF0B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B848, &qword_238768B38);
    sub_23843A3E8(&qword_27DF0B868, &qword_27DF0B870, &qword_238768B48);
    sub_23843A3E8(&qword_27DF0B878, &qword_27DF0B880, &qword_238768B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B860);
  }

  return result;
}

uint64_t sub_2384B9A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384B9AFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384B9B60()
{
  v1 = *(type metadata accessor for TransactionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2384B8F1C(v2);
}

unint64_t sub_2384B9BC0()
{
  result = qword_27DF0B888;
  if (!qword_27DF0B888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B850, &qword_238768B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B848, &qword_238768B38);
    sub_2384B99B4();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A760, &qword_27DF0A768, &qword_238765D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B888);
  }

  return result;
}

unint64_t sub_2384B9CB4()
{
  result = qword_27DF0B890;
  if (!qword_27DF0B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B890);
  }

  return result;
}

uint64_t sub_2384B9D08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384B9D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_23843980C(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2384B9D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_2384397FC(a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_2384B9DE8()
{
  result = qword_27DF0B910;
  if (!qword_27DF0B910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B908, &qword_238773820);
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B910);
  }

  return result;
}

uint64_t sub_2384B9EA0(uint64_t a1)
{
  v2 = sub_23875E130();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23875CA00();
}

uint64_t type metadata accessor for ClassicOrderImageView()
{
  result = qword_27DF0B930;
  if (!qword_27DF0B930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384B9FDC()
{
  type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(319);
  if (v0 <= 0x3F)
  {
    sub_2384BA16C(319, &qword_2814F09B0, MEMORY[0x277CDF3E0]);
    if (v1 <= 0x3F)
    {
      sub_2384BA16C(319, &qword_27DF0B940, MEMORY[0x277CDFAA0]);
      if (v2 <= 0x3F)
      {
        sub_2384BA108();
        if (v3 <= 0x3F)
        {
          sub_2384BA16C(319, &qword_2814F09C0, MEMORY[0x277CE3AF8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384BA108()
{
  if (!qword_27DF0B948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B950, qword_2387747F0);
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0B948);
    }
  }
}

void sub_2384BA16C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_2384BA1DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875C980();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2384BA4D8(a1);
  v9 = type metadata accessor for ClassicOrderImageView();
  v10 = *(v2 + *(v9 + 20));
  sub_23875E4A0();
  sub_23875C5C0();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B958, &unk_238768D20) + 36));
  v12 = v34;
  *v11 = *&v33[8];
  v11[1] = v12;
  v11[2] = v35;
  v13 = *(v2 + *(v9 + 28));
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B960, &unk_238768E00) + 36));
  v15 = *(v5 + 28);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_23875CF50();
  v18 = *(*(v17 - 8) + 104);
  v18(&v14[v15], v16, v17);
  *v14 = v13;
  *(v14 + 1) = v13;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  v18(&v8[*(v5 + 28)], v16, v17);
  *v8 = v13;
  *(v8 + 1) = v13;
  sub_23875E000();
  v19 = sub_23875E060();

  sub_23875C4C0();
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B968, &unk_238768E10) + 36);
  sub_23846E86C(v8, v20);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36);
  v22 = v37;
  *v21 = v36;
  *(v21 + 16) = v22;
  *(v21 + 32) = v38;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *(v20 + *(v23 + 52)) = v19;
  *(v20 + *(v23 + 56)) = 256;
  v24 = sub_23875E4A0();
  v26 = v25;
  sub_2384BB7CC(v8, MEMORY[0x277CDFC08]);
  v27 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36));
  *v27 = v24;
  v27[1] = v26;
  v28 = sub_23875E4A0();
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20);
  v32 = (v20 + *(result + 36));
  *v32 = v28;
  v32[1] = v30;
  return result;
}

uint64_t sub_2384BA4D8@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - v3;
  v5 = sub_23875E0E0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B978, &unk_238780610);
  v10 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v12 = &v27 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B980, &unk_238768D60);
  v13 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B988, &unk_238768E30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v30 = &v27 - v18;
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = sub_2384BAA08();
  if (v19)
  {
    v20 = v19;
    sub_23875E0C0();
    (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v5);
    sub_23875E150();

    (*(v6 + 8))(v9, v5);
    sub_23875E7B0();
    v21 = sub_23875E7C0();
    (*(*(v21 - 8) + 56))(v4, 0, 1, v21);
    sub_23875E140();

    sub_238439884(v4, &qword_27DF0B970, &unk_238768D50);
    v22 = &v12[*(v31 + 36)];
    *v22 = 0;
    *(v22 + 4) = 1;
    sub_2384030AC(v12, v15);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
    sub_2384BB728();
    sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70);
    v23 = v30;
    sub_23875D1B0();

    sub_23840311C(v12);
  }

  else
  {
    v24 = sub_23875D040();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v25 = sub_23875E0D0();

    *v15 = v24;
    *(v15 + 1) = 0;
    v15[16] = 1;
    *(v15 + 3) = v25;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
    sub_2384BB728();
    sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70);
    v23 = v30;
    sub_23875D1B0();
  }

  sub_23840303C(v23, v32);
}

id sub_2384BAA08()
{
  v94 = sub_23875C1E0();
  v93 = *(v94 - 8);
  v1 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v92 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_23875C8A0();
  v106 = *(v103 - 8);
  v3 = *(v106 + 64);
  MEMORY[0x28223BE20](v103);
  v105 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2387589C0();
  v102 = *(v104 - 8);
  v5 = *(v102 + 64);
  v6 = MEMORY[0x28223BE20](v104);
  v100 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = &v92 - v8;
  v96 = sub_238758970();
  v95 = *(v96 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v96);
  v109 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2387589A0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2387589D0();
  v98 = *(v99 - 8);
  v14 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v97 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for OrderImageModel();
  v16 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v115 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23875C450();
  v112 = *(v18 - 8);
  v113 = v18;
  v19 = *(v112 + 64);
  MEMORY[0x28223BE20](v18);
  v111 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23875E7A0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v92 - v27;
  v29 = sub_238758960();
  v116 = *(v29 - 8);
  v30 = *(v116 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v107 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v110 = &v92 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v92 - v35;
  v37 = type metadata accessor for ClassicOrderImageView();
  v38 = v0;
  v39 = v0 + *(v37 + 44);
  sub_2384D5188(v28);
  sub_23875E790();
  LOBYTE(v39) = sub_23875E780();
  v40 = *(v22 + 8);
  v40(v26, v21);
  v40(v28, v21);
  if (v39)
  {
    v41 = v116;
    (*(v116 + 104))(v36, *MEMORY[0x277CC7130], v29);
    v42 = v29;
    v43 = v36;
    v44 = v37;
  }

  else
  {
    v45 = v116;
    v42 = v29;
    v46 = v38;
    v47 = v38 + *(v37 + 32);
    v48 = v111;
    sub_2384D4E38(v111);
    v50 = v112;
    v49 = v113;
    v51 = (*(v112 + 88))(v48, v113);
    v44 = v37;
    if (v51 == *MEMORY[0x277CDF3D0])
    {
      v41 = v45;
      v52 = v110;
      (*(v45 + 104))(v110, *MEMORY[0x277CC7120], v42);
      v43 = v36;
    }

    else
    {
      v53 = v49;
      v54 = *(v45 + 104);
      v43 = v36;
      v52 = v110;
      if (v51 == *MEMORY[0x277CDF3C0])
      {
        v54(v110, *MEMORY[0x277CC7118], v42);
      }

      else
      {
        v54(v110, *MEMORY[0x277CC7128], v42);
        (*(v50 + 8))(v48, v53);
      }

      v41 = v45;
    }

    (*(v41 + 32))(v43, v52, v42);
    v38 = v46;
  }

  v55 = sub_2387588A0();
  v56 = *(v38 + *(v44 + 24));
  v57 = type metadata accessor for OrderWidgetTimelineEntry.ClassicOrderData(0);
  v58 = *(v38 + *(v57 + 24));
  if (*(v58 + 16))
  {
    v59 = v57;
    v112 = v42;
    v113 = v43;
    v60 = v114;
    v61 = *(v114 + 24);
    v62 = sub_23875AF90();
    v63 = v115;
    (*(*(v62 - 8) + 16))(&v115[v61], v38, v62);
    v64 = *(v44 + 32);
    v65 = v44;
    v66 = v60[9];

    sub_2384D4E38(v63 + v66);
    v67 = *(v65 + 36);
    sub_2384D5200(v63 + v60[10]);
    *v63 = v56;
    v63[1] = v56;
    v63[2] = v58;
    *(v63 + v60[7]) = 1;
    *(v63 + v60[8]) = v55;
    v68 = *(v65 + 40);
    sub_2384D5228(v117);
    v69 = v118;
    v70 = v119;
    __swift_project_boxed_opaque_existential_1(v117, v118);
    v71 = (*(v70 + 24))(v63, v69, v70);
    if (v71)
    {
      v72 = v71;
      __swift_destroy_boxed_opaque_existential_1(v117);
      v73 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v72 scale:0 orientation:1.0];

      sub_2384BB7CC(v63, type metadata accessor for OrderImageModel);
      (*(v116 + 8))(v113, v112);
      return v73;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v117);
      v114 = *(v38 + *(v59 + 20));
      sub_238758980();
      v75 = v116;
      (*(v116 + 16))(v107, v113, v112);
      (*(v95 + 104))(v109, *MEMORY[0x277CC7140], v96);
      v76 = v105;
      sub_2384D5200(v105);
      v77 = v103;
      v78 = (*(v106 + 88))(v76, v103);
      if (v78 == *MEMORY[0x277CDFA88])
      {
        v79 = v102;
        v80 = v100;
        v81 = v104;
        (*(v102 + 104))(v100, *MEMORY[0x277CC7148], v104);
        v82 = v115;
      }

      else
      {
        v83 = v78;
        v84 = *MEMORY[0x277CDFA90];
        v85 = v102;
        v80 = v100;
        v81 = v104;
        (*(v102 + 104))(v100, *MEMORY[0x277CC7150], v104);
        v86 = v83 == v84;
        v79 = v85;
        v82 = v115;
        if (!v86)
        {
          (*(v106 + 8))(v105, v77);
        }
      }

      (*(v79 + 32))(v101, v80, v81);
      v87 = v97;
      sub_2387589B0();
      v88 = sub_238758950();
      (*(v98 + 8))(v87, v99);
      sub_2384D5228(v117);
      v89 = v118;
      v90 = v119;
      __swift_project_boxed_opaque_existential_1(v117, v118);
      (*(v90 + 8))(v88, v82, v89, v90);
      __swift_destroy_boxed_opaque_existential_1(v117);
      v91 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v88 scale:0 orientation:1.0];

      sub_2384BB7CC(v82, type metadata accessor for OrderImageModel);
      (*(v75 + 8))(v113, v112);
      return v91;
    }
  }

  else
  {
    (*(v41 + 8))(v43, v42);
    return 0;
  }
}

unint64_t sub_2384BB728()
{
  result = qword_27DF0B998;
  if (!qword_27DF0B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B978, &unk_238780610);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B998);
  }

  return result;
}

uint64_t sub_2384BB7CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2384BB82C()
{
  result = qword_27DF0B9A8;
  if (!qword_27DF0B9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B968, &unk_238768E10);
    sub_2384BB8E4();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9A8);
  }

  return result;
}

unint64_t sub_2384BB8E4()
{
  result = qword_27DF0B9B0;
  if (!qword_27DF0B9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B960, &unk_238768E00);
    sub_2384BB99C();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9B0);
  }

  return result;
}

unint64_t sub_2384BB99C()
{
  result = qword_27DF0B9B8;
  if (!qword_27DF0B9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B958, &unk_238768D20);
    sub_2384BBA28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9B8);
  }

  return result;
}

unint64_t sub_2384BBA28()
{
  result = qword_27DF0B9C0;
  if (!qword_27DF0B9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B9C8, &unk_238768D80);
    sub_2384BBAAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9C0);
  }

  return result;
}

unint64_t sub_2384BBAAC()
{
  result = qword_27DF0B9D0;
  if (!qword_27DF0B9D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B988, &unk_238768E30);
    sub_2384BB728();
    sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B9D0);
  }

  return result;
}

uint64_t type metadata accessor for ExtractedOrderImageView()
{
  result = qword_27DF0B9D8;
  if (!qword_27DF0B9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2384BBBD8()
{
  result = type metadata accessor for OrderWidgetTimelineEntry.ExtractedOrderData(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2384BBC70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875C980();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2384BBF58(v2, a1);
  v9 = type metadata accessor for ExtractedOrderImageView();
  v10 = *(v2 + *(v9 + 20));
  sub_23875E4A0();
  sub_23875C5C0();
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B958, &unk_238768D20) + 36));
  v12 = v34;
  *v11 = *&v33[8];
  v11[1] = v12;
  v11[2] = v35;
  v13 = *(v2 + *(v9 + 24));
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B960, &unk_238768E00) + 36));
  v15 = *(v5 + 28);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_23875CF50();
  v18 = *(*(v17 - 8) + 104);
  v18(&v14[v15], v16, v17);
  *v14 = v13;
  *(v14 + 1) = v13;
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
  v18(&v8[*(v5 + 28)], v16, v17);
  *v8 = v13;
  *(v8 + 1) = v13;
  sub_23875E000();
  v19 = sub_23875E060();

  sub_23875C4C0();
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B968, &unk_238768E10) + 36);
  sub_23846E86C(v8, v20);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36);
  v22 = v37;
  *v21 = v36;
  *(v21 + 16) = v22;
  *(v21 + 32) = v38;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *(v20 + *(v23 + 52)) = v19;
  *(v20 + *(v23 + 56)) = 256;
  v24 = sub_23875E4A0();
  v26 = v25;
  sub_23846E8D0(v8);
  v27 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36));
  *v27 = v24;
  v27[1] = v26;
  v28 = sub_23875E4A0();
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20);
  v32 = (v20 + *(result + 36));
  *v32 = v28;
  v32[1] = v30;
  return result;
}

uint64_t sub_2384BBF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B980, &unk_238768D60);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33 - v9;
  v11 = sub_23875E0E0();
  v36 = *(v11 - 8);
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B978, &unk_238780610);
  v15 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B988, &unk_238768E30);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v38 = &v33 - v20;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = *(a1 + 72);
  if (v21 >> 60 != 15)
  {
    v35 = a2;
    v22 = *(a1 + 64);
    v23 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_23844C8EC(v22, v21);
    sub_23844C8EC(v22, v21);
    v24 = sub_23875B980();
    v25 = [v23 initWithData_];

    sub_23844C940(v22, v21);
    if (v25)
    {
      v34 = v25;
      sub_23875E0C0();
      v26 = v36;
      (*(v36 + 104))(v14, *MEMORY[0x277CE0FE0], v11);
      sub_23875E150();

      (*(v26 + 8))(v14, v11);
      sub_23875E7B0();
      v27 = sub_23875E7C0();
      (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
      sub_23875E140();

      sub_2384BC514(v10);
      v28 = &v17[*(v39 + 36)];
      *v28 = 0;
      *(v28 + 4) = 1;
      sub_2384030AC(v17, v6);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
      sub_2384BB728();
      sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70);
      v29 = v38;
      sub_23875D1B0();

      sub_23844C940(v22, v21);
      sub_23840311C(v17);
      a2 = v35;
      goto LABEL_10;
    }

    sub_23844C940(v22, v21);
    a2 = v35;
  }

  v30 = sub_23875D040();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_23875E0D0();

  *v6 = v30;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *(v6 + 3) = v31;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B990, &unk_238768D70);
  sub_2384BB728();
  sub_23843A3E8(&qword_27DF0B9A0, &qword_27DF0B990, &unk_238768D70);
  v29 = v38;
  sub_23875D1B0();
LABEL_10:
  sub_23840303C(v29, a2);
}

uint64_t sub_2384BC514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B970, &unk_238768D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384BC57C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA78, &qword_238768F58);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - v4;
  v6 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v8 = *(v6 + 24);
  v7 = *(v6 + 28);
  v9 = *(v2 + 56);
  v10 = sub_23875AFB0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, v0 + v7, v10);
  v12 = sub_23875B000();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v5[v9], v0 + v8, v12);
  v14 = (*(v11 + 88))(v5, v10);
  if (v14 == *MEMORY[0x277CC8500])
  {
    v16 = *v0;
    v15 = v0[1];
    v17 = *(v13 + 8);

    v17(&v5[v9], v12);
  }

  else if (v14 == *MEMORY[0x277CC84F8])
  {
    v18 = (*(v13 + 88))(&v5[v9], v12);
    v19 = *MEMORY[0x277CC8508];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2387632F0;
    v22 = *v0;
    v21 = v0[1];
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = sub_238448C58();
    *(v20 + 32) = v22;
    *(v20 + 40) = v21;
    v23 = qword_2814F0880;

    if (v18 == v19)
    {
      if (v23 != -1)
      {
        swift_once();
      }

      v24 = qword_2814F1B90;
      v25 = sub_23875EA50();
      v26 = sub_23875EA50();
      v27 = sub_23875EA50();
      v28 = [v24 localizedStringForKey:v25 value:v26 table:v27];

      sub_23875EA80();
      v16 = sub_23875EAA0();
    }

    else
    {
      if (v23 != -1)
      {
        swift_once();
      }

      v30 = qword_2814F1B90;
      v31 = sub_23875EA50();
      v32 = sub_23875EA50();
      v33 = sub_23875EA50();
      v34 = [v30 localizedStringForKey:v31 value:v32 table:v33];

      sub_23875EA80();
      v16 = sub_23875EAA0();

      (*(v13 + 8))(&v5[v9], v12);
    }
  }

  else
  {
    v16 = *v0;
    v29 = v0[1];

    sub_238439884(v5, &qword_27DF0BA78, &qword_238768F58);
  }

  return v16;
}

uint64_t sub_2384BC9E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v2 = v0 + *(type metadata accessor for OrderPaymentTransactionRow.ViewModel(0) + 24);
  v3 = sub_23875AFE0();
  v5 = v4;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  v11 = sub_23875EAA0();

  return v11;
}

uint64_t sub_2384BCB80@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for OrderPaymentTransactionRow(0);
  sub_23843981C(v1 + *(v12 + 20), v11, &qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C880();
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

uint64_t OrderPaymentTransactionRow.body.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9E8, &unk_238768E40);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  v37 = sub_23875CE60();
  LOBYTE(v38) = 0;
  sub_2384BDF0C(v1, sub_2384BD2A8, &v52);
  v47 = v56;
  v48 = v57;
  v49 = v58[0];
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  v50[0] = v52;
  v50[1] = v53;
  v50[2] = v54;
  v50[3] = v55;
  v50[4] = v56;
  v50[5] = v57;
  v51 = v58[0];
  sub_23843981C(&v43, &v40, &qword_27DF0B9F0, &qword_23877EEF0);
  sub_238439884(v50, &qword_27DF0B9F0, &qword_23877EEF0);
  *&v42[55] = v46;
  *&v42[71] = v47;
  *&v42[87] = v48;
  *&v42[7] = v43;
  *&v42[23] = v44;
  v42[103] = v49;
  *&v42[39] = v45;
  v35 = v38;
  sub_2384BD53C(v1, &v40);
  sub_23875D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2384BE73C();
  v36 = v8;
  sub_23875DAF0();
  v56 = v41[3];
  v57 = v41[4];
  v58[0] = v41[5];
  *(v58 + 10) = *(&v41[5] + 10);
  v52 = v40;
  v53 = v41[0];
  v54 = v41[1];
  v55 = v41[2];
  sub_238439884(&v52, &qword_27DF0B9F8, &qword_238768E50);
  v9 = *(v1 + 24);
  if (v9)
  {
    v31 = *(v2 + 16);
    LOBYTE(v38) = 0;

    sub_23875E1A0();
    v30 = v40;
    v10 = *(&v40 + 1);
    KeyPath = swift_getKeyPath();
    v28 = v10;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    v28 = 0;
    KeyPath = 0;
  }

  v12 = v32;
  v13 = v33;
  v14 = *(v33 + 16);
  v15 = v34;
  v14(v32, v36, v34);
  *(&v39[5] + 1) = *&v42[80];
  *(&v39[4] + 1) = *&v42[64];
  *(&v39[3] + 1) = *&v42[48];
  *(&v39[1] + 1) = *&v42[16];
  v38 = v37;
  LOBYTE(v39[0]) = v35;
  *(&v39[6] + 1) = *&v42[96];
  *(v39 + 1) = *v42;
  *(&v39[2] + 1) = *&v42[32];
  v16 = v39[4];
  v17 = v29;
  v29[4] = v39[3];
  v17[5] = v16;
  v17[6] = v39[5];
  *(v17 + 105) = *(&v39[5] + 9);
  v18 = v39[0];
  *v17 = v38;
  v17[1] = v18;
  v19 = v39[2];
  v17[2] = v39[1];
  v17[3] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA30, &qword_238768E70);
  v14(v17 + *(v20 + 48), v12, v15);
  v21 = v17 + *(v20 + 64);

  sub_23843981C(&v38, &v40, &qword_27DF0BA28, &qword_238768E68);
  v23 = v30;
  v22 = v31;
  v24 = v28;
  sub_2384BE8A0(v31, v9, v30, v28, KeyPath, 0);
  sub_2384BE90C(v22, v9, v23, v24, KeyPath, 0);
  *v21 = v22;
  *(v21 + 1) = v9;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = KeyPath;
  v21[40] = 0;
  v25 = *(v13 + 8);
  v25(v36, v15);
  sub_2384BE90C(v22, v9, v23, v24, KeyPath, 0);
  v25(v12, v15);
  *(&v41[3] + 1) = *&v42[48];
  *(&v41[4] + 1) = *&v42[64];
  *(&v41[5] + 1) = *&v42[80];
  *(v41 + 1) = *v42;
  *(&v41[1] + 1) = *&v42[16];
  v40 = v37;
  LOBYTE(v41[0]) = v35;
  *(&v41[6] + 1) = *&v42[96];
  *(&v41[2] + 1) = *&v42[32];
  return sub_238439884(&v40, &qword_27DF0BA28, &qword_238768E68);
}

uint64_t sub_2384BD2A8@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384BC9E8();
  sub_2384397A8();
  v2 = sub_23875DAA0();
  v4 = v3;
  v6 = v5;
  sub_23875D890();
  v7 = sub_23875D9E0();
  v30 = v8;
  v31 = v7;
  v29 = v9;
  v32 = v10;
  sub_2384397FC(v2, v4, v6 & 1);

  sub_2384BC57C();
  v11 = sub_23875DAA0();
  v13 = v12;
  v15 = v14;
  sub_23875D7F0();
  v16 = sub_23875DA60();
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  sub_23875D440();
  v21 = sub_23875DA20();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_2384397FC(v16, v18, v20 & 1);

  *a1 = v31;
  *(a1 + 8) = v30;
  *(a1 + 16) = v29 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25 & 1;
  *(a1 + 56) = v27;
  sub_23843980C(v31, v30, v29 & 1);

  sub_23843980C(v21, v23, v25 & 1);

  sub_2384397FC(v21, v23, v25 & 1);

  sub_2384397FC(v31, v30, v29 & 1);
}

double sub_2384BD53C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384BCB80(v10);
  (*(v4 + 104))(v8, *MEMORY[0x277CDF9F0], v3);
  sub_23848987C();
  v11 = sub_23875E9C0();
  v12 = *(v4 + 8);
  v12(v8, v3);
  v12(v10, v3);
  if (v11)
  {
    v13 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2384BDA20(a1, &v47);
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v31 = v47;
    v32 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v38 = v47;
    v39 = v48;
    sub_23843981C(&v31, &v45, &qword_27DF0A248, &unk_238765310);
    sub_238439884(&v38, &qword_27DF0A248, &unk_238765310);
    *&v22[71] = v35;
    *&v22[55] = v34;
    *&v22[39] = v33;
    *&v22[23] = v32;
    *&v22[7] = v31;
    v45 = v13;
    LOBYTE(v46[0]) = v23;
    *(&v46[1] + 1) = *&v22[16];
    *(v46 + 1) = *v22;
    *&v46[5] = *(&v35 + 1);
    *(&v46[4] + 1) = *&v22[64];
    *(&v46[3] + 1) = *&v22[48];
    *(&v46[2] + 1) = *&v22[32];
    sub_2384BEC18(&v45);
  }

  else
  {
    v14 = sub_23875CE60();
    LOBYTE(v23) = 0;
    sub_2384BDF0C(a1, sub_2384BE0D0, &v47);
    v35 = v51;
    v36 = v52;
    v37 = v53[0];
    v31 = v47;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v41 = v50;
    v42 = v51;
    v43 = v52;
    v44 = v53[0];
    sub_23843981C(&v31, &v45, &qword_27DF0B9F0, &qword_23877EEF0);
    sub_238439884(&v38, &qword_27DF0B9F0, &qword_23877EEF0);
    *&v30[55] = v34;
    *&v30[71] = v35;
    *&v30[87] = v36;
    v30[103] = v37;
    *&v30[7] = v31;
    *&v30[23] = v32;
    *&v30[39] = v33;
    v45 = v14;
    LOBYTE(v46[0]) = v23;
    *(&v46[2] + 1) = *&v30[32];
    *(&v46[1] + 1) = *&v30[16];
    *(v46 + 1) = *v30;
    *(&v46[6] + 1) = *&v30[96];
    *(&v46[5] + 1) = *&v30[80];
    *(&v46[4] + 1) = *&v30[64];
    *(&v46[3] + 1) = *&v30[48];
    sub_2384BEC0C(&v45);
  }

  v51 = v46[3];
  v52 = v46[4];
  v53[0] = v46[5];
  *(v53 + 10) = *(&v46[5] + 10);
  v47 = v45;
  v48 = v46[0];
  v49 = v46[1];
  v50 = v46[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A250, &qword_238768E60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BA28, &qword_238768E68);
  sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60);
  sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68);
  sub_23875D1B0();

  v53[0] = v29[0];
  *(v53 + 10) = *(v29 + 10);
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v50 = v26;
  v15 = v28;
  v16 = v21;
  v21[4] = v27;
  v16[5] = v15;
  v16[6] = v53[0];
  *(v16 + 106) = *(v53 + 10);
  v17 = v48;
  *v16 = v47;
  v16[1] = v17;
  result = *&v49;
  v19 = v50;
  v16[2] = v49;
  v16[3] = v19;
  return result;
}

uint64_t sub_2384BDA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = sub_23875BD20();
  v51 = *(v3 - 8);
  v52 = v3;
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23875AFB0();
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v46[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_23875B7C0();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v53 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v15 = qword_2814F1B90;
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = sub_23875EA50();
  v19 = [v15 localizedStringForKey:v16 value:v17 table:v18];

  v20 = sub_23875EA80();
  v22 = v21;

  v60 = v20;
  v61 = v22;
  sub_2384397A8();
  v23 = sub_23875DAA0();
  v25 = v24;
  v47 = v26;
  v28 = v27;
  v29 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v30 = v55;
  v31 = v54;
  (*(v55 + 16))(v10, v56 + *(v29 + 28), v54);
  v32 = (*(v30 + 88))(v10, v31);
  if (v32 == *MEMORY[0x277CC8500])
  {
    sub_23875B7B0();
  }

  else if (v32 == *MEMORY[0x277CC84F8])
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B7B0();
    (*(v55 + 8))(v10, v54);
  }

  v33 = *(v29 + 32);
  v34 = v48;
  sub_23875BCC0();
  v35 = sub_238758070();
  v37 = v36;
  (*(v51 + 8))(v34, v52);
  (*(v49 + 8))(v14, v50);
  v60 = v35;
  v61 = v37;
  v38 = sub_23875DAA0();
  v40 = v39;
  v41 = v47 & 1;
  LOBYTE(v60) = v47 & 1;
  v59 = v47 & 1;
  v58 = 1;
  v43 = v42 & 1;
  v57 = v42 & 1;
  *a2 = v23;
  *(a2 + 8) = v25;
  *(a2 + 16) = v41;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v38;
  *(a2 + 56) = v39;
  *(a2 + 64) = v42 & 1;
  *(a2 + 72) = v44;
  sub_23843980C(v23, v25, v41);

  sub_23843980C(v38, v40, v43);

  sub_2384397FC(v38, v40, v43);

  sub_2384397FC(v23, v25, v60);
}

uint64_t sub_2384BDF0C@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_23875D030();
  LOBYTE(v22[0]) = 0;
  a2(v18, a1);
  *&v17[55] = v19;
  *&v17[39] = v18[2];
  *&v17[23] = v18[1];
  *&v17[7] = v18[0];
  v7 = v22[0];
  *&v20 = v6;
  *(&v20 + 1) = 0x4010000000000000;
  v21[0] = v22[0];
  v8 = *v17;
  *&v21[1] = *v17;
  *&v21[64] = *(&v19 + 1);
  v9 = *&v17[48];
  *&v21[49] = *&v17[48];
  v10 = *&v17[32];
  *&v21[33] = *&v17[32];
  v11 = *&v17[16];
  *&v21[17] = *&v17[16];
  v12 = *v21;
  *a3 = v20;
  *(a3 + 16) = v12;
  v13 = *&v21[16];
  v14 = *&v21[48];
  *(a3 + 48) = *&v21[32];
  *(a3 + 64) = v14;
  *(a3 + 32) = v13;
  v24 = v8;
  v16[88] = 0;
  *(a3 + 80) = *&v21[64];
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  v22[0] = v6;
  v22[1] = 0x4010000000000000;
  v23 = v7;
  *&v27[15] = *&v17[63];
  *v27 = v9;
  v26 = v10;
  v25 = v11;
  sub_23843981C(&v20, v16, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v22, &qword_27DF0BA70, &unk_238769590);
}

uint64_t sub_2384BE0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v52 = sub_23875BD20();
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v47 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_23875AFB0();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_23875B7C0();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v51 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v14 = qword_2814F1B90;
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  v19 = sub_23875EA80();
  v21 = v20;

  v58 = v19;
  v59 = v21;
  sub_2384397A8();
  v22 = sub_23875DAA0();
  v24 = v23;
  v46 = v25;
  v27 = v26;
  v28 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v29 = v54;
  v30 = v53;
  (*(v54 + 16))(v9, v55 + *(v28 + 28), v53);
  v31 = (*(v29 + 88))(v9, v30);
  if (v31 == *MEMORY[0x277CC8500])
  {
    sub_23875B7B0();
  }

  else if (v31 == *MEMORY[0x277CC84F8])
  {
    sub_23875B7A0();
  }

  else
  {
    sub_23875B7B0();
    (*(v54 + 8))(v9, v53);
  }

  v32 = *(v28 + 32);
  v33 = v47;
  sub_23875BCC0();
  v34 = sub_238758070();
  v36 = v35;
  (*(v50 + 8))(v33, v52);
  (*(v48 + 8))(v13, v49);
  v58 = v34;
  v59 = v36;
  v37 = sub_23875DAA0();
  v39 = v38;
  v40 = v46 & 1;
  v56 = v46 & 1;
  LOBYTE(v58) = v46 & 1;
  v42 = v41 & 1;
  v57 = v41 & 1;
  *a2 = v22;
  *(a2 + 8) = v24;
  *(a2 + 16) = v40;
  *(a2 + 24) = v27;
  *(a2 + 32) = v37;
  *(a2 + 40) = v38;
  *(a2 + 48) = v41 & 1;
  *(a2 + 56) = v43;
  sub_23843980C(v22, v24, v40);

  sub_23843980C(v37, v39, v42);

  sub_2384397FC(v37, v39, v42);

  sub_2384397FC(v22, v24, v56);
}

uint64_t sub_2384BE5B4@<X0>(_BYTE *a1@<X8>)
{
  sub_2384BEBB8();
  result = sub_23875CDC0();
  *a1 = v3;
  return result;
}

uint64_t sub_2384BE604(char *a1)
{
  v2 = *a1;
  sub_2384BEBB8();
  return sub_23875CDD0();
}

uint64_t _s12FinanceKitUI26OrderPaymentTransactionRowV9ViewModelV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = type metadata accessor for OrderPaymentTransactionRow.ViewModel(0);
  v9 = v8[6];
  if ((sub_23875AFF0() & 1) == 0)
  {
    return 0;
  }

  v10 = v8[7];
  if ((sub_23875AFA0() & 1) == 0)
  {
    return 0;
  }

  v11 = v8[8];

  return MEMORY[0x2821174A8](a1 + v11, a2 + v11);
}

unint64_t sub_2384BE73C()
{
  result = qword_27DF0BA00;
  if (!qword_27DF0BA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B9F8, &qword_238768E50);
    sub_2384BE7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA00);
  }

  return result;
}

unint64_t sub_2384BE7C0()
{
  result = qword_27DF0BA08;
  if (!qword_27DF0BA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BA10, &qword_238768E58);
    sub_23843A3E8(&qword_27DF0BA18, &qword_27DF0A250, &qword_238768E60);
    sub_23843A3E8(&qword_27DF0BA20, &qword_27DF0BA28, &qword_238768E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA08);
  }

  return result;
}

void sub_2384BE8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {

    sub_2384BE900(a5, a6 & 1);
  }
}

uint64_t sub_2384BE900(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_2384BE90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {

    sub_2384348B8(a5, a6 & 1);
  }
}

void sub_2384BE9F0()
{
  type metadata accessor for OrderPaymentTransactionRow.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384BEA74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2384BEA74()
{
  if (!qword_2814F09A8)
  {
    sub_23875C880();
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F09A8);
    }
  }
}

void sub_2384BEAF4()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_23875B000();
    if (v1 <= 0x3F)
    {
      sub_23875AFB0();
      if (v2 <= 0x3F)
      {
        sub_238758090();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2384BEBB8()
{
  result = qword_27DF0BA68;
  if (!qword_27DF0BA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA68);
  }

  return result;
}

uint64_t type metadata accessor for OrderWidgetMoreTextView()
{
  result = qword_27DF0BA80;
  if (!qword_27DF0BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384BEC94()
{
  sub_23875E7A0();
  if (v0 <= 0x3F)
  {
    sub_2384BEA74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_2384BED44@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_23875C880();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - v7;
  v8 = sub_2387591F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2387632F0;
  v14 = *v1;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = MEMORY[0x277D83B88];
  *(v13 + 64) = v15;
  *(v13 + 32) = v14;
  (*(v9 + 104))(v12, *MEMORY[0x277CC77B0], v8);
  v16 = sub_238758A50();
  v18 = v17;

  (*(v9 + 8))(v12, v8);
  *&v55 = v16;
  *(&v55 + 1) = v18;
  sub_2384397A8();
  v19 = sub_23875DAA0();
  v50 = v20;
  v51 = v19;
  LOBYTE(v8) = v21;
  v49 = v22;
  LOBYTE(v16) = sub_23875D790();
  v23 = v1 + *(type metadata accessor for OrderWidgetMoreTextView() + 24);
  v24 = v46;
  sub_2384D5138(v46);
  v26 = v47;
  v25 = v48;
  (*(v48 + 104))(v47, *MEMORY[0x277CDFA00], v3);
  sub_23848987C();
  sub_23875E9B0();
  v27 = *(v25 + 8);
  v27(v26, v3);
  v27(v24, v3);
  sub_23875C3D0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v53 = v8 & 1;
  v52 = 0;
  sub_23875E4B0();
  sub_23875C9C0();
  *(&v54[3] + 7) = v58;
  *(&v54[4] + 7) = v59;
  *(&v54[5] + 7) = v60;
  *(&v54[6] + 7) = v61;
  *(v54 + 7) = v55;
  *(&v54[1] + 7) = v56;
  *(&v54[2] + 7) = v57;
  LODWORD(v23) = sub_23875D440();
  v36 = sub_23875D960();
  KeyPath = swift_getKeyPath();
  v38 = swift_getKeyPath();
  v39 = swift_getKeyPath();
  v40 = v50;
  *a1 = v51;
  *(a1 + 8) = v40;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = v49;
  *(a1 + 32) = v16;
  *(a1 + 40) = v29;
  *(a1 + 48) = v31;
  *(a1 + 56) = v33;
  *(a1 + 64) = v35;
  *(a1 + 72) = 0;
  v41 = v54[5];
  *(a1 + 137) = v54[4];
  *(a1 + 153) = v41;
  *(a1 + 169) = v54[6];
  *(a1 + 184) = *(&v54[6] + 15);
  v42 = v54[1];
  *(a1 + 73) = v54[0];
  *(a1 + 89) = v42;
  result = *&v54[2];
  v44 = v54[3];
  *(a1 + 105) = v54[2];
  *(a1 + 121) = v44;
  *(a1 + 192) = v23;
  *(a1 + 200) = KeyPath;
  *(a1 + 208) = v36;
  *(a1 + 216) = v38;
  *(a1 + 224) = 1;
  *(a1 + 232) = v39;
  *(a1 + 240) = 1;
  *(a1 + 248) = 0;
  return result;
}

unint64_t sub_2384BF1BC()
{
  result = qword_27DF0BA90;
  if (!qword_27DF0BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BA98, &qword_238769060);
    sub_2384BF274();
    sub_23843A3E8(&qword_2814F0928, &qword_27DF09360, &unk_23876F830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BA90);
  }

  return result;
}

unint64_t sub_2384BF274()
{
  result = qword_27DF0BAA0;
  if (!qword_27DF0BAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAA8, &qword_238769068);
    sub_2384BF32C();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAA0);
  }

  return result;
}

unint64_t sub_2384BF32C()
{
  result = qword_27DF0BAB0;
  if (!qword_27DF0BAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAB8, &qword_238769070);
    sub_2384BF3E4();
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAB0);
  }

  return result;
}

unint64_t sub_2384BF3E4()
{
  result = qword_27DF0BAC0;
  if (!qword_27DF0BAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAC8, &qword_238769078);
    sub_2384BF49C();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAC0);
  }

  return result;
}

unint64_t sub_2384BF49C()
{
  result = qword_27DF0BAD0;
  if (!qword_27DF0BAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAD8, &unk_238769080);
    sub_2384BF528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAD0);
  }

  return result;
}

unint64_t sub_2384BF528()
{
  result = qword_27DF0BAE0;
  if (!qword_27DF0BAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BAE8, &unk_23876A630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BAE0);
  }

  return result;
}

uint64_t sub_2384BF5C8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2384BF5F8(uint64_t a1)
{
  v2 = sub_2384C0F60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2384BF634(uint64_t a1)
{
  v2 = sub_2384C0F60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2384BF670@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2384BF9A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2384BF6C0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB40, &qword_238769200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2384C0F60();
  sub_23875F790();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_2384BF844()
{
  result = qword_27DF0BB00;
  if (!qword_27DF0BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB00);
  }

  return result;
}

unint64_t sub_2384BF89C()
{
  result = qword_27DF0BB08;
  if (!qword_27DF0BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB08);
  }

  return result;
}

unint64_t sub_2384BF8F4()
{
  result = qword_27DF0BB10;
  if (!qword_27DF0BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB10);
  }

  return result;
}

unint64_t sub_2384BF94C()
{
  result = qword_27DF0BB18;
  if (!qword_27DF0BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB18);
  }

  return result;
}

uint64_t sub_2384BF9A0(uint64_t a1)
{
  v179 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB20, &unk_2387691E0);
  v161 = *(v1 - 8);
  v162 = v1;
  v2 = *(v161 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v154 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v146 = &v145 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v160 = &v145 - v8;
  MEMORY[0x28223BE20](v7);
  v159 = &v145 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB28, &unk_23876D610);
  v173 = *(v10 - 8);
  v174 = v10;
  v11 = *(v173 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v166 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v158 = &v145 - v15;
  MEMORY[0x28223BE20](v14);
  v172 = &v145 - v16;
  v171 = sub_23875AF00();
  v177 = *(v171 - 8);
  v17 = *(v177 + 64);
  MEMORY[0x28223BE20](v171);
  v176 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_23875AE10();
  v149 = *(v150 - 8);
  v19 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v148 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_23875ACE0();
  v152 = *(v153 - 8);
  v21 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB30, &unk_2387691F0);
  v164 = *(v23 - 8);
  v165 = v23;
  v24 = *(v164 + 64);
  MEMORY[0x28223BE20](v23);
  v163 = &v145 - v25;
  v26 = sub_23875B120();
  v168 = *(v26 - 8);
  v169 = v26;
  v27 = *(v168 + 64);
  MEMORY[0x28223BE20](v26);
  v167 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_238757C30();
  v175 = *(v178 - 8);
  v29 = *(v175 + 64);
  v30 = MEMORY[0x28223BE20](v178);
  v155 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v147 = &v145 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v170 = &v145 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v145 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v157 = &v145 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v156 = &v145 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v145 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v145 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB38, &unk_23876D7E0);
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v145 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v55 = &v145 - v54;
  v56 = sub_23875B0A0();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56);
  v60 = &v145 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v57 + 16))(v60, v179, v56);
  v61 = (*(v57 + 88))(v60, v56);
  if (v61 == *MEMORY[0x277CC8520])
  {
    (*(v57 + 96))(v60, v56);
    (*(v49 + 32))(v55, v60, v48);
    (*(v49 + 16))(v53, v55, v48);
    v62 = (*(v49 + 88))(v53, v48);
    if (v62 == *MEMORY[0x277CC83B8])
    {
      (*(v49 + 96))(v53, v48);
      v63 = v175;
      v64 = v178;
      (*(v175 + 32))(v47, v53, v178);
      (*(v63 + 16))(v45, v47, v64);
      v65 = (*(v63 + 88))(v45, v64);
      if (v65 == *MEMORY[0x277CC6B98] || (v66 = v65, v65 == *MEMORY[0x277CC6BA8]))
      {
        v69 = sub_23875E030();
        (*(v63 + 8))(v47, v64);
        (*(v49 + 8))(v55, v48);
      }

      else
      {
        v67 = *MEMORY[0x277CC6BA0];
        v179 = sub_23875E070();
        v68 = *(v63 + 8);
        v68(v47, v64);
        (*(v49 + 8))(v55, v48);
        if (v66 != v67)
        {
          v68(v45, v64);
        }

        return v179;
      }
    }

    else
    {
      v83 = (v49 + 8);
      if (v62 == *MEMORY[0x277CC83B0])
      {
        v84 = sub_23875E070();
      }

      else
      {
        v84 = sub_23875E080();
      }

      v69 = v84;
      v107 = *v83;
      (*v83)(v55, v48);
      v107(v53, v48);
    }

    return v69;
  }

  if (v61 == *MEMORY[0x277CC8528])
  {
    (*(v57 + 96))(v60, v56);
    v70 = v171;
    (*(v177 + 32))(v176, v60, v171);
    v71 = v172;
    sub_23875AED0();
    v73 = v173;
    v72 = v174;
    v74 = (*(v173 + 88))(v71, v174);
    if (v74 == *MEMORY[0x277CC83B8])
    {
      v75 = v166;
      (*(v73 + 16))(v166, v71, v72);
      (*(v73 + 96))(v75, v72);
      v76 = v175;
      v77 = v178;
      (*(v175 + 32))(v38, v75, v178);
      v78 = v170;
      (*(v76 + 16))(v170, v38, v77);
      v79 = (*(v76 + 88))(v78, v77);
      if (v79 != *MEMORY[0x277CC6B98])
      {
        v80 = v79;
        if (v79 != *MEMORY[0x277CC6BA8])
        {
          v81 = *MEMORY[0x277CC6BA0];
          v179 = sub_23875E070();
          v82 = *(v76 + 8);
          v82(v38, v77);
          (*(v177 + 8))(v176, v70);
          if (v80 != v81)
          {
            v82(v170, v77);
          }

          v69 = v179;
          goto LABEL_56;
        }
      }

      v69 = sub_23875E030();
      (*(v76 + 8))(v38, v77);
LABEL_55:
      (*(v177 + 8))(v176, v70);
LABEL_56:
      (*(v73 + 8))(v71, v72);
      return v69;
    }

    if (v74 == *MEMORY[0x277CC83A8])
    {
      v103 = v158;
      (*(v73 + 16))(v158, v71, v72);
      (*(v73 + 96))(v103, v72);
      v104 = sub_23875ACF0();
      v105 = *(v104 - 8);
      v106 = (*(v105 + 88))(v103, v104);
      if (v106 == *MEMORY[0x277CC83E8] || v106 == *MEMORY[0x277CC83E0] || v106 == *MEMORY[0x277CC83D8] || v106 == *MEMORY[0x277CC83F8])
      {
        (*(v73 + 8))(v71, v72);
        v134 = sub_23875E030();
      }

      else
      {
        if (v106 != *MEMORY[0x277CC83F0] && v106 != *MEMORY[0x277CC8400])
        {
          (*(v105 + 8))(v103, v104);
LABEL_54:
          v69 = sub_23875E070();
          goto LABEL_55;
        }

        (*(v73 + 8))(v71, v72);
        v134 = sub_23875E070();
      }

      v69 = v134;
      (*(v177 + 8))(v176, v70);
      return v69;
    }

    v131 = *MEMORY[0x277CC83B0];
    goto LABEL_54;
  }

  if (v61 != *MEMORY[0x277CC8538])
  {
    if (v61 != *MEMORY[0x277CC8530])
    {
      v132 = sub_23875E070();
      v133 = v60;
      v69 = v132;
      (*(v57 + 8))(v133, v56);
      return v69;
    }

    (*(v57 + 96))(v60, v56);
    v109 = v161;
    v108 = v162;
    v110 = v159;
    (*(v161 + 32))(v159, v60, v162);
    v111 = *(v109 + 16);
    v112 = v160;
    v111(v160, v110, v108);
    v113 = (*(v109 + 88))(v112, v108);
    if (v113 == *MEMORY[0x277CC83B8])
    {
      v114 = v154;
      v111(v154, v112, v108);
      (*(v109 + 96))(v114, v108);
      v115 = v175;
      v116 = v147;
      v117 = v178;
      (*(v175 + 32))(v147, v114, v178);
      v118 = v155;
      (*(v115 + 16))(v155, v116, v117);
      v119 = (*(v115 + 88))(v118, v117);
      if (v119 == *MEMORY[0x277CC6B98] || (v120 = v119, v119 == *MEMORY[0x277CC6BA8]))
      {
        v69 = sub_23875E030();
        (*(v115 + 8))(v116, v178);
        v124 = *(v109 + 8);
        v124(v110, v108);
      }

      else
      {
        LODWORD(v177) = *MEMORY[0x277CC6BA0];
        v179 = sub_23875E070();
        v121 = *(v115 + 8);
        v122 = v116;
        v123 = v178;
        v121(v122, v178);
        v124 = *(v109 + 8);
        v124(v110, v108);
        if (v120 != v177)
        {
          v121(v155, v123);
        }

        v69 = v179;
      }

      v124(v112, v108);
      return v69;
    }

    if (v113 == *MEMORY[0x277CC83A8])
    {
      v136 = v146;
      v111(v146, v112, v108);
      (*(v109 + 96))(v136, v108);
      v137 = sub_23875AD40();
      v138 = *(v137 - 8);
      v139 = (*(v138 + 88))(v136, v137);
      if (v139 == *MEMORY[0x277CC8410] || v139 == *MEMORY[0x277CC8420] || v139 == *MEMORY[0x277CC8408])
      {
        goto LABEL_77;
      }

      if (v139 == *MEMORY[0x277CC8418])
      {
LABEL_65:
        v140 = *(v109 + 8);
        v140(v112, v108);
        v141 = sub_23875E070();
LABEL_78:
        v69 = v141;
        v140(v110, v108);
        return v69;
      }

      if (v139 == *MEMORY[0x277CC8430])
      {
LABEL_77:
        v140 = *(v109 + 8);
        v140(v112, v108);
        v141 = sub_23875E030();
        goto LABEL_78;
      }

      if (v139 == *MEMORY[0x277CC8428])
      {
        goto LABEL_65;
      }

      (*(v138 + 8))(v136, v137);
    }

    else
    {
      v142 = *MEMORY[0x277CC83B0];
    }

    v69 = sub_23875E070();
    v143 = *(v109 + 8);
    v143(v110, v108);
    v143(v112, v108);
    return v69;
  }

  (*(v57 + 96))(v60, v56);
  v86 = v167;
  v85 = v168;
  v87 = v169;
  (*(v168 + 32))(v167, v60, v169);
  v88 = v163;
  sub_23875B0B0();
  v90 = v164;
  v89 = v165;
  v91 = (*(v164 + 88))(v88, v165);
  if (v91 == *MEMORY[0x277CC83B8])
  {
    (*(v90 + 96))(v88, v89);
    v92 = v175;
    v93 = v156;
    v94 = v88;
    v95 = v178;
    (*(v175 + 32))(v156, v94, v178);
    v96 = v157;
    (*(v92 + 16))(v157, v93, v95);
    v97 = (*(v92 + 88))(v96, v95);
    if (v97 != *MEMORY[0x277CC6B98])
    {
      v98 = v97;
      if (v97 != *MEMORY[0x277CC6BA8])
      {
        v99 = *MEMORY[0x277CC6BA0];
        v100 = sub_23875E070();
        v101 = v93;
        v102 = *(v92 + 8);
        v102(v101, v95);
        (*(v85 + 8))(v86, v87);
        if (v98 != v99)
        {
          v102(v96, v95);
        }

        return v100;
      }
    }

    v135 = sub_23875E030();
    (*(v92 + 8))(v93, v95);
    v69 = v135;
    goto LABEL_69;
  }

  if (v91 != *MEMORY[0x277CC83A8])
  {
    v69 = sub_23875E070();
    (*(v85 + 8))(v86, v87);
    (*(v90 + 8))(v88, v89);
    return v69;
  }

  (*(v90 + 96))(v88, v89);
  v125 = v152;
  v126 = v151;
  v127 = v153;
  (*(v152 + 32))(v151, v88, v153);
  v128 = v148;
  sub_23875ACD0();
  v129 = (*(v149 + 88))(v128, v150);
  if (v129 == *MEMORY[0x277CC8468] || v129 == *MEMORY[0x277CC8458] || v129 == *MEMORY[0x277CC8480] || v129 == *MEMORY[0x277CC8460] || v129 == *MEMORY[0x277CC8490] || v129 == *MEMORY[0x277CC8478])
  {
    v130 = sub_23875E030();
    goto LABEL_68;
  }

  if (v129 == *MEMORY[0x277CC8470] || v129 == *MEMORY[0x277CC8488])
  {
    v130 = sub_23875E070();
LABEL_68:
    v69 = v130;
    (*(v125 + 8))(v126, v127);
LABEL_69:
    (*(v85 + 8))(v86, v87);
    return v69;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

unint64_t sub_2384C0F60()
{
  result = qword_27DF0BB48;
  if (!qword_27DF0BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB48);
  }

  return result;
}

unint64_t sub_2384C0FC8()
{
  result = qword_27DF0BB50;
  if (!qword_27DF0BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB50);
  }

  return result;
}

unint64_t sub_2384C1020()
{
  result = qword_27DF0BB58;
  if (!qword_27DF0BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BB58);
  }

  return result;
}

uint64_t sub_2384C1074()
{
  v1 = (v0 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2387632F0;
    *(v4 + 56) = MEMORY[0x277D837D0];
    *(v4 + 64) = sub_238448C58();
    *(v4 + 32) = v2;
    *(v4 + 40) = v3;
    v5 = qword_2814F0880;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_2814F1B90;
    v7 = sub_23875EA50();
    v8 = sub_23875EA50();
    v9 = sub_23875EA50();
    v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

    sub_23875EA80();
    v2 = sub_23875EAA0();
  }

  return v2;
}

uint64_t sub_2384C120C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = *(v3 + 16);
  v13(&v25 - v11, v1, v2);
  v14 = (*(v3 + 88))(v12, v2);
  if (v14 != *MEMORY[0x277CC83B8])
  {
    goto LABEL_14;
  }

  v13(v7, v12, v2);
  (*(v3 + 96))(v7, v2);
  v15 = sub_2387580D0();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 88))(v7, v15);
  if (v17 != *MEMORY[0x277CC6DF0])
  {
    if (v17 == *MEMORY[0x277CC6DE0] || v17 == *MEMORY[0x277CC6DD8])
    {
LABEL_22:
      (*(v3 + 8))(v12, v2);
      return sub_23875E030();
    }

    if (v17 != *MEMORY[0x277CC6DF8] && v17 != *MEMORY[0x277CC6DE8])
    {
      v10 = v7;
      while (1)
      {
        (*(v16 + 8))(v10, v15);
        while (1)
        {
          v14 = sub_23875F520();
          __break(1u);
LABEL_14:
          if (v14 == *MEMORY[0x277CC83A8])
          {
            break;
          }

          if (v14 == *MEMORY[0x277CC83B0])
          {
            goto LABEL_24;
          }
        }

        v13(v10, v12, v2);
        (*(v3 + 96))(v10, v2);
        v15 = sub_2387581B0();
        v16 = *(v15 - 8);
        v20 = (*(v16 + 88))(v10, v15);
        if (v20 == *MEMORY[0x277CC6E40])
        {
          break;
        }

        if (v20 == *MEMORY[0x277CC6E38])
        {
          goto LABEL_22;
        }

        v21 = v20 == *MEMORY[0x277CC6E48] || v20 == *MEMORY[0x277CC6E20];
        if (v21 || v20 == *MEMORY[0x277CC6E60])
        {
          goto LABEL_22;
        }

        if (v20 == *MEMORY[0x277CC6E58] || v20 == *MEMORY[0x277CC6E30])
        {
          break;
        }

        v24 = v20 == *MEMORY[0x277CC6E28] || v20 == *MEMORY[0x277CC6E50];
        if (v24 || v20 == *MEMORY[0x277CC6E18])
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_24:
  (*(v3 + 8))(v12, v2);
  return sub_23875E070();
}

uint64_t sub_2384C1648()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v2 = (v0 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0) + 24));
  v4 = *v2;
  v3 = v2[1];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  v5 = qword_2814F0880;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  v11 = sub_23875EAA0();

  return v11;
}

uint64_t sub_2384C17E0@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  active = type metadata accessor for OrderListActiveExtractedOrderRow(0);
  v53 = *(active - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](active - 8);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBD0, &qword_2387693C8);
  v58 = *(v52 - 8);
  v4 = *(v58 + 64);
  v5 = MEMORY[0x28223BE20](v52);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBD8, &qword_2387693D0);
  v10 = *(v55 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v55);
  v13 = (&v50 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBE0, &qword_2387693D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBE8, &qword_2387693E0);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v56 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - v25;
  *v26 = sub_23875CE60();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBF0, &qword_2387693E8);
  sub_2384C1E50(v1, &v26[*(v27 + 44)]);
  v28 = sub_23875D000();
  v29 = *(v21 + 44);
  v60 = v26;
  v30 = &v26[v29];
  *v30 = v28;
  v30[1] = sub_23843480C;
  v30[2] = 0;
  v31 = *(v1 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0) + 44));
  if (*(v31 + 16))
  {
    v32 = 1;
  }

  else
  {
    *v13 = sub_23875E4B0();
    v13[1] = v33;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC18, &unk_238769420);
    sub_2384C2A84(v1, v13 + *(v34 + 44));
    sub_2384396E4(v13, v19, &qword_27DF0BBD8, &qword_2387693D0);
    v32 = 0;
  }

  (*(v10 + 56))(v19, v32, 1, v55);
  v61 = v31;
  swift_getKeyPath();
  v51 = v19;
  v35 = v54;
  sub_2384C6264(v1, v54, type metadata accessor for OrderListActiveExtractedOrderRow);
  v36 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v37 = swift_allocObject();
  sub_2384C5268(v35, v37 + v36, type metadata accessor for OrderListActiveExtractedOrderRow);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BBF8, &qword_238769410);
  sub_23843A3E8(&qword_27DF0BC00, &qword_27DF0BBF8, &qword_238769410);
  sub_23843A3E8(&qword_27DF0BC08, &qword_27DF0BBD8, &qword_2387693D0);
  sub_23875E370();
  v38 = v56;
  sub_23843981C(v60, v56, &qword_27DF0BBE8, &qword_2387693E0);
  v39 = v57;
  sub_23843981C(v19, v57, &qword_27DF0BBE0, &qword_2387693D8);
  v40 = v58;
  v41 = v9;
  v42 = *(v58 + 16);
  v43 = v52;
  v42(v7, v41, v52);
  v44 = v7;
  v45 = v43;
  v46 = v59;
  sub_23843981C(v38, v59, &qword_27DF0BBE8, &qword_2387693E0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC10, &qword_238769418);
  sub_23843981C(v39, v46 + *(v47 + 48), &qword_27DF0BBE0, &qword_2387693D8);
  v42((v46 + *(v47 + 64)), v44, v45);
  v48 = *(v40 + 8);
  v48(v41, v45);
  sub_238439884(v51, &qword_27DF0BBE0, &qword_2387693D8);
  sub_238439884(v60, &qword_27DF0BBE8, &qword_2387693E0);
  v48(v44, v45);
  sub_238439884(v39, &qword_27DF0BBE0, &qword_2387693D8);
  return sub_238439884(v38, &qword_27DF0BBE8, &qword_2387693E0);
}

uint64_t sub_2384C1E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC60, &qword_238769490);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v32[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC68, &qword_238769498);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v32[-v16];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_23875CE60();
  *(v17 + 1) = 0x4028000000000000;
  v17[16] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC70, &qword_2387694A0);
  sub_2384C21BC(a1, &v17[*(v18 + 44)]);
  v19 = (a1 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0) + 48));
  v20 = v19[1];
  v35 = *v19;
  v36[0] = v20;
  *(v36 + 12) = *(v19 + 28);
  v21 = *(v36 + 12);
  *v10 = v35;
  v10[1] = v20;
  *(v10 + 28) = v21;
  v22 = type metadata accessor for ExtractedOrderActionsMenu(0);
  v23 = *(v22 + 20);
  *(v10 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v24 = v10 + *(v22 + 24);
  v34 = 0;
  sub_23846CF68(&v35, v32);
  sub_23875E1A0();
  v25 = v33;
  *v24 = v32[0];
  *(v24 + 1) = v25;
  v26 = sub_23875E080();
  KeyPath = swift_getKeyPath();
  v28 = (v10 + *(v4 + 36));
  *v28 = KeyPath;
  v28[1] = v26;
  sub_23843981C(v17, v15, &qword_27DF0BC68, &qword_238769498);
  sub_23843981C(v10, v8, &qword_27DF0BC60, &qword_238769490);
  sub_23843981C(v15, a2, &qword_27DF0BC68, &qword_238769498);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC78, &qword_238769508);
  v30 = a2 + *(v29 + 48);
  *v30 = 0x4028000000000000;
  *(v30 + 8) = 0;
  sub_23843981C(v8, a2 + *(v29 + 64), &qword_27DF0BC60, &qword_238769490);
  sub_238439884(v10, &qword_27DF0BC60, &qword_238769490);
  sub_238439884(v17, &qword_27DF0BC68, &qword_238769498);
  sub_238439884(v8, &qword_27DF0BC60, &qword_238769490);
  sub_238439884(v15, &qword_27DF0BC68, &qword_238769498);
}

uint64_t sub_2384C21BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_23875DFD0();
  v3 = *(v42 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v42);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09C70, &unk_238769510);
  v7 = *(*(v41 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v41);
  v45 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v13 = *(active + 32);
  v14 = (a1 + *(active + 28));
  v15 = *v14;
  v16 = v14[1];
  v18 = *(a1 + v13);
  v17 = *(a1 + v13 + 8);
  *&v48 = 0;
  BYTE8(v48) = -1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B30, &unk_238764470);
  sub_23875E1A0();
  v19 = v51;
  v20 = *v52;
  *(v11 + 4) = v50;
  v11[40] = v19;
  *(v11 + 6) = v20;
  *&v48 = 0;
  BYTE8(v48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09B40, &qword_238769520);
  sub_23875E1A0();
  v21 = v51;
  v22 = *v52;
  *(v11 + 7) = v50;
  v11[64] = v21;
  *(v11 + 9) = v22;
  v23 = type metadata accessor for ExtractedOrderMerchantIcon(0);
  v40 = a1;
  v24 = *(v23 + 32);
  *&v11[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *v11 = v15;
  *(v11 + 1) = v16;
  *(v11 + 2) = v18;
  *(v11 + 3) = v17;
  (*(v3 + 104))(v6, *MEMORY[0x277CE0EE0], v42);
  v25 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v27 = &v11[*(v41 + 36)];
  v28 = type metadata accessor for OrderImageStyleModifier();
  *&v27[*(v28 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v27[*(v28 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v27 = xmmword_2387692C0;
  *(v27 + 2) = 0;
  v27[24] = 1;
  *(v27 + 4) = v25;
  v27[40] = 0;
  v29 = sub_23875D030();
  LOBYTE(v50) = 0;
  sub_2384C26C0(v40, v47);
  *&v46[7] = v47[0];
  *&v46[23] = v47[1];
  *&v46[39] = v47[2];
  *&v46[55] = v47[3];
  v30 = v50;
  v31 = v45;
  sub_23843981C(v11, v45, &qword_27DF09C70, &unk_238769510);
  v32 = v43;
  sub_23843981C(v31, v43, &qword_27DF09C70, &unk_238769510);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC80, &qword_238769588) + 48);
  *&v48 = v29;
  *(&v48 + 1) = 0x4010000000000000;
  v49[0] = v30;
  *&v49[1] = *v46;
  *&v49[17] = *&v46[16];
  *&v49[33] = *&v46[32];
  *&v49[49] = *&v46[48];
  v34 = *&v46[63];
  *&v49[64] = *&v46[63];
  v35 = *v49;
  *v33 = v48;
  *(v33 + 16) = v35;
  v36 = *&v49[16];
  v37 = *&v49[32];
  v38 = *&v49[48];
  *(v33 + 80) = v34;
  *(v33 + 48) = v37;
  *(v33 + 64) = v38;
  *(v33 + 32) = v36;
  sub_23843981C(&v48, &v50, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v11, &qword_27DF09C70, &unk_238769510);
  v50 = v29;
  v51 = 0x4010000000000000;
  v52[0] = v30;
  v53 = *&v46[16];
  v54 = *&v46[32];
  *v55 = *&v46[48];
  *&v55[15] = *&v46[63];
  *&v52[1] = *v46;
  sub_238439884(&v50, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v31, &qword_27DF09C70, &unk_238769510);
}

uint64_t sub_2384C26C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0) + 28));
  v44 = *v4;
  v45 = v4[1];
  sub_2384397A8();

  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875D7F0();
  v10 = sub_23875DA60();
  v12 = v11;
  v14 = v13;

  sub_2384397FC(v5, v7, v9 & 1);

  sub_23875D890();
  v15 = sub_23875D9E0();
  v41 = v16;
  v42 = v15;
  v40 = v17;
  v43 = v18;
  sub_2384397FC(v10, v12, v14 & 1);

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v19 = qword_2814F1B90;
  v20 = sub_23875EA50();
  v21 = sub_23875EA50();
  v22 = sub_23875EA50();
  v23 = [v19 localizedStringForKey:v20 value:v21 table:v22];

  sub_23875EA80();
  v24 = sub_23875DAA0();
  v26 = v25;
  LOBYTE(v21) = v27;
  sub_23875D970();
  v28 = sub_23875DA60();
  v30 = v29;
  v32 = v31;

  sub_2384397FC(v24, v26, v21 & 1);

  sub_23875D440();
  v33 = sub_23875DA20();
  v35 = v34;
  LOBYTE(v21) = v36;
  v38 = v37;
  sub_2384397FC(v28, v30, v32 & 1);

  *a2 = v42;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v43;
  *(a2 + 32) = v33;
  *(a2 + 40) = v35;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v38;
  sub_23843980C(v42, v41, v40 & 1);

  sub_23843980C(v33, v35, v21 & 1);

  sub_2384397FC(v33, v35, v21 & 1);

  sub_2384397FC(v42, v41, v40 & 1);
}

uint64_t sub_2384C2A84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a1;
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v28 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v6 = *(*(v28 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v28);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for OrderNavigationDestination(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v31 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = v29;
  v17 = v29[1];
  *v15 = *v29;
  v15[1] = v17;
  v15[2] = 0;
  v15[3] = 0;
  swift_storeEnumTagMultiPayload();
  sub_2384C6264(v15, v5, type metadata accessor for OrderNavigationDestination);
  (*(v12 + 56))(v5, 0, 1, v11);
  sub_2384C6374(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);

  sub_23875C760();
  *&v10[*(v28 + 36)] = 0;
  v28 = sub_23875D030();
  v34 = 0;
  sub_2384C2F90(v16, &v44);
  v37 = v45[1];
  v38 = v45[2];
  v39[0] = v45[3];
  *(v39 + 15) = *(&v45[3] + 15);
  v35 = v44;
  v36 = v45[0];
  *(v41 + 15) = *(&v45[3] + 15);
  v40[2] = v45[1];
  v40[3] = v45[2];
  v41[0] = v45[3];
  v40[0] = v44;
  v40[1] = v45[0];
  sub_23843981C(&v35, &v42, &qword_27DF0BC28, &qword_238769438);
  sub_238439884(v40, &qword_27DF0BC28, &qword_238769438);
  *(&v33[2] + 7) = v37;
  *(&v33[3] + 7) = v38;
  *(&v33[4] + 7) = v39[0];
  *(&v33[5] + 6) = *(v39 + 15);
  *(v33 + 7) = v35;
  *(&v33[1] + 7) = v36;
  v18 = v34;
  v19 = v32;
  sub_23843981C(v10, v32, &qword_27DF0BC20, &qword_238769430);
  v20 = v30;
  sub_23843981C(v19, v30, &qword_27DF0BC20, &qword_238769430);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC30, &qword_238769440) + 48));
  v22 = v28;
  *&v42 = v28;
  *(&v42 + 1) = 0x4010000000000000;
  LOBYTE(v43[0]) = v18;
  *(v43 + 1) = v33[0];
  *(&v43[1] + 1) = v33[1];
  *(&v43[4] + 11) = *(&v33[4] + 10);
  *(&v43[4] + 1) = v33[4];
  *(&v43[3] + 1) = v33[3];
  *(&v43[2] + 1) = v33[2];
  v23 = v43[0];
  *v21 = v42;
  v21[1] = v23;
  v24 = v43[1];
  v25 = v43[2];
  *(v21 + 91) = *(&v43[4] + 11);
  v26 = v43[4];
  v21[4] = v43[3];
  v21[5] = v26;
  v21[2] = v24;
  v21[3] = v25;
  sub_23843981C(&v42, &v44, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v10, &qword_27DF0BC20, &qword_238769430);
  sub_2384C6314(v15, type metadata accessor for OrderNavigationDestination);
  *(&v45[2] + 1) = v33[2];
  *(&v45[3] + 1) = v33[3];
  *(&v45[4] + 1) = v33[4];
  *(&v45[4] + 11) = *(&v33[4] + 10);
  *(v45 + 1) = v33[0];
  *&v44 = v22;
  *(&v44 + 1) = 0x4010000000000000;
  LOBYTE(v45[0]) = v18;
  *(&v45[1] + 1) = v33[1];
  sub_238439884(&v44, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v19, &qword_27DF0BC20, &qword_238769430);
}

uint64_t sub_2384C2F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v64 = sub_23875C880();
  v63 = *(v64 - 8);
  v3 = *(v63 + 64);
  MEMORY[0x28223BE20](v64);
  v62 = &v56[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v56[-v8];
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  (*(v6 + 16))(v9, a1 + *(active + 40), v5);
  sub_2384C62CC();
  sub_2384C6374(&qword_27DF0BC48, sub_2384C62CC);
  sub_23843A3E8(&qword_27DF0BC50, &qword_27DF0BB60, &unk_2387692D0);
  v11 = sub_23875DA80();
  v13 = v12;
  v15 = v14;
  sub_23875D8F0();
  v16 = sub_23875DA60();
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v11, v13, v15 & 1);

  sub_23875D890();
  v21 = sub_23875D9E0();
  v23 = v22;
  v25 = v24;
  sub_2384397FC(v16, v18, v20 & 1);

  LODWORD(v70) = sub_23875D420();
  v59 = sub_23875DA20();
  v58 = v26;
  v57 = v27;
  v60 = v28;
  sub_2384397FC(v21, v23, v25 & 1);

  v70 = sub_2384C1648();
  v71 = v29;
  sub_2384397A8();
  v30 = sub_23875DAA0();
  v32 = v31;
  v34 = v33;
  sub_23875D7F0();
  v35 = sub_23875DA60();
  v37 = v36;
  v39 = v38;
  v41 = v40;

  sub_2384397FC(v30, v32, v34 & 1);

  v42 = a1 + *(type metadata accessor for OrderListActiveExtractedOrderRow(0) + 28);
  v43 = v62;
  sub_2384D5138(v62);
  LOBYTE(v42) = sub_23875C860();
  (*(v63 + 8))(v43, v64);
  if (v42)
  {
    v44 = 3;
  }

  else
  {
    v44 = 2;
  }

  KeyPath = swift_getKeyPath();
  v81 = v39 & 1;
  v79 = 0;
  v46 = v57 & 1;
  v66[56] = v57 & 1;
  *&v67 = v35;
  *(&v67 + 1) = v37;
  LOBYTE(v68) = v39 & 1;
  *(&v68 + 1) = *v80;
  DWORD1(v68) = *&v80[3];
  *(&v68 + 1) = v41;
  *v69 = KeyPath;
  *&v69[8] = v44;
  v69[16] = 0;
  *&v69[17] = 256;
  v47 = v59;
  v48 = v61;
  v49 = v58;
  *v61 = v59;
  v48[1] = v49;
  *(v48 + 16) = v46;
  v48[3] = v60;
  v50 = v67;
  v51 = v68;
  v52 = *v69;
  *(v48 + 79) = *&v69[15];
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  *(v48 + 2) = v50;
  v70 = v35;
  v71 = v37;
  v72 = v39 & 1;
  *&v73[3] = *&v80[3];
  *v73 = *v80;
  v74 = v41;
  v75 = KeyPath;
  v76 = v44;
  v77 = 0;
  v78 = 256;
  v53 = v47;
  v54 = v49;
  sub_23843980C(v47, v49, v46);

  sub_23843981C(&v67, v66, &qword_27DF0BC58, &unk_238769480);
  sub_238439884(&v70, &qword_27DF0BC58, &unk_238769480);
  sub_2384397FC(v53, v54, v46);
}

uint64_t sub_2384C351C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_23875E4B0();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC18, &unk_238769420);
  sub_2384C35F0(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_2384C35F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v7 = *(*(v33 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v33);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - v10;
  v11 = type metadata accessor for OrderNavigationDestination(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = *a1;
  v16 = a1[1];
  v18 = (v35 + *(type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0) + 20));
  v19 = *v18;
  v20 = v18[1];
  *v15 = v17;
  v15[1] = v16;
  v15[2] = v19;
  v15[3] = v20;
  swift_storeEnumTagMultiPayload();
  v21 = v34;
  sub_2384C6264(v15, v34, type metadata accessor for OrderNavigationDestination);
  (*(v12 + 56))(v21, 0, 1, v11);
  sub_2384C6374(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);

  v22 = v36;
  sub_23875C760();
  *(v22 + *(v33 + 36)) = 0;
  v34 = sub_23875D030();
  v41 = 0;
  sub_2384C3BC4(a1, &v51);
  v44 = v52[1];
  v45 = v52[2];
  v46[0] = v52[3];
  *(v46 + 15) = *(&v52[3] + 15);
  v42 = v51;
  v43 = v52[0];
  *(v48 + 15) = *(&v52[3] + 15);
  v47[2] = v52[1];
  v47[3] = v52[2];
  v48[0] = v52[3];
  v47[0] = v51;
  v47[1] = v52[0];
  sub_23843981C(&v42, &v49, &qword_27DF0BC28, &qword_238769438);
  sub_238439884(v47, &qword_27DF0BC28, &qword_238769438);
  *(&v40[2] + 7) = v44;
  *(&v40[3] + 7) = v45;
  *(&v40[4] + 7) = v46[0];
  *(&v40[5] + 6) = *(v46 + 15);
  *(v40 + 7) = v42;
  *(&v40[1] + 7) = v43;
  v23 = v41;
  v24 = v39;
  sub_23843981C(v22, v39, &qword_27DF0BC20, &qword_238769430);
  v25 = v37;
  sub_23843981C(v24, v37, &qword_27DF0BC20, &qword_238769430);
  v26 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC30, &qword_238769440) + 48));
  v27 = v34;
  *&v49 = v34;
  *(&v49 + 1) = 0x4010000000000000;
  LOBYTE(v50[0]) = v23;
  *(v50 + 1) = v40[0];
  *(&v50[1] + 1) = v40[1];
  *(&v50[4] + 11) = *(&v40[4] + 10);
  *(&v50[4] + 1) = v40[4];
  *(&v50[3] + 1) = v40[3];
  *(&v50[2] + 1) = v40[2];
  v28 = v50[0];
  *v26 = v49;
  v26[1] = v28;
  v29 = v50[1];
  v30 = v50[2];
  *(v26 + 91) = *(&v50[4] + 11);
  v31 = v50[4];
  v26[4] = v50[3];
  v26[5] = v31;
  v26[2] = v29;
  v26[3] = v30;
  sub_23843981C(&v49, &v51, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v22, &qword_27DF0BC20, &qword_238769430);
  sub_2384C6314(v15, type metadata accessor for OrderNavigationDestination);
  *(&v52[2] + 1) = v40[2];
  *(&v52[3] + 1) = v40[3];
  *(&v52[4] + 1) = v40[4];
  *(&v52[4] + 11) = *(&v40[4] + 10);
  *(v52 + 1) = v40[0];
  *&v51 = v27;
  *(&v51 + 1) = 0x4010000000000000;
  LOBYTE(v52[0]) = v23;
  *(&v52[1] + 1) = v40[1];
  sub_238439884(&v51, &qword_27DF0BC38, &qword_238769448);
  sub_238439884(v24, &qword_27DF0BC20, &qword_238769430);
}

uint64_t sub_2384C3B30()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2384C3BC4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v69 = a1;
  v68 = a2;
  v70 = sub_23875C880();
  v67 = *(v70 - 8);
  v2 = *(v67 + 64);
  MEMORY[0x28223BE20](v70);
  v66 = &v59[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_23875BE40();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23875BE20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_23875BD20();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = _s19ShippingFulfillmentO15StatusFormatterVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v65 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_2384C6374(&qword_27DF09310, _s19ShippingFulfillmentO15StatusFormatterVMa);
  sub_238759950();
  sub_2384C6314(v13, _s19ShippingFulfillmentO15StatusFormatterVMa);
  v61 = sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;

  sub_23875D8F0();
  v19 = sub_23875DA60();
  v21 = v20;
  v23 = v22;

  sub_2384397FC(v14, v16, v18 & 1);

  sub_23875D890();
  v24 = sub_23875D9E0();
  v26 = v25;
  v28 = v27;
  sub_2384397FC(v19, v21, v23 & 1);

  v75 = sub_2384C120C();
  v63 = sub_23875DA20();
  v62 = v29;
  v60 = v30;
  v64 = v31;
  sub_2384397FC(v24, v26, v28 & 1);

  v32 = sub_2384C1074();
  v34 = v69;
  if (!v33)
  {
    v32 = sub_2384C1648();
  }

  v75 = v32;
  v76 = v33;
  v35 = sub_23875DAA0();
  v37 = v36;
  v39 = v38;
  sub_23875D7F0();
  v40 = sub_23875DA60();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_2384397FC(v35, v37, v39 & 1);

  v47 = v34 + *(type metadata accessor for OrderListActiveExtractedOrderRow(0) + 28);
  v48 = v66;
  sub_2384D5138(v66);
  LOBYTE(v47) = sub_23875C860();
  (*(v67 + 8))(v48, v70);
  if (v47)
  {
    v49 = 3;
  }

  else
  {
    v49 = 2;
  }

  KeyPath = swift_getKeyPath();
  v86 = v44 & 1;
  v84 = 0;
  v51 = v60 & 1;
  v71[56] = v60 & 1;
  *&v72 = v40;
  *(&v72 + 1) = v42;
  LOBYTE(v73) = v44 & 1;
  *(&v73 + 1) = *v85;
  DWORD1(v73) = *&v85[3];
  *(&v73 + 1) = v46;
  *v74 = KeyPath;
  *&v74[8] = v49;
  v74[16] = 0;
  *&v74[17] = 256;
  v52 = v68;
  v53 = v63;
  v54 = v62;
  *v68 = v63;
  v52[1] = v54;
  *(v52 + 16) = v51;
  v52[3] = v64;
  v55 = v72;
  v56 = v73;
  v57 = *v74;
  *(v52 + 79) = *&v74[15];
  *(v52 + 3) = v56;
  *(v52 + 4) = v57;
  *(v52 + 2) = v55;
  v75 = v40;
  v76 = v42;
  v77 = v44 & 1;
  *&v78[3] = *&v85[3];
  *v78 = *v85;
  v79 = v46;
  v80 = KeyPath;
  v81 = v49;
  v82 = 0;
  v83 = 256;
  sub_23843980C(v53, v54, v51);

  sub_23843981C(&v72, v71, &qword_27DF0BC58, &unk_238769480);
  sub_238439884(&v75, &qword_27DF0BC58, &unk_238769480);
  sub_2384397FC(v53, v54, v51);
}

size_t sub_2384C4234@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s19ShippingFulfillmentO12StatusValuesVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v163 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0);
  v159 = *(active - 8);
  v160 = active;
  v8 = *(v159 + 64);
  MEMORY[0x28223BE20](active);
  v10 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2387581B0();
  v156 = *(v11 - 8);
  v157 = v11;
  v12 = *(v156 + 64);
  MEMORY[0x28223BE20](v11);
  v137 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_23875BC40();
  v144 = *(v145 - 1);
  v14 = *(v144 + 64);
  MEMORY[0x28223BE20](v145);
  v139 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB60, &unk_2387692D0);
  v148 = *(v149 - 8);
  v16 = *(v148 + 64);
  MEMORY[0x28223BE20](v149);
  v138 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v136 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BB68, &unk_2387774E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v140 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v158 = &v136 - v24;
  v146 = sub_2387580D0();
  v150 = *(v146 - 8);
  v25 = *(v150 + 64);
  MEMORY[0x28223BE20](v146);
  v142 = &v136 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v155 = &v136 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v141 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v151 = &v136 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v136 - v35;
  MEMORY[0x28223BE20](v37);
  v152 = &v136 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v136 - v41;
  v43 = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v44 = v43[9];
  v45 = sub_238757F50();
  v46 = *(*(v45 - 8) + 56);
  v143 = v44;
  v46(a2 + v44, 1, 1, v45);
  v47 = [a1 orderContent];
  v48 = [a1 trackedOrderIdentifier];
  v49 = sub_23875EA80();
  v51 = v50;

  *a2 = v49;
  a2[1] = v51;
  v52 = [v47 orderNumber];
  v53 = sub_23875EA80();
  v55 = v54;

  v56 = (a2 + v43[6]);
  *v56 = v53;
  v56[1] = v55;
  v57 = [v47 orderUpdateDate];
  v58 = a2 + v43[5];
  sub_23875BBE0();

  v162 = v47;
  v59 = [v47 merchantDisplayName];
  v60 = sub_23875EA80();
  v62 = v61;

  v153 = v43;
  v154 = a2;
  v63 = (a2 + v43[7]);
  *v63 = v60;
  v63[1] = v62;
  v161 = a1;
  v64 = [a1 merchantEmailAddress];
  if (v64)
  {
    v65 = v64;
    v66 = sub_23875EA80();
    v68 = v67;
  }

  else
  {
    v66 = 0;
    v68 = 0;
  }

  v69 = v154;
  v70 = (v154 + v153[8]);
  *v70 = v66;
  v70[1] = v68;
  sub_23875A600();
  sub_2384C51F8(v42, v69 + v143);
  v71 = v161;
  v72 = [v161 isMarkedAsComplete];
  v73 = [v71 isMarkedAsCompleteModificationDate];
  v74 = v145;
  if (v73)
  {
    v75 = v73;
    sub_23875BBE0();

    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  v77 = v155;
  v78 = v144;
  (*(v144 + 56))(v36, v76, 1, v74);
  v79 = v152;
  sub_2384396E4(v36, v152, &qword_27DF12E00, &unk_238763FC0);
  sub_23875A5B0();
  v80 = v158;
  (*(v156 + 56))(v158, 1, 1, v157);
  v81 = v151;
  sub_23843981C(v79, v151, &qword_27DF12E00, &unk_238763FC0);
  v82 = v146;
  if (v72)
  {
    v83 = v141;
    sub_23843981C(v81, v141, &qword_27DF12E00, &unk_238763FC0);
    if ((*(v78 + 48))(v83, 1, v74) != 1)
    {
      sub_238439884(v81, &qword_27DF12E00, &unk_238763FC0);
      sub_238439884(v80, &qword_27DF0BB68, &unk_2387774E0);
      (*(v150 + 8))(v77, v82);
      v97 = *(v78 + 32);
      v98 = v139;
      v97(v139, v83, v74);
      v88 = v147;
      v97(v147, v98, v74);
      v89 = MEMORY[0x277CC83B0];
      goto LABEL_17;
    }

    sub_238439884(v83, &qword_27DF12E00, &unk_238763FC0);
  }

  v84 = v150;
  v85 = *(v150 + 104);
  v86 = v142;
  LODWORD(v145) = *MEMORY[0x277CC6DF8];
  v85(v142);
  sub_2384C6374(&qword_27DF0BB70, MEMORY[0x277CC6E00]);
  sub_23875EC40();
  sub_23875EC40();
  v87 = *(v84 + 8);
  v87(v86, v82);
  if (v165 == v164)
  {
    sub_238439884(v81, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v158, &qword_27DF0BB68, &unk_2387774E0);
    v87(v77, v82);
    v88 = v147;
    (v85)(v147, v145, v82);
    v89 = MEMORY[0x277CC83B8];
LABEL_17:
    v101 = v148;
    v102 = v149;
    (*(v148 + 104))(v88, *v89, v149);
    goto LABEL_18;
  }

  v145 = v85;
  v90 = v158;
  v91 = v140;
  sub_23843981C(v158, v140, &qword_27DF0BB68, &unk_2387774E0);
  v92 = v156;
  v93 = v157;
  if ((*(v156 + 48))(v91, 1, v157) != 1)
  {
    sub_238439884(v151, &qword_27DF12E00, &unk_238763FC0);
    sub_238439884(v90, &qword_27DF0BB68, &unk_2387774E0);
    v87(v155, v82);
    v99 = *(v92 + 32);
    v100 = v137;
    v99(v137, v91, v93);
    v88 = v147;
    v99(v147, v100, v93);
    v89 = MEMORY[0x277CC83A8];
    goto LABEL_17;
  }

  sub_238439884(v91, &qword_27DF0BB68, &unk_2387774E0);
  v94 = v142;
  (v145)(v142, *MEMORY[0x277CC6DF0], v82);
  v95 = v155;
  sub_23875EC40();
  sub_23875EC40();
  v87(v94, v82);
  sub_238439884(v151, &qword_27DF12E00, &unk_238763FC0);
  sub_238439884(v90, &qword_27DF0BB68, &unk_2387774E0);
  if (v165 == v164)
  {
    v87(v95, v82);
    v96 = v138;
    (v145)(v138, *MEMORY[0x277CC6DE0], v82);
  }

  else
  {
    v96 = v138;
    (*(v150 + 32))(v138, v95, v82);
  }

  v102 = v149;
  v101 = v148;
  (*(v148 + 104))(v96, *MEMORY[0x277CC83B8], v149);
  v88 = v147;
  (*(v101 + 32))(v147, v96, v102);
LABEL_18:
  (*(v101 + 32))(v154 + v153[10], v88, v102);
  v103 = sub_23875A5E0();
  v104 = v103 >> 62;
  if (v103 >> 62)
  {
    goto LABEL_42;
  }

  v105 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v105)
  {
    while (1)
    {
      v106 = v103;
      *&v165 = MEMORY[0x277D84F90];
      result = sub_2385FEB08(0, v105 & ~(v105 >> 63), 0);
      if (v105 < 0)
      {
        break;
      }

      v108 = v165;
      if (v104)
      {
        v103 = sub_23875F3A0();
        v109 = v106;
      }

      else
      {
        v109 = v106;
        v103 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v104 = 0;
      v155 = (v109 & 0xC000000000000001);
      v156 = v105;
      v157 = v109;
      v158 = v103 & ~(v103 >> 63);
      v110 = v160;
      while (v158 != v104)
      {
        if (v155)
        {
          v111 = MEMORY[0x23EE63F70](v104);
        }

        else
        {
          v111 = *(v109 + 8 * v104 + 32);
        }

        v112 = v111;
        v113 = v161;
        v114 = v112;
        sub_2386006B8(v113, v114, v163);
        v115 = [v114 trackingNumber];
        if (v115)
        {
          v116 = v115;
          v117 = sub_23875EA80();
          v119 = v118;
        }

        else
        {
          v117 = 0;
          v119 = 0;
        }

        v120 = [v114 carrierName];
        if (v120)
        {
          v121 = v120;
          v122 = sub_23875EA80();
          v124 = v123;
        }

        else
        {
          v122 = 0;
          v124 = 0;
        }

        v125 = &v10[v110[7]];
        sub_23875A5C0();

        sub_2384C5268(v163, v10, _s19ShippingFulfillmentO12StatusValuesVMa);
        v126 = &v10[v110[5]];
        *v126 = v117;
        v126[1] = v119;
        v127 = &v10[v110[6]];
        *v127 = v122;
        v127[1] = v124;
        *&v10[v110[8]] = v104;
        *&v165 = v108;
        v129 = *(v108 + 16);
        v128 = *(v108 + 24);
        if (v129 >= v128 >> 1)
        {
          sub_2385FEB08(v128 > 1, v129 + 1, 1);
          v108 = v165;
        }

        ++v104;
        *(v108 + 16) = v129 + 1;
        v103 = sub_2384C5268(v10, v108 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v129, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment);
        v109 = v157;
        if (v156 == v104)
        {

          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      v130 = v103;
      v105 = sub_23875F3A0();
      v103 = v130;
      if (!v105)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_43:

    v108 = MEMORY[0x277D84F90];
LABEL_44:
    v132 = v153;
    v131 = v154;
    *(v154 + v153[11]) = v108;
    v133 = v161;
    sub_23846C8C4(v161, 0, &v165);

    result = sub_238439884(v152, &qword_27DF12E00, &unk_238763FC0);
    v134 = (v131 + v132[12]);
    v135 = *v166;
    *v134 = v165;
    v134[1] = v135;
    *(v134 + 28) = *&v166[12];
  }

  return result;
}

uint64_t sub_2384C51F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384C5268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384C52D0(void *a1, void *a2)
{
  v4 = sub_238757F50();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09AF8, &qword_238764438);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BD0, &qword_2387695A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_28;
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v18 = active[5];
  if ((sub_23875BBD0() & 1) == 0)
  {
    goto LABEL_28;
  }

  v19 = active[6];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if ((v20 != *v22 || v21 != v22[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_28;
  }

  v23 = active[7];
  v24 = *(a1 + v23);
  v25 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  if ((v24 != *v26 || v25 != v26[1]) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = active[8];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31 || (*v28 != *v30 || v29 != v31) && (sub_23875F630() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v31)
  {
    goto LABEL_28;
  }

  v32 = active[9];
  v33 = *(v13 + 48);
  sub_23843981C(a1 + v32, v16, &qword_27DF09AF8, &qword_238764438);
  v45 = v33;
  sub_23843981C(a2 + v32, &v16[v33], &qword_27DF09AF8, &qword_238764438);
  v34 = *(v5 + 48);
  if (v34(v16, 1, v4) != 1)
  {
    sub_23843981C(v16, v12, &qword_27DF09AF8, &qword_238764438);
    if (v34(&v16[v45], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_23;
    }

    (*(v5 + 32))(v8, &v16[v45], v4);
    sub_2384C6374(&qword_27DF09BD8, MEMORY[0x277CC6C90]);
    v35 = sub_23875E9E0();
    v36 = *(v5 + 8);
    v36(v8, v4);
    v36(v12, v4);
    sub_238439884(v16, &qword_27DF09AF8, &qword_238764438);
    if (v35)
    {
      goto LABEL_25;
    }

LABEL_28:
    v42 = 0;
    return v42 & 1;
  }

  if (v34(&v16[v45], 1, v4) != 1)
  {
LABEL_23:
    sub_238439884(v16, &qword_27DF09BD0, &qword_2387695A0);
    goto LABEL_28;
  }

  sub_238439884(v16, &qword_27DF09AF8, &qword_238764438);
LABEL_25:
  v37 = active[10];
  sub_2387580D0();
  sub_2387581B0();
  sub_2384C6374(&qword_27DF0BBA8, MEMORY[0x277CC6E00]);
  sub_2384C6374(&qword_27DF0BBB0, MEMORY[0x277CC6E68]);
  if ((sub_23875AC60() & 1) == 0 || (sub_23851968C(*(a1 + active[11]), *(a2 + active[11])) & 1) == 0)
  {
    goto LABEL_28;
  }

  v38 = active[12];
  v39 = *(a1 + v38 + 16);
  v46 = *(a1 + v38);
  v47[0] = v39;
  *(v47 + 12) = *(a1 + v38 + 28);
  v40 = (a2 + v38);
  v41 = v40[1];
  v48 = *v40;
  v49[0] = v41;
  *(v49 + 12) = *(v40 + 28);
  v42 = sub_23846C7F4(&v46, &v48);
  return v42 & 1;
}

BOOL sub_2384C57F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B080, &unk_2387662A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC88, &qword_23876D250);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v35 - v15;
  if (!sub_238601FBC(a1, a2))
  {
    return 0;
  }

  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment(0);
  v18 = active[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v24 = active[6];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v29 = active[7];
  v30 = *(v13 + 48);
  sub_23843981C(a1 + v29, v16, &unk_27DF0B080, &unk_2387662A0);
  v36 = v30;
  sub_23843981C(a2 + v29, &v16[v30], &unk_27DF0B080, &unk_2387662A0);
  v31 = *(v5 + 48);
  if (v31(v16, 1, v4) == 1)
  {
    if (v31(&v16[v36], 1, v4) == 1)
    {
      sub_238439884(v16, &unk_27DF0B080, &unk_2387662A0);
      return *(a1 + active[8]) == *(a2 + active[8]);
    }

    goto LABEL_23;
  }

  sub_23843981C(v16, v12, &unk_27DF0B080, &unk_2387662A0);
  if (v31(&v16[v36], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_23:
    sub_238439884(v16, &qword_27DF0BC88, &qword_23876D250);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v36], v4);
  sub_2384C6374(&qword_27DF0BC90, MEMORY[0x277CC6DC0]);
  v33 = sub_23875E9E0();
  v34 = *(v5 + 8);
  v34(v8, v4);
  v34(v12, v4);
  sub_238439884(v16, &unk_27DF0B080, &unk_2387662A0);
  if (v33)
  {
    return *(a1 + active[8]) == *(a2 + active[8]);
  }

  return 0;
}

void sub_2384C5C1C()
{
  _s19ShippingFulfillmentO12StatusValuesVMa(319);
  if (v0 <= 0x3F)
  {
    sub_2384C6178(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2384C5EA8(319, &qword_27DF0BB88, MEMORY[0x277CC6DC0], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384C5D3C()
{
  v0 = MEMORY[0x277D837D0];
  sub_23875BC40();
  if (v1 <= 0x3F)
  {
    sub_2384C6178(319, &qword_2814F08C0, v0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2384C5EA8(319, &qword_27DF09B10, MEMORY[0x277CC6C90], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2384C5F0C();
        if (v4 <= 0x3F)
        {
          sub_2384C5EA8(319, &qword_27DF0BBB8, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel.ShippingFulfillment, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2384C5EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2384C5F0C()
{
  if (!qword_27DF0BBA0)
  {
    sub_2387580D0();
    sub_2387581B0();
    sub_2384C6374(&qword_27DF0BBA8, MEMORY[0x277CC6E00]);
    sub_2384C6374(&qword_27DF0BBB0, MEMORY[0x277CC6E68]);
    v0 = sub_23875ACC0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0BBA0);
    }
  }
}

void sub_2384C6040()
{
  type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384C6178(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2384C5EA8(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2384C5EA8(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2384C6178(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2384C61E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for OrderListActiveExtractedOrderRow(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2384C351C(a1, v6, a2);
}

uint64_t sub_2384C6264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2384C62CC()
{
  if (!qword_27DF0BC40)
  {
    v0 = _s9FormatterVMa();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0BC40);
    }
  }
}

uint64_t sub_2384C6314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384C6374(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384C63BC()
{
  sub_2384C6478();

  return sub_23875CDC0();
}

uint64_t sub_2384C6404()
{
  v0 = sub_23875C1E0();
  __swift_allocate_value_buffer(v0, qword_27DF2F690);
  __swift_project_value_buffer(v0, qword_27DF2F690);
  return sub_23875C1C0();
}

unint64_t sub_2384C6478()
{
  result = qword_27DF0BCA8[0];
  if (!qword_27DF0BCA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DF0BCA8);
  }

  return result;
}

uint64_t sub_2384C64E0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C6534()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C65A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875F1F0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_2384C663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t)@<X7>, uint64_t a9@<X8>)
{
  v53 = a2;
  v54 = a8;
  v57 = a7;
  v58 = a9;
  v50 = a4;
  v51 = a3;
  v56 = *(a6 - 8);
  v12 = *(v56 + 64);
  MEMORY[0x28223BE20](a1);
  v52 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = &v48 - v15;
  v48 = sub_23875F1F0();
  v16 = *(v48 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v48);
  v19 = &v48 - v18;
  v20 = *(a5 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a6;
  v26 = sub_23875F1F0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v55 = &v48 - v32;
  sub_2384C6ABC(a1, v53, v33, v34, a5, v35, v36, v54);
  sub_238681B24(v19);

  if ((*(v20 + 48))(v19, 1, a5) == 1)
  {
    (*(v16 + 8))(v19, v48);
    v37 = 1;
    v38 = v56;
    v39 = v57;
  }

  else
  {
    (*(v20 + 32))(v24, v19, a5);
    v40 = v52;
    v51(v24);
    (*(v20 + 8))(v24, a5);
    v41 = v49;
    v39 = v57;
    sub_23844EA0C(v40, v25, v57);
    v42 = v56;
    v43 = *(v56 + 8);
    v43(v40, v25);
    sub_23844EA0C(v41, v25, v39);
    v43(v41, v25);
    (*(v42 + 32))(v30, v40, v25);
    v37 = 0;
    v38 = v42;
  }

  (*(v38 + 56))(v30, v37, 1, v25);
  v44 = v55;
  (*(v27 + 16))(v55, v30, v26);
  v45 = *(v27 + 8);
  v45(v30, v26);
  v59 = v39;
  WitnessTable = swift_getWitnessTable();
  sub_23844EA0C(v44, v26, WitnessTable);
  return (v45)(v44, v26);
}

uint64_t sub_2384C6ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  a8(255);
  type metadata accessor for ObservableManagedObject();
  sub_23875E1E0();
  sub_23875E1B0();
  return v9;
}

uint64_t sub_2384C6B80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C6BEC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2384C6C28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2384C6C70(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2384C6CE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

void sub_2384C6D6C()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_23875AF90();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2384C6DFC()
{
  v1 = type metadata accessor for MonogramView();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BED0, &qword_2387699C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BED8, &qword_2387699D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v18 - v11);
  v13 = v0[1];
  if (v13)
  {
    v14 = *v0;
    *v12 = sub_23875E4A0();
    v12[1] = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEE8, &qword_2387699D8);
    sub_2384C7060(v0, v14, v13, (v12 + *(v16 + 44)));
    sub_23843981C(v12, v8, &qword_27DF0BED8, &qword_2387699D0);
    swift_storeEnumTagMultiPayload();
    sub_2384C7EE4();
    sub_2384C7F48();
    sub_23875D1B0();
    return sub_238439884(v12, &qword_27DF0BED8, &qword_2387699D0);
  }

  else
  {
    sub_2384C7634(v4);
    sub_2384C7E7C(v4, v8, type metadata accessor for MonogramView);
    swift_storeEnumTagMultiPayload();
    sub_2384C7EE4();
    sub_2384C7F48();
    sub_23875D1B0();
    return sub_2384C7FA0(v4, type metadata accessor for MonogramView);
  }
}

uint64_t sub_2384C7060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a3;
  v60 = a2;
  v57 = a1;
  v64 = a4;
  v4 = type metadata accessor for MerchantImage(0);
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = v6;
  v56 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_23875AF90();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF0, &qword_2387699E0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v63 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v51[-v15];
  v17 = sub_23875C450();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v51[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v51[-v23];
  sub_23875ED50();
  v61 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = v57;
  if (*(v57 + *(v4 + 20)) == 1)
  {
    v26 = v57 + *(v4 + 24);
    sub_2384D4E38(v24);
    (*(v18 + 104))(v21, *MEMORY[0x277CDF3D0], v17);
    v27 = sub_23875C440();
    v28 = *(v18 + 8);
    v28(v21, v17);
    v28(v24, v17);
    v29 = objc_opt_self();
    v30 = &selRef_systemGray4Color;
    if ((v27 & 1) == 0)
    {
      v30 = &selRef_systemGray2Color;
    }

    v31 = [v29 *v30];
    v53 = sub_23875DFB0();

    v52 = 256;
  }

  else
  {
    v53 = 0;
    v52 = 0;
  }

  v32 = type metadata accessor for MerchantImage.ViewModel(0);
  v33 = v58;
  v34 = v59;
  v35 = *(v58 + 16);
  v35(v10, v25 + *(v32 + 20), v59);
  v36 = v25;
  v37 = v56;
  sub_2384C7E7C(v36, v56, type metadata accessor for MerchantImage);
  v38 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v39 = swift_allocObject();
  sub_2384C8000(v37, v39 + v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2387632F0;
  v41 = v62;
  *(v40 + 32) = v60;
  *(v40 + 40) = v41;
  v35(v16 + v11[9], v10, v34);
  v42 = v11[10];

  v43 = sub_2387588A0();
  (*(v33 + 8))(v10, v34);
  *(v16 + v42) = v43;
  v44 = v11[13];
  *(v16 + v44) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v45 = v11[14];
  *(v16 + v45) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BEF8, &qword_23876DAC0);
  swift_storeEnumTagMultiPayload();
  *v16 = v40;
  *(v16 + v11[11]) = 0;
  v46 = (v16 + v11[12]);
  *v46 = sub_2384C8064;
  v46[1] = v39;
  v47 = v63;
  sub_23843981C(v16, v63, &qword_27DF0BEF0, &qword_2387699E0);
  v48 = v64;
  *v64 = v53;
  *(v48 + 4) = v52;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF00, &qword_238769A48);
  sub_23843981C(v47, v48 + *(v49 + 48), &qword_27DF0BEF0, &qword_2387699E0);
  sub_238439884(v16, &qword_27DF0BEF0, &qword_2387699E0);
  sub_238439884(v47, &qword_27DF0BEF0, &qword_2387699E0);
}

uint64_t sub_2384C7634@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v38[0] = sub_23875D990();
  v4 = *(v38[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38[0]);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875C450();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  v16 = v1 + *(type metadata accessor for MerchantImage(0) + 24);
  sub_2384D4E38(v15);
  (*(v9 + 104))(v12, *MEMORY[0x277CDF3D0], v8);
  LOBYTE(v16) = sub_23875C440();
  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v15, v8);
  v18 = objc_opt_self();
  v19 = &selRef_systemGray4Color;
  if ((v16 & 1) == 0)
  {
    v19 = &selRef_systemGray2Color;
  }

  v20 = [v18 *v19];
  v21 = sub_23875DFB0();
  v22 = (v2 + *(type metadata accessor for MerchantImage.ViewModel(0) + 24));
  v23 = *v22;
  v24 = v22[1];
  v25 = sub_23875E040();
  v26 = *(type metadata accessor for MonogramView() + 36);
  v38[1] = 0x404C000000000000;
  (*(v4 + 104))(v7, *MEMORY[0x277CE0A68], v38[0]);
  sub_23845A940();
  sub_23875C540();
  *a1 = v21;
  a1[1] = v25;
  a1[3] = v23;
  a1[4] = v24;
  a1[2] = 0x3FC999999999999ALL;
  sub_23875EAF0();

  v27 = sub_2384F565C(1);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = MEMORY[0x23EE635F0](v27, v29, v31, v33);
  v36 = v35;

  a1[5] = v34;
  a1[6] = v36;
  return result;
}

void sub_2384C7944(id a1@<X1>, void *a2@<X0>, uint64_t *a3@<X8>)
{
  v6 = [a1 merchant];
  v7 = [v6 logoName];

  if (v7)
  {
    v8 = sub_23875EA80();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v10;
  v11 = type metadata accessor for MerchantImage.ViewModel(0);
  v12 = a3 + *(v11 + 20);
  sub_238757DA0();
  v13 = [a1 merchant];
  v14 = [v13 displayName];

  v15 = sub_2387586A0();
  v17 = v16;

  v18 = (a3 + *(v11 + 24));
  *v18 = v15;
  v18[1] = v17;
}

uint64_t sub_2384C7A5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_238757CC0();
  v29 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MerchantImage.ViewModel(0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_238759B30();
  v15 = sub_238757CB0();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v9, v5);
  *v14 = v15;
  v14[1] = v17;
  v19 = v14 + *(v11 + 28);
  v20 = a1;
  sub_238759AB0();
  v30 = a2;
  v21 = a2[3];
  v28 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  sub_238759B30();
  sub_238757C60();
  v18(v9, v29);
  v22 = sub_23875A360();
  v24 = v23;

  v25 = sub_238759B60();
  (*(*(v25 - 8) + 8))(v20, v25);
  v26 = (v14 + *(v11 + 32));
  *v26 = v22;
  v26[1] = v24;
  sub_2384C7E7C(v14, v31, type metadata accessor for MerchantImage.ViewModel);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_2384C7FA0(v14, type metadata accessor for MerchantImage.ViewModel);
}

uint64_t sub_2384C7CB8(uint64_t *a1, void *a2)
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
  if ((MEMORY[0x23EE5FA60](a1 + *(v8 + 20), a2 + *(v8 + 20)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(v8 + 24);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    return 1;
  }

  return sub_23875F630();
}

void sub_2384C7DD4()
{
  type metadata accessor for MerchantImage.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_238438628();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2384C7E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384C7EE4()
{
  result = qword_27DF0BEE0;
  if (!qword_27DF0BEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BED8, &qword_2387699D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BEE0);
  }

  return result;
}

unint64_t sub_2384C7F48()
{
  result = qword_27DF09BB0;
  if (!qword_27DF09BB0)
  {
    type metadata accessor for MonogramView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09BB0);
  }

  return result;
}

uint64_t sub_2384C7FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384C8000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantImage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384C8064@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for MerchantImage(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_2384C7634(a1);
}

unint64_t sub_2384C80C8()
{
  result = qword_27DF0BF08;
  if (!qword_27DF0BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BF10, &unk_238769A50);
    sub_2384C7EE4();
    sub_2384C7F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BF08);
  }

  return result;
}

uint64_t sub_2384C8154(uint64_t a1)
{
  v46 = sub_238758680();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_23875BCB0();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_2385FE898(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_23875F320();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      v22 = v42;
      sub_238758640();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_2385FE898(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_238434834(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_238434834(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2384C8518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a2;
  v51 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v40 - v9;
  v10 = sub_23875BC40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_23875B650();
  v43 = *(v46 - 8);
  v14 = *(v43 + 64);
  v15 = MEMORY[0x28223BE20](v46);
  v40 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v41 = &v40 - v17;
  v47 = sub_23875BE20();
  v45 = *(v47 - 8);
  v18 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v52 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2387587E0();
  v48 = *(v20 - 8);
  v49 = v20;
  v21 = *(v48 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v53 = a1;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  v24 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
  if ((*(a1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) & 1) == 0)
  {
    sub_23875BDF0();
    swift_getKeyPath();
    v53 = a1;
    sub_23875BE90();

    if (*(a1 + v24))
    {

      (*(v11 + 8))(v50, v10);
      (*(v45 + 8))(v52, v47);
    }

    else
    {
      swift_getKeyPath();
      v53 = a1;
      sub_23875BE90();

      v29 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
      swift_beginAccess();
      v30 = v43;
      v31 = a1 + v29;
      v32 = v40;
      v33 = v46;
      (*(v43 + 16))(v40, v31, v46);
      v34 = v41;
      (*(v30 + 32))(v41, v32, v33);
      v35 = v44;
      v36 = v50;
      sub_23875BDD0();
      if ((*(v11 + 48))(v35, 1, v10) != 1)
      {
        (*(v11 + 32))(v42, v35, v10);
        v38 = v52;
        sub_23875BD50();
        (*(v11 + 56))(v8, 0, 1, v10);
        sub_2387587C0();

        v39 = *(v11 + 8);
        v39(v36, v10);
        v39(v42, v10);
        (*(v30 + 8))(v34, v46);
        (*(v45 + 8))(v38, v47);
        goto LABEL_3;
      }

      (*(v11 + 8))(v36, v10);
      (*(v30 + 8))(v34, v46);
      (*(v45 + 8))(v52, v47);
      sub_238439884(v35, &qword_27DF12E00, &unk_238763FC0);
    }

    v28 = 1;
    v27 = v51;
    v26 = v48;
    v25 = v49;
    return (*(v26 + 56))(v27, v28, 1, v25);
  }

  (*(v11 + 56))(v8, 1, 1, v10);
  sub_2387587C0();

  (*(v11 + 8))(v50, v10);
LABEL_3:
  v26 = v48;
  v25 = v49;
  v27 = v51;
  (*(v48 + 32))(v51, v23, v49);
  v28 = 0;
  return (*(v26 + 56))(v27, v28, 1, v25);
}

uint64_t sub_2384C8BB8(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
LABEL_16:
    v10 = result;
    v6 = sub_23875F3A0();
    result = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EE63F70](i, a4);
          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
          }
        }

        else
        {
          if (i >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a4 + 8 * i + 32);

          v9 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v8;
        a2(&v13, &v12);

        if (v4)
        {
        }

        if (v9 == v6)
        {
          return v13;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2384C8CFC(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v21 = a2;
  v23 = sub_238758680();
  v7 = *(v23 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v23);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v11 = a4 + 56;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 56);
  v15 = (v12 + 63) >> 6;
  v20[1] = v7 + 16;
  v22 = (v7 + 8);
  v24 = a4;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
      v19 = v23;
LABEL_9:
      (*(v7 + 16))(v10, *(v24 + 48) + *(v7 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v19);
      v21(&v25, v10);
      if (v4)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v22)(v10, v19);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    (*v22)(v10, v19);
  }

  else
  {
LABEL_5:
    v19 = v23;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v25;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2384C8F1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_23875B650();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6A8);
  v14 = __swift_project_value_buffer(started, qword_27DF2F6A8);
  v15 = sub_23875BE20();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = sub_23875BE40();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_23875B620();
  result = (*(v9 + 32))(v14, v12, v8);
  v18 = (v14 + *(started + 20));
  *v18 = 0xD000000000000021;
  v18[1] = 0x80000002387888D0;
  v19 = v14 + *(started + 24);
  strcpy(v19, "limited_today");
  *(v19 + 14) = -4864;
  return result;
}

uint64_t sub_2384C9208()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_23875B650();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6C0);
  v14 = __swift_project_value_buffer(started, qword_27DF2F6C0);
  v15 = sub_23875BE20();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = sub_23875BE40();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_23875B620();
  result = (*(v9 + 32))(v14, v12, v8);
  v18 = (v14 + *(started + 20));
  *v18 = 0xD000000000000023;
  v18[1] = 0x80000002387888A0;
  v19 = (v14 + *(started + 24));
  *v19 = 0x5F646574696D696CLL;
  v19[1] = 0xEB00000000643033;
  return result;
}

uint64_t sub_2384C94F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_23875B650();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6D8);
  v14 = __swift_project_value_buffer(started, qword_27DF2F6D8);
  v15 = sub_23875BE20();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = sub_23875BE40();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_23875B620();
  result = (*(v9 + 32))(v14, v12, v8);
  v18 = (v14 + *(started + 20));
  *v18 = 0xD000000000000022;
  v18[1] = 0x8000000238788870;
  v19 = (v14 + *(started + 24));
  *v19 = 0x5F646574696D696CLL;
  v19[1] = 0xEA00000000007931;
  return result;
}

uint64_t sub_2384C97D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_23875B650();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SharingStartDate(0);
  __swift_allocate_value_buffer(started, qword_27DF2F6F0);
  v14 = __swift_project_value_buffer(started, qword_27DF2F6F0);
  v15 = sub_23875BE20();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  v16 = sub_23875BE40();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  sub_23875B620();
  result = (*(v9 + 32))(v14, v12, v8);
  v18 = (v14 + *(started + 20));
  *v18 = 0xD000000000000023;
  v18[1] = 0x8000000238788840;
  v19 = (v14 + *(started + 24));
  *v19 = 0x5F646574696D696CLL;
  v19[1] = 0xEA00000000007932;
  return result;
}

uint64_t sub_2384C9ABC(uint64_t a1)
{
  sub_23875F700();
  sub_23875B650();
  sub_2384D0C70(&qword_27DF0BFE0, MEMORY[0x277CC8990]);
  sub_23875E960();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_23875EB30();
  v6 = (v1 + *(a1 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2384C9B78(uint64_t a1, uint64_t a2)
{
  sub_23875B650();
  sub_2384D0C70(&qword_27DF0BFE0, MEMORY[0x277CC8990]);
  sub_23875E960();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_23875EB30();
  v7 = (v2 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];

  return sub_23875EB30();
}

uint64_t sub_2384C9C28(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875B650();
  sub_2384D0C70(&qword_27DF0BFE0, MEMORY[0x277CC8990]);
  sub_23875E960();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_23875EB30();
  v7 = (v2 + *(a2 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2384C9CE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_2384C9CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE60070]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t sub_2384C9DA8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  v3 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  return sub_2384D2A50(v5 + v3, a1, type metadata accessor for SharingStartDate);
}

uint64_t sub_2384C9E84(uint64_t a1)
{
  started = type metadata accessor for SharingStartDate(0);
  v4 = *(*(started - 8) + 64);
  v5 = MEMORY[0x28223BE20](started);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  v10 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2384D2A50(v1 + v10, v9, type metadata accessor for SharingStartDate);
  if ((MEMORY[0x23EE60070](v9, a1) & 1) == 0)
  {
    goto LABEL_13;
  }

  v11 = *(started + 20);
  v12 = *&v9[v11];
  v13 = *&v9[v11 + 8];
  v14 = (a1 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (v15 || (sub_23875F630()) && ((v16 = *(started + 24), v17 = *&v9[v16], v18 = *&v9[v16 + 8], v19 = (a1 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), v20 || (sub_23875F630()))
  {
    sub_2384AA698(v9, type metadata accessor for SharingStartDate);
    sub_2384D2A50(a1, v7, type metadata accessor for SharingStartDate);
    swift_beginAccess();
    sub_2384D2BA4(v7, v1 + v10);
    swift_endAccess();
  }

  else
  {
LABEL_13:
    sub_2384AA698(v9, type metadata accessor for SharingStartDate);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v23[-2] = v1;
    v23[-1] = a1;
    v23[1] = v1;
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
    sub_23875BE80();
  }

  return sub_2384AA698(a1, type metadata accessor for SharingStartDate);
}

uint64_t sub_2384CA12C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2384D2C08(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2384CA198()
{
  swift_getKeyPath();
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  return *(v0 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);
}

uint64_t sub_2384CA240(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
    sub_23875BE80();
  }

  return result;
}

uint64_t sub_2384CA358(uint64_t a1, char a2)
{
  v3 = v2;
  started = type metadata accessor for SharingStartDate(0);
  v7 = *(*(started - 8) + 64);
  v8 = MEMORY[0x28223BE20](started);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08CE8 != -1)
  {
    v16 = v8;
    swift_once();
    v8 = v16;
  }

  v11 = __swift_project_value_buffer(v8, qword_27DF2F6C0);
  sub_2384D2A50(v11, v3 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
  v12 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
  *(v3 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = 1;
  sub_23875BEC0();
  sub_2384D2A50(a1, v10, type metadata accessor for SharingStartDate);
  sub_2384C9E84(v10);
  v13 = a2 & 1;
  if (*(v3 + v12) == (a2 & 1))
  {
    sub_2384AA698(a1, type metadata accessor for SharingStartDate);
    *(v3 + v12) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v17[-2] = v3;
    LOBYTE(v17[-1]) = v13;
    v17[1] = v3;
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
    sub_23875BE80();

    sub_2384AA698(a1, type metadata accessor for SharingStartDate);
  }

  return v3;
}

uint64_t sub_2384CA5A4()
{
  v1 = v0;
  started = type metadata accessor for SharingStartDate(0);
  v3 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF08CE8 != -1)
  {
    v11 = v4;
    swift_once();
    v4 = v11;
  }

  v7 = __swift_project_value_buffer(v4, qword_27DF2F6C0);
  sub_2384D2A50(v7, v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
  v8 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
  *(v1 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = 1;
  sub_23875BEC0();
  sub_2384D2A50(v7, v6, type metadata accessor for SharingStartDate);
  sub_2384C9E84(v6);
  if (*(v1 + v8) == 1)
  {
    *(v1 + v8) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v1;
    LOBYTE(v12[-1]) = 1;
    v12[1] = v1;
    sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
    sub_23875BE80();
  }

  return v1;
}

uint64_t sub_2384CA7B0()
{
  sub_2384AA698(v0 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
  v1 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel___observationRegistrar;
  v2 = sub_23875BED0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2384CA870()
{
  v1 = type metadata accessor for SelectAccountsResult(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_238759510();
  v46 = *(v48 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_23875BC40();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[1];
  v52 = *v0;
  v53 = v10;
  *v54 = v0[2];
  *&v54[16] = *(v0 + 6);
  v11 = sub_23860FBC0();
  v13 = v12;
  sub_23875BBF0();
  v49[2] = &v52;
  v49[3] = v9;
  v42 = v9;
  sub_2384C8CFC(MEMORY[0x277D84F98], sub_2384D36B8, v49, v11);

  v14 = sub_2384C8154(v13);

  sub_2384A5014(v14);

  v44 = v6;
  sub_238759500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v50 = *&v54[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  v16 = v51;
  swift_getKeyPath();
  *&v50 = v16;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  if (*(v16 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v17 = 0xE300000000000000;
    v18 = 7105633;
  }

  else
  {
    swift_getKeyPath();
    *&v50 = v16;
    sub_23875BE90();

    v19 = v16 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v20 = (v19 + *(type metadata accessor for SharingStartDate(0) + 24));
    v18 = *v20;
    v17 = v20[1];
  }

  v41 = v53;
  *(inited + 40) = v18;
  *(inited + 48) = v17;
  v21 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_238763300;
  v23 = *MEMORY[0x277D383D8];
  *(v22 + 32) = *MEMORY[0x277D383D8];
  v24 = *MEMORY[0x277D38428];
  *(v22 + 40) = sub_23875EA80();
  *(v22 + 48) = v25;
  v26 = *MEMORY[0x277D38390];
  *(v22 + 56) = *MEMORY[0x277D38390];
  *(v22 + 64) = 0x6572616873;
  v27 = *MEMORY[0x277D384B8];
  *(v22 + 72) = 0xE500000000000000;
  *(v22 + 80) = v27;
  *(v22 + 88) = 0xD000000000000014;
  *(v22 + 96) = 0x8000000238785000;
  v28 = v23;
  v29 = v26;
  v30 = v27;
  v31 = sub_23854B138(v22);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = v31;
  sub_2385C33E4(v21, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v51);

  v33 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384D0C70(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v34 = sub_23875E910();

  [v33 subject:v41 sendEvent:v34];

  v35 = *(&v53 + 1);
  v37 = v46;
  v36 = v47;
  v38 = v44;
  v39 = v48;
  (*(v46 + 16))(v47, v44, v48);
  (*(v37 + 56))(v36, 0, 1, v39);
  v35(v36);
  sub_2384AA698(v36, type metadata accessor for SelectAccountsResult);
  (*(v37 + 8))(v38, v39);
  return (*(v43 + 8))(v42, v45);
}

uint64_t sub_2384CAEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v31 = a3;
  v26 = a2;
  v28 = a1;
  v4 = sub_23875BCB0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23875BC40();
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = sub_2387587E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v33 = *(v31 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  v23 = v34;
  (*(v7 + 16))(v10, v32, v30);
  sub_2384C8518(v23, v10, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_238439884(v17, &qword_27DF0B328, &qword_238768050);
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    v24 = v27;
    sub_238758640();
    (*(v19 + 16))(v14, v22, v18);
    (*(v19 + 56))(v14, 0, 1, v18);
    sub_2386C3EA4(v14, v24);
    (*(v19 + 8))(v22, v18);
  }
}

uint64_t sub_2384CB25C()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = [v1 localizedName];
  v4 = sub_23875EA80();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_238448C58();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_23875EA80();
  v12 = sub_23875EAA0();

  return v12;
}

uint64_t sub_2384CB404()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = [v1 localizedName];
  v4 = sub_23875EA80();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_238448C58();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_23875EA80();
  v12 = sub_23875EAA0();

  return v12;
}

uint64_t sub_2384CB5AC@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v53 = sub_23875C430();
  v52 = *(v53 - 8);
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1C0, &unk_23876E100);
  v55 = *(v56 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v54 = &v40 - v5;
  v50 = sub_23875CFD0();
  v45 = *(v50 - 8);
  v6 = *(v45 + 64);
  MEMORY[0x28223BE20](v50);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1C8, &qword_238769FB0);
  v44 = *(v46 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v40 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1D0, &qword_238769FB8);
  v48 = *(v49 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v47 = &v40 - v13;
  v14 = v1[1];
  v68 = *v1;
  v69 = v14;
  v70 = v1[2];
  v71 = *(v1 + 6);
  v58 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  v15 = v67;
  v16 = *(&v68 + 1);
  v43 = *(&v69 + 1);
  v72 = v69;
  v17 = v70;
  v67 = 0;
  v42 = v68;
  sub_2384D2A50(&v72, &v58, type metadata accessor for PKAnalyticsSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1D8, &unk_238769FC0);
  sub_23875E1A0();
  v40 = *(&v58 + 1);
  v41 = v58;
  sub_23860FBC0();
  v19 = v18;

  v20 = sub_2384C8154(v19);

  v21 = sub_2384A5014(v20);

  v22 = v72;
  swift_getKeyPath();
  *&v58 = v16;
  sub_2384D0C70(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  v23 = *(v16 + 40);

  sub_2384D2CAC(v24, v15);

  v66 = sub_238490FEC(v25);
  sub_2384D0ED0(&v66);

  v58 = v66;
  v59 = v21;
  v60 = v42;
  v61 = v43;
  v62 = v17;
  v63 = v22;
  v64 = v41;
  v65 = v40;
  MEMORY[0x28223BE20](v26);
  *(&v40 - 2) = &v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1E0, &qword_23877EA30);
  sub_2384D3460();
  sub_2384D35FC();
  sub_23875C750();
  sub_23875CFC0();
  v27 = sub_23843A3E8(&qword_27DF0C218, &qword_27DF0C1C8, &qword_238769FB0);
  v28 = sub_2384D0C70(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
  v29 = v47;
  v30 = v46;
  v31 = v50;
  sub_23875DB30();
  (*(v45 + 8))(v8, v31);
  (*(v44 + 8))(v11, v30);
  v32 = v51;
  sub_23875C420();
  v33 = swift_allocObject();
  v34 = v69;
  *(v33 + 16) = v68;
  *(v33 + 32) = v34;
  *(v33 + 48) = v70;
  *(v33 + 64) = v71;
  sub_2384D2C74(&v68, &v58);
  v35 = v54;
  v36 = v53;
  sub_23875E390();

  (*(v52 + 8))(v32, v36);
  sub_23875C480();
  *&v58 = v30;
  *(&v58 + 1) = v31;
  v59 = v27;
  v60 = v28;
  swift_getOpaqueTypeConformance2();
  sub_23843A3E8(&qword_27DF0C220, &qword_27DF0C1C0, &unk_23876E100);
  v37 = v49;
  v38 = v56;
  sub_23875DD50();
  (*(v55 + 8))(v35, v38);
  return (*(v48 + 8))(v29, v37);
}

__n128 sub_2384CBE10@<Q0>(uint64_t a1@<X8>)
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
  v8 = v7;

  *(&v34 + 1) = v8;
  sub_2384397A8();
  v9 = sub_23875DAA0();
  v11 = v10;
  LOBYTE(v8) = v12;
  sub_23875D890();
  v13 = sub_23875D9E0();
  v15 = v14;
  v17 = v16;
  sub_2384397FC(v9, v11, v8 & 1);

  v18 = [objc_opt_self() labelColor];
  *&v34 = sub_23875DFB0();
  v19 = sub_23875DA20();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_2384397FC(v13, v15, v17 & 1);

  sub_23875E4A0();
  sub_23875C9C0();
  sub_23875E4A0();
  sub_23875C9C0();

  *(a1 + 96) = v38;
  *(a1 + 112) = v39;
  result = v40;
  *(a1 + 32) = v34;
  *(a1 + 48) = v35;
  *(a1 + 64) = v36;
  *(a1 + 80) = v37;
  *(a1 + 192) = v30;
  *(a1 + 208) = v31;
  *(a1 + 224) = v32;
  *(a1 + 240) = v33;
  *(a1 + 128) = v40;
  *(a1 + 144) = v27;
  *a1 = v19;
  *(a1 + 8) = v21;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v25;
  *(a1 + 160) = v28;
  *(a1 + 176) = v29;
  *(a1 + 256) = 256;
  return result;
}

void sub_2384CC164(uint64_t a1, uint64_t a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v23 = *(a2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  swift_getKeyPath();
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  if (*(v24 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v4 = 0xE300000000000000;
    v5 = 7105633;
  }

  else
  {
    swift_getKeyPath();
    sub_23875BE90();

    v6 = v24 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v7 = (v6 + *(type metadata accessor for SharingStartDate(0) + 24));
    v5 = *v7;
    v4 = v7[1];
  }

  v8 = *(a2 + 16);
  *(inited + 40) = v5;
  *(inited + 48) = v4;
  v9 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_238763300;
  v11 = *MEMORY[0x277D383D8];
  *(v10 + 32) = *MEMORY[0x277D383D8];
  v12 = *MEMORY[0x277D38428];
  *(v10 + 40) = sub_23875EA80();
  *(v10 + 48) = v13;
  v14 = *MEMORY[0x277D38390];
  *(v10 + 56) = *MEMORY[0x277D38390];
  *(v10 + 64) = 0x7A696D6F74737563;
  v15 = *MEMORY[0x277D384B8];
  *(v10 + 72) = 0xE900000000000065;
  *(v10 + 80) = v15;
  *(v10 + 88) = 0xD000000000000014;
  *(v10 + 96) = 0x8000000238785000;
  v16 = v11;
  v17 = v14;
  v18 = v15;
  v19 = sub_23854B138(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v19;
  sub_2385C33E4(v9, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v24);

  v21 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384D0C70(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v22 = sub_23875E910();

  [v21 subject:v8 sendEvent:v22];
}

uint64_t SharingTimeSelectionView.body.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF18, &qword_238769A60);
  sub_2384CC75C();
  return sub_23875C8F0();
}

uint64_t sub_2384CC618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C148, &qword_238769F08);
  sub_2384CC830(a1, (a2 + *(v4 + 44)));
  v5 = swift_allocObject();
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = *(a1 + 48);
  sub_2384D2C74(a1, v9);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF18, &qword_238769A60);
  v8 = (a2 + *(result + 36));
  *v8 = sub_2384D2C6C;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  return result;
}

unint64_t sub_2384CC75C()
{
  result = qword_27DF0BF20;
  if (!qword_27DF0BF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BF18, &qword_238769A60);
    sub_23843A3E8(&qword_27DF0BF28, &qword_27DF0BF30, &qword_238769A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0BF20);
  }

  return result;
}

uint64_t sub_2384CC830@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C158, &qword_238769F28);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C160, &qword_238769F30);
  v33 = *(v35 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  sub_23875ED50();
  v36 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_23875D760();
  MEMORY[0x28223BE20](v14);
  *(&v31 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C168, &qword_238769F38);
  sub_23843A3E8(&qword_27DF0C170, &qword_27DF0C168, &qword_238769F38);
  v32 = v13;
  v15 = sub_23875C410();
  MEMORY[0x28223BE20](v15);
  *(&v31 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C178, &qword_238769F40);
  sub_23843A3E8(&qword_27DF0C180, &qword_27DF0C178, &qword_238769F40);
  sub_23875D1D0();
  v16 = sub_23875D770();
  sub_23875C3D0();
  v17 = v33;
  v18 = &v7[*(v34 + 36)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = *(v17 + 16);
  v24 = v32;
  v25 = v35;
  v23(v10, v32, v35);
  v26 = v38;
  sub_23843981C(v7, v38, &qword_27DF0C158, &qword_238769F28);
  v27 = v37;
  v23(v37, v10, v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C188, &qword_238769F48);
  sub_23843981C(v26, &v27[*(v28 + 48)], &qword_27DF0C158, &qword_238769F28);
  sub_238439884(v7, &qword_27DF0C158, &qword_238769F28);
  v29 = *(v17 + 8);
  v29(v24, v25);
  sub_238439884(v26, &qword_27DF0C158, &qword_238769F28);
  v29(v10, v25);
}

uint64_t sub_2384CCC7C@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v64 = a2;
  v66.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C228, &unk_238769FE0);
  v3 = *(*(v66.i64[0] - 8) + 64);
  MEMORY[0x28223BE20](v66.i64[0]);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = (&v62 - v6);
  v7 = sub_238758850();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v67 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = qword_2814F0880;
  v71 = *a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F1B90;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_23875EA80();
  v65 = v19;

  v20 = a1[1];
  v92 = *a1;
  v93 = v20;
  v94 = a1[2];
  v95 = *(a1 + 6);
  v21 = sub_2384CB404();
  v69 = v22;
  v70 = v21;
  sub_238449184(0, &qword_27DF0B1F0, 0x277CC1E90);
  sub_2387587F0();
  sub_238758840();
  (*(v8 + 8))(v11, v7);
  v62 = sub_23860E554();
  v63 = sub_23875D7A0();
  sub_23875C3D0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v96 = 0;
  v79 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  *v72 = v71;
  v31 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  v32 = *(v31 + 20);
  type metadata accessor for SharingStartDateModel(0);
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875E420();
  v33 = *(v31 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C230, &qword_23877AAE0);
  started = type metadata accessor for SharingStartDate(0);
  v35 = *(*(started - 8) + 72);
  v36 = (*(*(started - 8) + 80) + 32) & ~*(*(started - 8) + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_238763310;
  v38 = v37 + v36;
  if (qword_27DF08CE0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(started, qword_27DF2F6A8);
  sub_2384D2A50(v39, v38, type metadata accessor for SharingStartDate);
  if (qword_27DF08CE8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(started, qword_27DF2F6C0);
  sub_2384D2A50(v40, v38 + v35, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF0 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(started, qword_27DF2F6D8);
  sub_2384D2A50(v41, v38 + 2 * v35, type metadata accessor for SharingStartDate);
  if (qword_27DF08CF8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(started, qword_27DF2F6F0);
  sub_2384D2A50(v42, v38 + 3 * v35, type metadata accessor for SharingStartDate);
  v43 = v72;
  *(v72 + v33) = v37;
  v44 = sub_23875D770();
  sub_23875C3D0();
  v45 = v43 + *(v66.i64[0] + 36);
  *v45 = v44;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47;
  *(v45 + 24) = v48;
  *(v45 + 32) = v49;
  *(v45 + 40) = 0;
  v50 = v68;
  sub_23843981C(v43, v68, &qword_27DF0C228, &unk_238769FE0);
  v51 = v71;
  v52 = v62;
  *&v73 = v71;
  *(&v73 + 1) = v62;
  v53 = v18;
  *&v74 = v18;
  v54 = v65;
  *(&v74 + 1) = v65;
  *&v75 = v70;
  *(&v75 + 1) = v69;
  v66 = vdupq_n_s64(0x4054000000000000uLL);
  v76 = v66;
  v55 = v63;
  LOBYTE(v77) = v63;
  *(&v77 + 1) = v97[0];
  DWORD1(v77) = *(v97 + 3);
  *(&v77 + 1) = v24;
  *&v78[0] = v26;
  *(&v78[0] + 1) = v28;
  *&v78[1] = v30;
  BYTE8(v78[1]) = 0;
  v56 = v64;
  *(v64 + 89) = *(v78 + 9);
  v57 = v76;
  v56[2] = v75;
  v56[3] = v57;
  v58 = v74;
  *v56 = v73;
  v56[1] = v58;
  v59 = v78[0];
  v56[4] = v77;
  v56[5] = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C238, &qword_238769FF0);
  sub_23843981C(v50, v56 + *(v60 + 48), &qword_27DF0C228, &unk_238769FE0);
  sub_23843981C(&v73, &v79, &qword_27DF0C240, &qword_238769FF8);
  sub_238439884(v43, &qword_27DF0C228, &unk_238769FE0);
  sub_238439884(v50, &qword_27DF0C228, &unk_238769FE0);
  *&v79 = v51;
  *(&v79 + 1) = v52;
  v80 = v53;
  v81 = v54;
  v82 = v70;
  v83 = v69;
  v84 = v66;
  v85 = v55;
  *v86 = v97[0];
  *&v86[3] = *(v97 + 3);
  v87 = v24;
  v88 = v26;
  v89 = v28;
  v90 = v30;
  v91 = 0;
  sub_238439884(&v79, &qword_27DF0C240, &qword_238769FF8);
}

uint64_t sub_2384CD434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x402C000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C190, &qword_238769F50);
  sub_2384CD508(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2384CD508@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C198, &qword_238769F58);
  v53 = *(v55 - 8);
  v3 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v48 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1A0, &unk_238769F60);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v48 - v9;
  v49 = sub_23875C930();
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v49);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v15 = *(*(v14 - 1) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v48 - v16);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1A8, &qword_238769F70);
  v18 = *(v50 - 8);
  v19 = v18[8];
  MEMORY[0x28223BE20](v50);
  v52 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v58 = &v48 - v22;
  sub_23875ED50();
  v51 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = *(a1 + 16);
  v60 = *a1;
  v61 = v23;
  v62 = *(a1 + 32);
  v63 = *(a1 + 48);
  v24 = sub_2384CB25C();
  v26 = v25;
  v27 = swift_allocObject();
  v28 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v28;
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = *(a1 + 48);
  v29 = v14[9];
  sub_2384D2C74(a1, v59);
  sub_23875D610();
  *v17 = v24;
  v17[1] = v26;
  *(v17 + v14[10]) = 0;
  v30 = (v17 + v14[11]);
  *v30 = sub_2384D3434;
  v30[1] = v27;
  sub_23875C920();
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_23875DC90();
  (*(v10 + 8))(v13, v49);
  sub_238439884(v17, &qword_27DF0AAD8, &qword_23876B8C0);
  v31 = *(a1 + 8);
  swift_getKeyPath();
  *&v60 = v31;
  sub_2384D0C70(&qword_27DF0C1B0, type metadata accessor for AccountsModel);
  sub_23875BE90();

  swift_beginAccess();
  if (*(*(v31 + 40) + 16))
  {
    v32 = *(a1 + 16);
    v60 = *a1;
    v61 = v32;
    v62 = *(a1 + 32);
    v63 = *(a1 + 48);
    v33 = v48;
    sub_2384CB5AC(v48);
    v34 = v53;
    v35 = v54;
    v36 = v33;
    v37 = v55;
    (*(v53 + 32))(v54, v36, v55);
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v35 = v54;
    v37 = v55;
    v34 = v53;
  }

  (*(v34 + 56))(v35, v38, 1, v37);
  v39 = v18[2];
  v40 = v52;
  v41 = v58;
  v42 = v50;
  v39(v52, v58, v50);
  v43 = v56;
  sub_23843981C(v35, v56, &qword_27DF0C1A0, &unk_238769F60);
  v44 = v57;
  v39(v57, v40, v42);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C1B8, &unk_238769FA0);
  sub_23843981C(v43, &v44[*(v45 + 48)], &qword_27DF0C1A0, &unk_238769F60);
  sub_238439884(v35, &qword_27DF0C1A0, &unk_238769F60);
  v46 = v18[1];
  v46(v41, v42);
  sub_238439884(v43, &qword_27DF0C1A0, &unk_238769F60);
  v46(v40, v42);
}

uint64_t sub_2384CDB60(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  v10 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C150, &unk_238769F18);
  sub_23875E1B0();
  swift_getKeyPath();
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  if (*(v11 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected))
  {
    v3 = 0xE300000000000000;
    v4 = 7105633;
  }

  else
  {
    swift_getKeyPath();
    sub_23875BE90();

    v5 = v11 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    v6 = (v5 + *(type metadata accessor for SharingStartDate(0) + 24));
    v4 = *v6;
    v3 = v6[1];
  }

  v7 = *(a1 + 16);
  *(inited + 40) = v4;
  *(inited + 48) = v3;
  v8 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844C218(v7, 23, v8);
}

uint64_t sub_2384CDDD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v2 = [*v0 localizedName];
  v3 = sub_23875EA80();
  v5 = v4;

  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v3;
  *(v1 + 40) = v5;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  v11 = sub_23875EAA0();

  return v11;
}

uint64_t sub_2384CDF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = sub_23875CFD0();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v50 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875C850();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C078, &qword_238769E28);
  v45 = *(v12 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C080, &qword_238769E30);
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v44 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C088, &qword_238769E38);
  v21 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51);
  v23 = v44 - v22;
  v56 = a1;
  v55 = a1;
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C090, &qword_238769E40);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C098, &qword_238769E48);
  v25 = sub_23875CDF0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0A0, &qword_238769E50);
  v27 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50);
  v57 = v26;
  v58 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v57 = v24;
  v58 = v25;
  v59 = OpaqueTypeConformance2;
  v60 = MEMORY[0x277CDDDA0];
  swift_getOpaqueTypeConformance2();
  sub_23875D9D0();
  sub_23875C840();
  v29 = sub_23843A3E8(&qword_27DF0C0B0, &qword_27DF0C078, &qword_238769E28);
  v30 = sub_2384D0C70(&qword_27DF0C0B8, MEMORY[0x277CDD9E0]);
  v31 = v46;
  sub_23875DF60();
  (*(v47 + 8))(v11, v31);
  (*(v45 + 8))(v15, v12);
  v32 = v50;
  sub_23875CFC0();
  v57 = v12;
  v58 = v31;
  v59 = v29;
  v60 = v30;
  swift_getOpaqueTypeConformance2();
  sub_2384D0C70(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
  v33 = v48;
  v34 = v52;
  sub_23875DB30();
  (*(v53 + 8))(v32, v34);
  (*(v49 + 8))(v20, v33);
  KeyPath = swift_getKeyPath();
  v36 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0C8, &qword_238769E88) + 36)];
  *v36 = KeyPath;
  v36[8] = 2;
  LODWORD(KeyPath) = sub_23875D420();
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0D0, &qword_238769E90) + 36)] = KeyPath;
  LOBYTE(KeyPath) = sub_23875D7D0();
  sub_23875C3D0();
  v37 = &v23[*(v51 + 36)];
  *v37 = KeyPath;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_2384D2708();
  v42 = v54;
  sub_23875DE70();
  sub_238439884(v23, &qword_27DF0C088, &qword_238769E38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C100, &qword_238769E98);
  *(v42 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2384CE5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v43 = a2;
  v2 = sub_23875CDF0();
  v44 = *(v2 - 8);
  v45 = v2;
  v3 = *(v44 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C108, &qword_238769EC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C0A0, &qword_238769E50);
  v36 = *(v13 - 8);
  v14 = *(v36 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C098, &qword_238769E48);
  v40 = *(v17 - 8);
  v41 = v17;
  v18 = *(v40 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

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

  v46 = v26;
  v47 = v28;
  v29 = v37 + *(type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0) + 20);
  sub_23875E410();
  swift_getKeyPath();
  sub_23875E430();

  v30 = (*(v9 + 8))(v12, v8);
  MEMORY[0x28223BE20](v30);
  type metadata accessor for SharingStartDate(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C110, qword_238769ED0);
  sub_2384D0C70(&qword_27DF0C118, type metadata accessor for SharingStartDate);
  sub_2384D2AC0();
  sub_2384397A8();
  sub_23875E280();
  v31 = sub_23843A3E8(&qword_27DF0C0A8, &qword_27DF0C0A0, &qword_238769E50);
  sub_23875DBB0();
  (*(v36 + 8))(v16, v13);
  v32 = v42;
  sub_23875CDE0();
  v46 = v13;
  v47 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v41;
  v34 = v45;
  sub_23875DB80();
  (*(v44 + 8))(v32, v34);
  (*(v40 + 8))(v20, v33);
}

uint64_t sub_2384CEBB4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + *(type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0) + 24));
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C138, &qword_238769F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C130, &unk_238779BB0);
  sub_23843A3E8(&qword_27DF0C140, &qword_27DF0C138, &qword_238769F00);
  sub_2384D0C70(&qword_27DF0C118, type metadata accessor for SharingStartDate);
  sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0);
  sub_23875E370();
}

__n128 sub_2384CED94@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  sub_2384CEE68(a1, &v8);

  v5 = v9;
  v6 = v10;
  result = v8;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  return result;
}

uint64_t sub_2384CEE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (a1 + *(type metadata accessor for SharingStartDate(0) + 20));
  if (qword_2814F0880 != -1)
  {
    v17 = *v4;
    v18 = v4[1];
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_2384CF020@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for SharingStartDate(0);
  v3 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  v7 = v35;
  swift_getKeyPath();
  v35 = v7;
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  v8 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
  swift_beginAccess();
  sub_2384D2A50(v7 + v8, v5, type metadata accessor for SharingStartDate);

  v9 = &v5[*(started + 20)];
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_2384AA698(v5, type metadata accessor for SharingStartDate);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v12 = qword_2814F1B90;
  v13 = sub_23875EA50();

  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = [v12 localizedStringForKey:v13 value:v14 table:v15];

  v17 = sub_23875EA80();
  v19 = v18;

  v33 = v17;
  v34 = v19;
  sub_2384397A8();
  v20 = sub_23875DAA0();
  v22 = v21;
  LOBYTE(v19) = v23;
  LODWORD(v33) = sub_23875D420();
  v24 = sub_23875DA20();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_2384397FC(v20, v22, v19 & 1);

  *a1 = v24;
  *(a1 + 8) = v26;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v30;
  return result;
}

uint64_t sub_2384CF388()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875C4E0();
}

uint64_t sub_2384CF42C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = sub_23875D310();
  v4 = *(v3 - 8);
  v38 = v3;
  v39 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFE8, &qword_238769D60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFF0, &qword_238769D68);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFF8, &qword_238769D70);
  v35 = *(v17 - 8);
  v18 = *(v35 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C000, &qword_238769D78);
  v22 = *(v21 - 8);
  v36 = v21;
  v37 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v33 - v24;
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C008, &unk_238769D80);
  sub_2384D0CC0();
  sub_23875D9C0();
  v26 = sub_23843A3E8(&qword_27DF0C040, &qword_27DF0BFE8, &qword_238769D60);
  sub_23875DD80();
  (*(v9 + 8))(v12, v8);
  sub_23875D300();
  v42 = v8;
  v43 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = MEMORY[0x277CDE0D0];
  v29 = v38;
  sub_23875DF50();
  (*(v39 + 8))(v7, v29);
  (*(v34 + 8))(v16, v13);
  v42 = v13;
  v43 = v29;
  v44 = OpaqueTypeConformance2;
  v45 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  sub_23875DB70();
  (*(v35 + 8))(v20, v17);
  v42 = v17;
  v43 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v36;
  sub_23875DE10();
  return (*(v37 + 8))(v25, v31);
}

uint64_t sub_2384CF8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[7] = a2;
  sub_23875ED50();
  v19[6] = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  v19[5] = v19;
  v19[2] = a1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_2384CDDD8();
  v21 = v4;
  sub_2384397A8();
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875D930();
  v10 = sub_23875DA60();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_2384397FC(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();

  v20 = v10;
  v21 = v12;
  v22 = v14 & 1;
  v23 = v16;
  v24 = KeyPath;
  v25 = 0;
  v26 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C020, &qword_23877A9A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C030, &qword_238769D90);
  sub_23843A3E8(&qword_27DF0C018, &qword_27DF0C020, &qword_23877A9A0);
  sub_2384D0D84();
  sub_23875E3C0();
}

uint64_t sub_2384CFBC4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C048, &qword_238769DD0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C050, &qword_238769DD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v37 - v10;
  v11 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v43 = v14;
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *(v11 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  v40 = v16;
  sub_23875E400();
  v17 = v52;
  swift_getKeyPath();
  v52 = v17;
  v39 = sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  v45 = *(v17 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  v41 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView;
  sub_2384D2A50(a1, v15, type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView);
  v18 = v15;
  v19 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v46 = swift_allocObject();
  sub_2384D0F4C(v15, v46 + v19);
  sub_23875E400();
  v20 = v52;
  swift_getKeyPath();
  v52 = v20;
  sub_23875BE90();

  v42 = *(v20 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  sub_2384D2A50(a1, v15, v41);
  v21 = swift_allocObject();
  sub_2384D0F4C(v18, v21 + v19);
  sub_23875E400();
  v22 = v52;
  swift_getKeyPath();
  v52 = v22;
  sub_23875BE90();

  v23 = *(v22 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  if (v23)
  {
    v24 = v50;
    (*(v47 + 56))(v50, 1, 1, v48);
  }

  else
  {
    v25 = v38;
    sub_2384CDF7C(a1, v38);
    *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C058, &qword_238769E08) + 36)) = 0;
    v24 = v50;
    if (qword_27DF08D80 != -1)
    {
      swift_once();
    }

    v26 = qword_27DF2F920;
    v52 = qword_27DF2F920;

    v27 = sub_23875E2D0();
    *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C060, &qword_238769E10) + 36)) = v27;
    LOBYTE(v27) = sub_23875D780();
    v28 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C068, &qword_238769E18) + 36);
    *v28 = v26;
    *(v28 + 8) = v27;
    v29 = v48;
    v30 = (v25 + *(v48 + 36));
    *v30 = sub_2384CF388;
    v30[1] = 0;
    sub_238404F7C(v25, v24);
    (*(v47 + 56))(v24, 0, 1, v29);
  }

  v31 = v42 ^ 1;
  v32 = v51;
  sub_23843981C(v24, v51, &qword_27DF0C050, &qword_238769DD8);
  v33 = v44;
  *v44 = 0xD000000000000025;
  v33[1] = 0x80000002387887B0;
  *(v33 + 16) = v45;
  v34 = v46;
  v33[3] = sub_2384D39B4;
  v33[4] = v34;
  v33[5] = 0xD000000000000029;
  v33[6] = 0x80000002387887E0;
  *(v33 + 56) = v31;
  v33[8] = sub_2384D10B8;
  v33[9] = v21;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C070, &qword_238769E20);
  sub_23843981C(v32, v33 + *(v35 + 64), &qword_27DF0C050, &qword_238769DD8);

  sub_238439884(v24, &qword_27DF0C050, &qword_238769DD8);
  sub_238439884(v32, &qword_27DF0C050, &qword_238769DD8);
}

uint64_t sub_2384D0280()
{
  v0 = *(type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  sub_23875E400();
  swift_getKeyPath();
  sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
  sub_23875BE90();

  swift_getKeyPath();
  sub_23875BEB0();

  *(v2 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = (*(v2 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) & 1) == 0;
  swift_getKeyPath();
  sub_23875BEA0();
}

uint64_t sub_2384D03D8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF18, &qword_238769A60);
  sub_2384CC75C();
  return sub_23875C8F0();
}

uint64_t sub_2384D048C()
{
  result = type metadata accessor for SharingStartDate(319);
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

uint64_t sub_2384D0580(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2384D05C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2384D064C()
{
  result = sub_23875B650();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2384D0720()
{
  sub_238449184(319, &qword_27DF0BF98, 0x277CC1E70);
  if (v0 <= 0x3F)
  {
    sub_2384D082C(319, &qword_27DF0BFA0, type metadata accessor for SharingStartDateModel, MEMORY[0x277CE12F8]);
    if (v1 <= 0x3F)
    {
      sub_2384D082C(319, &qword_27DF0BFA8, type metadata accessor for SharingStartDate, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384D082C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384D091C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFB8, &qword_238769D38);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFC0, &qword_238769D40);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFC8, &qword_238769D48);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFD0, &qword_238769D50);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v31 - v19;
  sub_23875E4B0();
  sub_23875C9C0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BFD8, &qword_238769D58);
  (*(*(v21 - 8) + 16))(v7, a1, v21);
  v22 = &v7[*(v4 + 44)];
  v23 = v37;
  *(v22 + 4) = v36;
  *(v22 + 5) = v23;
  *(v22 + 6) = v38;
  v24 = v33;
  *v22 = v32;
  *(v22 + 1) = v24;
  v25 = v35;
  *(v22 + 2) = v34;
  *(v22 + 3) = v25;
  sub_2384396E4(v7, v12, &qword_27DF0BFB8, &qword_238769D38);
  v12[*(v9 + 44)] = 0;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v26 = qword_27DF2F920;
  v31[1] = qword_27DF2F920;

  v27 = sub_23875E2D0();
  sub_2384396E4(v12, v16, &qword_27DF0BFC0, &qword_238769D40);
  *&v16[*(v13 + 36)] = v27;
  v28 = sub_23875D780();
  sub_2384396E4(v16, v20, &qword_27DF0BFC8, &qword_238769D48);
  v29 = &v20[*(v17 + 36)];
  *v29 = v26;
  v29[8] = v28;
  sub_2384396E4(v20, v31[0], &qword_27DF0BFD0, &qword_238769D50);
}

uint64_t sub_2384D0C70(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2384D0CC0()
{
  result = qword_27DF0C010;
  if (!qword_27DF0C010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C008, &unk_238769D80);
    sub_23843A3E8(&qword_27DF0C018, &qword_27DF0C020, &qword_23877A9A0);
    sub_2384D0D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C010);
  }

  return result;
}

unint64_t sub_2384D0D84()
{
  result = qword_27DF0C028;
  if (!qword_27DF0C028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C030, &qword_238769D90);
    sub_2384D0E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C028);
  }

  return result;
}

unint64_t sub_2384D0E10()
{
  result = qword_27DF0C038;
  if (!qword_27DF0C038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF12EE0, &unk_2387759C0);
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C038);
  }

  return result;
}

uint64_t sub_2384D0ED0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_238495524(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2384D1120(v6);
  return sub_23875F4D0();
}

uint64_t sub_2384D0F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = (type metadata accessor for SharingTimeSelectionView.AccountTimeSharingListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BF80, &qword_238769BB8);
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = *(v0 + v3 + v1[8]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2384D1120(uint64_t *a1)
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
        type metadata accessor for AccountStartDateModel();
        v6 = sub_23875ECA0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_2384D1584(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_2384D1224(0, v2, 1, a1);
  }
}

void sub_2384D1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_23875BCB0();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v35 - v12;
  v36 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v44 = sub_23875ED50();
    v45 = v13;
    v40 = (v8 + 8);
    v14 = (v13 + 8 * a3 - 8);
    v15 = a1 - a3;
    v16 = MEMORY[0x277D837D0];
LABEL_5:
    v38 = v14;
    v39 = a3;
    v17 = *(v45 + 8 * a3);
    v37 = v15;
    while (1)
    {
      v51 = v15;
      v18 = v16;
      v19 = *v14;

      v46 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v49 = sub_2387585B0();
      v50 = v20;
      v47 = sub_2387585B0();
      v48 = v21;
      sub_2384397A8();
      v22 = sub_23875F290();

      if (v22)
      {
        v49 = sub_2387585B0();
        v50 = v23;
        v47 = sub_2387585B0();
        v48 = v24;
        v25 = sub_23875F290();

        v16 = v18;
        v26 = v51;
        if (v25 != -1)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v27 = v41;
        sub_238758640();
        v28 = v42;
        sub_238758640();
        v29 = MEMORY[0x23EE60750](v27, v28);
        v30 = *v40;
        v31 = v28;
        v32 = v43;
        (*v40)(v31, v43);
        v30(v27, v32);

        v16 = v18;
        v26 = v51;
        if ((v29 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v45)
      {
        break;
      }

      v33 = *v14;
      *v14 = v14[1];
      v14[1] = v33;
      --v14;
      v34 = __CFADD__(v26, 1);
      v15 = v26 + 1;
      if (v34)
      {
LABEL_4:
        a3 = v39 + 1;
        v14 = v38 + 1;
        v15 = v37 - 1;
        if (v39 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_2384D1584(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v115 = a1;
  v127 = sub_23875BCB0();
  v6 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v126 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v125 = &v113 - v10;
  v121 = a3;
  v11 = *(a3 + 8);
  if (v11 < 1)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_99:
    a3 = *v115;
    if (!*v115)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v136 = v13;
      v108 = *(v13 + 2);
      if (v108 >= 2)
      {
        while (*v121)
        {
          v109 = *&v13[16 * v108];
          v110 = *&v13[16 * v108 + 24];
          v111 = v122;
          sub_2384D2048((*v121 + 8 * v109), (*v121 + 8 * *&v13[16 * v108 + 16]), (*v121 + 8 * v110), a3);
          v122 = v111;
          if (v111)
          {
            goto LABEL_109;
          }

          if (v110 < v109)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_238490ED4(v13);
          }

          if (v108 - 2 >= *(v13 + 2))
          {
            goto LABEL_125;
          }

          v112 = &v13[16 * v108];
          *v112 = v109;
          *(v112 + 1) = v110;
          v136 = v13;
          sub_238490E48(v108 - 1);
          v13 = v136;
          v108 = *(v136 + 2);
          if (v108 <= 1)
          {
            goto LABEL_109;
          }
        }

        goto LABEL_135;
      }

LABEL_109:

      return;
    }

LABEL_131:
    v13 = sub_238490ED4(v13);
    goto LABEL_101;
  }

  v114 = a4;
  v12 = 0;
  v124 = (v9 + 8);
  v13 = MEMORY[0x277D84F90];
LABEL_4:
  v14 = v12++;
  v120 = v13;
  if (v12 < v11)
  {
    v15 = v14;
    v16 = *v121;
    v17 = *(*v121 + 8 * v12);
    v116 = v15;
    v18 = *(v16 + 8 * v15);
    v19 = sub_23875ED50();

    sub_23875ED40();
    v119 = v19;
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    LODWORD(v129) = sub_23861E71C();

    a3 = v16 + 8 * v116 + 16;
    v117 = 8 * v116;
    v20 = 8 * v116 + 8;
    v13 = v120;
    v128 = v11;
    do
    {
      v27 = v20;
      v118 = v12++;
      if (v12 >= v11)
      {
        break;
      }

      v131 = v20;
      v123 = v12;
      v28 = *(a3 - 8);
      v29 = *a3;

      v130 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v134 = sub_2387585B0();
      v135 = v21;
      v132 = sub_2387585B0();
      v133 = v22;
      sub_2384397A8();
      v23 = sub_23875F290();

      if (v23)
      {
        v134 = sub_2387585B0();
        v135 = v24;
        v132 = sub_2387585B0();
        v133 = v25;
        v26 = sub_23875F290();

        LOBYTE(v26) = v26 == -1;
      }

      else
      {
        v30 = v125;
        sub_238758640();
        v31 = v126;
        sub_238758640();
        v26 = MEMORY[0x23EE60750](v30, v31);
        v32 = *v124;
        v33 = v31;
        v34 = v127;
        (*v124)(v33, v127);
        v32(v30, v34);
      }

      v13 = v120;
      v11 = v128;
      a3 += 8;
      v27 = v131;
      v20 = v131 + 8;
      v12 = v123;
    }

    while ((v129 & 1) == (v26 & 1));
    if (v129)
    {
      v14 = v116;
      if (v12 < v116)
      {
        goto LABEL_128;
      }

      if (v116 < v12)
      {
        v35 = v116;
        v36 = v117;
        v37 = v118;
        do
        {
          if (v35 != v37)
          {
            v40 = *v121;
            if (!*v121)
            {
              goto LABEL_134;
            }

            v38 = *(v40 + v36);
            *(v40 + v36) = *(v40 + v27);
            *(v40 + v27) = v38;
          }

          ++v35;
          v27 -= 8;
          v36 += 8;
        }

        while (v35 < v37--);
      }
    }

    else
    {
      v14 = v116;
    }
  }

  v41 = v121[1];
  if (v12 >= v41)
  {
    goto LABEL_48;
  }

  if (__OFSUB__(v12, v14))
  {
    goto LABEL_127;
  }

  if (v12 - v14 >= v114)
  {
    goto LABEL_48;
  }

  if (__OFADD__(v14, v114))
  {
    goto LABEL_129;
  }

  if (v14 + v114 >= v41)
  {
    a3 = v121[1];
  }

  else
  {
    a3 = v14 + v114;
  }

  if (a3 < v14)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v12 == a3)
  {
    goto LABEL_48;
  }

  v42 = *v121;
  v128 = sub_23875ED50();
  v129 = v42;
  v43 = v42 + 8 * v12 - 8;
  v116 = v14;
  v117 = a3;
  v44 = v14 - v12;
LABEL_37:
  v123 = v12;
  v45 = *(v129 + 8 * v12);
  v118 = v44;
  v119 = v43;
  v46 = v43;
  while (1)
  {
    v130 = v44;
    v47 = *v46;

    v131 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v134 = sub_2387585B0();
    v135 = v48;
    v132 = sub_2387585B0();
    v133 = v49;
    sub_2384397A8();
    v50 = sub_23875F290();

    if (v50)
    {
      v134 = sub_2387585B0();
      v135 = v51;
      v132 = sub_2387585B0();
      v133 = v52;
      v53 = sub_23875F290();

      if (v53 != -1)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v54 = v125;
      sub_238758640();
      v55 = v126;
      sub_238758640();
      v56 = MEMORY[0x23EE60750](v54, v55);
      v57 = *v124;
      v58 = v55;
      v59 = v127;
      (*v124)(v58, v127);
      v57(v54, v59);

      if ((v56 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v60 = v130;
    if (!v129)
    {
      break;
    }

    v61 = *v46;
    *v46 = v46[1];
    v46[1] = v61;
    --v46;
    v44 = v60 + 1;
    if (v60 == -1)
    {
LABEL_36:
      v12 = v123 + 1;
      v43 = v119 + 8;
      v44 = v118 - 1;
      a3 = v117;
      if (v123 + 1 != v117)
      {
        goto LABEL_37;
      }

      v12 = v117;
      v13 = v120;
      v14 = v116;
LABEL_48:
      if (v12 < v14)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_238490EE8(0, *(v13 + 2) + 1, 1, v13);
      }

      a3 = *(v13 + 2);
      v62 = *(v13 + 3);
      v63 = a3 + 1;
      if (a3 >= v62 >> 1)
      {
        v13 = sub_238490EE8((v62 > 1), a3 + 1, 1, v13);
      }

      *(v13 + 2) = v63;
      v64 = &v13[16 * a3];
      *(v64 + 4) = v14;
      *(v64 + 5) = v12;
      v65 = *v115;
      if (!*v115)
      {
        goto LABEL_136;
      }

      if (a3)
      {
        while (1)
        {
          v66 = v63 - 1;
          if (v63 >= 4)
          {
            break;
          }

          if (v63 == 3)
          {
            v67 = *(v13 + 4);
            v68 = *(v13 + 5);
            v77 = __OFSUB__(v68, v67);
            v69 = v68 - v67;
            v70 = v77;
LABEL_68:
            if (v70)
            {
              goto LABEL_115;
            }

            v83 = &v13[16 * v63];
            v85 = *v83;
            v84 = *(v83 + 1);
            v86 = __OFSUB__(v84, v85);
            v87 = v84 - v85;
            v88 = v86;
            if (v86)
            {
              goto LABEL_118;
            }

            v89 = &v13[16 * v66 + 32];
            v91 = *v89;
            v90 = *(v89 + 1);
            v77 = __OFSUB__(v90, v91);
            v92 = v90 - v91;
            if (v77)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v87, v92))
            {
              goto LABEL_122;
            }

            if (v87 + v92 >= v69)
            {
              if (v69 < v92)
              {
                v66 = v63 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v93 = &v13[16 * v63];
          v95 = *v93;
          v94 = *(v93 + 1);
          v77 = __OFSUB__(v94, v95);
          v87 = v94 - v95;
          v88 = v77;
LABEL_82:
          if (v88)
          {
            goto LABEL_117;
          }

          v96 = &v13[16 * v66];
          v98 = *(v96 + 4);
          v97 = *(v96 + 5);
          v77 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v77)
          {
            goto LABEL_120;
          }

          if (v99 < v87)
          {
            goto LABEL_3;
          }

LABEL_89:
          a3 = v66 - 1;
          if (v66 - 1 >= v63)
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_130;
          }

          if (!*v121)
          {
            goto LABEL_133;
          }

          v104 = *&v13[16 * a3 + 32];
          v105 = *&v13[16 * v66 + 40];
          v106 = v122;
          sub_2384D2048((*v121 + 8 * v104), (*v121 + 8 * *&v13[16 * v66 + 32]), (*v121 + 8 * v105), v65);
          v122 = v106;
          if (v106)
          {
            goto LABEL_109;
          }

          if (v105 < v104)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_238490ED4(v13);
          }

          if (a3 >= *(v13 + 2))
          {
            goto LABEL_112;
          }

          v107 = &v13[16 * a3];
          *(v107 + 4) = v104;
          *(v107 + 5) = v105;
          v136 = v13;
          sub_238490E48(v66);
          v13 = v136;
          v63 = *(v136 + 2);
          if (v63 <= 1)
          {
            goto LABEL_3;
          }
        }

        v71 = &v13[16 * v63 + 32];
        v72 = *(v71 - 64);
        v73 = *(v71 - 56);
        v77 = __OFSUB__(v73, v72);
        v74 = v73 - v72;
        if (v77)
        {
          goto LABEL_113;
        }

        v76 = *(v71 - 48);
        v75 = *(v71 - 40);
        v77 = __OFSUB__(v75, v76);
        v69 = v75 - v76;
        v70 = v77;
        if (v77)
        {
          goto LABEL_114;
        }

        v78 = &v13[16 * v63];
        v80 = *v78;
        v79 = *(v78 + 1);
        v77 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v77)
        {
          goto LABEL_116;
        }

        v77 = __OFADD__(v69, v81);
        v82 = v69 + v81;
        if (v77)
        {
          goto LABEL_119;
        }

        if (v82 >= v74)
        {
          v100 = &v13[16 * v66 + 32];
          v102 = *v100;
          v101 = *(v100 + 1);
          v77 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v77)
          {
            goto LABEL_123;
          }

          if (v69 < v103)
          {
            v66 = v63 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v11 = v121[1];
      if (v12 >= v11)
      {
        goto LABEL_99;
      }

      goto LABEL_4;
    }
  }

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
}

uint64_t sub_2384D2048(char *a1, char *a2, char *a3, char *a4)
{
  v56 = sub_23875BCB0();
  v8 = *(v56 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v52 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v62 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v68 = &a4[8 * v16];
    if (a3 - a2 >= 8 && a2 > v62)
    {
      v57 = sub_23875ED50();
      v53 = (v8 + 8);
      v63 = a4;
LABEL_30:
      v61 = a1;
      v33 = a1 - 8;
      v34 = a3;
      v35 = v68;
      v58 = a1 - 8;
      do
      {
        v36 = *(v35 - 1);
        v59 = v35 - 8;
        v37 = *v33;

        v60 = sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v66 = sub_2387585B0();
        v67 = v38;
        v64 = sub_2387585B0();
        v65 = v39;
        sub_2384397A8();
        v40 = sub_23875F290();

        if (v40)
        {
          v66 = sub_2387585B0();
          v67 = v41;
          v64 = sub_2387585B0();
          v65 = v42;
          v43 = sub_23875F290();

          a3 = v34 - 8;
          if (v43 == -1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v44 = v54;
          sub_238758640();
          v45 = v55;
          sub_238758640();
          v46 = MEMORY[0x23EE60750](v44, v45);
          v47 = *v53;
          v48 = v45;
          v49 = v56;
          (*v53)(v48, v56);
          v47(v44, v49);

          a3 = v34 - 8;
          if (v46)
          {
LABEL_40:
            a4 = v63;
            v50 = v58;
            if (v34 != v61)
            {
              *a3 = *v58;
            }

            if (v68 <= a4 || (a1 = v50, v50 <= v62))
            {
              a1 = v50;
              goto LABEL_46;
            }

            goto LABEL_30;
          }
        }

        a4 = v63;
        v33 = v58;
        v35 = v59;
        if (v68 != v34)
        {
          *a3 = *v59;
        }

        v68 = v35;
        v34 = a3;
      }

      while (v35 > a4);
      v68 = v35;
      a1 = v61;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v68 = &a4[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v59 = a3;
      v60 = sub_23875ED50();
      v58 = (v8 + 8);
      do
      {
        v61 = a2;
        v62 = a1;
        v17 = *a2;
        v63 = a4;
        v18 = *a4;

        sub_23875ED40();
        sub_23875ECE0();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v66 = sub_2387585B0();
        v67 = v19;
        v64 = sub_2387585B0();
        v65 = v20;
        sub_2384397A8();
        v21 = sub_23875F290();

        if (v21)
        {
          v66 = sub_2387585B0();
          v67 = v22;
          v64 = sub_2387585B0();
          v65 = v23;
          v24 = sub_23875F290();

          if (v24 != -1)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v27 = v54;
          sub_238758640();
          v28 = v55;
          sub_238758640();
          v29 = MEMORY[0x23EE60750](v27, v28);
          v30 = *v58;
          v31 = v28;
          v32 = v56;
          (*v58)(v31, v56);
          v30(v27, v32);

          if ((v29 & 1) == 0)
          {
LABEL_16:
            v25 = v62;
            v26 = v63;
            a4 = v63 + 8;
            a2 = v61;
            if (v62 == v63)
            {
              goto LABEL_18;
            }

LABEL_17:
            *v25 = *v26;
            goto LABEL_18;
          }
        }

        v25 = v62;
        v26 = v61;
        a2 = v61 + 8;
        a4 = v63;
        if (v62 != v61)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v25 + 8;
      }

      while (a4 < v68 && a2 < v59);
    }
  }

LABEL_46:
  if (a1 != a4 || a1 >= &a4[(v68 - a4 + (v68 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v68 - a4) / 8));
  }

  return 1;
}

unint64_t sub_2384D2708()
{
  result = qword_27DF0C0D8;
  if (!qword_27DF0C0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C088, &qword_238769E38);
    sub_2384D2794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C0D8);
  }

  return result;
}

unint64_t sub_2384D2794()
{
  result = qword_27DF0C0E0;
  if (!qword_27DF0C0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0D0, &qword_238769E90);
    sub_2384D284C();
    sub_23843A3E8(&qword_2814F0930, &unk_27DF12F00, &unk_238769090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C0E0);
  }

  return result;
}

unint64_t sub_2384D284C()
{
  result = qword_27DF0C0E8;
  if (!qword_27DF0C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C0C8, &qword_238769E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C080, &qword_238769E30);
    sub_23875CFD0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C078, &qword_238769E28);
    sub_23875C850();
    sub_23843A3E8(&qword_27DF0C0B0, &qword_27DF0C078, &qword_238769E28);
    sub_2384D0C70(&qword_27DF0C0B8, MEMORY[0x277CDD9E0]);
    swift_getOpaqueTypeConformance2();
    sub_2384D0C70(&qword_27DF0C0C0, MEMORY[0x277CDDEE0]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0C0F0, &qword_27DF0C0F8, &unk_238779B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C0E8);
  }

  return result;
}

uint64_t sub_2384D2A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384D2AC0()
{
  result = qword_27DF0C120;
  if (!qword_27DF0C120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C110, qword_238769ED0);
    sub_23843A3E8(&qword_27DF0C128, &qword_27DF0C130, &unk_238779BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C120);
  }

  return result;
}

uint64_t sub_2384D2BA4(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 40))(a2, a1, started);
  return a2;
}

uint64_t sub_2384D2C08(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 24))(a2, a1, started);
  return a2;
}

uint64_t sub_2384D2CAC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  v5 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v64 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - v8;
  v10 = sub_238758680();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v66 = v2;
    v76 = MEMORY[0x277D84F90];
    v51 = v17;
    sub_23875F4E0();
    v19 = -1 << *(a1 + 32);
    v73 = a1 + 56;
    v20 = sub_23875F320();
    v74 = *(a1 + 36);
    v57 = sub_23875ED50();
    v56 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel___observationRegistrar;
    v54 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
    v55 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    result = swift_beginAccess();
    v21 = 0;
    v72 = v11 + 2;
    v53 = (v11 + 4);
    v52 = (v11 + 1);
    v50 = a1 + 64;
    v61 = a1;
    v62 = a2;
    v59 = v11;
    v60 = v10;
    v58 = v16;
    while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(a1 + 32))
    {
      if ((*(v73 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
      {
        goto LABEL_29;
      }

      if (v74 != *(a1 + 36))
      {
        goto LABEL_30;
      }

      v68 = 1 << v20;
      v69 = v20 >> 6;
      v67 = v21;
      v23 = *(a1 + 48) + v11[9] * v20;
      v70 = v11[2];
      v70(v16, v23, v10);
      v71 = sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      swift_getKeyPath();
      v24 = v62;
      v75 = v62;
      sub_2384D0C70(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);
      sub_23875BE90();

      sub_2384D2A50(v24 + v55, v9, type metadata accessor for SharingStartDate);
      swift_getKeyPath();
      v75 = v24;
      sub_23875BE90();

      v25 = *(v24 + v54);
      v26 = type metadata accessor for SharingStartDateModel(0);
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      v29 = swift_allocObject();
      if (qword_27DF08CE8 != -1)
      {
        swift_once();
      }

      v30 = __swift_project_value_buffer(started, qword_27DF2F6C0);
      sub_2384D2A50(v30, v29 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate, type metadata accessor for SharingStartDate);
      v31 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected;
      *(v29 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected) = 1;
      sub_23875BEC0();
      v32 = v9;
      v33 = v9;
      v34 = v64;
      sub_2384D2A50(v32, v64, type metadata accessor for SharingStartDate);
      sub_2384C9E84(v34);
      if (v25 == *(v29 + v31))
      {
        sub_2384AA698(v33, type metadata accessor for SharingStartDate);
        *(v29 + v31) = v25;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v50 - 2) = v29;
        *(&v50 - 8) = v25;
        v75 = v29;
        v36 = v66;
        sub_23875BE80();
        v66 = v36;

        sub_2384AA698(v33, type metadata accessor for SharingStartDate);
      }

      v9 = v33;
      v37 = v63;
      v16 = v58;
      v10 = v60;
      v70(v63, v58, v60);
      v38 = type metadata accessor for AccountStartDateModel();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      v41 = swift_allocObject();
      sub_23875BEC0();
      *(v41 + 16) = v29;
      (*v53)(v41 + OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account, v37, v10);

      (*v52)(v16, v10);
      sub_23875F4C0();
      v42 = *(v76 + 16);
      sub_23875F4F0();
      sub_23875F500();
      result = sub_23875F4D0();
      a1 = v61;
      v22 = 1 << *(v61 + 32);
      v11 = v59;
      if (v20 >= v22)
      {
        goto LABEL_31;
      }

      v43 = *(v73 + 8 * v69);
      if ((v43 & v68) == 0)
      {
        goto LABEL_32;
      }

      if (v74 != *(v61 + 36))
      {
        goto LABEL_33;
      }

      v44 = v43 & (-2 << (v20 & 0x3F));
      if (v44)
      {
        v22 = __clz(__rbit64(v44)) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v45 = v69 << 6;
        v46 = v69 + 1;
        v47 = (v50 + 8 * v69);
        while (v46 < (v22 + 63) >> 6)
        {
          v49 = *v47++;
          v48 = v49;
          v45 += 64;
          ++v46;
          if (v49)
          {
            result = sub_238434834(v20, v74, 0);
            v22 = __clz(__rbit64(v48)) + v45;
            goto LABEL_25;
          }
        }

        result = sub_238434834(v20, v74, 0);
LABEL_25:
        v9 = v33;
      }

      v21 = v67 + 1;
      v20 = v22;
      if (v67 + 1 == v51)
      {
        return v76;
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
  }

  return result;
}

double sub_2384D3458@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_2384CBE10(a1).n128_u64[0];
  return result;
}

unint64_t sub_2384D3460()
{
  result = qword_27DF0C1E8;
  if (!qword_27DF0C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C1E0, &qword_23877EA30);
    sub_2384D34EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C1E8);
  }

  return result;
}

unint64_t sub_2384D34EC()
{
  result = qword_27DF0C1F0;
  if (!qword_27DF0C1F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C1F8, &unk_238769FD0);
    sub_2384D3578();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C1F0);
  }

  return result;
}

unint64_t sub_2384D3578()
{
  result = qword_27DF0C200;
  if (!qword_27DF0C200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C208, &qword_23876AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C200);
  }

  return result;
}

unint64_t sub_2384D35FC()
{
  result = qword_27DF0C210;
  if (!qword_27DF0C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C210);
  }

  return result;
}

uint64_t objectdestroy_63Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t sub_2384D36D4()
{
  result = qword_27DF0C248;
  if (!qword_27DF0C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0BFD0, &qword_238769D50);
    sub_2384D378C();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0C248);
  }

  return result;
}