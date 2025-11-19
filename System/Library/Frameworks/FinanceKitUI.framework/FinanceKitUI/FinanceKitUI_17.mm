void sub_2385DC3B0(uint64_t a1)
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

  v7 = a1 + *(type metadata accessor for TrackShipmentButton(0) + 28);
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
  v11 = sub_23875B860();
  [v10 setURL_];
}

uint64_t sub_2385DC5B0()
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

uint64_t sub_2385DC750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v52 = sub_23875C450();
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  v53 = type metadata accessor for OrderImageModel();
  v8 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for OrderProviderLogo(0);
  v47 = *(v51 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x28223BE20](v51);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF104D0, &qword_2387757B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  *v14 = sub_23875D020();
  *(v14 + 1) = 0;
  v14[16] = 1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF104D8, &qword_2387757C0) + 44)];
  sub_2385DCD28(v1, v55);
  v48 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF104E0, &qword_2387757C8);
  sub_2385DF294();
  sub_23875DBF0();
  v57[2] = v55[2];
  v58[0] = v56[0];
  *(v58 + 9) = *(v56 + 9);
  v57[0] = v55[0];
  v57[1] = v55[1];
  sub_238439884(v57, &qword_27DF104E0, &qword_2387757C8);
  sub_2385DEDEC(v1, &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderProviderLogo);
  v16 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v17 = swift_allocObject();
  sub_2385DED64(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for OrderProviderLogo);
  v18 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10500, &unk_2387757E8) + 36)];
  v19 = &v18[*(sub_23875C6E0() + 20)];
  sub_23875ED60();

  *v18 = &unk_2387757E0;
  *(v18 + 1) = v17;
  v20 = v51;
  v21 = *(v2 + *(v51 + 28));
  v22 = *(v2 + *(v51 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2387632F0;
  v24 = v20[12];
  sub_2384D4E38(v7);
  v25 = v50;
  v26 = v46;
  v27 = v52;
  (*(v50 + 104))(v46, *MEMORY[0x277CDF3D0], v52);
  v28 = sub_23875C440();
  v29 = *(v25 + 8);
  v29(v26, v27);
  v29(v7, v27);
  v30 = 16;
  if ((v28 & 1) == 0)
  {
    v30 = 0;
  }

  v31 = 8;
  if (v28)
  {
    v31 = 24;
  }

  v32 = *(v2 + v30);
  v33 = *(v2 + v31);

  *(v23 + 32) = v32;
  *(v23 + 40) = v34;
  v35 = v20[6];
  v36 = v53;
  v37 = *(v53 + 24);
  v38 = sub_23875AF90();
  v39 = v49;
  (*(*(v38 - 8) + 16))(&v49[v37], v2 + v35, v38);
  v40 = sub_2387588A0();
  sub_2384D4E38(v39 + v36[9]);
  v41 = v2 + v20[13];
  sub_2384D5200(v39 + v36[10]);
  *v39 = v21;
  v39[1] = v22;
  v39[2] = v23;
  *(v39 + v36[7]) = 0;
  *(v39 + v36[8]) = v40;
  v42 = v54;
  sub_2384396E4(v48, v54, &qword_27DF104D0, &qword_2387757B8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10508, &qword_2387757F8);
  return sub_2385DED64(v39, v42 + *(v43 + 52), type metadata accessor for OrderImageModel);
}

__n128 sub_2385DCD28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875E0E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v9 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = type metadata accessor for OrderProviderLogo(0);
  v11 = (a1 + *(v10 + 36));
  v12 = *v11;
  v13 = *(v11 + 2);
  v28[0] = v12;
  *&v28[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  MEMORY[0x23EE62DC0](v26, v14);
  if (*&v26[0])
  {
    v15 = *&v26[0];
    sub_23875E0C0();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v16 = sub_23875E150();
    v22[1] = v9;
    v17 = v16;

    (*(v5 + 8))(v8, v4);
    v18 = *(a1 + *(v10 + 32));
    sub_23875E4A0();
    sub_23875C5C0();
    LOBYTE(v26[0]) = 1;
    *(v28 + 6) = v28[5];
    *(&v28[1] + 6) = v28[6];
    *(&v28[2] + 6) = v29;
    v23[0] = v17;
    v23[1] = 0;
    *v24 = 1;
    *&v24[2] = v28[0];
    *&v24[18] = v28[1];
    *&v24[34] = v28[2];
    *&v24[48] = *(&v29 + 1);
    v28[0] = v17;
    v28[1] = *v24;
    v28[2] = *&v24[16];
    v28[3] = *&v24[32];
    *&v28[4] = *(&v29 + 1);
    v25 = 0;
    BYTE8(v28[4]) = 0;
    sub_23843981C(v23, v26, &qword_27DF0A150, &unk_238766130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A150, &unk_238766130);
    sub_238464B48();
    sub_23875D1B0();

    sub_238439884(v23, &qword_27DF0A150, &unk_238766130);
  }

  else
  {
    v19 = sub_23875E020();
    LOBYTE(v23[0]) = 1;
    *&v28[0] = v19;
    BYTE8(v28[4]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A150, &unk_238766130);
    sub_238464B48();
    sub_23875D1B0();
  }

  v28[3] = v27[0];
  *(&v28[3] + 9) = *(v27 + 9);
  v28[0] = v26[0];
  v28[1] = v26[1];
  v20 = v28[3];
  *(a2 + 32) = v26[2];
  *(a2 + 48) = v20;
  *(a2 + 57) = *(&v28[3] + 9);
  result = v28[1];
  *a2 = v28[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_2385DD0A8(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = sub_23875ED50();
  v1[8] = sub_23875ED40();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_2385DD158;

  return sub_2385DD358();
}

uint64_t sub_2385DD158(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 80) = a1;

  v6 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385DD29C, v6, v5);
}

uint64_t sub_2385DD29C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  v4 = (v3 + *(type metadata accessor for OrderProviderLogo(0) + 36));
  v5 = *v4;
  v6 = *(v4 + 2);
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AB80, &qword_238766950);
  sub_23875E2F0();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2385DD358()
{
  v1[13] = v0;
  v2 = type metadata accessor for OrderProviderLogo(0);
  v1[14] = v2;
  v3 = *(v2 - 8);
  v1[15] = v3;
  v1[16] = *(v3 + 64);
  v1[17] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v5 = sub_23875C450();
  v1[19] = v5;
  v6 = *(v5 - 8);
  v1[20] = v6;
  v7 = *(v6 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v8 = type metadata accessor for OrderImageModel();
  v1[23] = v8;
  v9 = *(v8 - 8);
  v1[24] = v9;
  v1[25] = *(v9 + 64);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  sub_23875ED50();
  v1[28] = sub_23875ED40();
  v11 = sub_23875ECE0();
  v1[29] = v11;
  v1[30] = v10;

  return MEMORY[0x2822009F8](sub_2385DD564, v11, v10);
}

uint64_t sub_2385DD564()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v54 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v6 + v7[7]);
  v9 = *(v6 + v7[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_2387632F0;
  v53 = v7[12];
  sub_2384D4E38(v2);
  (*(v4 + 104))(v3, *MEMORY[0x277CDF3D0], v5);
  v10 = sub_23875C440();
  v11 = *(v4 + 8);
  v11(v3, v5);
  v11(v2, v5);
  v12 = 16;
  if ((v10 & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 8;
  if (v10)
  {
    v13 = 24;
  }

  v14 = *(v6 + v13);
  *(v55 + 32) = *(v6 + v12);
  *(v55 + 40) = v14;
  v52 = v7[6];
  v15 = v54[6];
  v16 = sub_23875AF90();
  v17 = *(*(v16 - 8) + 16);

  v17(&v1[v15], v6 + v52, v16);
  v18 = sub_2387588A0();
  sub_2384D4E38(&v1[v54[9]]);
  v19 = v6 + v7[13];
  sub_2384D5200(&v1[v54[10]]);
  *v1 = v8;
  *(v1 + 1) = v9;
  *(v1 + 2) = v55;
  v1[v54[7]] = 0;
  *&v1[v54[8]] = v18;
  v20 = v6 + v7[11];
  sub_2384D5228(v0 + 16);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v21);
  v23 = (*(v22 + 24))(v1, v21, v22);
  v24 = *(v0 + 216);
  if (v23)
  {
    v25 = v23;
    v26 = *(v0 + 224);

    v27 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v25 scale:0 orientation:1.0];

    sub_2385DF5F4(v24, type metadata accessor for OrderImageModel);
    v29 = *(v0 + 208);
    v28 = *(v0 + 216);
    v31 = *(v0 + 168);
    v30 = *(v0 + 176);
    v33 = *(v0 + 136);
    v32 = *(v0 + 144);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v34 = *(v0 + 8);

    return v34(v27);
  }

  else
  {
    v37 = *(v0 + 200);
    v36 = *(v0 + 208);
    v38 = *(v0 + 192);
    v39 = *(v0 + 136);
    v40 = *(v0 + 144);
    v42 = *(v0 + 120);
    v41 = *(v0 + 128);
    v43 = *(v0 + 104);
    sub_23875ED60();
    v44 = sub_23875ED80();
    (*(*(v44 - 8) + 56))(v40, 0, 1, v44);
    sub_2385DEDEC(v24, v36, type metadata accessor for OrderImageModel);
    sub_2385DEDEC(v43, v39, type metadata accessor for OrderProviderLogo);
    sub_23845C998(v0 + 16, v0 + 56);
    v45 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v46 = (v37 + *(v42 + 80) + v45) & ~*(v42 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    *(v47 + 24) = 0;
    sub_2385DED64(v36, v47 + v45, type metadata accessor for OrderImageModel);
    sub_2385DED64(v39, v47 + v46, type metadata accessor for OrderProviderLogo);
    sub_2384D5830((v0 + 56), v47 + ((v41 + v46 + 7) & 0xFFFFFFFFFFFFFFF8));
    v48 = sub_2385C9244(0, 0, v40, &unk_238775818, v47);
    *(v0 + 248) = v48;
    sub_238439884(v40, &unk_27DF09920, &qword_238764D80);
    v49 = *(MEMORY[0x277D857E0] + 4);
    v50 = swift_task_alloc();
    *(v0 + 256) = v50;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
    *v50 = v0;
    v50[1] = sub_2385DDA88;

    return MEMORY[0x282200460](v0 + 96, v48, v51);
  }
}

uint64_t sub_2385DDA88()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v7 = *v0;

  v4 = *(v1 + 240);
  v5 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_2385DDBCC, v5, v4);
}

uint64_t sub_2385DDBCC()
{
  v2 = v0[27];
  v1 = v0[28];

  sub_2385DF5F4(v2, type metadata accessor for OrderImageModel);
  v3 = v0[12];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10(v3);
}

uint64_t sub_2385DDCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a1;
  v6[8] = a4;
  v7 = sub_23875C1E0();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v10 = sub_238758350();
  v6[15] = v10;
  v11 = *(v10 - 8);
  v6[16] = v11;
  v12 = *(v11 + 64) + 15;
  v6[17] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AF98, &unk_238775820) - 8) + 64) + 15;
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2385DDE28, 0, 0);
}

uint64_t sub_2385DDE28()
{
  v1 = v0[8];
  v0[21] = *(v1 + *(type metadata accessor for OrderImageModel() + 32));
  v0[22] = *v1;
  v0[23] = v1[1];
  sub_23875ED50();
  v0[24] = sub_23875ED40();
  v3 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2385DDEE4, v3, v2);
}

uint64_t sub_2385DDEE4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 72);

  v3 = v2 + *(type metadata accessor for OrderProviderLogo(0) + 40);
  sub_2384D55B0(v0 + 16);

  return MEMORY[0x2822009F8](sub_2385DDF68, 0, 0);
}

uint64_t sub_2385DDF68()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v1 + 16);
  v5 = *(v3 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[25] = v7;
  *v7 = v0;
  v7[1] = sub_2385DE0A0;

  return v9(v4, v2, v3);
}

uint64_t sub_2385DE0A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v7 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v5 = sub_2385DE66C;
  }

  else
  {
    v5 = sub_2385DE1B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2385DE1B4()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    if (*(v1 + 16))
    {
      (*(*(v0 + 128) + 16))(*(v0 + 152), v1 + ((*(*(v0 + 128) + 80) + 32) & ~*(*(v0 + 128) + 80)), *(v0 + 120));
      v2 = 0;
    }

    else
    {
      v2 = 1;
    }

    v6 = *(v0 + 152);
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);

    (*(v8 + 56))(v6, v2, 1, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  sub_2384396E4(*(v0 + 152), v9, &qword_27DF0AF98, &unk_238775820);
  sub_23843981C(v9, v10, &qword_27DF0AF98, &unk_238775820);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v13 = *(v0 + 144);
    sub_238439884(*(v0 + 160), &qword_27DF0AF98, &unk_238775820);
    v14 = v13;
LABEL_23:
    sub_238439884(v14, &qword_27DF0AF98, &unk_238775820);
    v45 = 0;
    goto LABEL_24;
  }

  (*(*(v0 + 128) + 32))(*(v0 + 136), *(v0 + 144), *(v0 + 120));
  sub_238758330();
  v16 = v15;
  sub_238758330();
  if (v16 / v17 > 5.0)
  {
    v18 = *(v0 + 112);
    sub_23875C180();
    v19 = sub_23875C1B0();
    v20 = sub_23875EFE0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2383F8000, v19, v20, "Order provider tracking logo should have maximum aspect ratio of 5:1", v21, 2u);
      MEMORY[0x23EE64DF0](v21, -1, -1);
    }

    v22 = *(v0 + 160);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = *(v0 + 88);
    v28 = *(v0 + 96);

    (*(v28 + 8))(v26, v27);
    (*(v24 + 8))(v23, v25);
    goto LABEL_22;
  }

  v29 = *(v0 + 136);
  v30 = *(v0 + 176) * *(v0 + 168);
  type metadata accessor for CGImage(0);
  result = sub_238758310();
  if (v30 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_28;
  }

  v33 = *(v0 + 168);
  if (*(v0 + 176) * v33 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = *(v0 + 184) * v33;
  if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_29;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v35 = result;
  v36 = v32;
  v37 = MEMORY[0x23EE63A20]();
  sub_23844C954(v35, v36);
  v22 = *(v0 + 160);
  v39 = *(v0 + 128);
  v38 = *(v0 + 136);
  v40 = *(v0 + 120);
  if (!v37)
  {
    (*(v39 + 8))(*(v0 + 136), *(v0 + 120));
LABEL_22:
    v14 = v22;
    goto LABEL_23;
  }

  v41 = *(v0 + 80);
  v42 = *(v0 + 64);
  v43 = v41[3];
  v44 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v43);
  (*(v44 + 8))(v37, v42, v43, v44);
  v45 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v37 scale:0 orientation:1.0];

  (*(v39 + 8))(v38, v40);
  sub_238439884(v22, &qword_27DF0AF98, &unk_238775820);
LABEL_24:
  v47 = *(v0 + 152);
  v46 = *(v0 + 160);
  v49 = *(v0 + 136);
  v48 = *(v0 + 144);
  v51 = *(v0 + 104);
  v50 = *(v0 + 112);
  **(v0 + 56) = v45;

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_2385DE66C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_23875C180();
  v3 = v1;
  v4 = sub_23875C1B0();
  v5 = sub_23875EFE0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v4, v5, "Error loading order provider logo: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v13 = *(v0 + 152);
  v12 = *(v0 + 160);
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v17 = *(v0 + 104);
  v16 = *(v0 + 112);
  **(v0 + 56) = 0;

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2385DE8E0@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  v9 = a2();
  v11 = v10;
  v12 = a3();
  v14 = v13;
  v15 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v16 = a5 + *(v15 + 24);
  a4();
  v17 = *(v15 + 28);
  v18 = sub_23875AF90();
  result = (*(*(v18 - 8) + 16))(a5 + v17, a1, v18);
  *a5 = v9;
  a5[1] = v11;
  a5[2] = v12;
  a5[3] = v14;
  return result;
}

uint64_t sub_2385DE9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderProviderLogoButton.ViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D5E0, &qword_23876D620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v31 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10488, &qword_2387755F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v31 - v15;
  v18 = *(v17 + 56);
  sub_23843981C(a1, &v31 - v15, &qword_27DF0D5E0, &qword_23876D620);
  sub_23843981C(a2, &v16[v18], &qword_27DF0D5E0, &qword_23876D620);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_238439884(v16, &qword_27DF0D5E0, &qword_23876D620);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23843981C(v16, v12, &qword_27DF0D5E0, &qword_23876D620);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_2385DF5F4(v12, type metadata accessor for OrderProviderLogoButton.ViewModel);
LABEL_8:
    v24 = &qword_27DF10488;
    v25 = &qword_2387755F0;
