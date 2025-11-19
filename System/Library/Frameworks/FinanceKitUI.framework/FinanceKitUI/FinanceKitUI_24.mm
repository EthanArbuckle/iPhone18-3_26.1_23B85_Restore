uint64_t sub_2386B388C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

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

  v38 = v11;
  v39 = v13;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_23875BCC0();
  v21 = sub_238758080();
  v23 = v22;
  (*(v32 + 8))(v5, v33);
  v38 = v21;
  v39 = v23;
  v24 = sub_23875DAA0();
  v26 = v25;
  v27 = v18 & 1;
  LOBYTE(v38) = v18 & 1;
  v37 = v18 & 1;
  v36 = 1;
  v29 = v28 & 1;
  v35 = v28 & 1;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v27;
  *(a1 + 24) = v20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v24;
  *(a1 + 56) = v25;
  *(a1 + 64) = v28 & 1;
  *(a1 + 72) = v30;
  sub_23843980C(v14, v16, v27);

  sub_23843980C(v24, v26, v29);

  sub_2384397FC(v24, v26, v29);

  sub_2384397FC(v14, v16, v38);
}

uint64_t sub_2386B3BAC@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t)@<X2>, uint64_t a3@<X8>)
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

uint64_t sub_2386B3D70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

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

  v37 = v11;
  v38 = v13;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_23875BCC0();
  v21 = sub_238758080();
  v23 = v22;
  (*(v33 + 8))(v5, v34);
  v37 = v21;
  v38 = v23;
  v24 = sub_23875DAA0();
  v26 = v25;
  v27 = v18 & 1;
  v36 = v18 & 1;
  LOBYTE(v37) = v18 & 1;
  v29 = v28 & 1;
  v39 = v28 & 1;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v27;
  *(a1 + 24) = v20;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v28 & 1;
  *(a1 + 56) = v30;
  sub_23843980C(v14, v16, v27);

  sub_23843980C(v24, v26, v29);

  sub_2384397FC(v24, v26, v29);

  sub_2384397FC(v14, v16, v36);
}

uint64_t sub_2386B407C()
{
  sub_2386B336C(v0, v2);
  sub_23875D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
  sub_23875DAF0();
  v4[4] = v2[4];
  v4[5] = v2[5];
  v5[0] = v3[0];
  *(v5 + 10) = *(v3 + 10);
  v4[0] = v2[0];
  v4[1] = v2[1];
  v4[2] = v2[2];
  v4[3] = v2[3];
  return sub_238439884(v4, &qword_27DF0B9F8, &qword_238768E50);
}

uint64_t sub_2386B416C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9E8, &unk_238768E40);
  v27 = *(v29 - 8);
  v2 = v27;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D08, &qword_23877EED8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  *v13 = sub_23875CE50();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D10, &qword_23877EEE0);
  sub_2386B44A8(v1, &v13[*(v14 + 44)]);
  sub_2386B4DCC(v1, v32);
  sub_23875D890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B9F8, &qword_238768E50);
  sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
  sub_23875DAF0();
  v34[4] = v32[4];
  v34[5] = v32[5];
  v35[0] = v33[0];
  *(v35 + 10) = *(v33 + 10);
  v34[0] = v32[0];
  v34[1] = v32[1];
  v34[2] = v32[2];
  v34[3] = v32[3];
  sub_238439884(v34, &qword_27DF0B9F8, &qword_238768E50);
  v15 = v31;
  sub_23843981C(v13, v31, &qword_27DF13D08, &qword_23877EED8);
  v16 = *(v2 + 16);
  v17 = v28;
  v18 = v7;
  v19 = v7;
  v20 = v29;
  v16(v28, v18, v29);
  v21 = v15;
  v22 = v30;
  sub_23843981C(v21, v30, &qword_27DF13D08, &qword_23877EED8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D18, &qword_23877EEE8);
  v16((v22 + *(v23 + 48)), v17, v20);
  v24 = *(v27 + 8);
  v24(v19, v20);
  sub_238439884(v13, &qword_27DF13D08, &qword_23877EED8);
  v24(v17, v20);
  return sub_238439884(v31, &qword_27DF13D08, &qword_23877EED8);
}

uint64_t sub_2386B44A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D20, &qword_23877EEF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v10 = sub_23875D030();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D28, &qword_23877EF00);
  sub_2386B4668(a1, &v10[*(v11 + 44)]);
  sub_23843981C(v10, v7, &qword_27DF13D20, &qword_23877EEF8);
  sub_23843981C(v7, a2, &qword_27DF13D20, &qword_23877EEF8);
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D30, &qword_23877EF08) + 48);
  *v12 = 0;
  *(v12 + 8) = 0;
  sub_238439884(v10, &qword_27DF13D20, &qword_23877EEF8);
  sub_238439884(v7, &qword_27DF13D20, &qword_23877EEF8);
}

uint64_t sub_2386B4668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D38, &qword_23877EF10);
  v47 = *(v4 - 8);
  v48 = v4;
  v5 = *(v47 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = (&v45 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D40, &unk_23877EF18);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  sub_23875ED50();
  v49 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2387632F0;
  v14 = sub_2386A22B8();
  v45 = a1;
  v16 = v15;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_238448C58();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  sub_23875EA80();
  v22 = sub_23875EAA0();
  v24 = v23;

  v52 = v22;
  v53 = v24;
  sub_2384397A8();
  v25 = sub_23875DAA0();
  v27 = v26;
  LOBYTE(v20) = v28;
  sub_23875D890();
  v29 = sub_23875D9E0();
  v31 = v30;
  v46 = v32;
  v34 = v33;
  sub_2384397FC(v25, v27, v20 & 1);

  v35 = *(v45 + *(type metadata accessor for OrderPaymentStatusView(0) + 20));
  if (*(v35 + 16))
  {
    v45 = a2;
    v36 = sub_23875D030();
    v37 = v51;
    *v51 = v36;
    v37[1] = 0x4000000000000000;
    *(v37 + 16) = 0;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D48, &unk_23877EF28) + 44);
    v52 = v35;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09550, &qword_2387638E0);
    sub_23843A3E8(&qword_27DF13D50, &qword_27DF09550, &qword_2387638E0);
    v39 = v51;
    sub_23875E370();

    sub_2384396E4(v39, v12, &qword_27DF13D38, &qword_23877EF10);
    v40 = 0;
    a2 = v45;
  }

  else
  {
    v40 = 1;
  }

  (*(v47 + 56))(v12, v40, 1, v48);
  v41 = v50;
  sub_23843981C(v12, v50, &qword_27DF13D40, &unk_23877EF18);
  *a2 = v29;
  *(a2 + 8) = v31;
  v42 = v46 & 1;
  *(a2 + 16) = v46 & 1;
  *(a2 + 24) = v34;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13D58, &qword_23877EF58);
  sub_23843981C(v41, a2 + *(v43 + 48), &qword_27DF13D40, &unk_23877EF18);
  sub_23843980C(v29, v31, v42);

  sub_238439884(v12, &qword_27DF13D40, &unk_23877EF18);
  sub_238439884(v41, &qword_27DF13D40, &unk_23877EF18);
  sub_2384397FC(v29, v31, v42);
}

uint64_t sub_2386B4C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384397A8();

  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875D7F0();
  v10 = sub_23875DA60();
  v12 = v11;
  v14 = v13;

  sub_2384397FC(v5, v7, v9 & 1);

  sub_23875D440();
  v15 = sub_23875DA20();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_2384397FC(v10, v12, v14 & 1);

  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

double sub_2386B4DCC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v3 = sub_23875C880();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  sub_23875ED50();
  v20 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1 + *(type metadata accessor for OrderPaymentStatusView(0) + 28);
  sub_2384D5138(v10);
  (*(v4 + 104))(v7, *MEMORY[0x277CDF9F0], v3);
  sub_2386B5C9C(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v11) = sub_23875E9C0();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v10, v3);
  if (v11)
  {
    v13 = sub_23875CE50();
    LOBYTE(v23) = 0;
    sub_2386B52EC(&v47);
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
    sub_2386B3BAC(a1, sub_2386B5618, &v47);
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

uint64_t sub_2386B52EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

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

  v38 = v11;
  v39 = v13;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LODWORD(v10) = *(type metadata accessor for OrderPaymentStatusView(0) + 24);
  sub_23875BCC0();
  v21 = sub_238758080();
  v23 = v22;
  (*(v32 + 8))(v5, v33);
  v38 = v21;
  v39 = v23;
  v24 = sub_23875DAA0();
  v26 = v25;
  v27 = v18 & 1;
  LOBYTE(v38) = v18 & 1;
  v37 = v18 & 1;
  v36 = 1;
  v29 = v28 & 1;
  v35 = v28 & 1;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v27;
  *(a1 + 24) = v20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v24;
  *(a1 + 56) = v25;
  *(a1 + 64) = v28 & 1;
  *(a1 + 72) = v30;
  sub_23843980C(v14, v16, v27);

  sub_23843980C(v24, v26, v29);

  sub_2384397FC(v24, v26, v29);

  sub_2384397FC(v14, v16, v38);
}

uint64_t sub_2386B5618@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875BD20();
  v33 = *(v2 - 8);
  v34 = v2;
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

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

  v37 = v11;
  v38 = v13;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  LODWORD(v10) = *(type metadata accessor for OrderPaymentStatusView(0) + 24);
  sub_23875BCC0();
  v21 = sub_238758080();
  v23 = v22;
  (*(v33 + 8))(v5, v34);
  v37 = v21;
  v38 = v23;
  v24 = sub_23875DAA0();
  v26 = v25;
  v27 = v18 & 1;
  v36 = v18 & 1;
  LOBYTE(v37) = v18 & 1;
  v29 = v28 & 1;
  v39 = v28 & 1;
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v27;
  *(a1 + 24) = v20;
  *(a1 + 32) = v24;
  *(a1 + 40) = v25;
  *(a1 + 48) = v28 & 1;
  *(a1 + 56) = v30;
  sub_23843980C(v14, v16, v27);

  sub_23843980C(v24, v26, v29);

  sub_2384397FC(v24, v26, v29);

  sub_2384397FC(v14, v16, v36);
}

uint64_t sub_2386B5934@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CC30();
  *a1 = result;
  return result;
}

uint64_t sub_2386B5960(uint64_t *a1)
{
  v1 = *a1;

  return sub_23875CC40();
}

uint64_t sub_2386B598C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386B59F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13BE8, &unk_23877EAC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2386B5A8C()
{
  result = qword_27DF13C10;
  if (!qword_27DF13C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13BF8, &qword_23877EAE0);
    sub_23843A3E8(&qword_27DF13C18, &qword_27DF13C20, &unk_23877EAF0);
    sub_23843A3E8(&qword_27DF0C528, &qword_27DF0C530, &qword_2387704A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13C10);
  }

  return result;
}

uint64_t sub_2386B5B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2386B5BD8()
{
  v1 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2386AF6BC(v2);
}

uint64_t sub_2386B5C9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2386B5D28()
{
  sub_23875BC40();
  if (v0 <= 0x3F)
  {
    sub_23875AF90();
    if (v1 <= 0x3F)
    {
      sub_2386B5F4C(319, &qword_27DF13C50, MEMORY[0x277CC8580], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2386B5F4C(319, &qword_27DF13C58, type metadata accessor for OrderPaymentSummaryItemView.ViewModel, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          sub_238758090();
          if (v4 <= 0x3F)
          {
            sub_2386B5F4C(319, &qword_27DF13C60, MEMORY[0x277CC74C8], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2386B5FB0();
              if (v6 <= 0x3F)
              {
                sub_2386B5F4C(319, &qword_27DF13C68, MEMORY[0x277CC8510], MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_2386B5F4C(319, &qword_27DF13C70, MEMORY[0x277CC85A8], MEMORY[0x277D83D88]);
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
  }
}

void sub_2386B5F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2386B5FB0()
{
  if (!qword_2814F08B0)
  {
    v0 = sub_23875ECC0();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F08B0);
    }
  }
}

uint64_t sub_2386B6028()
{
  result = type metadata accessor for OrderPaymentViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2386B611C()
{
  result = sub_238758090();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2386B6198()
{
  result = qword_27DF13CA8;
  if (!qword_27DF13CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13C28, &qword_23877EB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13BF8, &qword_23877EAE0);
    sub_23875D310();
    sub_2386B5A8C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13CA8);
  }

  return result;
}

unint64_t sub_2386B6280()
{
  result = qword_27DF13CB0;
  if (!qword_27DF13CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13CB8, &qword_23877ED08);
    sub_2386B79C8(&qword_27DF0BA00, &qword_27DF0B9F8, &qword_238768E50, sub_2384BE7C0);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13CB0);
  }

  return result;
}

void sub_2386B63AC()
{
  sub_238758D30();
  if (v0 <= 0x3F)
  {
    sub_2386B5FB0();
    if (v1 <= 0x3F)
    {
      sub_238758090();
      if (v2 <= 0x3F)
      {
        sub_2386B5F4C(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, v9);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + *(a4 + 20);

    return v14(v15, a2, a2, v13);
  }
}

void sub_2386B675C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_2386B5F4C(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2386B685C()
{
  result = sub_23875BC40();
  if (v1 <= 0x3F)
  {
    result = sub_238758090();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2386B6A74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF13E30, &qword_23877F108);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23843981C(a1, &v6 - v4, &qword_27DF13E30, &qword_23877F108);
  return sub_23875CCE0();
}

unint64_t sub_2386B6B1C()
{
  result = qword_27DF13E48;
  if (!qword_27DF13E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13E40, &qword_23877F178);
    sub_23843A3E8(&qword_27DF0F070, &qword_27DF0BA70, &unk_238769590);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13E48);
  }

  return result;
}

unint64_t sub_2386B6C08()
{
  result = qword_27DF13EC8;
  if (!qword_27DF13EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13EC8);
  }

  return result;
}

uint64_t sub_2386B6C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2386ADEA0(a1, v2 + v6, v7, a2);
}

unint64_t sub_2386B6D24()
{
  result = qword_27DF13EF0;
  if (!qword_27DF13EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13EE0, &qword_23877F240);
    sub_2386B6DDC();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13EF0);
  }

  return result;
}

unint64_t sub_2386B6DDC()
{
  result = qword_27DF13EF8;
  if (!qword_27DF13EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F00, &qword_23877F248);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F08, &qword_23877F250);
    sub_2386B6ED0();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13EF8);
  }

  return result;
}

unint64_t sub_2386B6ED0()
{
  result = qword_27DF13F10;
  if (!qword_27DF13F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F08, &qword_23877F250);
    sub_2386B6FF4(&qword_27DF13F18, &qword_27DF13F20, &unk_23877F258, sub_2386B7070);
    sub_2386B71F8(&qword_27DF13F30, &qword_27DF13F38, &qword_23877F268, sub_2386B712C);
    sub_2386B6FF4(&qword_27DF13EC0, &qword_27DF13EA8, &qword_23877F208, sub_2386B6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F10);
  }

  return result;
}

uint64_t sub_2386B6FF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2386B7070()
{
  result = qword_27DF13F28;
  if (!qword_27DF13F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13E70, &qword_23877F1D0);
    sub_2386B5C9C(&qword_27DF13EB0, type metadata accessor for OrderPaymentHeaderView);
    sub_2384BF528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F28);
  }

  return result;
}

unint64_t sub_2386B712C()
{
  result = qword_27DF13F40;
  if (!qword_27DF13F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F48, &qword_23877F270);
    sub_2386B5C9C(&qword_27DF13F50, type metadata accessor for OrderPaymentTransactionRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F40);
  }

  return result;
}

uint64_t sub_2386B71F8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2386B727C()
{
  result = qword_27DF13F78;
  if (!qword_27DF13F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13F80, &qword_23877F2C0);
    sub_2386B5C9C(&qword_27DF13F88, type metadata accessor for OrderPaymentStatusView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F78);
  }

  return result;
}

unint64_t sub_2386B7338()
{
  result = qword_27DF13F90;
  if (!qword_27DF13F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13E78, &qword_23877F1D8);
    sub_2386B7070();
    sub_2386B71F8(&qword_27DF13F70, &qword_27DF13F68, &qword_23877F2B8, sub_2386B727C);
    sub_2386B6FF4(&qword_27DF13EC0, &qword_27DF13EA8, &qword_23877F208, sub_2386B6C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13F90);
  }

  return result;
}

uint64_t sub_2386B7430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_29()
{
  v1 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for OrderPaymentViewModel(0);
  v8 = v7[5];
  v9 = sub_23875AF90();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = *(v0 + v3 + v7[6] + 8);

  v11 = *(v0 + v3 + v7[7]);

  v12 = *(v0 + v3 + v7[8]);

  v13 = v7[9];
  v14 = sub_238758090();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);
  v15 = v7[10];
  v16 = sub_238758D30();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v0 + v3 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = *(v5 + v7[11]);

  v19 = *(v5 + v7[12]);

  v20 = v7[13];
  v21 = sub_23875B290();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v5 + v20, 1, v21))
  {
    (*(v22 + 8))(v5 + v20, v21);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386B772C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OrderPaymentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2386AD804(a1, v6, a2);
}

uint64_t sub_2386B77C8(char *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return v6(v7, &a1[*(v8 + 48)]);
}

unint64_t sub_2386B7828()
{
  result = qword_27DF13FE8;
  if (!qword_27DF13FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13FF0, &qword_23877F338);
    sub_2386B5C9C(&qword_27DF13FF8, type metadata accessor for OrderPaymentLineItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF13FE8);
  }

  return result;
}

unint64_t sub_2386B78E4()
{
  result = qword_27DF14050;
  if (!qword_27DF14050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13D60, &qword_23877EF60);
    sub_2386B79C8(&qword_27DF14058, &qword_27DF14060, &qword_23877F390, sub_2386B7A44);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14050);
  }

  return result;
}

uint64_t sub_2386B79C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2386B7A44()
{
  result = qword_27DF14068;
  if (!qword_27DF14068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF13D80, &qword_23877EF80);
    sub_23843A3E8(&qword_27DF13D90, &qword_27DF13D78, &qword_23877EF78);
    sub_23843A3E8(&qword_27DF13D98, &qword_27DF13D68, &qword_23877EF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14068);
  }

  return result;
}

