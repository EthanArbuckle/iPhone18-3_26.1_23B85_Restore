uint64_t sub_2226C4538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v44 = a1;
  v45 = a6;
  v42 = a2;
  v43 = a3;
  v41 = sub_222737FDC();
  v39 = *(v41 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v38 - v17;
  (*(v15 + 16))(v38 - v17, a4, v14);
  v19 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v20 = swift_allocObject();
  (*(v15 + 32))(v20 + v19, v18, v14);
  *(v20 + ((v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CD0, &qword_222743850);
  v21 = a5;
  v22 = sub_222738F2C();
  v23 = sub_22273946C();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_222743848;
  v24[5] = v20;
  v38[1] = v22;
  v24[6] = v22;

  sub_2226D4E54(0, 0, v13, &unk_222743858, v24);

  v25 = v39;
  v26 = *(v39 + 16);
  v27 = v9;
  v28 = v9;
  v29 = v41;
  v26(v28, v42, v41);
  v30 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v31 = v30 + v40;
  v42 = swift_allocObject();
  v32 = *(v25 + 32);
  v32(v42 + v30, v27, v29);
  v26(v27, v43, v29);
  v33 = (v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v32(v34 + v30, v27, v29);
  v35 = v44;
  *(v34 + v33) = v44;
  v46[3] = sub_2227387BC();
  v46[4] = MEMORY[0x277D22078];
  v46[0] = v45;
  v36 = v35;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2226C498C(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = sub_22273757C();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D60, &qword_222743930);
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D68, &qword_222743938);
  v2[34] = v10;
  v11 = *(v10 - 8);
  v2[35] = v11;
  v12 = *(v11 + 64) + 15;
  v2[36] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D70, &qword_222743940) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D78, &qword_222743948);
  v2[38] = v14;
  v15 = *(v14 - 8);
  v2[39] = v15;
  v16 = *(v15 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226C4BE8, 0, 0);
}

uint64_t sub_2226C4BE8()
{
  v1 = v0[40];
  v2 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8);
  sub_22273752C();
  v3 = sub_2226C9FAC(&qword_27D013D80, &qword_27D013D78, &qword_222743948);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_2226C4CCC;
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_2226C4CCC()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2226C547C;
  }

  else
  {
    v3 = sub_2226C4DE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226C4DFC()
{
  v1 = v0[37];
  if ((*(v0[35] + 48))(v1, 1, v0[34]) == 1)
  {
    (*(v0[39] + 8))(v0[40], v0[38]);
    v2 = 0;
    v3 = 0;
LABEL_10:
    v26 = v0[40];
    v28 = v0[36];
    v27 = v0[37];
    v29 = v0[33];
    v30 = v0[30];
    v31 = v0[27];

    v32 = v0[1];

    return v32(v3, v2);
  }

  sub_2226CA000(v1, v0[36], &qword_27D013D68, &qword_222743938);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = v0[39];
    v20 = v0[40];
    v22 = v0[38];
    v24 = v0[32];
    v23 = v0[33];
    v25 = v0[31];
    (*(v24 + 32))(v23, v0[36], v25);
    sub_22273753C();
    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    v3 = v0[21];
    v2 = v0[22];
    goto LABEL_10;
  }

  (*(v0[29] + 32))(v0[30], v0[36], v0[28]);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v36 = v0[39];
  v37 = v0[38];
  v38 = v0[40];
  v39 = v0[37];
  v40 = v0[36];
  v41 = v0[33];
  v4 = v0[29];
  v42 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  v43 = sub_222738F6C();
  __swift_project_value_buffer(v43, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v35 = ((*(v8 + 80) + 32) & ~*(v8 + 80)) + 2 * *(v8 + 72);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v34 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  v0[5] = v34;
  v0[2] = v7;
  v33 = v7;
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  v0[9] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  v10 = *(v4 + 16);
  v10(boxed_opaque_existential_1, v42, v6);
  sub_2227381DC();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  sub_2226C9638(&qword_27D013D08, MEMORY[0x277CEE0C8]);
  v11 = swift_allocError();
  v10(v12, v42, v6);
  swift_willThrow();
  (*(v4 + 8))(v42, v6);
  (*(v36 + 8))(v38, v37);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  v13 = v11;
  sub_2227381AC();
  sub_22273819C();
  v0[13] = v34;
  v0[10] = v33;
  v14 = v33;
  sub_22273816C();
  sub_222660468((v0 + 10), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  swift_getErrorValue();
  v15 = v0[18];
  v16 = v0[19];
  v0[17] = v16;
  v17 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  (*(*(v16 - 8) + 16))(v17, v15, v16);
  sub_2227381DC();
  sub_222660468((v0 + 14), &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_2226C547C()
{
  *(v0 + 184) = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2226C5508(uint64_t a1, uint64_t a2)
{
  v2[23] = a1;
  v2[24] = a2;
  v3 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v4 = sub_22273757C();
  v2[26] = v4;
  v5 = *(v4 - 8);
  v2[27] = v5;
  v6 = *(v5 + 64) + 15;
  v2[28] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D28, &qword_2227438D8);
  v2[29] = v7;
  v8 = *(v7 - 8);
  v2[30] = v8;
  v9 = *(v8 + 64) + 15;
  v2[31] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D30, &qword_2227438E0);
  v2[32] = v10;
  v11 = *(v10 - 8);
  v2[33] = v11;
  v12 = *(v11 + 64) + 15;
  v2[34] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D38, &qword_2227438E8) - 8) + 64) + 15;
  v2[35] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D40, &qword_2227438F0);
  v2[36] = v14;
  v15 = *(v14 - 8);
  v2[37] = v15;
  v16 = *(v15 + 64) + 15;
  v2[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226C5764, 0, 0);
}

uint64_t sub_2226C5764()
{
  v1 = v0[38];
  v2 = v0[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0);
  sub_22273752C();
  v3 = sub_2226C9FAC(&qword_27D013D48, &qword_27D013D40, &qword_2227438F0);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[39] = v5;
  *v5 = v0;
  v5[1] = sub_2226C5848;
  v6 = v0[38];
  v7 = v0[35];
  v8 = v0[36];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_2226C5848()
{
  v2 = *(*v1 + 312);
  v5 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_2226C5FF0;
  }

  else
  {
    v3 = sub_2226C595C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226C5978()
{
  v1 = *(v0 + 280);
  if ((*(*(v0 + 264) + 48))(v1, 1, *(v0 + 256)) == 1)
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    v2 = 2;
LABEL_10:
    v25 = *(v0 + 304);
    v27 = *(v0 + 272);
    v26 = *(v0 + 280);
    v28 = *(v0 + 248);
    v29 = *(v0 + 224);
    v30 = *(v0 + 200);

    v31 = *(v0 + 8);

    return v31(v2);
  }

  sub_2226CA000(v1, *(v0 + 272), &qword_27D013D30, &qword_2227438E0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v20 = *(v0 + 296);
    v19 = *(v0 + 304);
    v21 = *(v0 + 288);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 232);
    (*(v23 + 32))(v22, *(v0 + 272), v24);
    sub_22273753C();
    (*(v23 + 8))(v22, v24);
    (*(v20 + 8))(v19, v21);
    v2 = *(v0 + 328);
    goto LABEL_10;
  }

  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 272), *(v0 + 208));
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 296);
  v36 = *(v0 + 288);
  v37 = *(v0 + 304);
  v38 = *(v0 + 280);
  v39 = *(v0 + 272);
  v40 = *(v0 + 248);
  v3 = *(v0 + 216);
  v41 = *(v0 + 224);
  v4 = *(v0 + 200);
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v42 = sub_222738F6C();
  __swift_project_value_buffer(v42, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v34 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + 2 * *(v7 + 72);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v33 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(v0 + 40) = v33;
  *(v0 + 16) = v6;
  v32 = v6;
  sub_22273816C();
  sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  *(v0 + 72) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  v9 = *(v3 + 16);
  v9(boxed_opaque_existential_1, v41, v5);
  sub_2227381DC();
  sub_222660468(v0 + 48, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  sub_2226C9638(&qword_27D013D08, MEMORY[0x277CEE0C8]);
  v10 = swift_allocError();
  v9(v11, v41, v5);
  swift_willThrow();
  (*(v3 + 8))(v41, v5);
  (*(v35 + 8))(v37, v36);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  v12 = v10;
  sub_2227381AC();
  sub_22273819C();
  *(v0 + 104) = v33;
  *(v0 + 80) = v32;
  v13 = v32;
  sub_22273816C();
  sub_222660468(v0 + 80, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  swift_getErrorValue();
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);
  *(v0 + 136) = v15;
  v16 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  sub_2227381DC();
  sub_222660468(v0 + 112, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_2226C5FF0()
{
  *(v0 + 168) = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

uint64_t sub_2226C607C(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v4 = sub_22273757C();
  v2[28] = v4;
  v5 = *(v4 - 8);
  v2[29] = v5;
  v6 = *(v5 + 64) + 15;
  v2[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CE0, &qword_222743878);
  v2[31] = v7;
  v8 = *(v7 - 8);
  v2[32] = v8;
  v9 = *(v8 + 64) + 15;
  v2[33] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CE8, &qword_222743880);
  v2[34] = v10;
  v11 = *(v10 - 8);
  v2[35] = v11;
  v12 = *(v11 + 64) + 15;
  v2[36] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CF0, &qword_222743888) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CF8, &unk_222743890);
  v2[38] = v14;
  v15 = *(v14 - 8);
  v2[39] = v15;
  v16 = *(v15 + 64) + 15;
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226C62D8, 0, 0);
}

uint64_t sub_2226C62D8()
{
  v1 = v0[40];
  v2 = v0[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0);
  sub_22273752C();
  v3 = sub_2226C9FAC(&qword_27D013D00, &qword_27D013CF8, &unk_222743890);
  v4 = *(MEMORY[0x277D856D0] + 4);
  v5 = swift_task_alloc();
  v0[41] = v5;
  *v5 = v0;
  v5[1] = sub_2226C63BC;
  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];

  return MEMORY[0x282200308](v7, v8, v3);
}

uint64_t sub_2226C63BC()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_2226CA11C;
  }

  else
  {
    v3 = sub_2226C64D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226C64EC()
{
  v1 = *(v0 + 296);
  if ((*(*(v0 + 280) + 48))(v1, 1, *(v0 + 272)) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    v2 = 0;
    v3 = 1;
LABEL_10:
    v26 = *(v0 + 320);
    v28 = *(v0 + 288);
    v27 = *(v0 + 296);
    v29 = *(v0 + 264);
    v30 = *(v0 + 240);
    v31 = *(v0 + 216);

    v32 = *(v0 + 8);

    return v32(v2, v3);
  }

  sub_2226CA000(v1, *(v0 + 288), &qword_27D013CE8, &qword_222743880);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v21 = *(v0 + 312);
    v20 = *(v0 + 320);
    v22 = *(v0 + 304);
    v24 = *(v0 + 256);
    v23 = *(v0 + 264);
    v25 = *(v0 + 248);
    (*(v24 + 32))(v23, *(v0 + 288), v25);
    sub_22273753C();
    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    goto LABEL_10;
  }

  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 288), *(v0 + 224));
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v36 = *(v0 + 312);
  v37 = *(v0 + 304);
  v38 = *(v0 + 320);
  v39 = *(v0 + 296);
  v40 = *(v0 + 288);
  v41 = *(v0 + 264);
  v4 = *(v0 + 232);
  v42 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v43 = sub_222738F6C();
  __swift_project_value_buffer(v43, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v35 = ((*(v8 + 80) + 32) & ~*(v8 + 80)) + 2 * *(v8 + 72);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v34 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  *(v0 + 40) = v34;
  *(v0 + 16) = v7;
  v33 = v7;
  sub_22273816C();
  sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  *(v0 + 72) = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  v10 = *(v4 + 16);
  v10(boxed_opaque_existential_1, v42, v6);
  sub_2227381DC();
  sub_222660468(v0 + 48, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  sub_2226C9638(&qword_27D013D08, MEMORY[0x277CEE0C8]);
  v11 = swift_allocError();
  v10(v12, v42, v6);
  swift_willThrow();
  (*(v4 + 8))(v42, v6);
  (*(v36 + 8))(v38, v37);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  v13 = v11;
  sub_2227381AC();
  sub_22273819C();
  *(v0 + 104) = v34;
  *(v0 + 80) = v33;
  v14 = v33;
  sub_22273816C();
  sub_222660468(v0 + 80, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  swift_getErrorValue();
  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  *(v0 + 136) = v16;
  v17 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  (*(*(v16 - 8) + 16))(v17, v15, v16);
  sub_2227381DC();
  sub_222660468(v0 + 112, &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

void sub_2226C6B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2227412F0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EB0, &qword_222743920);
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_222737FCC();
}

void sub_2226C6E60(char a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227412F0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D20, &qword_2227438C8);
  *(v4 + 32) = a1;
  v5 = sub_222737FCC();
}

void sub_2226C7144(uint64_t a1, char a2)
{
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2227412F0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CD8, &qword_222743868);
  *(v6 + 32) = a1;
  *(v6 + 40) = a2 & 1;
  v7 = sub_222737FCC();
}

void sub_2226C7434()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222738D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v7 = swift_allocObject();
  v12 = xmmword_2227412F0;
  *(v7 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  sub_222738D0C();
  (*(v3 + 8))(v6, v2);
  v8 = v14;
  v9 = __swift_project_boxed_opaque_existential_1(v13, v14);
  *(v7 + 56) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v9, v8);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v11 = sub_222737FCC();
}

uint64_t sub_2226C7848(void *a1)
{
  v3 = sub_2227381BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22273751C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - v17;
  [a1 integerValue];
  v19 = sub_2227375BC();
  if (v20)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v21 = sub_222738F6C();
    __swift_project_value_buffer(v21, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v22 = *(sub_2227381FC() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v43[3] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    v43[0] = a1;
    v25 = a1;
    sub_22273816C();
    sub_222660468(v43, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  else
  {
    v40 = v6;
    v41 = v11;
    v42 = v19;
    v26 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
    sub_2227384EC();
    v27 = sub_222738CFC();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v18, 1, v27) == 1)
    {
      sub_222660468(v18, &unk_27D013A90, &unk_222741DC0);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CCC();

      v29 = v43[0];
      (*(v28 + 8))(v18, v27);
      if (v29)
      {
        sub_2227375CC();
        v30 = sub_22273759C();
        v31 = v29;
        sub_22273750C();
        sub_22273756C();

        (*(v40 + 8))(v9, v5);
        sub_22262E364(0, &qword_281312B48, 0x277CD4640);
        v32 = sub_2227396EC();
        MEMORY[0x28223BE20](v32);
        *(&v39 - 2) = v14;
        *(&v39 - 1) = a1;
        v33 = sub_2227396FC();

        (*(v41 + 8))(v14, v10);
        return v33;
      }
    }

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v35 = sub_222738F6C();
    __swift_project_value_buffer(v35, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v36 = *(sub_2227381FC() - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();
  }

  return 0;
}

uint64_t sub_2226C7F0C(void *a1)
{
  v3 = sub_2227381BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22273751C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - v17;
  [a1 integerValue];
  v19 = sub_2227375AC();
  if (v20)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v21 = sub_222738F6C();
    __swift_project_value_buffer(v21, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v22 = *(sub_2227381FC() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v43[3] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    v43[0] = a1;
    v25 = a1;
    sub_22273816C();
    sub_222660468(v43, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  else
  {
    v40 = v6;
    v41 = v11;
    v42 = v19;
    v26 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
    sub_2227384EC();
    v27 = sub_222738CFC();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v18, 1, v27) == 1)
    {
      sub_222660468(v18, &unk_27D013A90, &unk_222741DC0);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CCC();

      v29 = v43[0];
      (*(v28 + 8))(v18, v27);
      if (v29)
      {
        sub_2227375CC();
        v30 = sub_22273759C();
        v31 = v29;
        sub_22273750C();
        sub_22273755C();

        (*(v40 + 8))(v9, v5);
        sub_22262E364(0, &qword_281312B48, 0x277CD4640);
        v32 = sub_2227396EC();
        MEMORY[0x28223BE20](v32);
        *(&v39 - 2) = v14;
        *(&v39 - 1) = a1;
        v33 = sub_2227396FC();

        (*(v41 + 8))(v14, v10);
        return v33;
      }
    }

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v35 = sub_222738F6C();
    __swift_project_value_buffer(v35, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v36 = *(sub_2227381FC() - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();
  }

  return 0;
}

uint64_t sub_2226C85D0(void *a1)
{
  v3 = sub_2227381BC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = sub_22273751C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v39 - v17;
  [a1 integerValue];
  v19 = sub_22273758C();
  if (v20)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v21 = sub_222738F6C();
    __swift_project_value_buffer(v21, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v22 = *(sub_2227381FC() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v43[3] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    v43[0] = a1;
    v25 = a1;
    sub_22273816C();
    sub_222660468(v43, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C6C();
  }

  else
  {
    v40 = v6;
    v41 = v11;
    v42 = v19;
    v26 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit12JSUserObject_accounts + 24));
    sub_2227384EC();
    v27 = sub_222738CFC();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v18, 1, v27) == 1)
    {
      sub_222660468(v18, &unk_27D013A90, &unk_222741DC0);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CCC();

      v29 = v43[0];
      (*(v28 + 8))(v18, v27);
      if (v29)
      {
        sub_2227375CC();
        v30 = sub_22273759C();
        v31 = v29;
        sub_22273750C();
        sub_22273754C();

        (*(v40 + 8))(v9, v5);
        sub_22262E364(0, &qword_281312B48, 0x277CD4640);
        v32 = sub_2227396EC();
        MEMORY[0x28223BE20](v32);
        *(&v39 - 2) = v14;
        *(&v39 - 1) = a1;
        v33 = sub_2227396FC();

        (*(v41 + 8))(v14, v10);
        return v33;
      }
    }

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v35 = sub_222738F6C();
    __swift_project_value_buffer(v35, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v36 = *(sub_2227381FC() - 8);
    v37 = *(v36 + 72);
    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C6C();
  }

  return 0;
}

uint64_t sub_2226C8D34(char a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v4 + 16) = a1;
  return sub_22273966C();
}

uint64_t sub_2226C8E14(uint64_t a1)
{
  v3 = *(a1 + 24);
  if (v3 == 2)
  {
    *&v9[33] = v1;
    *&v9[41] = v2;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    v5(v9, v7);

    LOBYTE(v3) = v9[0];
    *(a1 + 24) = v9[0];
  }

  return v3 & 1;
}

uint64_t sub_2226C8E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2226C8F28;

  return sub_2226C498C(a2, a3);
}

uint64_t sub_2226C8F28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_2226C9044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2226C90E4;

  return sub_2226C5508(a2, a3);
}

uint64_t sub_2226C90E4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_2226C91F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2226C9294;

  return sub_2226C607C(a2, a3);
}

uint64_t sub_2226C9294(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    *(v9 + 8) = a2 & 1;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_2226C93B8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013CC8, qword_2227437F0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_2226C91F4(a1, v1 + v5, v6);
}

uint64_t sub_2226C94E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D3EDC(a1, v4, v5, v6, v7, v8);
}