LABEL_23:
    sub_238439884(v16, v24, v25);
    goto LABEL_24;
  }

  sub_2385DED64(&v16[v18], v8, type metadata accessor for OrderProviderLogoButton.ViewModel);
  v26 = *v12 == *v8 && v12[1] == v8[1];
  if (!v26 && (sub_23875F630() & 1) == 0 || (v12[2] == v8[2] ? (v27 = v12[3] == v8[3]) : (v27 = 0), !v27 && (sub_23875F630() & 1) == 0 || (v28 = *(v4 + 24), (sub_23875B890() & 1) == 0)))
  {
    sub_2385DF5F4(v8, type metadata accessor for OrderProviderLogoButton.ViewModel);
    sub_2385DF5F4(v12, type metadata accessor for OrderProviderLogoButton.ViewModel);
    v24 = &qword_27DF0D5E0;
    v25 = &qword_23876D620;
    goto LABEL_23;
  }

  v29 = MEMORY[0x23EE5FA60](v12 + *(v4 + 28), v8 + *(v4 + 28));
  sub_2385DF5F4(v8, type metadata accessor for OrderProviderLogoButton.ViewModel);
  sub_2385DF5F4(v12, type metadata accessor for OrderProviderLogoButton.ViewModel);
  sub_238439884(v16, &qword_27DF0D5E0, &qword_23876D620);
  if ((v29 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  v20 = type metadata accessor for OrderDetailsShippingTracking.ViewModel(0);
  v21 = *(v20 + 20);
  if ((sub_23875B890() & 1) == 0)
  {
LABEL_24:
    v23 = 0;
    return v23 & 1;
  }

  v22 = *(v20 + 24);
  v23 = sub_23875AD70();
  return v23 & 1;
}

uint64_t sub_2385DED64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385DEDEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385DEEA8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2385DEF18()
{
  type metadata accessor for OrderDetailsShippingTracking.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385DF1F8(319, &qword_27DF0A0C8, &qword_27DF09540, &unk_238763800, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_238462AAC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385DF010()
{
  sub_23875AF90();
  if (v0 <= 0x3F)
  {
    sub_2385DF1F8(319, &qword_27DF0AB68, &qword_27DF09540, &unk_238763800, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_2385DF1F8(319, &qword_27DF0FFB8, &qword_27DF0FFC0, qword_238774958, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2385DF1F8(319, &qword_27DF0B948, &qword_27DF0B950, qword_2387747F0, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2385D87D0(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2385D87D0(319, &qword_27DF0B940, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2385DF1F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2385DF294()
{
  result = qword_27DF104E8;
  if (!qword_27DF104E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF104E0, &qword_2387757C8);
    sub_2385DF318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF104E8);
  }

  return result;
}

unint64_t sub_2385DF318()
{
  result = qword_27DF104F0;
  if (!qword_27DF104F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF104F8, &qword_2387757D0);
    sub_238464B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF104F0);
  }

  return result;
}

uint64_t sub_2385DF3A4()
{
  v2 = *(type metadata accessor for OrderProviderLogo(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238449A7C;

  return sub_2385DD0A8(v0 + v3);
}

uint64_t sub_2385DF470(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OrderImageModel() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for OrderProviderLogo(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2384494A4;

  return sub_2385DDCAC(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_2385DF5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2385DF674()
{
  result = qword_27DF10538;
  if (!qword_27DF10538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10530, &qword_238775850);
    sub_23843A3E8(&qword_27DF10540, &qword_27DF10528, &qword_238775848);
    sub_23843A3E8(&qword_27DF10548, &qword_27DF10518, &qword_238775838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10538);
  }

  return result;
}

void sub_2385DF780()
{
  sub_23875B940();
  if (v0 <= 0x3F)
  {
    sub_23875AD80();
    if (v1 <= 0x3F)
    {
      sub_2385D87D0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2385DF864();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385DF864()
{
  if (!qword_27DF0F4F8)
  {
    v0 = sub_23875C470();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0F4F8);
    }
  }
}

unint64_t sub_2385DF8B4()
{
  result = qword_27DF105F8;
  if (!qword_27DF105F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10600, &qword_238775958);
    sub_2385DF674();
    sub_2385DEEA8(&qword_27DF10550, type metadata accessor for TrackShipmentButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF105F8);
  }

  return result;
}

uint64_t sub_2385DF9B8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t objectdestroy_93Tm()
{
  v1 = type metadata accessor for TrackShipmentButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_23875B940();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_23875AD80();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_23875C6D0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  sub_2385A9698(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2385DFC18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23875CBD0();
  *a1 = result;
  return result;
}

uint64_t sub_2385DFC70()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  result = v1;
  if ((~v1 & 0xF000000000000004) != 0)
  {
    if ((v1 & 0x8000000000000000) == 0)
    {
      return result;
    }

    sub_2385E3728(v1);
  }

  return 0;
}

uint64_t sub_2385DFD00@<X0>(char *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  result = v4;
  v3 = 3;
  if ((~v4 & 0xF000000000000004) != 0)
  {
    if (v4 < 0)
    {
      v3 = v4;
    }

    else
    {
      v3 = 3;
    }

    result = sub_2385E3728(v4);
  }

  *a1 = v3;
  return result;
}

uint64_t sub_2385DFD9C(_BYTE *a1)
{
  if (*a1 != 3)
  {
    sub_23875ED50();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t OrderList.init(model:)@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_2385DFF3C;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  type metadata accessor for OrderManagementModel(0);
  sub_2385E37F4(&qword_27DF12A40, type metadata accessor for OrderManagementModel);
  result = sub_23875C7A0();
  *(a1 + 24) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2385DFF3C()
{
  v0 = type metadata accessor for OrderSearchModel(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();

  return sub_2385E2CE8(v3);
}

uint64_t OrderList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v109 = a1;
  v101 = sub_23875D310();
  v98 = *(v101 - 8);
  v3 = *(v98 + 64);
  MEMORY[0x28223BE20](v101);
  v97 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_23875CE00();
  v92 = *(v93 - 8);
  v5 = *(v92 + 64);
  MEMORY[0x28223BE20](v93);
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23875D230();
  v83 = *(v84 - 8);
  v7 = *(v83 + 64);
  MEMORY[0x28223BE20](v84);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OrderListSearchContainer(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10620, &qword_238775A30);
  v85 = *(v88 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v88);
  v110 = &v83 - v15;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10628, &qword_238775A38);
  v87 = *(v89 - 8);
  v16 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v86 = &v83 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10630, &qword_238775A40);
  v18 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v90 = &v83 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10638, &qword_238775A48);
  v96 = *(v99 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v95 = &v83 - v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10640, &qword_238775A50);
  v100 = *(v102 - 8);
  v22 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v111 = &v83 - v23;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10648, &qword_238775A58);
  v105 = *(v107 - 8);
  v24 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v83 - v25;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10650, &qword_238775A60);
  v106 = *(v108 - 8);
  v26 = *(v106 + 64);
  MEMORY[0x28223BE20](v108);
  v104 = &v83 - v27;
  v28 = v2[1];
  v124 = *v2;
  v125 = v28;
  v126 = v2[2];
  v127 = *(v2 + 48);
  type metadata accessor for OrderSearchModel(0);
  sub_2385E37F4(&qword_27DF10658, type metadata accessor for OrderSearchModel);
  sub_23875C490();
  *(v13 + *(v10 + 20)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *v13 = sub_23875C7A0();
  v13[1] = v30;
  v31 = v13 + *(v10 + 24);
  *v31 = KeyPath;
  v31[8] = 0;
  sub_23875C4A0();
  swift_getKeyPath();
  sub_23875C7C0();

  sub_23875D220();
  v32 = sub_2385E37F4(&qword_27DF10660, type metadata accessor for OrderListSearchContainer);
  sub_23875DB20();

  (*(v83 + 8))(v9, v84);
  sub_2385E2400(v13);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v33 = qword_2814F1B90;
  v34 = sub_23875EA50();
  v35 = sub_23875EA50();
  v36 = sub_23875EA50();
  v37 = [v33 localizedStringForKey:v34 value:v35 table:v36];

  v38 = sub_23875EA80();
  v40 = v39;

  v118 = v38;
  v119 = v40;
  v115 = v10;
  v116 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = sub_2384397A8();
  v43 = MEMORY[0x277D837D0];
  v44 = v86;
  v45 = v88;
  v46 = v110;
  sub_23875DC70();

  (*(v85 + 8))(v46, v45);
  v47 = v92;
  v48 = v91;
  v49 = v93;
  (*(v92 + 104))(v91, *MEMORY[0x277CDDDC0], v93);
  v118 = v45;
  v119 = v43;
  v120 = OpaqueTypeConformance2;
  v121 = v42;
  swift_getOpaqueTypeConformance2();
  v50 = v90;
  v51 = v89;
  sub_23875DE50();
  (*(v47 + 8))(v48, v49);
  (*(v87 + 8))(v44, v51);
  v52 = swift_allocObject();
  v53 = v125;
  *(v52 + 16) = v124;
  *(v52 + 32) = v53;
  *(v52 + 48) = v126;
  *(v52 + 64) = v127;
  v54 = v94;
  v55 = (v50 + *(v94 + 36));
  *v55 = sub_2385E245C;
  v55[1] = v52;
  v55[2] = 0;
  v55[3] = 0;
  sub_2385E2464(&v124, &v118);
  v56 = v97;
  sub_23875D300();
  v57 = sub_2385E249C();
  v58 = v95;
  v59 = v101;
  sub_23875DF50();
  (*(v98 + 8))(v56, v59);
  sub_23841B0E0(v50);
  v110 = *(&v125 + 1);
  v98 = v126;
  type metadata accessor for OrderManagementModel(0);
  sub_2385E37F4(&qword_27DF12A40, type metadata accessor for OrderManagementModel);
  sub_23875C7B0();
  swift_getKeyPath();
  sub_23875C7C0();

  v112 = v115;
  v113 = v116;
  LOBYTE(v114) = v117;
  v60 = swift_allocObject();
  v61 = v125;
  *(v60 + 16) = v124;
  *(v60 + 32) = v61;
  *(v60 + 48) = v126;
  *(v60 + 64) = v127;
  MEMORY[0x28223BE20](v60);
  sub_2385E2464(&v124, &v118);
  v118 = v54;
  v119 = v59;
  v120 = v57;
  v121 = MEMORY[0x277CDE0D0];
  v62 = swift_getOpaqueTypeConformance2();
  v63 = sub_2385E2650();
  v64 = v99;
  sub_23875DEB0();

  (*(v96 + 8))(v58, v64);

  sub_23875C7B0();
  swift_getKeyPath();
  sub_23875C7C0();

  v110 = v117;
  v112 = v115;
  v113 = v116;
  v114 = v117;
  v65 = swift_allocObject();
  v66 = v125;
  *(v65 + 16) = v124;
  *(v65 + 32) = v66;
  *(v65 + 48) = v126;
  *(v65 + 64) = v127;
  sub_2385E2464(&v124, &v118);
  v67 = type metadata accessor for OrderManagementModel.ConfirmationData(0);
  v118 = v64;
  v119 = &type metadata for OrderManagementModel.ImportError;
  v120 = v62;
  v121 = v63;
  v68 = swift_getOpaqueTypeConformance2();
  v81 = sub_2385E37F4(&qword_27DF10678, type metadata accessor for OrderManagementModel.ConfirmationData);
  v82 = sub_2385E26AC();
  v69 = v103;
  v70 = v102;
  v71 = v111;
  sub_23875DEE0();

  (*(v100 + 8))(v71, v70);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10688, &qword_238775B48);
  v118 = v70;
  v119 = v67;
  v120 = &type metadata for OrderPreviewSheet;
  v121 = v68;
  v122 = v81;
  v123 = v82;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10690, &qword_238775B50);
  v75 = sub_23843A3E8(&qword_27DF10698, &qword_27DF10690, &qword_238775B50);
  v118 = v74;
  v119 = v75;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v104;
  v78 = v107;
  sub_23875DEF0();
  (*(v105 + 8))(v69, v78);
  v118 = v78;
  v119 = v72;
  v120 = v73;
  v121 = v76;
  swift_getOpaqueTypeConformance2();
  v79 = v108;
  sub_23875DE00();
  return (*(v106 + 8))(v77, v79);
}

uint64_t sub_2385E0FE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2385E1064(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2385E10E8(uint64_t *a1)
{
  v2 = sub_23875CDB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  type metadata accessor for OrderSearchModel(0);
  sub_2385E37F4(&qword_27DF10658, type metadata accessor for OrderSearchModel);
  v10 = sub_23875C490();
  v24 = *(a1 + 48);
  v11 = a1[5];
  v23 = v11;
  v12 = v24;
  if (v24 == 1)
  {
    v13 = v11;
  }

  else
  {

    sub_23875EFF0();
    v14 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v23, &qword_27DF0B760, &qword_2387688A0);
    (*(v3 + 8))(v6, v2);
    v13 = v22;
  }

  v15 = *(v10 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context);
  *(v10 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context) = v13;
  v16 = v13;

  sub_2386DA510();

  if (v12)
  {
    v17 = v11;
  }

  else
  {

    sub_23875EFF0();
    v18 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v23, &qword_27DF0B760, &qword_2387688A0);
    (*(v3 + 8))(v6, v2);
    v11 = v22;
  }

  v19 = a1[4];
  sub_238660580(v11);
}

uint64_t sub_2385E1408@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106C8, &unk_238775D88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v28 - v5;
  v35 = *a1;
  v7 = v35;
  v33 = OrderManagementModel.ImportError.errorTitle.getter();
  v34 = v8;
  sub_2384397A8();
  v9 = sub_23875DAA0();
  v30 = v10;
  v31 = v9;
  v28[1] = v11;
  v29 = v12;
  v35 = v7;
  sub_2385E374C();
  v33 = sub_23875F690();
  v34 = v13;
  sub_23875DAA0();
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

  v33 = v19;
  v34 = v21;
  v22 = sub_23875DAA0();
  v24 = v23;
  LOBYTE(v19) = v25;
  sub_23875DF90();
  sub_2384397FC(v22, v24, v19 & 1);

  v26 = sub_23875DFA0();
  (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  return sub_23875DF80();
}

uint64_t sub_2385E16B4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a2(a1);
}

uint64_t sub_2385E177C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  result = v5;
  if ((~v5 & 0xF000000000000004) == 0)
  {
    goto LABEL_4;
  }

  if (v5 < 0)
  {
    sub_2385E3728(v5);
LABEL_4:
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_2385E1818@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14[0] = 1;

  sub_23875E330();
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = swift_allocObject();
  v10 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a2 + 32);
  *(v9 + 64) = *(a2 + 48);
  v11 = swift_allocObject();
  v12 = *(a2 + 16);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  *(v11 + 64) = *(a2 + 48);
  sub_2385E2464(a2, v14);
  sub_2385E2464(a2, v14);

  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = sub_2385E35B8;
  *(a3 + 40) = v9;
  *(a3 + 48) = sub_2385E362C;
  *(a3 + 56) = v11;
  return result;
}

uint64_t sub_2385E19A0(uint64_t a1)
{
  v1 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2385E1A18()
{
  v0 = sub_23875D2A0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10690, &qword_238775B50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875D250();
  type metadata accessor for OrderListDoneButton();
  sub_2385E37F4(&qword_27DF106C0, type metadata accessor for OrderListDoneButton);
  sub_23875C4D0();
  v7 = sub_23843A3E8(&qword_27DF10698, &qword_27DF10690, &qword_238775B50);
  MEMORY[0x23EE61E80](v6, v2, v7);
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_2385E1C48@<X0>(uint64_t *a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385E1D10@<X0>(uint64_t a1@<X8>)
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
  sub_23857F760(v2, &v17 - v11);
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

uint64_t sub_2385E1EFC()
{
  done = type metadata accessor for OrderListDoneButton();
  v2 = *(done - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](done - 8);
  sub_2385E2BC0(v0, v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_2385E2C24(v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
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

  v15[0] = v11;
  v15[1] = v13;
  v15[2] = sub_2385E2C88;
  v15[3] = v5;
  sub_2384B5A24();
  sub_23875DE00();
}

void sub_2385E210C()
{
  v0 = sub_23875C600();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385E1D10(v4);
  sub_23875C5F0();
  (*(v1 + 8))(v4, v0);
  v5 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v7 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v8 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v9;
  v10 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 1701736292;
  v11 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v11;
  strcpy((inited + 88), "orderDashboard");
  *(inited + 103) = -18;
  v12 = v7;
  v13 = v10;
  v14 = v11;
  v15 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v15;
  sub_2385C33E4(v5, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v21);

  v17 = *MEMORY[0x277D38548];
  v18 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385E37F4(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v19 = sub_23875E910();

  [v18 subject:v17 sendEvent:v19];
}

uint64_t sub_2385E23D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23875CA50();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2385E2400(uint64_t a1)
{
  v2 = type metadata accessor for OrderListSearchContainer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385E249C()
{
  result = qword_27DF10668;
  if (!qword_27DF10668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10630, &qword_238775A40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10628, &qword_238775A38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10620, &qword_238775A30);
    type metadata accessor for OrderListSearchContainer(255);
    sub_2385E37F4(&qword_27DF10660, type metadata accessor for OrderListSearchContainer);
    swift_getOpaqueTypeConformance2();
    sub_2384397A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10668);
  }

  return result;
}

unint64_t sub_2385E2650()
{
  result = qword_27DF10670;
  if (!qword_27DF10670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10670);
  }

  return result;
}

unint64_t sub_2385E26AC()
{
  result = qword_27DF10680;
  if (!qword_27DF10680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10680);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2385E2744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2385E278C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_2385E27EC()
{
  result = qword_27DF106A0;
  if (!qword_27DF106A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF106A8, &qword_238775C98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10648, &qword_238775A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10688, &qword_238775B48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10640, &qword_238775A50);
    type metadata accessor for OrderManagementModel.ConfirmationData(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10638, &qword_238775A48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10630, &qword_238775A40);
    sub_23875D310();
    sub_2385E249C();
    swift_getOpaqueTypeConformance2();
    sub_2385E2650();
    swift_getOpaqueTypeConformance2();
    sub_2385E37F4(&qword_27DF10678, type metadata accessor for OrderManagementModel.ConfirmationData);
    sub_2385E26AC();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10690, &qword_238775B50);
    sub_23843A3E8(&qword_27DF10698, &qword_27DF10690, &qword_238775B50);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2385E37F4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF106A0);
  }

  return result;
}

uint64_t type metadata accessor for OrderListDoneButton()
{
  result = qword_27DF106B0;
  if (!qword_27DF106B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2385E2B38()
{
  sub_23857F390();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2385E2BC0(uint64_t a1, uint64_t a2)
{
  done = type metadata accessor for OrderListDoneButton();
  (*(*(done - 8) + 16))(a2, a1, done);
  return a2;
}

uint64_t sub_2385E2C24(uint64_t a1, uint64_t a2)
{
  done = type metadata accessor for OrderListDoneButton();
  (*(*(done - 8) + 32))(a2, a1, done);
  return a2;
}

void sub_2385E2C88()
{
  v0 = *(*(type metadata accessor for OrderListDoneButton() - 8) + 80);

  sub_2385E210C();
}

uint64_t sub_2385E2CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106D8, &unk_238783E80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v63 = &v49 - v4;
  v5 = sub_23875F090();
  v61 = *(v5 - 8);
  v62 = v5;
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106E0, &qword_238775DC0);
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v51 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106E8, &qword_238775DC8);
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v54 = &v49 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106F0, &qword_238775DD0);
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v49 - v16;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF106F8, &qword_238775DD8);
  v17 = *(v50 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v50);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10700, &qword_238775DE0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10708, &qword_238775DE8);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v49 - v29;
  v67[3] = &type metadata for CSSearchQueryFactory;
  v67[4] = &protocol witness table for CSSearchQueryFactory;
  v31 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__state;
  v64 = 0;
  v65 = 0;
  v66 = 2;
  sub_23875C290();
  (*(v27 + 32))(a1 + v31, v30, v26);
  v32 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchText;
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_23875C290();
  (*(v22 + 32))(a1 + v32, v25, v21);
  v33 = OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel__searchCounter;
  v64 = 0;
  sub_23875C290();
  (*(v17 + 32))(a1 + v33, v20, v50);
  *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_context) = 0;
  v34 = (a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_searchQuery);
  v35 = MEMORY[0x277D84F90];
  *v34 = 0;
  v34[1] = 0;
  if (v35 >> 62 && sub_23875F3A0())
  {
    v36 = sub_23844CE88(MEMORY[0x277D84F90]);
  }

  else
  {
    v36 = MEMORY[0x277D84FA0];
  }

  *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_cancellableSet) = v36;
  v37 = a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_notificationToken;
  *(v37 + 32) = 0;
  *v37 = 0u;
  *(v37 + 16) = 0u;
  sub_23845C998(v67, a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderSearchModel_factory);
  swift_beginAccess();
  v38 = v51;
  sub_23875C2A0();
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  sub_23843A3E8(&qword_27DF10710, &qword_27DF106E0, &qword_238775DC0);

  v39 = v53;
  v40 = v54;
  sub_23875C320();

  (*(v52 + 8))(v38, v39);
  v41 = v60;
  sub_23875F080();
  sub_2385E37A8();
  v42 = sub_23875F0A0();
  v64 = v42;
  v43 = sub_23875F070();
  v44 = v63;
  (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
  sub_23843A3E8(&qword_27DF10718, &qword_27DF106E8, &qword_238775DC8);
  sub_2385E37F4(&qword_27DF10720, sub_2385E37A8);
  v46 = v56;
  v45 = v57;
  sub_23875C350();
  sub_238439884(v44, &qword_27DF106D8, &unk_238783E80);
  (*(v61 + 8))(v41, v62);
  (*(v55 + 8))(v40, v46);

  swift_allocObject();
  swift_weakInit();

  sub_23843A3E8(&qword_27DF10728, &qword_27DF106F0, &qword_238775DD0);
  v47 = v59;
  sub_23875C360();

  (*(v58 + 8))(v45, v47);
  swift_beginAccess();
  sub_23875C210();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v67);
  return a1;
}

uint64_t objectdestroyTm_20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_2383FC164();
  v4 = *(v0 + 48);

  sub_2384B4E98(*(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_2385E3634(uint64_t a1)
{
  if (a1)
  {
    sub_23875ED50();

    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2385E3728(uint64_t result)
{
  if ((~result & 0xF000000000000004) != 0)
  {
    return sub_2385E3740(result);
  }

  return result;
}

uint64_t sub_2385E3740(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_2385E374C()
{
  result = qword_27DF106D0;
  if (!qword_27DF106D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF106D0);
  }

  return result;
}

unint64_t sub_2385E37A8()
{
  result = qword_27DF12280;
  if (!qword_27DF12280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF12280);
  }

  return result;
}

uint64_t sub_2385E37F4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2385E3844()
{
  result = qword_27DF10730;
  if (!qword_27DF10730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10738, &unk_238775DF0);
    sub_2384B5A24();
    sub_2385E37F4(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10730);
  }

  return result;
}

uint64_t sub_2385E3900@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12EA0, &qword_238775F70);
  v37 = *(v42 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v42);
  v36 = &v33 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF107E8, &qword_238775F78);
  v4 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v33 - v5;
  v6 = type metadata accessor for OrderFileAttachmentPreview(0);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF107F0, &unk_238775F80);
  v8 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v33 - v13;
  v15 = sub_23875B940();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23843981C(v1, v14, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_238439884(v14, &qword_27DF0D040, &qword_2387676A0);
    v20 = v36;
    sub_23875C530();
    v21 = v37;
    v22 = v42;
    (*(v37 + 16))(v38, v20, v42);
    swift_storeEnumTagMultiPayload();
    sub_2385E4A64();
    sub_2385E4B0C();
    sub_23875D1B0();
    return (*(v21 + 8))(v20, v22);
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
    (*(v16 + 16))(v10, v19, v15);
    v24 = v1;
    v25 = v35;
    sub_2385E4B70(v24, v35, type metadata accessor for OrderFileAttachmentPreview);
    v26 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v27 = swift_allocObject();
    sub_2385E4BD8(v25, v27 + v26, type metadata accessor for OrderFileAttachmentPreview);
    v28 = &v10[*(type metadata accessor for PreviewController(0) + 20)];
    *v28 = sub_2385E4C40;
    v28[1] = v27;
    v29 = sub_23875C900();
    v30 = sub_23875D780();
    v31 = v38;
    v32 = &v10[*(v39 + 36)];
    *v32 = v29;
    v32[8] = v30;
    sub_23843981C(v10, v31, &qword_27DF107F0, &unk_238775F80);
    swift_storeEnumTagMultiPayload();
    sub_2385E4A64();
    sub_2385E4B0C();
    sub_23875D1B0();
    sub_238439884(v10, &qword_27DF107F0, &unk_238775F80);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t sub_2385E3DFC(uint64_t a1)
{
  v20 = sub_23875CDB0();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v19 - v8);
  v10 = sub_23875C600();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OrderFileAttachmentPreview(0);
  sub_23843981C(a1 + *(v15 + 20), v9, &unk_27DF12DF0, &unk_23877C100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_23875EFF0();
    v17 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_23875C5F0();
  return (*(v11 + 8))(v14, v10);
}

id sub_2385E4088()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CDAA58]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF107C8, &unk_238775EF0);
  sub_23875D710();
  [v0 setDataSource_];

  v1 = v0;
  v2 = [v1 navigationItem];
  sub_23875D710();
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v6 action:sel_dismiss];

  [v2 setLeftBarButtonItem_];

  v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  return v4;
}

uint64_t sub_2385E43E0()
{
  sub_2385E485C(v0 + OBJC_IVAR____TtCV12FinanceKitUI17PreviewController11Coordinator_parent);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2385E446C()
{
  result = type metadata accessor for PreviewController(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_2385E4544()
{
  result = sub_23875B940();
  if (v1 <= 0x3F)
  {
    result = sub_23846D0DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2385E45E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385E4B70(v2, v6, type metadata accessor for PreviewController);
  v7 = type metadata accessor for PreviewController.Coordinator(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  result = sub_2385E4BD8(v6, v10 + OBJC_IVAR____TtCV12FinanceKitUI17PreviewController11Coordinator_parent, type metadata accessor for PreviewController);
  *a2 = v10;
  return result;
}

uint64_t sub_2385E46A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385E4818(&qword_27DF107D0);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2385E4720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2385E4818(&qword_27DF107D0);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2385E47A0()
{
  sub_2385E4818(&qword_27DF107D0);
  sub_23875D6B0();
  __break(1u);
}

uint64_t sub_2385E4818(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2385E485C(uint64_t a1)
{
  v2 = type metadata accessor for PreviewController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2385E4900()
{
  sub_2385E49E4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2385E49E4(319, &qword_27DF0DA10, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2385E49E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2385E4A64()
{
  result = qword_27DF107F8;
  if (!qword_27DF107F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF107F0, &unk_238775F80);
    sub_2385E4818(&qword_27DF107C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF107F8);
  }

  return result;
}

unint64_t sub_2385E4B0C()
{
  result = qword_27DF09690;
  if (!qword_27DF09690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12EA0, &qword_238775F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF09690);
  }

  return result;
}

uint64_t sub_2385E4B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385E4BD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385E4C40()
{
  v1 = *(type metadata accessor for OrderFileAttachmentPreview(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2385E3DFC(v2);
}

unint64_t sub_2385E4CA0()
{
  result = qword_27DF10800;
  if (!qword_27DF10800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10808, &unk_238775F90);
    sub_2385E4A64();
    sub_2385E4B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10800);
  }

  return result;
}

uint64_t sub_2385E4D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10838, &qword_238776178);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = sub_23875D8E0();
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10840, &unk_238776180);
  (*(*(v10 - 8) + 16))(v7, a1, v10);
  v11 = &v7[*(v4 + 36)];
  *v11 = KeyPath;
  v11[1] = v8;
  sub_23875D850();
  sub_2385E5030();
  sub_23875DAF0();
  sub_2385E5114(v7);
  v12 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10858, &unk_238776190);
  v14 = a2 + *(result + 36);
  *v14 = v12;
  *(v14 + 8) = 0;
  return result;
}

uint64_t sub_2385E4EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875D8E0();
  KeyPath = swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10810, &qword_2387760C0);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10818, &qword_2387760C8) + 36));
  *v7 = KeyPath;
  v7[1] = v4;
  v8 = swift_getKeyPath();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10820, &qword_238776100) + 36);
  *v9 = v8;
  *(v9 + 8) = 0;
  v10 = sub_23875E080();
  v11 = swift_getKeyPath();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10828, &qword_238776138) + 36));
  *v12 = v11;
  v12[1] = v10;
  v13 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10830, &qword_238776170);
  v15 = a2 + *(result + 36);
  *v15 = v13;
  *(v15 + 8) = 1;
  return result;
}

unint64_t sub_2385E5030()
{
  result = qword_27DF10848;
  if (!qword_27DF10848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10838, &qword_238776178);
    sub_23843A3E8(&qword_27DF10850, &qword_27DF10840, &unk_238776180);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10848);
  }

  return result;
}

uint64_t sub_2385E5114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10838, &qword_238776178);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2385E517C()
{
  result = qword_27DF10860;
  if (!qword_27DF10860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10830, &qword_238776170);
    sub_2385E5234();
    sub_23843A3E8(&qword_27DF0BAF0, &qword_27DF0BAF8, &unk_2387690A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10860);
  }

  return result;
}

unint64_t sub_2385E5234()
{
  result = qword_27DF10868;
  if (!qword_27DF10868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10828, &qword_238776138);
    sub_2385E52EC();
    sub_23843A3E8(&qword_27DF09680, &qword_27DF09688, &qword_238764550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10868);
  }

  return result;
}

unint64_t sub_2385E52EC()
{
  result = qword_27DF10870;
  if (!qword_27DF10870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10820, &qword_238776100);
    sub_2385E53A4();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10870);
  }

  return result;
}

unint64_t sub_2385E53A4()
{
  result = qword_27DF10878;
  if (!qword_27DF10878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10818, &qword_2387760C8);
    sub_23843A3E8(&qword_27DF10880, &qword_27DF10810, &qword_2387760C0);
    sub_23843A3E8(&qword_27DF0A420, &qword_27DF0A428, &unk_23876A910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10878);
  }

  return result;
}

unint64_t sub_2385E5488()
{
  result = qword_27DF10888;
  if (!qword_27DF10888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10858, &unk_238776190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10838, &qword_238776178);
    sub_2385E5030();
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF09C68, &unk_27DF12EF0, &unk_2387646D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10888);
  }

  return result;
}

uint64_t sub_2385E5588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v31 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF108F0, &qword_2387762A8);
  v2 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF108F8, &qword_2387762B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10900, &qword_2387762B8);
  v9 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v26 - v10;
  v12 = sub_23875C880();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10908, &qword_2387762C0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v26 - v19;
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = v27 + *(type metadata accessor for OrderListActiveOrderRow(0) + 28);
  sub_2384D5138(v16);
  LOBYTE(v21) = sub_23875C860();
  (*(v13 + 8))(v16, v12);
  if (v21)
  {
    sub_2385E59C8(v11);
    sub_23843981C(v11, v8, &qword_27DF10900, &qword_2387762B8);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF10910, &qword_27DF10900, &qword_2387762B8);
    sub_23843A3E8(&qword_27DF10918, &qword_27DF108F0, &qword_2387762A8);
    sub_23875D1B0();
    v22 = v11;
    v23 = &qword_27DF10900;
    v24 = &qword_2387762B8;
  }

  else
  {
    sub_2385E6BD4(v4);
    sub_23843981C(v4, v8, &qword_27DF108F0, &qword_2387762A8);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF10910, &qword_27DF10900, &qword_2387762B8);
    sub_23843A3E8(&qword_27DF10918, &qword_27DF108F0, &qword_2387762A8);
    sub_23875D1B0();
    v22 = v4;
    v23 = &qword_27DF108F0;
    v24 = &qword_2387762A8;
  }

  sub_238439884(v22, v23, v24);
  sub_2384396E4(v20, v31, &qword_27DF10908, &qword_2387762C0);
}