uint64_t sub_2386B7B2C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_2385FEFE4(0, v2, 0);
    v31 = v32;
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    v6 = sub_23875F320();
    v7 = *(v1 + 36);
    result = sub_23875ED50();
    v29 = v1;
    v8 = 0;
    v25 = v1 + 72;
    v26 = v2;
    v27 = v7;
    v28 = v1 + 64;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_25;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_26;
      }

      v11 = (*(v1 + 48) + 16 * v6);
      v12 = v11[1];
      v30 = *v11;
      v13 = *(*(v1 + 56) + 8 * v6);

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = v31;
      v16 = *(v31 + 16);
      v15 = *(v31 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2385FEFE4((v15 > 1), v16 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v16 + 1;
      v17 = (v14 + 24 * v16);
      v1 = v29;
      v17[4] = v30;
      v17[5] = v12;
      v17[6] = v13;
      v9 = 1 << *(v29 + 32);
      if (v6 >= v9)
      {
        goto LABEL_27;
      }

      v4 = v28;
      v18 = *(v28 + 8 * v10);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      v31 = v14;
      LODWORD(v7) = v27;
      if (v27 != *(v29 + 36))
      {
        goto LABEL_29;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v10 << 6;
        v21 = v10 + 1;
        v22 = (v25 + 8 * v10);
        while (v21 < (v9 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_238434834(v6, v27, 0);
            v9 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_238434834(v6, v27, 0);
      }

LABEL_4:
      ++v8;
      v6 = v9;
      if (v8 == v26)
      {
        return v31;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

_OWORD *BankConnectReconfirmationView.init(showDeniedAccounts:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for BankConnectReconfirmationView(0);
  v5 = a2 + *(v4 + 20);
  v21 = 0;
  sub_23875E1A0();
  v6 = *(&v17 + 1);
  *v5 = v17;
  *(v5 + 1) = v6;
  sub_238758890();
  v7 = sub_238758880();
  v8 = sub_238758CC0();
  v9 = sub_238758CB0();
  v19 = MEMORY[0x277CC7468];
  v20 = MEMORY[0x277CC7460];
  v18 = v8;
  *&v17 = v9;
  v10 = type metadata accessor for BankConnectReconfirmationViewModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  v15 = sub_23875A6C0();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  sub_23875BEC0();
  *(v13 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_showDeniedAccounts) = a1;
  *(v13 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_coreDataProvider) = v7;
  result = sub_2385169F0(&v17, (v13 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService));
  *(a2 + *(v4 + 24)) = v13;
  return result;
}

uint64_t BankConnectInstitutionListView.BankConnectInstitutionListItemView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v3;
  v18 = *(v1 + 32);
  *a1 = sub_23875CE60();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14090, &qword_23877F3F8);
  sub_2386B812C(v17, (a1 + *(v4 + 44)));
  v5 = sub_23875D780();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14098, &qword_23877F400) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v15 = sub_23875E2D0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140A0, &qword_23877F408);
  *(a1 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_2386B812C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14240, &qword_23877F8D8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *(a1 + 16);
  v35 = *a1;
  v36 = v9;
  v37 = *(a1 + 32);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14230, &qword_23877F8C8);
  MEMORY[0x23EE62DC0](&v31, v10);
  v11 = v31;
  v27 = v31;
  v12 = a1;
  v13 = *(&v31 + 1);
  v25 = *(&v31 + 1);

  KeyPath = swift_getKeyPath();
  v30 = 0;
  *&v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  v15 = v35;
  v16 = v30;
  *v8 = sub_23875D030();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14248, &qword_23877F918);
  sub_2386B8428(v12, &v8[*(v17 + 44)]);
  v18 = v28;
  sub_23843981C(v8, v28, &qword_27DF14240, &qword_23877F8D8);
  *&v31 = v11;
  *(&v31 + 1) = v13;
  LOBYTE(v32) = 4;
  *(&v32 + 1) = 0x3FB999999999999ALL;
  *&v33 = KeyPath;
  BYTE8(v33) = v16;
  v34 = v15;
  v19 = v32;
  v20 = v26;
  *v26 = v31;
  v20[1] = v19;
  v21 = v34;
  v20[2] = v33;
  v20[3] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14250, &qword_23877F920);
  sub_23843981C(v18, v20 + *(v22 + 48), &qword_27DF14240, &qword_23877F8D8);
  v23 = v20 + *(v22 + 64);
  *v23 = 0;
  v23[8] = 1;
  sub_238558A88(&v31, &v35);
  sub_238439884(v8, &qword_27DF14240, &qword_23877F8D8);
  sub_238439884(v18, &qword_27DF14240, &qword_23877F8D8);
  *&v35 = v27;
  *(&v35 + 1) = v25;
  LOBYTE(v36) = 4;
  *(&v36 + 1) = 0x3FB999999999999ALL;
  v37 = KeyPath;
  v38 = v16;
  v39 = v15;
  sub_23858D0F0(&v35);
}

uint64_t sub_2386B8428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14258, &unk_23877F928);
  v39 = *(v41 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_238758680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v38 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(a1 + 16);
  v47 = *a1;
  v48 = v14;
  v49 = *(a1 + 32);
  v15 = *(a1 + 16);
  v44 = *a1;
  v45 = v15;
  v46 = *(a1 + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14230, &qword_23877F8C8);
  MEMORY[0x23EE62DC0](&v42);

  if (*(v43 + 16))
  {
    (*(v10 + 16))(v13, v43 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9);

    v17 = sub_2387585F0();
    v19 = v18;
    (*(v10 + 8))(v13, v9);
  }

  else
  {

    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *&v44 = v17;
  *(&v44 + 1) = v19;
  sub_2384397A8();
  v20 = sub_23875DAA0();
  v22 = v21;
  v36 = v23;
  v37 = v24;
  v44 = v47;
  v45 = v48;
  v46 = v49;
  MEMORY[0x23EE62DC0](&v42, v16);

  v42 = v43;
  v25 = swift_allocObject();
  v26 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v26;
  *(v25 + 48) = *(a1 + 32);
  sub_2386C1B54(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09548, &unk_238765CC0);
  sub_23875BCB0();
  sub_23843A3E8(&qword_27DF0A728, &qword_27DF09548, &unk_238765CC0);
  sub_2386BD564(&qword_27DF14260, MEMORY[0x277CC6F70]);
  v35 = v8;
  sub_23875E380();
  v28 = v39;
  v27 = v40;
  v29 = *(v39 + 16);
  v30 = v41;
  v29(v40, v8, v41);
  *a2 = v20;
  *(a2 + 8) = v22;
  v31 = v36 & 1;
  *(a2 + 16) = v36 & 1;
  *(a2 + 24) = v37;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14268, &qword_23877F938);
  v29((a2 + *(v32 + 48)), v27, v30);
  sub_23843980C(v20, v22, v31);
  v33 = *(v28 + 8);

  v33(v35, v30);
  v33(v27, v30);
  sub_2384397FC(v20, v22, v31);
}

uint64_t sub_2386B88FC@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *a1;
  v23 = a1[1];
  v24 = *(a1 + 4);
  sub_2386B8AAC();
  sub_2384397A8();
  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  sub_23875D440();
  v9 = sub_23875DA20();
  v11 = v10;
  v13 = v12;
  sub_2384397FC(v4, v6, v8 & 1);

  sub_23875D7F0();
  v14 = sub_23875DA60();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_2384397FC(v9, v11, v13 & 1);

  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_2386B8AAC()
{
  v0 = sub_238757FC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238763B60;
  v6 = sub_2387585B0();
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_238448C58();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_2387585C0();
  v11 = sub_238757FB0();
  v13 = v12;
  (*(v1 + 8))(v4, v0);
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = v11;
  *(v5 + 80) = v13;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v14 = qword_2814F1B90;
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = sub_23875EA50();
  v18 = [v14 localizedStringForKey:v15 value:v16 table:v17];

  sub_23875EA80();
  v19 = sub_23875EAA0();

  return v19;
}

uint64_t sub_2386B8CFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v17[0] = *v1;
  v17[1] = v3;
  v18 = *(v1 + 32);
  *a1 = sub_23875CE60();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14090, &qword_23877F3F8);
  sub_2386B812C(v17, (a1 + *(v4 + 44)));
  v5 = sub_23875D780();
  sub_23875C3D0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14098, &qword_23877F400) + 36);
  *v14 = v5;
  *(v14 + 8) = v7;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v15 = sub_23875E2D0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140A0, &qword_23877F408);
  *(a1 + *(result + 36)) = v15;
  return result;
}

uint64_t BankConnectInstitutionListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = sub_23875D200();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140A8, &qword_23877F410);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - v10;
  v12 = v1[1];
  v16 = *v1;
  v17[0] = v12;
  *(v17 + 9) = *(v1 + 25);
  sub_23875D760();
  v15[4] = &v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140B0, &qword_23877F418);
  sub_23843A3E8(&qword_27DF140B8, &qword_27DF140B0, &qword_23877F418);
  sub_23875C410();
  sub_23875D1F0();
  v13 = sub_23875D760();
  sub_23875D750();
  sub_23875D750();
  if (sub_23875D750() != v13)
  {
    sub_23875D750();
  }

  sub_23843A3E8(&qword_27DF140C0, &qword_27DF140A8, &qword_23877F410);
  sub_23875DD90();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2386B90D0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141A0, &qword_23877F7F0);
  v3 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v6;
  v7 = type metadata accessor for ContinuousGroupBoxStyle();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141A8, &qword_23877F7F8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B0, &qword_23877F800);
  v16 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  sub_23875ED50();
  v44 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v42 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141B8, &qword_23877F808);
  sub_2386C1754();
  sub_23875E470();
  *v10 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v7 + 20)) = 0x403A000000000000;
  sub_23843A3E8(&qword_27DF141D8, &qword_27DF141A8, &qword_23877F7F8);
  sub_2386BD564(&qword_27DF094E8, type metadata accessor for ContinuousGroupBoxStyle);
  sub_23875DC00();
  sub_238475660(v10);
  (*(v12 + 8))(v15, v11);
  v22 = sub_23875D770();
  sub_23875C3D0();
  v23 = &v20[*(v43 + 36)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = swift_allocObject();
  v29 = a1[1];
  v28[1] = *a1;
  v28[2] = v29;
  *(v28 + 41) = *(a1 + 25);
  MEMORY[0x28223BE20](v28);
  *(&v42 - 2) = a1;
  sub_2386C1814(a1, v50);
  v30 = v47;
  sub_23875E200();
  v31 = sub_23875D7D0();
  sub_23875C3D0();
  v32 = v45;
  v33 = v30 + *(v46 + 36);
  *v33 = v31;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  sub_23842BD2C(v20, v32);
  v38 = v48;
  sub_23843981C(v30, v48, &qword_27DF141A0, &qword_23877F7F0);
  v39 = v49;
  sub_23842BD2C(v32, v49);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E0, &unk_23877F850);
  sub_23843981C(v38, v39 + *(v40 + 48), &qword_27DF141A0, &qword_23877F7F0);
  sub_238439884(v30, &qword_27DF141A0, &qword_23877F7F0);
  sub_23842BD9C(v20);
  sub_238439884(v38, &qword_27DF141A0, &qword_23877F7F0);
  sub_23842BD9C(v32);
}

uint64_t sub_2386B964C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = *a1;
  v10 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  sub_23875E310();
  v2 = v11;
  v3 = v12;
  v4 = v13;
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  *(v6 + 41) = *(a1 + 25);
  sub_2386C1814(a1, &v9);
  sub_2386B9B68(v2, v3, v4, KeyPath, sub_2386C18A4, v6);
}

uint64_t sub_2386B97A0@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09510, &qword_2387637D0);
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09528, &qword_238765CE0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = a1[1];
  v51 = *a1;
  v52 = v17;
  v53 = *(a1 + 4);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14230, &qword_23877F8C8);
  sub_23875E310();
  v19 = v46;
  v45 = v47;
  v43 = v49;
  v41 = v48;
  v42 = v50;
  v20 = a1[1];
  v51 = *a1;
  v52 = v20;
  v53 = *(a1 + 4);
  MEMORY[0x23EE62DC0](&v46, v18);
  v22 = v46;
  v21 = v47;

  v51 = *a2;
  *&v52 = *(a2 + 2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  MEMORY[0x23EE62DC0](&v46, v23);
  v24 = *(v46 + 16);
  if (!v24)
  {

LABEL_9:
    sub_23875E350();
    v32 = sub_23875D780();
    v33 = &v9[*(v6 + 36)];
    *v33 = v32;
    *(v33 + 8) = xmmword_23877F3A0;
    *(v33 + 24) = xmmword_23877F3B0;
    v33[40] = 0;
    sub_2384396E4(v9, v16, &qword_27DF09510, &qword_2387637D0);
    v31 = 0;
    goto LABEL_11;
  }

  v40 = v19;
  v25 = v6;
  v26 = v46 + 24 * v24;
  v28 = *(v26 + 8);
  v27 = *(v26 + 16);

  if (v22 == v28 && v21 == v27)
  {

    v31 = 1;
    v6 = v25;
    v19 = v40;
    goto LABEL_11;
  }

  v30 = sub_23875F630();

  v6 = v25;
  v19 = v40;
  if ((v30 & 1) == 0)
  {
    goto LABEL_9;
  }

  v31 = 1;
LABEL_11:
  (*(v44 + 56))(v16, v31, 1, v6);
  sub_23843981C(v16, v13, &qword_27DF09528, &qword_238765CE0);
  v34 = v45;
  *a3 = v19;
  a3[1] = v34;
  v35 = v42;
  v36 = v43;
  a3[2] = v41;
  a3[3] = v36;
  a3[4] = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14238, &qword_23877F8D0);
  sub_23843981C(v13, a3 + *(v37 + 48), &qword_27DF09528, &qword_238765CE0);

  sub_238439884(v16, &qword_27DF09528, &qword_238765CE0);
  sub_238439884(v13, &qword_27DF09528, &qword_238765CE0);
}

uint64_t sub_2386B9B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  MEMORY[0x23EE62DC0](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_2386C18DC;
  v18[3] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141D0, &qword_23877F810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141F0, &qword_23877F8A8);
  sub_23843A3E8(&qword_27DF141C8, &qword_27DF141D0, &qword_23877F810);
  sub_23843A3E8(&qword_27DF141F8, &qword_27DF141F0, &qword_23877F8A8);
  sub_23843A3E8(&qword_27DF14200, &qword_27DF141F0, &qword_23877F8A8);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2386C1914;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14208, &qword_23877F8B0);
  sub_2386C1978();
  return sub_23875E370();
}

uint64_t sub_2386B9DF0(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  sub_23875E2F0();
}

uint64_t sub_2386B9EC0@<X0>(uint64_t a1@<X8>)
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
  sub_23875D970();
  v11 = sub_23875DA60();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_2384397FC(v7, v9, v4 & 1);

  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v17;
  return result;
}

uint64_t sub_2386BA0CC()
{
  swift_getKeyPath();
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE90();

  v1 = *(v0 + 16);
}

uint64_t sub_2386BA170@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE90();

  *a2 = *(v3 + 16);
}

uint64_t sub_2386BA21C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE80();
}

uint64_t sub_2386BA2E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE90();

  v3 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  return sub_23843981C(v5 + v3, a1, &qword_27DF10038, &qword_238774BF0);
}

uint64_t sub_2386BA3C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE90();

  v4 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  return sub_23843981C(v3 + v4, a2, &qword_27DF10038, &qword_238774BF0);
}

uint64_t sub_2386BA498(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_23843981C(a1, &v10 - v6, &qword_27DF10038, &qword_238774BF0);
  v8 = *a2;
  return sub_2386BA544(v7);
}

uint64_t sub_2386BA544(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  sub_23843981C(v1 + v7, v6, &qword_27DF10038, &qword_238774BF0);
  v8 = sub_2386C0AC8(v6, a1);
  sub_238439884(v6, &qword_27DF10038, &qword_238774BF0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
    sub_23875BE80();
  }

  else
  {
    sub_23843981C(a1, v6, &qword_27DF10038, &qword_238774BF0);
    swift_beginAccess();
    sub_2385D4E00(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_238439884(a1, &qword_27DF10038, &qword_238774BF0);
}

uint64_t sub_2386BA74C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  sub_2386C108C(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_2386BA7B8()
{
  v1[5] = v0;
  v2 = sub_23875C1E0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_23875A9F0();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = sub_238758680();
  v1[12] = v8;
  v9 = *(v8 - 8);
  v1[13] = v9;
  v10 = *(v9 + 64) + 15;
  v1[14] = swift_task_alloc();
  v11 = sub_23875BC40();
  v1[15] = v11;
  v12 = *(v11 - 8);
  v1[16] = v12;
  v13 = *(v12 + 64) + 15;
  v1[17] = swift_task_alloc();
  v14 = sub_23875AAF0();
  v1[18] = v14;
  v15 = *(v14 - 8);
  v1[19] = v15;
  v16 = *(v15 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = sub_23875ED50();
  v1[22] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v1[23] = v18;
  v1[24] = v17;

  return MEMORY[0x2822009F8](sub_2386BAA20, v18, v17);
}

uint64_t sub_2386BAA20()
{
  v68 = v0;
  v1 = v0[20];
  v2 = v0[5];
  sub_23875AAE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14160, &qword_23877F750);
  v3 = sub_23875A8C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v7 + v6, *MEMORY[0x277CC8000], v3);
  v9(v8 + v5, *MEMORY[0x277CC8008], v3);
  v9(v8 + 2 * v5, *MEMORY[0x277CC8010], v3);
  if (*(v2 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_showDeniedAccounts) == 1)
  {
    sub_23875A8D0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14168, &qword_23877F758);
    v10 = sub_23875A8E0();
    v11 = *(v10 - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_238763B60;
    v15 = v14 + v13;
    v16 = *(v11 + 104);
    v16(v14 + v13, *MEMORY[0x277CC8020], v10);
    v16(v15 + v12, *MEMORY[0x277CC8028], v10);
  }

  v17 = v0[20];
  v18 = v0[17];
  v0[2] = *(v0[5] + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_coreDataProvider);
  sub_238758890();
  v19 = sub_238758A30();
  sub_23875BBF0();
  v20 = MEMORY[0x277D84F90];
  v21 = sub_23875AAD0();
  (*(v0[16] + 8))(v0[17], v0[15]);

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = v0[13];
    v24 = v0[10];
    v67 = v20;
    sub_2385FF024(0, v22, 0);
    v25 = v20;
    v26 = *(v23 + 16);
    v23 += 16;
    v63 = v26;
    v62 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v27 = v21 + v62;
    v60 = (v23 + 16);
    v64 = v0;
    v61 = *(v23 + 56);
    do
    {
      v66 = v25;
      v28 = v0[21];
      v63(v0[14], v27, v0[12]);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v29 = v0[14];
      v31 = v0[11];
      v30 = v0[12];
      v32 = v0[9];
      sub_238758530();
      v33 = sub_23875A9B0();
      v65 = v34;
      (*(v24 + 8))(v31, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF38, &unk_238767550);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_2387632F0;
      (*v60)(v35 + v62, v29, v30);

      v25 = v66;
      v67 = v66;
      v37 = *(v66 + 16);
      v36 = *(v66 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2385FF024((v36 > 1), v37 + 1, 1);
        v25 = v67;
      }

      *(v25 + 16) = v37 + 1;
      v38 = (v25 + 24 * v37);
      v0 = v64;
      v38[4] = v33;
      v38[5] = v65;
      v38[6] = v35;
      v27 += v61;
      --v22;
    }

    while (v22);

    if (*(v25 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDE8, &qword_23876E7F0);
      v46 = sub_23875F570();
      goto LABEL_19;
    }
  }

  v46 = MEMORY[0x277D84F98];
LABEL_19:
  v67 = v46;
  sub_2386C0DE8(v25, 1, &v67);
  v47 = v0[5];

  v48 = sub_2386B7B2C(v67);

  swift_getKeyPath();
  v49 = swift_task_alloc();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  v0[3] = v47;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE80();

  swift_getKeyPath();
  v0[4] = v47;
  sub_23875BE90();

  v50 = *(v47 + 16);
  if (v50[2])
  {
    v51 = v50[4];
    v52 = v50[5];
    v0[25] = v52;
    v0[26] = v50[6];

    v53 = swift_task_alloc();
    v0[27] = v53;
    *v53 = v0;
    v53[1] = sub_2386BB38C;
    v54 = v0[5];

    return sub_2386BB5AC(v51, v52);
  }

  else
  {
    v55 = v0[22];
    v56 = v0[20];
    v57 = v0[18];
    v58 = *(v0[19] + 8);
    v59 = *(v47 + 16);

    v58(v56, v57);

    v39 = v0[20];
    v40 = v0[17];
    v41 = v0[14];
    v42 = v0[11];
    v43 = v0[8];

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_2386BB38C()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v8 = *v0;

  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return MEMORY[0x2822009F8](sub_2386BB4EC, v6, v5);
}

uint64_t sub_2386BB4EC()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];

  (*(v3 + 8))(v2, v4);
  v5 = v0[20];
  v6 = v0[17];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2386BB5AC(uint64_t a1, uint64_t a2)
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
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  sub_23875ED50();
  v3[9] = sub_23875ED40();
  v9 = sub_23875ECE0();
  v3[10] = v9;
  v3[11] = v8;

  return MEMORY[0x2822009F8](sub_2386BB6DC, v9, v8);
}

uint64_t sub_2386BB6DC()
{
  v1 = (v0[4] + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService);
  v2 = v1[3];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(MEMORY[0x277CC8288] + 4);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2386BB7AC;
  v6 = v0[8];
  v7 = v0[2];
  v8 = v0[3];

  return MEMORY[0x28211A940](v6, v7, v8, v2, v3);
}