void sub_2226C95C0(uint64_t a1)
{
  v2 = *(*(sub_222737FDC() - 8) + 80);
  v3 = *a1;
  v4 = *(a1 + 8);

  sub_2226C7144(v3, v4);
}

uint64_t sub_2226C9638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2226C9704(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D10, &qword_2227438A0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22266BE24;

  return sub_2226C9044(a1, v1 + v5, v6);
}

uint64_t sub_2226C9830(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22266BE24;

  return sub_2226D3C00(a1, v4, v5, v6, v7, v8);
}

void sub_2226C990C(char *a1)
{
  v2 = *(*(sub_222737FDC() - 8) + 80);
  v3 = *a1;

  sub_2226C6E60(v3);
}

uint64_t objectdestroy_7Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  v9 = *(v2 + v8);

  return MEMORY[0x2821FE8E8](v2, v8 + 8, v5 | 7);
}

uint64_t sub_2226C9AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, unint64_t, void, void))
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a6(a1, a2, a3, v6 + v12, *(v6 + v13), *(v6 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_10Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v7 + 8, v5 | 7);
}

uint64_t sub_2226C9C10(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D50, &qword_2227438F8) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2226C8E88(a1, v1 + v5, v6);
}

uint64_t sub_2226C9D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D3988(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_18Tm_0()
{
  v1 = sub_222737FDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2226C9EA0(uint64_t *a1)
{
  v2 = *(*(sub_222737FDC() - 8) + 80);
  v3 = *a1;
  v4 = a1[1];

  sub_2226C6B70(v3, v4);
}

void sub_2226C9F10()
{
  v1 = *(sub_222737FDC() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226C7434();
}

uint64_t sub_2226C9FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2226CA000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2226CA068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2226C8E14(v1);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

void *sub_2226CA09C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t type metadata accessor for JSDiagnostics()
{
  result = qword_281313DB8;
  if (!qword_281313DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226CA198()
{
  result = sub_22273842C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226CA204(void *a1, uint64_t a2)
{
  v157 = sub_2227385BC();
  v156 = *(v157 - 8);
  v4 = *(v156 + 64);
  MEMORY[0x28223BE20](v157);
  v155 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_222738D8C();
  v141 = *(v147 - 8);
  v6 = *(v141 + 64);
  v7 = MEMORY[0x28223BE20](v147);
  v148 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v144 = &v132 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013D88, &unk_222743AA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v139 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v132 - v15;
  MEMORY[0x28223BE20](v14);
  v146 = &v132 - v16;
  v153 = sub_22273842C();
  v152 = *(v153 - 8);
  v17 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v154 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_222738FAC();
  v145 = *(v150 - 8);
  v19 = *(v145 + 64);
  MEMORY[0x28223BE20](v150);
  v149 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_2227381FC();
  v21 = *(v163 - 8);
  v22 = v21;
  v23 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v163);
  v135 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v133 = &v132 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v142 = &v132 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v132 = &v132 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v140 = &v132 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v137 = &v132 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v136 = &v132 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v134 = &v132 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v143 = &v132 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v132 - v43;
  MEMORY[0x28223BE20](v42);
  v46 = &v132 - v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v47 = *(v21 + 72);
  v48 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_2227413C0;
  v160 = v48;
  sub_22273813C();
  v151 = a1;
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  *(&v170[0] + 1) = swift_getMetatypeMetadata();
  *&v169 = DynamicType;
  v161 = v47;
  sub_2227381DC();
  sub_222660468(&v169, &qword_27D0130C0, &unk_2227413B0);
  v51 = a2 + 64;
  v52 = 1 << *(a2 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(a2 + 64);
  v55 = (v52 + 63) >> 6;
  v162 = (v22 + 32);
  v159 = a2;

  v56 = 0;
  if (!v54)
  {
LABEL_5:
    if (v55 <= v56 + 1)
    {
      v58 = v56 + 1;
    }

    else
    {
      v58 = v55;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v57 >= v55)
      {
        v54 = 0;
        v167 = 0u;
        v168 = 0u;
        v56 = v59;
        v166 = 0u;
        goto LABEL_14;
      }

      v54 = *(v51 + 8 * v57);
      ++v56;
      if (v54)
      {
        v56 = v57;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  while (1)
  {
    v57 = v56;
LABEL_13:
    v60 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v61 = v60 | (v57 << 6);
    v62 = (*(v159 + 48) + 16 * v61);
    v63 = *v62;
    v64 = v62[1];
    sub_22262BF70(*(v159 + 56) + 32 * v61, &v164);
    *&v166 = v63;
    *(&v166 + 1) = v64;
    sub_22269457C(&v164, &v167);

LABEL_14:
    v169 = v166;
    v170[0] = v167;
    v170[1] = v168;
    v65 = *(&v166 + 1);
    if (!*(&v166 + 1))
    {
      break;
    }

    v66 = v169;
    sub_22269457C(v170, &v166);
    v165 = MEMORY[0x277D837D0];
    *&v164 = v66;
    *(&v164 + 1) = v65;
    sub_2227381DC();
    sub_222660468(&v164, &qword_27D0130C0, &unk_2227413B0);
    v68 = *(v49 + 16);
    v67 = *(v49 + 24);
    if (v68 >= v67 >> 1)
    {
      v49 = sub_222694FCC(v67 > 1, v68 + 1, 1, v49);
    }

    *(v49 + 16) = v68 + 1;
    DynamicType = *v162;
    (*v162)(v49 + v160 + v68 * v161, v46, v163);
    sub_22262BF70(&v166, &v164);
    sub_2227381DC();
    sub_222660468(&v164, &qword_27D0130C0, &unk_2227413B0);
    v70 = *(v49 + 16);
    v69 = *(v49 + 24);
    if (v70 >= v69 >> 1)
    {
      v49 = sub_222694FCC(v69 > 1, v70 + 1, 1, v49);
    }

    __swift_destroy_boxed_opaque_existential_1(&v166);
    *(v49 + 16) = v70 + 1;
    DynamicType(v49 + v160 + v70 * v161, v44, v163);
    if (!v54)
    {
      goto LABEL_5;
    }
  }

  v71 = v151;
  *&v164 = v151;
  v72 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  v73 = v149;
  v74 = v150;
  if (swift_dynamicCast())
  {
    (*(v152 + 16))(v154, v158, v153);
    v75 = sub_22273844C();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    sub_22273840C();
    swift_getErrorValue();

    v78 = sub_222739BEC();
    *(&v170[0] + 1) = MEMORY[0x277D837D0];
    *&v169 = v78;
    *(&v169 + 1) = v79;
    v80 = v143;
    sub_2227381DC();
    sub_222660468(&v169, &qword_27D0130C0, &unk_2227413B0);
    v81 = v146;
    (*v162)(v146, v80, v163);
    *&v166 = v49;
    v82 = *(v49 + 16);
    v83 = v156;
    v84 = v155;
    if (v82 >= *(v49 + 24) >> 1)
    {
      *&v166 = sub_222694FCC(1uLL, v82 + 1, 1, v49);
    }

    v85 = v157;
    sub_2226CB778(0, 0, 1, v81);
    (*(v145 + 8))(v73, v74);

    goto LABEL_53;
  }

  *&v164 = v71;
  v86 = v71;
  v87 = v144;
  DynamicType = v147;
  if (swift_dynamicCast())
  {
    v56 = v141;
    v54 = v148;
    (*(v141 + 32))(v148, v87, DynamicType);
    (*(v152 + 16))(v154, v158, v153);
    v88 = sub_22273844C();
    v89 = *(v88 + 48);
    v90 = *(v88 + 52);
    swift_allocObject();
    sub_22273840C();

    v91 = sub_222738D4C();
    *(&v170[0] + 1) = MEMORY[0x277D837D0];
    *&v169 = v91;
    *(&v169 + 1) = v92;
    v93 = v134;
    sub_2227381DC();
    sub_222660468(&v169, &qword_27D0130C0, &unk_2227413B0);
    v94 = *v162;
    v95 = v138;
    (*v162)(v138, v93, v163);
    *&v166 = v49;
    v96 = *(v49 + 16);
    if (v96 >= *(v49 + 24) >> 1)
    {
      v49 = sub_222694FCC(1uLL, v96 + 1, 1, v49);
      *&v166 = v49;
    }

    sub_2226CB778(0, 0, 1, v95);
    v97 = sub_222738D1C();
    if ((v98 & 1) == 0)
    {
      v99 = v97;
      sub_22273813C();
      v101 = *(v49 + 16);
      v100 = *(v49 + 24);
      if (v101 >= v100 >> 1)
      {
        v49 = sub_222694FCC(v100 > 1, v101 + 1, 1, v49);
      }

      *(v49 + 16) = v101 + 1;
      v94(v49 + v160 + v101 * v161, v136, v163);
      v102 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(&v170[0] + 1) = sub_2226CB914();
      *&v169 = v102;
      sub_2227381DC();
      sub_222660468(&v169, &qword_27D0130C0, &unk_2227413B0);
      v104 = *(v49 + 16);
      v103 = *(v49 + 24);
      if (v104 >= v103 >> 1)
      {
        v49 = sub_222694FCC(v103 > 1, v104 + 1, 1, v49);
      }

      v54 = v148;
      *(v49 + 16) = v104 + 1;
      v94(v49 + v160 + v104 * v161, v137, v163);
    }

    v105 = sub_222738D2C();
    if ((v106 & 1) == 0)
    {
      v107 = v105;
      sub_22273813C();
      v109 = *(v49 + 16);
      v108 = *(v49 + 24);
      if (v109 >= v108 >> 1)
      {
        v49 = sub_222694FCC(v108 > 1, v109 + 1, 1, v49);
      }

      *(v49 + 16) = v109 + 1;
      v94(v49 + v160 + v109 * v161, v140, v163);
      v110 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      *(&v170[0] + 1) = sub_2226CB914();
      *&v169 = v110;
      v111 = v132;
      sub_2227381DC();
      sub_222660468(&v169, &qword_27D0130C0, &unk_2227413B0);
      v113 = *(v49 + 16);
      v112 = *(v49 + 24);
      if (v113 >= v112 >> 1)
      {
        v49 = sub_222694FCC(v112 > 1, v113 + 1, 1, v49);
      }

      v54 = v148;
      *(v49 + 16) = v113 + 1;
      v94(v49 + v160 + v113 * v161, v111, v163);
    }

    v114 = sub_222738D7C();
    if (v115)
    {
      v116 = v114;
      v117 = v115;
      sub_22273813C();
      v119 = *(v49 + 16);
      v118 = *(v49 + 24);
      if (v119 >= v118 >> 1)
      {
        v49 = sub_222694FCC(v118 > 1, v119 + 1, 1, v49);
      }

      *(v49 + 16) = v119 + 1;
      v94(v49 + v160 + v119 * v161, v142, v163);
      *(&v170[0] + 1) = MEMORY[0x277D837D0];
      *&v169 = v116;
      *(&v169 + 1) = v117;
      v120 = v133;
      sub_2227381DC();
      sub_222660468(&v169, &qword_27D0130C0, &unk_2227413B0);
      v122 = *(v49 + 16);
      v121 = *(v49 + 24);
      if (v122 >= v121 >> 1)
      {
        v49 = sub_222694FCC(v121 > 1, v122 + 1, 1, v49);
      }

      (*(v56 + 8))(v54, DynamicType);
      *(v49 + 16) = v122 + 1;
      v94(v49 + v160 + v122 * v161, v120, v163);
      goto LABEL_52;
    }

LABEL_51:
    (*(v56 + 8))(v54, DynamicType);
LABEL_52:

    v85 = v157;
    v83 = v156;
    v84 = v155;
    goto LABEL_53;
  }

  (*(v152 + 16))(v154, v158, v153);
  v123 = sub_22273844C();
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  sub_22273840C();
  swift_getErrorValue();

  v126 = sub_222739BEC();
  *(&v170[0] + 1) = MEMORY[0x277D837D0];
  *&v169 = v126;
  *(&v169 + 1) = v127;
  v128 = v135;
  sub_2227381DC();
  sub_222660468(&v169, &qword_27D0130C0, &unk_2227413B0);
  v129 = v139;
  (*v162)(v139, v128, v163);
  *&v166 = v49;
  v130 = *(v49 + 16);
  v83 = v156;
  v84 = v155;
  if (v130 >= *(v49 + 24) >> 1)
  {
    *&v166 = sub_222694FCC(1uLL, v130 + 1, 1, v49);
  }

  v85 = v157;
  sub_2226CB778(0, 0, 1, v129);
LABEL_53:
  (*(v83 + 104))(v84, *MEMORY[0x277D21DE8], v85);
  sub_22273843C();

  return (*(v83 + 8))(v84, v85);
}

uint64_t sub_2226CB4A0(uint64_t a1)
{
  v3 = sub_22273842C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v7 = sub_22273844C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_22273840C();
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(sub_22273800C() - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v27 = *(v12 + 72);
    v14 = *(sub_2227381FC() - 8);
    v15 = *(v14 + 72);
    v25 = *(v14 + 80);
    v26 = v15;
    v24 = (v25 + 32) & ~v25;
    v23 = v24 + 2 * v15;
    v22 = xmmword_2227413C0;
    v16 = MEMORY[0x277D837D0];
    do
    {
      v31 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      *(swift_allocObject() + 16) = v22;
      v17 = sub_222737FFC();
      v30 = v16;
      v28 = v17;
      v29 = v18;
      sub_2227381DC();
      sub_222660468(&v28, &qword_27D0130C0, &unk_2227413B0);
      v19 = sub_222737FEC();
      v30 = v16;
      v28 = v19;
      v29 = v20;
      sub_2227381DC();
      sub_222660468(&v28, &qword_27D0130C0, &unk_2227413B0);
      sub_222738C6C();

      v13 += v27;
      --v11;
    }

    while (v11);
  }
}

unint64_t sub_2226CB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_2227381FC();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = result;
  v25 = a4;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v12 * a3;
  if (v17)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = v16 + v18;
      v20 = v15 + v12 * a2;
      if (v16 + v18 < v20 || result >= v20 + (v19 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v20)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v22 = *(v9 + 16);
      v23 = __OFADD__(v22, v17);
      v24 = v22 + v17;
      if (!v23)
      {
        *(v9 + 16) = v24;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_222660468(v25, &qword_27D013D88, &unk_222743AA0);
  }

  if (v18 < 1)
  {
    return sub_222660468(v25, &qword_27D013D88, &unk_222743AA0);
  }

  result = (*(v11 + 16))(v16, v25, v14);
  if (v12 >= v18)
  {
    return sub_222660468(v25, &qword_27D013D88, &unk_222743AA0);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_2226CB914()
{
  result = qword_281312B80;
  if (!qword_281312B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B80);
  }

  return result;
}

unint64_t sub_2226CB960(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for JSInitFailureObserver()
{
  result = qword_281313308;
  if (!qword_281313308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226CBA94()
{
  result = type metadata accessor for JSDiagnostics();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226CBB00(uint64_t a1, void *a2)
{
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  MetatypeMetadata = swift_getMetatypeMetadata();
  v17[0] = a1;
  sub_22273816C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  MetatypeMetadata = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000022274C1B0;
  v17[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013D90, &unk_222743B00);
  v12 = sub_22273920C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_222710688(inited);
  swift_setDeallocating();
  sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
  sub_2226CA204(a2, v14);
}

uint64_t sub_2226CBE6C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  if (ASCSupportsPackageURLPreference())
  {
    v6 = [objc_opt_self() daemonDefaults];
    v7 = [v6 debugPackageURL];

    if (v7)
    {
      sub_22273919C();

      sub_22273730C();

      v8 = sub_22273731C();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v5, 1, v8) != 1)
      {
        (*(v9 + 32))(a1, v5, v8);
        return (*(v9 + 56))(a1, 0, 2, v8);
      }

      sub_222660468(v5, &qword_27D013DC0, qword_222743950);
    }
  }

  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v10 = sub_222738F6C();
  __swift_project_value_buffer(v10, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v11 = *(sub_2227381FC() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v14 = sub_22273731C();
  return (*(*(v14 - 8) + 56))(a1, 2, 2, v14);
}

uint64_t sub_2226CC174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v36 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v21 = sub_22273729C();
  v22 = v20;
  if (v21 == 0xD000000000000034 && 0x800000022274C260 == v20 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v23 = sub_22273731C();
    v24 = *(v23 - 8);
    result = (*(v24 + 48))(v19, 1, v23);
    if (result != 1)
    {

      return (*(v24 + 32))(a2, v19, v23);
    }

    __break(1u);
    goto LABEL_31;
  }

  if (v21 == 0xD000000000000036 && 0x800000022274C2A0 == v22 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v26 = sub_22273731C();
    v27 = *(v26 - 8);
    result = (*(v27 + 48))(v17, 1, v26);
    if (result != 1)
    {

      return (*(v27 + 32))(a2, v17, v26);
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    return result;
  }

  if (v21 == 0xD000000000000035 && 0x800000022274C2E0 == v22 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v28 = sub_22273731C();
    v29 = *(v28 - 8);
    result = (*(v29 + 48))(v14, 1, v28);
    if (result != 1)
    {

      return (*(v29 + 32))(a2, v14, v28);
    }

    goto LABEL_32;
  }

  if (v21 == 0xD000000000000038 && 0x800000022274C320 == v22 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v30 = sub_22273731C();
    v31 = *(v30 - 8);
    result = (*(v31 + 48))(v11, 1, v30);
    if (result != 1)
    {

      return (*(v31 + 32))(a2, v11, v30);
    }

    goto LABEL_33;
  }

  if (v21 == 0xD000000000000043 && 0x800000022274C360 == v22 || (sub_222739B4C() & 1) != 0)
  {
    sub_22273730C();
    v32 = sub_22273731C();
    v33 = *(v32 - 8);
    result = (*(v33 + 48))(v8, 1, v32);
    if (result != 1)
    {

      return (*(v33 + 32))(a2, v8, v32);
    }

    goto LABEL_34;
  }

  v34 = sub_22273731C();
  v35 = *(*(v34 - 8) + 16);

  return v35(a2, a1, v34);
}

uint64_t sub_2226CC744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_22273728C() == 0x6B63617074656ALL && v4 == 0xE700000000000000)
  {

LABEL_5:
    v6 = sub_22273731C();
    v7 = *(*(v6 - 8) + 16);

    return v7(a2, a1, v6);
  }

  v5 = sub_222739B4C();

  if (v5)
  {
    goto LABEL_5;
  }

  v9 = sub_22273731C();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = ASCSupportsPackageURLPreference();
  if (v10)
  {
    v11 = [objc_opt_self() daemonDefaults];
    v12 = [v11 preferInternalJS];

    LOBYTE(v10) = v12;
  }

  sub_2226D09D8(v10);
  sub_2227372CC();
}

uint64_t sub_2226CC8C4@<X0>(uint64_t (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v51 = a3;
  v52 = a2;
  v49 = a1;
  v5 = sub_222737F2C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = sub_22273731C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v47 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v47 - v21;
  v23 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226D02B4(v4, v26);
  v27 = (*(v13 + 48))(v26, 2, v12);
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = [objc_opt_self() asc_frameworkBundle];
      v29 = [v28 bundleURL];

      sub_2227372FC();
      sub_2227372DC();
      v30 = *(v13 + 8);
      v49 = v30;
      v30(v17, v12);
      sub_2226CC744(v20, v22);
      v30(v20, v12);
      (*(v6 + 104))(v11, *MEMORY[0x277D21A70], v5);
      v48 = swift_allocObject();
      v31 = v5;
      v32 = v51;
      v33 = v52;
      *(v48 + 16) = v52;
      v32[3] = sub_222737DCC();
      v32[4] = sub_2226D0C9C(&unk_27D013E98, MEMORY[0x277D219B0]);
      __swift_allocate_boxed_opaque_existential_1(v32);
      (*(v13 + 16))(v20, v22, v12);
      (*(v6 + 16))(v50, v11, v31);
      v34 = v33;
      sub_222737DDC();
      (*(v6 + 8))(v11, v31);
      return v49(v22, v12);
    }

    else
    {
      sub_22273916C();
      v42 = swift_allocObject();
      v43 = v52;
      *(v42 + 16) = v52;
      v44 = sub_222737E0C();
      v45 = v51;
      v51[3] = v44;
      v45[4] = sub_2226D0C9C(&unk_281312FE0, MEMORY[0x277D219C8]);
      __swift_allocate_boxed_opaque_existential_1(v45);
      v46 = v43;
      swift_unknownObjectRetain();
      return sub_222737E1C();
    }
  }

  else
  {
    (*(v13 + 32))(v22, v26, v12);
    sub_2226CC744(v22, v20);
    v36 = swift_allocObject();
    v37 = v52;
    *(v36 + 16) = v52;
    v38 = sub_222737DCC();
    v39 = v51;
    v51[3] = v38;
    v39[4] = sub_2226D0C9C(&unk_27D013E98, MEMORY[0x277D219B0]);
    __swift_allocate_boxed_opaque_existential_1(v39);
    (*(v13 + 16))(v17, v20, v12);
    v40 = v37;
    sub_222737DEC();
    v41 = *(v13 + 8);
    v41(v20, v12);
    return (v41)(v22, v12);
  }
}

uint64_t sub_2226CCED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22273731C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226CC174(a1, v8);
  sub_2226CC744(v8, a2);
  return (*(v5 + 8))(v8, v4);
}

id sub_2226CCFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013EA8, &unk_222743BD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = [objc_opt_self() ams:a3 configurationWithProcessInfo:a1 bag:?];
  swift_unknownObjectRetain();
  sub_222738B1C();
  v10 = sub_222738BBC();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_222737F1C();
  sub_222660468(v8, &qword_27D013EA8, &unk_222743BD8);
  return v9;
}

uint64_t sub_2226CD100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - v4;
  v46 = sub_22273731C();
  v6 = *(*(v46 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v46);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - v10;
  v43 = MEMORY[0x277D84F98];
  v47 = MEMORY[0x277D84F98];
  v11 = 1 << *(a1 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v44 = (v9 + 48);
  v45 = (v9 + 56);
  v39 = v9;
  v40 = (v9 + 32);

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v13)
    {
      break;
    }

LABEL_9:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = v18 | (v16 << 6);
    v20 = *(*(a1 + 48) + 2 * v19);
    v21 = (*(a1 + 56) + 16 * v19);
    v23 = *v21;
    v22 = v21[1];

    sub_2227372AC();
    v24 = v46;
    (*v45)(v5, 0, 1, v46);

    if ((*v44)(v5, 1, v24) == 1)
    {
      result = sub_222660468(v5, &qword_27D013DC0, qword_222743950);
    }

    else
    {
      v25 = *v40;
      (*v40)(v42, v5, v46);
      v38 = v25;
      v25(v41, v42, v46);
      v26 = v43[2];
      if (v43[3] <= v26)
      {
        sub_22268A014(v26 + 1, 1);
      }

      v27 = v47;
      result = MEMORY[0x223DBEF80](*(v47 + 40), v20, 2);
      v28 = v27 + 64;
      v43 = v27;
      v29 = -1 << *(v27 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v27 + 64 + 8 * (v30 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v29) >> 6;
        while (++v31 != v34 || (v33 & 1) == 0)
        {
          v35 = v31 == v34;
          if (v31 == v34)
          {
            v31 = 0;
          }

          v33 |= v35;
          v36 = *(v28 + 8 * v31);
          if (v36 != -1)
          {
            v32 = __clz(__rbit64(~v36)) + (v31 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v32 = __clz(__rbit64((-1 << v30) & ~*(v27 + 64 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v37 = v43;
      *(v43[6] + 2 * v32) = v20;
      result = (v38)(v37[7] + *(v39 + 72) * v32, v41, v46);
      ++v37[2];
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return v43;
    }

    v13 = *(a1 + 64 + 8 * v16);
    ++v17;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2226CD4E4(uint64_t a1, void *a2, uint64_t a3)
{
  v68 = a2;
  v76 = a1;
  v77 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC8, &qword_222743B40);
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v70 = &v58 - v6;
  v7 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  v63 = *(v7 - 8);
  v62 = *(v63 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DD0, &unk_222743B48);
  v11 = *(v10 - 8);
  v65 = v10;
  v66 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v75 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  v71 = *(v14 - 8);
  v72 = v14;
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = &v58 - v16;
  v17 = sub_222737EAC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_222737D7C();
  v22 = *(v59 - 8);
  v60 = *(v22 + 64);
  v23 = MEMORY[0x28223BE20](v59);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  v28 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher____lazy_storage___indexPipeline;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DB0, &unk_222743B30);
  (*(*(v29 - 8) + 56))(v3 + v28, 1, 1, v29);
  (*(v18 + 104))(v21, *MEMORY[0x277D21A38], v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DE0, &qword_222743B58);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2227413C0;
  v31 = sub_2227332C4(&unk_2835C7190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DE8, &unk_222743B60);
  swift_arrayDestroy();
  v32 = v64;
  sub_2226CD100(v31);
  v64 = v32;

  v33 = sub_222737EEC();
  v34 = MEMORY[0x277D21A48];
  *(v30 + 56) = v33;
  *(v30 + 64) = v34;
  __swift_allocate_boxed_opaque_existential_1((v30 + 32));
  sub_222737EDC();
  v35 = sub_222737F0C();
  v36 = MEMORY[0x277D21A60];
  *(v30 + 96) = v35;
  *(v30 + 104) = v36;
  __swift_allocate_boxed_opaque_existential_1((v30 + 72));
  sub_222737EFC();
  v37 = v27;
  sub_222737D5C();
  v61 = v27;
  v38 = v59;
  sub_222738F7C();
  sub_2226D02B4(v77, v9);
  v39 = v22;
  v40 = *(v22 + 16);
  v41 = v25;
  v42 = v25;
  v43 = v38;
  v40(v42, v37, v38);
  v44 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v45 = (v62 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (*(v39 + 80) + v46 + 8) & ~*(v39 + 80);
  v48 = swift_allocObject();
  sub_2226D0318(v9, v48 + v44);
  *(v48 + v45) = v76;
  v49 = v68;
  *(v48 + v46) = v68;
  (*(v39 + 32))(v48 + v47, v41, v43);
  swift_unknownObjectRetain();
  v68 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40);
  sub_22262BED4(&qword_281312F00, &unk_27D013DD0, &unk_222743B48);
  v50 = v65;
  v51 = v75;
  v52 = sub_22273836C();

  (*(v66 + 8))(v51, v50);
  v78 = v52;
  v53 = v70;
  sub_22273845C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013E58, &qword_222743B70);
  sub_22262BED4(&unk_281312F10, &unk_27D013E58, &qword_222743B70);
  v54 = sub_22273838C();
  (*(v73 + 8))(v53, v74);

  v78 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E68, &unk_222743B78);
  sub_22262BED4(&qword_281312F20, &qword_27D013E68, &unk_222743B78);
  v55 = v69;
  sub_22273835C();
  swift_unknownObjectRelease();

  sub_2226D0470(v77);

  (*(v39 + 8))(v61, v43);
  v56 = v67;
  (*(v71 + 32))(v67 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher_bundlePipeline, v55, v72);
  return v56;
}

uint64_t sub_2226CDC90(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a3;
  v31 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v32 = &v29 - v9;
  v10 = sub_222737D7C();
  v29 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2226D02B4(a2, v16);
  (*(v11 + 16))(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v11 + 80) + v19 + 8) & ~*(v11 + 80);
  v21 = swift_allocObject();
  sub_2226D0318(v16, v21 + v17);
  v22 = v31;
  *(v21 + v18) = v30;
  *(v21 + v19) = v22;
  (*(v11 + 32))(v21 + v20, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E70, &qword_222743B98);
  swift_unknownObjectRetain();
  v23 = v22;
  v24 = sub_222738F2C();
  v25 = sub_22273946C();
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_222743B90;
  v27[5] = v21;
  v27[6] = v24;

  sub_2226D4E54(0, 0, v26, &unk_222743BA0, v27);

  return v24;
}

uint64_t sub_2226CDFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_22273731C();
  v5[17] = v6;
  v7 = *(v6 - 8);
  v5[18] = v7;
  v8 = *(v7 + 64) + 15;
  v5[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E78, &qword_222743BA8);
  v5[20] = v9;
  v10 = *(v9 - 8);
  v5[21] = v10;
  v11 = *(v10 + 64) + 15;
  v5[22] = swift_task_alloc();
  v12 = sub_222737DAC();
  v5[23] = v12;
  v13 = *(v12 - 8);
  v5[24] = v13;
  v14 = *(v13 + 64) + 15;
  v5[25] = swift_task_alloc();
  v15 = *(*(sub_222737E7C() - 8) + 64) + 15;
  v5[26] = swift_task_alloc();
  v16 = sub_222737E5C();
  v5[27] = v16;
  v17 = *(v16 - 8);
  v5[28] = v17;
  v18 = *(v17 + 64) + 15;
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226CE1D8, 0, 0);
}

uint64_t sub_2226CE1D8()
{
  v1 = *(v0 + 104);
  sub_2226CC8C4(*(v0 + 112), *(v0 + 120), (v0 + 16));
  sub_222737ECC();
  sub_222737EBC();
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  sub_222737E6C();
  v6 = sub_222737E9C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_222737E8C();
  sub_22266BCCC(v0 + 16, v0 + 56);
  swift_unknownObjectRetain();
  sub_222737E4C();
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *(v9 + 16) = v4;
  v10 = *(MEMORY[0x277D219D0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 248) = v11;
  *v11 = v0;
  v11[1] = sub_2226CE3E0;
  v12 = *(v0 + 232);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);
  v15 = MEMORY[0x277D21980];

  return MEMORY[0x28217E758](v13, &unk_222743BB8, v9, v14, v15);
}

uint64_t sub_2226CE3E0()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v4 = *v1;
  *(*v1 + 256) = v0;

  v5 = *(v2 + 240);

  if (v0)
  {
    v6 = sub_2226CE83C;
  }

  else
  {
    v6 = sub_2226CE514;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2226CE514()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  sub_222737E3C();
  (*(v3 + 8))(v2, v4);
  v5 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_2226CE5F8;
  v7 = v0[19];

  return sub_2226CEDD4(v7, v5);
}

uint64_t sub_2226CE5F8()
{
  v2 = *(*v1 + 264);
  v5 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_2226CE900;
  }

  else
  {
    v3 = sub_2226CE70C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226CE70C()
{
  v1 = v0[26];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v12 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[12];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40) + 48);
  (*(v5 + 32))(v8, v6, v7);
  (*(v3 + 32))(v8 + v9, v2, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2226CE83C()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[32];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[22];
  v6 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_2226CE900()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];
  v9 = v0[19];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2226CE9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22273731C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226CEAA8, 0, 0);
}

uint64_t sub_2226CEAA8()
{
  v1 = v0[12];
  v2 = v0[8];
  sub_222737F6C();
  v3 = [objc_opt_self() defaultManager];
  v4 = [v3 temporaryDirectory];

  sub_2227372FC();
  v5 = *(MEMORY[0x277D21978] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_2226CEBB8;
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[7];

  return MEMORY[0x28217E6A8](v9, v0 + 2, v7, 1);
}

uint64_t sub_2226CEBB8()
{
  v2 = *v1;
  v3 = (*v1)[13];
  v4 = (*v1)[12];
  v5 = (*v1)[11];
  v6 = (*v1)[10];
  v7 = *v1;
  v2[14] = v0;

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2226CED70, 0, 0);
  }

  else
  {
    v8 = v2[12];

    v9 = v7[1];

    return v9();
  }
}

uint64_t sub_2226CED70()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t sub_2226CEDD4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E80, &qword_222743BC8) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = sub_222737E0C();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013E88, &qword_222743BD0) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v10 = *(a2 - 8);
  v3[10] = v10;
  v11 = *(v10 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v12 = sub_222737DCC();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226CEFC4, 0, 0);
}

uint64_t sub_2226CEFC4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = *(v0[10] + 16);
  v4(v0[12], v0[4], v0[3]);
  v5 = swift_dynamicCast();
  v6 = *(v2 + 56);
  if (v5)
  {
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    v10 = v0[9];
    v11 = v0[2];
    v6(v10, 0, 1, v9);
    (*(v8 + 32))(v7, v10, v9);
    sub_222737DBC();
    v12 = v0[12];
    v13 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[5];
    (*(v8 + 8))(v0[15], v0[13]);

    v17 = v0[1];
LABEL_8:

    return v17();
  }

  v18 = v0[11];
  v19 = v0[9];
  v20 = v0[7];
  v42 = v0[6];
  v21 = v0[4];
  v22 = v0[5];
  v23 = v0[3];
  v6(v19, 1, 1, v0[13]);
  sub_222660468(v19, &qword_27D013E88, &qword_222743BD0);
  v4(v18, v21, v23);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (!v24)
  {
    v34 = v0[5];
    v25(v34, 1, 1, v0[6]);
    sub_222660468(v34, &qword_27D013E80, &qword_222743BC8);
    sub_2226D097C();
    swift_allocError();
    swift_willThrow();
    v35 = v0[15];
    v37 = v0[11];
    v36 = v0[12];
    v39 = v0[8];
    v38 = v0[9];
    v40 = v0[5];

    v17 = v0[1];
    goto LABEL_8;
  }

  v27 = v0[7];
  v26 = v0[8];
  v29 = v0[5];
  v28 = v0[6];
  v25(v29, 0, 1, v28);
  (*(v27 + 32))(v26, v29, v28);
  v30 = *(MEMORY[0x277D219B8] + 4);
  v31 = swift_task_alloc();
  v0[16] = v31;
  *v31 = v0;
  v31[1] = sub_2226CF320;
  v32 = v0[8];
  v33 = v0[2];

  return MEMORY[0x28217E740](v33);
}

uint64_t sub_2226CF320()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_2226CF4F8;
  }

  else
  {
    v3 = sub_2226CF434;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226CF434()
{
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[5];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2226CF4F8()
{
  (*(v0[7] + 8))(v0[8], v0[6]);
  v1 = v0[17];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2226CF5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EC0, &qword_222743BE8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher____lazy_storage___indexPipeline;
  swift_beginAccess();
  sub_2226D0BBC(v1 + v10, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DB0, &unk_222743B30);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_222660468(v9, &unk_27D013EC0, &qword_222743BE8);
  v14[1] = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher_bundlePipeline;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  sub_2227384DC();
  sub_22262BED4(&qword_281312F68, &unk_27D0138C0, qword_222742B80);
  v14[2] = sub_22273837C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013ED0, &unk_222743BF0);
  sub_22262BED4(&unk_281312F38, &unk_27D013ED0, &unk_222743BF0);
  sub_22273835C();

  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_2226D0C2C(v7, v1 + v10);
  return swift_endAccess();
}

void sub_2226CF8A0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v30 = a2;
  v3 = sub_22273731C();
  v27 = *(v3 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273823C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2227380FC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_222737F4C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222737F5C();
  v16 = sub_222737D9C();
  if (v2)
  {
    (*(v12 + 8))(v15, v11);
    return;
  }

  v18 = v17;
  v26 = v16;
  (*(v12 + 8))(v15, v11);
  if (v18 >> 60 == 15)
  {
    sub_222738D8C();
    sub_2226D0C9C(&qword_27D013EE0, MEMORY[0x277D22430]);
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
    return;
  }

  sub_2226D0CE4(v26, v18);
  sub_22273804C();
  sub_22273822C();
  (*(v27 + 16))(v6, v28, v3);
  sub_2227384CC();
  if (!os_variant_has_internal_content())
  {
    sub_2226D0D38(v26, v18);
    return;
  }

  v19 = v18;
  v20 = [objc_opt_self() daemonDefaults];
  v21 = sub_2227384BC();
  if (!*(v21 + 16) || (v22 = sub_222688818(0x6E6F6973726576, 0xE700000000000000), (v23 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22262BF70(*(v21 + 56) + 32 * v22, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v24 = 0;
    goto LABEL_13;
  }

  v24 = sub_22273916C();

LABEL_13:
  [v20 setJsVersion_];
  sub_2226D0D38(v26, v19);
}

uint64_t sub_2226CFD70()
{
  v0 = sub_222737F4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;
  v9 = sub_22273731C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_222737F3C();
  sub_222737D8C();
  (*(v1 + 8))(v4, v0);
  return sub_222660468(v8, &qword_27D013DC0, qword_222743950);
}

uint64_t sub_2226CFF14()
{
  v1 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher_bundlePipeline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_222660468(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit16JSJetPackFetcher____lazy_storage___indexPipeline, &unk_27D013EC0, &qword_222743BE8);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2226D0004(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273731C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EF0, &unk_222743D00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_2226D02B4(a1, &v24 - v16);
  sub_2226D02B4(a2, &v17[v18]);
  v19 = *(v5 + 48);
  v20 = v19(v17, 2, v4);
  if (!v20)
  {
    sub_2226D02B4(v17, v12);
    if (!v19(&v17[v18], 2, v4))
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v21 = sub_2227372EC();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_2226D0470(v17);
      return v21 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_9;
  }

  if (v20 == 1)
  {
    if (v19(&v17[v18], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v19(&v17[v18], 2, v4) != 2)
  {
LABEL_9:
    sub_222660468(v17, &unk_27D013EF0, &unk_222743D00);
    v21 = 0;
    return v21 & 1;
  }

  sub_2226D0470(v17);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_2226D02B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D0318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D037C(uint64_t a1)
{
  v3 = *(type metadata accessor for JSJetPackFetcher.ScriptOrigin(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_222737D7C() - 8);
  return sub_2226CDC90(a1, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

uint64_t sub_2226D0470(uint64_t a1)
{
  v2 = type metadata accessor for JSJetPackFetcher.ScriptOrigin(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for JSJetPackFetcher.ScriptOrigin(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_222737D7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_22273731C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 2, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v7 + 8) & ~v7;
  v15 = *(v0 + v12);
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v14, v5);

  return MEMORY[0x2821FE8E8](v0, v14 + v8, v11 | 7);
}

uint64_t sub_2226D0688(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for JSJetPackFetcher.ScriptOrigin(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_222737D7C() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22266BE24;

  return sub_2226CDFC4(a1, v1 + v6, v11, v12, v1 + v10);
}

uint64_t sub_2226D07F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D4148(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226D08CC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222660228;

  return sub_2226CE9E4(a1, a2, v6);
}

unint64_t sub_2226D097C()
{
  result = qword_27D013E90;
  if (!qword_27D013E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013E90);
  }

  return result;
}

uint64_t sub_2226D09D8(char a1)
{
  v1 = 0;
  v14[0] = 0x800000022274C540;
  v2 = 0x6C616E7265746E69;
  if ((a1 & 1) == 0)
  {
    v2 = 0;
  }

  v3 = 0xE800000000000000;
  if ((a1 & 1) == 0)
  {
    v3 = 0;
  }

  v14[1] = v2;
  v14[2] = v3;
  v4 = MEMORY[0x277D84F90];
LABEL_6:
  v5 = &v14[2 * v1];
  while (++v1 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_222694EC0(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_222694EC0((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EB0, &qword_222743920);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0);
  v12 = sub_22273913C();

  MEMORY[0x223DBE5D0](0x6B63617074656A2ELL, 0xE800000000000000);
  return v12;
}

uint64_t sub_2226D0BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EC0, &qword_222743BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D0C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013EC0, &qword_222743BE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D0C9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2226D0CE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2226D0D38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22262CB28(a1, a2);
  }

  return a1;
}

uint64_t sub_2226D0D84()
{
  v0 = sub_22273731C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_2226D0DE0()
{
  result = qword_27D013EE8;
  if (!qword_27D013EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013EE8);
  }

  return result;
}

uint64_t sub_2226D0E48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2226D0E90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2226D0EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40) + 48);
  v5 = sub_222737DAC();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_2226D0F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F50, &qword_222743E30);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F58, &qword_222743E38) + 48);
  v15 = *(v4 + 56);
  v16 = sub_2227384DC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, v14, v16);
  sub_22266BCCC(v14 + v15, &v13[*(v4 + 56)]);
  v18 = sub_222737DAC();
  v19 = v25;
  (*(*(v18 - 8) + 16))(v25, a1, v18);
  sub_22266110C(v13, v11, &qword_27D013F50, &qword_222743E30);
  v20 = *(v4 + 56);
  sub_2226D6424(v13, v8);
  v21 = *(v4 + 56);
  v22 = type metadata accessor for JSStackBootstrap.JSPackage();
  (*(v17 + 32))(v19 + *(v22 + 20), v11, v16);
  sub_222634290(&v8[v21], v19 + *(v22 + 24));
  (*(v17 + 8))(v8, v16);
  return __swift_destroy_boxed_opaque_existential_1(&v11[v20]);
}

void sub_2226D11B0(void *a1)
{
  v1 = [a1 virtualMachine];
  if (v1)
  {
    v2 = v1;
    [v1 shrinkFootprintWhenIdle];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2226D120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[31] = a2;
  v3[32] = a3;
  v3[30] = a1;
  v4 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v5 = sub_2227388EC();
  v3[34] = v5;
  v6 = *(v5 - 8);
  v3[35] = v6;
  v7 = *(v6 + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v8 = sub_222738BBC();
  v3[38] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v10 = sub_2227386EC();
  v3[40] = v10;
  v11 = *(v10 - 8);
  v3[41] = v11;
  v12 = *(v11 + 64) + 15;
  v3[42] = swift_task_alloc();
  v13 = *(*(sub_222737F4C() - 8) + 64) + 15;
  v3[43] = swift_task_alloc();
  v14 = sub_22273892C();
  v3[44] = v14;
  v15 = *(v14 - 8);
  v3[45] = v15;
  v16 = *(v15 + 64) + 15;
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226D141C, 0, 0);
}

uint64_t sub_2226D141C()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[31];
  v4 = sub_222737DAC();
  v5 = MEMORY[0x277D21980];
  v0[5] = v4;
  v0[6] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_222737F5C();
  sub_22273891C();
  v7 = v0[45];
  v8 = v0[46];
  v9 = v0[44];
  v11 = v0[41];
  v10 = v0[42];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[38];
  v24 = v0[36];
  v15 = v0[32];
  sub_22273858C();
  sub_222738C9C();
  sub_2227386DC();
  v16 = MEMORY[0x277D22178];
  v0[10] = v9;
  v0[11] = v16;
  v17 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(v7 + 16))(v17, v8, v9);
  v18 = MEMORY[0x277D21F40];
  v0[15] = v12;
  v0[16] = v18;
  v19 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(v11 + 16))(v19, v10, v12);

  sub_2227388CC();
  v0[47] = [objc_opt_self() asc_frameworkBundle];
  v20 = *(MEMORY[0x277D21F38] + 4);
  v21 = swift_task_alloc();
  v0[48] = v21;
  *v21 = v0;
  v21[1] = sub_2226D1898;
  v22 = v0[42];

  return MEMORY[0x28217F628]();
}

uint64_t sub_2226D1898(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v9 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v6 = v4[47];
    (*(v4[35] + 8))(v4[36], v4[34]);

    v7 = sub_2226D1D5C;
  }

  else
  {
    v4[50] = a1;
    v7 = sub_2226D19DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2226D19DC()
{
  v1 = v0[50];
  v2 = v0[47];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[34];
  v6 = v0[35];
  v7 = sub_2227387EC();
  v8 = MEMORY[0x277D220B0];
  v0[20] = v7;
  v0[21] = v8;
  __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  sub_2227387DC();
  sub_2227388DC();
  v9 = *(v6 + 8);
  v0[51] = v9;
  v0[52] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v0[53] = sub_22273890C();
  v10 = *(MEMORY[0x277D22138] + 4);
  v11 = swift_task_alloc();
  v0[54] = v11;
  *v11 = v0;
  v11[1] = sub_2226D1B0C;
  v12 = v0[37];

  return MEMORY[0x28217FBF8](v12);
}

uint64_t sub_2226D1B0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v7 = sub_2226D2028;
  }

  else
  {
    *(v4 + 448) = a1;
    v7 = sub_2226D1C34;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2226D1C34()
{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[51];
  v5 = v0[45];
  v4 = v0[46];
  v7 = v0[43];
  v6 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v11 = v0[39];
  v10 = v0[40];
  v12 = v0[37];
  v13 = v0[34];
  v18 = v0[36];
  v19 = v0[33];
  v14 = v0[30];
  v15 = MEMORY[0x277D22148];
  v14[3] = v0[53];
  v14[4] = v15;
  *v14 = v1;
  v3(v12, v13);
  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v4, v6);

  v16 = v0[1];

  return v16();
}

uint64_t sub_2226D1D5C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  (*(v0[41] + 8))(v0[42], v0[40]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[49];
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v5 = v0[46];
  v16 = v0[43];
  v17 = v0[42];
  v18 = v0[39];
  v19 = v0[37];
  v20 = v0[36];
  v6 = v0[33];
  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v11 = v0[26];
  v12 = v0[27];
  v0[25] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v11, v12);
  sub_22273816C();
  sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_2226D2028()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 352);
  v6 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 320);
  (*(v0 + 408))(*(v0 + 296), *(v0 + 272));
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 440);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 368);
  v20 = *(v0 + 344);
  v21 = *(v0 + 336);
  v22 = *(v0 + 312);
  v23 = *(v0 + 296);
  v24 = *(v0 + 288);
  v10 = *(v0 + 264);
  v11 = sub_222738F6C();
  __swift_project_value_buffer(v11, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v12 = *(sub_2227381FC() - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v15 = *(v0 + 208);
  v16 = *(v0 + 216);
  *(v0 + 200) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v15, v16);
  sub_22273816C();
  sub_222660468(v0 + 176, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

id sub_2226D230C(uint64_t a1, void *a2)
{
  v19 = ASCSignpostTagUnique();
  [objc_opt_self() jsStackBootstrapDidBeginWithTag_];
  result = [objc_allocWithZone(MEMORY[0x277CD4660]) init];
  if (result)
  {
    v5 = result;
    sub_2226D5404(result);
    v6 = sub_22262D828();
    v21 = v6;
    v22 = MEMORY[0x277D225C0];
    v20[0] = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v8 = a2;

    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F00, &qword_222743D98);
    sub_22262BED4(&qword_281312E60, &qword_27D013F00, &qword_222743D98);
    sub_222738EDC();

    __swift_destroy_boxed_opaque_existential_1(v20);
    sub_222738E7C();
    v10 = MEMORY[0x277D225C0];
    v21 = v6;
    v22 = MEMORY[0x277D225C0];
    v20[0] = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2226D593C;
    *(v12 + 24) = v11;
    v13 = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F08, &qword_222743DA0);
    sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1(v20);
    v21 = v6;
    v22 = v10;
    v20[0] = v13;
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v13;
    v14[4] = v5;
    v15 = v13;

    v18 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F10, &qword_222743DA8);
    sub_22262BED4(&qword_281312E68, &qword_27D013F10, &qword_222743DA8);
    sub_222738EDC();

    __swift_destroy_boxed_opaque_existential_1(v20);
    *(swift_allocObject() + 16) = v19;
    v16 = sub_22273955C();
    v21 = v6;
    v22 = v10;
    v20[0] = v16;
    sub_222738EBC();

    __swift_destroy_boxed_opaque_existential_1(v20);
    sub_222738E7C();
    v21 = v6;
    v22 = v10;
    v20[0] = v15;
    v17 = sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1(v20);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2226D2718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  v8 = sub_222737DAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v11, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F00, &qword_222743D98);

  v13 = sub_222738F2C();
  v14 = sub_22273946C();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_222743DD8;
  v15[5] = v12;
  v15[6] = v13;

  sub_2226D4E54(0, 0, v7, &unk_222743DE8, v15);

  return v13;
}