uint64_t sub_2385E59C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v147 = a1;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10920, &qword_2387762C8);
  v3 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v117 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10928, &qword_2387762D0);
  v137 = *(v5 - 8);
  v138 = v5;
  v6 = *(v137 + 64);
  MEMORY[0x28223BE20](v5);
  v135 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v149 = &v117 - v9;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10930, &qword_2387762D8);
  v152 = *(v136 - 8);
  v10 = v152[8];
  MEMORY[0x28223BE20](v136);
  v134 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v151 = &v117 - v13;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10938, &qword_2387762E0);
  v14 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v140 = &v117 - v15;
  active = type metadata accessor for ActiveOrderContentItemAccessibilitySizeView(0);
  v16 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active);
  v124 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_2387590B0();
  v126 = *(v127 - 8);
  v18 = *(v126 + 64);
  MEMORY[0x28223BE20](v127);
  v120 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v118 = &v117 - v22;
  v23 = type metadata accessor for OrderListActiveOrderRow(0);
  v24 = v23 - 8;
  v132 = *(v23 - 8);
  v25 = *(v132 + 8);
  MEMORY[0x28223BE20](v23);
  v131 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v26;
  MEMORY[0x28223BE20](v27);
  v125 = &v117 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v122 = &v117 - v31;
  v130 = sub_23875B0A0();
  v129 = *(v130 - 1);
  v32 = *(v129 + 64);
  MEMORY[0x28223BE20](v130);
  v128 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v34 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121);
  v123 = &v117 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v119 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10948, &qword_2387762F0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v145 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v144 = &v117 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10950, &qword_2387762F8);
  v45 = v44 - 8;
  v46 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v143 = &v117 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v117 - v49;
  *v50 = sub_23875D030();
  *(v50 + 1) = 0;
  v50[16] = 1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10958, &unk_238776300);
  sub_2385E7E2C(v2, &v50[*(v51 + 44)]);
  v52 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v53 = *(v52 + 32);
  v54 = v2 + *(v24 + 32);
  v55 = *v54;
  v56 = *(v54 + 8);
  v156 = v55;
  v157 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v57 = v153;
  v58 = v154;
  v59 = v155;
  v60 = *(v45 + 44);
  v142 = v50;
  v61 = &v50[v60];
  sub_2385EECDC(v2 + v53, &v50[v60], type metadata accessor for OrderActionsMenuContext);
  v62 = type metadata accessor for ActionsContextMenu(0);
  v63 = &v61[*(v62 + 20)];
  *v63 = v57;
  *(v63 + 1) = v58;
  v63[16] = v59;
  v64 = *(v62 + 24);
  *&v61[v64] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v148 = v52;
  if (*(*(v2 + *(v52 + 52)) + 16) || *(*(v2 + *(v148 + 48)) + 16))
  {
    v153 = *(v2 + *(v52 + 52));
    v130 = type metadata accessor for OrderListActiveOrderRow;
    v65 = v131;
    sub_2385EECDC(v2, v131, type metadata accessor for OrderListActiveOrderRow);
    v66 = (*(v132 + 80) + 16) & ~*(v132 + 80);
    v67 = swift_allocObject();
    v132 = type metadata accessor for OrderListActiveOrderRow;
    sub_2385EE638(v65, v67 + v66, type metadata accessor for OrderListActiveOrderRow);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10960, &qword_238776338);
    sub_23843A3E8(&qword_27DF10968, &qword_27DF10960, &qword_238776338);
    v68 = sub_2385EED74(&qword_27DF10970, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView);
    sub_2385EED74(&qword_27DF10978, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
    v129 = v68;
    sub_23875E380();
    v153 = *(v2 + *(v148 + 48));
    sub_2385EECDC(v2, v65, v130);
    v69 = swift_allocObject();
    sub_2385EE638(v65, v69 + v66, v132);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10980, &qword_238776340);
    sub_23843A3E8(&qword_27DF10988, &qword_27DF10980, &qword_238776340);
    sub_2385EED74(&qword_27DF10990, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
    v70 = v149;
    sub_23875E380();
    v71 = v152[2];
    v72 = v134;
    v73 = v136;
    v71(v134, v151, v136);
    v75 = v137;
    v74 = v138;
    v76 = *(v137 + 16);
    v77 = v135;
    v76(v135, v70, v138);
    v78 = v139;
    v71(v139, v72, v73);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10998, &qword_238776348);
    v76((v78 + *(v79 + 48)), v77, v74);
    v80 = *(v75 + 8);
    v80(v77, v74);
    v81 = v152[1];
    ++v152;
    v81(v72, v73);
    sub_23843981C(v78, v140, &qword_27DF10920, &qword_2387762C8);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF109A0, &qword_27DF10920, &qword_2387762C8);
    v82 = v144;
    sub_23875D1B0();
    sub_238439884(v78, &qword_27DF10920, &qword_2387762C8);
    v80(v149, v74);
    v81(v151, v73);
    v83 = v82;
  }

  else
  {
    v90 = active;
    v91 = v140;
    v92 = sub_23875A710();
    v93 = v119;
    (*(*(v92 - 8) + 16))(v119, v2, v92);
    v94 = (v93 + *(v36 + 20));
    *v94 = 0;
    v94[1] = 0;
    v95 = v148;
    (*(v129 + 16))(v128, v2 + *(v148 + 36), v130);
    v96 = *(v95 + 40);
    v97 = v125;
    sub_2385EECDC(v2, v125, type metadata accessor for OrderListActiveOrderRow);
    v98 = v118;
    sub_23843981C(v2 + v96, v118, &qword_27DF10890, &unk_2387761A0);
    v99 = v126;
    v100 = v127;
    if ((*(v126 + 48))(v98, 1, v127) == 1)
    {
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v102 = v122;
      (*(*(v101 - 8) + 56))(v122, 1, 1, v101);
      v103 = v90;
    }

    else
    {
      (*(v99 + 32))(v120, v98, v100);
      sub_23875ED50();
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v105 = v122;
      v106 = v120;
      v107 = v125;
      v108 = sub_2385E8B9C(&v122[*(v104 + 48)]);
      v110 = v109;
      v97 = v107;

      *v105 = v108;
      v105[1] = v110;
      (*(v126 + 8))(v106, v127);
      v111 = *(*(v104 - 8) + 56);
      v112 = v104;
      v102 = v105;
      v111(v105, 0, 1, v112);
      v95 = v148;
      v103 = active;
    }

    sub_2385EF1F8(v97, type metadata accessor for OrderListActiveOrderRow);
    v113 = v121;
    v114 = v123;
    sub_2385EECDC(v2 + *(v95 + 44), &v123[*(v121 + 24)], type metadata accessor for ProductImage.ViewModel);
    sub_2385EECDC(v93, v114 + v113[7], type metadata accessor for FetchedOrderDetailsDestination);
    type metadata accessor for OrderNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(v129 + 32))(v114, v128, v130);
    sub_2384396E4(v102, v114 + v113[5], &qword_27DF10940, &qword_2387762E8);
    *(v114 + v113[8]) = 1;
    *(v114 + v113[9]) = 0;
    v115 = v124;
    sub_2385EECDC(v114, v124, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    v116 = *(v103 + 20);
    *(v115 + v116) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2385EECDC(v115, v91, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView);
    swift_storeEnumTagMultiPayload();
    sub_2385EED74(&qword_27DF10970, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView);
    sub_23843A3E8(&qword_27DF109A0, &qword_27DF10920, &qword_2387762C8);
    v83 = v144;
    sub_23875D1B0();
    sub_2385EF1F8(v115, type metadata accessor for ActiveOrderContentItemAccessibilitySizeView);
    sub_2385EF1F8(v114, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    sub_2385EF1F8(v93, type metadata accessor for FetchedOrderDetailsDestination);
  }

  v85 = v142;
  v84 = v143;
  sub_23843981C(v142, v143, &qword_27DF10950, &qword_2387762F8);
  v86 = v145;
  sub_23843981C(v83, v145, &qword_27DF10948, &qword_2387762F0);
  v87 = v147;
  sub_23843981C(v84, v147, &qword_27DF10950, &qword_2387762F8);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109A8, &qword_238776350);
  sub_23843981C(v86, v87 + *(v88 + 48), &qword_27DF10948, &qword_2387762F0);
  sub_238439884(v83, &qword_27DF10948, &qword_2387762F0);
  sub_238439884(v85, &qword_27DF10950, &qword_2387762F8);
  sub_238439884(v86, &qword_27DF10948, &qword_2387762F0);
  return sub_238439884(v84, &qword_27DF10950, &qword_2387762F8);
}

uint64_t sub_2385E6BD4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v154 = a1;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109E0, &qword_238776458);
  v3 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v142 = &v127 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109E8, &qword_238776460);
  v145 = *(v5 - 8);
  v146 = v5;
  v6 = *(v145 + 64);
  MEMORY[0x28223BE20](v5);
  v144 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v159 = &v127 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109F0, &qword_238776468);
  v157 = *(v10 - 8);
  v158 = v10;
  v11 = v157[8];
  MEMORY[0x28223BE20](v10);
  v143 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v156 = &v127 - v14;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109F8, &qword_238776470);
  v15 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v148 = &v127 - v16;
  active = type metadata accessor for ActiveOrderContentItemView(0);
  v17 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active);
  v132 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2387590B0();
  v134 = *(v135 - 8);
  v19 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v128 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v127 = &v127 - v23;
  v24 = type metadata accessor for OrderListActiveOrderRow(0);
  v25 = v24 - 8;
  v140 = *(v24 - 8);
  v26 = *(v140 + 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v27;
  MEMORY[0x28223BE20](v29);
  v133 = &v127 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v130 = &v127 - v33;
  v138 = sub_23875B0A0();
  v137 = *(v138 - 8);
  v34 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v136 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v36 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v131 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v139 = (&v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A00, &qword_238776478);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v153 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v152 = &v127 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A08, &qword_238776480);
  v47 = v46 - 8;
  v48 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v151 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v52 = &v127 - v51;
  *v52 = sub_23875CE60();
  *(v52 + 1) = 0;
  v52[16] = 0;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A10, &qword_238776488);
  sub_2385E9168(v2, &v52[*(v53 + 44)]);
  v54 = sub_23875D000();
  v55 = &v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A18, &qword_238776490) + 36)];
  *v55 = v54;
  v55[1] = sub_23843480C;
  v55[2] = 0;
  v56 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v57 = *(v56 + 32);
  v58 = v2 + *(v25 + 32);
  v59 = *v58;
  v60 = *(v58 + 8);
  v164 = v59;
  v165 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v61 = v161;
  v62 = v162;
  v63 = v163;
  v64 = *(v47 + 44);
  v65 = v56;
  v150 = v52;
  v66 = &v52[v64];
  v67 = v2;
  sub_2385EECDC(v2 + v57, v66, type metadata accessor for OrderActionsMenuContext);
  v68 = type metadata accessor for ActionsContextMenu(0);
  v69 = v66 + *(v68 + 20);
  *v69 = v61;
  *(v69 + 8) = v62;
  *(v69 + 16) = v63;
  v70 = *(v68 + 24);
  *(v66 + v70) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v71 = *(v2 + v65[13]);
  v72 = *(v71 + 16);
  v147 = v65;
  if (v72 || *(*(v2 + v65[12]) + 16))
  {
    v161 = v71;
    v139 = type metadata accessor for OrderListActiveOrderRow;
    v73 = v28;
    sub_2385EECDC(v2, v28, type metadata accessor for OrderListActiveOrderRow);
    v74 = (*(v140 + 80) + 16) & ~*(v140 + 80);
    v75 = swift_allocObject();
    v140 = type metadata accessor for OrderListActiveOrderRow;
    sub_2385EE638(v28, v75 + v74, type metadata accessor for OrderListActiveOrderRow);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10960, &qword_238776338);
    v138 = MEMORY[0x277D83980];
    sub_23843A3E8(&qword_27DF10968, &qword_27DF10960, &qword_238776338);
    v76 = sub_2385EED74(&qword_27DF10A20, type metadata accessor for ActiveOrderContentItemView);
    sub_2385EED74(&qword_27DF10978, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
    v77 = v156;
    v137 = v76;
    sub_23875E380();
    v161 = *(v2 + v147[12]);
    sub_2385EECDC(v2, v73, v139);
    v78 = swift_allocObject();
    sub_2385EE638(v73, v78 + v74, v140);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10980, &qword_238776340);
    sub_23843A3E8(&qword_27DF10988, &qword_27DF10980, &qword_238776340);
    sub_2385EED74(&qword_27DF10990, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
    v79 = v159;
    sub_23875E380();
    v80 = v158;
    v81 = v157[2];
    v82 = v143;
    v81(v143, v77, v158);
    v83 = v145;
    v84 = *(v145 + 16);
    v85 = v144;
    v86 = v79;
    v87 = v146;
    v84(v144, v86, v146);
    v88 = v142;
    v81(v142, v82, v80);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A28, &qword_238776498);
    v84((v88 + *(v89 + 48)), v85, v87);
    v90 = *(v83 + 8);
    v90(v85, v87);
    v91 = v157[1];
    v91(v82, v80);
    sub_23843981C(v88, v148, &qword_27DF109E0, &qword_238776458);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF10A30, &qword_27DF109E0, &qword_238776458);
    v92 = v152;
    sub_23875D1B0();
    sub_238439884(v88, &qword_27DF109E0, &qword_238776458);
    v90(v159, v87);
    v91(v156, v158);
  }

  else
  {
    v99 = active;
    v100 = v148;
    v101 = sub_23875A710();
    v102 = v139;
    (*(*(v101 - 8) + 16))(v139, v2, v101);
    v103 = (v102 + *(v38 + 20));
    *v103 = 0;
    v103[1] = 0;
    (*(v137 + 16))(v136, v2 + v65[9], v138);
    v104 = v65[10];
    v105 = v133;
    sub_2385EECDC(v2, v133, type metadata accessor for OrderListActiveOrderRow);
    v106 = v2 + v104;
    v107 = v127;
    sub_23843981C(v106, v127, &qword_27DF10890, &unk_2387761A0);
    v108 = v134;
    v109 = v135;
    if ((*(v134 + 48))(v107, 1, v135) == 1)
    {
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v111 = v130;
      (*(*(v110 - 8) + 56))(v130, 1, 1, v110);
      v112 = v99;
    }

    else
    {
      (*(v108 + 32))(v128, v107, v109);
      sub_23875ED50();
      sub_23875ED40();
      sub_23875ECE0();
      isCurrentExecutor = swift_task_isCurrentExecutor();
      v112 = v99;
      v111 = v130;
      if ((isCurrentExecutor & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      v115 = v128;
      v116 = v133;
      v117 = sub_2385E8B9C(v111 + *(v114 + 48));
      v119 = v118;

      *v111 = v117;
      v111[1] = v119;
      (*(v134 + 8))(v115, v135);
      v120 = *(*(v114 - 8) + 56);
      v121 = v114;
      v105 = v116;
      v120(v111, 0, 1, v121);
    }

    sub_2385EF1F8(v105, type metadata accessor for OrderListActiveOrderRow);
    v122 = v129;
    v123 = v131;
    sub_2385EECDC(v67 + v147[11], &v131[*(v129 + 24)], type metadata accessor for ProductImage.ViewModel);
    v124 = v139;
    sub_2385EECDC(v139, v123 + v122[7], type metadata accessor for FetchedOrderDetailsDestination);
    type metadata accessor for OrderNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(v137 + 32))(v123, v136, v138);
    sub_2384396E4(v111, v123 + v122[5], &qword_27DF10940, &qword_2387762E8);
    *(v123 + v122[8]) = 1;
    *(v123 + v122[9]) = 0;
    v125 = v132;
    sub_2385EECDC(v123, v132, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    v126 = *(v112 + 20);
    *(v125 + v126) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2385EECDC(v125, v100, type metadata accessor for ActiveOrderContentItemView);
    swift_storeEnumTagMultiPayload();
    sub_2385EED74(&qword_27DF10A20, type metadata accessor for ActiveOrderContentItemView);
    sub_23843A3E8(&qword_27DF10A30, &qword_27DF109E0, &qword_238776458);
    v92 = v152;
    sub_23875D1B0();
    sub_2385EF1F8(v125, type metadata accessor for ActiveOrderContentItemView);
    sub_2385EF1F8(v123, type metadata accessor for ActiveOrderContentItemView.ViewModel);
    sub_2385EF1F8(v124, type metadata accessor for FetchedOrderDetailsDestination);
  }

  v94 = v150;
  v93 = v151;
  sub_23843981C(v150, v151, &qword_27DF10A08, &qword_238776480);
  v95 = v153;
  sub_23843981C(v92, v153, &qword_27DF10A00, &qword_238776478);
  v96 = v154;
  sub_23843981C(v93, v154, &qword_27DF10A08, &qword_238776480);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A38, &qword_2387764A0);
  sub_23843981C(v95, v96 + *(v97 + 48), &qword_27DF10A00, &qword_238776478);
  sub_238439884(v92, &qword_27DF10A00, &qword_238776478);
  sub_238439884(v94, &qword_27DF10A08, &qword_238776480);
  sub_238439884(v95, &qword_27DF10A00, &qword_238776478);
  return sub_238439884(v93, &qword_27DF10A08, &qword_238776480);
}

uint64_t sub_2385E7E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B8, &qword_238776390);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  sub_23875ED50();
  v47 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v8 = sub_23875CE60();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109C0, &qword_238776398);
  sub_2385E81B4(a1, &v8[*(v9 + 44)]);
  v10 = a1 + *(type metadata accessor for OrderListActiveOrderRow.ViewModel(0) + 24);
  v11 = (v10 + *(type metadata accessor for MerchantImage.ViewModel(0) + 24));
  v12 = v11[1];
  v49 = *v11;
  v50 = v12;
  sub_2384397A8();

  v13 = sub_23875DAA0();
  v15 = v14;
  v44 = a1;
  v45 = v8;
  v17 = v16;
  sub_23875D7F0();
  v18 = sub_23875DA60();
  v20 = v19;
  v22 = v21;

  sub_2384397FC(v13, v15, v17 & 1);

  sub_23875D890();
  v41 = sub_23875D9E0();
  v24 = v23;
  v42 = v25;
  v43 = v26;
  sub_2384397FC(v18, v20, v22 & 1);

  sub_2385E87D4(&v49);
  v27 = v49;
  v28 = v50;
  LOBYTE(v13) = v51;
  v29 = v52;
  v30 = v45;
  v31 = v48;
  sub_23843981C(v45, v48, &qword_27DF109B8, &qword_238776390);
  v32 = v46;
  sub_23843981C(v31, v46, &qword_27DF109B8, &qword_238776390);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109C8, &qword_2387763A0);
  v34 = v32 + *(v33 + 48);
  v35 = v41;
  *v34 = v41;
  *(v34 + 8) = v24;
  v36 = v42;
  v37 = v42 & 1;
  *(v34 + 16) = v42 & 1;
  *(v34 + 24) = v43;
  v38 = v32 + *(v33 + 64);
  *v38 = v27;
  *(v38 + 8) = v28;
  *(v38 + 16) = v13;
  *(v38 + 24) = v29;
  v39 = v35;
  sub_23843980C(v35, v24, v36 & 1);

  sub_23843980C(v27, v28, v13);

  sub_238439884(v30, &qword_27DF109B8, &qword_238776390);
  sub_2384397FC(v27, v28, v13);

  sub_2384397FC(v39, v24, v37);

  sub_238439884(v31, &qword_27DF109B8, &qword_238776390);
}