uint64_t sub_2386BB7AC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);
  if (v0)
  {
    v7 = sub_2386BB964;
  }

  else
  {
    v7 = sub_2386BB8E8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2386BB8E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[4];

  sub_2386BA544(v2);
  v5 = v0[7];
  v4 = v0[8];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2386BB964()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[7];

  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to load terms and conditions with error: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);
  v14 = v0[7];
  v13 = v0[8];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2386BBAFC(char a1)
{
  *(v2 + 72) = v1;
  *(v2 + 280) = a1;
  v3 = sub_23875C1E0();
  *(v2 + 80) = v3;
  v4 = *(v3 - 8);
  *(v2 + 88) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 96) = swift_task_alloc();
  v6 = sub_23875BC40();
  *(v2 + 104) = v6;
  v7 = *(v6 - 8);
  *(v2 + 112) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v9 = sub_23875A8E0();
  *(v2 + 128) = v9;
  v10 = *(v9 - 8);
  *(v2 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350) - 8) + 64) + 15;
  *(v2 + 152) = swift_task_alloc();
  v13 = sub_23875A9F0();
  *(v2 + 160) = v13;
  v14 = *(v13 - 8);
  *(v2 + 168) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  *(v2 + 192) = swift_task_alloc();
  v16 = sub_238758680();
  *(v2 + 200) = v16;
  v17 = *(v16 - 8);
  *(v2 + 208) = v17;
  v18 = *(v17 + 64) + 15;
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = sub_23875ED50();
  *(v2 + 232) = sub_23875ED40();
  v20 = sub_23875ECE0();
  *(v2 + 240) = v20;
  *(v2 + 248) = v19;

  return MEMORY[0x2822009F8](sub_2386BBDB8, v20, v19);
}

uint64_t sub_2386BBDB8()
{
  v1 = *(v0 + 72);
  sub_238663374(v1 + OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE90();

  v4 = MEMORY[0x277D84F90];
  v56 = MEMORY[0x277D84F90];
  v5 = *(*(v1 + 16) + 16);

  v47 = v5;
  if (v5)
  {
    v43 = v3;
    v44 = v2;
    v11 = 0;
    v12 = *(v0 + 208);
    v13 = *(v0 + 168);
    v45 = isCurrentExecutor;
    v46 = isCurrentExecutor + 32;
    v14 = (v13 + 32);
    v52 = (v13 + 56);
    v50 = v13;
    v51 = (v13 + 48);
    while (v11 < *(isCurrentExecutor + 16))
    {
      v15 = *(v0 + 224);
      v16 = v46 + 24 * v11;
      v17 = *(v16 + 16);
      v48 = *(v16 + 8);

      sub_23875ED40();
      sub_23875ECE0();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      if ((isCurrentExecutor & 1) == 0)
      {
        isCurrentExecutor = swift_task_reportUnexpectedExecutor();
      }

      v49 = v11;
      v54 = *(v17 + 16);
      if (v54)
      {
        v18 = 0;
        v55 = MEMORY[0x277D84F90];
        v53 = v17;
        while (v18 < *(v17 + 16))
        {
          v19 = *(v0 + 216);
          v20 = *(v0 + 200);
          v21 = v14;
          v22 = *(v0 + 184);
          v23 = *(v0 + 152);
          v24 = *(v0 + 160);
          (*(v12 + 16))(v19, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v20);
          sub_238758530();
          v25 = *v21;
          v26 = v22;
          v14 = v21;
          (*v21)(v23, v26, v24);
          (*v52)(v23, 0, 1, v24);
          (*(v12 + 8))(v19, v20);
          if ((*v51)(v23, 1, v24) == 1)
          {
            isCurrentExecutor = sub_238439884(*(v0 + 152), &qword_27DF0D390, &unk_238763350);
          }

          else
          {
            v27 = *(v0 + 192);
            v28 = *(v0 + 176);
            v29 = *(v0 + 160);
            v25(v27, *(v0 + 152), v29);
            v25(v28, v27, v29);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_238498C90(0, v55[2] + 1, 1, v55);
            }

            v31 = v55[2];
            v30 = v55[3];
            if (v31 >= v30 >> 1)
            {
              v55 = sub_238498C90(v30 > 1, v31 + 1, 1, v55);
            }

            v32 = *(v0 + 176);
            v33 = *(v0 + 160);
            v55[2] = v31 + 1;
            isCurrentExecutor = (v25)(v55 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v31, v32, v33);
          }

          ++v18;
          v17 = v53;
          if (v54 == v18)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

      v55 = MEMORY[0x277D84F90];
LABEL_4:
      v11 = v49 + 1;

      sub_238569B50(v55);
      isCurrentExecutor = v45;
      if (v49 + 1 == v47)
      {
        v4 = v56;
        v3 = v43;
        v2 = v44;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    *(v0 + 256) = v4;
    v35 = *(v0 + 136);
    v34 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    v38 = *(v0 + 280);

    v39 = MEMORY[0x277CC8020];
    if (!v38)
    {
      v39 = MEMORY[0x277CC8018];
    }

    (*(v35 + 104))(v34, *v39, v36);
    sub_23875BBF0();
    v40 = *(MEMORY[0x277CC8368] + 4);
    v41 = swift_task_alloc();
    *(v0 + 264) = v41;
    *v41 = v0;
    v41[1] = sub_2386BC2A4;
    v7 = *(v0 + 144);
    v8 = *(v0 + 120);
    isCurrentExecutor = v4;
    v9 = v2;
    v10 = v3;
  }

  return MEMORY[0x28211AA58](isCurrentExecutor, v7, v8, v9, v10);
}

uint64_t sub_2386BC2A4()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v15 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);
  v8 = *(*v1 + 112);
  v9 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 272) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v15, v6);
  v11 = *(v2 + 248);
  v12 = *(v2 + 240);
  if (v0)
  {
    v13 = sub_2386BC598;
  }

  else
  {
    v13 = sub_2386BC4C4;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_2386BC4C4()
{
  v1 = v0[29];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[15];
  v9 = v0[12];

  v10 = v0[1];

  return v10();
}

uint64_t sub_2386BC598()
{
  v1 = v0[34];
  v2 = v0[29];
  v3 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_23875C120();
  v4 = v1;
  v5 = sub_23875C1B0();
  v6 = sub_23875EFE0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[34];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v5, v6, "Failed to update accounts with error: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[11] + 8))(v0[12], v0[10]);
  v13 = v0[27];
  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[22];
  v18 = v0[18];
  v17 = v0[19];
  v19 = v0[15];
  v20 = v0[12];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2386BC784()
{
  v1 = *(v0 + 2);

  sub_238439884(&v0[OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions], &qword_27DF10038, &qword_238774BF0);
  v2 = *&v0[OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_coreDataProvider];

  __swift_destroy_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel_bankConnectService]);
  v3 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel___observationRegistrar;
  v4 = sub_23875BED0();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2386BC868@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_23843981C(v2, &v17 - v11, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_23875C600();
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

uint64_t BankConnectReconfirmationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v2 = swift_allocBox();
  v3 = *(v1 + *(type metadata accessor for BankConnectReconfirmationView(0) + 24));
  type metadata accessor for BankConnectReconfirmationViewModel(0);
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);

  sub_23875E420();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140D8, &qword_23877F428);
  v51 = *(v4 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E90, &qword_23877F430);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v53 = v1;
  v54 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140E0, &qword_23877F438);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140E8, &qword_23877F440);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140F0, &qword_23877F448);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140F8, &unk_23877F450);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10210, &qword_238775140);
  v15 = sub_23843A3E8(&qword_27DF14100, &qword_27DF140F8, &unk_23877F450);
  v16 = sub_2385D53A8();
  v56 = v13;
  v57 = v14;
  v58 = v15;
  v59 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14108, &qword_23877F460);
  v19 = sub_23843A3E8(&qword_27DF14110, &qword_27DF14108, &qword_23877F460);
  v56 = v18;
  v57 = v19;
  v20 = swift_getOpaqueTypeConformance2();
  v56 = v11;
  v57 = v12;
  v58 = OpaqueTypeConformance2;
  v59 = v20;
  swift_getOpaqueTypeConformance2();
  v47 = v10;
  sub_23875C790();
  sub_23875ED50();

  v21 = sub_23875ED40();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v52 = v2;
  v22[4] = v2;
  v24 = sub_23875ED80();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  v28 = &v41 - v27;
  sub_23875ED60();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v44 = sub_23875C830();
    v45 = &v41;
    v43 = *(v44 - 8);
    v29 = *(v43 + 64);
    MEMORY[0x28223BE20](v44);
    v42 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_23875F470();

    v56 = 0xD00000000000003DLL;
    v57 = 0x8000000238790040;
    v55 = 253;
    v31 = sub_23875F600();
    MEMORY[0x23EE63650](v31);

    v33 = MEMORY[0x28223BE20](v32);
    (*(v25 + 16))(&v41 - v27, &v41 - v27, v24, v33);
    v34 = v42;
    sub_23875C820();
    (*(v25 + 8))(v28, v24);
    v35 = v50;
    (*(v48 + 32))(v50, v47, v49);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E98, &unk_238761D20);
    (*(v43 + 32))(&v35[*(v36 + 36)], v34, v44);
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08EA0, &qword_23877F480);
    v35 = v50;
    v38 = &v50[*(v37 + 36)];
    v39 = sub_23875C6E0();
    (*(v25 + 32))(&v38[*(v39 + 20)], v28, v24);
    *v38 = &unk_23877F470;
    *(v38 + 1) = v22;
    (*(v48 + 32))(v35, v47, v49);
  }

  (*(v51 + 32))(v46, v35, v4);
}

uint64_t sub_2386BD148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140F8, &unk_23877F450);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140E8, &qword_23877F440);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  sub_23875ED50();
  v26[2] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_23875D020();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14180, &qword_23877F790);
  sub_2386BD5AC(a1, a2, &v8[*(v13 + 44)]);
  v14 = a1 + *(type metadata accessor for BankConnectReconfirmationView(0) + 20);
  v15 = *v14;
  v16 = *(v14 + 8);
  v34 = v15;
  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  v18 = sub_23843A3E8(&qword_27DF14100, &qword_27DF140F8, &unk_23877F450);
  v19 = sub_2385D53A8();
  v26[1] = a1;
  v20 = v19;
  sub_23875DED0();

  v21 = sub_238439884(v8, &qword_27DF140F8, &unk_23877F450);
  MEMORY[0x28223BE20](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140F0, &qword_23877F448);
  v30 = v5;
  v31 = v17;
  v32 = v18;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14108, &qword_23877F460);
  v23 = sub_23843A3E8(&qword_27DF14110, &qword_27DF14108, &qword_23877F460);
  v30 = v22;
  v31 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v28;
  sub_23875DEF0();
  (*(v27 + 8))(v12, v24);
}

uint64_t sub_2386BD564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2386BD5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v74 = a2;
  v70 = a3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14188, &unk_23877F798);
  v4 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v71 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  sub_23875ED50();
  v72 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386BDCD0(&v113);
  v92 = v123;
  v93 = v124;
  v94 = v125;
  v88 = v119;
  v89 = v120;
  v90 = v121;
  v91 = v122;
  v84 = v115;
  v85 = v116;
  v86 = v117;
  v87 = v118;
  v82 = v113;
  v83 = v114;
  v80 = sub_23875D770();
  sub_23875C3D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(v95[0]) = 0;
  v79 = sub_23875D7A0();
  sub_23875C3D0();
  v77 = v25;
  v78 = v24;
  v75 = v27;
  v76 = v26;
  v28 = swift_projectBox();
  (*(v9 + 16))(v12, v28, v8);
  sub_23875E410();
  v29 = a1;
  v30 = *(v9 + 8);
  v30(v12, v8);
  swift_getKeyPath();
  sub_23875E430();

  v30(v15, v8);
  v74 = *(&v113 + 1);
  v31 = v113;
  v68 = v114;
  v32 = (v29 + *(type metadata accessor for BankConnectReconfirmationView(0) + 20));
  v33 = *v32;
  v34 = *(v32 + 1);
  LOBYTE(v101) = v33;
  v102 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v67 = *(&v95[0] + 1);
  v73 = *&v95[0];
  v66 = LOBYTE(v95[1]);
  v65 = sub_23875D770();
  v35 = sub_23875C3D0();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v64 = v42;
  LOBYTE(v113) = 0;
  MEMORY[0x28223BE20](v35);
  *(&v63 - 2) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10260, &qword_2387751A0);
  sub_23843A3E8(&qword_27DF10268, &qword_27DF10260, &qword_2387751A0);
  v43 = v81;
  sub_23875D1D0();
  v44 = sub_23875D770();
  sub_23875C3D0();
  v45 = v43 + *(v69 + 36);
  *v45 = v44;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47;
  *(v45 + 24) = v48;
  *(v45 + 32) = v49;
  *(v45 + 40) = 0;
  v50 = v71;
  sub_23843981C(v43, v71, &qword_27DF14188, &unk_23877F798);
  v95[10] = v92;
  v95[11] = v93;
  *&v95[12] = v94;
  v95[6] = v88;
  v95[7] = v89;
  v95[8] = v90;
  v95[9] = v91;
  v95[2] = v84;
  v95[3] = v85;
  v95[4] = v86;
  v95[5] = v87;
  v95[0] = v82;
  v95[1] = v83;
  BYTE8(v95[12]) = v80;
  *&v95[13] = v17;
  *(&v95[13] + 1) = v19;
  *&v95[14] = v21;
  v51 = v23;
  *(&v95[14] + 1) = v23;
  LOBYTE(v95[15]) = 0;
  BYTE8(v95[15]) = v79;
  *&v95[16] = v78;
  *(&v95[16] + 1) = v77;
  *&v95[17] = v76;
  *(&v95[17] + 1) = v75;
  LOBYTE(v95[18]) = 0;
  v52 = v70;
  memcpy(v70, v95, 0x121uLL);
  *&v96 = v31;
  *(&v96 + 1) = v74;
  v54 = v67;
  v53 = v68;
  *&v97 = v68;
  *(&v97 + 1) = v73;
  *&v98 = v67;
  v55 = v65;
  LOBYTE(v30) = v66;
  BYTE8(v98) = v66;
  LOBYTE(v99) = v65;
  *(&v99 + 1) = v37;
  v56 = v39;
  *&v100[0] = v39;
  v57 = v41;
  *(&v100[0] + 1) = v41;
  v58 = v64;
  *&v100[1] = v64;
  BYTE8(v100[1]) = 0;
  v59 = v99;
  *(v52 + 328) = v98;
  *(v52 + 344) = v59;
  *(v52 + 360) = v100[0];
  *(v52 + 369) = *(v100 + 9);
  v60 = v97;
  *(v52 + 296) = v96;
  *(v52 + 312) = v60;
  *(v52 + 49) = 0;
  v52[400] = 1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14190, &qword_23877F7A8);
  sub_23843981C(v50, &v52[*(v61 + 80)], &qword_27DF14188, &unk_23877F798);
  sub_23843981C(v95, &v113, &qword_27DF0B3B8, &qword_23877F7B0);
  sub_23843981C(&v96, &v113, &qword_27DF14198, &unk_23877F7B8);
  sub_238439884(v81, &qword_27DF14188, &unk_23877F798);
  sub_238439884(v50, &qword_27DF14188, &unk_23877F798);
  v101 = v31;
  v102 = v74;
  v103 = v53;
  v104 = v73;
  v105 = v54;
  v106 = v30;
  v107 = v55;
  v108 = v37;
  v109 = v56;
  v110 = v57;
  v111 = v58;
  v112 = 0;
  sub_238439884(&v101, &qword_27DF14198, &unk_23877F7B8);
  v123 = v92;
  v124 = v93;
  v125 = v94;
  v119 = v88;
  v120 = v89;
  v121 = v90;
  v122 = v91;
  v115 = v84;
  v116 = v85;
  v117 = v86;
  v118 = v87;
  v113 = v82;
  v114 = v83;
  v126 = v80;
  v127 = v17;
  v128 = v19;
  v129 = v21;
  v130 = v51;
  v131 = 0;
  v132 = v79;
  v133 = v78;
  v134 = v77;
  v135 = v76;
  v136 = v75;
  v137 = 0;
  sub_238439884(&v113, &qword_27DF0B3B8, &qword_23877F7B0);
}

double sub_2386BDCD0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23875D030();
  v19 = 0;
  sub_2386BF668(&v10);
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24[0] = v10;
  v24[1] = v11;
  v24[2] = v12;
  v24[3] = v13;
  sub_23843981C(&v20, v17, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v24, &qword_27DF0B360, &qword_23877AE40);
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[39] = v22;
  *&v18[55] = v23;
  v3 = v19;
  sub_23875E4B0();
  sub_23875C9C0();
  v4 = *v18;
  *(a1 + 33) = *&v18[16];
  v5 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v5;
  *(a1 + 17) = v4;
  v6 = v12;
  *(a1 + 136) = v13;
  v7 = v15;
  *(a1 + 152) = v14;
  *(a1 + 168) = v7;
  *(a1 + 184) = v16;
  result = *&v10;
  v9 = v11;
  *(a1 + 88) = v10;
  *(a1 + 104) = v9;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 80) = *&v18[63];
  *(a1 + 120) = v6;
  return result;
}

uint64_t sub_2386BDE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10278, &qword_2387751B0);
  sub_2386BDEF4(a1, a2 + *(v4 + 44));
}

uint64_t sub_2386BDEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  v3 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v50 = (&v47 - v6);
  v7 = type metadata accessor for BankConnectReconfirmationView(0);
  v49 = *(v7 - 8);
  v8 = *(v49 + 8);
  MEMORY[0x28223BE20](v7 - 8);
  v56 = v9;
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v53 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v47 - v15);
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

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  v22 = sub_23875EA80();
  v24 = v23;

  sub_2386C1114(a1, v10);
  v48 = a1;
  v25 = v10;
  v26 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v27 = swift_allocObject();
  v49 = type metadata accessor for BankConnectReconfirmationView;
  sub_2386C11E0(v25, v27 + v26, type metadata accessor for BankConnectReconfirmationView);
  v28 = v16 + v11[9];
  sub_23875D610();
  *v16 = v22;
  v16[1] = v24;
  *(v16 + v11[10]) = 0;
  v29 = (v16 + v11[11]);
  *v29 = sub_2386C1380;
  v29[1] = v27;
  v30 = sub_23875EA50();
  v31 = sub_23875EA50();
  v32 = sub_23875EA50();
  v33 = [v17 localizedStringForKey:v30 value:v31 table:v32];

  v34 = sub_23875EA80();
  v36 = v35;

  v37 = v52;
  v38 = v50;
  v39 = v50 + *(v52 + 36);
  sub_23875CFC0();
  sub_2386C1114(v48, v25);
  v40 = swift_allocObject();
  sub_2386C11E0(v25, v40 + v26, v49);
  *v38 = v34;
  v38[1] = v36;
  *(v38 + *(v37 + 40)) = 0;
  v41 = (v38 + *(v37 + 44));
  *v41 = sub_2386C1414;
  v41[1] = v40;
  v42 = v53;
  sub_23843981C(v16, v53, &qword_27DF0AAD8, &qword_23876B8C0);
  v43 = v55;
  sub_23843981C(v38, v55, &qword_27DF09580, &qword_238763900);
  v44 = v54;
  sub_23843981C(v42, v54, &qword_27DF0AAD8, &qword_23876B8C0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10280, &qword_2387751B8);
  sub_23843981C(v43, v44 + *(v45 + 48), &qword_27DF09580, &qword_238763900);
  sub_238439884(v38, &qword_27DF09580, &qword_238763900);
  sub_238439884(v16, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v43, &qword_27DF09580, &qword_238763900);
  sub_238439884(v42, &qword_27DF0AAD8, &qword_23876B8C0);
}

uint64_t sub_2386BE45C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  v1 = *(v31 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10210, &qword_238775140);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v30 - v16;
  sub_23875ED50();
  v30 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v18 = swift_projectBox();
  (*(v10 + 16))(v13, v18, v9);
  sub_23875E400();
  (*(v10 + 8))(v13, v9);
  v19 = v33;
  swift_getKeyPath();
  v33 = v19;
  sub_2386BD564(&qword_27DF140D0, type metadata accessor for BankConnectReconfirmationViewModel);
  sub_23875BE90();

  v20 = OBJC_IVAR____TtC12FinanceKitUI34BankConnectReconfirmationViewModel__termsAndConditions;
  swift_beginAccess();
  sub_23843981C(v19 + v20, v8, &qword_27DF10038, &qword_238774BF0);

  v21 = sub_23875A6C0();
  if ((*(*(v21 - 8) + 48))(v8, 1, v21))
  {
    sub_238439884(v8, &qword_27DF10038, &qword_238774BF0);
    v22 = 1;
    v23 = v31;
  }

  else
  {
    v24 = sub_23875A6B0();
    v26 = v25;
    sub_238439884(v8, &qword_27DF10038, &qword_238774BF0);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = v26;
    *v4 = sub_2386C11D8;
    *(v4 + 1) = v27;
    v4[16] = 0;
    v23 = v31;
    v28 = *(v31 + 20);
    *&v4[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
    swift_storeEnumTagMultiPayload();
    sub_2386C11E0(v4, v17, type metadata accessor for BankConnectTermsAndConditionsWebView);
    v22 = 0;
  }

  (*(v1 + 56))(v17, v22, 1, v23);
  sub_2384396E4(v17, v32, &qword_27DF10210, &qword_238775140);
}