uint64_t sub_2226D297C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_22266BCCC((a1 + 1), (a2 + 1));
  *a2 = v3;
}

uint64_t sub_2226D29C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2227383CC();
  v6[3] = v8;
  v9 = *(v8 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_2226D2B24;

  return v15(v11);
}

uint64_t sub_2226D2B24()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2226D65BC;
  }

  else
  {
    v3 = sub_2226D65C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D2C38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_2226D2D2C;

  return v10(v6 + 16);
}

uint64_t sub_2226D2D2C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2226D65CC;
  }

  else
  {
    v3 = sub_2226D65C8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D2E40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = sub_2227373FC();
  v6[3] = v8;
  v9 = *(v8 - 8);
  v6[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v6[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v6[6] = v13;
  *v13 = v6;
  v13[1] = sub_2226D2FA0;

  return v15(v11);
}

uint64_t sub_2226D2FA0()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_2226D3144;
  }

  else
  {
    v3 = sub_2226D30B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D30B4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_222738EEC();
  (*(v2 + 8))(v1, v4);
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2226D3144()
{
  v1 = v0[7];
  v2 = v0[2];
  sub_222738ECC();

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2226D31BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_2226D32B0;

  return v10(v6 + 16);
}

uint64_t sub_2226D32B0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2226D3430;
  }

  else
  {
    v3 = sub_2226D33C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D33C4()
{
  v1 = v0[3];
  sub_222738EEC();
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2226D3430()
{
  v1 = v0[5];
  v2 = v0[3];
  sub_222738ECC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2226D34A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_2226D3594;

  return v10(v6 + 16);
}

uint64_t sub_2226D3594()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2226D65D0;
  }

  else
  {
    v3 = sub_2226D36A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D36A8()
{
  v1 = v0[4];
  sub_222738EEC();
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2226D3714(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_2226D3808;

  return v10(v6 + 16);
}

uint64_t sub_2226D3808()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2226D65CC;
  }

  else
  {
    v3 = sub_2226D391C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D391C()
{
  v1 = v0[3];
  sub_222738EEC();
  v2 = v0[2];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2226D3988(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_2226D3A7C;

  return v10(v6 + 16);
}

uint64_t sub_2226D3A7C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2226D3B90;
  }

  else
  {
    v3 = sub_2226D36A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D3B90()
{
  v1 = v0[6];
  v2 = v0[4];
  sub_222738ECC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2226D3C00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_2226D3CF4;

  return v10(v6 + 40);
}

uint64_t sub_2226D3CF4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_2226D3E6C;
  }

  else
  {
    v3 = sub_2226D3E08;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D3E08()
{
  v1 = *(v0 + 16);
  sub_222738EEC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D3E6C()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_222738ECC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2226D3EDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 40) = v8;
  *v8 = v6;
  v8[1] = sub_2226D3FD0;

  return v10(v6 + 16);
}

uint64_t sub_2226D3FD0()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_2226D3B90;
  }

  else
  {
    v3 = sub_2226D40E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D40E4()
{
  v1 = *(v0 + 32);
  sub_222738EEC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D4148(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v6[3] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v6[4] = v11;
  *v11 = v6;
  v11[1] = sub_2226D4284;

  return v13(v9);
}

uint64_t sub_2226D4284()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2226D441C;
  }

  else
  {
    v3 = sub_2226D4398;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D4398()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_222738EEC();
  sub_222660468(v1, &unk_27D013DA0, &qword_222743E40);
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2226D441C()
{
  v1 = v0[5];
  v2 = v0[2];
  sub_222738ECC();

  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2226D4494(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 64) = v8;
  *v8 = v6;
  v8[1] = sub_2226D4588;

  return v10(v6 + 16);
}

uint64_t sub_2226D4588()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2226D65D4;
  }

  else
  {
    v3 = sub_2226D65C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D469C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 24) = v8;
  *v8 = v6;
  v8[1] = sub_2226D4788;

  return v10();
}

uint64_t sub_2226D4788()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_2226D3E6C;
  }

  else
  {
    v3 = sub_2226D489C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D489C()
{
  v1 = *(v0 + 16);
  sub_222738EEC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D48FC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 32) = v8;
  *v8 = v6;
  v8[1] = sub_2226D49F0;

  return v10(v6 + 16);
}

uint64_t sub_2226D49F0()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_2226D65CC;
  }

  else
  {
    v3 = sub_2226D4B04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D4B04()
{
  v1 = *(v0 + 24);
  sub_222738EEC();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2226D4B70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a6;
  v10 = (a4 + *a4);
  v7 = a4[1];
  v8 = swift_task_alloc();
  *(v6 + 64) = v8;
  *v8 = v6;
  v8[1] = sub_2226D4C64;

  return v10(v6 + 16);
}

uint64_t sub_2226D4C64()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2226D4DE4;
  }

  else
  {
    v3 = sub_2226D4D78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226D4D78()
{
  v1 = v0[7];
  sub_222738EEC();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2226D4DE4()
{
  v1 = v0[9];
  v2 = v0[7];
  sub_222738ECC();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2226D4E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_22266110C(a3, v25 - v11, &unk_27D013050, &qword_222741370);
  v13 = sub_22273946C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_222660468(v12, &unk_27D013050, &qword_222741370);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_22273945C();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2227393FC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_22273921C() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_222660468(a3, &unk_27D013050, &qword_222741370);

    return v23;
  }

LABEL_8:
  sub_222660468(a3, &unk_27D013050, &qword_222741370);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_2226D5150()
{
  v13 = sub_22273954C();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22273952C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_222737C9C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v12 = sub_22262D828();
  sub_222737C8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F60, &unk_222743E48);
  v9 = *(v5 + 72);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2227412F0;
  sub_22273951C();
  v14 = v11;
  sub_22262D874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
  sub_22262BED4(&qword_281312DC0, &unk_27D013770, &unk_222742A70);
  sub_2227397BC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85268], v13);
  sub_22273958C();
}