uint64_t sub_2385E81B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109D0, &unk_2387763A8);
  v3 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v57 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  v8 = sub_23875DFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v55 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  sub_23875ED50();
  v54 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  sub_2385EECDC(a1 + active[6], v18, type metadata accessor for MerchantImage.ViewModel);
  v20 = type metadata accessor for MerchantImage(0);
  v18[*(v20 + 20)] = 1;
  v21 = *(v20 + 24);
  *&v18[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 104))(v12, *MEMORY[0x277CE0EE0], v8);
  v22 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v24 = *(v13 + 36);
  v52 = v18;
  v25 = &v18[v24];
  v26 = type metadata accessor for OrderImageStyleModifier();
  *&v25[*(v26 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v25[*(v26 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  *v25 = xmmword_2387692C0;
  *(v25 + 2) = 0;
  v25[24] = 1;
  *(v25 + 4) = v22;
  v25[40] = 0;
  if ((*(a1 + active[7]) & 1) == 0)
  {
    v27 = sub_23875E0D0();
    v31 = [objc_opt_self() systemGray2Color];
    v28 = sub_23875DFB0();
    sub_23875D820();
    sub_23875D890();
    v30 = sub_23875D900();

    v29 = swift_getKeyPath();
  }

  v50 = v28;
  v51 = v29;
  sub_2385EECDC(a1 + active[8], v7, type metadata accessor for OrderActionsMenuContext);
  v32 = type metadata accessor for OrderActionsMenu(0);
  v33 = *(v32 + 20);
  *&v7[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v34 = &v7[*(v32 + 24)];
  v58 = 0;
  sub_23875E1A0();
  v35 = v60;
  *v34 = v59;
  *(v34 + 1) = v35;
  v36 = sub_23875E080();
  v37 = swift_getKeyPath();
  v38 = v52;
  v39 = &v7[*(v53 + 36)];
  *v39 = v37;
  v39[1] = v36;
  v40 = v55;
  sub_23843981C(v38, v55, &qword_27DF0C7D0, &unk_23876B3E0);
  v41 = v57;
  sub_23843981C(v7, v57, &qword_27DF109D0, &unk_2387763A8);
  v42 = v7;
  v43 = v56;
  sub_23843981C(v40, v56, &qword_27DF0C7D0, &unk_23876B3E0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109D8, &qword_238776450);
  v45 = v43 + v44[12];
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = (v43 + v44[16]);
  *v46 = v27;
  v47 = v51;
  v46[1] = v50;
  v46[2] = v47;
  v46[3] = v30;
  sub_23843981C(v41, v43 + v44[20], &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF258(v27);
  sub_238439884(v42, &qword_27DF109D0, &unk_2387763A8);
  sub_238439884(v38, &qword_27DF0C7D0, &unk_23876B3E0);
  sub_238439884(v41, &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF2BC(v27);
  sub_238439884(v40, &qword_27DF0C7D0, &unk_23876B3E0);
}

uint64_t sub_2385E87D4@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = sub_23875BE40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23875BE20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23875BD20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2387595E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_238759290();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_23875BC40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  (*(v13 + 16))(v16, v1 + *(active + 20), v12);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759270();
  sub_2385EED74(&qword_27DF0E528, MEMORY[0x277CC7808]);
  sub_2385EED74(&qword_27DF0DC38, MEMORY[0x277CC9578]);
  v18 = sub_23875DA80();
  v20 = v19;
  v22 = v21;
  sub_23875D970();
  v23 = sub_23875DA60();
  v25 = v24;
  LOBYTE(v16) = v26;

  sub_2384397FC(v18, v20, v22 & 1);

  v38 = sub_23875D440();
  v27 = sub_23875DA20();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_2384397FC(v23, v25, v16 & 1);

  v35 = v37;
  *v37 = v27;
  v35[1] = v29;
  *(v35 + 16) = v31 & 1;
  v35[3] = v33;
  return result;
}

uint64_t sub_2385E8B9C(uint64_t a1)
{
  v2 = sub_23875BE40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_23875BE20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_23875BD20();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2387595E0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_2387590C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_238759020();
  sub_2385EED74(&qword_27DF0ADF8, MEMORY[0x277CC7708]);
  sub_238759950();
  (*(v11 + 8))(v14, v10);
  v15 = v20;
  v16 = sub_238759070();
  v17 = sub_23875DA00();
  v18 = MEMORY[0x277CE0B30];
  if (v16 <= 1)
  {
    v18 = MEMORY[0x277CE0B28];
  }

  (*(*(v17 - 8) + 104))(a1, *v18, v17);
  return v15;
}

uint64_t sub_2385E8E78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_2387590B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment(0);
  sub_23843981C(a1 + *(active + 28), v7, &qword_27DF10890, &unk_2387761A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_238439884(v7, &qword_27DF10890, &unk_2387761A0);
    v14 = *(a1 + *(active + 36));
    if (!v14)
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
      return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
    v16 = *(v15 + 48);
    v17 = v14;
    v18 = sub_23875F010();
    v20 = v19;

    *a2 = v18;
    a2[1] = v20;
    v21 = *MEMORY[0x277CE0B28];
    v22 = sub_23875DA00();
    (*(*(v22 - 8) + 104))(a2 + v16, v21, v22);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
    v23 = sub_2385E8B9C(a2 + *(v15 + 48));
    v25 = v24;
    (*(v9 + 8))(v12, v8);
    *a2 = v23;
    a2[1] = v25;
  }

  return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
}

uint64_t sub_2385E9168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A40, &qword_2387764A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A48, &qword_2387764B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
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
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A50, &qword_2387764B8);
  sub_2385E9430(a1, &v17[*(v18 + 44)]);
  *v10 = sub_23875CE60();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A58, &qword_2387764C0);
  sub_2385E9AE0(a1, &v10[*(v19 + 44)]);
  sub_23843981C(v17, v14, &qword_27DF10A48, &qword_2387764B0);
  sub_23843981C(v10, v7, &qword_27DF10A40, &qword_2387764A8);
  sub_23843981C(v14, a2, &qword_27DF10A48, &qword_2387764B0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A60, &qword_2387764C8);
  v21 = a2 + *(v20 + 48);
  *v21 = 0x4028000000000000;
  *(v21 + 8) = 0;
  sub_23843981C(v7, a2 + *(v20 + 64), &qword_27DF10A40, &qword_2387764A8);
  sub_238439884(v10, &qword_27DF10A40, &qword_2387764A8);
  sub_238439884(v17, &qword_27DF10A48, &qword_2387764B0);
  sub_238439884(v7, &qword_27DF10A40, &qword_2387764A8);
  sub_238439884(v14, &qword_27DF10A48, &qword_2387764B0);
}

uint64_t sub_2385E9430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C7D0, &unk_23876B3E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  sub_23875ED50();
  v34 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  sub_2385EECDC(a1 + *(active + 24), v13, type metadata accessor for MerchantImage.ViewModel);
  v15 = type metadata accessor for MerchantImage(0);
  v13[*(v15 + 20)] = 1;
  v16 = *(v15 + 24);
  *&v13[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
  v17 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v19 = &v13[*(v8 + 36)];
  v20 = type metadata accessor for OrderImageStyleModifier();
  *&v19[*(v20 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v19[*(v20 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v19 = xmmword_2387692C0;
  *(v19 + 2) = 0;
  v19[24] = 1;
  *(v19 + 4) = v17;
  v19[40] = 0;
  v21 = sub_23875D030();
  LOBYTE(v39[0]) = 0;
  sub_2385E98A0(a1, v36);
  *&v35[7] = v36[0];
  *&v35[23] = v36[1];
  *&v35[39] = v36[2];
  *&v35[55] = v36[3];
  LOBYTE(KeyPath) = v39[0];
  v22 = v32;
  sub_23843981C(v13, v32, &qword_27DF0C7D0, &unk_23876B3E0);
  v23 = v33;
  sub_23843981C(v22, v33, &qword_27DF0C7D0, &unk_23876B3E0);
  v24 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A70, &unk_2387764D8) + 48);
  *&v37 = v21;
  *(&v37 + 1) = 0x4010000000000000;
  v38[0] = KeyPath;
  *&v38[1] = *v35;
  *&v38[17] = *&v35[16];
  *&v38[33] = *&v35[32];
  *&v38[49] = *&v35[48];
  v25 = *&v35[63];
  *&v38[64] = *&v35[63];
  v26 = *v38;
  *v24 = v37;
  *(v24 + 16) = v26;
  v27 = *&v38[16];
  v28 = *&v38[32];
  v29 = *&v38[48];
  *(v24 + 80) = v25;
  *(v24 + 48) = v28;
  *(v24 + 64) = v29;
  *(v24 + 32) = v27;
  sub_23843981C(&v37, v39, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v13, &qword_27DF0C7D0, &unk_23876B3E0);
  v39[0] = v21;
  v39[1] = 0x4010000000000000;
  v40 = KeyPath;
  v42 = *&v35[16];
  v43 = *&v35[32];
  *v44 = *&v35[48];
  *&v44[15] = *&v35[63];
  v41 = *v35;
  sub_238439884(v39, &qword_27DF0BA70, &unk_238769590);
  sub_238439884(v22, &qword_27DF0C7D0, &unk_23876B3E0);
}

uint64_t sub_2385E98A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1 + *(type metadata accessor for OrderListActiveOrderRow.ViewModel(0) + 24);
  v5 = (v4 + *(type metadata accessor for MerchantImage.ViewModel(0) + 24));
  v6 = v5[1];
  v28 = *v5;
  v29 = v6;
  sub_2384397A8();

  v7 = sub_23875DAA0();
  v9 = v8;
  v11 = v10;
  sub_23875D7F0();
  v12 = sub_23875DA60();
  v14 = v13;
  LOBYTE(v4) = v15;

  sub_2384397FC(v7, v9, v11 & 1);

  sub_23875D890();
  v16 = sub_23875D9E0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2384397FC(v12, v14, v4 & 1);

  sub_2385E87D4(&v28);
  v23 = v28;
  v24 = v29;
  v25 = v30;
  v26 = v31;
  v20 &= 1u;
  LOBYTE(v28) = v20;
  v32 = v30;
  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20;
  *(a2 + 24) = v22;
  *(a2 + 32) = v23;
  *(a2 + 40) = v24;
  *(a2 + 48) = v25;
  *(a2 + 56) = v26;
  sub_23843980C(v16, v18, v20);

  sub_23843980C(v23, v24, v25);

  sub_2384397FC(v23, v24, v25);

  sub_2384397FC(v16, v18, v20);
}

uint64_t sub_2385E9AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109D0, &unk_2387763A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  sub_23875ED50();
  v26 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v12 = 0;
  v13 = 0;
  KeyPath = 0;
  v15 = 0;
  if ((*(a1 + *(active + 28)) & 1) == 0)
  {
    v12 = sub_23875E0D0();
    v16 = [objc_opt_self() systemGray2Color];
    v13 = sub_23875DFB0();
    sub_23875D820();
    sub_23875D890();
    v15 = sub_23875D900();

    KeyPath = swift_getKeyPath();
  }

  sub_2385EECDC(a1 + *(active + 32), v10, type metadata accessor for OrderActionsMenuContext);
  v17 = type metadata accessor for OrderActionsMenu(0);
  v18 = *(v17 + 20);
  *&v10[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v19 = &v10[*(v17 + 24)];
  v27 = 0;
  sub_23875E1A0();
  v20 = v29;
  *v19 = v28;
  *(v19 + 1) = v20;
  v21 = sub_23875E080();
  v22 = swift_getKeyPath();
  v23 = &v10[*(v4 + 36)];
  *v23 = v22;
  v23[1] = v21;
  sub_23843981C(v10, v7, &qword_27DF109D0, &unk_2387763A8);
  *a2 = v12;
  a2[1] = v13;
  a2[2] = KeyPath;
  a2[3] = v15;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10A68, &qword_2387764D0);
  sub_23843981C(v7, a2 + *(v24 + 48), &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF258(v12);
  sub_238439884(v10, &qword_27DF109D0, &unk_2387763A8);
  sub_238439884(v7, &qword_27DF109D0, &unk_2387763A8);
  sub_2385EF2BC(v12);
}

uint64_t sub_2385E9E00@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v29 = a3;
  v7 = type metadata accessor for ReturnDetailsDestination(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v28 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875A710();
  (*(*(v11 - 8) + 16))(v10, a2, v11);
  v12 = *(a1 + 1);
  v13 = &v10[*(v7 + 20)];
  *v13 = *a1;
  *(v13 + 1) = v12;
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Return(0);
  v15 = active[6];
  v16 = sub_23875B0A0();
  (*(*(v16 - 8) + 16))(a4, &a1[v15], v16);
  v17 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v18 = (a4 + v17[5]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
  v27 = v10;
  v20 = *(v19 + 48);
  v21 = active[7];

  *v18 = sub_2385E8B9C(v18 + v20);
  v18[1] = v22;
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_2385EECDC(&a1[active[8]], a4 + v17[6], type metadata accessor for ProductImage.ViewModel);
  sub_2385EE638(v27, a4 + v17[7], type metadata accessor for ReturnDetailsDestination);
  type metadata accessor for OrderNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v23 = *(a1 + 2);
  *(a4 + v17[8]) = 0;
  *(a4 + v17[9]) = v23;
  v24 = *(v29(0) + 20);
  *(a4 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385EA0EC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875A710();
  (*(*(v12 - 8) + 16))(v11, a2, v12);
  v13 = *(a1 + 1);
  v14 = &v11[*(v8 + 20)];
  *v14 = *a1;
  *(v14 + 1) = v13;
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment(0);
  v16 = *(active + 24);
  v17 = sub_23875B0A0();
  (*(*(v17 - 8) + 16))(a4, &a1[v16], v17);
  v18 = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v19 = v18[5];

  sub_2385E8E78(a1, (a4 + v19));
  sub_2385EECDC(&a1[*(active + 32)], a4 + v18[6], type metadata accessor for ProductImage.ViewModel);
  sub_2385EE638(v11, a4 + v18[7], type metadata accessor for FetchedOrderDetailsDestination);
  type metadata accessor for OrderNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(a1 + 2);
  *(a4 + v18[8]) = 1;
  *(a4 + v18[9]) = v20;
  v21 = *(a3(0) + 20);
  *(a4 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385EA378()
{
  v1 = *v0;
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_2385EA400()
{
  *v0;
  sub_23875EB30();
}

uint64_t sub_2385EA474()
{
  v1 = *v0;
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_2385EA4F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_23875F590();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2385EA558(uint64_t *a1@<X8>)
{
  v2 = 0x6E7275746572;
  if (*v1)
  {
    v2 = 0x6D6C6C69666C7566;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000746E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2385EA59C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6C6C69666C7566;
  }

  else
  {
    v4 = 0x6E7275746572;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEB00000000746E65;
  }

  if (*a2)
  {
    v6 = 0x6D6C6C69666C7566;
  }

  else
  {
    v6 = 0x6E7275746572;
  }

  if (*a2)
  {
    v7 = 0xEB00000000746E65;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_23875F630();
  }

  return v9 & 1;
}

unint64_t sub_2385EA648()
{
  sub_23875F470();

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  *(v0 + *(active + 32));
  *(v0 + *(active + 32));
  sub_2384397A8();
  v2 = sub_23875F230();
  v4 = v3;

  MEMORY[0x23EE63650](v2, v4);

  MEMORY[0x23EE63650](46, 0xE100000000000000);
  v7 = *(v0 + *(active + 36));
  v5 = sub_23875F600();
  MEMORY[0x23EE63650](v5);

  return 0xD00000000000001ELL;
}

uint64_t sub_2385EA794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B48, &qword_238776708);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_2385EECDC(v28 + *(active + 28), v12, type metadata accessor for OrderNavigationDestination);
  v21 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  sub_2385EED74(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
  sub_23875C760();
  *&v19[*(v13 + 36)] = 0;
  *v8 = sub_23875D020();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B50, &qword_238776710) + 44)];
  *v22 = sub_23875CE50();
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B58, &qword_238776718);
  sub_2385EABE4(v28, &v22[*(v23 + 44)]);

  sub_23843981C(v19, v16, &qword_27DF0BC20, &qword_238769430);
  sub_23843981C(v8, v5, &qword_27DF10B48, &qword_238776708);
  v24 = v27;
  sub_23843981C(v16, v27, &qword_27DF0BC20, &qword_238769430);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B60, &qword_238776720);
  sub_23843981C(v5, v24 + *(v25 + 48), &qword_27DF10B48, &qword_238776708);
  sub_238439884(v8, &qword_27DF10B48, &qword_238776708);
  sub_238439884(v19, &qword_27DF0BC20, &qword_238769430);
  sub_238439884(v5, &qword_27DF10B48, &qword_238776708);
  sub_238439884(v16, &qword_27DF0BC20, &qword_238769430);
}

uint64_t sub_2385EABE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_23875DFD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B08, &qword_2387766C8);
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B68, &qword_238776728);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v42 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v18 = sub_23875D030();
  *(v18 + 1) = 0x4010000000000000;
  v18[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B70, &qword_238776730);
  sub_2385EB114(a1, &v18[*(v19 + 44)]);
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_2385EECDC(a1 + *(active + 24), v12, type metadata accessor for ProductImage.ViewModel);
  v21 = *(type metadata accessor for ProductImage(0) + 20);
  *&v12[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v4 + 104))(v7, *MEMORY[0x277CE0EE0], v3);
  v22 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v24 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0) + 36)];
  v25 = type metadata accessor for OrderImageStyleModifier();
  *&v24[*(v25 + 36)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *&v24[*(v25 + 40)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v24 = xmmword_238762FA0;
  *(v24 + 2) = 0;
  v24[24] = 1;
  *(v24 + 4) = v22;
  v24[40] = 1;
  v26 = swift_getKeyPath();
  v27 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B10, &unk_238779090) + 36)];
  *v27 = v26;
  swift_storeEnumTagMultiPayload();
  *(v27 + *(type metadata accessor for OrderImageVignette() + 20)) = 1;
  v28 = sub_23875E490();
  v30 = v29;
  v31 = &v12[*(v40 + 36)];
  sub_2385EC4E0(a1, v31);
  v32 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B18, &qword_2387766E0) + 36));
  *v32 = v28;
  v32[1] = v30;
  v33 = v42;
  sub_23843981C(v18, v42, &qword_27DF10B68, &qword_238776728);
  v34 = v43;
  sub_23843981C(v12, v43, &qword_27DF10B08, &qword_2387766C8);
  v35 = v44;
  sub_23843981C(v33, v44, &qword_27DF10B68, &qword_238776728);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B78, &qword_238776738);
  v37 = v35 + *(v36 + 48);
  *v37 = 0x4024000000000000;
  *(v37 + 8) = 0;
  sub_23843981C(v34, v35 + *(v36 + 64), &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v12, &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v18, &qword_27DF10B68, &qword_238776728);
  sub_238439884(v34, &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v33, &qword_27DF10B68, &qword_238776728);
}

uint64_t sub_2385EB114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v53 = a2;
  v2 = type metadata accessor for SubtitleView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v46 - v9);
  v11 = sub_23875DA00();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = *(v49 + 64);
  MEMORY[0x28223BE20](v11);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B00, &qword_2387766C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v46 - v19;
  v21 = type metadata accessor for TitleView(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v46 - v26;
  sub_23875ED50();
  v52 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = sub_23875B0A0();
  v29 = v51;
  (*(*(v28 - 8) + 16))(v27, v51, v28);
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_23843981C(v29 + *(active + 20), v10, &qword_27DF10940, &qword_2387762E8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
  if ((*(*(v31 - 8) + 48))(v10, 1, v31) == 1)
  {
    sub_238439884(v10, &qword_27DF10940, &qword_2387762E8);
    v32 = 1;
  }

  else
  {
    v33 = *v10;
    v46 = v10[1];
    v47 = v33;
    v51 = v3;
    v34 = v2;
    v35 = *(v31 + 48);
    v36 = v48;
    v37 = *(v49 + 32);
    v38 = v10 + v35;
    v39 = v50;
    v37(v48, v38, v50);
    v37(&v6[*(v2 + 20)], v36, v39);
    v40 = v46;
    *v6 = v47;
    *(v6 + 1) = v40;
    v41 = *(v2 + 24);
    *&v6[v41] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    v2 = v34;
    v3 = v51;
    swift_storeEnumTagMultiPayload();
    sub_2385EE638(v6, v20, type metadata accessor for SubtitleView);
    v32 = 0;
  }

  (*(v3 + 56))(v20, v32, 1, v2);
  sub_2385EECDC(v27, v24, type metadata accessor for TitleView);
  sub_23843981C(v20, v17, &qword_27DF10B00, &qword_2387766C0);
  v42 = v27;
  v43 = v53;
  sub_2385EECDC(v24, v53, type metadata accessor for TitleView);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B80, &qword_238776740);
  sub_23843981C(v17, v43 + *(v44 + 48), &qword_27DF10B00, &qword_2387766C0);
  sub_238439884(v20, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v42, type metadata accessor for TitleView);
  sub_238439884(v17, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v24, type metadata accessor for TitleView);
}

uint64_t sub_2385EB684()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B30, &qword_2387766F8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - v3);
  *v4 = sub_23875E4B0();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B38, &qword_238776700);
  sub_2385EA794(v0, v4 + *(v6 + 44));
  sub_2385EA648();
  sub_23843A3E8(&qword_27DF10B40, &qword_27DF10B30, &qword_2387766F8);
  sub_23875DE00();

  return sub_238439884(v4, &qword_27DF10B30, &qword_2387766F8);
}

uint64_t sub_2385EB7B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AE8, &qword_2387766A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0BC20, &qword_238769430);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  sub_2385EECDC(a1 + *(active + 28), v13, type metadata accessor for OrderNavigationDestination);
  v22 = type metadata accessor for OrderNavigationDestination(0);
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_2385EED74(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
  sub_23875C760();
  *&v20[*(v14 + 36)] = 0;
  *v9 = sub_23875D030();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AF0, &qword_2387766B0);
  sub_2385EBC14(a1, &v9[*(v23 + 44)]);
  sub_23843981C(v20, v17, &qword_27DF0BC20, &qword_238769430);
  sub_23843981C(v9, v6, &qword_27DF10AE8, &qword_2387766A8);
  v24 = v28;
  sub_23843981C(v17, v28, &qword_27DF0BC20, &qword_238769430);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AF8, &qword_2387766B8);
  sub_23843981C(v6, v24 + *(v25 + 48), &qword_27DF10AE8, &qword_2387766A8);
  sub_238439884(v9, &qword_27DF10AE8, &qword_2387766A8);
  sub_238439884(v20, &qword_27DF0BC20, &qword_238769430);
  sub_238439884(v6, &qword_27DF10AE8, &qword_2387766A8);
  sub_238439884(v17, &qword_27DF0BC20, &qword_238769430);
}

uint64_t sub_2385EBB80()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_2385EBC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v80 = type metadata accessor for SubtitleView(0);
  v78 = *(v80 - 8);
  v3 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v71 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10940, &qword_2387762E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = (&v68 - v7);
  v8 = sub_23875DA00();
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v68 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B00, &qword_2387766C0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v74 = &v68 - v15;
  v16 = type metadata accessor for TitleView(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v77 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v83 = &v68 - v20;
  v21 = sub_23875DFD0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B08, &qword_2387766C8);
  v26 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v76 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v82 = &v68 - v29;
  sub_23875ED50();
  v75 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v31 = v82;
  sub_2385EECDC(a1 + *(active + 24), v82, type metadata accessor for ProductImage.ViewModel);
  v32 = *(type metadata accessor for ProductImage(0) + 20);
  *(v31 + v32) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  (*(v22 + 104))(v25, *MEMORY[0x277CE0EE0], v21);
  v33 = sub_23875E090();
  KeyPath = swift_getKeyPath();
  v35 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E618, &unk_2387766D0) + 36);
  v36 = type metadata accessor for OrderImageStyleModifier();
  *(v35 + *(v36 + 36)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v35 + *(v36 + 40)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v35 = xmmword_238762FA0;
  *(v35 + 16) = 0;
  *(v35 + 24) = 1;
  *(v35 + 32) = v33;
  *(v35 + 40) = 1;
  v37 = swift_getKeyPath();
  v38 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B10, &unk_238779090) + 36));
  *v38 = v37;
  swift_storeEnumTagMultiPayload();
  *(v38 + *(type metadata accessor for OrderImageVignette() + 20)) = 1;
  v39 = sub_23875E490();
  v41 = v40;
  v42 = v31 + *(v72 + 36);
  sub_2385EC4E0(a1, v42);
  v43 = (v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B18, &qword_2387766E0) + 36));
  *v43 = v39;
  v43[1] = v41;
  v44 = sub_23875B0A0();
  (*(*(v44 - 8) + 16))(v83, a1, v44);
  v45 = a1 + *(active + 20);
  v46 = v73;
  sub_23843981C(v45, v73, &qword_27DF10940, &qword_2387762E8);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF109B0, &qword_238776358);
  if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
  {
    sub_238439884(v46, &qword_27DF10940, &qword_2387762E8);
    v48 = 1;
    v49 = v80;
    v50 = v74;
  }

  else
  {
    v51 = *v46;
    v52 = v46[1];
    v53 = *(v47 + 48);
    v54 = v68;
    v55 = *(v69 + 32);
    v56 = v46 + v53;
    v57 = v70;
    v55(v68, v56, v70);
    v49 = v80;
    v58 = v71;
    v55(&v71[*(v80 + 20)], v54, v57);
    *v58 = v51;
    v58[1] = v52;
    v59 = *(v49 + 24);
    *(v58 + v59) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v50 = v74;
    sub_2385EE638(v58, v74, type metadata accessor for SubtitleView);
    v48 = 0;
  }

  (*(v78 + 56))(v50, v48, 1, v49);
  v60 = v82;
  v61 = v76;
  sub_23843981C(v82, v76, &qword_27DF10B08, &qword_2387766C8);
  v62 = v83;
  v63 = v77;
  sub_2385EECDC(v83, v77, type metadata accessor for TitleView);
  v64 = v79;
  sub_23843981C(v50, v79, &qword_27DF10B00, &qword_2387766C0);
  v65 = v81;
  sub_23843981C(v61, v81, &qword_27DF10B08, &qword_2387766C8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B20, &qword_2387766E8);
  sub_2385EECDC(v63, v65 + *(v66 + 48), type metadata accessor for TitleView);
  sub_23843981C(v64, v65 + *(v66 + 64), &qword_27DF10B00, &qword_2387766C0);
  sub_238439884(v50, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v62, type metadata accessor for TitleView);
  sub_238439884(v60, &qword_27DF10B08, &qword_2387766C8);
  sub_238439884(v64, &qword_27DF10B00, &qword_2387766C0);
  sub_2385EF1F8(v63, type metadata accessor for TitleView);
  sub_238439884(v61, &qword_27DF10B08, &qword_2387766C8);
}

uint64_t sub_2385EC4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReturnIcon();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10B28, &qword_2387766F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((*(a1 + *(type metadata accessor for ActiveOrderContentItemView.ViewModel(0) + 32)) & 1) == 0)
  {

    goto LABEL_7;
  }

  v13 = sub_23875F630();

  if (v13)
  {
LABEL_7:
    *v8 = 1;
    v14 = *(v4 + 20);
    *&v8[v14] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    sub_2385EE638(v8, v12, type metadata accessor for ReturnIcon);
    (*(v5 + 56))(v12, 0, 1, v4);
    goto LABEL_8;
  }

  (*(v5 + 56))(v12, 1, 1, v4);
LABEL_8:
  sub_2384396E4(v12, a2, &qword_27DF10B28, &qword_2387766F0);
}

uint64_t sub_2385EC760()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AD0, &qword_238776698);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - v3);
  *v4 = sub_23875E4B0();
  v4[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10AD8, &qword_2387766A0);
  sub_2385EB7B0(v0, v4 + *(v6 + 44));
  sub_2385EA648();
  sub_23843A3E8(&qword_27DF10AE0, &qword_27DF10AD0, &qword_238776698);
  sub_23875DE00();

  return sub_238439884(v4, &qword_27DF10AD0, &qword_238776698);
}