uint64_t sub_2386BE8F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v11 = sub_238758CC0();
  v12 = sub_238758CB0();
  v23 = v11;
  v24 = MEMORY[0x277CC7460];
  *&v22 = v12;
  v13 = type metadata accessor for BankConnectTermsAndConditionsWebViewModel(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v21[7] = 0;
  sub_23875C290();
  v17 = sub_23875B940();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  sub_23843981C(v10, v7, &qword_27DF0D040, &qword_2387676A0);
  sub_23875C290();
  sub_238439884(v10, &qword_27DF0D040, &qword_2387676A0);
  v18 = (v16 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_termsAndConditionsID);
  *v18 = a1;
  v18[1] = a2;
  *(v16 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_isDeclinable) = 0;
  *(v16 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_flowType) = 1;
  sub_2384347C0(&v22, v16 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_bankConnectService);
  v19 = (v16 + OBJC_IVAR____TtC12FinanceKitUI41BankConnectTermsAndConditionsWebViewModel_completionHandler);
  *v19 = nullsub_1;
  v19[1] = 0;

  return v16;
}

uint64_t sub_2386BEB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = sub_23875D2A0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14108, &qword_23877F460);
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

  v10 = sub_23875D250();
  MEMORY[0x28223BE20](v10);
  v13[-2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_23875C4D0();
  v11 = sub_23843A3E8(&qword_27DF14110, &qword_27DF14108, &qword_23877F460);
  MEMORY[0x23EE61E80](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_2386BED84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = type metadata accessor for BankConnectReconfirmationView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
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

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  v11 = sub_23875EA80();
  v13 = v12;

  sub_2386C1114(a1, v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  v16 = sub_2386C11E0(v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for BankConnectReconfirmationView);
  v19[0] = v11;
  v19[1] = v13;
  MEMORY[0x28223BE20](v16);
  v18[-4] = v19;
  v18[-3] = 0x6B72616D78;
  v18[-2] = 0xE500000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();
}

uint64_t sub_2386BF090()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386BC868(v4);
  sub_23875C5F0();
  (*(v1 + 8))(v4, v0);
}

uint64_t sub_2386BF1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF140C8, &qword_23877F420);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  sub_23875ED50();
  v3[7] = sub_23875ED40();
  v8 = sub_23875ECE0();
  v3[8] = v8;
  v3[9] = v7;

  return MEMORY[0x2822009F8](sub_2386BF2D4, v8, v7);
}

uint64_t sub_2386BF2D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_projectBox();
  (*(v2 + 16))(v1, v5, v4);
  sub_23875E400();
  (*(v2 + 8))(v1, v4);
  v0[10] = v0[2];
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_2386BF3C0;

  return sub_2386BA7B8();
}

uint64_t sub_2386BF3C0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2386BF504, v5, v4);
}

uint64_t sub_2386BF504()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2386BF56C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_238449A7C;

  return sub_2386BF1D4(v2, v3, v4);
}

uint64_t sub_2386BF668@<X0>(uint64_t a1@<X8>)
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
  v11 = v10;
  v13 = v12;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v2 localizedStringForKey:v14 value:v15 table:v16];

  sub_23875EA80();
  v18 = sub_23875DAA0();
  v20 = v19;
  LOBYTE(v16) = v21 & 1;
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = v18;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21 & 1;
  *(a1 + 56) = v22;
  sub_23843980C(v7, v9, v11 & 1);

  sub_23843980C(v18, v20, v16);

  sub_2384397FC(v18, v20, v16);

  sub_2384397FC(v7, v9, v11 & 1);
}

uint64_t sub_2386BF954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23875ED50();
  v4[3] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2386BF9EC, v6, v5);
}

uint64_t sub_2386BF9EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for BankConnectReconfirmationView(0) + 24));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_2386BFA90;

  return sub_2386BBAFC(1);
}

uint64_t sub_2386BFA90()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2386BFBB0, v4, v3);
}

uint64_t sub_2386BFBB0()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2386C003C(v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_2386BFC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for BankConnectReconfirmationView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v18 - v10;
  v12 = sub_23875ED80();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2386C1114(a1, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23875ED50();
  v13 = sub_23875ED40();
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v13;
  *(v15 + 24) = v16;
  sub_2386C11E0(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for BankConnectReconfirmationView);
  sub_2386C3BA4(0, 0, v11, a3, v15);
}

uint64_t sub_2386BFDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_23875ED50();
  v4[3] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_2386BFE78, v6, v5);
}

uint64_t sub_2386BFE78()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for BankConnectReconfirmationView(0) + 24));
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_2386BFF1C;

  return sub_2386BBAFC(0);
}

uint64_t sub_2386BFF1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2386C1B8C, v4, v3);
}

uint64_t sub_2386C003C(uint64_t a1)
{
  v19 = sub_23875CDB0();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - v8);
  v10 = sub_23875C600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(a1, v9, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_23875EFF0();
    v16 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_23875C5F0();
  return (*(v11 + 8))(v14, v10);
}

void sub_2386C02F4()
{
  sub_2386C0510(319, &qword_27DF10050, MEMORY[0x277CC7F18], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_23875BED0();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386C0444()
{
  sub_2386C0510(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_2384B49C4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BankConnectReconfirmationViewModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2386C0510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2386C0574()
{
  result = qword_27DF14138;
  if (!qword_27DF14138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF140A0, &qword_23877F408);
    sub_2386C062C();
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14138);
  }

  return result;
}

unint64_t sub_2386C062C()
{
  result = qword_27DF14140;
  if (!qword_27DF14140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14098, &qword_23877F400);
    sub_23843A3E8(&qword_27DF14148, &qword_27DF14150, &unk_23877F6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14140);
  }

  return result;
}

void *sub_2386C06E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  result = MEMORY[0x23EE62DC0](v11, v5);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v11[0] + 16) > a1)
  {
    v7 = (v11[0] + 24 * a1);
    v9 = v7[4];
    v8 = v7[5];
    v10 = v7[6];

    swift_getAtKeyPath();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2386C07BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a1;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF78, &qword_23877F8C0);
  sub_23875E320();
  a7(&v15);
}

void *sub_2386C0920@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a2;
  v11[1] = *a1;
  v12 = *(a1 + 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  result = MEMORY[0x23EE62DC0](v11, v5);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(v11[0] + 16))
  {
    v7 = (v11[0] + 24 * v4);
    v9 = v7[4];
    v8 = v7[5];
    v10 = v7[6];

    *a3 = v9;
    a3[1] = v8;
    a3[2] = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2386C09D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *a5;
  v14[1] = *a4;
  v15 = *(a4 + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF141E8, &qword_23877F860);
  MEMORY[0x23EE62DC0](v14);
  v9 = v14[0];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23852F12C(v9);
  v9 = result;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v8 < v9[2])
  {
    v11 = &v9[3 * v8];
    v13 = v11[5];
    v12 = v11[6];
    v11[4] = v6;
    v11[5] = v5;
    v11[6] = v7;

    v14[0] = v9;
    return sub_23875E2F0();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2386C0AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875A6C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14170, &qword_23877F788);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v18 = *(v17 + 56);
  sub_23843981C(a1, &v24 - v15, &qword_27DF10038, &qword_238774BF0);
  sub_23843981C(a2, &v16[v18], &qword_27DF10038, &qword_238774BF0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_23843981C(v16, v12, &qword_27DF10038, &qword_238774BF0);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_2386BD564(&qword_27DF14178, MEMORY[0x277CC7F18]);
      v21 = sub_23875E9E0();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_238439884(v16, &qword_27DF10038, &qword_238774BF0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_238439884(v16, &qword_27DF14170, &qword_23877F788);
    v20 = 1;
    return v20 & 1;
  }

  sub_238439884(v16, &qword_27DF10038, &qword_238774BF0);
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_2386C0DE8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  v6 = (result + 48);
  while (1)
  {
    v11 = *(v6 - 2);
    v10 = *(v6 - 1);
    v12 = *v6;
    v13 = *v4;

    result = sub_23853B46C(v11, v10);
    v15 = v13[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      sub_238549500(v18, a2 & 1);
      v20 = *v4;
      result = sub_23853B46C(v11, v10);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v22 = *v4;
      if (v19)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    if (a2)
    {
      goto LABEL_10;
    }

    v24 = v4;
    v25 = result;
    sub_23854AB30();
    result = v25;
    v22 = *v24;
    if (v19)
    {
LABEL_11:
      v29 = result;
      v23 = *(v22[7] + 8 * result);
      sub_23875ED50();

      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_238569AA0(v7);

      v8 = v22[7];
      v9 = *(v8 + 8 * v29);
      *(v8 + 8 * v29) = v23;

      goto LABEL_4;
    }

LABEL_14:
    v22[(result >> 6) + 8] |= 1 << result;
    v26 = (v22[6] + 16 * result);
    *v26 = v11;
    v26[1] = v10;
    *(v22[7] + 8 * result) = v12;
    v27 = v22[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v17)
    {
      goto LABEL_18;
    }

    v22[2] = v28;
LABEL_4:
    v6 += 3;
    a2 = 1;
    --v3;
    v4 = a3;
    if (!v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_23875F680();
  __break(1u);
  return result;
}

uint64_t sub_2386C1034()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_2386C108C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10038, &qword_238774BF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386C1114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectReconfirmationView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386C1178()
{
  v0 = *(*(type metadata accessor for BankConnectReconfirmationView(0) - 8) + 80);

  return sub_2386BF090();
}

uint64_t sub_2386C11E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_57Tm()
{
  v1 = type metadata accessor for BankConnectReconfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C600();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = *(v5 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386C1434(uint64_t a1)
{
  v4 = *(type metadata accessor for BankConnectReconfirmationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_2386BFDE0(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_69Tm()
{
  v1 = type metadata accessor for BankConnectReconfirmationView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23875C600();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + *(v1 + 20) + 8);

  v10 = *(v6 + *(v1 + 24));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2386C165C(uint64_t a1)
{
  v4 = *(type metadata accessor for BankConnectReconfirmationView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2386BF954(a1, v6, v7, v1 + v5);
}

unint64_t sub_2386C1754()
{
  result = qword_27DF141C0;
  if (!qword_27DF141C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF141B8, &qword_23877F808);
    sub_23843A3E8(&qword_27DF141C8, &qword_27DF141D0, &qword_23877F810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF141C0);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2386C18A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = *(a1 + 32);
  return sub_2386B97A0(v5, (v2 + 16), a2);
}

void *sub_2386C18DC@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  result = sub_2386C06E4(*a1, v2[2], v2[3], v2[4]);
  *a2 = result;
  a2[1] = v6;
  a2[2] = v7;
  return result;
}

uint64_t sub_2386C1930(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  v7[1] = a1[2];
  v8 = v4;
  v7[0] = v5;
  return v2(&v8, v7);
}

unint64_t sub_2386C1978()
{
  result = qword_27DF14210;
  if (!qword_27DF14210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14208, &qword_23877F8B0);
    sub_2386C19FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14210);
  }

  return result;
}

unint64_t sub_2386C19FC()
{
  result = qword_27DF14218;
  if (!qword_27DF14218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14220, &qword_23877F8B8);
    sub_2386C1A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14218);
  }

  return result;
}

unint64_t sub_2386C1A88()
{
  result = qword_27DF14228;
  if (!qword_27DF14228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14228);
  }

  return result;
}

void *sub_2386C1ADC@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2386C0920((v1 + 4), v1 + 7, a1);
}

uint64_t objectdestroy_101Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2386C1BA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2386C1BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2386C1C6C()
{
  sub_2384BEBB8();
  sub_23875CDC0();
  return v1;
}

uint64_t sub_2386C1CA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14278, &qword_23877F9F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-1] - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2386C301C(a1, v5);
  KeyPath = swift_getKeyPath();
  v7 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14298, &qword_23877FA00) + 36)];
  *v7 = KeyPath;
  v7[8] = 1;
  v8 = swift_getKeyPath();
  v9 = *(*a1 + 56);
  v10 = *(*a1 + 72);
  v11 = __swift_project_boxed_opaque_existential_1((*a1 + 32), v9);
  v17[3] = v9;
  v17[4] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
  v13 = &v5[*(v2 + 36)];
  sub_23845C998(v17, (v13 + 1));
  *v13 = v8;
  v14 = __swift_destroy_boxed_opaque_existential_1(v17);
  MEMORY[0x28223BE20](v14);
  *(&v16 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14280, &qword_23877F9F8);
  sub_2386C35D4();
  sub_23843A3E8(&qword_27DF142C0, &qword_27DF14280, &qword_23877F9F8);
  sub_23875DEF0();
  sub_2386C388C(v5);
}

uint64_t sub_2386C1F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142C8, &qword_23877FA78);
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB08, &qword_23877FA80);
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142D0, &unk_23877FA88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v11;
  v12 = sub_23875D2A0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB10, &qword_23876DEC0);
  v43 = *(v14 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142D8, &unk_23877FA98);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v41 - v23;
  sub_23875ED50();
  v45 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v53 = *(a1 + 8);
  v54 = *(a1 + 24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF151E0, &unk_238765600);
  MEMORY[0x23EE62DC0](&v52, v25);
  v26 = a1;
  if (v52 == 1)
  {
    v27 = sub_23875D260();
    MEMORY[0x28223BE20](v27);
    *(&v41 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB18, &qword_23876DEC8);
    v42 = v24;
    sub_23853B768();
    sub_23875C990();
    v28 = sub_23843A3E8(&qword_27DF142E0, &qword_27DF0DB10, &qword_23876DEC0);
    v29 = v44;
    MEMORY[0x23EE61E80](v17, v14, v28);
    (*(v9 + 16))(v21, v29, v8);
    (*(v9 + 56))(v21, 0, 1, v8);
    *&v53 = v14;
    *(&v53 + 1) = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v21, v8, OpaqueTypeConformance2);
    sub_238439884(v21, &qword_27DF142D8, &unk_23877FA98);
    (*(v9 + 8))(v29, v8);
    v24 = v42;
    (*(v43 + 8))(v17, v14);
  }

  else
  {
    (*(v9 + 56))(v21, 1, 1, v8);
    v31 = sub_23843A3E8(&qword_27DF142E0, &qword_27DF0DB10, &qword_23876DEC0);
    *&v53 = v14;
    *(&v53 + 1) = v31;
    v32 = swift_getOpaqueTypeConformance2();
    MEMORY[0x23EE61EB0](v21, v8, v32);
    sub_238439884(v21, &qword_27DF142D8, &unk_23877FA98);
  }

  v33 = sub_23875D250();
  MEMORY[0x28223BE20](v33);
  *(&v41 - 2) = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB50, &qword_23876DEE8);
  sub_23853B9A4();
  v34 = v46;
  sub_23875C990();
  v35 = v49;
  v36 = *(v50 + 48);
  sub_23842BF5C(v24, v49);
  v37 = v47;
  v38 = v35 + v36;
  v39 = v48;
  (*(v47 + 16))(v38, v34, v48);
  sub_23875D070();
  (*(v37 + 8))(v34, v39);
  sub_238439884(v24, &qword_27DF142D8, &unk_23877FA98);
}

uint64_t sub_2386C25F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_23875D620();
  v28 = *(v30 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v6 = *(v27[0] - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v27[0]);
  v9 = v27 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB30, &unk_23876DED0);
  v10 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v12 = v27 - v11;
  sub_23875ED50();
  v27[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *a1;
  v14 = a1[2];
  v33 = a1[1];
  v15 = a1[5];
  v16 = a1[7];
  v17 = swift_allocObject();
  v18 = *(a1 + 1);
  v17[1] = *a1;
  v17[2] = v18;
  v19 = *(a1 + 3);
  v17[3] = *(a1 + 2);
  v17[4] = v19;

  sub_2385B2CA0(&v33, v32);

  sub_23875E200();
  sub_23875D610();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  sub_2386C3904(&qword_27DF0DB38, MEMORY[0x277CDE400]);
  v20 = v27[0];
  v21 = v30;
  sub_23875DB30();
  (*(v28 + 8))(v5, v21);
  (*(v6 + 8))(v9, v20);
  v22 = &v12[*(v29 + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB48, &qword_23876DEE0) + 28);
  v24 = *MEMORY[0x277CDF420];
  v25 = sub_23875C460();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  sub_23853B824();
  sub_23875DE00();
  sub_238439884(v12, &qword_27DF0DB30, &unk_23876DED0);
}

uint64_t sub_2386C2A30@<X0>(uint64_t a1@<X8>)
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
  sub_23875D820();
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

uint64_t sub_2386C2C80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB68, &qword_23876DEF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v16 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *a1;
  v9 = a1[2];
  v18 = a1[1];
  v10 = a1[5];
  v11 = a1[7];
  v12 = swift_allocObject();
  v13 = *(a1 + 1);
  v12[1] = *a1;
  v12[2] = v13;
  v14 = *(a1 + 3);
  v12[3] = *(a1 + 2);
  v12[4] = v14;

  sub_2385B2CA0(&v18, v17);

  sub_23875E200();
  sub_23843A3E8(&qword_27DF0DB60, &qword_27DF0DB68, &qword_23876DEF0);
  sub_23875DE00();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_2386C2ED4(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 56);
  (*(a1 + 48))(isCurrentExecutor);
}

uint64_t sub_2386C2F78@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875E0D0();

  *a1 = v2;
  return result;
}

uint64_t sub_2386C301C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v25 = a1;
  v30 = a2;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF142E8, &qword_23877FAD8);
  v2 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v29 = &v25 - v3;
  v28 = type metadata accessor for OrderDetails(0);
  v4 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238759B60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = sub_238758700();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = *v25;
  (*(v15 + 16))(v18, *v25 + OBJC_IVAR____TtCC12FinanceKitUI20OrderManagementModel16ConfirmationData_content, v14);
  if ((*(v15 + 88))(v18, v14) == *MEMORY[0x277CC6FA8])
  {
    (*(v15 + 96))(v18, v14);
    (*(v7 + 32))(v13, v18, v6);
    (*(v7 + 16))(v10, v13, v6);
    v25 = *(v19 + 56);
    v20 = v25;
    v21 = __swift_project_boxed_opaque_existential_1((v19 + 32), v25);
    v32 = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
    v23 = v26;
    sub_2385297F0(v10, v31, 0, 0, 1, v26);
    sub_2386C3AD4(v23, v29);
    swift_storeEnumTagMultiPayload();
    sub_2386C3904(&qword_27DF11980, type metadata accessor for OrderDetails);
    sub_23875D1B0();
    sub_2386C3B38(v23);
    (*(v7 + 8))(v13, v6);
  }

  else
  {
    result = sub_23875F520();
    __break(1u);
  }

  return result;
}

uint64_t sub_2386C34A4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14270, &qword_23877F9E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14278, &qword_23877F9F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14280, &qword_23877F9F8);
  sub_2386C35D4();
  sub_23843A3E8(&qword_27DF142C0, &qword_27DF14280, &qword_23877F9F8);
  swift_getOpaqueTypeConformance2();
  return sub_23875C8F0();
}

unint64_t sub_2386C35D4()
{
  result = qword_27DF14288;
  if (!qword_27DF14288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14278, &qword_23877F9F0);
    sub_2386C368C();
    sub_23843A3E8(&qword_27DF0EAF0, &qword_27DF0EAF8, &qword_23877FA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14288);
  }

  return result;
}

unint64_t sub_2386C368C()
{
  result = qword_27DF14290;
  if (!qword_27DF14290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF14298, &qword_23877FA00);
    sub_2386C3744();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF14290);
  }

  return result;
}

unint64_t sub_2386C3744()
{
  result = qword_27DF142A0;
  if (!qword_27DF142A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF142A8, &qword_23877FA08);
    sub_2386C37C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF142A0);
  }

  return result;
}