uint64_t sub_2226D5404(void *a1)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F28, &qword_222743E08);
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v20);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DB0, &unk_222743B30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  type metadata accessor for JSJetPackFetcher(0);
  sub_22273858C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138C0, qword_222742B80);
  sub_2227384FC();
  v19 = sub_22273872C();
  v22 = v19;
  v23 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_22273871C();
  sub_222737DAC();
  v18[2] = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_2226CF5B8(v10);
  v18[1] = sub_2227384FC();
  (*(v7 + 8))(v10, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2226D639C;
  *(v12 + 24) = v11;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F30, &qword_222743E10);
  sub_22262BED4(&qword_281312F68, &unk_27D0138C0, qword_222742B80);
  v14 = sub_22273837C();

  v21[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F38, &qword_222743E18);
  sub_22262BED4(&unk_281312F28, &qword_27D013F38, &qword_222743E18);
  sub_22273835C();

  v15 = v20;
  sub_2227384FC();
  (*(v2 + 8))(v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F40, &qword_222743E20);
  sub_22262BED4(&qword_281312E70, &qword_27D013F40, &qword_222743E20);
  sub_222738E7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F48, &qword_222743E28);
  sub_22262BED4(&qword_281312E78, &qword_27D013F48, &qword_222743E28);
  sub_222738E7C();

  v22 = v19;
  v23 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_22273871C();
  type metadata accessor for JSStackBootstrap.JSPackage();
  v16 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v21);
  return v16;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2226D593C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for JSStackBootstrap.JSPackage();
  v7 = a1 + *(v6 + 20);
  v8 = a1 + *(v6 + 24);

  return sub_2226D5A5C(a2, v7, v8);
}