uint64_t sub_2385EC88C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_23875BE40();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23875BE20();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_23875BD20();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2387595E0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_23875B1B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875BCC0();
  sub_23875BDB0();
  sub_23875BE30();
  sub_2387595B0();
  sub_23875B1A0();
  sub_2385EED74(&qword_27DF0A050, MEMORY[0x277CC8560]);
  sub_23875B090();
  (*(v10 + 8))(v13, v9);
  v41 = v37;
  v42 = v38;
  sub_2384397A8();
  v14 = sub_23875DAA0();
  v16 = v15;
  LOBYTE(v9) = v17;
  sub_23875D8F0();
  v18 = sub_23875DA60();
  v20 = v19;
  v22 = v21;

  sub_2384397FC(v14, v16, v9 & 1);

  sub_23875D890();
  v23 = sub_23875D9E0();
  v25 = v24;
  v27 = v26;
  sub_2384397FC(v18, v20, v22 & 1);

  sub_238495020();
  sub_23875B090();
  v41 = v37;
  v28 = sub_23875DA20();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_2384397FC(v23, v25, v27 & 1);

  v37 = v28;
  v38 = v30;
  v39 = v32 & 1;
  v40 = v34;
  sub_23875DE00();
  sub_2384397FC(v28, v30, v32 & 1);
}

uint64_t sub_2385ECC90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v38 = sub_23875C880();
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A028, &qword_238764FC0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33[-v10];
  v12 = *(v1 + 1);
  v40 = *v1;
  v41 = v12;
  sub_2384397A8();

  v13 = sub_23875DAA0();
  v15 = v14;
  LOBYTE(v12) = v16;
  sub_23875D7F0();
  v17 = sub_23875DA60();
  v35 = v18;
  v36 = v17;
  v34 = v19;
  v37 = v20;

  sub_2384397FC(v13, v15, v12 & 1);

  v21 = type metadata accessor for SubtitleView(0);
  v22 = &v2[*(v21 + 24)];
  sub_2384D5138(v6);
  LOBYTE(v22) = sub_23875C860();
  (*(v3 + 8))(v6, v38);
  if (v22)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  KeyPath = swift_getKeyPath();
  v25 = *(v21 + 20);
  v26 = swift_getKeyPath();
  v27 = &v11[*(v8 + 44)];
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A040, &qword_238765ED0) + 28);
  v29 = sub_23875DA00();
  (*(*(v29 - 8) + 16))(v27 + v28, &v2[v25], v29);
  *v27 = v26;
  v30 = v35;
  *v11 = v36;
  *(v11 + 1) = v30;
  v11[16] = v34 & 1;
  *(v11 + 3) = v37;
  *(v11 + 4) = KeyPath;
  *(v11 + 5) = v23;
  v11[48] = 0;
  v31 = v39;
  sub_2384396E4(v11, v39, &qword_27DF0A028, &qword_238764FC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BC8, qword_238776880);
  *(v31 + *(result + 36)) = 256;
  return result;
}