unint64_t sub_2386C37C8()
{
  result = qword_27DF142B0;
  if (!qword_27DF142B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF142B8, &unk_23877FA10);
    sub_2386C3904(&qword_27DF11980, type metadata accessor for OrderDetails);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF142B0);
  }

  return result;
}

uint64_t sub_2386C388C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14278, &qword_23877F9F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386C3904(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2386C39AC(uint64_t a1)
{
  v2 = sub_23875C460();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1, v4);
  return MEMORY[0x23EE61520](v6);
}

uint64_t objectdestroyTm_30()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[7];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2386C3AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2386C3B38(uint64_t a1)
{
  v2 = type metadata accessor for OrderDetails(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2386C3BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_23843981C(a3, v27 - v11, &unk_27DF09920, &qword_238764D80);
  v13 = sub_23875ED80();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_238439884(v12, &unk_27DF09920, &qword_238764D80);
  }

  else
  {
    sub_23875ED70();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_23875ECE0();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_23875EB00() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_238439884(a3, &unk_27DF09920, &qword_238764D80);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_238439884(a3, &unk_27DF09920, &qword_238764D80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2386C3EA4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_2387587E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_238439884(a1, &qword_27DF0B328, &qword_238768050);
    sub_2386CB930(a2, v8);
    v14 = sub_23875BCB0();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_238439884(v8, &qword_27DF0B328, &qword_238768050);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_2386CC994(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_23875BCB0();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

unint64_t sub_2386C40D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = *v6;
  if (a2)
  {
    v11 = *v6;
    result = sub_238547964(a3, a4, a5 & 1);
    if (v13)
    {
      v14 = result;
      v15 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v6;
      v21 = *v6;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23854A404();
        v17 = v21;
      }

      result = sub_2386CC0EC(v14, v17);
      *v6 = v17;
    }
  }

  else
  {
    v19 = *v6;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v6;
    result = sub_2386CCB98(a1, a3, a4, a5 & 1, v20);
    *v6 = v22;
  }

  return result;
}

void sub_2386C41A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v7 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_2386CCCEC(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v9 = *v3;
    v10 = sub_2385477FC(a3);
    if (v11)
    {
      v12 = v10;
      v13 = *v4;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v4;
      v19 = *v4;
      if (!v14)
      {
        sub_23854A0B4();
        v15 = v19;
      }

      v16 = *(*(v15 + 56) + 16 * v12 + 8);

      sub_2386CC2D4(v12, v15);

      *v4 = v15;
    }

    else
    {
    }
  }
}

void sub_2386C42B8(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14320, &qword_23877FB68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_238439884(a1, &qword_27DF14320, &qword_23877FB68);
    sub_2386CBAD0(a2, v8);

    sub_238439884(v8, &qword_27DF14320, &qword_23877FB68);
  }

  else
  {
    sub_23854CEA4(a1, v13);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_2386CD000(v13, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
  }
}

void sub_2386C4464(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_238758680();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    sub_238439884(a1, &qword_27DF09520, &unk_2387637E0);
    sub_2386CBC3C(a2, v8);

    sub_238439884(v8, &qword_27DF09520, &unk_2387637E0);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_2386CD174(v14, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v18;
  }
}

Swift::Void __swiftcall SingleAccountSharingChoiceController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  v3 = *MEMORY[0x277D38568];
  v4 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v3, 25, v4);
}

Swift::Void __swiftcall SingleAccountSharingChoiceController.didMove(toParent:)(UIViewController_optional *toParent)
{
  ObjectType = swift_getObjectType();
  v3 = sub_23875C1E0();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v48 - v9);
  v11 = sub_2387587E0();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14300, &unk_23877FB48);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v48 - v25;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  [(UIViewController_optional *)&v56 didMoveToParentViewController:toParent, v24];
  if (toParent)
  {
    return;
  }

  v50 = v3;
  v51 = v22;
  v48 = v14;
  v49 = v6;
  ObjectType = v10;
  v27 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
  swift_beginAccess();
  sub_23843981C(v1 + v27, v26, &qword_27DF0B328, &qword_238768050);
  v28 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
  swift_beginAccess();
  v29 = *(v15 + 48);
  sub_23843981C(v26, v18, &qword_27DF0B328, &qword_238768050);
  sub_23843981C(v1 + v28, &v18[v29], &qword_27DF0B328, &qword_238768050);
  v31 = v53;
  v30 = v54;
  v32 = *(v53 + 48);
  if (v32(v18, 1, v54) != 1)
  {
    v33 = v51;
    sub_23843981C(v18, v51, &qword_27DF0B328, &qword_238768050);
    if (v32(&v18[v29], 1, v30) != 1)
    {
      v40 = &v18[v29];
      v41 = v48;
      (*(v31 + 32))(v48, v40, v30);
      sub_2386CFED8(&qword_27DF14318, MEMORY[0x277CC7078]);
      v42 = sub_23875E9E0();
      v43 = *(v31 + 8);
      v43(v41, v30);
      sub_238439884(v26, &qword_27DF0B328, &qword_238768050);
      v43(v33, v30);
      sub_238439884(v18, &qword_27DF0B328, &qword_238768050);
      v34 = ObjectType;
      if (v42)
      {
        goto LABEL_10;
      }

LABEL_8:
      v35 = sub_23875ED80();
      (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
      sub_23875ED50();
      v36 = v1;
      v37 = sub_23875ED40();
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D85700];
      v38[2] = v37;
      v38[3] = v39;
      v38[4] = v36;
      sub_2386C3BA4(0, 0, v34, &unk_23877FB60, v38);

      return;
    }

    sub_238439884(v26, &qword_27DF0B328, &qword_238768050);
    (*(v31 + 8))(v33, v30);
LABEL_7:
    sub_238439884(v18, &qword_27DF14300, &unk_23877FB48);
    v34 = ObjectType;
    goto LABEL_8;
  }

  sub_238439884(v26, &qword_27DF0B328, &qword_238768050);
  if (v32(&v18[v29], 1, v30) != 1)
  {
    goto LABEL_7;
  }

  sub_238439884(v18, &qword_27DF0B328, &qword_238768050);
LABEL_10:
  v44 = v49;
  sub_23875C120();
  v45 = sub_23875C1B0();
  v46 = sub_23875EFC0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_2383F8000, v45, v46, "Nothing changed, skipping update", v47, 2u);
    MEMORY[0x23EE64DF0](v47, -1, -1);
  }

  (*(v52 + 8))(v44, v50);
}

Swift::OpaquePointer_optional __swiftcall SingleAccountSharingChoiceController.specifiers()()
{
  v1 = v0;
  v236 = sub_23875C1E0();
  v235 = *(v236 - 8);
  v2 = *(v235 + 64);
  MEMORY[0x28223BE20](v236);
  v4 = &v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v202 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v202 - v9;
  MEMORY[0x28223BE20](v11);
  v229 = &v202 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14320, &qword_23877FB68);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v214 = &v202 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v228 = &v202 - v18;
  v231 = sub_2387587E0();
  v232 = *(v231 - 8);
  v19 = *(v232 + 64);
  MEMORY[0x28223BE20](v231);
  v220 = &v202 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v211 = &v202 - v22;
  MEMORY[0x28223BE20](v23);
  v216 = &v202 - v24;
  MEMORY[0x28223BE20](v25);
  v218 = &v202 - v26;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14300, &unk_23877FB48);
  v27 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v225 = &v202 - v28;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v212 = *(v213 - 8);
  v29 = *(v212 + 64);
  MEMORY[0x28223BE20](v213);
  v221 = &v202 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v223 = (&v202 - v32);
  MEMORY[0x28223BE20](v33);
  v215 = &v202 - v34;
  MEMORY[0x28223BE20](v35);
  v222 = &v202 - v36;
  MEMORY[0x28223BE20](v37);
  v219 = &v202 - v38;
  MEMORY[0x28223BE20](v39);
  v217 = &v202 - v40;
  MEMORY[0x28223BE20](v41);
  v227 = (&v202 - v42);
  MEMORY[0x28223BE20](v43);
  v45 = (&v202 - v44);
  MEMORY[0x28223BE20](v46);
  v226 = &v202 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v202 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v54 = &v202 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v57 = &v202 - v56;
  v234 = sub_23875BCB0();
  v233 = *(v234 - 8);
  v58 = *(v233 + 64);
  MEMORY[0x28223BE20](v234);
  v230 = &v202 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_23875EA50();
  v61 = [v1 valueForKey_];

  if (v61)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v241 = 0u;
    v242 = 0u;
  }

  v244 = v242;
  v243 = v241;
  if (*(&v242 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
    if (swift_dynamicCast())
    {
      v62 = sub_2386C7328(v238);

      v64 = v62;
      goto LABEL_151;
    }

    v65 = v1;
  }

  else
  {
    v65 = v1;
    sub_238439884(&v243, &qword_27DF0A4A8, &qword_238767840);
  }

  v66 = sub_23875EA50();
  v210 = v65;
  v67 = [v65 loadSpecifiersFromPlistName:v66 target:v65];

  if (v67)
  {
    *&v243 = 0;
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    sub_23875EC70();

    v68 = v243;
    if (v243)
    {
      v240 = v243;
      v69 = v243 >> 62;
      if (v243 >> 62)
      {
        v67 = v243;
        v195 = v243 >> 62;
        v196 = sub_23875F3A0();
        v69 = v195;
        v68 = v67;
        if (v196)
        {
LABEL_13:
          v207 = v68 & 0xC000000000000001;
          v209 = v68;
          v206 = v69;
          if ((v68 & 0xC000000000000001) != 0)
          {
            v201 = v68;

            v208 = MEMORY[0x23EE63F70](0, v201);

            v70 = v210;
          }

          else
          {
            v70 = v210;
            if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_136;
            }

            v208 = v68[4];
          }

          v64 = [v70 specifier];
          if (!v64)
          {
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          v71 = v64;
          v72 = sub_23875EA50();
          v73 = [v71 propertyForKey_];

          if (v73)
          {
            sub_23875F2E0();
            swift_unknownObjectRelease();
          }

          else
          {
            v241 = 0u;
            v242 = 0u;
          }

          v244 = v242;
          v243 = v241;
          if (*(&v242 + 1))
          {
            if (swift_dynamicCast())
            {
              v74 = v239;
              v75 = &v70[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier];
              v76 = *&v70[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier + 8];
              v205 = v238;
              *v75 = v238;
              *(v75 + 1) = v74;

              v64 = [v70 specifier];
              if (!v64)
              {
LABEL_148:
                __break(1u);
                goto LABEL_149;
              }

              v77 = v64;
              v78 = sub_23875EA50();
              v79 = [v77 propertyForKey_];

              if (v79)
              {
                sub_23875F2E0();
                swift_unknownObjectRelease();
              }

              else
              {
                v241 = 0u;
                v242 = 0u;
              }

              v244 = v242;
              v243 = v241;
              if (*(&v242 + 1))
              {
                if (swift_dynamicCast())
                {
                  v203 = v238;
                  v204 = v239;
                  v64 = [v70 specifier];
                  if (!v64)
                  {
LABEL_149:
                    __break(1u);
                    goto LABEL_150;
                  }

                  v85 = v64;
                  v86 = sub_23875EA50();
                  v87 = [v85 propertyForKey_];

                  if (v87)
                  {
                    sub_23875F2E0();
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v241 = 0u;
                    v242 = 0u;
                  }

                  v93 = v234;
                  v244 = v242;
                  v243 = v241;
                  if (!*(&v242 + 1))
                  {

                    sub_238439884(&v243, &qword_27DF0A4A8, &qword_238767840);
                    (*(v233 + 56))(v57, 1, 1, v93);
                    goto LABEL_46;
                  }

                  v202 = v74;
                  v94 = swift_dynamicCast();
                  v95 = v233;
                  v96 = *(v233 + 56);
                  v96(v57, v94 ^ 1u, 1, v93);
                  if ((*(v95 + 48))(v57, 1, v93) == 1)
                  {

LABEL_46:
                    sub_238439884(v57, &unk_27DF0B520, &qword_2387681F0);
                    v97 = v229;
                    sub_23875C120();
                    v98 = sub_23875C1B0();
                    v99 = sub_23875EFE0();
                    v100 = os_log_type_enabled(v98, v99);
                    v101 = v208;
                    if (v100)
                    {
                      v102 = swift_slowAlloc();
                      *v102 = 0;
                      _os_log_impl(&dword_2383F8000, v98, v99, "Expected account id property of specifier", v102, 2u);
                      MEMORY[0x23EE64DF0](v102, -1, -1);
                    }

                    (*(v235 + 8))(v97, v236);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
                    v103 = swift_allocObject();
                    *(v103 + 16) = xmmword_2387632F0;
                    *(v103 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
                    *(v103 + 32) = v209;

                    v64 = v103;
                    goto LABEL_151;
                  }

                  v104 = v230;
                  (*(v95 + 32))(v230, v57, v93);
                  (*(v95 + 16))(v54, v104, v93);
                  v96(v54, 0, 1, v93);
                  v105 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
                  swift_beginAccess();
                  sub_2385309FC(v54, &v70[v105], &unk_27DF0B520, &qword_2387681F0);
                  swift_endAccess();
                  v106 = sub_23875EA50();
                  [v70 setTitle_];

                  v107 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
                  swift_beginAccess();
                  sub_23843981C(&v70[v107], v50, &qword_27DF0B328, &qword_238768050);
                  v10 = v232 + 48;
                  v7 = *(v232 + 48);
                  v108 = v231;
                  LODWORD(v105) = (v7)(v50, 1, v231);
                  sub_238439884(v50, &qword_27DF0B328, &qword_238768050);
                  v109 = &qword_27DF14000;
                  if (v105 == 1)
                  {
                    v110 = v226;
                    sub_2386C7524(v226);
                    swift_beginAccess();
                    sub_2385309FC(v110, &v70[v107], &qword_27DF0B328, &qword_238768050);
                    swift_endAccess();
                    sub_23843981C(&v70[v107], v45, &qword_27DF0B328, &qword_238768050);
                    LODWORD(v110) = (v7)(v45, 1, v108);
                    v109 = &qword_27DF14000;
                    sub_238439884(v45, &qword_27DF0B328, &qword_238768050);
                    if (v110 != 1)
                    {
                      v111 = v226;
                      sub_23843981C(&v70[v107], v226, &qword_27DF0B328, &qword_238768050);
                      v112 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
                      swift_beginAccess();
                      sub_2385309FC(v111, &v70[v112], &qword_27DF0B328, &qword_238768050);
                      swift_endAccess();
                      sub_23843981C(&v70[v112], v111, &qword_27DF0B328, &qword_238768050);
                      v113 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate;
                      swift_beginAccess();
                      v114 = v111;
                      v109 = &qword_27DF14000;
                      sub_2385309FC(v114, &v70[v113], &qword_27DF0B328, &qword_238768050);
                      swift_endAccess();
                    }
                  }

                  v203 = v107;
                  v115 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
                  swift_beginAccess();
                  v235 = v115;
                  v116 = v227;
                  sub_23843981C(&v70[v115], v227, &qword_27DF0B328, &qword_238768050);
                  v117 = v109[103];
                  swift_beginAccess();
                  v118 = *(v224 + 48);
                  v119 = v225;
                  sub_23843981C(v116, v225, &qword_27DF0B328, &qword_238768050);
                  sub_23843981C(&v70[v117], v119 + v118, &qword_27DF0B328, &qword_238768050);
                  if ((v7)(v119, 1, v108) == 1)
                  {
                    sub_238439884(v116, &qword_27DF0B328, &qword_238768050);
                    if ((v7)(v119 + v118, 1, v108) == 1)
                    {
                      sub_238439884(v119, &qword_27DF0B328, &qword_238768050);
LABEL_59:
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14348, &qword_23877FB78);
                      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE40, &qword_23876E830);
                      v124 = *(*(v45 - 1) + 72);
                      v67 = ((*(*(v45 - 1) + 80) + 32) & ~*(*(v45 - 1) + 80));
                      v4 = swift_allocObject();
                      *(v4 + 16) = xmmword_238763300;
                      v226 = v7;
                      v236 = v10;
                      if (v207)
                      {
                        v125 = MEMORY[0x23EE63F70](1, v209);
LABEL_63:
                        v67 = (v67 + v4);
                        v10 = v45[12];
                        *v67 = v125;
                        v126 = sub_23875BC40();
                        v127 = *(*(v126 - 8) + 56);
                        v7 = v228;
                        v127(v228, 1, 1, v126);
                        sub_2387587C0();
                        v128 = *(v232 + 56);
                        v229 = v232 + 56;
                        v227 = v128;
                        (v128)(v67 + v10, 0, 1, v231);
                        if (v207)
                        {
                          v129 = MEMORY[0x23EE63F70](2, v209);
LABEL_67:
                          v130 = v45[12];
                          *(v67 + v124) = v129;
                          v131 = v228;
                          sub_23875BAE0();
                          v127(v131, 0, 1, v126);
                          sub_2387587C0();
                          v132 = v231;
                          (v227)(v67 + v124 + v130, 0, 1, v231);
                          if (v207)
                          {
                            v133 = MEMORY[0x23EE63F70](3, v209);
                            v70 = v210;
                            v10 = v232;
                            v7 = v226;
                            v134 = v203;
                            goto LABEL_71;
                          }

                          v70 = v210;
                          v10 = v232;
                          v7 = v226;
                          v134 = v203;
                          if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
                          {
                            v133 = v209[7];
LABEL_71:
                            v135 = (v67 + 2 * v124);
                            v136 = v45[12];
                            *v135 = v133;
                            (v227)(v135 + v136, 1, 1, v132);
                            v137 = sub_23854C058(v4);
                            swift_setDeallocating();
                            swift_arrayDestroy();
                            swift_deallocClassInstance();
                            v67 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate;
                            swift_beginAccess();
                            v138 = *(v67 + v70);
                            *(v67 + v70) = v137;

                            v4 = v222;
                            sub_23843981C(&v70[v134], v222, &qword_27DF0B328, &qword_238768050);
                            if ((v7)(v4, 1, v132) != 1)
                            {
                              v139 = *(v10 + 32);
                              v140 = v216;
                              v139(v216, v4, v132);
                              v4 = v140;
                              if (sub_2387587D0())
                              {
                                (*(v10 + 8))(v140, v132);
                                goto LABEL_75;
                              }

                              v4 = v215;
                              sub_23843981C(&v70[v235], v215, &qword_27DF0B328, &qword_238768050);
                              if ((v7)(v4, 1, v132) != 1)
                              {
                                v156 = v211;
                                v139(v211, v4, v132);
                                v157 = sub_2387587D0();
                                v4 = v10 + 8;
                                v158 = *(v10 + 8);
                                v158(v156, v132);
                                v158(v140, v132);
                                v141 = v157 ^ 1;
LABEL_76:
                                v142 = v208;
                                v45 = v223;
                                sub_23843981C(&v70[v235], v223, &qword_27DF0B328, &qword_238768050);
                                v143 = (v7)(v45, 1, v132);
                                LODWORD(v228) = v141;
                                if (v143 == 1)
                                {
                                  sub_238439884(v45, &qword_27DF0B328, &qword_238768050);
                                  if (v206)
                                  {
                                    v45 = v209;
                                    v144 = sub_23875F3A0();
                                    v63 = v45;
                                  }

                                  else
                                  {
                                    v63 = v209;
                                    v144 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                  }

                                  v146 = v221;
                                  v7 = MEMORY[0x277D837D0];
                                  if (!v144)
                                  {
                                    v10 = 0;
                                    v45 = 0;
LABEL_111:
                                    v167 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier;
                                    if (*&v70[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier])
                                    {

LABEL_115:
                                      v172 = *&v70[v167];
                                      if (!v172)
                                      {
                                        goto LABEL_125;
                                      }

                                      started = type metadata accessor for StartSharingTimeSelectionCell();
                                      v67 = v172;
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14360, qword_23877FB80);
                                      [v67 setProperty:sub_23875F660() forKey:*MEMORY[0x277D3FE58]];
                                      swift_unknownObjectRelease();
                                      [v67 setButtonAction_];
                                      sub_23843981C(&v70[v235], v146, &qword_27DF0B328, &qword_238768050);
                                      v173 = 0;
                                      if ((v226)(v146, 1, v132) != 1)
                                      {
                                        v174 = v232;
                                        (*(v232 + 16))(v218, v146, v132);
                                        v173 = sub_23875F660();
                                        (*(v174 + 8))(v146, v132);
                                      }

                                      v175 = sub_23875EA50();
                                      [v67 setProperty:v173 forKey:v175];
                                      swift_unknownObjectRelease();

                                      v176 = sub_23875ECD0();
                                      v177 = sub_23875EA50();
                                      [v67 setProperty:v176 forKey:v177];

                                      v4 = sub_23875EA50();
                                      [v67 setProperty:v70 forKey:v4];

                                      if (!v10)
                                      {
LABEL_124:

LABEL_125:
                                        v179 = objc_allocWithZone(MEMORY[0x277CC1E70]);
                                        v180 = sub_2386CB5C4(v205, v202, 0);
                                        v181 = v234;
                                        v182 = v233;
                                        if (!v180)
                                        {
LABEL_128:
                                          v192 = v240;
                                          sub_2386C7328(v240);
                                          v193 = sub_23875EC60();

                                          [v70 setSpecifiers_];

                                          v194 = sub_2386C7328(v192);
                                          (*(v182 + 8))(v230, v181);

                                          v64 = v194;
                                          goto LABEL_151;
                                        }

                                        v10 = v180;
                                        v183 = [v180 localizedName];
                                        v4 = sub_23875EA80();
                                        v67 = v184;

                                        if (qword_2814F0880 == -1)
                                        {
LABEL_127:
                                          v185 = qword_2814F1B90;
                                          v186 = sub_23875EA50();
                                          v187 = sub_23875EA50();
                                          v188 = sub_23875EA50();
                                          v189 = [v185 localizedStringForKey:v186 value:v187 table:v188];

                                          sub_23875EA80();
                                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
                                          v190 = swift_allocObject();
                                          *(v190 + 16) = xmmword_2387632F0;
                                          *(v190 + 56) = v7;
                                          *(v190 + 64) = sub_238448C58();
                                          *(v190 + 32) = v4;
                                          *(v190 + 40) = v67;
                                          sub_23875EAB0();

                                          v191 = sub_23875EA50();

                                          v142 = v208;
                                          [v208 setProperty:v191 forKey:*MEMORY[0x277D3FF88]];

                                          v181 = v234;
                                          v182 = v233;
                                          goto LABEL_128;
                                        }

LABEL_141:
                                        swift_once();
                                        goto LABEL_127;
                                      }

                                      if (v206)
                                      {
                                        v178 = sub_23875F3A0();
                                      }

                                      else
                                      {
                                        v178 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                      }

                                      if (v178 >= 3)
                                      {
                                        sub_2386CF368(3, 3, v67, &qword_27DF0AE38, 0x277D3FAD8);
                                        goto LABEL_124;
                                      }

LABEL_140:
                                      __break(1u);
                                      goto LABEL_141;
                                    }

                                    v168 = objc_opt_self();
                                    v169 = sub_23875EA50();
                                    v170 = [v168 preferenceSpecifierNamed:v169 target:v70 set:sel_emptySetter_ get:0 detail:0 cell:-1 edit:0];

                                    if (v170)
                                    {

                                      v171 = *&v70[v167];
                                      *&v70[v167] = v170;

                                      goto LABEL_115;
                                    }

LABEL_150:
                                    __break(1u);
                                    goto LABEL_151;
                                  }

                                  v151 = __OFSUB__(v144, 1);
                                  v64 = v144 - 1;
                                  if (!v151)
                                  {
                                    if (v207)
                                    {
                                      v152 = MEMORY[0x23EE63F70](v64);
LABEL_99:
                                      v159 = v152;
LABEL_103:
                                      v45 = v159;
                                      v10 = 0;
LABEL_110:
                                      [v142 setProperty:v45 forKey:*MEMORY[0x277D40090]];

                                      goto LABEL_111;
                                    }

                                    if ((v64 & 0x8000000000000000) != 0)
                                    {
                                      __break(1u);
                                    }

                                    else if (v64 < *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                    {
                                      v152 = *&v63[2 * v64 + 8];
                                      goto LABEL_99;
                                    }

                                    __break(1u);
                                    goto LABEL_144;
                                  }

LABEL_139:
                                  __break(1u);
                                  goto LABEL_140;
                                }

                                (*(v10 + 32))(v220, v45, v132);
                                v64 = sub_2387587D0();
                                if (v64)
                                {
                                  LOBYTE(v63) = v209;
                                  if (v207)
                                  {
                                    v145 = MEMORY[0x23EE63F70](1, v209);
                                    v146 = v221;
                                    v7 = MEMORY[0x277D837D0];
                                  }

                                  else
                                  {
                                    v146 = v221;
                                    v7 = MEMORY[0x277D837D0];
                                    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
                                    {
LABEL_144:
                                      __break(1u);
                                      goto LABEL_145;
                                    }

                                    v145 = v209[5];
                                  }

                                  (*(v10 + 8))(v220, v132);
                                  v159 = v145;
                                  goto LABEL_103;
                                }

                                if (v207)
                                {
                                  v153 = v209;
                                  v154 = MEMORY[0x23EE63F70](2, v209);
                                  swift_beginAccess();
                                  if (*(v67 + v70))
                                  {
                                    v208 = v142;
                                    v45 = v154;
                                    v155 = MEMORY[0x23EE63F70](2, v153);
                                    goto LABEL_108;
                                  }
                                }

                                else
                                {
                                  v160 = v209 & 0xFFFFFFFFFFFFFF8;
                                  if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
                                  {
LABEL_145:
                                    __break(1u);
                                    goto LABEL_146;
                                  }

                                  v154 = v209[6];
                                  v64 = swift_beginAccess();
                                  if (*(v67 + v70))
                                  {
                                    if (*(v160 + 16) < 3uLL)
                                    {
LABEL_147:
                                      __break(1u);
                                      goto LABEL_148;
                                    }

                                    v208 = v142;
                                    v161 = v209[6];
                                    v45 = v154;
                                    v155 = v161;
LABEL_108:
                                    v162 = v155;
                                    v163 = v214;
                                    v164 = v220;
                                    (*(v10 + 16))(v214, v220, v132);
                                    v165 = v10;
                                    v10 = 1;
                                    (v227)(v163, 0, 1, v132);
                                    (*(v212 + 56))(v163, 0, 1, v213);
                                    sub_2386C42B8(v163, v162);
                                    swift_endAccess();
                                    (*(v165 + 8))(v164, v132);
                                    v146 = v221;
                                    v7 = MEMORY[0x277D837D0];
                                    v142 = v208;
                                    goto LABEL_110;
                                  }
                                }

                                swift_endAccess();
                                v166 = *(v10 + 8);
                                v45 = v154;
                                v166(v220, v132);
                                v10 = 1;
                                v146 = v221;
                                v7 = MEMORY[0x277D837D0];
                                goto LABEL_110;
                              }

                              (*(v10 + 8))(v140, v132);
                            }

                            sub_238439884(v4, &qword_27DF0B328, &qword_238768050);
LABEL_75:
                            v141 = 0;
                            goto LABEL_76;
                          }

LABEL_138:
                          __break(1u);
                          goto LABEL_139;
                        }

                        if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
                        {
                          v129 = v209[6];
                          goto LABEL_67;
                        }

LABEL_137:
                        __break(1u);
                        goto LABEL_138;
                      }

                      if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
                      {
                        v125 = v209[5];
                        goto LABEL_63;
                      }

LABEL_136:
                      __break(1u);
                      goto LABEL_137;
                    }
                  }

                  else
                  {
                    v120 = v217;
                    sub_23843981C(v119, v217, &qword_27DF0B328, &qword_238768050);
                    if ((v7)(v119 + v118, 1, v108) != 1)
                    {
                      v147 = v232;
                      v148 = v119 + v118;
                      v149 = v218;
                      (*(v232 + 32))(v218, v148, v108);
                      sub_2386CFED8(&qword_27DF14318, MEMORY[0x277CC7078]);
                      LODWORD(v229) = sub_23875E9E0();
                      v150 = *(v147 + 8);
                      v150(v149, v108);
                      sub_238439884(v227, &qword_27DF0B328, &qword_238768050);
                      v150(v120, v108);
                      sub_238439884(v119, &qword_27DF0B328, &qword_238768050);
                      if (v229)
                      {
                        goto LABEL_59;
                      }

                      goto LABEL_58;
                    }

                    sub_238439884(v227, &qword_27DF0B328, &qword_238768050);
                    (*(v232 + 8))(v120, v108);
                  }

                  sub_238439884(v119, &qword_27DF14300, &unk_23877FB48);
LABEL_58:
                  v121 = v226;
                  sub_23843981C(&v70[v117], v226, &qword_27DF0B328, &qword_238768050);
                  v122 = v235;
                  v123 = v219;
                  sub_23843981C(&v70[v235], v219, &qword_27DF0B328, &qword_238768050);
                  sub_2386CEE98(v121, v123, *&v70[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap], *&v70[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap + 8]);
                  sub_238439884(v123, &qword_27DF0B328, &qword_238768050);
                  sub_238439884(v121, &qword_27DF0B328, &qword_238768050);
                  sub_23843981C(&v70[v122], v121, &qword_27DF0B328, &qword_238768050);
                  swift_beginAccess();
                  sub_2385309FC(v121, &v70[v117], &qword_27DF0B328, &qword_238768050);
                  swift_endAccess();
                  goto LABEL_59;
                }
              }

              else
              {

                sub_238439884(&v243, &qword_27DF0A4A8, &qword_238767840);
              }

              sub_23875C120();
              v88 = sub_23875C1B0();
              v89 = sub_23875EFE0();
              v90 = os_log_type_enabled(v88, v89);
              v83 = v208;
              if (v90)
              {
                v91 = swift_slowAlloc();
                *v91 = 0;
                _os_log_impl(&dword_2383F8000, v88, v89, "Expected account name property of specifier", v91, 2u);
                MEMORY[0x23EE64DF0](v91, -1, -1);
              }

              (*(v235 + 8))(v10, v236);
LABEL_40:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2B8, &qword_238774910);
              v92 = swift_allocObject();
              *(v92 + 16) = xmmword_2387632F0;
              *(v92 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE40, &qword_23877FB70);
              *(v92 + 32) = v209;

              v64 = v92;
              goto LABEL_151;
            }
          }

          else
          {
            sub_238439884(&v243, &qword_27DF0A4A8, &qword_238767840);
          }

          sub_23875C120();
          v80 = sub_23875C1B0();
          v81 = sub_23875EFE0();
          v82 = os_log_type_enabled(v80, v81);
          v83 = v208;
          if (v82)
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_2383F8000, v80, v81, "Expected bundleID property of specifier", v84, 2u);
            MEMORY[0x23EE64DF0](v84, -1, -1);
          }

          (*(v235 + 8))(v7, v236);
          goto LABEL_40;
        }
      }

      else if (*((v243 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }
    }
  }

  sub_23875C120();
  v197 = sub_23875C1B0();
  v198 = sub_23875EFE0();
  if (os_log_type_enabled(v197, v198))
  {
    v199 = swift_slowAlloc();
    v200 = swift_slowAlloc();
    *&v243 = v200;
    *v199 = 136315138;
    *(v199 + 4) = sub_2384615AC(0xD00000000000001ALL, 0x80000002387902C0, &v243);
    _os_log_impl(&dword_2383F8000, v197, v198, "Unable to load specifiers from: %s", v199, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v200);
    MEMORY[0x23EE64DF0](v200, -1, -1);
    MEMORY[0x23EE64DF0](v199, -1, -1);
  }

  (*(v235 + 8))(v4, v236);
  v64 = MEMORY[0x277D84F90];