uint64_t sub_2226D5998@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F18, &unk_222743DB0);
  result = v6(a1, a1 + *(v7 + 48));
  *a2 = result;
  return result;
}

id sub_2226D5A14()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 jsStackBootstrapDidEndWithTag_];
}

uint64_t sub_2226D5A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v4 = sub_222738BBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737FBC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2227384BC();
  v15 = sub_2226B5E2C(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
  sub_22266BCCC(a1, v36);

  sub_222737FAC();
  sub_22273855C();
  (*(v10 + 8))(v13, v9);

  v17 = sub_2226B8AD0(v16, v15);
  v33 = sub_2226FB744();
  v18 = type metadata accessor for JSMediaTokensObject();
  v19 = objc_allocWithZone(v18);
  v20 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject_cachedServices;
  *&v19[v20] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  sub_22273858C();
  sub_222738C9C();
  (*(v5 + 32))(&v19[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject_bag], v8, v4);
  v35.receiver = v19;
  v35.super_class = v18;
  v21 = objc_msgSendSuper2(&v35, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F20, &unk_222743DC0);
  v22 = sub_222738DBC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_222743D10;
  v27 = (v26 + v25);
  *v27 = 7041889;
  v27[1] = 0xE300000000000000;
  v27[2] = v17;
  v28 = *(v23 + 104);
  (v28)(v26 + v25, *MEMORY[0x277D22448], v22);
  v29 = (v26 + v25 + v24);
  *v29 = 0xD00000000000001ALL;
  v29[1] = 0x800000022274C5C0;
  v29[2] = v33;
  v28();
  v30 = (v26 + v25 + 2 * v24);
  *v30 = 0x6B6F54616964656DLL;
  v30[1] = 0xEB00000000736E65;
  v30[2] = v21;
  v28();
  v24 *= 3;
  sub_22266BCCC(v34, v26 + v25 + v24);
  (v28)(v26 + v25 + v24, *MEMORY[0x277D22460], v22);

  return v26;
}