size_t sub_2385ECF60@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  active = type metadata accessor for OrderListActiveOrderRow.ViewModel.Return(0);
  v207 = *(active - 8);
  v6 = *(v207 + 64);
  MEMORY[0x28223BE20](active);
  v220 = (&v203 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v208 = &v203 - v9;
  v238 = type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment(0);
  v215 = *(v238 - 8);
  v10 = *(v215 + 64);
  MEMORY[0x28223BE20](v238);
  v246 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v216 = &v203 - v13;
  v230 = sub_23875AF90();
  v236 = *(v230 - 8);
  v14 = v236[8];
  MEMORY[0x28223BE20](v230);
  v242 = &v203 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v245 = &v203 - v17;
  MEMORY[0x28223BE20](v18);
  v244 = &v203 - v19;
  v229 = type metadata accessor for ProductImage.ViewModel(0);
  v20 = *(*(v229 - 8) + 64);
  MEMORY[0x28223BE20](v229);
  v219 = &v203 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v237 = &v203 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v203 - v25;
  v27 = sub_23875BC40();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v206 = &v203 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v203 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v203 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v231 = (&v203 - v39);
  v40 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v41 = *(v40 + 40);
  v42 = sub_2387590B0();
  v43 = *(v42 - 1);
  v240 = *(v43 + 56);
  v241 = v42;
  v239 = v43 + 56;
  v240(&v41[a3], 1, 1);
  sub_238757D40();
  v44 = [a2 createdDate];
  v204 = v40;
  v45 = *(v40 + 20);
  v205 = a3;
  sub_23875BBE0();

  v46 = a1;
  v47 = a2;
  v48 = [v47 merchant];
  v49 = [v48 logoName];

  v217 = v33;
  v235 = v26;
  v243 = v41;
  if (v49)
  {
    v50 = sub_23875EA80();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v204;
  v54 = v205;
  v55 = (v205 + v204[6]);
  *v55 = v50;
  v55[1] = v52;
  v56 = type metadata accessor for MerchantImage.ViewModel(0);
  v57 = v55 + *(v56 + 20);
  sub_238757DA0();
  v58 = [v47 merchant];
  v59 = [v58 displayName];

  v60 = sub_2387586A0();
  v62 = v61;

  v63 = (v55 + *(v56 + 24));
  *v63 = v60;
  v63[1] = v62;
  *(v54 + v53[7]) = [v46 effectiveNotificationsEnabled];
  v64 = (v54 + v53[8]);
  *v64 = 0;
  v65 = type metadata accessor for OrderActionsMenuContext(0);
  v66 = v65[5];
  v67 = v46;
  v68 = v47;
  sub_238757D40();
  v64[v65[6]] = [v67 notificationsEnabled];
  v64[v65[7]] = [v67 isActive];
  v64[v65[8]] = sub_2385BA98C() & 1;
  v64[v65[9]] = [v67 isMarkedAsComplete];
  v64[v65[10]] = sub_238757DC0() & 1;
  LOBYTE(v66) = [v67 automaticUpdatesEnabled];

  v64[v65[11]] = v66;
  v69 = sub_2387598F0();
  v203 = *(v69 - 8);
  v70 = *(v203 + 56);
  v227 = v69;
  v226 = v203 + 56;
  v225 = v70;
  (v70)(v231, 1, 1);
  v71 = v53[9];
  v72 = v67;
  v73 = v68;
  v232 = v72;
  sub_23875B080();
  v74 = sub_23875A5A0();
  if (v74 >> 62)
  {
    goto LABEL_126;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23875F3A0())
  {
    v76 = v244;

    v77 = v243;
    if (i)
    {
      sub_23875A5A0();
      v78 = [v73 createdDate];
      sub_23875BBE0();

      sub_2387590A0();
      v79 = 0;
    }

    else
    {
      v79 = 1;
    }

    (v240)(v36, v79, 1, v241);
    sub_2385EE5C8(v36, &v77[v205]);
    sub_238757DA0();
    v228 = v73;
    v80 = sub_23875A5A0();
    v73 = v80;
    v81 = v80 & 0xFFFFFFFFFFFFFF8;
    if (v80 >> 62)
    {
      v82 = sub_23875F3A0();
    }

    else
    {
      v82 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = MEMORY[0x277D84F90];
    if (v82)
    {
      v84 = 0;
      do
      {
        v36 = v84;
        while (1)
        {
          if ((v73 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x23EE63F70](v36, v73);
            v84 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_119;
            }
          }

          else
          {
            if (v36 >= *(v81 + 16))
            {
              goto LABEL_120;
            }

            v85 = *(v73 + 8 * v36 + 32);
            v84 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
LABEL_119:
              __break(1u);
LABEL_120:
              __break(1u);
              goto LABEL_121;
            }
          }

          v86 = v85;
          v87 = [v86 image];
          if (v87)
          {
            break;
          }

          ++v36;
          if (v84 == v82)
          {
            goto LABEL_28;
          }
        }

        v88 = v87;
        v89 = sub_23875EA80();
        v36 = v90;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_238497C2C(0, *(v83 + 2) + 1, 1, v83);
        }

        v92 = *(v83 + 2);
        v91 = *(v83 + 3);
        if (v92 >= v91 >> 1)
        {
          v83 = sub_238497C2C((v91 > 1), v92 + 1, 1, v83);
        }

        *(v83 + 2) = v92 + 1;
        v93 = &v83[16 * v92];
        *(v93 + 4) = v89;
        *(v93 + 5) = v36;
        v76 = v244;
      }

      while (v84 != v82);
    }

LABEL_28:

    v94 = v235;
    v95 = v236[2];
    v73 = v76;
    v96 = v230;
    v224 = v236 + 2;
    v223 = v95;
    v95(v235, v76, v230);
    if (*(v83 + 2) >= 5uLL)
    {
      sub_23852EE64(v83, (v83 + 32), 0, 9uLL);
      v98 = v97;

      v83 = v98;
    }

    v99 = v228;
    v100 = v236[1];
    ++v236;
    v222 = v100;
    v100(v73, v96);
    *(v94 + *(v229 + 20)) = v83;
    sub_2385EE638(v94, v205 + v204[11], type metadata accessor for ProductImage.ViewModel);
    v101 = sub_23875A4F0();
    v102 = *(v101 + 16);
    if (!v102)
    {
      break;
    }

    v247 = MEMORY[0x277D84F90];
    v103 = v101;
    sub_2385FEE94(0, v102, 0);
    v104 = v103;
    v36 = 0;
    v105 = v247;
    v106 = *(v103 + 16);
    v213 = v103 + 32;
    v212 = *MEMORY[0x277CC7B30];
    v211 = (v203 + 104);
    if (v106 >= v102)
    {
      v106 = v102;
    }

    v214 = v106;
    v210 = v103;
    v209 = v102;
    while (v36 != v214)
    {
      if (v36 >= *(v104 + 16))
      {
        goto LABEL_122;
      }

      v235 = v105;
      v107 = *(v213 + 8 * v36);
      v108 = v238;
      v109 = *(v238 + 28);
      v110 = v246;
      (v240)(&v246[v109], 1, 1, v241);
      v111 = (v107 & 0x7FFFFFFFFFFFFFFFLL);
      v112 = v232;
      v113 = v99;
      v114 = v111;
      v115 = sub_238759910();
      *v110 = sub_238759900();
      v110[1] = v116;
      v117 = v231;
      v234 = v107;
      *v231 = v107;
      v118 = v227;
      (*v211)(v117, v212, v227);
      v225(v117, 0, 1, v118);
      v119 = *(v108 + 24);
      v120 = v112;
      v121 = v113;
      v233 = v114;
      v243 = v121;
      v244 = v120;
      sub_23875B080();
      if (v115 >> 62)
      {
        v73 = sub_23875F3A0();
      }

      else
      {
        v73 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v122 = v217;
      if (v73)
      {

        v123 = [v243 createdDate];
        sub_23875BBE0();

        sub_2387590A0();
        v124 = 0;
      }

      else
      {
        v124 = 1;
      }

      (v240)(v122, v124, 1, v241);
      sub_2385EE5C8(v122, &v246[v109]);
      sub_238757DA0();
      if (v73)
      {
        v125 = 0;
        v126 = MEMORY[0x277D84F90];
        while (2)
        {
          v127 = v125;
          while (1)
          {
            if ((v115 & 0xC000000000000001) != 0)
            {
              v128 = MEMORY[0x23EE63F70](v127, v115);
              v125 = v127 + 1;
              if (__OFADD__(v127, 1))
              {
                goto LABEL_115;
              }
            }

            else
            {
              if (v127 >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v128 = *(v115 + 8 * v127 + 32);
              v125 = v127 + 1;
              if (__OFADD__(v127, 1))
              {
LABEL_115:
                __break(1u);
LABEL_116:
                __break(1u);
LABEL_117:
                __break(1u);
LABEL_118:
                __break(1u);
                goto LABEL_119;
              }
            }

            v129 = v128;
            v130 = [v129 image];
            if (v130)
            {
              break;
            }

            ++v127;
            if (v125 == v73)
            {
              goto LABEL_60;
            }
          }

          v131 = v130;
          v132 = sub_23875EA80();
          v218 = v133;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v126 = sub_238497C2C(0, *(v126 + 2) + 1, 1, v126);
          }

          v135 = *(v126 + 2);
          v134 = *(v126 + 3);
          if (v135 >= v134 >> 1)
          {
            v126 = sub_238497C2C((v134 > 1), v135 + 1, 1, v126);
          }

          *(v126 + 2) = v135 + 1;
          v136 = &v126[16 * v135];
          v137 = v218;
          *(v136 + 4) = v132;
          *(v136 + 5) = v137;
          if (v125 != v73)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v126 = MEMORY[0x277D84F90];
      }

LABEL_60:

      v138 = v230;
      v223(v237, v245, v230);
      if (*(v126 + 2) >= 5uLL)
      {
        sub_23852EE64(v126, (v126 + 32), 0, 9uLL);
        v140 = v139;

        v126 = v140;
      }

      v99 = v228;
      v141 = v238;
      v142 = *(v238 + 36);
      v222(v245, v138);
      v143 = v237;
      *&v237[*(v229 + 20)] = v126;
      v144 = v246;
      sub_2385EE638(v143, &v246[*(v141 + 32)], type metadata accessor for ProductImage.ViewModel);
      v73 = v233;
      if (v234 < 0)
      {
        v145 = v233;
      }

      else
      {
        v145 = v234;
      }

      v146 = &selRef_recipientAddress;
      if (v234 < 0)
      {
        v146 = &selRef_address;
      }

      v147 = [v145 *v146];

      *(v144 + v142) = v147;
      *(v144 + 16) = v36;
      v148 = v216;
      sub_2385EE638(v144, v216, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
      v105 = v235;
      v247 = v235;
      v150 = *(v235 + 2);
      v149 = *(v235 + 3);
      if (v150 >= v149 >> 1)
      {
        sub_2385FEE94(v149 > 1, v150 + 1, 1);
        v148 = v216;
        v105 = v247;
      }

      ++v36;
      *(v105 + 2) = v150 + 1;
      sub_2385EE638(v148, &v105[((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v150], type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment);
      v104 = v210;
      if (v36 == v209)
      {

        goto LABEL_73;
      }
    }

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
    ;
  }

  v105 = MEMORY[0x277D84F90];
LABEL_73:
  *(v205 + v204[12]) = v105;
  v151 = sub_23875A580();
  v152 = v151;
  v153 = v151 >> 62;
  if (v151 >> 62)
  {
    v154 = sub_23875F3A0();
    if (v154)
    {
      goto LABEL_75;
    }

LABEL_129:

    v156 = MEMORY[0x277D84F90];
LABEL_130:
    *(v205 + v204[13]) = v156;
    return result;
  }

  v154 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v154)
  {
    goto LABEL_129;
  }

LABEL_75:
  v233 = v152;
  v247 = MEMORY[0x277D84F90];
  result = sub_2385FEE50(0, v154 & ~(v154 >> 63), 0);
  if ((v154 & 0x8000000000000000) == 0)
  {
    v156 = v247;
    if (v153)
    {
      v158 = v233;
      v218 = v233 & 0xFFFFFFFFFFFFFF8;
      v159 = sub_23875F3A0();
      v157 = v158;
      v239 = v159;
    }

    else
    {
      v157 = v233;
      v218 = v233 & 0xFFFFFFFFFFFFFF8;
      v239 = *((v233 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v160 = 0;
    v238 = v157 & 0xC000000000000001;
    v217 = (v157 + 32);
    LODWORD(v237) = *MEMORY[0x277CC7B38];
    v234 = v154;
    v235 = (v203 + 104);
    while (1)
    {
      if (__OFADD__(v160, 1))
      {
        goto LABEL_123;
      }

      if (v160 >= v154 || v160 >= v239)
      {
        goto LABEL_124;
      }

      v245 = v160;
      v246 = (v160 + 1);
      if (v238)
      {
        v161 = MEMORY[0x23EE63F70](v160, v233);
      }

      else
      {
        if (v160 >= *(v218 + 16))
        {
          goto LABEL_125;
        }

        v161 = *&v217[8 * v160];
      }

      v162 = v161;
      v163 = v232;
      v164 = v99;
      v165 = v162;
      v166 = [v165 returnIdentifier];
      v167 = sub_23875EA80();
      v169 = v168;

      v170 = v220;
      *v220 = v167;
      v170[1] = v169;
      v36 = v231;
      *v231 = v165;
      v171 = v227;
      (*v235)(v36, v237, v227);
      v225(v36, 0, 1, v171);
      v172 = active;
      v173 = *(active + 24);
      v174 = v163;
      v175 = v164;
      v176 = v165;
      sub_23875B080();
      v177 = *(v172 + 28);
      v178 = v175;
      v179 = v176;
      v241 = v178;
      sub_238759030();
      sub_238757DA0();
      v180 = sub_238758D10();
      v73 = v180;
      v244 = v156;
      v181 = v180 & 0xFFFFFFFFFFFFFF8;
      if (v180 >> 62)
      {
        v182 = sub_23875F3A0();
        v243 = v174;
        if (v182)
        {
LABEL_89:
          v183 = 0;
          v184 = MEMORY[0x277D84F90];
          do
          {
            v185 = v183;
            while (1)
            {
              if ((v73 & 0xC000000000000001) != 0)
              {
                v186 = MEMORY[0x23EE63F70](v185, v73);
                v183 = v185 + 1;
                if (__OFADD__(v185, 1))
                {
                  goto LABEL_117;
                }
              }

              else
              {
                if (v185 >= *(v181 + 16))
                {
                  goto LABEL_118;
                }

                v186 = *(v73 + 8 * v185 + 32);
                v183 = v185 + 1;
                if (__OFADD__(v185, 1))
                {
                  goto LABEL_117;
                }
              }

              v36 = v186;
              v187 = [v36 image];
              if (v187)
              {
                break;
              }

              ++v185;
              if (v183 == v182)
              {
                goto LABEL_108;
              }
            }

            v188 = v187;
            v240 = sub_23875EA80();
            v190 = v189;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v184 = sub_238497C2C(0, *(v184 + 2) + 1, 1, v184);
            }

            v192 = *(v184 + 2);
            v191 = *(v184 + 3);
            v36 = v192 + 1;
            if (v192 >= v191 >> 1)
            {
              v184 = sub_238497C2C((v191 > 1), v192 + 1, 1, v184);
            }

            *(v184 + 2) = v36;
            v193 = &v184[16 * v192];
            *(v193 + 4) = v240;
            *(v193 + 5) = v190;
          }

          while (v183 != v182);
          goto LABEL_108;
        }
      }

      else
      {
        v182 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v243 = v174;
        if (v182)
        {
          goto LABEL_89;
        }
      }

      v184 = MEMORY[0x277D84F90];
LABEL_108:

      v194 = v230;
      v223(v219, v242, v230);
      if (*(v184 + 2) < 5uLL)
      {

        v197 = v241;
        v179 = v241;
        v36 = v243;
        v73 = v243;
      }

      else
      {
        sub_23852EE64(v184, (v184 + 32), 0, 9uLL);
        v196 = v195;
        v36 = v243;

        v197 = v241;

        v73 = v179;
        v184 = v196;
      }

      v156 = v244;

      v222(v242, v194);
      v198 = v219;
      *&v219[*(v229 + 20)] = v184;
      v199 = v220;
      sub_2385EE638(v198, v220 + *(active + 32), type metadata accessor for ProductImage.ViewModel);
      *(v199 + 16) = v245;
      v200 = v208;
      sub_2385EE638(v199, v208, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
      v247 = v156;
      v202 = *(v156 + 2);
      v201 = *(v156 + 3);
      if (v202 >= v201 >> 1)
      {
        sub_2385FEE50(v201 > 1, v202 + 1, 1);
        v200 = v208;
        v156 = v247;
      }

      *(v156 + 2) = v202 + 1;
      sub_2385EE638(v200, &v156[((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v202], type metadata accessor for OrderListActiveOrderRow.ViewModel.Return);
      v160 = v246;
      v154 = v234;
      v99 = v228;
      if (v246 == v234)
      {

        goto LABEL_130;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2385EE5C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10890, &unk_2387761A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385EE638(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2385EE6C8()
{
  sub_23875B0A0();
  if (v0 <= 0x3F)
  {
    sub_2385EE7F4(319, &qword_27DF108A8, MEMORY[0x277CC76F0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ProductImage.ViewModel(319);
      if (v2 <= 0x3F)
      {
        sub_2385EE7F4(319, &qword_27DF0EB40, sub_2385EE858, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385EE7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2385EE858()
{
  result = qword_27DF0EB48;
  if (!qword_27DF0EB48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF0EB48);
  }

  return result;
}

uint64_t sub_2385EE8CC()
{
  result = sub_23875B0A0();
  if (v1 <= 0x3F)
  {
    result = sub_2387590B0();
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

void sub_2385EE9A8()
{
  sub_23875A710();
  if (v0 <= 0x3F)
  {
    sub_23875BC40();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MerchantImage.ViewModel(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OrderActionsMenuContext(319);
        if (v3 <= 0x3F)
        {
          sub_23875B0A0();
          if (v4 <= 0x3F)
          {
            sub_2385EE7F4(319, &qword_27DF108A8, MEMORY[0x277CC76F0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              type metadata accessor for ProductImage.ViewModel(319);
              if (v6 <= 0x3F)
              {
                sub_2385EE7F4(319, &qword_27DF108D0, type metadata accessor for OrderListActiveOrderRow.ViewModel.Fulfillment, MEMORY[0x277D83940]);
                if (v7 <= 0x3F)
                {
                  sub_2385EE7F4(319, &qword_27DF108D8, type metadata accessor for OrderListActiveOrderRow.ViewModel.Return, MEMORY[0x277D83940]);
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

void sub_2385EEBB4()
{
  type metadata accessor for OrderListActiveOrderRow.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384B49C4();
    if (v1 <= 0x3F)
    {
      sub_2385EE7F4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2385EECDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385EED74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_21()
{
  active = type metadata accessor for OrderListActiveOrderRow(0);
  v36 = *(*(active - 1) + 80);
  v34 = *(*(active - 1) + 64);
  v35 = (v36 + 16) & ~v36;
  v37 = v0;
  v1 = v0 + v35;
  v2 = sub_23875A710();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v35, v2);
  v4 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v5 = v4[5];
  v6 = sub_23875BC40();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = v1 + v4[6];
  v8 = *(v7 + 8);

  v9 = type metadata accessor for MerchantImage.ViewModel(0);
  v10 = *(v9 + 20);
  v11 = sub_23875AF90();
  v12 = (*(v11 - 8) + 8);
  v13 = v7 + v10;
  v14 = *v12;
  (*v12)(v13, v11);
  v15 = *(v7 + *(v9 + 24) + 8);

  v16 = v4[8];
  v17 = type metadata accessor for OrderActionsMenuContext(0);
  v3(v1 + v16 + *(v17 + 20), v2);
  v18 = v4[9];
  v19 = sub_23875B0A0();
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  v20 = v4[10];
  v21 = sub_2387590B0();
  v22 = *(v21 - 8);
  if (!(*(v22 + 48))(v1 + v20, 1, v21))
  {
    (*(v22 + 8))(v1 + v20, v21);
  }

  v23 = v1 + v4[11];
  v14(v23, v11);
  v24 = *(v23 + *(type metadata accessor for ProductImage.ViewModel(0) + 20));

  v25 = *(v1 + v4[12]);

  v26 = *(v1 + v4[13]);

  v27 = *(v1 + active[5] + 8);

  v28 = *(v1 + active[6] + 8);

  v29 = active[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_23875C880();
    (*(*(v30 - 8) + 8))(v1 + v29, v30);
  }

  else
  {
    v31 = *(v1 + v29);
  }

  return MEMORY[0x2821FE8E8](v37, v35 + v34, v36 | 7);
}

uint64_t sub_2385EF1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2385EF258(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2385EF2BC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_2385EF3C4()
{
  sub_23875B0A0();
  if (v0 <= 0x3F)
  {
    sub_2385EF490();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ProductImage.ViewModel(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OrderNavigationDestination(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2385EF490()
{
  if (!qword_27DF10A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF109B0, &qword_238776358);
    v0 = sub_23875F1F0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF10A88);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_73Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v7 = *(active - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, active);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t __swift_store_extra_inhabitant_index_74Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  active = type metadata accessor for ActiveOrderContentItemView.ViewModel(0);
  v9 = *(active - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, active);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09468, &unk_238764E00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_2385EF758()
{
  type metadata accessor for ActiveOrderContentItemView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385EE7F4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2385EF80C()
{
  result = qword_27DF10AB0;
  if (!qword_27DF10AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10AB8, &qword_238776550);
    sub_2385EF890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10AB0);
  }

  return result;
}

unint64_t sub_2385EF890()
{
  result = qword_27DF10AC0;
  if (!qword_27DF10AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10908, &qword_2387762C0);
    sub_23843A3E8(&qword_27DF10910, &qword_27DF10900, &qword_2387762B8);
    sub_23843A3E8(&qword_27DF10918, &qword_27DF108F0, &qword_2387762A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10AC0);
  }

  return result;
}

unint64_t sub_2385EF974()
{
  result = qword_27DF10AC8;
  if (!qword_27DF10AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10AC8);
  }

  return result;
}

void sub_2385EFA68()
{
  sub_23875DA00();
  if (v0 <= 0x3F)
  {
    sub_2385EE7F4(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2385EFB54()
{
  result = sub_23875B0A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2385EFBC0()
{
  result = qword_27DF10BA8;
  if (!qword_27DF10BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10BB0, &qword_238776760);
    sub_23843A3E8(&qword_27DF10AE0, &qword_27DF10AD0, &qword_238776698);
    sub_2385EED74(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BA8);
  }

  return result;
}

unint64_t sub_2385EFCA8()
{
  result = qword_27DF10BB8;
  if (!qword_27DF10BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10BC0, qword_238776768);
    sub_23843A3E8(&qword_27DF10B40, &qword_27DF10B30, &qword_2387766F8);
    sub_2385EED74(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BB8);
  }

  return result;
}

unint64_t sub_2385EFDC8()
{
  result = qword_27DF10BD0;
  if (!qword_27DF10BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10BC8, qword_238776880);
    sub_2385EFE54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BD0);
  }

  return result;
}

unint64_t sub_2385EFE54()
{
  result = qword_27DF10BD8;
  if (!qword_27DF10BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A028, &qword_238764FC0);
    sub_23843A174();
    sub_23843A3E8(&qword_27DF10BE0, &qword_27DF0A040, &qword_238765ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10BD8);
  }

  return result;
}

void sub_2385EFF14(id *a1)
{
  v1 = [*a1 storedArchiveDate];
  sub_23875BBE0();
}

id sub_2385EFF74(__int16 a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632E0;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2387632F0;
  v6 = MEMORY[0x277D84958];
  v7 = MEMORY[0x277D849A0];
  *(v5 + 56) = MEMORY[0x277D84958];
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  *(v4 + 32) = sub_23875EF80();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2387632F0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = a2;
  *(v4 + 40) = sub_23875EF80();
  *(v4 + 48) = sub_23875EF80();
  v9 = sub_23875EC60();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

void *sub_2385F0128(__int16 a1, __int16 a2)
{
  sub_238759C20();
  v4 = sub_238759C00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238763E70;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  swift_getKeyPath();
  *(v5 + 32) = sub_23875F040();
  v6 = sub_23875EC60();

  [v4 setSortDescriptors_];

  v7 = sub_2385EFF74(a1, a2);
  [v4 setPredicate_];

  [v4 setReturnsObjectsAsFaults_];
  return v4;
}

uint64_t sub_2385F0244()
{
  v29 = sub_23875BC40();
  v0 = *(v29 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v29);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23875BE00();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BD30();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875BE20();
  v26 = *(v14 - 8);
  v27 = v14;
  v15 = *(v26 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277CC9810], v9, v16);
  sub_23875BD40();
  (*(v10 + 8))(v13, v9);
  v19 = v5[13];
  v19(v8, *MEMORY[0x277CC9988], v4);
  sub_23875BBF0();
  v20 = sub_23875BE10();
  v21 = *(v0 + 8);
  v28 = v0 + 8;
  v21(v3, v29);
  v22 = v5[1];
  result = v22(v8, v4);
  if (v20 < -32768)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v20 >= 0x8000)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19(v8, *MEMORY[0x277CC9998], v4);
  sub_23875BBF0();
  v24 = sub_23875BE10();
  v21(v3, v29);
  result = v22(v8, v4);
  if (v24 < -32768)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v24 < 0x8000)
  {
    v25 = sub_2385F0128(v20, v24);
    (*(v26 + 8))(v18, v27);
    return v25;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2385F05E0()
{
  v0 = sub_23875BC40();
  v1 = *(v0 - 8);
  v41 = v0;
  v42 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23875BE00();
  v6 = *(v5 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875BD30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23875BE20();
  v38 = *(v15 - 8);
  v39 = v15;
  v16 = *(v38 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, *MEMORY[0x277CC9810], v10, v17);
  sub_23875BD40();
  (*(v11 + 8))(v14, v10);
  v20 = v6[13];
  v20(v9, *MEMORY[0x277CC9988], v5);
  sub_23875BBF0();
  v40 = v19;
  v21 = sub_23875BE10();
  v22 = *(v42 + 8);
  v42 += 8;
  v22(v4, v41);
  v23 = v6[1];
  result = v23(v9, v5);
  if (v21 < -32768)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v21 >= 0x8000)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v20(v9, *MEMORY[0x277CC9998], v5);
  sub_23875BBF0();
  v25 = sub_23875BE10();
  v22(v4, v41);
  result = v23(v9, v5);
  if (v25 < -32768)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v25 < 0x8000)
  {
    sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D84958];
    *(v26 + 16) = xmmword_2387632F0;
    v28 = MEMORY[0x277D849A0];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v21;
    v29 = sub_23875EF80();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_238763B60;
    *(v30 + 56) = v27;
    *(v30 + 64) = v28;
    *(v30 + 32) = v21;
    *(v30 + 96) = v27;
    *(v30 + 104) = v28;
    *(v30 + 72) = v25;
    v31 = sub_23875EF80();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_238763E60;
    *(v32 + 32) = v29;
    *(v32 + 40) = v31;
    v33 = v29;
    v34 = v31;
    v35 = sub_23875EC60();

    v36 = [objc_opt_self() orPredicateWithSubpredicates_];

    (*(v38 + 8))(v40, v39);
    return v36;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2385F0ADC()
{
  sub_23875A850();
  v0 = sub_23875A840();
  [v0 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_238763E60;
  sub_238449184(0, &qword_27DF130B0, 0x277CCAC30);
  *(v1 + 32) = sub_23875EF80();
  *(v1 + 40) = sub_2385F05E0();
  v2 = sub_23875EC60();

  v3 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v0 setPredicate_];
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_238763E60;
  v5 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v6 = sub_23875EA50();
  v7 = [v5 initWithKey:v6 ascending:0];

  *(v4 + 32) = v7;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_23875EA50();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v4 + 40) = v10;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v11 = sub_23875EC60();

  [v0 setSortDescriptors_];

  return v0;
}

uint64_t sub_2385F0D14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  active = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v4 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238758FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_238759BE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v27 - v22);
  v27 = a1;
  sub_238759BF0();
  v24 = (*(v17 + 88))(v23, v16);
  if (v24 == *MEMORY[0x277CC7C50])
  {
    (*(v17 + 96))(v23, v16);
    v25 = *v23;
    sub_238757D90();
    if ((*(v12 + 88))(v15, v11) == *MEMORY[0x277CC76A8])
    {
      (*(v12 + 96))(v15, v11);
      sub_2385ECF60(v25, *v15, v10);

      sub_2385F7BC0(v10, v28, type metadata accessor for OrderListActiveOrderRow.ViewModel);
LABEL_6:
      type metadata accessor for OrderListContent.ActiveContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v24 == *MEMORY[0x277CC7C58])
    {
      (*(v17 + 96))(v23, v16);
      sub_2384C4234(*v23, v6);

      sub_2385F7BC0(v6, v28, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel);
      goto LABEL_6;
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
    sub_238759BF0();
    sub_23875F510();
    (*(v17 + 8))(v20, v16);
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385F1160@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09F38, &qword_238764DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  sub_23875A4D0();
  sub_238757D40();
  sub_23843981C(v15, v12, &qword_27DF09F38, &qword_238764DC0);
  v16 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  v17 = (a3 + *(v16 + 20));
  v18 = a1;
  v19 = a2;
  v20 = v18;
  v21 = v19;
  sub_2384C7944(v21, v20, v17);
  sub_23843981C(v12, v9, &qword_27DF09F38, &qword_238764DC0);
  v22 = type metadata accessor for OrderListRow.ViewModel(0);
  v23 = *(v22 + 20);
  v24 = v21;
  sub_238759050();
  sub_23843981C(v12, v9, &qword_27DF09F38, &qword_238764DC0);
  v25 = v17 + *(v22 + 24);
  sub_23875B080();
  sub_238439884(v12, &qword_27DF09F38, &qword_238764DC0);
  v26 = v30 + *(v16 + 24);
  sub_238757D40();
  LOBYTE(v16) = sub_2385BA98C();
  v27 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  *(v26 + *(v27 + 20)) = v16 & 1;
  LOBYTE(v16) = [v20 isMarkedAsComplete];

  result = sub_238439884(v15, &qword_27DF09F38, &qword_238764DC0);
  *(v26 + *(v27 + 24)) = v16;
  return result;
}

uint64_t sub_2385F13B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238758FA0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_238759BE0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v27 - v22);
  v27 = a1;
  sub_238759BF0();
  v24 = (*(v17 + 88))(v23, v16);
  if (v24 == *MEMORY[0x277CC7C50])
  {
    (*(v17 + 96))(v23, v16);
    v25 = *v23;
    sub_238757D90();
    if ((*(v12 + 88))(v15, v11) == *MEMORY[0x277CC76A8])
    {
      (*(v12 + 96))(v15, v11);
      sub_2385F1160(v25, *v15, v10);

      sub_2385F7BC0(v10, v28, type metadata accessor for OrderListContent.CurrentMonthItemViewModel);
LABEL_6:
      type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    if (v24 == *MEMORY[0x277CC7C58])
    {
      (*(v17 + 96))(v23, v16);
      sub_2386A2B1C(*v23, 0, v6);

      sub_2385F7BC0(v6, v28, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
      goto LABEL_6;
    }

    v29 = 0;
    v30 = 0xE000000000000000;
    sub_23875F470();
    MEMORY[0x23EE63650](0xD00000000000001BLL, 0x80000002387896F0);
    sub_238759BF0();
    sub_23875F510();
    (*(v17 + 8))(v20, v16);
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2385F1808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D10, &qword_238776B98);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v33 = &v28 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = *(type metadata accessor for OrderListContent(0) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v10 = v4;
  sub_23875D340();
  v11 = v8;
  v12 = sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98);
  v13 = sub_23875EEE0();
  if (!v13)
  {
    (*(v5 + 8))(v8, v4);
    return MEMORY[0x277D84F90];
  }

  v14 = v13;
  v28 = v5;
  v35 = MEMORY[0x277D84F90];
  sub_2385FEED8(0, v13 & ~(v13 >> 63), 0);
  v15 = v35;
  v32 = v12;
  result = sub_23875EED0();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v17 = sub_23875ED50();
    v30 = (v1 + 16);
    v31 = v17;
    v29 = (v1 + 8);
    do
    {
      v18 = v11;
      v19 = v10;
      v20 = sub_23875EF20();
      (*v30)(v33);
      v20(v34, 0);
      sub_23875ED40();
      sub_23875ECE0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v21 = v33;
      sub_23875D370();
      v22 = v34[0];
      v23 = sub_2385F1BDC();
      v24 = v0;
      (*v29)(v21, v0);

      v35 = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_2385FEED8((v25 > 1), v26 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v26 + 1;
      v27 = v15 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v23;
      v11 = v18;
      v10 = v19;
      sub_23875EF10();
      --v14;
      v0 = v24;
    }

    while (v14);
    (*(v28 + 8))(v18, v19);
    return v15;
  }

  __break(1u);
  return result;
}

id sub_2385F1BDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D10, &qword_238776B98);
  sub_23843A3E8(&qword_27DF10D18, &qword_27DF10D10, &qword_238776B98);
  v0 = sub_23875EEE0();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  v13 = MEMORY[0x277D84F90];
  sub_2385FEEF8(0, v0 & ~(v0 >> 63), 0);
  v1 = v13;
  result = sub_23875EED0();
  if ((v2 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v4 = sub_23875EF20();
      v6 = *v5;
      v4(&v12, 0);
      LODWORD(v4) = [v6 countOfDashboardItems];
      result = [v6 countOfDashboardItemsThatShowAsActive];
      v7 = v4 - result;
      if ((v4 - result) != v4 - result)
      {
        break;
      }

      v8 = [v6 month];

      v13 = v1;
      v10 = *(v1 + 16);
      v9 = *(v1 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2385FEEF8((v9 > 1), v10 + 1, 1);
        v1 = v13;
      }

      *(v1 + 16) = v10 + 1;
      v11 = v1 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      sub_23875EF10();
      if (!--v2)
      {
        return v1;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2385F1DC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v21 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = type metadata accessor for OrderListContent(0);
  v14 = v13[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  v24 = v1;
  sub_23875C500();
  sub_23843A3E8(&qword_27DF10C18, &qword_27DF0CE28, &qword_238776AA0);
  sub_23875EED0();
  sub_23875EF00();
  v15 = *(v6 + 8);
  v15(v12, v5);
  if (v26 != v25)
  {
    return 0;
  }

  v16 = v24 + v13[9];
  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  v15(v9, v5);
  if (v26 != v25)
  {
    return 0;
  }

  v17 = v13[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v18 = v21;
  sub_23875D340();
  sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98);
  v19 = v23;
  sub_23875EED0();
  sub_23875EF00();
  (*(v22 + 8))(v18, v19);
  return v26 == v25;
}

uint64_t sub_2385F20F8@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = sub_23875D310();
  v37 = *(v45 - 8);
  v1 = *(v37 + 64);
  MEMORY[0x28223BE20](v45);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C28, &qword_238776AA8);
  v36 = *(v43 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v43);
  v6 = &v35 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C30, &qword_238776AB0);
  v38 = *(v44 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v35 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C38, &qword_238776AB8);
  v10 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v12 = &v35 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C40, &qword_238776AC0);
  v13 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C48, &qword_238776AC8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - v18;
  sub_23875ED50();
  v40 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v41 = v19;
  v20 = sub_2385F1DC4();
  MEMORY[0x28223BE20](v20);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23875D400();
    v22 = [objc_opt_self() systemGroupedBackgroundColor];
    v23 = sub_23875DFB0();
    v24 = sub_23875D780();
    v25 = &v15[*(v42 + 36)];
    *v25 = v23;
    v25[8] = v24;
    sub_23843981C(v15, v12, &qword_27DF10C40, &qword_238776AC0);
    swift_storeEnumTagMultiPayload();
    sub_2385F731C();
    v26 = sub_23843A3E8(&qword_27DF10C60, &qword_27DF10C28, &qword_238776AA8);
    v47 = v43;
    v48 = v45;
    v49 = v26;
    v50 = MEMORY[0x277CDE0D0];
    swift_getOpaqueTypeConformance2();
    v27 = v41;
    sub_23875D1B0();
    sub_238439884(v15, &qword_27DF10C40, &qword_238776AC0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C50, &qword_238776AD0);
    sub_23843A3E8(&qword_27DF10C58, &qword_27DF10C50, &qword_238776AD0);
    sub_23875D9C0();
    sub_23875D300();
    v28 = sub_23843A3E8(&qword_27DF10C60, &qword_27DF10C28, &qword_238776AA8);
    v29 = MEMORY[0x277CDE0D0];
    v30 = v43;
    v31 = v45;
    sub_23875DF50();
    (*(v37 + 8))(v3, v31);
    (*(v36 + 8))(v6, v30);
    v32 = v38;
    v33 = v44;
    (*(v38 + 16))(v12, v9, v44);
    swift_storeEnumTagMultiPayload();
    sub_2385F731C();
    v47 = v30;
    v48 = v31;
    v49 = v28;
    v50 = v29;
    swift_getOpaqueTypeConformance2();
    v27 = v41;
    sub_23875D1B0();
    (*(v32 + 8))(v9, v33);
  }

  sub_23841D608(v27, v46);
}

uint64_t sub_2385F2830()
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

uint64_t sub_2385F29D0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2385F2B78(uint64_t a1)
{
  v2 = type metadata accessor for OrderListContent(0);
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

  sub_2385F7B58(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListContent);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2385F7BC0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for OrderListContent);
  sub_23875E200();
}

uint64_t sub_2385F2D34(uint64_t a1)
{
  v18 = a1;
  v1 = sub_23875C6D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B910();
  result = (*(v11 + 48))(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v16 = v18 + *(type metadata accessor for OrderListContent(0) + 44);
    sub_2384D51B0(v5);
    sub_23875C6A0();
    (*(v2 + 8))(v5, v1);
    (*(v11 + 8))(v14, v10);
  }

  return result;
}

uint64_t sub_2385F2FE0@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_2385F3188(uint64_t a1)
{
  v2 = type metadata accessor for OrderListContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_23875ED50();
  sub_23875ED40();
  v10 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385F33E0();
  v11 = sub_23875ED80();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_2385F7B58(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListContent);
  v12 = sub_23875ED40();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v10;
  sub_2385F7BC0(v5, v14 + v13, type metadata accessor for OrderListContent);
  sub_2386C3BA4(0, 0, v9, &unk_238776A88, v14);
}

uint64_t sub_2385F33E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v2 = *(v1 - 8);
  v27 = v1;
  v28 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v25 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  *(inited + 32) = sub_23875EA50();
  v26 = inited + 32;
  v24 = type metadata accessor for OrderListContent(0);
  v11 = *(v24 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF10C18, &qword_27DF0CE28, &qword_238776AA0);
  sub_23875EED0();
  sub_23875EF00();
  v12 = *(v6 + 8);
  v12(v9, v5);
  v23[1] = *MEMORY[0x277D38520];
  v23[2] = *MEMORY[0x277D38528];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v13;
  *(inited + 56) = sub_23875EA50();
  v14 = v24;
  v15 = v0 + *(v24 + 36);
  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  v12(v9, v5);
  *(inited + 64) = sub_23875EA80();
  *(inited + 72) = v16;
  *(inited + 80) = sub_23875EA50();
  v17 = *(v14 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v18 = v25;
  sub_23875D340();
  sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98);
  v19 = v27;
  sub_23875EED0();
  sub_23875EF00();
  (*(v28 + 8))(v18, v19);
  *(inited + 88) = sub_23875EA80();
  *(inited + 96) = v20;
  v21 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  sub_23844C218(*MEMORY[0x277D38548], 0, v21);
}

uint64_t sub_2385F381C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C80, &qword_238776AE0);
  v80 = *(v3 - 8);
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v67 = v64 - v5;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C10, &qword_238776A98);
  v74 = *(v76 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v76);
  v73 = v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C88, &qword_238776AE8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C90, &qword_238776AF0);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v66 = v64 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C98, &qword_238776AF8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v78 = v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v85 = v64 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CA0, &qword_238776B00);
  v68 = *(v70 - 8);
  v22 = *(v68 + 64);
  MEMORY[0x28223BE20](v70);
  v65 = v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v64 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CA8, qword_238776B08);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v77 = v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v84 = v64 - v33;
  sub_23875ED50();
  v75 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v83 = type metadata accessor for OrderListContent(0);
  v34 = v83[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF10C18, &qword_27DF0CE28, &qword_238776AA0);
  sub_23875EED0();
  sub_23875EF00();
  v35 = v25 + 8;
  v36 = *(v25 + 8);
  v69 = v35;
  v36(v28, v24);
  v79 = v13;
  if (v87 == v86)
  {
    v37 = 1;
    v38 = v84;
    v39 = v70;
    v40 = v68;
  }

  else
  {
    sub_23875C500();
    v64[1] = swift_getKeyPath();
    v64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CB0, &qword_238776B48);
    sub_23843A3E8(&qword_27DF0CE30, &qword_27DF0CE28, &qword_238776AA0);
    sub_2385F7778();
    sub_2385F77E0();
    v41 = v36;
    v42 = v65;
    sub_23875E370();
    v40 = v68;
    v38 = v84;
    v43 = v42;
    v36 = v41;
    v39 = v70;
    (*(v68 + 32))(v84, v43, v70);
    v37 = 0;
  }

  v44 = *(v40 + 56);
  v45 = 1;
  v44(v38, v37, 1, v39);
  v46 = a1 + v83[9];
  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  v36(v28, v24);
  v47 = v85;
  if (v87 != v86)
  {
    v48 = v66;
    sub_2385F42A0(v66);
    sub_2384396E4(v48, v47, &qword_27DF10C90, &qword_238776AF0);
    v45 = 0;
  }

  v49 = 1;
  (*(v71 + 56))(v47, v45, 1, v72);
  v50 = v83[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  v51 = v73;
  sub_23875D340();
  sub_23843A3E8(&qword_27DF10C20, &qword_27DF10C10, &qword_238776A98);
  v52 = v76;
  sub_23875EED0();
  sub_23875EF00();
  (*(v74 + 8))(v51, v52);
  v54 = v79;
  v53 = v80;
  if (v87 != v86)
  {
    v87 = sub_2385F1808();
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CF0, &qword_238776B88);
    sub_23843A3E8(&qword_27DF10CF8, &qword_27DF10CF0, &qword_238776B88);
    sub_2385F7A0C();
    v55 = v67;
    sub_23875E370();
    (*(v53 + 32))(v54, v55, v3);
    v49 = 0;
  }

  (*(v53 + 56))(v54, v49, 1, v3);
  v56 = v84;
  v57 = v77;
  sub_23843981C(v84, v77, &qword_27DF10CA8, qword_238776B08);
  v58 = v78;
  sub_23843981C(v47, v78, &qword_27DF10C98, &qword_238776AF8);
  v59 = v81;
  sub_23843981C(v54, v81, &qword_27DF10C88, &qword_238776AE8);
  v60 = v54;
  v61 = v82;
  sub_23843981C(v57, v82, &qword_27DF10CA8, qword_238776B08);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D08, &qword_238776B90);
  sub_23843981C(v58, v61 + *(v62 + 48), &qword_27DF10C98, &qword_238776AF8);
  sub_23843981C(v59, v61 + *(v62 + 64), &qword_27DF10C88, &qword_238776AE8);
  sub_238439884(v60, &qword_27DF10C88, &qword_238776AE8);
  sub_238439884(v85, &qword_27DF10C98, &qword_238776AF8);
  sub_238439884(v56, &qword_27DF10CA8, qword_238776B08);
  sub_238439884(v59, &qword_27DF10C88, &qword_238776AE8);
  sub_238439884(v58, &qword_27DF10C98, &qword_238776AF8);
  sub_238439884(v57, &qword_27DF10CA8, qword_238776B08);
}

uint64_t sub_2385F42A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CEA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814F0880 != -1)
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

  LOBYTE(v12) = sub_23875D790();
  v16 = sub_23875C3D0();
  LOBYTE(v27[0]) = 0;
  v17 = MEMORY[0x28223BE20](v16);
  v27[-2] = v1;
  v27[0] = v13;
  v27[1] = v15;
  v28 = v12;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D440, &qword_238776BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D20, &qword_238776BA8);
  sub_23851DC88();
  sub_2385F7A68();
  sub_23875E3B0();
  sub_23875CE90();
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D40, &qword_238776BB8) + 36);
  (*(v4 + 16))(a1 + v21, v7, v3);
  v22 = *(v4 + 56);
  v22((a1 + v21), 0, 1, v3);
  KeyPath = swift_getKeyPath();
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C90, &qword_238776AF0) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v4 + 32))(v24 + v25, v7, v3);
  result = v22(v24 + v25, 0, 1, v3);
  *v24 = KeyPath;
  return result;
}

uint64_t sub_2385F45DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875CEA0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v17 - 2) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CE8, &qword_238776B60);
  sub_23843A3E8(&qword_27DF10CE0, &qword_27DF10CE8, &qword_238776B60);
  sub_23875E3D0();
  sub_23875CE90();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CC8, &qword_238776B50) + 36);
  (*(v5 + 16))(a2 + v11, v8, v4);
  v12 = *(v5 + 56);
  v12(a2 + v11, 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10CB0, &qword_238776B48) + 36));
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
  (*(v5 + 32))(v14 + v15, v8, v4);
  v12(v14 + v15, 0, 1, v4);

  *v14 = KeyPath;
  return result;
}

char *sub_2385F4880@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = [a1 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D70, &qword_238776C48);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = a1;
    result = sub_23862712C(a1, v5, sub_2385F4934, 0);
    *a2 = result;
    a2[1] = 0;
    a2[2] = sub_2385F496C;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2385F4934@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;

  return sub_2385F0D14(v3, a2);
}

uint64_t sub_2385F4970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v50 = a2;
  active = type metadata accessor for OrderListActiveExtractedOrderRow(0);
  v2 = *(*(active - 8) + 64);
  MEMORY[0x28223BE20](active);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D78, &qword_238776C50);
  v9 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v11 = &v44 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D80, &qword_238776C58);
  v12 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v14 = &v44 - v13;
  v15 = type metadata accessor for OrderListActiveOrderRow.ViewModel(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OrderListContent.ActiveContentItem(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D88, &qword_238776C60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v44 - v25;
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385F7B58(v45, v22, type metadata accessor for OrderListContent.ActiveContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2385F7BC0(v22, v8, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel);
    sub_2385F7B58(v8, v4, type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel);
    v27 = active;
    v28 = &v4[*(active + 20)];
    v51 = 0;
    sub_23875E1A0();
    v29 = v53;
    *v28 = v52;
    *(v28 + 1) = v29;
    v30 = *(v27 + 24);
    *&v4[v30] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
    swift_storeEnumTagMultiPayload();
    v31 = *(v27 + 28);
    *&v4[v31] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2385F7B58(v4, v11, type metadata accessor for OrderListActiveExtractedOrderRow);
    swift_storeEnumTagMultiPayload();
    sub_2385F7DBC();
    sub_2385F7D4C(&qword_27DF10DA0, type metadata accessor for OrderListActiveExtractedOrderRow);
    sub_23875D1B0();
    sub_2385F7C28(v4, type metadata accessor for OrderListActiveExtractedOrderRow);
    v32 = type metadata accessor for OrderListActiveExtractedOrderRow.ViewModel;
    v33 = v8;
  }

  else
  {
    sub_2385F7BC0(v22, v18, type metadata accessor for OrderListActiveOrderRow.ViewModel);
    sub_2385F7B58(v18, v14, type metadata accessor for OrderListActiveOrderRow.ViewModel);
    v34 = type metadata accessor for OrderListActiveOrderRow(0);
    v35 = &v14[v34[5]];
    v51 = 0;
    sub_23875E1A0();
    v36 = v53;
    *v35 = v52;
    *(v35 + 1) = v36;
    v37 = &v14[v34[6]];
    v51 = 0;
    sub_23875E1A0();
    v38 = v53;
    *v37 = v52;
    *(v37 + 1) = v38;
    v39 = v34[7];
    *&v14[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v40 = &v14[*(v48 + 36)];
    v41 = sub_23875A710();
    (*(*(v41 - 8) + 16))(v40, v18, v41);
    v42 = &v40[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v42 = swift_getKeyPath();
    v42[8] = 0;
    sub_23843981C(v14, v11, &qword_27DF10D80, &qword_238776C58);
    swift_storeEnumTagMultiPayload();
    sub_2385F7DBC();
    sub_2385F7D4C(&qword_27DF10DA0, type metadata accessor for OrderListActiveExtractedOrderRow);
    sub_23875D1B0();
    sub_238439884(v14, &qword_27DF10D80, &qword_238776C58);
    v32 = type metadata accessor for OrderListActiveOrderRow.ViewModel;
    v33 = v18;
  }

  sub_2385F7C28(v33, v32);
  sub_2384396E4(v26, v50, &qword_27DF10D88, &qword_238776C60);
}

uint64_t sub_2385F5030()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE28, &qword_238776AA0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = *(type metadata accessor for OrderListContent(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  sub_23875C500();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D38, &qword_238776BB0);
  sub_23843A3E8(&qword_27DF0CE30, &qword_27DF0CE28, &qword_238776AA0);
  sub_2385F7778();
  sub_23843A3E8(&qword_27DF10D30, &qword_27DF10D38, &qword_238776BB0);
  return sub_23875E370();
}

id sub_2385F51CC@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  v3 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = [v3 managedObjectContext];
  if (result)
  {
    v5 = result;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D48, &unk_238776BF0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    v9 = v3;
    v10 = sub_238627654(v3, v5, sub_2385F52F4, 0);

    *a2 = v10;
    a2[1] = 0;
    a2[2] = sub_2385F532C;
    a2[3] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2385F52F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;

  return sub_2385F13B4(v3, a2);
}

uint64_t sub_2385F532C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v81 = a2;
  v68 = type metadata accessor for ExtractedOrderArchiveMonthRow(0);
  v2 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CE40, &qword_23876C680);
  v71 = *(v80 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x28223BE20](v80);
  v7 = &v66 - v6;
  v8 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D50, &qword_238776C00);
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v79 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF13090, &qword_23876C690);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v66 - v16;
  v73 = type metadata accessor for OrderNavigationDestination(0);
  v70 = *(v73 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x28223BE20](v73);
  v69 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v19 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0CF40, &qword_23876C710);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - v24;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10D58, &qword_238776C08);
  v75 = *(v77 - 8);
  v26 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v72 = &v66 - v27;
  v28 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OrderListContent.CurrentMonthContentItem(0);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v35 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385F7B58(v76, v35, type metadata accessor for OrderListContent.CurrentMonthContentItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2385F7BC0(v35, v11, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    sub_2385F7B58(v11, v4, type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel);
    v36 = v68;
    v37 = &v4[*(v68 + 20)];
    v82 = 0;
    sub_23875E1A0();
    v38 = v84;
    *v37 = v83;
    *(v37 + 1) = v38;
    v39 = *(v36 + 24);
    *&v4[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    sub_2384FD5E4(*v11, v11[1]);
    sub_2385F7C28(v4, type metadata accessor for ExtractedOrderArchiveMonthRow);
    v40 = v71;
    v41 = v80;
    (*(v71 + 16))(v79, v7, v80);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF10D60, &qword_27DF10D58, &qword_238776C08);
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680);
    sub_23875D1B0();
    (*(v40 + 8))(v7, v41);
    v42 = type metadata accessor for ExtractedOrderArchiveMonthRow.ViewModel;
    v43 = v11;
  }

  else
  {
    sub_2385F7BC0(v35, v31, type metadata accessor for OrderListContent.CurrentMonthItemViewModel);
    sub_2385F7B58(&v31[*(v28 + 20)], v25, type metadata accessor for OrderListRow.ViewModel);
    v44 = *(type metadata accessor for OrderListRow(0) + 20);
    *&v25[v44] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
    swift_storeEnumTagMultiPayload();
    v45 = *(v28 + 24);
    v46 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CEF0, &qword_238776C10) + 36)];
    sub_2385F7B58(&v31[v45], v46, type metadata accessor for OrderListRowActionsModifier.ViewModel);
    v47 = type metadata accessor for OrderListRowActionsModifier(0);
    v48 = v46 + *(v47 + 20);
    v82 = 0;
    sub_23875E1A0();
    v49 = v84;
    *v48 = v83;
    *(v48 + 8) = v49;
    v50 = *(v47 + 24);
    *(v46 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
    swift_storeEnumTagMultiPayload();
    v66 = v22;
    v51 = &v25[*(v22 + 36)];
    v52 = sub_23875A710();
    v53 = *(*(v52 - 8) + 16);
    v53(v51, v31, v52);
    v54 = &v51[*(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20)];
    *v54 = swift_getKeyPath();
    v54[8] = 0;
    v55 = v21;
    v53(v21, v31, v52);
    v56 = &v21[*(v67 + 20)];
    *v56 = 0;
    *(v56 + 1) = 0;
    v57 = v21;
    v58 = v69;
    sub_2385F7B58(v57, v69, type metadata accessor for FetchedOrderDetailsDestination);
    v59 = v73;
    swift_storeEnumTagMultiPayload();
    v60 = v74;
    sub_2385F7B58(v58, v74, type metadata accessor for OrderNavigationDestination);
    v61 = (*(v70 + 56))(v60, 0, 1, v59);
    MEMORY[0x28223BE20](v61);
    *(&v66 - 2) = v25;
    sub_2385F7C90();
    sub_2385F7D4C(&qword_27DF12A80, type metadata accessor for OrderNavigationDestination);
    v62 = v72;
    sub_23875C760();
    sub_2385F7C28(v58, type metadata accessor for OrderNavigationDestination);
    sub_2385F7C28(v55, type metadata accessor for FetchedOrderDetailsDestination);
    sub_238439884(v25, &unk_27DF0CF40, &qword_23876C710);
    v63 = v75;
    v64 = v77;
    (*(v75 + 16))(v79, v62, v77);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF10D60, &qword_27DF10D58, &qword_238776C08);
    sub_23843A3E8(&qword_27DF0CE70, &qword_27DF0CE40, &qword_23876C680);
    sub_23875D1B0();
    (*(v63 + 8))(v62, v64);
    v42 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel;
    v43 = v31;
  }

  return sub_2385F7C28(v43, v42);
}