LABEL_151:
  result.is_nil = v63;
  result.value._rawValue = v64;
  return result;
}

char *sub_2386C7328(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_23875F3A0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2385FF064(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x23EE63F70](i, a1);
        sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2385FF064((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_23846F7C4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2385FF064((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_23846F7C4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_2386C7524(uint64_t a1@<X8>)
{
  v24[0] = a1;
  v2 = sub_23875C1E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758850();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v24 - v14;
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator))
  {
    if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier + 8))
    {
      v16 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier);

      sub_238758830();
      sub_23875AA60();
      (*(v8 + 8))(v11, v7);

      v21 = sub_2387587E0();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v15, 1, v21) == 1)
      {
        sub_238439884(v15, &qword_27DF0B328, &qword_238768050);
        (*(v22 + 56))(v24[0], 1, 1, v21);
      }

      else
      {
        v23 = v24[0];
        (*(v22 + 32))(v24[0], v15, v21);
        (*(v22 + 56))(v23, 0, 1, v21);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_23875C120();
    v17 = sub_23875C1B0();
    v18 = sub_23875EFE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2383F8000, v17, v18, "Expected store coordinator", v19, 2u);
      MEMORY[0x23EE64DF0](v19, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v20 = sub_2387587E0();
    (*(*(v20 - 8) + 56))(v24[0], 1, 1, v20);
  }
}

id SingleAccountSharingChoiceController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23875EA50();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SingleAccountSharingChoiceController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
  v10 = sub_23875BCB0();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator;
  v12 = sub_23875AA80();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v4[v11] = sub_23875AA70();
  v15 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
  v16 = sub_2387587E0();
  v17 = *(*(v16 - 8) + 56);
  v17(&v4[v15], 1, 1, v16);
  v17(&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate] = 0;
  *&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier] = 0;
  v18 = &v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap];
  v19 = *MEMORY[0x277D38428];
  *v18 = sub_23875EA80();
  v18[1] = v20;
  v17(&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController____lazy_storage___applicationRecord] = 1;
  if (a2)
  {
    v21 = sub_23875EA50();
  }

  else
  {
    v21 = 0;
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, v21, a3);

  return v22;
}

id SingleAccountSharingChoiceController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SingleAccountSharingChoiceController.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
  v7 = sub_23875BCB0();
  (*(*(v7 - 8) + 56))(&v2[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator;
  v9 = sub_23875AA80();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *&v2[v8] = sub_23875AA70();
  v12 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
  v13 = sub_2387587E0();
  v14 = *(*(v13 - 8) + 56);
  v14(&v2[v12], 1, 1, v13);
  v14(&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate], 1, 1, v13);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate] = 0;
  *&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier] = 0;
  v15 = &v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap];
  v16 = *MEMORY[0x277D38428];
  *v15 = sub_23875EA80();
  v15[1] = v17;
  v14(&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate], 1, 1, v13);
  *&v2[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController____lazy_storage___applicationRecord] = 1;
  v20.receiver = v2;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_initWithCoder_, a1);

  if (v18)
  {
  }

  return v18;
}

id SingleAccountSharingChoiceController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2386C8160()
{
  v1 = sub_23875C1E0();
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_2387587E0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier);
  if (v23)
  {
    v41 = v1;
    v24 = v23;
    v25 = sub_23875EA50();
    v42 = v24;
    v26 = [v24 propertyForKey_];

    if (v26)
    {
      sub_23875F2E0();
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = 0u;
      v45 = 0u;
    }

    v46[0] = v44;
    v46[1] = v45;
    if (*(&v45 + 1))
    {
      v31 = swift_dynamicCast();
      v32 = *(v19 + 56);
      v32(v17, v31 ^ 1u, 1, v18);
      if ((*(v19 + 48))(v17, 1, v18) != 1)
      {
        v40 = v32;
        v43 = *(v19 + 32);
        (v43)(v22, v17, v18);
        v33 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
        v41 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
        swift_beginAccess();
        sub_23843981C(v0 + v33, v14, &qword_27DF0B328, &qword_238768050);
        v34 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_previousAccountStartDate;
        swift_beginAccess();
        sub_2385309FC(v14, v0 + v34, &qword_27DF0B328, &qword_238768050);
        swift_endAccess();
        sub_23843981C(v0 + v34, v14, &qword_27DF0B328, &qword_238768050);
        (*(v19 + 16))(v11, v22, v18);
        v35 = v40;
        v40(v11, 0, 1, v18);
        sub_2386CEE98(v14, v11, *(v0 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap), *(v0 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_analyticsEventTypeButtonTap + 8));

        sub_238439884(v11, &qword_27DF0B328, &qword_238768050);
        sub_238439884(v14, &qword_27DF0B328, &qword_238768050);
        (v43)(v14, v22, v18);
        v35(v14, 0, 1, v18);
        v36 = v41;
        swift_beginAccess();
        sub_2385309FC(v14, v0 + v36, &qword_27DF0B328, &qword_238768050);
        return swift_endAccess();
      }
    }

    else
    {
      sub_238439884(v46, &qword_27DF0A4A8, &qword_238767840);
      (*(v19 + 56))(v17, 1, 1, v18);
    }

    sub_238439884(v17, &qword_27DF0B328, &qword_238768050);
    sub_23875C120();
    v37 = sub_23875C1B0();
    v38 = sub_23875EFE0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2383F8000, v37, v38, "Expected account Date property of specifier", v39, 2u);
      MEMORY[0x23EE64DF0](v39, -1, -1);
    }

    return (*(v43 + 8))(v7, v41);
  }

  else
  {
    sub_23875C120();
    v27 = sub_23875C1B0();
    v28 = sub_23875EFE0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2383F8000, v27, v28, "Expected timeDateSpecifier to exists", v29, 2u);
      MEMORY[0x23EE64DF0](v29, -1, -1);
    }

    return (*(v43 + 8))(v4, v1);
  }
}

uint64_t sub_2386C88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_238758850();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0) - 8) + 64) + 15;
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v9 = sub_23875BCB0();
  v4[17] = v9;
  v10 = *(v9 - 8);
  v4[18] = v10;
  v11 = *(v10 + 64) + 15;
  v4[19] = swift_task_alloc();
  v12 = sub_2387587E0();
  v4[20] = v12;
  v13 = *(v12 - 8);
  v4[21] = v13;
  v14 = *(v13 + 64) + 15;
  v4[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v17 = sub_23875C1E0();
  v4[25] = v17;
  v18 = *(v17 - 8);
  v4[26] = v18;
  v19 = *(v18 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  sub_23875ED50();
  v4[29] = sub_23875ED40();
  v21 = sub_23875ECE0();
  v4[30] = v21;
  v4[31] = v20;

  return MEMORY[0x2822009F8](sub_2386C8B88, v21, v20);
}

void sub_2386C8B88()
{
  v67 = v0;
  v1 = *(v0 + 88);
  v2 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_storeCoordinator);
  *(v0 + 256) = v2;
  if (v2)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    v6 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
    swift_beginAccess();
    sub_23843981C(v1 + v6, v3, &qword_27DF0B328, &qword_238768050);
    v7 = *(v5 + 48);
    v65 = v7(v3, 1, v4);
    *(v0 + 272) = v65;

    sub_238439884(v3, &qword_27DF0B328, &qword_238768050);
    v8 = v7(v1 + v6, 1, v4);
    v9 = *(v0 + 184);
    if (v8)
    {
      v10 = sub_23875BC40();
      (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    }

    else
    {
      v31 = *(v0 + 168);
      v30 = *(v0 + 176);
      v32 = *(v0 + 160);
      (*(v31 + 16))(v30, v1 + v6, v32);
      sub_2387587B0();
      (*(v31 + 8))(v30, v32);
    }

    v33 = *(v0 + 216);
    v34 = *(v0 + 88);
    sub_23875C120();
    v35 = v34;
    v36 = sub_23875C1B0();
    v37 = sub_23875EFE0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 136);
      v39 = *(v0 + 144);
      v40 = *(v0 + 128);
      v41 = *(v0 + 88);
      v42 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v66 = v64;
      *v42 = 141559043;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v43 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
      swift_beginAccess();
      sub_23843981C(v41 + v43, v40, &unk_27DF0B520, &qword_2387681F0);
      LODWORD(v38) = (*(v39 + 48))(v40, 1, v38);

      if (v38 == 1)
      {
        __break(1u);
      }

      else
      {
        v45 = *(v0 + 144);
        v44 = *(v0 + 152);
        v46 = *(v0 + 136);
        v47 = *(v0 + 88);
        (*(v45 + 32))(v44, *(v0 + 128), v46);
        sub_2386CFED8(&qword_27DF0DE90, MEMORY[0x277CC95F0]);
        v48 = sub_23875F600();
        v50 = v49;
        (*(v45 + 8))(v44, v46);
        v51 = sub_2384615AC(v48, v50, &v66);

        *(v42 + 14) = v51;
        *(v42 + 22) = 2160;
        *(v42 + 24) = 1752392040;
        *(v42 + 32) = 2081;
        v52 = (v47 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier);
        v53 = *(v47 + OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier + 8);
        if (v53)
        {
          v55 = *(v0 + 208);
          v54 = *(v0 + 216);
          v56 = *(v0 + 200);
          v57 = *v52;

          v58 = sub_2384615AC(v57, v53, &v66);

          *(v42 + 34) = v58;
          *(v42 + 42) = 1024;
          *(v42 + 44) = v65 != 1;
          _os_log_impl(&dword_2383F8000, v36, v37, "Update account %{private,mask.hash}s\nfor %{private,mask.hash}s: %{BOOL}d", v42, 0x30u);
          swift_arrayDestroy();
          MEMORY[0x23EE64DF0](v64, -1, -1);
          MEMORY[0x23EE64DF0](v42, -1, -1);

          (*(v55 + 8))(v54, v56);
LABEL_15:
          v62 = swift_task_alloc();
          *(v0 + 264) = v62;
          *v62 = v0;
          v62[1] = sub_2386C917C;
          v63 = *(v0 + 88);

          sub_2386C953C();
          return;
        }
      }

      __break(1u);
      return;
    }

    v60 = *(v0 + 208);
    v59 = *(v0 + 216);
    v61 = *(v0 + 200);

    (*(v60 + 8))(v59, v61);
    goto LABEL_15;
  }

  v12 = *(v0 + 224);
  v11 = *(v0 + 232);

  sub_23875C120();
  v13 = sub_23875C1B0();
  v14 = sub_23875EFE0();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  if (v15)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2383F8000, v13, v14, "Expected store coordinator", v19, 2u);
    MEMORY[0x23EE64DF0](v19, -1, -1);
  }

  (*(v18 + 8))(v16, v17);
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = *(v0 + 152);
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v28 = *(v0 + 112);

  v29 = *(v0 + 8);

  v29();
}