uint64_t sub_2226D5E5C(uint64_t a1, void *a2)
{
  v3 = sub_222738E2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  sub_222738E1C();
  sub_222738E0C();
  sub_222738E5C();
  (*(v4 + 16))(v8, v10, v3);

  v11 = a2;

  v12 = sub_222738E4C();
  sub_222738DDC();
  if (os_variant_has_internal_content())
  {
    v13 = [objc_opt_self() daemonDefaults];
    v14 = [v13 enableWebInspector];

    if (v14)
    {
      sub_222738DEC();
      ASCDumpEnvVars("JSStack created");
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F10, &qword_222743DA8);
  v17[0] = v12;
  v15 = sub_222738EAC();
  (*(v4 + 8))(v10, v3);
  return v15;
}

uint64_t type metadata accessor for JSStackBootstrap.JSPackage()
{
  result = qword_2813138A8;
  if (!qword_2813138A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226D60FC(uint64_t a1)
{
  v4 = *(sub_222737DAC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2226D120C(a1, v1 + v5, v6);
}

uint64_t sub_2226D6208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_2226D4494(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2226D62E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22266BE24;

  return sub_22269D720(a1, v5);
}

uint64_t sub_2226D63B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013DA0, &qword_222743E40);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_2226D6424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F50, &qword_222743E30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2226D64BC()
{
  result = sub_222737DAC();
  if (v1 <= 0x3F)
  {
    result = sub_2227384DC();
    if (v2 <= 0x3F)
    {
      result = sub_2226D6558();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2226D6558()
{
  result = qword_281312F08;
  if (!qword_281312F08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281312F08);
  }

  return result;
}

void *sub_2226D65D8(uint64_t a1, void *a2)
{
  v3 = v2;
  v45 = a1;
  v49 = *v2;
  v5 = sub_22273842C();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v8 = *(v46 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v46);
  v11 = &v42 - v10;
  v12 = sub_22273834C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_222738BBC();
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a2;
  sub_22273858C();
  v21 = a2;
  v22 = v3;
  v50 = v21;
  v23 = v45;
  v44 = v17;
  sub_222738C9C();
  v24 = sub_22273916C();
  (*(v13 + 104))(v16, *MEMORY[0x277D21C40], v12);
  v42 = v20;
  sub_222738AFC();

  v25 = v23;
  (*(v13 + 8))(v16, v12);
  v26 = v47;
  v27 = v48;
  v52 = v49;
  v28 = v46;
  sub_222738B3C();
  v29 = v28;
  v30 = v51;
  (*(v8 + 8))(v11, v29);
  v31 = *aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F68, &qword_222743F38);
  swift_allocObject();

  v32 = sub_2226D9434(sub_2226D93C4, v25, v31);

  v22[3] = v32;
  sub_2226D96D4(&qword_281312F80, MEMORY[0x277D21CE0]);
  sub_222738C8C();
  (*(v26 + 16))(v22 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics, v30, v27);
  v33 = qword_2813140D8;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v50;
  [v50 addObserver:v22 selector:sel_didReceiveMemoryWarning_ name:qword_281315B98 object:0];

  if (!os_variant_has_internal_content())
  {
    goto LABEL_7;
  }

  v35 = [objc_opt_self() daemonDefaults];
  v36 = [v35 enableWebInspector];

  if (!v36)
  {
    goto LABEL_7;
  }

  v37 = v22[3];
  v38 = *(v37 + 40);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_2226D9BF4;
  *(v39 + 24) = v37;
  aBlock[4] = sub_2226D9BF8;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226D9008;
  aBlock[3] = &block_descriptor_23;
  v40 = _Block_copy(aBlock);

  dispatch_sync(v38, v40);
  _Block_release(v40);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
LABEL_7:
  }

  (*(v26 + 8))(v51, v27);
  (*(v43 + 8))(v42, v44);
  return v22;
}

uint64_t sub_2226D6C34@<X0>(void *a1@<X8>)
{

  sub_2226D5150();
  v4 = v3;
  v5 = sub_2226D230C(v2, v3);

  *a1 = v5;
  return result;
}

uint64_t sub_2226D6C84()
{
  [*(v0 + 16) removeObserver_];

  v1 = *(v0 + 24);

  sub_2226D9B8C(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2226D6D44(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v23 = a1;
  v4 = type metadata accessor for JSDiagnostics();
  v22 = *(v4 - 8);
  v24 = *(v22 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222738DAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
  v21 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
  v18 = *(v8 + 16);
  v18(v10, a2, v7);
  sub_2226D97C4(v2 + v11, v6);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + *(v22 + 80) + v12) & ~*(v22 + 80);
  v14 = swift_allocObject();
  v15 = *(v8 + 32);
  v15(v14 + v12, v10, v7);
  sub_2226D9828(v6, v14 + v13);
  v18(v10, v19, v7);
  sub_2226D97C4(v20 + v21, v6);
  v16 = swift_allocObject();
  v15(v16 + v12, v10, v7);
  sub_2226D9828(v6, v16 + v13);
  v25[3] = sub_22273872C();
  v25[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_22273871C();
  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_2226D7004(uint64_t a1, uint64_t a2)
{
  v3 = sub_2227381BC();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v5);
  v6 = sub_22273812C();
  if (*(v6 + 16))
  {
    v7 = v6;
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v8 = sub_222738F6C();
    __swift_project_value_buffer(v8, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v9 = *(sub_2227381FC() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v12 = sub_222738DAC();
    v16 = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, a2, v12);
    sub_22273815C();
    sub_222660468(v15, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_2227381AC();
    sub_22273819C();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F80, &unk_222743F58);
    v15[0] = v7;

    sub_22273818C();
    sub_222660468(v15, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C7C();

    sub_2226CB4A0(v7);
  }

  else
  {
  }
}

uint64_t sub_2226D7354(void *a1, uint64_t a2)
{
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v18 = sub_222738F6C();
  __swift_project_value_buffer(v18, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v17 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_2227381AC();
  sub_22273819C();
  v9 = sub_222738DAC();
  v21 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  v11 = *(*(v9 - 8) + 16);
  v11(boxed_opaque_existential_1, a2, v9);
  sub_22273815C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v21 = v19;
  v12 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v19 - 8) + 16))(v12);
  sub_22273816C();
  sub_222660468(v20, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227412F0;
  *(inited + 32) = 0x6574756F72;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = v9;
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v11(v14, a2, v9);
  v15 = sub_222710688(inited);
  swift_setDeallocating();
  sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
  sub_2226CA204(a1, v15);
}

uint64_t sub_2226D772C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F78, &unk_222743F48);
    sub_22273956C();

    if (v2[0])
    {
      v2[3] = sub_22273872C();
      v2[4] = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v2);
      sub_22273871C();
      sub_222738E8C();

      return __swift_destroy_boxed_opaque_existential_1(v2);
    }
  }

  return result;
}

uint64_t sub_2226D7840(uint64_t *a1)
{
  v1 = *a1;
  sub_222738DFC();
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C5C();
}

uint64_t sub_2226D798C()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v9[3] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v9, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226D7BBC(uint64_t a1)
{
  v20[1] = a1;
  v2 = sub_222738DAC();
  v22 = *(v2 - 8);
  v23 = v2;
  v3 = *(v22 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22273903C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  sub_222738FFC();
  v13 = *(*(v1 + 24) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138A0, &qword_222742B30);
  sub_22273956C();
  v14 = *(v7 + 16);
  v21 = v6;
  v14(v10, v12, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v10, v6);
  v17 = sub_22273872C();
  v25 = v17;
  v26 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F70, &qword_222743F40);
  sub_22262BED4(&unk_281312E80, &qword_27D013F70, &qword_222743F40);
  v18 = sub_222738EDC();

  __swift_destroy_boxed_opaque_existential_1(v24);
  sub_22273901C();
  sub_2226D6D44(v18, v5);
  (*(v22 + 8))(v5, v23);
  v25 = v17;
  v26 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v24);
  sub_22273871C();
  swift_allocObject();
  swift_weakInit();
  sub_222738EBC();

  (*(v7 + 8))(v12, v21);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v18;
}

uint64_t sub_2226D7F64()
{
  v1 = *(*(v0 + 24) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F78, &unk_222743F48);
  result = sub_22273956C();
  if (v5[0])
  {
    v3 = sub_22262D828();
    v4 = sub_22273955C();
    v5[3] = v3;
    v5[4] = MEMORY[0x277D225C0];
    v5[0] = v4;
    sub_222738E8C();

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_2226D8048(uint64_t *a1)
{
  v1 = *a1;
  sub_222738E3C();

  sub_222738DFC();
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();
}

uint64_t sub_2226D81C0()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_281312E18 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_281315AA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v9[3] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v9, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226D84DC()
{
  v1 = *(*v0 + 24);
  v2 = *(v1 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2226D93B0;
  *(v3 + 24) = v1;
  v6[4] = sub_2226D9BF8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2226D9008;
  v6[3] = &block_descriptor_15;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2226D8618()
{
  v1 = *(*v0 + 24);
  v2 = *(v1 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2226D9378;
  *(v3 + 24) = v1;
  v6[4] = sub_2226D9380;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2226D9008;
  v6[3] = &block_descriptor_11;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2226D8754()
{
  v1 = v0;
  v2 = sub_222737C4C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_222737CDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = v25 - v11;
  if (v0[8])
  {

    sub_222737CFC();
  }

  if (!v0[6])
  {
    sub_222737CCC();
    v13 = v0[2];
    sub_222737D3C();
    v16 = *(v5 + 8);
    v14 = v5 + 8;
    v15 = v16;
    v16(v9, v4);
    sub_222737CAC();
    v17 = sub_222737CBC();
    result = (v16)(v9, v4);
    if (v17)
    {
      v18 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_2226D93A8;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22269F82C;
      aBlock[3] = &block_descriptor_8_0;
      v25[1] = _Block_copy(aBlock);
      v27 = MEMORY[0x277D84F90];
      sub_2226D96D4(&qword_281312FF0, MEMORY[0x277D85198]);
      v26 = v15;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
      v25[0] = v14;
      sub_22262BED4(&qword_281312DE0, &qword_27D013A10, &qword_222742900);
      sub_2227397BC();
      v19 = sub_222737D0C();
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      swift_allocObject();
      v22 = sub_222737CEC();

      v23 = v1[5];
      sub_22273953C();
      v26(v12, v4);
      v24 = v1[8];
      v1[8] = v22;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2226D8AC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2226D8B18();
  }

  return result;
}

uint64_t sub_2226D8B18()
{
  v1 = sub_2227381BC();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_222737D1C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v0[5];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_222737D4C();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  swift_beginAccess();
  v10 = v0[7];
  v0[7] = 0;

  v11 = v0[8];
  v0[8] = 0;

  v12 = v0[9];
  v0[9] = 0;
  swift_unknownObjectRelease();
  if (qword_281312E28 != -1)
  {
LABEL_5:
    swift_once();
  }

  v13 = sub_222738F6C();
  __swift_project_value_buffer(v13, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v14 = *(sub_2227381FC() - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

uint64_t sub_2226D8DE8(uint64_t a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *(a1 + 48);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  *(a1 + 48) = v6;
  if (*(a1 + 64))
  {
    v7 = *(a1 + 64);

    sub_222737CFC();
  }

  if (qword_281312E28 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v8 = sub_222738F6C();
  __swift_project_value_buffer(v8, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v9 = *(sub_2227381FC() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

uint64_t sub_2226D9030(uint64_t a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *(a1 + 48);
  if (!v4)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = qword_281312E28;
  v6 = v4 - 1;
  *(a1 + 48) = v6;
  if (v6)
  {
    if (v5 == -1)
    {
LABEL_4:
      v7 = sub_222738F6C();
      __swift_project_value_buffer(v7, qword_281315AC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v8 = *(sub_2227381FC() - 8);
      v9 = *(v8 + 72);
      v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      sub_22273817C();
      sub_22273819C();
      sub_2227381CC();
      sub_222738C5C();
    }

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (v5 != -1)
  {
    swift_once();
  }

  v12 = sub_222738F6C();
  __swift_project_value_buffer(v12, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v13 = *(sub_2227381FC() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  result = swift_beginAccess();
  if (*(a1 + 56))
  {
    return sub_2226D8754();
  }

  return result;
}

uint64_t sub_2226D9380()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2226D93CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 56);
  }

  result = sub_2226D8754();
  *a2 = v4;
  return result;
}

uint64_t sub_2226D9434(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_22273952C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_222737C9C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_22273954C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  result = MEMORY[0x28223BE20](v11);
  v16 = v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  if (a3 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = a3;
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    v17[0] = sub_22262D828();
    (*(v12 + 104))(v16, *MEMORY[0x277D85268], v11);

    sub_222737C7C();
    v17[1] = MEMORY[0x277D84F90];
    sub_2226D96D4(&qword_281312CD0, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013770, &unk_222742A70);
    sub_22262BED4(&qword_281312DC0, &unk_27D013770, &unk_222742A70);
    sub_2227397BC();
    *(v3 + 40) = sub_22273958C();
    *(v3 + 48) = 0;
    return v3;
  }

  return result;
}

uint64_t sub_2226D96D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2226D9738(uint64_t *a1)
{
  v2 = *(sub_22273903C() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *a1;
  return sub_222738DCC();
}

uint64_t sub_2226D97C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D9828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSDiagnostics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2226D988C(uint64_t a1)
{
  v3 = *(sub_222738DAC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for JSDiagnostics() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2226D7004(a1, v1 + v4);
}

uint64_t objectdestroy_31Tm()
{
  v1 = sub_222738DAC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for JSDiagnostics() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_22273842C();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_2226D9AB8(void *a1)
{
  v3 = *(sub_222738DAC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for JSDiagnostics() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2226D7354(a1, v1 + v4);
}

uint64_t sub_2226D9B8C(uint64_t a1)
{
  v2 = type metadata accessor for JSDiagnostics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226D9C20()
{
  v0 = sub_222738BBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  sub_22273858C();
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_222738C9C();
  sub_2226B92B8();
  sub_222738C9C();
  v8 = v29[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137D0, &unk_2227413A0);
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013790, &qword_222741570);
  sub_222738C9C();
  v9 = *(v1 + 16);
  v9(v5, v7, v0);
  sub_22266BCCC(v30, v25);
  v10 = [objc_opt_self() mainBundle];
  sub_2227389EC();
  v26 = &type metadata for AppStateMetricsFieldsProvider;
  v27 = sub_2226DA178();
  v11 = swift_allocObject();
  v25[0] = v11;
  sub_22266BCCC(v29, v11 + 16);
  sub_22266BCCC(v28, v11 + 56);
  if (qword_281312EA8 != -1)
  {
    swift_once();
  }

  v12 = sub_222738ABC();
  __swift_project_value_buffer(v12, qword_281315B08);
  sub_2227389CC();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v13 = type metadata accessor for UniversalMetricsFieldsProvider();
  v26 = v13;
  v27 = sub_2226DA220(&qword_2813131B8, type metadata accessor for UniversalMetricsFieldsProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  sub_22266BCCC(v30, boxed_opaque_existential_1);
  v9(boxed_opaque_existential_1 + *(v13 + 24), v7, v0);
  boxed_opaque_existential_1[5] = v8;
  v15 = qword_281312EB0;
  v16 = v8;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_222738A8C();
  __swift_project_value_buffer(v17, qword_281315B20);
  sub_2227389DC();
  __swift_destroy_boxed_opaque_existential_1(v25);
  v26 = &type metadata for ActivityMetricsFieldsProvider;
  v27 = sub_2226DA1CC();
  if (qword_281312EC8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_281315B50);
  sub_2227389DC();
  __swift_destroy_boxed_opaque_existential_1(v25);
  sub_22273850C();
  v18 = type metadata accessor for MetricsIdMetricsFieldsProvider();
  v26 = v18;
  v27 = sub_2226DA220(&qword_281314318, type metadata accessor for MetricsIdMetricsFieldsProvider);
  v24[0] = v24[1];
  v19 = __swift_allocate_boxed_opaque_existential_1(v25);
  v20 = *(v18 + 20);
  v21 = *MEMORY[0x277D22348];
  v22 = sub_222738ACC();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v24[0];
  if (qword_281312EC0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v17, qword_281315B38);
  sub_2227389DC();

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  (*(v1 + 8))(v7, v0);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

unint64_t sub_2226DA178()
{
  result = qword_2813140F8;
  if (!qword_2813140F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813140F8);
  }

  return result;
}

unint64_t sub_2226DA1CC()
{
  result = qword_2813131C8;
  if (!qword_2813131C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813131C8);
  }

  return result;
}

uint64_t sub_2226DA220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MetricsLogger.Configuration.init(asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v23 = sub_22273834C();
  v3 = *(v23 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v23);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013780, &qword_222742A80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - v10;
  v12 = sub_222738BBC();
  v24 = *(v12 - 8);
  v13 = *(v24 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273858C();
  v21[1] = a1;
  v22 = v12;
  sub_222738C9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0137B0, &unk_222742AD0);
  sub_222738C9C();
  v16 = sub_22273916C();
  sub_222738B5C();

  sub_222738B3C();
  v17 = *(v8 + 8);
  v17(v11, v7);
  v18 = sub_22273916C();
  v19 = v23;
  (*(v3 + 104))(v6, *MEMORY[0x277D21C38], v23);
  sub_222738AFC();

  (*(v3 + 8))(v6, v19);
  sub_222738B3C();
  v17(v11, v7);
  sub_22266BCCC(v27, v26);
  sub_22273841C();

  __swift_destroy_boxed_opaque_existential_1(v27);
  return (*(v24 + 8))(v15, v22);
}

uint64_t sub_2226DA62C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
  __swift_allocate_value_buffer(v0, qword_27D019C98);
  __swift_project_value_buffer(v0, qword_27D019C98);
  sub_2226DA6AC();
  return sub_22273884C();
}

unint64_t sub_2226DA6AC()
{
  result = qword_27D013080;
  if (!qword_27D013080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D013080);
  }

  return result;
}

uint64_t sub_2226DA6F8()
{
  v0 = sub_222738A8C();
  __swift_allocate_value_buffer(v0, qword_281315B50);
  __swift_project_value_buffer(v0, qword_281315B50);
  return sub_222738A6C();
}

uint64_t sub_2226DA78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D22120] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_222660228;

  return MEMORY[0x28217FBA8](a1, a2, a3, a4);
}

uint64_t sub_2226DA84C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22348];
  v3 = sub_222738ACC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void sub_2226DA8D8(uint64_t a1)
{
  v2 = v1;
  if (qword_27D0129D0 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
    __swift_project_value_buffer(v3, qword_27D019C98);
    sub_2226DA6AC();
    sub_22273888C();
    if (!v30[0])
    {
      if (qword_27D0129B0 != -1)
      {
        swift_once();
      }

      v23 = sub_222738F6C();
      __swift_project_value_buffer(v23, qword_27D019C80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v24 = *(sub_2227381FC() - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      *(swift_allocObject() + 16) = xmmword_2227413C0;
      sub_22273813C();
      sub_22273813C();
      sub_222738C6C();

      return;
    }

    v27 = v30[0];
    v4 = [v30[0] fields];
    v5 = sub_22273910C();

    v6 = 0;
    v8 = v5 + 64;
    v7 = *(v5 + 64);
    v29 = v5;
    v9 = 1 << *(v5 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v7;
    v12 = (v9 + 63) >> 6;
    if ((v10 & v7) != 0)
    {
      break;
    }

LABEL_7:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v13);
      ++v6;
      if (v11)
      {
        v31 = v2;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  while (1)
  {
    v31 = v2;
    v13 = v6;
LABEL_11:
    v14 = (v13 << 10) | (16 * __clz(__rbit64(v11)));
    v15 = (*(v29 + 48) + v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(v29 + 56) + v14;
    v19 = *v18;
    v20 = *(v18 + 8);
    v30[3] = MEMORY[0x277D837D0];
    v30[0] = v19;
    v30[1] = v20;
    v21 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));

    v22 = v31;
    sub_22273881C();
    v2 = v22;
    if (v22)
    {
      break;
    }

    v11 &= v11 - 1;

    __swift_destroy_boxed_opaque_existential_1(v30);
    v6 = v13;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_2226DAC64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
  __swift_allocate_value_buffer(v0, qword_27D019CB0);
  __swift_project_value_buffer(v0, qword_27D019CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
  return sub_22273884C();
}

uint64_t sub_2226DACF0()
{
  v0 = sub_222738ABC();
  __swift_allocate_value_buffer(v0, qword_281315B08);
  __swift_project_value_buffer(v0, qword_281315B08);
  return sub_222738A9C();
}

uint64_t sub_2226DAD64(uint64_t a1)
{
  v63 = a1;
  v58 = sub_2227378CC();
  v57 = *(v58 - 8);
  v2 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v4 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2227377AC();
  v56 = *(v5 - 8);
  v6 = *(v56 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737C2C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2227377BC();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22273793C();
  v60 = *(v61 - 8);
  v15 = *(v60 + 64);
  v16 = MEMORY[0x28223BE20](v61);
  v59 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v62 = v54 - v18;
  if (qword_27D0129E0 != -1)
  {
    swift_once();
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
  __swift_project_value_buffer(v19, qword_27D019CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
  sub_22273888C();
  v20 = v64[0];
  if (v64[0])
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      swift_unknownObjectRetain();
      sub_2226DB84C(v22, v63);
      return swift_unknownObjectRelease_n();
    }

    sub_22266BCCC(v1, v64);
    v54[2] = v66;
    v54[1] = __swift_project_boxed_opaque_existential_1(v64, v65);
    v28 = [v20 id];
    [v28 int64value];
    v29 = v67;
    sub_222737C1C();
    v67 = v29;
    if (v29)
    {
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    (*(v56 + 104))(v8, *MEMORY[0x277CEBFE8], v5);
    sub_22273778C();

    sub_222694714();
    v30 = v62;
    sub_2227379EC();
    (*(v57 + 8))(v4, v58);
    (*(v55 + 8))(v14, v11);
    __swift_destroy_boxed_opaque_existential_1(v64);
    v31 = v60;
    v32 = v59;
    v33 = v61;
    (*(v60 + 16))(v59, v30, v61);
    v34 = (*(v31 + 88))(v32, v33);
    v35 = MEMORY[0x277D837D0];
    if (v34 == *MEMORY[0x277CEC0D8])
    {
      (*(v31 + 96))(v32, v33);
      v36 = *v32;
      v37 = *(v32 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 32) = 0x6D61726150797562;
      v39 = inited + 32;
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 72) = v35;
      *(inited + 40) = 0xE900000000000073;
      *(inited + 48) = v36;
      *(inited + 56) = v37;
      v40 = sub_222710688(inited);
      swift_setDeallocating();
      sub_2226AFC24(v39);
      v41 = 0xE600000000000000;
      v42 = 0x657461647075;
    }

    else
    {
      if (v34 != *MEMORY[0x277CEC098])
      {
        v47 = v63;
        if (v34 == *MEMORY[0x277CEC090])
        {
          (*(v31 + 96))(v32, v33);
          v51 = sub_22273782C();
          (*(*(v51 - 8) + 8))(v32, v51);
          v40 = 0;
          v41 = 0xE600000000000000;
          v42 = 0x6C65636E6163;
        }

        else if (v34 == *MEMORY[0x277CEC0C0])
        {
          (*(v31 + 96))(v32, v33);
          v52 = sub_22273786C();
          (*(*(v52 - 8) + 8))(v32, v52);
          v40 = 0;
          v41 = 0xE400000000000000;
          v42 = 1852141679;
        }

        else
        {
          v40 = 0;
          v41 = 0xE300000000000000;
          v42 = 7959906;
          if (v34 != *MEMORY[0x277CEC0A8] && v34 != *MEMORY[0x277CEC0B0])
          {
            v53 = *(v31 + 8);
            v53(v62, v33);
            swift_unknownObjectRelease();
            return (v53)(v32, v33);
          }
        }

        goto LABEL_16;
      }

      (*(v31 + 96))(v32, v33);
      v43 = *v32;
      v44 = *(v32 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      v45 = swift_initStackObject();
      *(v45 + 32) = 0x6D61726150797562;
      v46 = v45 + 32;
      *(v45 + 16) = xmmword_2227412F0;
      *(v45 + 72) = v35;
      *(v45 + 40) = 0xE900000000000073;
      *(v45 + 48) = v43;
      *(v45 + 56) = v44;
      v40 = sub_222710688(v45);
      swift_setDeallocating();
      sub_2226AFC24(v46);
      v41 = 0xE800000000000000;
      v42 = 0x64616F6C6E776F64;
    }

    v47 = v63;
LABEL_16:
    v65 = v35;
    v64[0] = v42;
    v64[1] = v41;
    v48 = *(v47 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v47, *(v47 + 24));
    v49 = v67;
    sub_22273881C();
    if (v49)
    {
      (*(v31 + 8))(v62, v33);
      swift_unknownObjectRelease();

      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v64);
      if (v40)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
        v64[0] = v40;
        v50 = *(v47 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v47, *(v47 + 24));
        sub_22273881C();
        (*(v31 + 8))(v62, v33);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v64);
      }

      else
      {
        (*(v31 + 8))(v62, v33);
        return swift_unknownObjectRelease();
      }
    }
  }

  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v24 = sub_222738F6C();
  __swift_project_value_buffer(v24, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v25 = *(sub_2227381FC() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_2227413C0;
  sub_22273813C();
  sub_22273813C();
  sub_222738C6C();
}

uint64_t sub_2226DB84C(void *a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v5 = sub_2227378CC();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v5);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2227377AC();
  v64 = *(v66 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222737C2C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v65 = sub_2227377BC();
  v63 = *(v65 - 8);
  v13 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22273793C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v68 = &v57 - v22;
  v71 = v3;
  sub_22266BCCC(v3, v73);
  v62 = v75;
  v61 = __swift_project_boxed_opaque_existential_1(v73, v74);
  v23 = a1;
  v24 = [a1 id];
  [v24 int64value];
  v25 = v76;
  sub_222737C1C();
  v76 = v25;
  if (v25)
  {

    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v58 = v21;
  v59 = v17;
  v60 = v16;
  (*(v64 + 104))(v10, *MEMORY[0x277CEBFE8], v66);
  sub_22273778C();

  v27 = v67;
  v28 = v23;
  sub_2227113BC();
  v29 = v68;
  sub_2227379EC();
  (*(v69 + 8))(v27, v70);
  (*(v63 + 8))(v15, v65);
  __swift_destroy_boxed_opaque_existential_1(v73);
  v30 = *(*__swift_project_boxed_opaque_existential_1((v71 + 40), *(v71 + 64)) + 16);

  os_unfair_lock_lock((v30 + 32));
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);

  sub_2226F7D38(v33, v32);
  v35 = v34;
  os_unfair_lock_unlock((v30 + 32));

  v36 = [v28 iapItemID];
  v37 = sub_2226DC824(v36, v35);

  v38 = v29;
  if (![v28 streamlinedOffer])
  {
    v45 = 1;
    v47 = v59;
    v46 = v60;
    v41 = v58;
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v40 = swift_conformsToProtocol2();
  v41 = v58;
  if (!v40)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v42 = *(v40 + 8);
  v43 = v40;
  swift_unknownObjectRetain();
  v44 = v42(ObjectType, v43);
  swift_unknownObjectRelease_n();
  if (!v44)
  {
LABEL_9:
    v45 = 1;
    goto LABEL_10;
  }

  v45 = 0;
LABEL_10:
  v47 = v59;
  v46 = v60;
LABEL_11:
  (*(v47 + 16))(v41, v38, v46);
  v48 = (*(v47 + 88))(v41, v46);
  if (v48 == *MEMORY[0x277CEC0D8])
  {
    (*(v47 + 8))(v41, v46);
    v49 = 0xE600000000000000;
    v50 = 0x657461647075;
    goto LABEL_27;
  }

  if (v48 == *MEMORY[0x277CEC098])
  {
    (*(v47 + 8))(v41, v46);
    if ((v45 | v37))
    {
      v50 = 0x64616F6C6E776F64;
    }

    else
    {
      v50 = 7959906;
    }

    if ((v45 | v37))
    {
      v49 = 0xE800000000000000;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    goto LABEL_27;
  }

  if (v48 == *MEMORY[0x277CEC090])
  {
    (*(v47 + 96))(v41, v46);
    v51 = sub_22273782C();
    (*(*(v51 - 8) + 8))(v41, v51);
    v49 = 0xE600000000000000;
    v50 = 0x6C65636E6163;
    goto LABEL_27;
  }

  v50 = 7959906;
  if (v48 == *MEMORY[0x277CEC0C0])
  {
    (*(v47 + 96))(v41, v46);
    if ((v45 | v37))
    {
      v50 = 1852141679;
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    v52 = sub_22273786C();
    (*(*(v52 - 8) + 8))(v41, v52);
    goto LABEL_27;
  }

  v49 = 0xE300000000000000;
  if (v48 == *MEMORY[0x277CEC0A8])
  {
LABEL_27:
    v53 = v72;
LABEL_28:
    v74 = MEMORY[0x277D837D0];
    v73[0] = v50;
    v73[1] = v49;
    v54 = *(v53 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v53, *(v53 + 24));
    sub_22273881C();
    (*(v47 + 8))(v38, v46);
    return __swift_destroy_boxed_opaque_existential_1(v73);
  }

  v55 = v48 == *MEMORY[0x277CEC0B0];
  v53 = v72;
  if (v55)
  {
    goto LABEL_28;
  }

  v56 = *(v47 + 8);
  v56(v38, v46);
  return (v56)(v41, v46);
}

uint64_t sub_2226DC020@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D22340];
  v3 = sub_222738ACC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2226DC0AC()
{
  v0 = sub_222738A8C();
  __swift_allocate_value_buffer(v0, qword_281315B38);
  __swift_project_value_buffer(v0, qword_281315B38);
  return sub_222738A6C();
}

uint64_t type metadata accessor for MetricsIdMetricsFieldsProvider()
{
  result = qword_281314308;
  if (!qword_281314308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226DC190()
{
  result = sub_222738ACC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226DC20C(uint64_t a1)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = v1;
  return MEMORY[0x2822009F8](sub_2226DC22C, 0, 0);
}

uint64_t sub_2226DC22C()
{
  v1 = v0[32];
  v3 = *v1;
  v2 = *(v1 + 8);
  v0[29] = *v1;
  v0[30] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  inited = swift_initStackObject();
  v0[33] = inited;
  *(inited + 16) = xmmword_2227440C0;
  v5 = qword_281314320;
  v6 = v3;
  swift_unknownObjectRetain();
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_281314328;
  *(inited + 32) = qword_281314328;
  v8 = v7;
  v9 = swift_task_alloc();
  v0[34] = v9;
  *v9 = v0;
  v9[1] = sub_2226DC380;

  return sub_2226E2934(inited, 0, 0xD000000000000013, 0x800000022274CA70);
}

uint64_t sub_2226DC380(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 272);
  v11 = *v2;
  v3[35] = a1;
  v3[36] = v1;

  v5 = v3[29];
  v3 += 29;
  v6 = v3[4];
  v7 = v3[1];

  swift_unknownObjectRelease();
  swift_setDeallocating();
  v8 = *(v6 + 16);
  swift_arrayDestroy();
  if (v1)
  {
    v9 = sub_2226DC6EC;
  }

  else
  {
    v9 = sub_2226DC4D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_2226DC4D4()
{
  v1 = 0;
  v2 = *(v0 + 288);
  v3 = *(v0 + 280);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v25 = *(v0 + 280);
  v7 = -1;
  v8 = -1 << *(v25 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v23 = v5;
  v24 = *(v0 + 248);
  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  if ((v7 & v4) != 0)
  {
    while (1)
    {
      v11 = v1;
LABEL_8:
      v12 = *(v0 + 248);
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v25 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      sub_22262BF70(*(v25 + 56) + 32 * v13, v0 + 32);
      *(v0 + 64) = v15;
      *(v0 + 72) = v16;
      sub_22269457C((v0 + 32), (v0 + 80));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014680, &unk_222744148);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
      swift_dynamicCast();
      v18 = *(v0 + 112);
      v17 = *(v0 + 120);
      sub_22269457C((v0 + 128), (v0 + 200));
      v19 = *(v24 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v24 + 24));
      sub_22273881C();
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;
      __swift_destroy_boxed_opaque_existential_1((v0 + 200));

      v1 = v11;
      v5 = v23;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v22 = *(v0 + 280);
    __swift_destroy_boxed_opaque_existential_1((v0 + 200));

    v21 = *(v0 + 8);
LABEL_12:

    v21();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        v20 = *(v0 + 280);

        v21 = *(v0 + 8);
        goto LABEL_12;
      }

      v9 = *(v5 + 8 * v11);
      ++v1;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2226DC704(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222660228;

  return sub_2226DC20C(a1);
}

uint64_t sub_2226DC798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_222738ACC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2226DC824(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22273988C();
  }

  else if (*(a2 + 16) && (sub_22262E364(0, &qword_281312B80, 0x277CCABB0), v5 = *(a2 + 40), v6 = sub_2227396BC(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v4 = sub_2227396CC();

      if (v4)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_2226DC93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_222739C5C();
  sub_22273924C();
  v7 = sub_222739C8C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_222739B4C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t MetricsTopicProvider.init(bag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222738BBC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MetricsTopicProvider.currentMetricsTopic.getter()
{
  v0 = 0xD000000000000012;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F90, &qword_222744158);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v11 = sub_22273916C();
  sub_222738B6C();

  sub_222738B2C();
  (*(v7 + 8))(v10, v6);
  if (v14[1])
  {
    return v14[0];
  }

  v12 = sub_22273916C();
  sub_222738B0C();

  sub_222738B3C();
  (*(v2 + 8))(v5, v1);
  if (LOBYTE(v14[0]) != 1)
  {
    return 0x615F706D615F7078;
  }

  return v0;
}

uint64_t MetricsTopicProvider.anonymousMetricsTopics.getter()
{
  v0 = sub_2226DD5A8(&unk_2835C7240);
  sub_22269E384(&unk_2835C7260);
  return v0;
}

uint64_t MetricsTopicProvider.shouldHaveAnonymousEvents.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7[-v3];
  v5 = sub_22273916C();
  sub_222738B0C();

  sub_222738B3C();
  (*(v1 + 8))(v4, v0);
  return v7[15];
}

Swift::String __swiftcall MetricsTopicProvider.replacementTopic(for:)(Swift::String a1)
{
  object = a1._object;
  if (qword_27D0129E8 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v2 = a1._countAndFlagsBits;
  if (sub_2226DC93C(a1._countAndFlagsBits, object, qword_27D013F88))
  {
    v3 = MetricsTopicProvider.currentMetricsTopic.getter();
    object = v4;
  }

  else
  {

    v3 = v2;
  }

  v5 = object;
  result._object = v5;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_2226DCEF8()
{
  v0 = sub_2226DD5A8(&unk_2835C7270);
  result = swift_arrayDestroy();
  qword_27D013F88 = v0;
  return result;
}

uint64_t sub_2226DCF44(uint64_t a1)
{
  v2 = sub_2227377BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013578, &qword_2227425D0);
    v10 = sub_22273990C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2226DDF44(&unk_281312FF8, MEMORY[0x277CEC000]);
      v18 = sub_22273911C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2226DDF44(&qword_27D013570, MEMORY[0x277CEC000]);
          v25 = sub_22273915C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2226DD264(uint64_t a1)
{
  v2 = sub_222737C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013518, &qword_222742588);
    v10 = sub_22273990C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2226DDF44(&qword_27D0134D0, MEMORY[0x277CEC160]);
      v18 = sub_22273911C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2226DDF44(&qword_27D0134D8, MEMORY[0x277CEC160]);
          v25 = sub_22273915C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2226DD5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013558, &qword_2227425C0);
    v3 = sub_22273990C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_222739C5C();

      sub_22273924C();
      result = sub_222739C8C();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_222739B4C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t type metadata accessor for MetricsTopicProvider()
{
  result = qword_281313430;
  if (!qword_281313430)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226DD784()
{
  result = sub_222738BBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2226DD7F0(uint64_t a1)
{
  v2 = sub_22273746C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013F98, &unk_222744190);
    v10 = sub_22273990C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2226DDF44(&qword_27D013FA0, MEMORY[0x277CC99D0]);
      v18 = sub_22273911C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2226DDF44(&qword_27D013FA8, MEMORY[0x277CC99D0]);
          v25 = sub_22273915C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2226DDB34(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_22273984C();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_22273990C();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_22273984C();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x223DBEC70](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_2227396BC();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_22262E364(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_2227396CC();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_2227396BC();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_22262E364(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_2227396CC();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2226DDE20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013608, &qword_222742600);
    v3 = sub_22273990C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 8 * v4);
      result = sub_222739C4C();
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2226DDF44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2226DDF8C()
{
  v0 = sub_222738A8C();
  __swift_allocate_value_buffer(v0, qword_281315B20);
  __swift_project_value_buffer(v0, qword_281315B20);
  return sub_222738A6C();
}

uint64_t type metadata accessor for UniversalMetricsFieldsProvider()
{
  result = qword_2813131A8;
  if (!qword_2813131A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2226DE058()
{
  result = sub_2226A9A8C();
  if (v1 <= 0x3F)
  {
    result = sub_22262E364(319, &qword_281312D68, 0x277CB8F48);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MetricsTopicProvider();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2226DE104(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v56 - v12;
  v14 = sub_22273731C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273730C();
  result = (*(v15 + 48))(v13, 1, v14);
  if (result != 1)
  {
    (*(v15 + 32))(v18, v13, v14);
    v20 = v1;
    v21 = v1[5];
    v22 = sub_2227372BC();
    v23 = [v21 ams:v22 cookiesForURL:?];

    sub_22262E364(0, &qword_27D013FB0, 0x277CCAA30);
    v24 = sub_22273937C();

    v62 = v24;
    v63 = sub_2226DE800;
    v64 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013FB8, &qword_222744210);
    sub_2226DE8E0();
    v25 = sub_22273913C();
    v27 = v26;

    v65 = MEMORY[0x277D837D0];
    v62 = v25;
    v63 = v27;
    v28 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v29 = v66;
    sub_22273881C();
    if (v29)
    {
      (*(v15 + 8))(v18, v14);
      return __swift_destroy_boxed_opaque_existential_1(&v62);
    }

    v66 = 0;
    v57 = v14;
    v58 = v18;
    __swift_destroy_boxed_opaque_existential_1(&v62);
    v30 = v20[3];
    v31 = v20[4];
    v56 = v20;
    __swift_project_boxed_opaque_existential_1(v20, v30);
    sub_2227384EC();
    v32 = sub_222738CFC();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v9, 1, v32) == 1)
    {
      sub_2226DE9C8(v9);
    }

    else
    {
      swift_getKeyPath();
      sub_222738CBC();

      v34 = v62;
      (*(v33 + 8))(v9, v32);
      if (v34)
      {
        v35 = *(type metadata accessor for UniversalMetricsFieldsProvider() + 24);
        v36 = sub_22273916C();
        v37 = v59;
        sub_222738B0C();

        v38 = v61;
        sub_222738B3C();
        (*(v60 + 8))(v37, v38);
        if (v62)
        {
        }

        else
        {
          v39 = [v34 stringValue];
          v40 = sub_22273919C();
          v42 = v41;

          v65 = MEMORY[0x277D837D0];
          v62 = v40;
          v63 = v42;
          v43 = *(a1 + 32);
          __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
          v44 = v66;
          sub_22273881C();
          if (v44)
          {
            (*(v15 + 8))(v58, v57);

            return __swift_destroy_boxed_opaque_existential_1(&v62);
          }

          v66 = 0;

          __swift_destroy_boxed_opaque_existential_1(&v62);
        }
      }
    }

    v45 = objc_opt_self();
    [v45 mainScreenSize];
    v47 = v46;
    v49 = v48;
    [v45 mainScreenScale];
    v50 = MEMORY[0x277D85048];
    v65 = MEMORY[0x277D85048];
    v62 = v51;
    v52 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v53 = v66;
    sub_22273881C();
    if (!v53)
    {
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v65 = v50;
      v62 = v49;
      v54 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_22273881C();
      __swift_destroy_boxed_opaque_existential_1(&v62);
      v65 = v50;
      v62 = v47;
      v55 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_22273881C();
    }

    (*(v15 + 8))(v58, v57);
    return __swift_destroy_boxed_opaque_existential_1(&v62);
  }

  __break(1u);
  return result;
}

uint64_t sub_2226DE800@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 name];
  v5 = sub_22273919C();
  v7 = v6;

  v13 = v5;
  MEMORY[0x223DBE5D0](61, 0xE100000000000000);
  v8 = [v3 value];
  v9 = sub_22273919C();
  v11 = v10;

  MEMORY[0x223DBE5D0](v9, v11);

  *a2 = v13;
  a2[1] = v7;
  return result;
}

unint64_t sub_2226DE8E0()
{
  result = qword_27D013FC0;
  if (!qword_27D013FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013FB8, &qword_222744210);
    sub_2226DE964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013FC0);
  }

  return result;
}

unint64_t sub_2226DE964()
{
  result = qword_27D013FC8;
  if (!qword_27D013FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D013FD0, qword_222744218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013FC8);
  }

  return result;
}

uint64_t sub_2226DE9C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2226DEA30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedLongLongValue];
  *a2 = result;
  return result;
}

void sub_2226DEA64(unsigned __int8 a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v141 = a8;
  v142 = a7;
  v143 = a6;
  v139 = a3;
  v138 = type metadata accessor for ASCSignpostGroupValue();
  v12 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v140 = (&v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_2227373BC();
  v137 = *(v14 - 8);
  v15 = *(v137 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v136 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v136 - v23;
  v25 = [a2 signpostId];
  if (*(a4 + 16))
  {
    v26 = v25;
    v27 = *(a4 + 40);
    v28 = sub_222739C4C();
    v29 = -1 << *(a4 + 32);
    v30 = v28 & ~v29;
    if ((*(a4 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
    {
      v31 = ~v29;
      while (*(*(a4 + 48) + 8 * v30) != v26)
      {
        v30 = (v30 + 1) & v31;
        if (((*(a4 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          return;
        }
      }

      v136 = a9;
      if (sub_22273962C() == a1)
      {
        v32 = [a2 name];
        v33 = sub_22273919C();
        v35 = v34;

        LOBYTE(v32) = sub_22268DC00(&v144, v33, v35);

        if (v32)
        {
          v36 = v143;
LABEL_17:
          v59 = [a2 beginDate];
          if (v59)
          {
            v60 = v59;
            sub_22273739C();

            v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
            v62 = [a2 name];
            v63 = sub_22273919C();
            v65 = v64;

            v66 = v140;
            *v140 = v63;
            *(v66 + 8) = v65;
            v67 = v137;
            (*(v137 + 16))(v66 + v61, v24, v14);
            swift_storeEnumTagMultiPayload();
            v141(v66, v139);
            sub_2226E01A0(v66);
            (*(v67 + 8))(v24, v14);
            return;
          }

          v84 = [a2 name];
          v85 = sub_22273919C();
          v87 = v86;

          sub_2226E014C();
          v56 = swift_allocError();
          *v88 = v85;
          *(v88 + 8) = v87;
          *(v88 + 16) = 0;
          *(v88 + 24) = 0;
          *(v88 + 32) = 1;
LABEL_45:
          v127 = v145;
          v36();
          if (v127)
          {
            goto LABEL_46;
          }

LABEL_55:
          v128 = v56;
          goto LABEL_47;
        }

        v52 = [a2 name];
        v53 = sub_22273919C();
        v55 = v54;

        sub_2226E014C();
        v56 = swift_allocError();
        *v57 = v53;
        *(v57 + 8) = v55;
        *(v57 + 16) = 0;
        *(v57 + 24) = 0;
        *(v57 + 32) = 0;
        v36 = v143;
        v58 = v145;
        v143();
        if (!v58)
        {
          v145 = 0;

          goto LABEL_17;
        }

LABEL_46:
        v128 = v56;
LABEL_47:

        return;
      }

      if (sub_22273961C() == a1)
      {
        v37 = [a2 name];
        v38 = sub_22273919C();
        v40 = v39;

        sub_2226E01FC(v38, v40);
        v42 = v41;

        if (v42)
        {

          v36 = v143;
        }

        else
        {
          v89 = [a2 name];
          v90 = sub_22273919C();
          v92 = v91;

          sub_2226E014C();
          v56 = swift_allocError();
          *v93 = v90;
          *(v93 + 8) = v92;
          *(v93 + 16) = 0;
          *(v93 + 24) = 0;
          *(v93 + 32) = 3;
          v36 = v143;
          v94 = v145;
          v143();
          if (v94)
          {
            goto LABEL_46;
          }

          v145 = 0;
        }

        v43 = [a2 endDate];
        if (v43)
        {
          v44 = v43;
          sub_22273739C();

          v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
          v46 = [a2 name];
          v47 = sub_22273919C();
          v49 = v48;

          v50 = v140;
          *v140 = v47;
          *(v50 + 8) = v49;
          v51 = v137;
          (*(v137 + 16))(v50 + v45, v20, v14);
          swift_storeEnumTagMultiPayload();
          v141(v50, v139);
          sub_2226E01A0(v50);
          (*(v51 + 8))(v20, v14);
          return;
        }

        v95 = [a2 name];
        v96 = sub_22273919C();
        v98 = v97;

        sub_2226E014C();
        v56 = swift_allocError();
        *v99 = v96;
        *(v99 + 8) = v98;
        *(v99 + 16) = 0;
        *(v99 + 24) = 0;
        *(v99 + 32) = 2;
        goto LABEL_45;
      }

      if (sub_22273963C() != a1)
      {
        return;
      }

      v68 = [a2 attributes];
      if (v68)
      {
        v69 = v68;
        v70 = sub_22273910C();

        if (*(v70 + 16))
        {
          v71 = sub_222688818(1734437958, 0xE400000000000000);
          if (v72)
          {
            v73 = (*(v70 + 56) + 16 * v71);
            v75 = *v73;
            v74 = v73[1];

            v76 = v75 == 1702195828 && v74 == 0xE400000000000000;
            if (v76 || (sub_222739B4C() & 1) != 0)
            {

              v77 = 1;
            }

            else
            {
              v129 = v75 == 0x65736C6166 && v74 == 0xE500000000000000;
              if (!v129 && (sub_222739B4C() & 1) == 0)
              {
                v130 = [a2 name];
                v131 = sub_22273919C();
                v133 = v132;

                sub_2226E014C();
                v56 = swift_allocError();
                *v134 = v131;
                *(v134 + 8) = v133;
                *(v134 + 16) = v75;
                *(v134 + 24) = v74;
                *(v134 + 32) = 4;
                v135 = v145;
                v143();
                if (v135)
                {
                  goto LABEL_46;
                }

                goto LABEL_55;
              }

              v77 = 0;
            }

            v78 = [a2 name];
            v79 = sub_22273919C();
            v81 = v80;

            v82 = v140;
            *v140 = v79;
            v82[1] = v81;
            *(v82 + 16) = v77;
            swift_storeEnumTagMultiPayload();
            v141(v82, v139);
            v83 = v82;
LABEL_40:
            sub_2226E01A0(v83);
            return;
          }
        }
      }

      v100 = [a2 attributes];
      v36 = v143;
      if (v100)
      {
        v101 = v100;
        v102 = sub_22273910C();

        if (*(v102 + 16))
        {
          v103 = sub_222688818(0x676E69727453, 0xE600000000000000);
          if (v104)
          {
            v105 = (*(v102 + 56) + 16 * v103);
            v107 = *v105;
            v106 = v105[1];

            v108 = [a2 name];
            v109 = sub_22273919C();
            v111 = v110;

            v112 = v140;
            *v140 = v109;
            v112[1] = v111;
            v112[2] = v107;
            v112[3] = v106;
            swift_storeEnumTagMultiPayload();
            v141(v112, v139);
            v83 = v112;
            goto LABEL_40;
          }
        }
      }

      v113 = [a2 beginDate];
      if (v113)
      {
        v114 = v113;
        sub_22273739C();

        v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
        v116 = [a2 name];
        v117 = sub_22273919C();
        v119 = v118;

        v120 = v140;
        *v140 = v117;
        *(v120 + 8) = v119;
        v121 = v137;
        (*(v137 + 16))(v120 + v115, v17, v14);
        swift_storeEnumTagMultiPayload();
        v141(v120, v139);
        sub_2226E01A0(v120);
        (*(v121 + 8))(v17, v14);
        return;
      }

      v122 = [a2 name];
      v123 = sub_22273919C();
      v125 = v124;

      sub_2226E014C();
      v56 = swift_allocError();
      *v126 = v123;
      *(v126 + 8) = v125;
      *(v126 + 16) = 0;
      *(v126 + 24) = 0;
      *(v126 + 32) = 5;
      goto LABEL_45;
    }
  }
}

uint64_t sub_2226DF4DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v134 = a3;
  v4 = sub_22273701C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227373BC();
  v10 = *(v9 - 8);
  v132 = v9;
  v133 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v131 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v131 - v18;
  v20 = type metadata accessor for ASCSignpostGroupValue();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v131 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2226E04FC(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v23;
  v25 = v23[1];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v28 = v23[2];
        v27 = v23[3];
        *&v135 = *v23;
        *(&v135 + 1) = v25;
        sub_22273700C();
        sub_2226B1104();
        v29 = MEMORY[0x277D837D0];
        sub_22273976C();
        v31 = v30;
        (*(v5 + 8))(v8, v4);
        if (v31)
        {
          v26 = sub_2227391FC();
          v33 = v32;
        }

        else
        {
          v67 = sub_22273926C();
          if (v68)
          {
LABEL_37:
            *(&v136 + 1) = v29;
            *&v135 = v28;
            *(&v135 + 1) = v27;
            return sub_222730CC4(&v135, v26, v25);
          }

          v69 = v67;
          v70 = v29;
          if (v67 >= 0x4000)
          {
            sub_22273932C();
            v103 = sub_22273972C();
            v105 = v104;

            v74 = sub_222725110(0xFuLL, v69, v103, v105, v26, v25);
          }

          else
          {
            sub_22273925C();
            sub_22273932C();
            v71 = sub_22273972C();
            v73 = v72;

            v74 = sub_222725424(0xFuLL, v69, v71, v73, v26, v25);
          }

          v26 = v74;
          v33 = v75;

          v29 = v70;
        }

        v25 = v33;
        goto LABEL_37;
      }

      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258);
      v48 = v132;
      (*(v133 + 32))(v13, v23 + *(v47 + 48), v132);
      *&v135 = 0;
      *(&v135 + 1) = 0xE000000000000000;
      v137 = v26;
      v138 = v25;
      sub_22273700C();
      sub_2226B1104();
      sub_22273976C();
      v50 = v49;
      (*(v5 + 8))(v8, v4);
      if (v50)
      {
        v26 = sub_2227391FC();
        v52 = v51;
      }

      else
      {
        v76 = sub_22273926C();
        if (v77)
        {
LABEL_42:
          MEMORY[0x223DBE5D0](v26, v25);

          MEMORY[0x223DBE5D0](1701669204, 0xE400000000000000);
          v110 = v135;
          v111 = objc_opt_self();
          v112 = sub_22273734C();
          v113 = [v111 serverTimeFromDate_];

          *(&v136 + 1) = sub_2226CB914();
          *&v135 = v113;
          sub_222730CC4(&v135, v110, *(&v110 + 1));
          return (*(v133 + 8))(v13, v48);
        }

        v78 = v76;
        if (v76 >= 0x4000)
        {
          sub_22273932C();
          v107 = sub_22273972C();
          v109 = v108;

          v82 = sub_222725110(0xFuLL, v78, v107, v109, v26, v25);
        }

        else
        {
          sub_22273925C();
          sub_22273932C();
          v79 = sub_22273972C();
          v81 = v80;

          v82 = sub_222725424(0xFuLL, v78, v79, v81, v26, v25);
        }

        v26 = v82;
        v52 = v83;
      }

      v25 = v52;
      goto LABEL_42;
    }

    v42 = *(v23 + 16);
    *&v135 = *v23;
    *(&v135 + 1) = v25;
    sub_22273700C();
    sub_2226B1104();
    sub_22273976C();
    v44 = v43;
    (*(v5 + 8))(v8, v4);
    if (v44)
    {
      v26 = sub_2227391FC();
      v46 = v45;
    }

    else
    {
      v59 = sub_22273926C();
      if (v60)
      {
LABEL_33:
        *(&v136 + 1) = MEMORY[0x277D839B0];
        LOBYTE(v135) = v42;
        return sub_222730CC4(&v135, v26, v25);
      }

      v61 = v59;
      if (v59 >= 0x4000)
      {
        sub_22273932C();
        v100 = sub_22273972C();
        v102 = v101;

        v65 = sub_222725110(0xFuLL, v61, v100, v102, v26, v25);
      }

      else
      {
        sub_22273925C();
        sub_22273932C();
        v62 = sub_22273972C();
        v64 = v63;

        v65 = sub_222725424(0xFuLL, v61, v62, v64, v26, v25);
      }

      v26 = v65;
      v46 = v66;
    }

    v25 = v46;
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload)
  {
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258);
    v54 = v133;
    (*(v133 + 32))(v16, v23 + *(v53 + 48), v132);
    *&v135 = 0;
    *(&v135 + 1) = 0xE000000000000000;
    v137 = v26;
    v138 = v25;
    sub_22273700C();
    sub_2226B1104();
    sub_22273976C();
    v56 = v55;
    (*(v5 + 8))(v8, v4);
    if (v56)
    {
      v26 = sub_2227391FC();
      v58 = v57;
    }

    else
    {
      v92 = sub_22273926C();
      if (v93)
      {
LABEL_53:
        MEMORY[0x223DBE5D0](v26, v25);

        MEMORY[0x223DBE5D0](0x656D6954646E45, 0xE700000000000000);
        v127 = v135;
        v128 = objc_opt_self();
        v129 = sub_22273734C();
        v130 = [v128 serverTimeFromDate_];

        *(&v136 + 1) = sub_2226CB914();
        *&v135 = v130;
        sub_222730CC4(&v135, v127, *(&v127 + 1));
        return (*(v54 + 8))(v16, v132);
      }

      v94 = v92;
      if (v92 >= 0x4000)
      {
        sub_22273932C();
        v124 = sub_22273972C();
        v126 = v125;

        v98 = sub_222725110(0xFuLL, v94, v124, v126, v26, v25);
      }

      else
      {
        sub_22273925C();
        sub_22273932C();
        v95 = sub_22273972C();
        v97 = v96;

        v98 = sub_222725424(0xFuLL, v94, v95, v97, v26, v25);
      }

      v26 = v98;
      v58 = v99;
    }

    v25 = v58;
    goto LABEL_53;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258);
  v36 = v132;
  v35 = v133;
  (*(v133 + 32))(v19, v23 + *(v34 + 48), v132);
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  v137 = v26;
  v138 = v25;
  sub_22273700C();
  sub_2226B1104();
  sub_22273976C();
  v38 = v37;
  (*(v5 + 8))(v8, v4);
  if (v38)
  {
    v26 = sub_2227391FC();
    v40 = v39;
    v41 = v134;
LABEL_45:

    v25 = v40;
    goto LABEL_46;
  }

  v84 = sub_22273926C();
  v41 = v134;
  if ((v85 & 1) == 0)
  {
    v86 = v84;
    if (v84 >= 0x4000)
    {
      sub_22273932C();
      v114 = sub_22273972C();
      v116 = v115;

      v90 = sub_222725110(0xFuLL, v86, v114, v116, v26, v25);
    }

    else
    {
      sub_22273925C();
      sub_22273932C();
      v87 = sub_22273972C();
      v89 = v88;

      v90 = sub_222725424(0xFuLL, v86, v87, v89, v26, v25);
    }

    v26 = v90;
    v40 = v91;

    v35 = v133;
    goto LABEL_45;
  }

LABEL_46:
  MEMORY[0x223DBE5D0](v26, v25);

  MEMORY[0x223DBE5D0](0x6D69547472617453, 0xE900000000000065);
  v117 = v135;
  v118 = *v41;
  if (*(*v41 + 16) && (v119 = sub_222688818(v135, *(&v135 + 1)), (v120 & 1) != 0))
  {
    sub_22262BF70(*(v118 + 56) + 32 * v119, &v135);
    (*(v35 + 8))(v19, v36);

    return sub_222672BA0(&v135);
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
    sub_222672BA0(&v135);
    v121 = objc_opt_self();
    v122 = sub_22273734C();
    v123 = [v121 serverTimeFromDate_];

    *(&v136 + 1) = sub_2226CB914();
    *&v135 = v123;
    sub_222730CC4(&v135, v117, *(&v117 + 1));
    return (*(v35 + 8))(v19, v36);
  }
}

unint64_t sub_2226E014C()
{
  result = qword_27D013FD8;
  if (!qword_27D013FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013FD8);
  }

  return result;
}

uint64_t sub_2226E01A0(uint64_t a1)
{
  v2 = type metadata accessor for ASCSignpostGroupValue();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226E01FC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_222739C5C();
  sub_22273924C();
  v7 = sub_222739C8C();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_222739B4C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2226916B4();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_2226E0338(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_2226E0338(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2227397DC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_222739C5C();

        sub_22273924C();
        v15 = sub_222739C8C();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2226E04FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASCSignpostGroupValue();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_27AppStoreComponentsDaemonKit21ASCSignpostGroupErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2226E0590(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2226E05D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2226E0620(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t type metadata accessor for ASCSignpostGroupValue()
{
  result = qword_27D014050;
  if (!qword_27D014050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2226E06E8()
{
  sub_2226E0794();
  if (v0 <= 0x3F)
  {
    sub_2226E07FC(319, &qword_27D014068);
    if (v1 <= 0x3F)
    {
      sub_2226E07FC(319, &qword_27D014070);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2226E0794()
{
  if (!qword_27D014060)
  {
    sub_2227373BC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D014060);
    }
  }
}

void sub_2226E07FC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2226E0858(uint64_t a1, uint64_t a2)
{
  v110 = a2;
  v3 = sub_2227373BC();
  v4 = *(v3 - 8);
  v108 = v3;
  v109 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v104 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v106 = &v103 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v107 = &v103 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v105 = &v103 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v103 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v103 - v17;
  v19 = type metadata accessor for ASCSignpostGroupValue();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = (&v103 - v25);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v103 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v103 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v103 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014078, &unk_222744410);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v39 = &v103 + *(v37 + 56) - v38;
  v40 = a1;
  v41 = &v103 - v38;
  sub_2226E04FC(v40, &v103 - v38);
  sub_2226E04FC(v110, v39);
  v110 = v41;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v52 = v107;
    if (EnumCaseMultiPayload)
    {
      sub_2226E04FC(v110, v32);
      v72 = *v32;
      v73 = *(v32 + 8);
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v74 = *v39;
        v75 = *(v39 + 1);
        v76 = *(v109 + 32);
        v77 = v32 + v34;
        v78 = v108;
        v76(v105, v77, v108);
        v79 = &v39[v34];
        v80 = v52;
        v76(v52, v79, v78);
        if (v72 == v74 && v73 == v75)
        {
        }

        else
        {
          v82 = sub_222739B4C();

          if ((v82 & 1) == 0)
          {
            v83 = *(v109 + 8);
            v83(v80, v78);
            v83(v105, v78);
            goto LABEL_58;
          }
        }

        v99 = v105;
        v92 = sub_22273738C();
        v95 = *(v109 + 8);
        v95(v80, v78);
        v96 = v99;
        v97 = v78;
        goto LABEL_56;
      }
    }

    else
    {
      v53 = v16;
      sub_2226E04FC(v110, v34);
      v55 = *v34;
      v54 = *(v34 + 8);
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
      if (!swift_getEnumCaseMultiPayload())
      {
        v84 = *(v39 + 1);
        v107 = *v39;
        v85 = *(v109 + 32);
        v86 = v34 + v32;
        v87 = v108;
        v85(v18, v86, v108);
        v85(v53, &v39[v32], v87);
        if (v55 == v107 && v54 == v84)
        {
        }

        else
        {
          v89 = sub_222739B4C();

          if ((v89 & 1) == 0)
          {
            v90 = *(v109 + 8);
            v90(v53, v87);
            v90(v18, v87);
            goto LABEL_58;
          }
        }

        v92 = sub_22273738C();
        v95 = *(v109 + 8);
        v95(v53, v87);
        v96 = v18;
        v97 = v87;
        goto LABEL_56;
      }
    }

    (*(v109 + 8))(v32 + v34, v108);
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_2226E04FC(v110, v29);
    v56 = *v29;
    v57 = *(v29 + 1);
    v58 = v29[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v59 = v39[16];
      if (v56 == *v39 && v57 == *(v39 + 1))
      {
        v91 = *(v39 + 1);
      }

      else
      {
        v61 = *(v39 + 1);
        v62 = sub_222739B4C();

        if ((v62 & 1) == 0)
        {
          goto LABEL_58;
        }
      }

      sub_2226E01A0(v110);
      v92 = v58 ^ v59 ^ 1;
      return v92 & 1;
    }

LABEL_35:

    sub_2226E10E4(v110);
LABEL_59:
    v92 = 0;
    return v92 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_2226E04FC(v110, v23);
    v64 = *v23;
    v63 = *(v23 + 1);
    v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013FE0, &qword_222744258) + 48);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      (*(v109 + 8))(&v23[v65], v108);
      goto LABEL_35;
    }

    v67 = *v39;
    v66 = *(v39 + 1);
    v68 = v108;
    v69 = *(v109 + 32);
    v69(v106, &v23[v65], v108);
    v70 = &v39[v65];
    v71 = v104;
    v69(v104, v70, v68);
    if (v64 == v67 && v63 == v66)
    {
    }

    else
    {
      v93 = sub_222739B4C();

      if ((v93 & 1) == 0)
      {
        v101 = *(v109 + 8);
        v101(v71, v68);
        v101(v106, v68);
        goto LABEL_58;
      }
    }

    v94 = v106;
    v92 = sub_22273738C();
    v95 = *(v109 + 8);
    v95(v71, v68);
    v96 = v94;
    v97 = v68;
LABEL_56:
    v95(v96, v97);
    sub_2226E01A0(v110);
    return v92 & 1;
  }

  sub_2226E04FC(v110, v26);
  v44 = *v26;
  v43 = v26[1];
  v45 = v26[2];
  v46 = v26[3];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_35;
  }

  v48 = *(v39 + 2);
  v47 = *(v39 + 3);
  if (v44 == *v39 && v43 == *(v39 + 1))
  {
    v98 = *(v39 + 1);
  }

  else
  {
    v50 = *(v39 + 1);
    v51 = sub_222739B4C();

    if ((v51 & 1) == 0)
    {

LABEL_58:
      sub_2226E01A0(v110);
      goto LABEL_59;
    }
  }

  if (v45 == v48 && v46 == v47)
  {
  }

  else
  {
    v100 = sub_222739B4C();

    if ((v100 & 1) == 0)
    {
      goto LABEL_58;
    }
  }

  sub_2226E01A0(v110);
  v92 = 1;
  return v92 & 1;
}

uint64_t sub_2226E10E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014078, &unk_222744410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2226E114C(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = sub_22273705C();
  v69 = *(v3 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v64 - v8;
  v10 = sub_2227373BC();
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v64 - v15;
  MEMORY[0x28223BE20](v17);
  v75 = &v64 - v18;
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v77 = &v64 - v21;
  v22 = v2;
  v23 = [v2 dateRanges];
  v76 = v3;
  v24 = sub_22273937C();

  v25 = *(v24 + 16);

  if (v25 == 1)
  {
    v30 = [v22 &selRef_initWithDouble_ + 7];
    v31 = v76;
    v32 = sub_22273937C();

    if (*(v32 + 16))
    {
      v33 = v68;
      (*(v69 + 16))(v68, v32 + ((*(v69 + 80) + 32) & ~*(v69 + 80)), v31);

      v27 = *(v69 + 56);
      v26 = v33;
      v28 = 0;
      v29 = v31;
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v25)
  {
    v71 = v22;
    v34 = [v22 &selRef_initWithDouble_ + 7];
    v35 = v76;
    v36 = sub_22273937C();

    if (*(v36 + 16))
    {
      v66 = v13;
      v37 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v38 = v69 + 16;
      v74 = *(v69 + 16);
      v74(v9, v36 + v37, v35);

      sub_22273704C();
      v39 = (v69 + 8);
      v73 = *(v69 + 8);
      v73(v9, v35);
      v40 = [v71 dateRanges];
      v41 = sub_22273937C();

      if (*(v41 + 16))
      {
        v65 = v37;
        v72 = v38;
        v74(v9, v41 + v37, v35);

        v42 = v75;
        sub_22273702C();
        v73(v9, v35);
        v43 = [v71 dateRanges];
        v44 = sub_22273937C();

        v45 = *(v44 + 16);
        v46 = v45 - 1;
        if (v45 == 1)
        {

          v59 = v67;
          v58 = v68;
          v60 = v66;
LABEL_22:
          v61 = *(v59 + 16);
          v62 = v77;
          v61(v16, v77, v10);
          v61(v60, v42, v10);
          sub_22273703C();
          v63 = *(v59 + 8);
          v63(v42, v10);
          v63(v62, v10);
          (*(v69 + 56))(v58, 0, 1, v76);
          return;
        }

        if (v45)
        {
          v71 = v39;
          v47 = *(v69 + 72);
          v48 = v44;
          v49 = (v67 + 8);
          v50 = (v67 + 32);
          v64 = v48;
          v70 = v47;
          v51 = v48 + v47 + v65;
          v53 = v75;
          v52 = v76;
          do
          {
            v74(v6, v51, v52);
            sub_22273704C();
            v54 = sub_22273736C();
            v55 = *v49;
            (*v49)(v16, v10);
            if (v54)
            {
              sub_22273704C();
              v56 = v77;
              v55(v77, v10);
              (*v50)(v56, v16, v10);
            }

            sub_22273702C();
            v57 = sub_22273735C();
            v55(v16, v10);
            if (v57)
            {
              sub_22273702C();
              v52 = v76;
              v73(v6, v76);
              v55(v53, v10);
              (*v50)(v53, v16, v10);
            }

            else
            {
              v52 = v76;
              v73(v6, v76);
            }

            v51 += v70;
            --v46;
          }

          while (v46);

          v59 = v67;
          v58 = v68;
          v60 = v66;
          v42 = v75;
          goto LABEL_22;
        }

LABEL_26:
        __break(1u);
        return;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v68;
  v27 = *(v69 + 56);
  v28 = 1;
  v29 = v76;
LABEL_6:

  v27(v26, v28, 1, v29);
}

id sub_2226E1810(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v3 = sub_222738DAC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = sub_22273903C();
  v5 = *(v24 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v24);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = sub_2227381BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v14 = sub_222738F6C();
  v23[0] = __swift_project_value_buffer(v14, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v15 = *(sub_2227381FC() - 8);
  v16 = *(v15 + 72);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v26 = v18;
  v25[0] = a1;

  sub_22273818C();
  sub_222672BA0(v25);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  sub_222738D9C();
  sub_22273900C();
  v26 = v18;
  v25[0] = a1;

  sub_222738FEC();
  v19 = *(v5 + 8);
  v20 = v24;
  v19(v9, v24);
  sub_222672BA0(v25);
  v21 = sub_222711EF0(v11);
  v26 = sub_22273872C();
  v27 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_22273871C();
  sub_222738E8C();
  v19(v11, v20);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t sub_2226E1C28()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v6 = sub_22273874C();
  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v8[0] = v6;
  sub_22273818C();
  sub_222672BA0(v8);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

uint64_t sub_2226E1E30()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v9[3] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222672BA0(v9);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();
}

uint64_t sub_2226E2068(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = a2;
  *(v3 + 312) = *v2;
  return MEMORY[0x2822009F8](sub_2226E2094, 0, 0);
}

uint64_t sub_2226E2094()
{
  v1 = *(v0 + 304);
  v2 = sub_222710688(MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = *(v0 + 304);
  }

  else
  {
    v3 = [*(v0 + 312) ams_activeiTunesAccount];
  }

  *(v0 + 328) = v3;
  v4 = *(v0 + 296);
  v5 = v4[2];
  *(v0 + 336) = v5;
  if (v5)
  {
    v6 = *(v0 + 304);
    *(v0 + 344) = 0;
    *(v0 + 352) = v2;
    v7 = v4[4];
    *(v0 + 360) = v7;
    v8 = v4[5];
    v9 = v4[6];
    *(v0 + 368) = v9;
    v10 = v7;

    v11 = v6;
    v12 = v3;
    if (!v3)
    {
      v12 = [*(v0 + 312) ams_activeiTunesAccount];
      v3 = *(v0 + 328);
    }

    *(v0 + 376) = v12;
    v13 = v3;
    v14 = swift_task_alloc();
    *(v0 + 384) = v14;
    *v14 = v0;
    v14[1] = sub_2226E22B0;
    v16 = *(v0 + 312);
    v15 = *(v0 + 320);

    return sub_2226E3314(v16, v15, v12, v10, v8, v9);
  }

  else
  {
    v18 = *(v0 + 304);
    *(v0 + 216) = MEMORY[0x277D837D0];
    *(v0 + 192) = 0xD000000000000019;
    *(v0 + 200) = 0x800000022274CB50;
    sub_22269457C((v0 + 192), (v0 + 224));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BC94((v0 + 224), 0x734E72657375, 0xE600000000000000, isUniquelyReferenced_nonNull_native);

    v20 = *(v0 + 8);

    return v20(v2);
  }
}