uint64_t sub_2385F5D78@<X0>(__int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_2385F5E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_23875C1E0();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_23875BC40();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  sub_23875ED50();
  v4[9] = sub_23875ED40();
  v12 = sub_23875ECE0();
  v4[10] = v12;
  v4[11] = v11;

  return MEMORY[0x2822009F8](sub_2385F5F70, v12, v11);
}

uint64_t sub_2385F5F70()
{
  v0[12] = sub_2387579D0();
  v0[13] = sub_2387579A0();
  v1 = *(MEMORY[0x277CC6750] + 4);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_2385F601C;

  return MEMORY[0x282116E48]();
}

uint64_t sub_2385F601C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v9 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_2385F65D8;
  }

  else
  {
    v7 = v2[13];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_2385F6138;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2385F6138()
{
  v1 = v0[12];
  v0[16] = sub_2387579A0();
  v2 = *(MEMORY[0x277CC6768] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_2385F61D8;

  return MEMORY[0x282116E60]();
}

uint64_t sub_2385F61D8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v9 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_2385F6780;
  }

  else
  {
    v7 = v2[16];

    v4 = v2[10];
    v5 = v2[11];
    v6 = sub_2385F62F4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2385F62F4()
{
  v1 = v0[12];
  v2 = v0[8];
  v0[19] = sub_2387579A0();
  sub_23875BBF0();
  v3 = *(MEMORY[0x277CC6788] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_2385F63A8;
  v5 = v0[8];

  return MEMORY[0x282116E90](v5);
}

uint64_t sub_2385F63A8()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 88);
  v10 = *(v2 + 80);
  if (v0)
  {
    v11 = sub_2385F6928;
  }

  else
  {
    v11 = sub_2385F6564;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2385F6564()
{
  v1 = v0[9];

  v2 = v0[8];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2385F65D8()
{
  v1 = v0[13];

  v2 = v0[15];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[2];

  sub_2384D5160(v4);
  v6 = v2;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v7, v8, "Failed to update orders as active: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v13 = v0[8];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2385F6780()
{
  v1 = v0[16];

  v2 = v0[18];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[2];

  sub_2384D5160(v4);
  v6 = v2;
  v7 = sub_23875C1B0();
  v8 = sub_23875EFE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2383F8000, v7, v8, "Failed to update orders as active: %@", v9, 0xCu);
    sub_238439884(v10, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v10, -1, -1);
    MEMORY[0x23EE64DF0](v9, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v13 = v0[8];
  v14 = v0[5];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2385F6928()
{
  v1 = v0[21];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];

  sub_2384D5160(v3);
  v5 = v1;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to update orders as active: %@", v8, 0xCu);
    sub_238439884(v9, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v9, -1, -1);
    MEMORY[0x23EE64DF0](v8, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v12 = v0[8];
  v13 = v0[5];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2385F6AC8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for OrderListContent(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[40] = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  v4[8] = 0;
  v5 = v2[7];
  *(a1 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v6 = v2[8];
  sub_238759C20();
  sub_238759BD0();
  sub_23875E500();
  sub_23875C4F0();
  v7 = v2[9];
  sub_2385F0244();
  sub_23875E500();
  sub_23875C4F0();
  v8 = v2[10];
  sub_2385F0ADC();
  swift_getKeyPath();
  sub_23875E500();
  sub_23875D330();
  v9 = v2[11];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2385F6C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2385F20F8(a2);
  sub_2385F7B58(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderListContent);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2385F7BC0(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for OrderListContent);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10C08, &unk_238776A70);
  v9 = (a2 + *(result + 36));
  *v9 = sub_2385F720C;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

BOOL sub_2385F6DDC(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OrderListContent.CurrentMonthItemViewModel(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = (a2 + v5);
  v8 = *(a1 + v5 + 8);
  v9 = *(a2 + v5 + 8);
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v7 && v8 == v9;
  if (!v10 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = type metadata accessor for MerchantImage.ViewModel(0);
  if ((MEMORY[0x23EE5FA60](v6 + *(v11 + 20), v7 + *(v11 + 20)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(v11 + 24);
  v13 = *(v6 + v12);
  v14 = *(v6 + v12 + 8);
  v15 = (v7 + v12);
  v16 = v13 == *v15 && v14 == v15[1];
  if (!v16 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for OrderListRow.ViewModel(0);
  if ((MEMORY[0x23EE5DB60](v6 + *(v17 + 20), v7 + *(v17 + 20)) & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x23EE5FB50](v6 + *(v17 + 24), v7 + *(v17 + 24)) & 1) == 0)
  {
    return 0;
  }

  v18 = *(v4 + 24);
  v19 = a1 + v18;
  v20 = a2 + v18;
  if ((MEMORY[0x23EE5F1E0](v19, v20) & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for OrderListRowActionsModifier.ViewModel(0);
  return *(v19 + *(v21 + 20)) == *(v20 + *(v21 + 20)) && *(v19 + *(v21 + 24)) == *(v20 + *(v21 + 24));
}

void sub_2385F6F68()
{
  sub_2385F7124(319, &qword_27DF09E20, MEMORY[0x277D85B28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_238464EC8();
    if (v1 <= 0x3F)
    {
      sub_23853C1AC();
      if (v2 <= 0x3F)
      {
        sub_2385F7124(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2385F7124(319, &qword_27DF0CDD0, MEMORY[0x277CC7C60], MEMORY[0x277CDD7C8]);
          if (v4 <= 0x3F)
          {
            sub_2385F7188();
            if (v5 <= 0x3F)
            {
              sub_2385F7124(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
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

void sub_2385F7124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2385F7188()
{
  if (!qword_27DF10C00)
  {
    sub_23875A850();
    v0 = sub_23875D360();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF10C00);
    }
  }
}

uint64_t sub_2385F7224(uint64_t a1)
{
  v4 = *(type metadata accessor for OrderListContent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2385F5E20(a1, v6, v7, v1 + v5);
}

unint64_t sub_2385F731C()
{
  result = qword_27DF10C68;
  if (!qword_27DF10C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C40, &qword_238776AC0);
    sub_23843A3E8(&qword_27DF10C70, &qword_27DF10C78, &qword_238776AD8);
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10C68);
  }

  return result;
}

uint64_t objectdestroyTm_22()
{
  v1 = type metadata accessor for OrderListContent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DD8, &qword_2387694D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23875C1E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = (v5 + v1[5]);
  if (v8[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    v9 = *v8;
  }

  sub_2384B4E98(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C880();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = v1[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CDB8, &qword_23876C4B8);
  v15 = *(*(v14 - 8) + 8);
  v15(v5 + v13, v14);
  v15(v5 + v1[9], v14);
  v16 = v1[10];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10BE8, &unk_2387769F0);
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_23875C6D0();
    (*(*(v19 - 8) + 8))(v5 + v18, v19);
  }

  else
  {
    v20 = *(v5 + v18);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2385F7704(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderListContent(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_2385F7778()
{
  result = qword_27DF0B110;
  if (!qword_27DF0B110)
  {
    sub_238449184(255, &qword_27DF0B108, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B110);
  }

  return result;
}

unint64_t sub_2385F77E0()
{
  result = qword_27DF10CB8;
  if (!qword_27DF10CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10CB0, &qword_238776B48);
    sub_2385F7898();
    sub_23843A3E8(&qword_27DF0D4D8, &qword_27DF0D480, &qword_23876D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10CB8);
  }

  return result;
}

unint64_t sub_2385F7898()
{
  result = qword_27DF10CC0;
  if (!qword_27DF10CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10CC8, &qword_238776B50);
    sub_2385F7950();
    sub_23843A3E8(&qword_27DF0D4C8, &qword_27DF0D4D0, &qword_23876D3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10CC0);
  }

  return result;
}

unint64_t sub_2385F7950()
{
  result = qword_27DF10CD0;
  if (!qword_27DF10CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10CD8, &qword_238776B58);
    sub_23843A3E8(&qword_27DF10CE0, &qword_27DF10CE8, &qword_238776B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10CD0);
  }

  return result;
}

unint64_t sub_2385F7A0C()
{
  result = qword_27DF10D00;
  if (!qword_27DF10D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D00);
  }

  return result;
}

unint64_t sub_2385F7A68()
{
  result = qword_27DF10D28;
  if (!qword_27DF10D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10D20, &qword_238776BA8);
    sub_23843A3E8(&qword_27DF10D30, &qword_27DF10D38, &qword_238776BB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D28);
  }

  return result;
}

uint64_t sub_2385F7B58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385F7BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2385F7C28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2385F7C90()
{
  result = qword_27DF10D68;
  if (!qword_27DF10D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DF0CF40, &qword_23876C710);
    sub_23850004C();
    sub_2385F7D4C(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D68);
  }

  return result;
}

uint64_t sub_2385F7D4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2385F7DBC()
{
  result = qword_27DF10D90;
  if (!qword_27DF10D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10D80, &qword_238776C58);
    sub_2385F7D4C(&qword_27DF10D98, type metadata accessor for OrderListActiveOrderRow);
    sub_2385F7D4C(&qword_27DF0A060, type metadata accessor for ManagedOrderResourceLoaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10D90);
  }

  return result;
}

uint64_t sub_2385F7ED0()
{
  result = sub_23875A710();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OrderListRow.ViewModel(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for OrderListRowActionsModifier.ViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2385F7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2385F8044()
{
  result = qword_27DF10DD8;
  if (!qword_27DF10DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C08, &unk_238776A70);
    sub_2385F80D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10DD8);
  }

  return result;
}

unint64_t sub_2385F80D0()
{
  result = qword_27DF10DE0;
  if (!qword_27DF10DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10DE8, qword_238776CF8);
    sub_2385F8154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10DE0);
  }

  return result;
}

unint64_t sub_2385F8154()
{
  result = qword_27DF10DF0;
  if (!qword_27DF10DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C48, &qword_238776AC8);
    sub_2385F731C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF10C28, &qword_238776AA8);
    sub_23875D310();
    sub_23843A3E8(&qword_27DF10C60, &qword_27DF10C28, &qword_238776AA8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF10DF0);
  }

  return result;
}

uint64_t OrderDetailsDestination.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t OrderDetailsDestination.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t OrderDetailsDestination.sourceApplication.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t OrderDetailsDestination.sourceApplication.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t OrderDetailsDestination.hash(into:)()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v10 = *v0;
  sub_238757D40();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  (*(v2 + 8))(v5, v1);
  if (v8)
  {
    sub_23875F720();
    sub_23875EB30();
    if (v9)
    {
LABEL_3:
      sub_23875F720();
      return sub_23875EB30();
    }
  }

  else
  {
    sub_23875F720();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  return sub_23875F720();
}

uint64_t OrderDetailsDestination.hashValue.getter()
{
  v1 = sub_23875A710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v6 = v0[1];
  v9 = v0[2];
  v8 = v0[3];
  v10 = v0[4];
  sub_23875F700();
  sub_238757D40();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  (*(v2 + 8))(v5, v1);
  if (!v9)
  {
    sub_23875F720();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_23875F720();
    return sub_23875F760();
  }

  sub_23875F720();
  sub_23875EB30();
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_23875F720();
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F8704()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  sub_23875F700();
  OrderDetailsDestination.hash(into:)();
  return sub_23875F760();
}

uint64_t sub_2385F8760()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  sub_23875F700();
  OrderDetailsDestination.hash(into:)();
  return sub_23875F760();
}

uint64_t FetchedOrderDetailsDestination.fulfillmentIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t FetchedOrderDetailsDestination.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static FetchedOrderDetailsDestination.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x23EE5F1E0]())
  {
    v4 = *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FetchedOrderDetailsDestination.hash(into:)()
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v1 = (v0 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  if (!v1[1])
  {
    return sub_23875F720();
  }

  v2 = *v1;
  sub_23875F720();

  return sub_23875EB30();
}

uint64_t FetchedOrderDetailsDestination.hashValue.getter()
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v1 = (v0 + *(type metadata accessor for FetchedOrderDetailsDestination(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  return sub_23875F760();
}

uint64_t sub_2385F8AD8(uint64_t a1)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v3 = (v1 + *(a1 + 20));
  if (v3[1])
  {
    v4 = *v3;
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  return sub_23875F760();
}

uint64_t sub_2385F8BAC(uint64_t a1, uint64_t a2)
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v4 = (v2 + *(a2 + 20));
  if (!v4[1])
  {
    return sub_23875F720();
  }

  v5 = *v4;
  sub_23875F720();

  return sub_23875EB30();
}

uint64_t sub_2385F8C80(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  return sub_23875F760();
}

uint64_t sub_2385F8D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x23EE5F1E0]())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t FetchedExtractedOrderDetailsDestination.trackedOrderIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FetchedExtractedOrderDetailsDestination.trackedOrderIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FetchedExtractedOrderDetailsDestination.fulfillmentIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t FetchedExtractedOrderDetailsDestination.fulfillmentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static FetchedExtractedOrderDetailsDestination.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_23875F630(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_23875F630() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t FetchedExtractedOrderDetailsDestination.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23875EB30();
  if (!v4)
  {
    return sub_23875F720();
  }

  sub_23875F720();

  return sub_23875EB30();
}

uint64_t FetchedExtractedOrderDetailsDestination.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23875F700();
  sub_23875EB30();
  sub_23875F720();
  if (v4)
  {
    sub_23875EB30();
  }

  return sub_23875F760();
}

uint64_t sub_2385F908C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23875F700();
  sub_23875EB30();
  sub_23875F720();
  if (v4)
  {
    sub_23875EB30();
  }

  return sub_23875F760();
}

uint64_t sub_2385F9118()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23875EB30();
  if (!v4)
  {
    return sub_23875F720();
  }

  sub_23875F720();

  return sub_23875EB30();
}

uint64_t sub_2385F9194()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_23875F700();
  sub_23875EB30();
  sub_23875F720();
  if (v4)
  {
    sub_23875EB30();
  }

  return sub_23875F760();
}

uint64_t sub_2385F9220@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875A710();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2385F928C(uint64_t a1)
{
  v3 = sub_23875A710();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ReturnDetailsDestination.returnIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ReturnDetailsDestination.returnIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t static ReturnDetailsDestination.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ReturnDetailsDestination(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t ReturnDetailsDestination.hash(into:)()
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v1 = (v0 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return sub_23875EB30();
}

uint64_t ReturnDetailsDestination.hashValue.getter()
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v1 = (v0 + *(type metadata accessor for ReturnDetailsDestination(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F95A8(uint64_t a1)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F9650(uint64_t a1, uint64_t a2)
{
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_23875EB30();
}

uint64_t sub_2385F96EC(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_23875EB30();
  return sub_23875F760();
}

uint64_t sub_2385F9790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x23EE5F1E0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_23875F630();
}

uint64_t OrderPaymentDestination.fullyQualifiedOrderIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  v4 = sub_23875A710();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderPaymentDestination.fullyQualifiedOrderIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  v4 = sub_23875A710();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t OrderPaymentDestination.init(viewModel:fullyQualifiedOrderIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2385FC6CC(a1, a3, type metadata accessor for OrderPaymentViewModel);
  v5 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  v6 = sub_23875A710();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

void static OrderPaymentDestination.== infix(_:_:)()
{
  v0 = *(type metadata accessor for OrderPaymentDestination(0) + 20);

  JUMPOUT(0x23EE5F1E0);
}

uint64_t OrderPaymentDestination.hash(into:)()
{
  v0 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  return sub_23875E960();
}

uint64_t OrderPaymentDestination.hashValue.getter()
{
  sub_23875F700();
  v0 = *(type metadata accessor for OrderPaymentDestination(0) + 20);
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385F9BE8(uint64_t a1)
{
  sub_23875F700();
  v2 = *(a1 + 20);
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t sub_2385F9C84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  return sub_23875E960();
}

uint64_t sub_2385F9D04(uint64_t a1, uint64_t a2)
{
  sub_23875F700();
  v3 = *(a2 + 20);
  sub_23875A710();
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  return sub_23875F760();
}

uint64_t OrderNavigationDestination.hash(into:)(uint64_t a1)
{
  v45 = a1;
  v2 = type metadata accessor for OrderPaymentDestination(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReturnDetailsDestination(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875A710();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = *(v43 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OrderNavigationDestination(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2385FC664(v1, v21, type metadata accessor for OrderNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_2385FC6CC(v21, v9, type metadata accessor for ReturnDetailsDestination);
      MEMORY[0x23EE641F0](3);
      sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
      sub_23875E960();
      v33 = &v9[*(v6 + 20)];
      v34 = *v33;
      v35 = *(v33 + 1);
      sub_23875EB30();
      return sub_2385FC734(v9, type metadata accessor for ReturnDetailsDestination);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_2385FC6CC(v21, v5, type metadata accessor for OrderPaymentDestination);
      MEMORY[0x23EE641F0](4);
      v25 = *(v2 + 20);
      sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
      sub_23875E960();
      return sub_2385FC734(v5, type metadata accessor for OrderPaymentDestination);
    }

    else
    {
      v40 = *v21;
      v41 = v21[1];
      MEMORY[0x23EE641F0](5);
      sub_23875F730();
      return sub_23875F730();
    }
  }

  if (!EnumCaseMultiPayload)
  {
    v27 = *v21;
    v28 = *(v21 + 1);
    v29 = *(v21 + 2);
    v30 = *(v21 + 3);
    v31 = *(v21 + 4);
    MEMORY[0x23EE641F0](0);
    sub_238757D40();
    sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
    v32 = v44;
    sub_23875E960();
    (*(v43 + 8))(v17, v32);
    if (v29)
    {
      sub_23875F720();
      sub_23875EB30();
      if (v31)
      {
LABEL_11:
        sub_23875F720();
        sub_23875EB30();
LABEL_18:
      }
    }

    else
    {
      sub_23875F720();
      if (v31)
      {
        goto LABEL_11;
      }
    }

    sub_23875F720();
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v37 = *v21;
    v36 = *(v21 + 1);
    v39 = *(v21 + 2);
    v38 = *(v21 + 3);
    MEMORY[0x23EE641F0](2);
    sub_23875EB30();
    sub_23875F720();
    if (v38)
    {
      sub_23875EB30();
    }
  }

  sub_2385FC6CC(v21, v13, type metadata accessor for FetchedOrderDetailsDestination);
  MEMORY[0x23EE641F0](1);
  sub_2385FC8E8(&qword_27DF0C888, MEMORY[0x277CC7F28]);
  sub_23875E960();
  v23 = &v13[*(v10 + 20)];
  if (*(v23 + 1))
  {
    v24 = *v23;
    sub_23875F720();
    sub_23875EB30();
  }

  else
  {
    sub_23875F720();
  }

  return sub_2385FC734(v13, type metadata accessor for FetchedOrderDetailsDestination);
}

uint64_t OrderNavigationDestination.hashValue.getter()
{
  sub_23875F700();
  OrderNavigationDestination.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2385FA3DC()
{
  sub_23875F700();
  OrderNavigationDestination.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t sub_2385FA420()
{
  sub_23875F700();
  OrderNavigationDestination.hash(into:)(v1);
  return sub_23875F760();
}

uint64_t OrderNavigationDestinationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v149 = a1;
  v134 = type metadata accessor for OrderArchiveMonthContents(0);
  v1 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v124 = (&v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10DF8, &qword_238776D30);
  v3 = *(*(v129 - 8) + 64);
  MEMORY[0x28223BE20](v129);
  v132 = &v113 - v4;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E00, &qword_238776D38);
  v5 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v135 = &v113 - v6;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E08, &qword_238776D40);
  v7 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v121 = &v113 - v8;
  v117 = type metadata accessor for OrderPaymentDestination(0);
  v9 = *(*(v117 - 8) + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E10, &qword_238776D48);
  v11 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v123 = &v113 - v12;
  v116 = type metadata accessor for ReturnDetailsDestination(0);
  v13 = *(*(v116 - 8) + 64);
  MEMORY[0x28223BE20](v116);
  v122 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E18, &qword_238776D50);
  v15 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v133 = &v113 - v16;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E20, &qword_238776D58);
  v17 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v136 = &v113 - v18;
  v115 = type metadata accessor for FetchedExtractedOrderDetails(0);
  v19 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v21 = (&v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E28, &qword_238776D60);
  v22 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v119 = &v113 - v23;
  v24 = sub_23875A710();
  v138 = *(v24 - 8);
  v139 = v24;
  v25 = *(v138 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for FetchedOrderDetails();
  v28 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v30 = (&v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E30, &qword_238776D68);
  v31 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v118 = &v113 - v32;
  v33 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v126 = &v113 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E38, &qword_238776D70);
  v36 = *(*(v145 - 8) + 64);
  MEMORY[0x28223BE20](v145);
  v147 = &v113 - v37;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E40, &qword_238776D78);
  v38 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v142 = &v113 - v39;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E48, &qword_238776D80);
  v40 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v42 = &v113 - v41;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E50, &qword_238776D88);
  v43 = *(*(v141 - 8) + 64);
  MEMORY[0x28223BE20](v141);
  v45 = &v113 - v44;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E58, &qword_238776D90);
  v46 = *(*(v146 - 8) + 64);
  MEMORY[0x28223BE20](v146);
  v143 = &v113 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10E60, &qword_238776D98);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v113 - v50;
  v52 = type metadata accessor for OrderNavigationDestination(0);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = &v113 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2385FC664(v150, v55, type metadata accessor for OrderNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v71 = v120;
        sub_2385FC6CC(v55, v120, type metadata accessor for OrderPaymentDestination);
        v72 = v121;
        sub_2385FC664(v71, v121, type metadata accessor for OrderPaymentViewModel);
        v73 = v72 + *(v131 + 36);
        (*(v138 + 16))(v73, v71 + *(v117 + 20), v139);
        v74 = v73 + *(type metadata accessor for ManagedOrderResourceLoaderModifier(0) + 20);
        *v74 = swift_getKeyPath();
        *(v74 + 8) = 0;
        sub_23843981C(v72, v132, &qword_27DF10E08, &qword_238776D40);
        swift_storeEnumTagMultiPayload();
        sub_2385FC7FC();
        sub_2385FC8E8(&qword_27DF10E78, type metadata accessor for OrderArchiveMonthContents);
        v75 = v135;
        sub_23875D1B0();
        sub_23843981C(v75, v147, &qword_27DF10E00, &qword_238776D38);
        swift_storeEnumTagMultiPayload();
        sub_2385FC930();
        sub_2385FCB88();
        sub_23875D1B0();
        sub_238439884(v75, &qword_27DF10E00, &qword_238776D38);
        sub_238439884(v72, &qword_27DF10E08, &qword_238776D40);
        v76 = type metadata accessor for OrderPaymentDestination;
        v77 = v71;
      }

      else
      {
        v108 = *(v55 + 1);
        v109 = *v55;
        sub_2385F0128(*v55, v108);
        sub_23875E500();
        v110 = *(v134 + 24);
        sub_238759C20();
        v111 = v124;
        sub_23875C4F0();
        *v111 = v109;
        v111[1] = v108;
        sub_2385FC664(v111, v132, type metadata accessor for OrderArchiveMonthContents);
        swift_storeEnumTagMultiPayload();
        sub_2385FC7FC();
        sub_2385FC8E8(&qword_27DF10E78, type metadata accessor for OrderArchiveMonthContents);
        v112 = v135;
        sub_23875D1B0();
        sub_23843981C(v112, v147, &qword_27DF10E00, &qword_238776D38);
        swift_storeEnumTagMultiPayload();
        sub_2385FC930();
        sub_2385FCB88();
        sub_23875D1B0();
        sub_238439884(v112, &qword_27DF10E00, &qword_238776D38);
        v76 = type metadata accessor for OrderArchiveMonthContents;
        v77 = v111;
      }

      return sub_2385FC734(v77, v76);
    }

    v68 = v122;
    sub_2385FC6CC(v55, v122, type metadata accessor for ReturnDetailsDestination);
    sub_238758890();
    v151 = sub_238758880();
    v88 = sub_238758A30();

    v89 = v123;
    (*(v138 + 16))(v123, v68, v139);
    v90 = sub_2386D1E8C(v89, v88, *(v68 + *(v116 + 20)), *(v68 + *(v116 + 20) + 8));

    v91 = (v89 + *(type metadata accessor for FetchedReturnDetails() + 20));
    *v91 = v90;
    v91[1] = 0;
    sub_2385FC664(v68, v89 + *(v137 + 52), type metadata accessor for ReturnDetailsDestination);
    sub_23843981C(v89, v133, &qword_27DF10E10, &qword_238776D48);
    swift_storeEnumTagMultiPayload();
    sub_2385FCB34(&qword_27DF10EA8, &qword_27DF10E28, &qword_238776D60);
    sub_2385FCB34(&qword_27DF10EB0, &qword_27DF10E10, &qword_238776D48);
    v92 = v136;
    sub_23875D1B0();
    sub_23843981C(v92, v142, &qword_27DF10E20, &qword_238776D58);
    swift_storeEnumTagMultiPayload();
    sub_2385FC9BC();
    sub_2385FCA78();
    v93 = v143;
    sub_23875D1B0();
    sub_238439884(v92, &qword_27DF10E20, &qword_238776D58);
    sub_23843981C(v93, v147, &qword_27DF10E58, &qword_238776D90);
    swift_storeEnumTagMultiPayload();
    sub_2385FC930();
    sub_2385FCB88();
    sub_23875D1B0();
    sub_238439884(v93, &qword_27DF10E58, &qword_238776D90);
    sub_238439884(v89, &qword_27DF10E10, &qword_238776D48);
    v70 = type metadata accessor for ReturnDetailsDestination;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v78 = *v55;
      v79 = *(v55 + 1);
      v80 = *(v55 + 2);
      v150 = *(v55 + 3);
      v81 = *(v55 + 4);
      KeyPath = swift_getKeyPath();
      v83 = *(v48 + 52);

      v84 = v78;

      sub_238757D40();
      *v51 = v84;
      *(v51 + 1) = v79;
      v85 = v150;
      *(v51 + 2) = v80;
      *(v51 + 3) = v85;
      *(v51 + 4) = v81;
      *(v51 + 5) = KeyPath;
      v51[48] = 0;
      sub_23843981C(v51, v42, &qword_27DF10E60, &qword_238776D98);
      swift_storeEnumTagMultiPayload();
      sub_2385FCB34(&qword_27DF10E90, &qword_27DF10E60, &qword_238776D98);
      sub_2385FCB34(&qword_27DF10E98, &qword_27DF10E30, &qword_238776D68);
      sub_23875D1B0();
      sub_23843981C(v45, v142, &qword_27DF10E50, &qword_238776D88);
      swift_storeEnumTagMultiPayload();
      sub_2385FC9BC();
      sub_2385FCA78();
      v86 = v143;
      sub_23875D1B0();
      sub_238439884(v45, &qword_27DF10E50, &qword_238776D88);
      sub_23843981C(v86, v147, &qword_27DF10E58, &qword_238776D90);
      swift_storeEnumTagMultiPayload();
      sub_2385FC930();
      sub_2385FCB88();
      sub_23875D1B0();

      sub_238439884(v86, &qword_27DF10E58, &qword_238776D90);
      return sub_238439884(v51, &qword_27DF10E60, &qword_238776D98);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v94 = *v55;
      v95 = *(v55 + 1);
      v97 = *(v55 + 2);
      v96 = *(v55 + 3);
      v98 = v115;
      v99 = v21 + *(v115 + 28);
      *v99 = swift_getKeyPath();
      v99[8] = 0;
      sub_238759480();

      v100 = sub_238759440();
      sub_23845CA1C();
      v101 = sub_23875EC60();
      [v100 setSortDescriptors_];

      v102 = sub_238759410();
      [v100 setPredicate_];

      sub_23875E500();
      v103 = v21 + *(v98 + 24);
      sub_23875C4F0();
      *v21 = v94;
      v21[1] = v95;
      v21[2] = v97;
      v21[3] = v96;

      v104 = v119;
      sub_2385FC664(v21, v119, type metadata accessor for FetchedExtractedOrderDetails);
      v105 = (v104 + *(v128 + 52));
      *v105 = v94;
      v105[1] = v95;
      sub_2385FC734(v21, type metadata accessor for FetchedExtractedOrderDetails);
      sub_23843981C(v104, v133, &qword_27DF10E28, &qword_238776D60);
      swift_storeEnumTagMultiPayload();
      sub_2385FCB34(&qword_27DF10EA8, &qword_27DF10E28, &qword_238776D60);
      sub_2385FCB34(&qword_27DF10EB0, &qword_27DF10E10, &qword_238776D48);
      v106 = v136;
      sub_23875D1B0();
      sub_23843981C(v106, v142, &qword_27DF10E20, &qword_238776D58);
      swift_storeEnumTagMultiPayload();
      sub_2385FC9BC();
      sub_2385FCA78();
      v107 = v143;
      sub_23875D1B0();
      sub_238439884(v106, &qword_27DF10E20, &qword_238776D58);
      sub_23843981C(v107, v147, &qword_27DF10E58, &qword_238776D90);
      swift_storeEnumTagMultiPayload();
      sub_2385FC930();
      sub_2385FCB88();
      sub_23875D1B0();
      sub_238439884(v107, &qword_27DF10E58, &qword_238776D90);
      return sub_238439884(v104, &qword_27DF10E28, &qword_238776D60);
    }

    v57 = v126;
    sub_2385FC6CC(v55, v126, type metadata accessor for FetchedOrderDetailsDestination);
    v58 = v138;
    v150 = *(v138 + 16);
    v150(v27, v57, v139);
    v59 = (v57 + *(v33 + 20));
    v60 = *v59;
    v136 = v59[1];
    v137 = v60;
    sub_238757DF0();

    v61 = sub_238757D80();
    sub_23845CA1C();
    v62 = sub_23875EC60();
    [v61 setSortDescriptors_];

    v63 = MEMORY[0x23EE5C810](v27);
    [v61 setPredicate_];

    sub_23875E500();
    v64 = v30 + *(v114 + 20);
    sub_23875C4F0();
    v65 = v139;
    (*(v58 + 8))(v27, v139);
    v66 = v136;
    *v30 = v137;
    v30[1] = v66;
    v67 = v118;
    sub_2385FC664(v30, v118, type metadata accessor for FetchedOrderDetails);
    v68 = v126;
    v150(v67 + *(v127 + 52), v126, v65);
    sub_2385FC734(v30, type metadata accessor for FetchedOrderDetails);
    sub_23843981C(v67, v42, &qword_27DF10E30, &qword_238776D68);
    swift_storeEnumTagMultiPayload();
    sub_2385FCB34(&qword_27DF10E90, &qword_27DF10E60, &qword_238776D98);
    sub_2385FCB34(&qword_27DF10E98, &qword_27DF10E30, &qword_238776D68);
    sub_23875D1B0();
    sub_23843981C(v45, v142, &qword_27DF10E50, &qword_238776D88);
    swift_storeEnumTagMultiPayload();
    sub_2385FC9BC();
    sub_2385FCA78();
    v69 = v143;
    sub_23875D1B0();
    sub_238439884(v45, &qword_27DF10E50, &qword_238776D88);
    sub_23843981C(v69, v147, &qword_27DF10E58, &qword_238776D90);
    swift_storeEnumTagMultiPayload();
    sub_2385FC930();
    sub_2385FCB88();
    sub_23875D1B0();
    sub_238439884(v69, &qword_27DF10E58, &qword_238776D90);
    sub_238439884(v67, &qword_27DF10E30, &qword_238776D68);
    v70 = type metadata accessor for FetchedOrderDetailsDestination;
  }

  v76 = v70;
  v77 = v68;
  return sub_2385FC734(v77, v76);
}

uint64_t _s12FinanceKitUI23OrderDetailsDestinationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_23875A710();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v23 = a1[3];
  v24 = v12;
  v25 = a1[4];
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v22 = a2[3];
  v18 = a2[4];
  sub_238757D40();
  sub_238757D40();
  LOBYTE(v13) = MEMORY[0x23EE5F1E0](v11, v8);
  v19 = *(v5 + 8);
  v19(v8, v4);
  v19(v11, v4);
  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v14)
  {
    if (!v17)
    {
      goto LABEL_7;
    }

LABEL_13:
    v20 = 0;
    return v20 & 1;
  }

  if (!v17 || (v24 != v16 || v14 != v17) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v20 = (v25 | v18) == 0;
  if (v25 && v18)
  {
    if (v23 == v22 && v25 == v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_23875F630();
    }
  }

  return v20 & 1;
}

uint64_t _s12FinanceKitUI26OrderNavigationDestinationO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  *&v85 = a2;
  v82 = type metadata accessor for OrderPaymentDestination(0);
  v3 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v81 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ReturnDetailsDestination(0);
  v5 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v84 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for FetchedOrderDetailsDestination(0);
  v7 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v83 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OrderNavigationDestination(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v79 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = (&v79 - v20);
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = (&v79 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF10F58, &qword_238777278);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v32 = (&v79 + *(v31 + 56) - v30);
  v33 = a1;
  v34 = &v79 - v30;
  sub_2385FC664(v33, &v79 - v30, type metadata accessor for OrderNavigationDestination);
  sub_2385FC664(v85, v32, type metadata accessor for OrderNavigationDestination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_2385FC664(v34, v18, type metadata accessor for OrderNavigationDestination);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v50 = v32;
        v51 = v84;
        sub_2385FC6CC(v50, v84, type metadata accessor for ReturnDetailsDestination);
        if (MEMORY[0x23EE5F1E0](v18, v51))
        {
          if (v52 = *(v80 + 20), v53 = *&v18[v52], v54 = *&v18[v52 + 8], v55 = (v51 + v52), v53 == *v55) && v54 == v55[1] || (sub_23875F630())
          {
            v43 = type metadata accessor for ReturnDetailsDestination;
            sub_2385FC734(v51, type metadata accessor for ReturnDetailsDestination);
            v44 = v18;
            goto LABEL_24;
          }
        }

        v74 = type metadata accessor for ReturnDetailsDestination;
        sub_2385FC734(v51, type metadata accessor for ReturnDetailsDestination);
        v75 = v18;
LABEL_52:
        sub_2385FC734(v75, v74);
        goto LABEL_53;
      }

      sub_2385FC734(v18, type metadata accessor for ReturnDetailsDestination);
LABEL_43:
      sub_238439884(v34, &qword_27DF10F58, &qword_238777278);
LABEL_57:
      v46 = 0;
      return v46 & 1;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2385FC664(v34, v15, type metadata accessor for OrderNavigationDestination);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        sub_2385FC734(v15, type metadata accessor for OrderPaymentDestination);
        goto LABEL_43;
      }

      v45 = v81;
      sub_2385FC6CC(v32, v81, type metadata accessor for OrderPaymentDestination);
      v46 = MEMORY[0x23EE5F1E0](&v15[*(v82 + 20)], v45 + *(v82 + 20));
      sub_2385FC734(v45, type metadata accessor for OrderPaymentDestination);
      sub_2385FC734(v15, type metadata accessor for OrderPaymentDestination);
    }

    else
    {
      sub_2385FC664(v34, v12, type metadata accessor for OrderNavigationDestination);
      v68 = v12[1];
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_43;
      }

      if (*v12 != *v32)
      {
LABEL_53:
        v76 = v34;
LABEL_56:
        sub_2385FC734(v76, type metadata accessor for OrderNavigationDestination);
        goto LABEL_57;
      }

      v46 = v68 == v32[1];
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2385FC664(v34, v24, type metadata accessor for OrderNavigationDestination);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = v32;
          v37 = v83;
          sub_2385FC6CC(v36, v83, type metadata accessor for FetchedOrderDetailsDestination);
          if (MEMORY[0x23EE5F1E0](v24, v37))
          {
            v38 = *(v79 + 20);
            v39 = &v24[v38];
            v40 = *&v24[v38 + 8];
            v41 = (v37 + v38);
            v42 = v41[1];
            if (v40)
            {
              if (v42 && (*v39 == *v41 && v40 == v42 || (sub_23875F630() & 1) != 0))
              {
                goto LABEL_11;
              }
            }

            else if (!v42)
            {
LABEL_11:
              v43 = type metadata accessor for FetchedOrderDetailsDestination;
              sub_2385FC734(v37, type metadata accessor for FetchedOrderDetailsDestination);
              v44 = v24;
LABEL_24:
              sub_2385FC734(v44, v43);
              v56 = v34;
LABEL_64:
              sub_2385FC734(v56, type metadata accessor for OrderNavigationDestination);
              v46 = 1;
              return v46 & 1;
            }
          }

          v74 = type metadata accessor for FetchedOrderDetailsDestination;
          sub_2385FC734(v37, type metadata accessor for FetchedOrderDetailsDestination);
          v75 = v24;
          goto LABEL_52;
        }

        sub_2385FC734(v24, type metadata accessor for FetchedOrderDetailsDestination);
        goto LABEL_43;
      }

      v57 = v34;
      sub_2385FC664(v34, v21, type metadata accessor for OrderNavigationDestination);
      v59 = *v21;
      v58 = v21[1];
      v61 = v21[2];
      v60 = v21[3];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        v34 = v57;
        goto LABEL_43;
      }

      v62 = *v32;
      v63 = *(v32 + 1);
      v65 = *(v32 + 2);
      v64 = *(v32 + 3);
      v66 = v59 == v62 && v58 == v63;
      if (v66 || (sub_23875F630() & 1) != 0)
      {
        v67 = v57;
        if (v60)
        {
          if (v64)
          {
            if (v61 == v65 && v60 == v64)
            {

LABEL_62:

LABEL_63:
              v56 = v57;
              goto LABEL_64;
            }

            v78 = sub_23875F630();

            if (v78)
            {
              goto LABEL_63;
            }

LABEL_55:
            v76 = v67;
            goto LABEL_56;
          }
        }

        else if (!v64)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_62;
        }

        goto LABEL_55;
      }

      v67 = v57;
      goto LABEL_55;
    }

    sub_2385FC664(v34, v27, type metadata accessor for OrderNavigationDestination);
    v47 = *v27;
    v48 = v27[2];
    v49 = v27[4];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_43;
    }

    v69 = v27[3];
    v70 = v27[1];
    v72 = *v32;
    v71 = *(v32 + 1);
    v73 = *(v32 + 4);
    v89[0] = v47;
    v89[1] = v70;
    v89[2] = v48;
    v89[3] = v69;
    v89[4] = v49;
    v86[0] = v72;
    v86[1] = v71;
    v85 = *(v32 + 1);
    v87 = v85;
    v88 = v73;
    v46 = _s12FinanceKitUI23OrderDetailsDestinationV2eeoiySbAC_ACtFZ_0(v89, v86);
  }

  sub_2385FC734(v34, type metadata accessor for OrderNavigationDestination);
  return v46 & 1;
}