uint64_t sub_2386C917C(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v7 = *v1;
  *(*v1 + 276) = a1;

  v4 = *(v2 + 248);
  v5 = *(v2 + 240);

  return MEMORY[0x2822009F8](sub_2386C92A4, v5, v4);
}

uint64_t sub_2386C92A4()
{
  if (*(v0 + 276) != 1)
  {
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    sub_238439884(*(v0 + 184), &qword_27DF12E00, &unk_238763FC0);

    goto LABEL_6;
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v5 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_accountID;
  swift_beginAccess();
  sub_23843981C(v4 + v5, v3, &unk_27DF0B520, &qword_2387681F0);
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v0 + 88);
  if (!*&v7[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier + 8])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v10 = *(v0 + 232);
  v11 = *(v0 + 144);
  v31 = *(v0 + 136);
  v12 = *(v0 + 112);
  v28 = *(v0 + 120);
  v29 = *(v0 + 184);
  v13 = *(v0 + 104);
  v30 = *(v0 + 96);
  v14 = *&v7[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_bundleIdentifier];

  sub_238758830();
  *(swift_allocObject() + 16) = v7;
  v15 = v7;
  sub_23875AA40();

  (*(v13 + 8))(v12, v30);
  sub_238439884(v29, &qword_27DF12E00, &unk_238763FC0);
  (*(v11 + 8))(v28, v31);
LABEL_6:
  v19 = *(v0 + 216);
  v18 = *(v0 + 224);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v22 = *(v0 + 176);
  v23 = *(v0 + 152);
  v25 = *(v0 + 120);
  v24 = *(v0 + 128);
  v26 = *(v0 + 112);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_2386C953C()
{
  v1[2] = v0;
  v1[3] = sub_23875ED50();
  v1[4] = sub_23875ED40();
  v3 = sub_23875ECE0();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_2386C95D8, v3, v2);
}

uint64_t sub_2386C95D8()
{
  v1 = [*(v0 + 16) navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 viewControllers];

    v4 = sub_238449184(0, &qword_27DF11DA8, 0x277D75D28);
    v5 = sub_23875EC80();

    if (v5 >> 62)
    {
LABEL_31:
      v6 = sub_23875F3A0();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        v7 = 0;
        v8 = v5 & 0xC000000000000001;
        v36 = v5 + 32;
        v37 = v5 & 0xFFFFFFFFFFFFFF8;
        v9 = &selRef_returnDeadline;
        v33 = v5 & 0xC000000000000001;
        v34 = v6;
        v39 = v5;
        v35 = v4;
        while (2)
        {
          if (v8)
          {
            v10 = MEMORY[0x23EE63F70](v7, v5);
          }

          else
          {
            if (v7 >= *(v37 + 16))
            {
              goto LABEL_42;
            }

            v10 = *(v36 + 8 * v7);
          }

          v11 = v10;
          v12 = __OFADD__(v7, 1);
          v13 = v7 + 1;
          if (!v12)
          {
            v38 = v13;
            v5 = [v10 v9[219]];
            v14 = sub_23875EC80();

            if (v14 >> 62)
            {
              v40 = sub_23875F3A0();
            }

            else
            {
              v40 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v15 = 0;
            while (v40 != v15)
            {
              if ((v14 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x23EE63F70](v15, v14);
              }

              else
              {
                if (v15 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_30;
                }

                v17 = *(v14 + 8 * v15 + 32);
              }

              v18 = v17;
              if (__OFADD__(v15, 1))
              {
                __break(1u);
LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

              v4 = v0;
              v19 = *(v0 + 24);
              v5 = sub_23875ED40();
              sub_23875ECE0();
              if ((swift_task_isCurrentExecutor() & 1) == 0)
              {
                swift_task_reportUnexpectedExecutor();
              }

              swift_getObjectType();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v21 = NSStringFromClass(ObjCClassFromMetadata);
              v22 = sub_23875EA80();
              v24 = v23;

              if (v22 == 0xD00000000000002FLL && 0x80000002387904E0 == v24)
              {

LABEL_28:

                v25 = *(v0 + 32);

                goto LABEL_38;
              }

              v16 = sub_23875F630();

              ++v15;
              if (v16)
              {
                goto LABEL_28;
              }
            }

            v4 = v35;
            v7 = v38;
            v5 = v39;
            v8 = v33;
            v9 = &selRef_returnDeadline;
            if (v38 != v34)
            {
              continue;
            }

            goto LABEL_32;
          }

          break;
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return MEMORY[0x282198120]();
      }
    }

LABEL_32:
  }

  sub_23875BF10();
  v26 = MEMORY[0x23EE609E0]();
  v27 = sub_23875BEF0();

  if (v27)
  {
    *(v0 + 56) = MEMORY[0x23EE609E0]();
    v28 = *(MEMORY[0x277D37CB0] + 4);
    v29 = swift_task_alloc();
    *(v0 + 64) = v29;
    *v29 = v0;
    v29[1] = sub_2386C9A30;

    return MEMORY[0x282198120]();
  }

  v30 = *(v0 + 32);
LABEL_38:

  v31 = *(v0 + 8);

  return v31(1);
}

uint64_t sub_2386C9A30(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 72) = a1;

  v5 = *(v2 + 48);
  v6 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_2386C9B78, v6, v5);
}

uint64_t sub_2386C9B78()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2386C9BDC(void *a1)
{
  v2 = sub_23875E5C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875E5E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238449184(0, &qword_27DF12280, 0x277D85C78);
  v12 = sub_23875F0A0();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_2386CFEB8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_238461548;
  aBlock[3] = &block_descriptor_17;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  sub_23875E5D0();
  v17[1] = MEMORY[0x277D84F90];
  sub_2386CFED8(&qword_27DF12288, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12290, &qword_23877A568);
  sub_238650CBC();
  sub_23875F310();
  MEMORY[0x23EE63B90](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

id sub_2386C9E9C(void *a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [a1 specifier];
  if (result)
  {
    v3 = result;
    v4 = sub_23875ECD0();
    v5 = sub_23875EA50();
    [v3 setProperty:v4 forKey:v5];

    [a1 reloadSpecifiers];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2386CA15C(void (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = v1;
  v138 = a1;
  v3 = sub_23875C1E0();
  v141 = *(v3 - 1);
  v142 = v3;
  v4 = *(v141 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v117 - v8;
  MEMORY[0x28223BE20](v10);
  v135 = &v117 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14300, &unk_23877FB48);
  v12 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v128 = &v117 - v13;
  v130 = sub_23875BC40();
  v129 = *(v130 - 8);
  v14 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v134 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09968, &unk_2387640D0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v133 = &v117 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09970, &qword_2387648B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v131 = &v117 - v21;
  v22 = sub_23875B650();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v132 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v123 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v126 = &v117 - v29;
  v30 = sub_2387587E0();
  v31 = *(v30 - 8);
  v139 = v30;
  v140 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v120 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v122 = &v117 - v35;
  MEMORY[0x28223BE20](v36);
  v125 = &v117 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v121 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v124 = &v117 - v43;
  MEMORY[0x28223BE20](v44);
  v46 = &v117 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v117 - v48;
  MEMORY[0x28223BE20](v50);
  v136 = &v117 - v51;
  MEMORY[0x28223BE20](v52);
  v137 = &v117 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v117 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v117 - v58;
  MEMORY[0x28223BE20](v60);
  v62 = &v117 - v61;
  v63 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_specifierForAccountStartDate;
  swift_beginAccess();
  v64 = *&v2[v63];
  if (v64)
  {
    if (!*(v64 + 16))
    {
LABEL_10:
      (*(v140 + 56))(v62, 1, 1, v139);
      sub_238439884(v62, &qword_27DF0B328, &qword_238768050);
      sub_23875C120();
      v74 = sub_23875C1B0();
      v75 = sub_23875EFE0();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_2383F8000, v74, v75, "selectedAccountStartDate should exists", v76, 2u);
        MEMORY[0x23EE64DF0](v76, -1, -1);
      }

      return (*(v141 + 8))(v9, v142);
    }

    v119 = v2;

    v65 = sub_238547BE0(v138);
    if ((v66 & 1) == 0)
    {

      goto LABEL_10;
    }

    sub_23843981C(*(v64 + 56) + *(v39 + 72) * v65, v56, &qword_27DF0B328, &qword_238768050);
    sub_23854CEA4(v56, v59);
    v67 = v139;
    v68 = v140;
    v69 = *(v140 + 48);
    if (v69(v59, 1, v139) == 1)
    {

      sub_238439884(v59, &qword_27DF0B328, &qword_238768050);
      goto LABEL_10;
    }

    v118 = *(v68 + 32);
    v118(v62, v59, v67);
    v138 = *(v68 + 56);
    v138(v62, 0, 1, v67);
    sub_238439884(v62, &qword_27DF0B328, &qword_238768050);
    v77 = v119;
    v78 = *&v119[OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_timeDateSpecifier];
    if (v78)
    {
      v79 = v78;
      v80 = sub_23875EA50();
      v142 = v79;
      v81 = [v79 propertyForKey_];

      if (v81)
      {
        sub_23875F2E0();
        swift_unknownObjectRelease();
      }

      else
      {
        v143 = 0u;
        v144 = 0u;
      }

      v86 = v137;
      v145[0] = v143;
      v145[1] = v144;
      if (*(&v144 + 1))
      {
        v87 = v139;
        v88 = swift_dynamicCast() ^ 1;
        v89 = v86;
      }

      else
      {
        sub_238439884(v145, &qword_27DF0A4A8, &qword_238767840);
        v89 = v86;
        v88 = 1;
        v87 = v139;
      }

      v138(v89, v88, 1, v87);
      if (v69(v86, 1, v87) == 1)
      {

        v90 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
        swift_beginAccess();
        sub_23843981C(v77 + v90, v49, &qword_27DF0B328, &qword_238768050);
        if (v69(v49, 1, v87) == 1)
        {
          sub_238439884(v49, &qword_27DF0B328, &qword_238768050);
LABEL_33:
          v99 = v136;
          v100 = sub_23875BE20();
          (*(*(v100 - 8) + 56))(v131, 1, 1, v100);
          v101 = sub_23875BE40();
          (*(*(v101 - 8) + 56))(v133, 1, 1, v101);
          v102 = v132;
          sub_23875B620();
          v103 = v134;
          sub_23875BBF0();
LABEL_40:
          sub_23863A8A4(v102, v103, v99);
LABEL_46:
          v112 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
          swift_beginAccess();
          sub_2386CFBCC(v99, v77 + v112);
          swift_endAccess();
          [v77 reloadSpecifiers];

          sub_238439884(v99, &qword_27DF0B328, &qword_238768050);
          return sub_238439884(v137, &qword_27DF0B328, &qword_238768050);
        }

        v96 = v125;
        v97 = v118;
        v118(v125, v49, v87);
        v98 = v126;
        sub_2387587B0();
        if ((*(v129 + 48))(v98, 1, v130) == 1)
        {
          (*(v140 + 8))(v96, v87);
          sub_238439884(v98, &qword_27DF12E00, &unk_238763FC0);
          v77 = v119;
          goto LABEL_33;
        }

LABEL_41:
        sub_238439884(v98, &qword_27DF12E00, &unk_238763FC0);
        v99 = v136;
        v97(v136, v96, v87);
        v138(v99, 0, 1, v87);
        v77 = v119;
        goto LABEL_46;
      }

      sub_23843981C(v86, v46, &qword_27DF0B328, &qword_238768050);
      result = (v69)(v46, 1, v87);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v91 = sub_2387587D0();
      v92 = *(v140 + 8);
      v140 += 8;
      v92(v46, v87);
      if (v91)
      {
        v93 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_initialAccountStartDate;
        v77 = v119;
        swift_beginAccess();
        v94 = v77 + v93;
        v95 = v124;
        sub_23843981C(v94, v124, &qword_27DF0B328, &qword_238768050);
        if (v69(v95, 1, v87) == 1)
        {
          sub_238439884(v95, &qword_27DF0B328, &qword_238768050);
        }

        else
        {
          v96 = v122;
          v97 = v118;
          v118(v122, v95, v87);
          v98 = v123;
          sub_2387587B0();
          if ((*(v129 + 48))(v98, 1, v130) != 1)
          {
            goto LABEL_41;
          }

          v92(v96, v87);
          sub_238439884(v98, &qword_27DF12E00, &unk_238763FC0);
          v77 = v119;
        }

        v109 = sub_23875BE20();
        (*(*(v109 - 8) + 56))(v131, 1, 1, v109);
        v110 = sub_23875BE40();
        (*(*(v110 - 8) + 56))(v133, 1, 1, v110);
        v102 = v132;
        sub_23875B620();
        v103 = v134;
        sub_23875BBF0();
        v99 = v136;
        goto LABEL_40;
      }

      v104 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
      v77 = v119;
      swift_beginAccess();
      v105 = *(v127 + 48);
      v106 = v77 + v104;
      v107 = v128;
      sub_23843981C(v106, v128, &qword_27DF0B328, &qword_238768050);
      sub_23843981C(v137, v107 + v105, &qword_27DF0B328, &qword_238768050);
      v108 = v87;
      if (v69(v107, 1, v87) == 1)
      {
        if (v69((v107 + v105), 1, v87) == 1)
        {

          sub_238439884(v107, &qword_27DF0B328, &qword_238768050);
          return sub_238439884(v137, &qword_27DF0B328, &qword_238768050);
        }
      }

      else
      {
        v111 = v121;
        sub_23843981C(v107, v121, &qword_27DF0B328, &qword_238768050);
        if (v69((v107 + v105), 1, v87) != 1)
        {
          v113 = v120;
          v118(v120, (v107 + v105), v108);
          sub_2386CFED8(&qword_27DF14318, MEMORY[0x277CC7078]);
          v114 = sub_23875E9E0();
          v77 = v119;
          v115 = v111;
          v116 = v114;
          v92(v113, v108);
          v92(v115, v108);
          sub_238439884(v107, &qword_27DF0B328, &qword_238768050);
          if (v116)
          {

            return sub_238439884(v137, &qword_27DF0B328, &qword_238768050);
          }

LABEL_45:
          v99 = v136;
          sub_23843981C(v137, v136, &qword_27DF0B328, &qword_238768050);
          goto LABEL_46;
        }

        v92(v111, v87);
      }

      sub_238439884(v107, &qword_27DF14300, &unk_23877FB48);
      goto LABEL_45;
    }

    v82 = v135;
    sub_23875C120();
    v83 = sub_23875C1B0();
    v84 = sub_23875EFE0();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_2383F8000, v83, v84, "Expected timeDateSpecifier to exists", v85, 2u);
      MEMORY[0x23EE64DF0](v85, -1, -1);
    }

    return (*(v141 + 8))(v82, v142);
  }

  else
  {
    sub_23875C120();
    v70 = sub_23875C1B0();
    v71 = sub_23875EFE0();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2383F8000, v70, v71, "specifierForAccountStartDate should exists", v72, 2u);
      MEMORY[0x23EE64DF0](v72, -1, -1);
    }

    return (*(v141 + 8))(v6, v142);
  }
}

void sub_2386CB4E0(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5();
}

id sub_2386CB5C4(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23875EA50();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_23875B730();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2386CB6A0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2386CB798;

  return v7(a1);
}

uint64_t sub_2386CB798()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2386CB890(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_23875F3A0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_23875F4A0();
  *v1 = result;
  return result;
}

uint64_t sub_2386CB930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_238547890(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23854A3C8();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_23875BCB0();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = sub_2387587E0();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_2386CBDA8(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_2387587E0();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2386CBAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_238547BE0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23854ACA4();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
    v20 = *(v13 - 8);
    sub_23854CEA4(v12 + *(v20 + 72) * v8, a2);
    sub_2386CC49C(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_2386CBC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_238547BE0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23854AECC();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_238758680();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_2386CC67C(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_238758680();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_2386CBDA8(int64_t a1, uint64_t a2)
{
  v4 = sub_23875BCB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_23875F330();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_2386CFED8(&qword_27DF0A200, MEMORY[0x277CC95F0]);
      v24 = sub_23875E950();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(sub_2387587E0() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2386CC0EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23875F330() + 1) & ~v5;
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 40);
      v11 = *(a2 + 48) + 24 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_23875F700();
      if (v14)
      {
        v15 = 1;
      }

      else
      {
        MEMORY[0x23EE641F0](0);
        v15 = v12;
        v12 = v13;
      }

      MEMORY[0x23EE641F0](v15);
      MEMORY[0x23EE641F0](v12);
      result = sub_23875F760();
      v16 = result & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v16)
      {
LABEL_13:
        v17 = *(a2 + 48);
        v18 = v17 + 24 * v3;
        v19 = (v17 + v9);
        if (24 * v3 < v9 || v18 >= v19 + 24 || v3 != v6)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

void sub_2386CC2D4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23875F330() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_23875EA80();
      sub_23875F700();
      v11 = v10;
      sub_23875EB30();
      v12 = sub_23875F760();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_2386CC49C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23875F330() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_23875F1A0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050) - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_2386CC67C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23875F330() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_23875F1A0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8 || v3 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v8 && v3 < v12)
      {
        goto LABEL_5;
      }

      v15 = *(a2 + 48);
      v16 = (v15 + 8 * v3);
      v17 = (v15 + 8 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_238758680() - 8) + 72);
      v20 = v19 * v3;
      v21 = v18 + v19 * v3;
      v22 = v19 * v6;
      v23 = v18 + v19 * v6 + v19;
      if (v20 < v22 || v21 >= v23)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v22)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

_OWORD *sub_2386CC844(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23853B46C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23854A224();
      v11 = v19;
      goto LABEL_8;
    }

    sub_238548690(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_23853B46C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23875F680();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_23846F7C4(a1, v23);
  }

  else
  {
    sub_2386CD2F4(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_2386CC994(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23875BCB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_238547890(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23854A3C8();
      goto LABEL_7;
    }

    sub_238548948(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_238547890(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2386CD360(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23875F680();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = sub_2387587E0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

unint64_t sub_2386CCB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_238547964(a2, a3, a4 & 1);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 >= v18 && (a5 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v20 >= v18 && (a5 & 1) == 0)
  {
    v21 = result;
    sub_23854A404();
    result = v21;
    goto LABEL_8;
  }

  sub_238548998(v18, a5 & 1);
  v22 = *v6;
  result = sub_238547964(a2, a3, a4 & 1);
  if ((v19 & 1) == (v23 & 1))
  {
LABEL_8:
    v24 = *v6;
    if (v19)
    {
      *(v24[7] + 8 * result) = a1;
      return result;
    }

    v24[(result >> 6) + 8] |= 1 << result;
    v25 = v24[6] + 24 * result;
    *v25 = a2;
    *(v25 + 8) = a3;
    *(v25 + 16) = a4 & 1;
    *(v24[7] + 8 * result) = a1;
    v26 = v24[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v17)
    {
      v24[2] = v27;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_23875F680();
  __break(1u);
  return result;
}

id sub_2386CCCEC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_2385477FC(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_2385483BC(v15, a4 & 1);
      v19 = *v5;
      v10 = sub_2385477FC(a3);
      if ((v16 & 1) != (v20 & 1))
      {
LABEL_18:
        type metadata accessor for PKAnalyticsKey(0);
        result = sub_23875F680();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_23854A0B4();
      v10 = v18;
    }
  }

  v21 = *v5;
  if (v16)
  {
    v22 = (v21[7] + 16 * v10);
    v23 = v22[1];
    *v22 = a1;
    v22[1] = a2;
  }

  v21[(v10 >> 6) + 8] |= 1 << v10;
  *(v21[6] + 8 * v10) = a3;
  v25 = (v21[7] + 16 * v10);
  *v25 = a1;
  v25[1] = a2;
  v26 = v21[2];
  v14 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v27;

  return a3;
}

uint64_t sub_2386CCE60(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_238758A00();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_238547B0C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1 & 1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_23854A8C0();
    goto LABEL_7;
  }

  sub_238549140(result, a3 & 1);
  v22 = *v4;
  result = sub_238547B0C(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_23875F680();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_2386CD4A8(v15, v12, a1 & 1, v21);
}

id sub_2386CD000(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_238547BE0(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_15;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 >= v12 && (a3 & 1) != 0)
  {
LABEL_7:
    v15 = *v4;
    if (v13)
    {
LABEL_8:
      v16 = v15[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
      return sub_2385309FC(a1, v16 + *(*(v17 - 8) + 72) * v9, &qword_27DF0B328, &qword_238768050);
    }

    goto LABEL_11;
  }

  if (v14 >= v12 && (a3 & 1) == 0)
  {
    sub_23854ACA4();
    goto LABEL_7;
  }

  sub_2385497B4(v12, a3 & 1);
  v19 = *v4;
  v20 = sub_238547BE0(a2);
  if ((v13 & 1) != (v21 & 1))
  {
LABEL_15:
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    result = sub_23875F680();
    __break(1u);
    return result;
  }

  v9 = v20;
  v15 = *v4;
  if (v13)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2386CD560(v9, a2, a1, v15);

  return a2;
}

id sub_2386CD174(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_238547BE0(a2);
  v10 = *(v7 + 16);
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = *(v7 + 24);
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_23854AECC();
      goto LABEL_7;
    }

    sub_238549D68(v12, a3 & 1);
    v23 = *v4;
    v24 = sub_238547BE0(a2);
    if ((v13 & 1) == (v25 & 1))
    {
      v9 = v24;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_238449184(0, &qword_27DF0AE38, 0x277D3FAD8);
    result = sub_23875F680();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = sub_238758680();
    v18 = *(v17 - 8);
    v19 = *(v18 + 40);
    v20 = v17;
    v21 = v16 + *(v18 + 72) * v9;

    return v19(v21, a1, v20);
  }

LABEL_13:
  sub_2386CD600(v9, a2, a1, v15);

  return a2;
}

_OWORD *sub_2386CD2F4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23846F7C4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2386CD360(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23875BCB0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_2387587E0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

unint64_t sub_2386CD454(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4 & 1;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_2386CD4A8(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_238758A00();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2386CD560(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  result = sub_23854CEA4(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2386CD600(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_238758680();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_2386CD6AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238449A7C;

  return sub_2386C88C0(a1, v4, v5, v6);
}

uint64_t sub_2386CD774(uint64_t a1)
{
  v2 = sub_23875C1E0();
  v179 = *(v2 - 8);
  v180 = v2;
  v3 = *(v179 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v148 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v161 = &v148 - v7;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DC30, &unk_23876E260);
  v8 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v166 = &v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v170 = &v148 - v11;
  MEMORY[0x28223BE20](v12);
  v169 = &v148 - v13;
  v14 = sub_23875BE00();
  v167 = *(v14 - 8);
  v168 = v14;
  v15 = *(v167 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF14398, &qword_23877FC40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v172 = &v148 - v20;
  v21 = sub_23875BE20();
  v173 = *(v21 - 8);
  v174 = v21;
  v22 = *(v173 + 64);
  MEMORY[0x28223BE20](v21);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v160 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v164 = &v148 - v28;
  MEMORY[0x28223BE20](v29);
  v162 = &v148 - v30;
  MEMORY[0x28223BE20](v31);
  v165 = &v148 - v32;
  MEMORY[0x28223BE20](v33);
  v163 = &v148 - v34;
  MEMORY[0x28223BE20](v35);
  v171 = &v148 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v148 - v38;
  v40 = sub_23875BC40();
  v184 = *(v40 - 8);
  v41 = v184[8];
  MEMORY[0x28223BE20](v40);
  v176 = &v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v178 = &v148 - v44;
  MEMORY[0x28223BE20](v45);
  v177 = &v148 - v46;
  MEMORY[0x28223BE20](v47);
  v181 = &v148 - v48;
  MEMORY[0x28223BE20](v49);
  v182 = &v148 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v54 = &v148 - v53;
  v55 = sub_2387587E0();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v58 = &v148 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v59;
  v62 = v61;
  sub_23843981C(a1, v54, &qword_27DF0B328, &qword_238768050);
  if ((*(v60 + 48))(v54, 1, v62) == 1)
  {
    sub_238439884(v54, &qword_27DF0B328, &qword_238768050);
    return 1701736302;
  }

  (*(v60 + 32))(v58, v54, v62);
  if (sub_2387587D0())
  {
    (*(v60 + 8))(v58, v62);
    return 7105633;
  }

  v158 = v62;
  v159 = v58;
  sub_2387587B0();
  v64 = v184;
  v65 = v184 + 6;
  v66 = v184[6];
  v67 = v40;
  if (v66(v39, 1, v40) == 1)
  {
    sub_238439884(v39, &qword_27DF12E00, &unk_238763FC0);
    sub_23875C120();
    v68 = sub_23875C1B0();
    v69 = sub_23875EFE0();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2383F8000, v68, v69, "In limited sharing state, but currentStartDate is nil.", v70, 2u);
      MEMORY[0x23EE64DF0](v70, -1, -1);
    }

    (*(v179 + 8))(v5, v180);
    (*(v60 + 8))(v159, v158);
    return 0xD000000000000015;
  }

  v156 = v66;
  v71 = v64 + 4;
  v72 = v64[4];
  v73 = v64;
  v74 = v182;
  v155 = v71;
  v154 = v72;
  v72(v182, v39, v40);
  v75 = v181;
  sub_23875BAE0();
  v76 = sub_23875BBD0();
  v79 = v73[1];
  v78 = v73 + 1;
  v77 = v79;
  v79(v75, v67);
  if (v76)
  {
    v77(v74, v67);
LABEL_11:
    (*(v60 + 8))(v159, v158);
    return 0x5F646574696D696CLL;
  }

  v152 = v65;
  v80 = v67;
  v81 = v183;
  sub_23875BDF0();
  sub_23875BC30();
  v82 = v75;
  v83 = v177;
  sub_23875BD50();
  v157 = v80;
  v77(v82, v80);
  v84 = v78;
  v85 = v178;
  sub_23875BD50();
  if (sub_23875BBD0())
  {
    v86 = v157;
    v77(v85, v157);
    v77(v83, v86);
    (*(v173 + 8))(v81, v174);
    v77(v74, v86);
    (*(v60 + 8))(v159, v158);
    return 0x5F646574696D696CLL;
  }

  v151 = v77;
  v153 = v84;
  v148 = v60;
  v150 = *(v18 + 48);
  v149 = *(v18 + 64);
  v87 = v167;
  v88 = v168;
  v89 = *(v167 + 104);
  v89(v17, *MEMORY[0x277CC9968], v168);
  v90 = v172;
  sub_23875BDE0();
  v91 = *(v87 + 8);
  v91(v17, v88);
  v92 = *MEMORY[0x277CC9988];
  v89(v17, v92, v88);
  sub_23875BDE0();
  v91(v17, v88);
  v89(v17, v92, v88);
  v93 = v90;
  sub_23875BDE0();
  v91(v17, v88);
  v94 = v184;
  v95 = v184[2];
  v96 = v176;
  v97 = v157;
  v95(v176, v178, v157);
  v98 = v171;
  v95(v171, v96, v97);
  v99 = v94[7];
  v184 = v94 + 7;
  v168 = v99;
  v99(v98, 0, 1, v97);
  v100 = *(v175 + 48);
  v101 = v169;
  sub_23843981C(v93, v169, &qword_27DF12E00, &unk_238763FC0);
  v102 = v101;
  sub_23843981C(v98, v101 + v100, &qword_27DF12E00, &unk_238763FC0);
  v103 = v101;
  v104 = v156;
  v105 = v97;
  if (v156(v103, 1, v97) == 1)
  {
    sub_238439884(v98, &qword_27DF12E00, &unk_238763FC0);
    v106 = v104(v102 + v100, 1, v97);
    v60 = v148;
    v107 = v177;
    v108 = v170;
    if (v106 == 1)
    {
      sub_238439884(v102, &qword_27DF12E00, &unk_238763FC0);
LABEL_31:
      v136 = v151;
      v151(v176, v105);
      sub_238439884(v172, &qword_27DF14398, &qword_23877FC40);
      v136(v178, v105);
      v136(v107, v105);
      (*(v173 + 8))(v183, v174);
      v136(v182, v105);
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  v109 = v163;
  sub_23843981C(v102, v163, &qword_27DF12E00, &unk_238763FC0);
  v110 = v104(v102 + v100, 1, v97);
  v111 = v151;
  v108 = v170;
  if (v110 == 1)
  {
    sub_238439884(v171, &qword_27DF12E00, &unk_238763FC0);
    v111(v109, v105);
    v60 = v148;
LABEL_20:
    sub_238439884(v102, &qword_27DF0DC30, &unk_23876E260);
    goto LABEL_21;
  }

  v132 = v181;
  v154(v181, v102 + v100, v105);
  sub_2386CFED8(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  v133 = v109;
  v134 = v111;
  v135 = sub_23875E9E0();
  v134(v132, v157);
  sub_238439884(v171, &qword_27DF12E00, &unk_238763FC0);
  v134(v133, v157);
  v105 = v157;
  sub_238439884(v102, &qword_27DF12E00, &unk_238763FC0);
  v60 = v148;
  v107 = v177;
  if (v135)
  {
    goto LABEL_31;
  }

LABEL_21:
  v112 = v165;
  v95(v165, v176, v105);
  v113 = v112;
  v168(v112, 0, 1, v105);
  v114 = *(v175 + 48);
  v115 = v172;
  sub_23843981C(v172 + v150, v108, &qword_27DF12E00, &unk_238763FC0);
  v116 = v157;
  sub_23843981C(v112, v108 + v114, &qword_27DF12E00, &unk_238763FC0);
  v117 = v156;
  if (v156(v108, 1, v116) == 1)
  {
    sub_238439884(v112, &qword_27DF12E00, &unk_238763FC0);
    v118 = v117(v108 + v114, 1, v116);
    v119 = v166;
    v120 = v151;
    if (v118 == 1)
    {
      sub_238439884(v108, &qword_27DF12E00, &unk_238763FC0);
LABEL_39:
      v120(v176, v116);
      sub_238439884(v115, &qword_27DF14398, &qword_23877FC40);
      v120(v178, v116);
      v120(v177, v116);
      (*(v173 + 8))(v183, v174);
      v120(v182, v116);
      (*(v60 + 8))(v159, v158);
      return 0x5F646574696D696CLL;
    }

    goto LABEL_26;
  }

  v121 = v162;
  sub_23843981C(v108, v162, &qword_27DF12E00, &unk_238763FC0);
  v122 = v117(v108 + v114, 1, v116);
  v119 = v166;
  v120 = v151;
  if (v122 == 1)
  {
    sub_238439884(v113, &qword_27DF12E00, &unk_238763FC0);
    v120(v121, v116);
LABEL_26:
    sub_238439884(v108, &qword_27DF0DC30, &unk_23876E260);
    goto LABEL_27;
  }

  v144 = v108 + v114;
  v145 = v181;
  v154(v181, v144, v116);
  sub_2386CFED8(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  LODWORD(v171) = sub_23875E9E0();
  v151(v145, v157);
  sub_238439884(v113, &qword_27DF12E00, &unk_238763FC0);
  v151(v121, v157);
  v120 = v151;
  v116 = v157;
  sub_238439884(v108, &qword_27DF12E00, &unk_238763FC0);
  if (v171)
  {
    goto LABEL_39;
  }

LABEL_27:
  v123 = v164;
  v154(v164, v176, v116);
  v168(v123, 0, 1, v116);
  v124 = *(v175 + 48);
  v125 = v115;
  sub_23843981C(v115 + v149, v119, &qword_27DF12E00, &unk_238763FC0);
  v126 = v157;
  sub_23843981C(v123, v119 + v124, &qword_27DF12E00, &unk_238763FC0);
  v127 = v156;
  if (v156(v119, 1, v126) == 1)
  {
    sub_238439884(v123, &qword_27DF12E00, &unk_238763FC0);
    v128 = v127(v119 + v124, 1, v126);
    v129 = v158;
    v130 = v159;
    v131 = v125;
    if (v128 == 1)
    {
      sub_238439884(v119, &qword_27DF12E00, &unk_238763FC0);
LABEL_41:
      sub_238439884(v131, &qword_27DF14398, &qword_23877FC40);
      v120(v178, v126);
      v120(v177, v126);
      (*(v173 + 8))(v183, v174);
      v120(v182, v126);
      (*(v60 + 8))(v130, v129);
      return 0x5F646574696D696CLL;
    }

    goto LABEL_34;
  }

  v137 = v160;
  sub_23843981C(v119, v160, &qword_27DF12E00, &unk_238763FC0);
  if (v127(v119 + v124, 1, v126) == 1)
  {
    sub_238439884(v164, &qword_27DF12E00, &unk_238763FC0);
    v120(v137, v126);
    v129 = v158;
    v130 = v159;
    v131 = v125;
LABEL_34:
    sub_238439884(v119, &qword_27DF0DC30, &unk_23876E260);
    v138 = v161;
    goto LABEL_35;
  }

  v146 = v181;
  v154(v181, v119 + v124, v126);
  sub_2386CFED8(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  v147 = sub_23875E9E0();
  v120(v146, v157);
  sub_238439884(v164, &qword_27DF12E00, &unk_238763FC0);
  v120(v137, v157);
  v126 = v157;
  sub_238439884(v119, &qword_27DF12E00, &unk_238763FC0);
  v129 = v158;
  v130 = v159;
  v138 = v161;
  v131 = v125;
  if (v147)
  {
    goto LABEL_41;
  }

LABEL_35:
  sub_23875C120();
  v139 = sub_23875C1B0();
  v140 = sub_23875EFE0();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 0;
    _os_log_impl(&dword_2383F8000, v139, v140, "Limited sharing state with an unexpected selectedDate.", v141, 2u);
    v142 = v141;
    v130 = v159;
    MEMORY[0x23EE64DF0](v142, -1, -1);
  }

  (*(v179 + 8))(v138, v180);
  sub_238439884(v131, &qword_27DF14398, &qword_23877FC40);
  v143 = v157;
  v120(v178, v157);
  v120(v177, v143);
  (*(v173 + 8))(v183, v174);
  v120(v182, v143);
  (*(v60 + 8))(v130, v129);
  return 0xD000000000000013;
}

void sub_2386CEE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_23875C1E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2386CD774(a2);
  v15 = v14;
  if (v13 == sub_2386CD774(a1) && v15 == v16)
  {
  }

  else
  {
    v17 = sub_23875F630();

    if ((v17 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
      inited = swift_initStackObject();
      v24 = *MEMORY[0x277D383D8];
      *(inited + 32) = *MEMORY[0x277D383D8];
      *(inited + 16) = xmmword_238763300;
      *(inited + 40) = a3;
      *(inited + 48) = a4;
      v25 = *MEMORY[0x277D384B8];
      *(inited + 56) = *MEMORY[0x277D384B8];
      *(inited + 64) = 0xD000000000000024;
      *(inited + 72) = 0x8000000238785040;
      v26 = v24;

      v27 = v25;
      *(inited + 80) = sub_23875EA50();
      *(inited + 88) = v13;
      *(inited + 96) = v15;
      sub_23854B138(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
      swift_arrayDestroy();
      v28 = objc_opt_self();
      v29 = *MEMORY[0x277D38568];
      type metadata accessor for PKAnalyticsKey(0);
      sub_2386CFED8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
      v30 = sub_23875E910();

      [v28 subject:v29 sendEvent:v30];

      return;
    }
  }

  sub_23875C120();

  v18 = sub_23875C1B0();
  v19 = sub_23875EFC0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v31 = v21;
    *v20 = 136315138;
    v22 = sub_2384615AC(v13, v15, &v31);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_2383F8000, v18, v19, "Analytics: Sharing option effectively unchanged (%s), skipping redundant log.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x23EE64DF0](v21, -1, -1);
    MEMORY[0x23EE64DF0](v20, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v12, v8);
}

char *sub_2386CF244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5, uint64_t *a6)
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v10 = a4;
  v6 = a3;
  v9 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v8 = &v7[a1 + 4];
  sub_238449184(0, a5, a6);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13)
  {
    v12 = v14 >> 62;
    if (!(v14 >> 62))
    {
      result = v7[2];
      v17 = &result[-v9];
      if (!__OFSUB__(result, v9))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_23875F3A0();
    v17 = &result[-v9];
    if (!__OFSUB__(result, v9))
    {
LABEL_6:
      v18 = &v8[v6];
      v19 = &v11[v9];
      if (v18 != v19 || v18 >= &v19[8 * v17])
      {
        memmove(v18, v19, 8 * v17);
      }

      if (v12)
      {
        result = sub_23875F3A0();
      }

      else
      {
        result = v7[2];
      }

      if (!__OFADD__(result, v13))
      {
        v7[2] = &result[v13];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v6 > 0)
  {
    *v8 = v10;
    result = v10;
    if (v6 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_2386CF368(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, uint64_t *a5)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    v7 = a4;
    v8 = a3;
    v9 = a2;
    v10 = a1;
    v11 = *v6;
    v12 = *v6 >> 62;
    if (!v12)
    {
      result = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_23875F3A0();
  if (result < v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  v14 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12)
  {
    v16 = sub_23875F3A0();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = (v16 + v15);
  if (!v17)
  {
    sub_2386CB890(result);
    return sub_2386CF244(v10, v9, 1, v8, v7, v5);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SingleAccountSharingChoiceController()
{
  result = qword_27DF14378;
  if (!qword_27DF14378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2386CF4B4()
{
  sub_2386CF5E4(319, &qword_27DF14388, MEMORY[0x277CC95F0]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2386CF5E4(319, &qword_27DF14390, MEMORY[0x277CC7078]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2386CF5E4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_2386CF638()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC12FinanceKitUI36SingleAccountSharingChoiceController_currentAccountStartDate;
  swift_beginAccess();
  sub_23843981C(v0 + v8, v7, &qword_27DF0B328, &qword_238768050);
  v9 = sub_2387587E0();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  result = sub_238439884(v7, &qword_27DF0B328, &qword_238768050);
  if (v11 != 1)
  {
    (*(v10 + 56))(v4, 1, 1, v9);
    swift_beginAccess();
    sub_2385309FC(v4, v0 + v8, &qword_27DF0B328, &qword_238768050);
    swift_endAccess();
    return [v0 reloadSpecifiers];
  }

  return result;
}