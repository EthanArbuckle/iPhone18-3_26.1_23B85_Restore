uint64_t sub_2226FEC4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2226FEC88@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = sub_2227371DC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2227371CC();
  sub_2227371AC();
  v8 = sub_2227371BC();
  v10 = v9;
  a1[3] = MEMORY[0x277CC9318];

  *a1 = v8;
  a1[1] = v10;
  return result;
}

uint64_t sub_2226FF048@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X1>)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  return sub_2226FEC88(a1);
}

unint64_t sub_2226FF054()
{
  result = qword_27D014268;
  if (!qword_27D014268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D014268);
  }

  return result;
}

uint64_t sub_2226FF0A0(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v3 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226FF130, 0, 0);
}

uint64_t sub_2226FF130()
{
  if (qword_27D012A00 != -1)
  {
    swift_once();
  }

  v1 = v0[4].i64[0];
  v2 = sub_222738F6C();
  v10 = v0[3];
  __swift_project_value_buffer(v2, qword_27D014270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[2].i64[1] = sub_222737C2C();
  __swift_allocate_boxed_opaque_existential_1(v0[1].i64);
  sub_22273779C();
  sub_22273816C();
  sub_222660468(v0[1].i64, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v6 = swift_task_alloc();
  v0[4].i64[1] = v6;
  v6[1] = vextq_s8(v10, v10, 8uLL);
  v7 = *(MEMORY[0x277D859B8] + 4);
  v8 = swift_task_alloc();
  v0[5].i64[0] = v8;
  *v8 = v0;
  v8[1] = sub_2226FF3E0;

  return MEMORY[0x282200740]();
}

void sub_2226FF3E0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 72);

    MEMORY[0x2822009F8](sub_2226FF51C, 0, 0);
  }
}

uint64_t sub_2226FF51C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22273799C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2226FF5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v20 - v9;
  sub_2226A5C24(a1, v20 - v9);
  v11 = sub_22273946C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_222660468(v10, &unk_27D013050, &qword_222741370);
    if (*(a3 + 16))
    {
LABEL_3:
      v13 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_2227393FC();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22273945C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v4;
  v18 = (v16 | v14);
  if (v16 | v14)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v14;
    v21[3] = v16;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v17;
  swift_task_create();
}

uint64_t sub_2226FF794()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738F6C();
  __swift_allocate_value_buffer(v5, qword_27D014270);
  __swift_project_value_buffer(v5, qword_27D014270);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v4, v6, v0);
  return sub_222738F5C();
}

uint64_t sub_2226FF8E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a2;
  v5 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v6 = sub_2227377BC();
  v4[23] = v6;
  v7 = *(v6 - 8);
  v4[24] = v7;
  v4[25] = *(v7 + 64);
  v4[26] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226FFA18, 0, 0);
}

uint64_t sub_2226FFA18()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v20 = *(v0 + 200);
  v4 = *(v0 + 184);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v22 = v5;
  v25 = *(v0 + 152);
  v23 = sub_22273946C();
  v24 = *(*(v23 - 8) + 56);
  v24(v1, 1, 1, v23);
  sub_22266BCCC(v6, v0 + 16);
  v21 = *(v3 + 16);
  v21(v2, v5, v4);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_222634290((v0 + 16), v8 + 32);
  v9 = *(v3 + 32);
  v10 = v2;
  v9(v8 + ((v7 + 72) & ~v7), v2, v4);
  v11 = v9;
  sub_2226FF5B4(v1, &unk_222745468, v8);
  sub_222660468(v1, &unk_27D013050, &qword_222741370);
  v24(v1, 1, 1, v23);
  v12 = v10;
  v21(v10, v22, v4);
  v13 = (v7 + 32) & ~v7;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v11(v14 + v13, v12, v4);
  sub_2226FF5B4(v1, &unk_222745478, v14);
  sub_222660468(v1, &unk_27D013050, &qword_222741370);
  v15 = *(MEMORY[0x277D85818] + 4);
  v16 = swift_task_alloc();
  *(v0 + 224) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013008, &qword_2227416A8);
  *v16 = v0;
  v16[1] = sub_2226FFCDC;
  v18 = *(v0 + 152);

  return MEMORY[0x2822004D0](v0 + 240, 0, 0, v17);
}

uint64_t sub_2226FFCDC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2226FFEA4;
  }

  else
  {
    v3 = sub_2226FFDF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226FFDF0()
{
  v1 = **(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273949C();
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2226FFEA4()
{
  if (qword_27D012A00 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v3 = v0[21];
  v2 = v0[22];
  v17 = v0[19];
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_27D014270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[10] = sub_222737C2C();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  sub_22273779C();
  sub_22273816C();
  sub_222660468((v0 + 7), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v8 = v0[15];
  v9 = v0[16];
  v0[14] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 11);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  sub_22273816C();
  sub_222660468((v0 + 11), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v11 = *v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273949C();

  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[22];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2227001A4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_222660228;

  return sub_2226FF8E8(a1, a2, v7, v6);
}

uint64_t sub_222700258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = sub_22273793C();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  v5[12] = v10;
  v11 = *(v10 - 8);
  v5[13] = v11;
  v12 = *(v11 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014298, &qword_222745488);
  v5[18] = v13;
  v14 = *(v13 - 8);
  v5[19] = v14;
  v15 = *(v14 + 64) + 15;
  v5[20] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142A0, &qword_222745490);
  v5[21] = v16;
  v17 = *(v16 - 8);
  v5[22] = v17;
  v18 = *(v17 + 64) + 15;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142A8, &qword_222745498) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2227004F0, 0, 0);
}

uint64_t sub_2227004F0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 48);
  v7 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_22273795C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0142B0, qword_2227454A0);
  sub_22262BED4(&unk_281312FC0, &qword_27D0142B0, qword_2227454A0);
  sub_22273833C();

  (*(v4 + 16))(v1, v2, v3);
  sub_22262BED4(&qword_27D0142B8, &qword_27D0142A0, &qword_222745490);
  sub_2227394AC();
  v8 = *MEMORY[0x277CEC0C0];
  *(v0 + 224) = *MEMORY[0x277CEC090];
  *(v0 + 228) = v8;
  *(v0 + 232) = *MEMORY[0x277CEC0C8];
  v9 = sub_22262BED4(qword_27D0142C0, &qword_27D014298, &qword_222745488);
  v10 = *(MEMORY[0x277D856D0] + 4);
  v11 = swift_task_alloc();
  *(v0 + 216) = v11;
  *v11 = v0;
  v11[1] = sub_222700704;
  v12 = *(v0 + 200);
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);

  return MEMORY[0x282200308](v12, v14, v9);
}

uint64_t sub_222700704()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v9 = *v1;

  if (v0)
  {
    v5 = v2[19];
    v4 = v2[20];
    v6 = v2[18];

    (*(v5 + 8))(v4, v6);
    v7 = _ASCSignpostTag_valueTooLarge;
  }

  else
  {
    v7 = sub_222700844;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_222700844()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);
  if ((*(*(v0 + 104) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    (*(v5 + 8))(v3, v4);
    v6 = 1;
LABEL_9:
    v28 = *(v0 + 208);
    (*(*(v0 + 104) + 56))(v28, v6, 1, *(v0 + 96));
    sub_222660468(v28, &qword_27D0142A8, &qword_222745498);
    if (qword_27D012A00 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 200);
    v30 = *(v0 + 208);
    v49 = *(v0 + 192);
    v50 = *(v0 + 184);
    v52 = *(v0 + 160);
    v54 = *(v0 + 136);
    v56 = *(v0 + 128);
    v58 = *(v0 + 120);
    v61 = *(v0 + 112);
    v64 = *(v0 + 88);
    v32 = *(v0 + 56);
    v31 = *(v0 + 64);
    v33 = sub_222738F6C();
    __swift_project_value_buffer(v33, qword_27D014270);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v34 = *(sub_2227381FC() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    *(v0 + 40) = sub_222737C2C();
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_22273779C();
    sub_22273816C();
    sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    v37 = *(v0 + 8);

    return v37();
  }

  v55 = *(v0 + 224);
  v8 = *(v0 + 128);
  v7 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 80);
  v51 = *(v0 + 112);
  v53 = *(v0 + 88);
  v11 = *(v0 + 72);
  sub_222701BCC(v1, v7);
  v62 = *(v2 + 48);
  v12 = sub_2227377BC();
  v57 = *(v12 - 8);
  v59 = *(v57 + 16);
  v59(v8, v7, v12);
  v13 = *(v10 + 16);
  v13(v8 + *(v2 + 48), v7 + v62, v11);
  sub_222701BCC(v8, v9);
  v14 = *(v2 + 48);
  v63 = v12;
  v59(v51, v9, v12);
  v15 = *(v2 + 48);
  v60 = v9;
  v13(v51 + v15, v9 + v14, v11);
  v13(v53, v51 + v15, v11);
  sub_222660468(v51, &unk_27D014480, &unk_222745A40);
  v16 = (*(v10 + 88))(v53, v11);
  if (v16 == v55)
  {
    (*(*(v0 + 80) + 96))(*(v0 + 88), *(v0 + 72));
    v17 = sub_22273782C();
LABEL_7:
    (*(*(v17 - 8) + 8))(*(v0 + 88));
LABEL_8:
    v18 = *(v0 + 208);
    v19 = *(v0 + 192);
    v21 = *(v0 + 168);
    v20 = *(v0 + 176);
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v24 = v14;
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    v27 = *(v0 + 120);
    (*(*(v0 + 80) + 8))(v60 + v24, *(v0 + 72));
    (*(v57 + 8))(v27, v63);
    (*(v22 + 8))(v23, v25);
    (*(v20 + 8))(v19, v21);
    sub_222701BCC(v26, v18);
    v6 = 0;
    goto LABEL_9;
  }

  if (v16 == *(v0 + 228))
  {
    (*(*(v0 + 80) + 96))(*(v0 + 88), *(v0 + 72));
    v17 = sub_22273786C();
    goto LABEL_7;
  }

  if (v16 == *(v0 + 232))
  {
    goto LABEL_8;
  }

  v39 = *(v0 + 136);
  v40 = *(v0 + 120);
  v41 = *(v0 + 72);
  v42 = *(*(v0 + 80) + 8);
  v42(*(v0 + 88), v41);
  v42(v9 + v14, v41);
  (*(v57 + 8))(v40, v63);
  sub_222660468(v39, &unk_27D014480, &unk_222745A40);
  v43 = sub_22262BED4(qword_27D0142C0, &qword_27D014298, &qword_222745488);
  v44 = *(MEMORY[0x277D856D0] + 4);
  v45 = swift_task_alloc();
  *(v0 + 216) = v45;
  *v45 = v0;
  v45[1] = sub_222700704;
  v46 = *(v0 + 200);
  v47 = *(v0 + 160);
  v48 = *(v0 + 144);

  return MEMORY[0x282200308](v46, v48, v43);
}

uint64_t sub_222700F28(uint64_t a1)
{
  v4 = *(sub_2227377BC() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22266BE24;

  return sub_222700258(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_22270101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_2227399BC();
  v4[8] = v6;
  v7 = *(v6 - 8);
  v4[9] = v7;
  v8 = *(v7 + 64) + 15;
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222701108, 0, 0);
}

uint64_t sub_222701108()
{
  v1 = *(v0 + 80);
  sub_222739BBC();
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_2227011DC;
  v3 = *(v0 + 80);

  return sub_2227016CC(0xA055690D9DB80000, 1, 1000000000000000000, 0, 0);
}

uint64_t sub_2227011DC()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 96) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_22270134C;
  }

  else
  {
    v6 = sub_2227013BC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22270134C()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_2227013BC()
{
  if (qword_27D012A00 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_27D014270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[5] = sub_222737C2C();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_22273779C();
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2227015DC(uint64_t a1)
{
  v4 = *(sub_2227377BC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22266BE24;

  return sub_22270101C(a1, v6, v7, v1 + v5);
}

uint64_t sub_2227016CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2227399AC();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2227017CC, 0, 0);
}

uint64_t sub_2227017CC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_2227399BC();
  v7 = sub_222701B84(&qword_27D014288, MEMORY[0x277D85928]);
  sub_222739B9C();
  sub_222701B84(&qword_27D014290, MEMORY[0x277D858F8]);
  sub_2227399CC();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_22270195C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_22270195C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222701B18, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_222701B18()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_222701B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222701BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222701C3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22273971C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222701D08()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222702F40;
  *(v2 + 24) = v0;
  v5[4] = sub_222702F50;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2226D9008;
  v5[3] = &block_descriptor_16_1;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222701E3C()
{
  v1 = *(v0 + 40);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_222702F30;
  *(v2 + 24) = v0;
  v5[4] = sub_222702F38;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2226D9008;
  v5[3] = &block_descriptor_9;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222701F70()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_222737C4C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = sub_222737CDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v27 - v12;
  v14 = v2[16];
  if (*(v0 + v14))
  {
    v15 = *(v0 + v14);

    sub_222737CFC();
  }

  if (!v0[6])
  {
    v28 = v2;
    sub_222737CCC();
    v16 = v0[2];
    sub_222737D3C();
    v17 = *(v6 + 8);
    v17(v10, v5);
    sub_222737CAC();
    v18 = sub_222737CBC();
    v29 = v17;
    result = (v17)(v10, v5);
    if (v18)
    {
      v19 = swift_allocObject();
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v28[10];
      *(v20 + 24) = v19;
      aBlock[4] = sub_222702F28;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22269F82C;
      aBlock[3] = &block_descriptor_14;
      v28 = _Block_copy(aBlock);
      v30 = MEMORY[0x277D84F90];
      sub_222697744();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013A10, &qword_222742900);
      sub_2226A0E84();
      sub_2227397BC();
      v21 = sub_222737D0C();
      v22 = *(v21 + 48);
      v23 = *(v21 + 52);
      swift_allocObject();
      v24 = sub_222737CEC();

      v25 = v1[5];
      sub_22273953C();
      v29(v13, v5);
      v26 = *(v1 + v14);
      *(v1 + v14) = v24;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2227022DC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_222702334();
  }

  return result;
}

uint64_t sub_222702334()
{
  v1 = *v0;
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *(v1 + 80);
  v5 = sub_22273971C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = sub_222737D1C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v0 + 5);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
  v16 = v15;
  LOBYTE(v15) = sub_222737D4C();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  (*(*(v4 - 8) + 56))(v9, 1, 1, v4);
  v17 = *(*v0 + 120);
  swift_beginAccess();
  (*(v6 + 40))(&v0[v17], v9, v5);
  swift_endAccess();
  v18 = *(*v0 + 128);
  v19 = *&v0[v18];
  *&v0[v18] = 0;

  v20 = *(*v0 + 136);
  v21 = *&v0[v20];
  *&v0[v20] = 0;
  swift_unknownObjectRelease();
  if (qword_281312E28 != -1)
  {
LABEL_5:
    swift_once();
  }

  v22 = sub_222738F6C();
  __swift_project_value_buffer(v22, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v23 = *(sub_2227381FC() - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

uint64_t sub_222702730(void *a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = a1[6];
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
LABEL_7:
    swift_once();
    goto LABEL_5;
  }

  a1[6] = v6;
  v7 = *(*a1 + 128);
  if (*(a1 + v7))
  {
    v8 = *(a1 + v7);

    sub_222737CFC();
  }

  if (qword_281312E28 != -1)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v10 = *(sub_2227381FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();
}

uint64_t sub_22270293C(char *a1)
{
  v2 = *(*a1 + 80);
  v3 = sub_22273971C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  v8 = sub_2227381BC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = *(a1 + 6);
  if (!v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = qword_281312E28;
  v12 = v10 - 1;
  *(a1 + 6) = v12;
  if (v12)
  {
    if (v11 == -1)
    {
LABEL_4:
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

LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (v11 != -1)
  {
    swift_once();
  }

  v18 = sub_222738F6C();
  __swift_project_value_buffer(v18, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v19 = *(sub_2227381FC() - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  sub_22273817C();
  sub_22273819C();
  sub_2227381CC();
  sub_222738C5C();

  v22 = *(*a1 + 120);
  swift_beginAccess();
  (*(v4 + 16))(v7, &a1[v22], v3);
  LODWORD(v22) = (*(*(v2 - 8) + 48))(v7, 1, v2);
  result = (*(v4 + 8))(v7, v3);
  if (v22 != 1)
  {
    return sub_222701F70();
  }

  return result;
}

uint64_t *sub_222702D9C()
{
  v1 = *v0;
  v2 = v0[4];

  v3 = *(*v0 + 120);
  v4 = *(v1 + 80);
  v5 = sub_22273971C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + *(*v0 + 128));

  v7 = *(v0 + *(*v0 + 136));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_222702E70()
{
  sub_222702D9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222702F28()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return sub_2227022DC();
}

uint64_t sub_222702F5C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22273971C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_22270300C()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = sub_22273971C();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  v6 = *&v0[*(*v0 + 104) + 8];

  return v0;
}

uint64_t sub_2227030C0()
{
  sub_22270300C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_222703130()
{
  v1 = sub_22273789C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
    goto LABEL_7;
  }

  if (!v0)
  {
    goto LABEL_7;
  }

  v16 = v15;
  ObjectType = swift_getObjectType();
  v32 = v2;
  v33 = v6;
  v18 = v1;
  v31 = v14;
  v19 = ObjectType;
  v20 = v12;
  v21 = *(v16 + 8);
  v22 = v0;
  v24 = v32;
  v23 = v33;
  v25 = v21(v19, v16);

  if (v25)
  {
    v26 = [v25 flags];
    sub_22273787C();
    if ((v26 & 0x200) != 0)
    {
      sub_22273788C();
      sub_2226949F8(v9, v23);
      v27 = *(v24 + 8);
      v27(v23, v18);
      v27(v9, v18);
    }

    (*(v24 + 32))(v31, v20, v18);
    v28 = [v25 baseBuyParams];
    sub_22273919C();

    v29 = [v25 metricsBuyParams];
    sub_22273919C();

    sub_2227378AC();
  }

  else
  {
LABEL_7:
    sub_22273787C();
    sub_2227378AC();
  }
}

void sub_222703410(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v2 = sub_22273789C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v25 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - v12;
  MEMORY[0x28223BE20](v11);
  v25[0] = v25 - v14;
  ObjectType = swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + 8);
    v19 = v1;
    v20 = v18(ObjectType, v17);

    if (v20)
    {
      v21 = [v20 flags];
      sub_22273787C();
      if ((v21 & 0x200) != 0)
      {
        sub_22273788C();
        sub_2226949F8(v10, v7);
        v22 = *(v3 + 8);
        v22(v7, v2);
        v22(v10, v2);
      }

      (*(v3 + 32))(v25[0], v13, v2);
      v23 = [v20 baseBuyParams];
      sub_22273919C();

      v24 = [v20 metricsBuyParams];
      sub_22273919C();

      sub_2227378AC();
    }

    else
    {
      sub_22273787C();
      sub_2227378AC();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2227036CC()
{
  v0 = sub_222738F6C();
  __swift_allocate_value_buffer(v0, qword_2813141C0);
  v1 = __swift_project_value_buffer(v0, qword_2813141C0);
  if (qword_281312E30 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281315AF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_222703794()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2227037CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v65 = a2;
  v58 = sub_222737C2C();
  v66 = *(v58 - 8);
  v4 = *(v66 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014480, &unk_222745A40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = sub_2227377BC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v61 = (v19 + 16);
  v20(v17, a1, v18);
  v21 = *(v6 + 48);
  v22 = sub_22273793C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 16);
  v25 = v23 + 16;
  v24(&v17[v21], v65, v22);
  v50 = v17;
  sub_22266110C(v17, v14, &unk_27D014480, &unk_222745A40);
  v26 = *(v6 + 48);
  v63 = v18;
  v27 = v61;
  v20(v11, v14, v18);
  v56 = v6;
  v28 = *(v6 + 48);
  v64 = v11;
  v51 = v14;
  v52 = v28;
  v49 = v26;
  v62 = v22;
  v24(&v11[v28], &v14[v26], v22);
  v29 = v53;
  v48 = *(v53 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v48 lock];
  v30 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v31 = *(v29 + v30);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v36 = (v33 + 63) >> 6;
  v54 = (v66 + 8);
  v60 = (v25 - 8);
  v61 = v27 - 1;
  v59 = v31;

  v38 = 0;
  while (v35)
  {
LABEL_10:
    v40 = *(*(v59 + 56) + ((v38 << 9) | (8 * __clz(__rbit64(v35)))));
    v66 = sub_22262E364(0, &qword_281312B78, 0x277D82BB8);
    v41 = *(v40 + 24);

    v42 = [v41 id];
    v43 = v55;
    sub_22266110C(v64, v55, &unk_27D014480, &unk_222745A40);
    v44 = v57;
    v65 = *(v56 + 48);
    sub_22273779C();
    (*v61)(v43, v63);
    v45 = [objc_allocWithZone(ASCAdamID) initWithInt64_];
    (*v54)(v44, v58);
    LOBYTE(v41) = sub_2227396CC();

    (*v60)(v43 + v65, v62);
    if (v41)
    {
      sub_2227045F8(*(v40 + 24), &v64[v52], 0);
    }

    v35 &= v35 - 1;
  }

  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v36)
    {

      [v48 unlock];
      sub_222660468(v64, &unk_27D014480, &unk_222745A40);
      sub_222660468(v50, &unk_27D014480, &unk_222745A40);
      v46 = v51;
      (*v60)(&v51[v49], v62);
      return (*v61)(v46, v63);
    }

    v35 = *(v32 + 8 * v39);
    ++v38;
    if (v35)
    {
      v38 = v39;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

id sub_222703D08(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v4 = *(sub_2227381FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v7 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v7 lock];
  sub_2227054BC(a2);

  return [v7 unlock];
}

id sub_222703EBC(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v4 = *(sub_2227381FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v7 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v7 lock];
  sub_222705B18(a2);

  return [v7 unlock];
}

id sub_222704070(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v8 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v8 lock];
  sub_222706174(a2, a1);

  return [v8 unlock];
}

id sub_22270422C(uint64_t a1, uint64_t a2)
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v3 = sub_222738F6C();
  __swift_project_value_buffer(v3, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v4 = *(sub_2227381FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v7 = *(a2 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v7 lock];
  sub_222706980(a2);

  return [v7 unlock];
}

id sub_2227043E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  if (*(*&v1[v3] + 16))
  {
    sub_22266BCCC(&v1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager], v9);
    v4 = v10;
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v5 + 16))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_2227045F8(void *a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v5 = sub_222738F6C();
  v105 = *(v5 - 8);
  v6 = *(v105 + 64);
  MEMORY[0x28223BE20](v5);
  v115 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22273791C();
  v111 = *(v8 - 1);
  v112 = v8;
  v9 = *(v111 + 64);
  MEMORY[0x28223BE20](v8);
  v110 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2227376CC();
  v116 = *(v11 - 8);
  v117 = v11;
  v12 = *(v116 + 64);
  MEMORY[0x28223BE20](v11);
  v122 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2227381BC();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v114 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = sub_22273793C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v95 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v95 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v98 = &v95 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v95 - v27;
  swift_getObjectType();
  v29 = [objc_allocWithZone(ASCOfferContext) init];
  v123 = v28;
  v119 = a2;
  sub_2226AE5A4(a2, v29, v28);

  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v120 = __swift_project_value_buffer(v5, qword_2813141C0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v31 = *(sub_2227381FC() - 8);
  v32 = *(v31 + 80);
  v33 = (v32 + 32) & ~v32;
  v103 = *(v31 + 72);
  v102 = v32;
  v104 = v30;
  v34 = swift_allocObject();
  v101 = xmmword_2227412F0;
  *(v34 + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v35 = [a1 id];
  v100 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v125 = v100;
  v124[0] = v35;
  sub_22273816C();
  v118 = a1;
  sub_222660468(v124, &qword_27D0130C0, &unk_2227413B0);
  v99 = "t offer ID to AppState app";
  sub_22273819C();
  v125 = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v124);
  v121 = v19;
  v37 = *(v19 + 16);
  v107 = v19 + 16;
  v37(boxed_opaque_existential_1, v119, v18);
  sub_22273815C();
  sub_222660468(v124, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v125 = v18;
  v38 = __swift_allocate_boxed_opaque_existential_1(v124);
  v39 = v123;
  v119 = v18;
  v97 = v37;
  v37(v38, v123, v18);
  sub_22273815C();
  sub_222660468(v124, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  v113 = v33;
  sub_2227381CC();
  v106 = v5;
  sub_222738C4C();

  v40 = v108;
  v41 = *(v108 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription + 32);
  __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription), *(v108 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription + 24));
  sub_222737B8C();
  v42 = *(*__swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStoreInstallStateMonitor), *(v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStoreInstallStateMonitor + 24)) + 16);
  v43 = *(v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions + 32);
  __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions), *(v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions + 24));
  v44 = v118;
  if (sub_2226FA338(v118, v39) & 1) != 0 && (sub_2227107B8(v44, v123))
  {
    v45 = v109 | 2;
  }

  else
  {
    v45 = v109 & 0xFFFFFFFFFFFFFFFDLL;
  }

  v46 = *(*__swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers), *(v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers + 24)) + 16);

  os_unfair_lock_lock((v46 + 32));
  v47 = *(v46 + 16);
  v48 = *(v46 + 24);

  sub_2226F7D38(v49, v47);
  v51 = v50;
  os_unfair_lock_unlock((v46 + 32));

  v52 = (v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_localizer);
  if (([v44 flags] & 0x1000) != 0)
  {

    v55 = sub_2226AB060(v123, v44, v52);
LABEL_12:
    v54 = v55;
    goto LABEL_17;
  }

  if ((v42 & 1) == 0)
  {
    v53 = sub_2226AB4C8(v123, v44, v122, v52);
    if (v53)
    {
      v54 = v53;

      goto LABEL_17;
    }
  }

  if (([v44 flags] & 0x400) == 0)
  {

    if (([v44 flags] & 4) != 0)
    {
      v55 = sub_2226ACE1C(v123, v44, v122, v52);
    }

    else
    {
      v55 = sub_2226ABBE0(v123, v44, @"standard", v52);
    }

    goto LABEL_12;
  }

  v54 = sub_2226AC790(v123, v44, v51, v52);

LABEL_17:
  v56 = *(v40 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_delegate);
  v57 = v110;
  sub_22273792C();
  sub_22273790C();
  (*(v111 + 8))(v57, v112);
  v58 = sub_22273916C();

  v112 = v56;
  [v56 offer:v44 didChangeState:v58 withMetadata:v54 flags:v45];

  if (([v44 flags] & 8) == 0)
  {
    v59 = v121;
    v60 = v122;
    v61 = v123;
    goto LABEL_42;
  }

  v62 = [v44 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_222710B68(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
  v63 = sub_22273910C();

  if (!*(v63 + 16) || (v64 = sub_222694708(@"preorderStatus"), (v65 & 1) == 0))
  {

    v71 = v98;
    v72 = v119;
    v73 = v97;
    v97(v98, v123, v119);
    v74 = v121;
    v75 = (*(v121 + 88))(v71, v72);
    v69 = v106;
    if (v75 == *MEMORY[0x277CEC0B8])
    {
      v76 = v96;
      v73(v96, v71, v72);
      (*(v74 + 96))(v76, v72);
      v77 = sub_22273784C();
      (*(*(v77 - 8) + 8))(v76, v77);
      v70 = v105;
LABEL_24:
      (*(v121 + 8))(v71, v72);
      v78 = v52[4];
      __swift_project_boxed_opaque_existential_1(v52, v52[3]);
      v67 = sub_2227390BC();
      v68 = v79;
LABEL_34:
      v44 = v118;
      goto LABEL_35;
    }

    if (v75 == *MEMORY[0x277CEC0D0])
    {
      v80 = v95;
      v73(v95, v71, v72);
      v81 = v121;
      (*(v121 + 96))(v80, v72);
      v82 = sub_22273783C();
      v83 = v71;
      v84 = *(v82 - 8);
      if ((*(v84 + 88))(v80, v82) == *MEMORY[0x277CEC038])
      {
        v85 = v52[4];
        __swift_project_boxed_opaque_existential_1(v52, v52[3]);
        v67 = sub_2227390BC();
        v86 = v83;
        v68 = v87;
        (*(v81 + 8))(v86, v72);
        v70 = v105;
        goto LABEL_34;
      }

      (*(v84 + 8))(v80, v82);
      v70 = v105;
      v71 = v83;
    }

    else
    {
      v70 = v105;
      if (v75 == *MEMORY[0x277CEC0A8] || v75 == *MEMORY[0x277CEC0B0])
      {
        goto LABEL_24;
      }
    }

    (*(v121 + 8))(v71, v72);
    v67 = 0;
    v68 = 0;
    goto LABEL_34;
  }

  v66 = (*(v63 + 56) + 16 * v64);
  v67 = *v66;
  v68 = v66[1];

  v69 = v106;
  v70 = v105;
LABEL_35:
  (*(v70 + 16))(v115, v120, v69);
  *(swift_allocObject() + 16) = v101;
  sub_2227381AC();
  sub_22273819C();
  v88 = [v44 id];
  v125 = v100;
  v124[0] = v88;
  sub_22273816C();
  sub_222660468(v124, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  if (v68)
  {
    v89 = MEMORY[0x277D837D0];
    v90 = v68;
    v91 = v67;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    v89 = 0;
    v124[2] = 0;
  }

  v124[0] = v91;
  v124[1] = v90;
  v125 = v89;

  sub_22273815C();
  sub_222660468(v124, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  v92 = v115;
  sub_222738C4C();

  (*(v70 + 8))(v92, v69);
  if (v68)
  {
    v93 = sub_22273916C();
  }

  else
  {
    v93 = 0;
  }

  v59 = v121;
  v60 = v122;
  v61 = v123;
  [v112 offer:v44 didChangeStatusText:v93];

  v54 = v93;
LABEL_42:

  (*(v116 + 8))(v60, v117);
  return (*(v59 + 8))(v61, v119);
}

void sub_2227054BC(uint64_t a1)
{
  v59 = sub_2227378CC();
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22273793C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2227377AC();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222737C2C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2227377BC();
  v16 = *(v53 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v53);
  v64 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v60 = a1;
  v52 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v25 = (v22 + 63) >> 6;
  v62 = "stall state change";
  v51 = *MEMORY[0x277CEBFE8];
  v26 = (v9 + 104);
  v27 = v20;
  v49 = (v3 + 8);
  v50 = v26;
  v28 = v1;
  v48 = (v6 + 8);
  v47 = (v16 + 8);

  v29 = 0;
  v30 = &selRef_stopObservingStateOfOffers_;
  v61 = xmmword_2227412F0;
  v65 = v15;
  v63 = v27;
  while (v24)
  {
LABEL_10:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = *(*(v27 + 56) + ((v29 << 9) | (8 * v32)));
    v34 = *(v33 + 24);

    if (([v34 v30[411]] & 4) != 0)
    {
      v35 = [*(v33 + 24) id];
      [v35 int64value];
      sub_222737C1C();
      v66 = v28;
      if (v28)
      {

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v36 = sub_222738F6C();
        __swift_project_value_buffer(v36, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        v37 = *(sub_2227381FC() - 8);
        v38 = *(v37 + 72);
        v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        *(swift_allocObject() + 16) = v61;
        sub_22273813C();
        sub_222738C6C();

        v28 = 0;
        v27 = v63;
        v30 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        (*v50)(v54, v51, v55);
        sub_22273778C();

        v40 = v52[3];
        v46[1] = v52[4];
        v46[0] = __swift_project_boxed_opaque_existential_1(v52, v40);
        v41 = *(v33 + 24);
        swift_getObjectType();
        v42 = v58;
        sub_222694714();
        v43 = v56;
        v44 = v66;
        sub_2227379EC();
        v45 = v42;
        v30 = &selRef_stopObservingStateOfOffers_;
        (*v49)(v45, v59);
        sub_2227045F8(*(v33 + 24), v43, 0);
        v28 = v44;
        (*v48)(v43, v57);
        (*v47)(v64, v53);

        v27 = v63;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v31);
    ++v29;
    if (v24)
    {
      v29 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_222705B18(uint64_t a1)
{
  v59 = sub_2227378CC();
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22273793C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2227377AC();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222737C2C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2227377BC();
  v16 = *(v53 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v53);
  v64 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v60 = a1;
  v52 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v25 = (v22 + 63) >> 6;
  v62 = "stall state change";
  v51 = *MEMORY[0x277CEBFE8];
  v26 = (v9 + 104);
  v27 = v20;
  v49 = (v3 + 8);
  v50 = v26;
  v28 = v1;
  v48 = (v6 + 8);
  v47 = (v16 + 8);

  v29 = 0;
  v30 = &selRef_stopObservingStateOfOffers_;
  v61 = xmmword_2227412F0;
  v65 = v15;
  v63 = v27;
  while (v24)
  {
LABEL_10:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = *(*(v27 + 56) + ((v29 << 9) | (8 * v32)));
    v34 = *(v33 + 24);

    if (([v34 v30[411]] & 0x10) != 0)
    {
    }

    else
    {
      v35 = [*(v33 + 24) id];
      [v35 int64value];
      sub_222737C1C();
      v66 = v28;
      if (v28)
      {

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v36 = sub_222738F6C();
        __swift_project_value_buffer(v36, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        v37 = *(sub_2227381FC() - 8);
        v38 = *(v37 + 72);
        v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        *(swift_allocObject() + 16) = v61;
        sub_22273813C();
        sub_222738C6C();

        v28 = 0;
        v27 = v63;
        v30 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        (*v50)(v54, v51, v55);
        sub_22273778C();

        v40 = v52[3];
        v46[1] = v52[4];
        v46[0] = __swift_project_boxed_opaque_existential_1(v52, v40);
        v41 = *(v33 + 24);
        swift_getObjectType();
        v42 = v58;
        sub_222694714();
        v43 = v56;
        v44 = v66;
        sub_2227379EC();
        v45 = v42;
        v30 = &selRef_stopObservingStateOfOffers_;
        (*v49)(v45, v59);
        sub_2227045F8(*(v33 + 24), v43, 0);
        v28 = v44;
        (*v48)(v43, v57);
        (*v47)(v64, v53);

        v27 = v63;
      }
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v31);
    ++v29;
    if (v24)
    {
      v29 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_222706174(uint64_t a1, uint64_t a2)
{
  v70 = sub_2227378CC();
  v4 = *(v70 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v70);
  v69 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_22273793C();
  v7 = *(v68 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2227377AC();
  v10 = *(v66 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222737C2C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2227377BC();
  v16 = *(v64 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v64);
  v76 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v20 + 64);
  v71 = a1;
  v63 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v25 = (v22 + 63) >> 6;
  v26 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v26 = a2;
  }

  v78 = v26;
  v79 = a2 & 0xC000000000000001;
  v83 = a2 + 56;
  v74 = "stall state change";
  v62 = *MEMORY[0x277CEBFE8];
  v61 = (v10 + 104);
  v27 = v20;
  v60 = (v4 + 8);
  v59 = (v7 + 8);
  v58 = (v16 + 8);

  v28 = 0;
  v73 = xmmword_2227412F0;
  while (v24)
  {
LABEL_14:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = *(*(v27 + 56) + ((v28 << 9) | (8 * v30)));
    v32 = *(v31 + 24);
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;

      v84 = [v34 iapItemID];
      if (v84)
      {
        if (v79)
        {
          v81 = v31;
          v35 = v84;
          v36 = sub_22273988C();

          if (v36)
          {
            v77 = v27;
            goto LABEL_19;
          }
        }

        else
        {
          if (!*(a2 + 16))
          {

            goto LABEL_8;
          }

          v81 = v31;
          v77 = v27;
          v82 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
          v44 = *(a2 + 40);
          v45 = sub_2227396BC();
          v46 = -1 << *(a2 + 32);
          v47 = v45 & ~v46;
          if (((*(v83 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
LABEL_28:

LABEL_31:

            goto LABEL_32;
          }

          v48 = ~v46;
          while (1)
          {
            v49 = a2;
            v50 = *(*(a2 + 48) + 8 * v47);
            v51 = sub_2227396CC();

            if (v51)
            {
              break;
            }

            v47 = (v47 + 1) & v48;
            a2 = v49;
            if (((*(v83 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
            {
              goto LABEL_28;
            }
          }

          a2 = v49;
LABEL_19:
          v37 = v80;
          v38 = [*(v81 + 24) id];
          [v38 int64value];
          v39 = v37;
          sub_222737C1C();
          v72 = a2;
          if (!v37)
          {
            (*v61)(v65, v62, v66);
            sub_22273778C();

            v80 = 0;
            v52 = v63[3];
            v82 = v63[4];
            v57 = __swift_project_boxed_opaque_existential_1(v63, v52);
            v53 = v81;
            v54 = *(v81 + 24);
            swift_getObjectType();
            v55 = v69;
            sub_222694714();
            v56 = v67;
            a2 = v72;
            sub_2227379EC();
            (*v60)(v55, v70);
            sub_2227045F8(*(v53 + 24), v56, 0);

            (*v59)(v56, v68);
            (*v58)(v76, v64);
            goto LABEL_31;
          }

          if (qword_2813141B8 != -1)
          {
            swift_once();
          }

          v40 = sub_222738F6C();
          __swift_project_value_buffer(v40, qword_2813141C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          v41 = *(sub_2227381FC() - 8);
          v42 = *(v41 + 72);
          v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
          *(swift_allocObject() + 16) = v73;
          sub_22273813C();
          sub_222738C6C();

          v80 = 0;
          a2 = v72;
LABEL_32:
          v27 = v77;
        }
      }

      else
      {
LABEL_8:
      }
    }
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v29);
    ++v28;
    if (v24)
    {
      v28 = v29;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_222706980(uint64_t a1)
{
  v59 = sub_2227378CC();
  v3 = *(v59 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22273793C();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2227377AC();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222737C2C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2227377BC();
  v16 = *(v53 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v53);
  v64 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v60 = a1;
  v52 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v25 = (v22 + 63) >> 6;
  v62 = "stall state change";
  v51 = *MEMORY[0x277CEBFE8];
  v26 = (v9 + 104);
  v27 = v20;
  v49 = (v3 + 8);
  v50 = v26;
  v28 = v1;
  v48 = (v6 + 8);
  v47 = (v16 + 8);

  v29 = 0;
  v30 = &selRef_stopObservingStateOfOffers_;
  v61 = xmmword_2227412F0;
  v65 = v15;
  v63 = v27;
  while (v24)
  {
LABEL_10:
    v32 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v33 = *(*(v27 + 56) + ((v29 << 9) | (8 * v32)));
    v34 = *(v33 + 24);

    if (([v34 v30[411]] & 0x1000) != 0)
    {
    }

    else
    {
      v35 = [*(v33 + 24) id];
      [v35 int64value];
      sub_222737C1C();
      v66 = v28;
      if (v28)
      {

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v36 = sub_222738F6C();
        __swift_project_value_buffer(v36, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        v37 = *(sub_2227381FC() - 8);
        v38 = *(v37 + 72);
        v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        *(swift_allocObject() + 16) = v61;
        sub_22273813C();
        sub_222738C6C();

        v28 = 0;
        v27 = v63;
        v30 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        (*v50)(v54, v51, v55);
        sub_22273778C();

        v40 = v52[3];
        v46[1] = v52[4];
        v46[0] = __swift_project_boxed_opaque_existential_1(v52, v40);
        v41 = *(v33 + 24);
        swift_getObjectType();
        v42 = v58;
        sub_222694714();
        v43 = v56;
        v44 = v66;
        sub_2227379EC();
        v45 = v42;
        v30 = &selRef_stopObservingStateOfOffers_;
        (*v49)(v45, v59);
        sub_2227045F8(*(v33 + 24), v43, 0);
        v28 = v44;
        (*v48)(v43, v57);
        (*v47)(v64, v53);

        v27 = v63;
      }
    }
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v25)
    {

      return;
    }

    v24 = *(v21 + 8 * v31);
    ++v29;
    if (v24)
    {
      v29 = v31;
      goto LABEL_10;
    }
  }

  __break(1u);
}

id sub_222706FDC()
{
  v1 = v0;
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v2 = sub_222738F6C();
  __swift_project_value_buffer(v2, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v3 = *(sub_2227381FC() - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v6 = *(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [*(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock) lock];
  sub_222707190(v1);

  return [v6 unlock];
}

void sub_222707190(uint64_t a1)
{
  v61 = sub_2227378CC();
  v2 = *(v61 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_22273793C();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v59);
  v58 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2227377AC();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v57);
  v56 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222737C2C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2227377BC();
  v14 = *(v55 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v55);
  v67 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v18 = *(a1 + v17);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v62 = a1;
  v54 = (a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v23 = (v20 + 63) >> 6;
  v64 = "stall state change";
  v53 = *MEMORY[0x277CEBFE8];
  v51 = (v2 + 8);
  v52 = (v8 + 104);
  v50 = (v5 + 8);
  v49 = (v14 + 8);

  v24 = 0;
  v25 = &selRef_stopObservingStateOfOffers_;
  v63 = xmmword_2227412F0;
  v65 = v18;
  while (v22)
  {
LABEL_9:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(*(v18 + 56) + ((v24 << 9) | (8 * v27)));
    v29 = *(v28 + 24);
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v31 = v30;

      swift_unknownObjectRetain();
      v32 = [v31 v25[322]];
      if (v32)
      {
        v33 = v32;
        v34 = sub_22273937C();

        v35 = *(v34 + 16);

        if (!v35)
        {
          swift_unknownObjectRelease();
LABEL_19:

          goto LABEL_20;
        }

        v36 = [*(v28 + 24) id];
        [v36 int64value];
        v37 = v68;
        sub_222737C1C();
        v68 = v37;
        if (!v37)
        {
          (*v52)(v56, v53, v57);
          sub_22273778C();

          v47 = v54[3];
          v48 = v54[4];
          v46[1] = __swift_project_boxed_opaque_existential_1(v54, v47);
          v42 = *(v28 + 24);
          swift_getObjectType();
          v43 = v60;
          sub_222694714();
          v44 = v58;
          sub_2227379EC();
          v45 = v43;
          v18 = v65;
          (*v51)(v45, v61);
          sub_2227045F8(*(v28 + 24), v44, 0);
          swift_unknownObjectRelease();
          (*v50)(v44, v59);
          (*v49)(v67, v55);
          goto LABEL_19;
        }

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v38 = sub_222738F6C();
        v48 = __swift_project_value_buffer(v38, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        v39 = *(sub_2227381FC() - 8);
        v40 = *(v39 + 72);
        v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        *(swift_allocObject() + 16) = v63;
        sub_22273813C();
        sub_222738C6C();

        swift_unknownObjectRelease();

        v68 = 0;
        v18 = v65;
LABEL_20:
        v25 = &selRef_stopObservingStateOfOffers_;
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      return;
    }

    v22 = *(v19 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_222707958()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - v5;
  v7 = sub_2227376CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription;
  if ((*(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription) & 1) == 0)
  {
    v31 = v6;
    v17 = ObjectType;
    v18 = *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription + 24));
    sub_222737B8C();
    *v12 = 1;
    (*(v8 + 104))(v12, *MEMORY[0x277CEBF88], v7);
    v19 = sub_2227376BC();
    v20 = *(v8 + 8);
    v20(v12, v7);
    result = v20(v15, v7);
    v21 = v17;
    v22 = v31;
    if (v19)
    {
      if (qword_2813141B8 != -1)
      {
        swift_once();
      }

      v23 = sub_222738F6C();
      __swift_project_value_buffer(v23, qword_2813141C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v24 = *(sub_2227381FC() - 8);
      v25 = *(v24 + 72);
      v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_22273813C();
      sub_222738C4C();

      *(v1 + v16) = 1;
      v27 = sub_22273946C();
      (*(*(v27 - 8) + 56))(v22, 1, 1, v27);
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v28;
      v29[5] = v21;
      sub_222697DAC(0, 0, v22, &unk_222745658, v29);
    }
  }

  return result;
}

uint64_t sub_222707D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v6 = sub_222737BDC();
  v4[19] = v6;
  v7 = *(v6 - 8);
  v4[20] = v7;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  v9 = sub_2227376CC();
  v4[22] = v9;
  v10 = *(v9 - 8);
  v4[23] = v10;
  v11 = *(v10 + 64) + 15;
  v4[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222707E60, 0, 0);
}

uint64_t sub_222707E60()
{
  v1 = v0[17];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[25] = Strong;
  if (Strong)
  {
    v4 = v0[20];
    v3 = v0[21];
    v5 = v0[19];
    v6 = (Strong + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_arcadeSubscription);
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    *v3 = 0;
    (*(v4 + 104))(v3, *MEMORY[0x277CEC158], v5);
    v9 = *(MEMORY[0x277CEC148] + 4);
    v10 = swift_task_alloc();
    v0[26] = v10;
    *v10 = v0;
    v10[1] = sub_222707FE4;
    v11 = v0[24];
    v12 = v0[21];

    return MEMORY[0x28213E540](v11, v12, v7, v8);
  }

  else
  {
    v13 = v0[24];
    v14 = v0[21];
    v15 = v0[18];

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_222707FE4()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v8 = *v1;
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2227083D0;
  }

  else
  {
    v6 = sub_222708154;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222708154()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[18];
  v6 = sub_222738F6C();
  __swift_project_value_buffer(v6, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v7 = *(sub_2227381FC() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[9] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 6);
  (*(v4 + 16))(boxed_opaque_existential_1, v1, v3);
  sub_22273815C();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v11 = *&v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock];
  [v11 lock];
  v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription] = 0;
  [v11 unlock];
  (*(v4 + 8))(v1, v3);

  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2227083D0()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[25];
  v3 = v0[18];
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v8 = v0[13];
  v9 = v0[14];
  v0[5] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v11 = *&v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock];
  [v11 lock];
  v2[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingArcadeSubscription] = 0;
  [v11 unlock];

  v12 = v0[24];
  v13 = v0[21];
  v14 = v0[18];

  v15 = v0[1];

  return v15();
}

uint64_t sub_22270866C()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription;
  if ((*(v0 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription) & 1) == 0)
  {
    if (qword_2813141B8 != -1)
    {
      swift_once();
    }

    v8 = sub_222738F6C();
    __swift_project_value_buffer(v8, qword_2813141C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v9 = *(sub_2227381FC() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_22273813C();
    sub_222738C4C();

    *(v0 + v7) = 1;
    v12 = sub_22273946C();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    v14[5] = ObjectType;
    sub_222697DAC(0, 0, v6, &unk_222745668, v14);
  }

  return result;
}

uint64_t sub_2227088DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 136) = a4;
  v5 = *(*(sub_2227381BC() - 8) + 64) + 15;
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270896C, 0, 0);
}

uint64_t sub_22270896C()
{
  v1 = v0[17];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = *__swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers), *(Strong + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_contingentOffers + 24));
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_222708A70;

    return sub_2226F88B8();
  }

  else
  {
    v6 = v0[18];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_222708A70(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_222708DC8;
  }

  else
  {
    v5 = sub_222708B84;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222708B84()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014200, &unk_222745670);
  v0[6] = v1;
  sub_22273815C();
  sub_222660468((v0 + 6), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v8 = *(v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v8 lock];
  *(v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription) = 0;
  [v8 unlock];
  v9 = v0[19];

  v10 = v0[18];

  v11 = v0[1];

  return v11();
}

uint64_t sub_222708DC8()
{
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v8 = v0[13];
  v9 = v0[14];
  v0[5] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v11 = *(v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v11 lock];
  *(v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_isUpdatingContingentOfferSubscription) = 0;
  [v11 unlock];

  v12 = v0[19];
  v13 = v0[18];

  v14 = v0[1];

  return v14();
}

uint64_t sub_22270904C(char *a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2227381BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2227378CC();
  v9 = *(v92 - 8);
  v10 = v9[8];
  MEMORY[0x28223BE20](v92);
  v91 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_22273793C();
  *&v112 = *(v90 - 8);
  v12 = *(v112 + 64);
  MEMORY[0x28223BE20](v90);
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2227377AC();
  v110 = *(v103 - 8);
  v14 = *(v110 + 64);
  MEMORY[0x28223BE20](v103);
  v102 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_222737C2C();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v108 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v97 = &v86 - v20;
  v101 = sub_2227377BC();
  v106 = *(v101 - 8);
  v21 = *(v106 + 8);
  v22 = MEMORY[0x28223BE20](v101);
  v96 = (&v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v95 = &v86 - v24;
  v25 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v116 = a1;
  v114 = v25;
  v26 = (a2 >> 62);
  if (!*(*&a1[v25] + 16))
  {
    if (v26)
    {
      goto LABEL_61;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v27 = *&v116[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 24];
      v28 = *&v116[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 32];
      __swift_project_boxed_opaque_existential_1(&v116[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager], v27);
      (*(v28 + 8))(v27, v28);
      goto LABEL_5;
    }
  }

  while (1)
  {
LABEL_5:
    if (v26)
    {
      goto LABEL_59;
    }

    v29 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v30 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    v31 = sub_22271118C();

    v107 = v30;
    v32 = MEMORY[0x223DBE820](v29, v30, v31);
    v118 = v32;
    if (v26)
    {
      v33 = sub_22273984C();
      v115 = a2;
      if (v33)
      {
LABEL_11:
        v117 = v26;
        v26 = v9;
        v9 = v3;
        v34 = 0;
        v35 = a2 & 0xC000000000000001;
        v3 = (a2 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v35)
          {
            v36 = MEMORY[0x223DBEC70](v34, a2);
            a2 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
LABEL_20:
              __break(1u);
LABEL_21:
              v3 = v9;
              v9 = v26;
              v26 = v117;
              v32 = v118;
              break;
            }
          }

          else
          {
            if (v34 >= v3[2])
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              v29 = sub_22273984C();
              goto LABEL_7;
            }

            v36 = *(a2 + 8 * v34 + 32);
            swift_unknownObjectRetain();
            a2 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_20;
            }
          }

          v37 = [v36 id];
          swift_unknownObjectRelease();
          sub_22268E59C(&v120, v37);

          ++v34;
          v38 = a2 == v33;
          a2 = v115;
          if (v38)
          {
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      v33 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v115 = a2;
      if (v33)
      {
        goto LABEL_11;
      }
    }

    v39 = sub_2227113C8(v32);
    v117 = v3;
    if (v3)
    {

      if (qword_2813141B8 != -1)
      {
        swift_once();
      }

      v3 = sub_222738F6C();
      __swift_project_value_buffer(v3, qword_2813141C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
      v40 = *(sub_2227381FC() - 8);
      v41 = *(v40 + 72);
      v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      *(swift_allocObject() + 16) = xmmword_2227412F0;
      sub_2227381AC();
      sub_22273819C();
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0144D0, &qword_222745648);
      v118 = a2;

      sub_22273815C();
      sub_222660468(&v118, &qword_27D0130C0, &unk_2227413B0);
      sub_22273819C();
      sub_2227381CC();
      sub_222738C6C();

      v117 = 0;
      v43 = a2 & 0xFFFFFFFFFFFFFF8;
      if (!v26)
      {
LABEL_26:
        result = *(v43 + 16);
        if (!result)
        {
          return result;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v45 = v39;

      sub_2226AF45C(v45);

      v3 = *&v116[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 24];
      __swift_project_boxed_opaque_existential_1(&v116[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController], v3);
      sub_22273797C();

      v43 = a2 & 0xFFFFFFFFFFFFFF8;
      if (!v26)
      {
        goto LABEL_26;
      }
    }

    result = sub_22273984C();
    if (!result)
    {
      return result;
    }

LABEL_30:
    if (result >= 1)
    {
      v46 = 0;
      v109 = &v116[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController];
      v111 = a2 & 0xC000000000000001;
      v105 = " because we never started";
      v104 = "Failed to convert offer: ";
      v100 = *MEMORY[0x277CEBFE8];
      v99 = (v110 + 104);
      v88 = v9 + 1;
      v87 = (v112 + 8);
      v98 = (v106 + 8);
      v106 = " to AppState apps";
      v112 = xmmword_2227412F0;
      v110 = result;
      while (1)
      {
        if (v111)
        {
          v53 = MEMORY[0x223DBEC70](v46, a2);
        }

        else
        {
          v53 = *(a2 + 8 * v46 + 32);
          swift_unknownObjectRetain();
        }

        ObjectType = swift_getObjectType();
        v55 = [v53 hash];
        v56 = v116;
        v9 = v114;
        swift_beginAccess();
        v57 = *(v9 + v56);
        if (*(v57 + 16) && (v58 = sub_2226889B4(v55), (v59 & 1) != 0))
        {
          a2 = *(*(v57 + 56) + 8 * v58);
          swift_endAccess();
          v60 = *(a2 + 16);
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_58;
          }

          *(a2 + 16) = v62;

          v63 = [v53 id];
          [v63 int64value];
          v64 = v117;
          sub_222737C1C();
          v117 = v64;
          if (v64)
          {
            v65 = ObjectType;

            if (qword_2813141B8 != -1)
            {
              swift_once();
            }

            v66 = sub_222738F6C();
            v26 = __swift_project_value_buffer(v66, qword_2813141C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
            v67 = *(sub_2227381FC() - 8);
            v68 = *(v67 + 72);
            v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
            v3 = swift_allocObject();
            *(v3 + 1) = v112;
            sub_2227381AC();
            sub_22273819C();
            v119 = v65;
            v118 = v53;
            swift_unknownObjectRetain();
            sub_22273815C();
            sub_222660468(&v118, &qword_27D0130C0, &unk_2227413B0);
            sub_22273819C();
            sub_2227381CC();
            sub_222738C6C();

            swift_unknownObjectRelease();

            v117 = 0;
          }

          else
          {
            (*v99)(v102, v100, v103);
            sub_22273778C();

            v47 = v109;
            v48 = *(v109 + 3);
            v94 = *(v109 + 4);
            v93 = __swift_project_boxed_opaque_existential_1(v109, v48);
            v49 = v91;
            sub_222694714();
            v50 = v89;
            sub_2227379EC();
            v51 = v49;
            v26 = v116;
            (*v88)(v51, v92);
            v3 = *(v47 + 4);
            __swift_project_boxed_opaque_existential_1(v47, *(v47 + 3));
            v52 = sub_2227379DC();
            sub_2227045F8(v53, v50, (v52 & 1) == 0);
            (*v87)(v50, v90);
            (*v98)(v95, v101);
            swift_unknownObjectRelease();
          }
        }

        else
        {
          swift_endAccess();
          if (([v53 flags] & 4) != 0)
          {
            sub_222707958();
          }

          if (([v53 flags] & 0x400) != 0)
          {
            sub_22270866C();
          }

          v70 = [v53 hash];
          type metadata accessor for AppOfferStateClient.Observation();
          v71 = swift_allocObject();
          *(v71 + 16) = 1;
          *(v71 + 24) = v53;
          v72 = v116;
          v73 = v114;
          swift_beginAccess();
          swift_unknownObjectRetain();
          v74 = *&v72[v73];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120 = *&v72[v73];
          *&v72[v73] = 0x8000000000000000;
          sub_22268C2EC(v71, v70, isUniquelyReferenced_nonNull_native);
          *&v72[v73] = v120;
          swift_endAccess();
          sub_22270A19C(v53);
          sub_22266BCCC(v109, &v118);
          __swift_project_boxed_opaque_existential_1(&v118, v119);
          v76 = [v53 id];
          [v76 int64value];
          v77 = v117;
          sub_222737C1C();
          v117 = v77;
          if (v77)
          {
            v26 = ObjectType;

            __swift_destroy_boxed_opaque_existential_1(&v118);
            if (qword_2813141B8 != -1)
            {
              swift_once();
            }

            v78 = sub_222738F6C();
            __swift_project_value_buffer(v78, qword_2813141C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
            v79 = *(sub_2227381FC() - 8);
            v80 = *(v79 + 72);
            v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
            *(swift_allocObject() + 16) = v112;
            sub_2227381AC();
            sub_22273819C();
            v119 = v26;
            v118 = v53;
            swift_unknownObjectRetain();
            sub_22273815C();
            sub_222660468(&v118, &qword_27D0130C0, &unk_2227413B0);
            sub_22273819C();
            sub_2227381CC();
            sub_222738C6C();

            v117 = 0;
          }

          else
          {
            (*v99)(v102, v100, v103);
            v26 = v96;
            sub_22273778C();

            sub_2227379BC();
            (*v98)(v26, v101);
            __swift_destroy_boxed_opaque_existential_1(&v118);
          }

          if (qword_2813141B8 != -1)
          {
            swift_once();
          }

          v3 = sub_222738F6C();
          __swift_project_value_buffer(v3, qword_2813141C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          v82 = *(sub_2227381FC() - 8);
          v83 = *(v82 + 72);
          v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          *(swift_allocObject() + 16) = v112;
          sub_2227381AC();
          sub_22273819C();
          v85 = [v53 id];
          v119 = v107;
          v118 = v85;
          sub_22273816C();
          sub_222660468(&v118, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          sub_2227381CC();
          sub_222738C4C();
          swift_unknownObjectRelease();
        }

        ++v46;
        a2 = v115;
        if (v110 == v46)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_61:
    if (sub_22273984C())
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_22270A19C(void *a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_2227378CC();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22273793C();
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v32 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2227377AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222737C2C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_2227377BC();
  v29 = *(v17 - 8);
  v30 = v17;
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v21 = [a1 id];
  [v21 int64value];
  sub_222737C1C();
  (*(v11 + 104))(v14, *MEMORY[0x277CEBFE8], v10);
  sub_22273778C();

  v22 = (v37 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController);
  v23 = *(v37 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 32);
  __swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController), *(v37 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 24));
  v24 = v31;
  sub_222694714();
  v25 = v32;
  sub_2227379EC();
  (*(v33 + 8))(v24, v34);
  v26 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v27 = sub_2227379DC();
  sub_2227045F8(a1, v25, (v27 & 1) == 0);
  (*(v35 + 8))(v25, v36);
  return (*(v29 + 8))(v20, v30);
}

uint64_t sub_22270A74C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v64 = sub_2227377AC();
  ObjectType = *(v64 - 8);
  v7 = *(ObjectType + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222737C2C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_2227377BC();
  v13 = *(v62 - 8);
  v14 = v13[8];
  MEMORY[0x28223BE20](v62);
  v61 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2227381BC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  v19 = a2;
  v65 = *(*(a1 + v18) + 16);
  if (a2 >> 62)
  {
LABEL_31:
    v54 = v19;
    result = sub_22273984C();
    v19 = v54;
    v73 = v3;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (v65)
    {
      if (!*(*(a1 + v18) + 16))
      {
        v55 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 24);
        v56 = *(a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager + 32);
        __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_jsStackManager), v55);
        return (*(v56 + 16))(v55, v56);
      }
    }

    return result;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v73 = v2;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_3:
  if (result >= 1)
  {
    v21 = 0;
    v69 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController;
    v80 = v19 & 0xC000000000000001;
    v67 = " because we never started";
    v66 = "Failed to convert offer: ";
    v59 = *MEMORY[0x277CEBFE8];
    v58 = (ObjectType + 104);
    v57 = (v13 + 1);
    v68 = " to AppState app";
    v74 = "Could not stop observing ";
    v75 = "Performed action of ";
    v77 = xmmword_2227412F0;
    v76 = a1;
    v78 = result;
    v79 = v19;
    v70 = v12;
    while (1)
    {
      if (v80)
      {
        v27 = MEMORY[0x223DBEC70](v21);
      }

      else
      {
        v27 = *(v19 + 8 * v21 + 32);
        swift_unknownObjectRetain();
      }

      ObjectType = swift_getObjectType();
      v3 = [v27 hash];
      swift_beginAccess();
      v13 = *(a1 + v18);
      if (v13[2] && (v28 = sub_2226889B4(v3), (v29 & 1) != 0))
      {
        v12 = *(v13[7] + 8 * v28);
        swift_endAccess();
        v30 = *(v12 + 2);
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v31)
        {
          __break(1u);
          goto LABEL_31;
        }

        *(v12 + 2) = v32;
        if (v32)
        {
          swift_unknownObjectRelease();
          goto LABEL_9;
        }

        v33 = [v27 hash];
        swift_beginAccess();
        v34 = *(a1 + v18);
        v35 = sub_2226889B4(v33);
        if (v36)
        {
          v37 = v35;
          v38 = *(a1 + v18);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(a1 + v18);
          v84 = v40;
          *(a1 + v18) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22268D1FC();
            v40 = v84;
          }

          v41 = *(*(v40 + 56) + 8 * v37);

          sub_22268B99C(v37, v40);
          *(a1 + v18) = v40;
        }

        swift_endAccess();
        sub_22266BCCC(a1 + v69, v81);
        v42 = v82;
        v72 = v83;
        v71 = __swift_project_boxed_opaque_existential_1(v81, v82);
        v43 = [v27 id];
        [v43 int64value];
        v44 = v73;
        sub_222737C1C();
        v73 = v44;
        if (v44)
        {

          __swift_destroy_boxed_opaque_existential_1(v81);
          if (qword_2813141B8 != -1)
          {
            swift_once();
          }

          v72 = sub_222738F6C();
          v71 = __swift_project_value_buffer(v72, qword_2813141C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
          v45 = *(sub_2227381FC() - 8);
          v46 = *(v45 + 72);
          v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          *(swift_allocObject() + 16) = v77;
          sub_2227381AC();
          sub_22273819C();
          v82 = ObjectType;
          v81[0] = v27;
          swift_unknownObjectRetain();
          sub_22273815C();
          sub_222660468(v81, &qword_27D0130C0, &unk_2227413B0);
          sub_22273819C();
          sub_2227381CC();
          sub_222738C6C();

          v73 = 0;
        }

        else
        {
          (*v58)(v63, v59, v64);
          v60 = v42;
          v48 = v61;
          sub_22273778C();

          sub_2227379BC();
          (*v57)(v48, v62);
          __swift_destroy_boxed_opaque_existential_1(v81);
        }

        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v49 = sub_222738F6C();
        v72 = __swift_project_value_buffer(v49, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        v50 = *(sub_2227381FC() - 8);
        v51 = *(v50 + 72);
        v52 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        *(swift_allocObject() + 16) = v77;
        sub_2227381AC();
        sub_22273819C();
        v53 = [v27 id];
        v82 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        v81[0] = v53;
        sub_22273816C();
        sub_222660468(v81, &qword_27D0130C0, &unk_2227413B0);
        sub_22273819C();
        sub_2227381CC();
        sub_222738C4C();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
        if (qword_2813141B8 != -1)
        {
          swift_once();
        }

        v22 = sub_222738F6C();
        __swift_project_value_buffer(v22, qword_2813141C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
        v23 = *(sub_2227381FC() - 8);
        v24 = *(v23 + 72);
        v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        *(swift_allocObject() + 16) = v77;
        sub_2227381AC();
        sub_22273819C();
        v26 = [v27 id];
        v82 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        v81[0] = v26;
        sub_22273816C();
        sub_222660468(v81, &qword_27D0130C0, &unk_2227413B0);
        sub_22273819C();
        sub_2227381CC();
        sub_222738C6C();
        swift_unknownObjectRelease();
      }

      a1 = v76;
LABEL_9:
      ++v21;
      result = v78;
      v19 = v79;
      if (v78 == v21)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_22270B200(char *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
  v7 = sub_22273937C();
  v8 = *&a1[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock];
  v9 = a1;
  [v8 lock];
  a4(v9, v7, ObjectType);

  [v8 unlock];
}

void sub_22270B2F4(void *a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  v43 = a4;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v43 - v14;
  v16 = *(v5 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_stateLock);
  [v16 lock];
  v17 = [a1 hash];
  v18 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_observations;
  swift_beginAccess();
  if (*(*(v6 + v18) + 16) && (sub_2226889B4(v17), (v19 & 1) != 0))
  {
    swift_endAccess();
    [v16 unlock];
    sub_2226839AC(&v46);
    if (v47)
    {
      sub_222634290(&v46, &v49);
      v20 = *(v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph);
      v21 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_restrictions;
      sub_22266BCCC(v6 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController, &v46);
      sub_22266BCCC(v6 + v21, v45);
      sub_22266BCCC(&v49, v44);
      v22 = swift_allocObject();
      v22[2] = v20;
      v22[3] = a1;
      sub_222634290(&v46, (v22 + 4));
      sub_222634290(v45, (v22 + 9));
      v22[14] = a2;
      v22[15] = a3;
      sub_222634290(v44, (v22 + 16));
      v22[21] = ObjectType;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A0, &unk_222741CA0);

      swift_unknownObjectRetain();
      v23 = a2;
      v24 = a3;
      v25 = sub_222738F2C();
      v26 = sub_22273946C();
      (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = &unk_2227455F8;
      v27[5] = v22;
      v27[6] = v25;

      sub_2226D4E54(0, 0, v15, &unk_222745608, v27);

      v28 = swift_allocObject();
      v29 = v43;
      *(v28 + 16) = v43;
      *(v28 + 24) = a5;
      *(v28 + 32) = "performAction(of:with:in:withReplyHandler:)";
      *(v28 + 40) = 43;
      *(v28 + 48) = 2;
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = a5;
      *(v30 + 32) = "performAction(of:with:in:withReplyHandler:)";
      *(v30 + 40) = 43;
      *(v30 + 48) = 2;
      v31 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
      swift_retain_n();
      v32 = sub_22273955C();
      v47 = v31;
      v48 = MEMORY[0x277D225C0];
      *&v46 = v32;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v49);
      __swift_destroy_boxed_opaque_existential_1(&v46);
      return;
    }

    sub_222660468(&v46, &unk_27D013240, &unk_222741770);
    type metadata accessor for ASCAppOfferActionError(0);
    *&v46 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    v35 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22273919C();
    *(inited + 40) = v36;
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_22273991C();
    swift_getObjectType();
    v37 = sub_222739D2C();
    v39 = v38;

    v49 = v37;
    v50 = v39;
    MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
    v40 = v49;
    v41 = v50;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v40;
    *(inited + 56) = v41;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);
    sub_22273725C();
    v42 = v49;
    v33 = v49;
    v43(v42);
  }

  else
  {
    swift_endAccess();
    [v16 unlock];
    type metadata accessor for ASCAppOfferActionError(0);
    *&v46 = 0;
    sub_222710688(MEMORY[0x277D84F90]);
    sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);
    sub_22273725C();
    v33 = v49;
    v43(v49);
  }
}

uint64_t sub_22270B900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[75] = a8;
  v8[74] = a7;
  v8[73] = a6;
  v8[72] = a5;
  v8[71] = a4;
  v8[70] = a3;
  v8[69] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  v8[76] = swift_task_alloc();
  v10 = sub_2227383CC();
  v8[77] = v10;
  v11 = *(v10 - 8);
  v8[78] = v11;
  v12 = *(v11 + 64) + 15;
  v8[79] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v8[80] = v13;
  v14 = *(v13 - 8);
  v8[81] = v14;
  v15 = *(v14 + 64) + 15;
  v8[82] = swift_task_alloc();
  v16 = sub_22273887C();
  v8[83] = v16;
  v17 = *(v16 - 8);
  v8[84] = v17;
  v18 = *(v17 + 64) + 15;
  v8[85] = swift_task_alloc();
  v19 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v8[86] = swift_task_alloc();
  v20 = sub_2227378CC();
  v8[87] = v20;
  v21 = *(v20 - 8);
  v8[88] = v21;
  v22 = *(v21 + 64) + 15;
  v8[89] = swift_task_alloc();
  v23 = sub_22273793C();
  v8[90] = v23;
  v24 = *(v23 - 8);
  v8[91] = v24;
  v25 = *(v24 + 64) + 15;
  v8[92] = swift_task_alloc();
  v26 = sub_2227377AC();
  v8[93] = v26;
  v27 = *(v26 - 8);
  v8[94] = v27;
  v28 = *(v27 + 64) + 15;
  v8[95] = swift_task_alloc();
  v29 = *(*(sub_222737C2C() - 8) + 64) + 15;
  v8[96] = swift_task_alloc();
  v30 = sub_2227377BC();
  v8[97] = v30;
  v31 = *(v30 - 8);
  v8[98] = v31;
  v32 = *(v31 + 64) + 15;
  v8[99] = swift_task_alloc();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v8[100] = v33;
  v34 = *(v33 - 8);
  v8[101] = v34;
  v8[102] = *(v34 + 64);
  v8[103] = swift_task_alloc();
  v8[104] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270BD1C, 0, 0);
}

uint64_t sub_22270BD1C()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 800);
  v3 = *(v0 + 768);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  type metadata accessor for ObjectGraph();
  sub_222738C9C();
  swift_getObjectType();
  v6 = [v4 id];
  [v6 int64value];
  sub_222737C1C();
  v7 = *(v0 + 792);
  v8 = *(v0 + 768);
  v86 = *(v0 + 736);
  v9 = *(v0 + 712);
  v10 = *(v0 + 704);
  v92 = *(v0 + 696);
  v11 = *(v0 + 576);
  v12 = *(v0 + 568);
  v84 = *(v0 + 560);
  (*(*(v0 + 752) + 104))(*(v0 + 760), *MEMORY[0x277CEBFE8], *(v0 + 744));
  sub_22273778C();

  v13 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_222694714();
  sub_2227379EC();
  (*(v10 + 8))(v9, v92);
  v14 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  if (sub_2226FA338(v84, v86))
  {
    if (qword_2813141B8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 688);
    v16 = *(v0 + 592);
    v17 = *(v0 + 584);
    v18 = *(v0 + 560);
    v89 = *(v0 + 552);
    v93 = *(v0 + 680);
    v19 = sub_222738F6C();
    *(v0 + 840) = v19;
    *(v0 + 848) = __swift_project_value_buffer(v19, qword_2813141C0);
    *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v20 = *(sub_2227381FC() - 8);
    *(v0 + 864) = *(v20 + 72);
    *(v0 + 912) = *(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v21 = [v18 id];
    v22 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    *(v0 + 872) = v22;
    *(v0 + 280) = v22;
    *(v0 + 256) = v21;
    sub_22273816C();
    sub_222660468(v0 + 256, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A8, &qword_222745620);
    v23 = *(sub_222737FBC() - 8);
    v24 = *(v23 + 72);
    v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_2227413C0;
    sub_22262E364(0, &qword_27D013080, off_2784B06E8);
    *(v0 + 472) = v17;
    v27 = v17;
    sub_222737FAC();
    sub_22262E364(0, &qword_27D012FA8, off_2784B0700);
    *(v0 + 480) = v16;
    v28 = v16;
    sub_222737FAC();
    *(v0 + 488) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144B0, &qword_222745628);
    sub_22262BED4(&qword_27D0144B8, &qword_27D0144B0, &qword_222745628);
    *(v0 + 880) = sub_22273856C();

    sub_22273886C();
    *(v0 + 496) = v18;
    if (qword_27D0129E0 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 680);
    v30 = *(v0 + 584);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131A0, &unk_222741760);
    __swift_project_value_buffer(v31, qword_27D019CB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013090, &qword_222744020);
    sub_22273885C();
    *(v0 + 504) = v30;
    v32 = qword_27D0129D0;
    v33 = v30;
    if (v32 != -1)
    {
      swift_once();
    }

    v94 = *(v0 + 832);
    v34 = *(v0 + 800);
    v35 = *(v0 + 680);
    v36 = *(v0 + 672);
    v37 = *(v0 + 664);
    v38 = *(v0 + 656);
    v39 = *(v0 + 648);
    v40 = *(v0 + 640);
    v41 = *(v0 + 600);
    v42 = *(v0 + 584);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0131B0, &unk_222741790);
    __swift_project_value_buffer(v43, qword_27D019C98);
    sub_22273885C();

    (*(v36 + 16))(v38, v35, v37);
    (*(v39 + 104))(v38, *MEMORY[0x277D21E10], v40);
    *(v0 + 888) = sub_22273862C();
    (*(v39 + 8))(v38, v40);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F68, &unk_222741250);
    v45 = sub_22262BED4(&qword_27D0144C0, &qword_27D012F68, &unk_222741250);
    v46 = *(MEMORY[0x277D22390] + 4);
    v47 = swift_task_alloc();
    *(v0 + 896) = v47;
    *v47 = v0;
    v47[1] = sub_22270C9E4;
    v48 = *(v0 + 632);

    return MEMORY[0x282180360](v48, v44, v45);
  }

  else
  {
    if (qword_2813141B8 != -1)
    {
      swift_once();
    }

    v78 = *(v0 + 824);
    v79 = *(v0 + 832);
    v49 = *(v0 + 808);
    v85 = *(v0 + 784);
    v87 = *(v0 + 776);
    v90 = *(v0 + 792);
    v80 = *(v0 + 816);
    v81 = *(v0 + 728);
    v82 = *(v0 + 720);
    v83 = *(v0 + 736);
    v50 = *(v0 + 688);
    v76 = *(v0 + 608);
    v77 = *(v0 + 800);
    v51 = *(v0 + 560);
    v95 = *(v0 + 552);
    v52 = sub_222738F6C();
    __swift_project_value_buffer(v52, qword_2813141C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v53 = *(sub_2227381FC() - 8);
    v54 = *(v53 + 72);
    v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    *(swift_allocObject() + 16) = xmmword_2227413C0;
    sub_2227381AC();
    sub_22273819C();
    v56 = [v51 id];
    *(v0 + 248) = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    *(v0 + 224) = v56;
    sub_22273816C();
    sub_222660468(v0 + 224, &qword_27D0130C0, &unk_2227413B0);
    sub_22273819C();
    sub_2227381CC();
    sub_22273813C();
    sub_222738C6C();

    type metadata accessor for ASCAppOfferActionError(0);
    *(v0 + 464) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2227412F0;
    v58 = *MEMORY[0x277CCA450];
    *(inited + 32) = sub_22273919C();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v59;
    *(inited + 48) = 0xD000000000000022;
    *(inited + 56) = 0x800000022274E1A0;
    sub_222710688(inited);
    swift_setDeallocating();
    sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
    sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);
    sub_22273725C();
    v60 = *(v0 + 456);
    v61 = sub_22273946C();
    (*(*(v61 - 8) + 56))(v76, 1, 1, v61);
    (*(v49 + 16))(v78, v79, v77);
    v62 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v63 = swift_allocObject();
    *(v63 + 2) = 0;
    *(v63 + 3) = 0;
    *(v63 + 4) = v60;
    (*(v49 + 32))(&v63[v62], v78, v77);
    *&v63[(v80 + v62 + 7) & 0xFFFFFFFFFFFFFFF8] = v95;
    v60;

    sub_22269994C(0, 0, v76, &unk_222745618, v63);

    swift_willThrow();
    (*(v81 + 8))(v83, v82);
    (*(v85 + 8))(v90, v87);
    (*(v49 + 8))(v79, v77);
    v64 = *(v0 + 832);
    v65 = *(v0 + 824);
    v66 = *(v0 + 792);
    v67 = *(v0 + 768);
    v68 = *(v0 + 760);
    v69 = *(v0 + 736);
    v70 = *(v0 + 712);
    v71 = *(v0 + 688);
    v72 = *(v0 + 680);
    v73 = *(v0 + 656);
    v88 = *(v0 + 632);
    v91 = *(v0 + 608);

    v74 = *(v0 + 8);

    return v74();
  }
}

uint64_t sub_22270C9E4()
{
  v2 = *v1;
  v3 = *(*v1 + 896);
  v4 = *v1;
  v2[113] = v0;

  v5 = v2[111];
  if (v0)
  {

    v6 = sub_22270CE00;
  }

  else
  {
    v7 = v2[79];
    v8 = v2[78];
    v9 = v2[77];

    (*(v8 + 8))(v7, v9);
    v6 = sub_22270CB40;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22270CB40()
{
  v20 = *(v0 + 880);
  v13 = *(v0 + 872);
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v17 = *(v0 + 848);
  v15 = *(v0 + 840);
  v24 = *(v0 + 832);
  v25 = *(v0 + 824);
  v3 = *(v0 + 808);
  v22 = *(v0 + 792);
  v23 = *(v0 + 800);
  v4 = *(v0 + 784);
  v21 = *(v0 + 776);
  v26 = *(v0 + 768);
  v27 = *(v0 + 760);
  v5 = *(v0 + 728);
  v18 = *(v0 + 720);
  v19 = *(v0 + 736);
  v28 = *(v0 + 712);
  v6 = *(v0 + 688);
  v16 = *(v0 + 680);
  v7 = *(v0 + 672);
  v14 = *(v0 + 664);
  v29 = *(v0 + 656);
  v30 = *(v0 + 632);
  v31 = *(v0 + 608);
  v8 = (*(v0 + 912) + 32) & ~*(v0 + 912);
  v9 = *(v0 + 560);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v10 = [v9 id];
  *(v0 + 376) = v13;
  *(v0 + 352) = v10;
  sub_22273816C();
  sub_222660468(v0 + 352, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  (*(v7 + 8))(v16, v14);
  (*(v5 + 8))(v19, v18);
  (*(v4 + 8))(v22, v21);
  (*(v3 + 8))(v24, v23);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22270CE00()
{
  v1 = *(v0 + 904);
  v56 = *(v0 + 880);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 856);
  v42 = *(v0 + 840);
  v43 = *(v0 + 848);
  v46 = *(v0 + 824);
  v47 = *(v0 + 832);
  v48 = *(v0 + 816);
  v5 = *(v0 + 808);
  v45 = *(v0 + 800);
  v58 = *(v0 + 784);
  v59 = *(v0 + 776);
  v61 = *(v0 + 792);
  v57 = *(v0 + 736);
  v54 = *(v0 + 728);
  v55 = *(v0 + 720);
  v6 = *(v0 + 688);
  v51 = *(v0 + 672);
  v52 = *(v0 + 664);
  v53 = *(v0 + 680);
  v44 = *(v0 + 608);
  v7 = *(v0 + 560);
  v8 = (*(v0 + 912) + 32) & ~*(v0 + 912);
  v49 = *(v0 + 552);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v9 = [v7 id];
  *(v0 + 312) = v2;
  *(v0 + 288) = v9;
  sub_22273816C();
  sub_222660468(v0 + 288, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v11 = *(v0 + 384);
  v10 = *(v0 + 392);
  *(v0 + 344) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 320));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v11, v10);
  sub_22273816C();
  sub_222660468(v0 + 320, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v13 = sub_22273946C();
  (*(*(v13 - 8) + 56))(v44, 1, 1, v13);
  (*(v5 + 16))(v46, v47, v45);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v1;
  (*(v5 + 32))(&v15[v14], v46, v45);
  *&v15[(v48 + v14 + 7) & 0xFFFFFFFFFFFFFFF8] = v49;

  v16 = v1;
  sub_22269994C(0, 0, v44, &unk_222745638, v15);

  type metadata accessor for ASCAppOfferActionError(0);
  *(v0 + 528) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227413C0;
  v18 = *MEMORY[0x277CCA7E8];
  *(inited + 32) = sub_22273919C();
  *(inited + 40) = v19;
  swift_getErrorValue();
  v20 = *(v0 + 408);
  v21 = *(v0 + 416);
  *(inited + 72) = v21;
  v22 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v21 - 8) + 16))(v22, v20, v21);
  v23 = *MEMORY[0x277CCA450];
  *(inited + 80) = sub_22273919C();
  *(inited + 88) = v24;
  swift_getErrorValue();
  v26 = *(v0 + 432);
  v25 = *(v0 + 440);
  v27 = *(v0 + 448);
  v28 = sub_222739BEC();
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v28;
  *(inited + 104) = v29;
  sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  sub_222710B68(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);
  sub_22273725C();
  v50 = *(v0 + 520);
  swift_willThrow();

  (*(v51 + 8))(v53, v52);
  (*(v54 + 8))(v57, v55);
  (*(v58 + 8))(v61, v59);
  (*(v5 + 8))(v47, v45);
  v30 = *(v0 + 832);
  v31 = *(v0 + 824);
  v32 = *(v0 + 792);
  v33 = *(v0 + 768);
  v34 = *(v0 + 760);
  v35 = *(v0 + 736);
  v36 = *(v0 + 712);
  v37 = *(v0 + 688);
  v38 = *(v0 + 680);
  v39 = *(v0 + 656);
  v60 = *(v0 + 632);
  v62 = *(v0 + 608);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_22270D3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_2227383CC();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v13 = type metadata accessor for PresentErrorAction();
  v6[16] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270D54C, 0, 0);
}

uint64_t sub_22270D54C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  sub_22273839C();
  *(v1 + *(v2 + 20)) = v6;
  v0[5] = v2;
  v0[6] = sub_222710B68(&qword_27D013228, type metadata accessor for PresentErrorAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2227110C4(v1, boxed_opaque_existential_1, type metadata accessor for PresentErrorAction);
  (*(v4 + 104))(v3, *MEMORY[0x277D21E18], v5);
  v8 = *(MEMORY[0x277D21E20] + 4);
  v9 = v6;
  v10 = swift_task_alloc();
  v0[18] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  *v10 = v0;
  v10[1] = sub_22270D6C8;
  v12 = v0[15];
  v13 = v0[12];
  v15 = v0[8];
  v14 = v0[9];

  return MEMORY[0x28217F468](v12, v0 + 2, v13, v14, v11);
}

uint64_t sub_22270D6C8()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v4 = (*v1)[12];
  v5 = (*v1)[11];
  v6 = (*v1)[10];
  v9 = *v1;
  (*v1)[19] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_2227113B8;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v7 = sub_2227113B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22270D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v6[10] = v7;
  v8 = *(v7 - 8);
  v6[11] = v8;
  v9 = *(v8 + 64) + 15;
  v6[12] = swift_task_alloc();
  v10 = sub_2227383CC();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v12 = *(v11 + 64) + 15;
  v6[15] = swift_task_alloc();
  v13 = type metadata accessor for PresentErrorAction();
  v6[16] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270D9BC, 0, 0);
}

uint64_t sub_22270D9BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];
  sub_22273839C();
  *(v1 + *(v2 + 20)) = v6;
  v0[5] = v2;
  v0[6] = sub_222710B68(&qword_27D013228, type metadata accessor for PresentErrorAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2227110C4(v1, boxed_opaque_existential_1, type metadata accessor for PresentErrorAction);
  (*(v4 + 104))(v3, *MEMORY[0x277D21E18], v5);
  v8 = v6;
  v9 = *(MEMORY[0x277D21E20] + 4);
  v10 = swift_task_alloc();
  v0[18] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  *v10 = v0;
  v10[1] = sub_22270DB38;
  v12 = v0[15];
  v13 = v0[12];
  v15 = v0[8];
  v14 = v0[9];

  return MEMORY[0x28217F468](v12, v0 + 2, v13, v14, v11);
}

uint64_t sub_22270DB38()
{
  v2 = *v1;
  v3 = (*v1)[18];
  v4 = (*v1)[12];
  v5 = (*v1)[11];
  v6 = (*v1)[10];
  v9 = *v1;
  (*v1)[19] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_22270DD74;
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v7 = sub_22270DCD0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22270DCD0()
{
  v1 = v0[15];
  v2 = v0[12];
  sub_22271112C(v0[17], type metadata accessor for PresentErrorAction);

  v3 = v0[1];

  return v3();
}

uint64_t sub_22270DD74()
{
  v1 = v0[15];
  v2 = v0[12];
  sub_22271112C(v0[17], type metadata accessor for PresentErrorAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_22270DEF4(void *a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - v7;
  v9 = type metadata accessor for WatchReinstallAction();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2227381BC();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = *(v3 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph);
  type metadata accessor for ObjectGraph();
  v48 = v17;
  v44 = v14;
  sub_222738C9C();
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v19 = sub_222738F6C();
  __swift_project_value_buffer(v19, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v20 = *(sub_2227381FC() - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v54 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v53[0] = a1;
  v23 = a1;
  sub_22273816C();
  sub_222660468(v53, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v24 = v45;
  sub_22273839C();
  v25 = v24 + *(v9 + 20);
  *v25 = v23;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  v54 = v9;
  v55 = sub_222710B68(&unk_27D013260, type metadata accessor for WatchReinstallAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  v43 = type metadata accessor for WatchReinstallAction;
  sub_2227110C4(v24, boxed_opaque_existential_1, type metadata accessor for WatchReinstallAction);
  v28 = v46;
  v27 = v47;
  (*(v46 + 104))(v8, *MEMORY[0x277D21E18], v47);
  v29 = v23;
  v30 = v44;
  v31 = v48;
  sub_22273862C();
  (*(v28 + 8))(v8, v27);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v32 = swift_allocObject();
  v33 = v51;
  v34 = v52;
  v32[2] = v29;
  v32[3] = v33;
  v35 = ObjectType;
  v32[4] = v34;
  v32[5] = v35;
  v36 = swift_allocObject();
  v36[2] = v29;
  v36[3] = v33;
  v36[4] = v34;
  v36[5] = v35;
  v37 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  v38 = v29;
  swift_retain_n();
  v39 = v38;
  v40 = sub_22273955C();
  v54 = v37;
  v55 = MEMORY[0x277D225C0];
  v53[0] = v40;
  sub_222738E8C();

  sub_22271112C(v24, v43);
  (*(v49 + 8))(v31, v30);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_22270E4A8(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v5 = sub_2227381BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v13[3] = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v13[0] = a2;
  v11 = a2;
  sub_22273816C();
  sub_222660468(v13, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a3(0);
}

uint64_t sub_22270E6C4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_2227381BC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v17 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v16[0] = a2;
  v11 = a2;
  sub_22273816C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v17 = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v15 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a3(a1);
}

uint64_t sub_22270EA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v45 = a1;
  v46 = a3;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013060, &unk_2227412E0);
  v40 = *(v6 - 8);
  v41 = v6;
  v7 = *(v40 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - v8;
  v10 = type metadata accessor for WatchReinstallAction();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v47 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2227381BC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260);
  v43 = *(v15 - 8);
  v16 = *(v43 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - v17;
  v19 = *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph);
  type metadata accessor for ObjectGraph();
  v42 = v18;
  v39[1] = v19;
  sub_222738C9C();
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v20 = sub_222738F6C();
  __swift_project_value_buffer(v20, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v21 = *(sub_2227381FC() - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v50 = MEMORY[0x277D837D0];
  v24 = v45;
  v49[0] = v45;
  v49[1] = a2;

  sub_22273816C();
  sub_222660468(v49, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v25 = v47;
  sub_22273839C();
  v26 = v25 + *(v10 + 20);
  *v26 = v24;
  *(v26 + 8) = a2;
  *(v26 + 16) = 1;
  v50 = v10;
  v51 = sub_222710B68(&unk_27D013260, type metadata accessor for WatchReinstallAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  v39[0] = type metadata accessor for WatchReinstallAction;
  sub_2227110C4(v25, boxed_opaque_existential_1, type metadata accessor for WatchReinstallAction);
  v29 = v40;
  v28 = v41;
  (*(v40 + 104))(v9, *MEMORY[0x277D21E18], v41);

  v30 = v42;
  sub_22273862C();
  (*(v29 + 8))(v9, v28);
  __swift_destroy_boxed_opaque_existential_1(v49);
  v31 = swift_allocObject();
  v31[2] = v24;
  v31[3] = a2;
  v32 = v46;
  v33 = v48;
  v31[4] = v46;
  v31[5] = v33;
  v41 = v15;
  v34 = ObjectType;
  v31[6] = ObjectType;
  v35 = swift_allocObject();
  v35[2] = v24;
  v35[3] = a2;
  v35[4] = v32;
  v35[5] = v33;
  v35[6] = v34;
  v36 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v37 = sub_22273955C();
  v50 = v36;
  v51 = MEMORY[0x277D225C0];
  v49[0] = v37;
  sub_222738E8C();

  sub_22271112C(v25, v39[0]);
  (*(v43 + 8))(v30, v41);
  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_22270EFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = sub_2227381BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v10 = *(sub_2227381FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v14[3] = MEMORY[0x277D837D0];
  v14[0] = a2;
  v14[1] = a3;

  sub_22273816C();
  sub_222660468(v14, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a4(0);
}

uint64_t sub_22270F1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = sub_2227381BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v9 = sub_222738F6C();
  __swift_project_value_buffer(v9, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v10 = *(sub_2227381FC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v18 = MEMORY[0x277D837D0];
  v17[0] = a2;
  v17[1] = a3;

  sub_22273816C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v18 = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1);
  sub_22273816C();
  sub_222660468(v17, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  return a4(a1);
}

uint64_t sub_22270F54C(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appDistribution), *(v1 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appDistribution + 24));
  v3 = [a1 id];
  v4 = [v3 stringValue];

  v5 = sub_22273919C();
  v7 = v6;

  v8 = [a1 appVersionId];
  v9 = sub_22273919C();
  v11 = v10;

  v12 = [a1 distributorId];
  v13 = sub_22273919C();
  v15 = v14;

  sub_2226A4320(v5, v7, v9, v11, v13, v15);
}

uint64_t sub_22270F6E8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v22 - v13;
  v15 = *&v4[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_objectGraph];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FC0, &unk_222741550);
  sub_22273850C();
  v16 = sub_22273946C();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  sub_22266BCCC(v23, v22);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = v5;
  sub_222634290(v22, (v17 + 6));
  v17[11] = a2;
  v17[12] = a3;
  v17[13] = a4;
  v17[14] = ObjectType;
  v18 = a1;
  v19 = v5;
  v20 = a2;

  sub_222697DAC(0, 0, v14, &unk_2227455E8, v17);

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_22270F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v25;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v9 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v8[17] = swift_task_alloc();
  v10 = sub_2227378CC();
  v8[18] = v10;
  v11 = *(v10 - 8);
  v8[19] = v11;
  v12 = *(v11 + 64) + 15;
  v8[20] = swift_task_alloc();
  v13 = sub_22273793C();
  v8[21] = v13;
  v14 = *(v13 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();
  v16 = sub_2227377AC();
  v8[24] = v16;
  v17 = *(v16 - 8);
  v8[25] = v17;
  v18 = *(v17 + 64) + 15;
  v8[26] = swift_task_alloc();
  v19 = *(*(sub_222737C2C() - 8) + 64) + 15;
  v8[27] = swift_task_alloc();
  v20 = sub_2227377BC();
  v8[28] = v20;
  v21 = *(v20 - 8);
  v8[29] = v21;
  v22 = *(v21 + 64) + 15;
  v8[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22270FAC0, 0, 0);
}

uint64_t sub_22270FAC0()
{
  v1 = *(v0 + 216);
  v2 = [*(v0 + 88) id];
  [v2 int64value];
  sub_222737C1C();
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 184);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v20 = *(v0 + 112);
  v18 = *(v0 + 144);
  v19 = *(v0 + 104);
  v8 = *(v0 + 96);
  v17 = *(v0 + 88);
  (*(*(v0 + 200) + 104))(*(v0 + 208), *MEMORY[0x277CEBFE8], *(v0 + 192));
  sub_22273778C();

  v9 = *(v8 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 32);
  __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController), *(v8 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19AppOfferStateClient_appStateController + 24));
  sub_222703410(v7);
  sub_2227379EC();
  (*(v6 + 8))(v7, v18);
  v10 = __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v11 = [objc_allocWithZone(ASCOfferContext) init];
  *(v0 + 248) = sub_2226FE348(v17, v5, v20, v11, *v10);

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014490, &qword_222741560);
  v13 = sub_22262BED4(&qword_27D012FC8, &unk_27D014490, &qword_222741560);
  v14 = *(MEMORY[0x277D22390] + 4);
  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  *v15 = v0;
  v15[1] = sub_22270FF80;

  return MEMORY[0x282180360](v0 + 80, v12, v13);
}

uint64_t sub_22270FF80()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];

  if (v0)
  {
    v6 = sub_2227101E4;
  }

  else
  {
    v2[34] = v2[10];
    v6 = sub_2227100BC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2227100BC()
{
  v1 = v0[34];
  v2 = v0[29];
  v17 = v0[28];
  v18 = v0[30];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[15];
  v7 = v0[16];
  v8 = sub_2226EC744();
  v6(v8);

  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v18, v17);
  v9 = v0[30];
  v10 = v0[26];
  v11 = v0[27];
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[17];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2227101E4()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  (*(v0[22] + 8))(v0[23], v0[21]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[33];
  if (qword_2813141B8 != -1)
  {
    swift_once();
  }

  v6 = v0[16];
  v5 = v0[17];
  v23 = v0[15];
  v7 = sub_222738F6C();
  __swift_project_value_buffer(v7, qword_2813141C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v11 = v0[6];
  v12 = v0[7];
  v0[5] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v11, v12);
  sub_22273816C();
  sub_222660468((v0 + 2), &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  v14 = v4;
  v23(0, 0, v4);

  v15 = v0[30];
  v16 = v0[26];
  v17 = v0[27];
  v18 = v0[23];
  v19 = v0[20];
  v20 = v0[17];

  v21 = v0[1];

  return v21();
}

void sub_222710580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_22273916C();
    if (a3)
    {
LABEL_3:
      v7 = sub_22273726C();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

unint64_t sub_222710688(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013520, &qword_222742590);
    v3 = sub_222739A6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22266110C(v4, &v13, &qword_27D013250, &unk_222741780);
      v5 = v13;
      v6 = v14;
      result = sub_222688818(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_22269457C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2227107B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_22273793C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a2, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277CEC0D8])
  {
    (*(v4 + 8))(v7, v3);
    v9 = 1;
    goto LABEL_8;
  }

  if (v8 == *MEMORY[0x277CEC098])
  {
    (*(v4 + 8))(v7, v3);
LABEL_5:
    v9 = 0;
    goto LABEL_8;
  }

  if (v8 != *MEMORY[0x277CEC0C0])
  {
    if (v8 != *MEMORY[0x277CEC0A8] && v8 != *MEMORY[0x277CEC0B0])
    {
      (*(v4 + 8))(v7, v3);
      return 1;
    }

    goto LABEL_5;
  }

  (*(v4 + 96))(v7, v3);
  v10 = sub_22273786C();
  (*(*(v10 - 8) + 8))(v7, v10);
  v9 = 3;
LABEL_8:
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    swift_unknownObjectRetain();
    v13 = [v12 capabilities];
    if (v13)
    {
      v14 = v13;
      v15 = *(sub_22273937C() + 16);

      if (v15)
      {
        v16 = [objc_opt_self() isCapableOfAction:v9 capabilities:v14];
        swift_unknownObjectRelease();

        return v16;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 1;
}

uint64_t sub_222710A70(uint64_t a1)
{
  v4 = v1[3];
  v13 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[11];
  v8 = v1[12];
  v10 = v1[13];
  v9 = v1[14];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22266BE24;

  return sub_22270F884(a1, v13, v4, v5, v6, (v1 + 6), v7, v8);
}

uint64_t sub_222710B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_222710BB0(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_22270EFD0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_222710C00(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  return sub_22270F1EC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_222710C10(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_22270E4A8(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t objectdestroy_24Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_222710C5C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return sub_22270E6C4(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t sub_222710C68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[21];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_222660228;

  return sub_22270B900(a1, v4, v5, (v1 + 4), (v1 + 9), v6, v7, (v1 + 16));
}

uint64_t sub_222710D48(uint64_t a1)
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

  return sub_2226D469C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_222710E44(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22266BE24;

  return sub_22270D3F0(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_222710F84(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012F70, &unk_222741260) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_22266BE24;

  return sub_22270D860(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2227110C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22271112C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22271118C()
{
  result = qword_281312B58;
  if (!qword_281312B58)
  {
    sub_22262E364(255, &qword_281312B70, off_2784B05F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312B58);
  }

  return result;
}

uint64_t sub_2227111F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22266BE24;

  return sub_222707D18(a1, v4, v5, v7);
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2227112F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_222660228;

  return sub_2227088DC(a1, v4, v5, v7);
}

uint64_t sub_2227113C8(uint64_t a1)
{
  v2 = v1;
  v52 = sub_2227377AC();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_222737C2C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2227377BC();
  v53 = *(v50 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v50);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = sub_22273984C();
  }

  else
  {
    v14 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v14)
  {
    v63 = MEMORY[0x277D84F90];
    sub_2226AE7A8(0, v14 & ~(v14 >> 63), 0);
    v58 = v63;
    if (v56)
    {
      result = sub_2227397FC();
    }

    else
    {
      v17 = -1 << *(a1 + 32);
      result = sub_2227397CC();
      v16 = *(a1 + 36);
    }

    v60 = result;
    v61 = v16;
    v62 = v56 != 0;
    if ((v14 & 0x8000000000000000) == 0)
    {
      v49 = v13;
      v18 = 0;
      v47 = v53 + 32;
      v48 = (v4 + 104);
      v46 = *MEMORY[0x277CEBFE8];
      v44 = a1 + 56;
      v19 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v19 = a1;
      }

      v45 = v19;
      v43 = a1 + 64;
      v54 = v10;
      v55 = a1;
      while (v18 < v14)
      {
        if (__OFADD__(v18++, 1))
        {
          goto LABEL_41;
        }

        v22 = v60;
        v23 = v61;
        v24 = v62;
        sub_222723910(v60, v61, v62, a1);
        v26 = v25;
        [v25 int64value];
        sub_222737C1C();
        if (v2)
        {

          sub_2226A5ADC(v22, v23, v24);
        }

        v57 = 0;
        (*v48)(v51, v46, v52);
        v27 = v49;
        sub_22273778C();

        v28 = v58;
        v63 = v58;
        v30 = *(v58 + 16);
        v29 = *(v58 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_2226AE7A8(v29 > 1, v30 + 1, 1);
          v28 = v63;
        }

        *(v28 + 16) = v30 + 1;
        v31 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v58 = v28;
        result = (*(v53 + 32))(v28 + v31 + *(v53 + 72) * v30, v27, v50);
        if (v56)
        {
          a1 = v55;
          if (!v24)
          {
            goto LABEL_46;
          }

          v32 = sub_22273981C();
          v2 = v57;
          if (v32)
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014598, &qword_2227456F8);
          v20 = sub_2227394EC();
          sub_22273989C();
          result = v20(v59, 0);
          if (v18 == v14)
          {
LABEL_38:
            sub_2226A5ADC(v60, v61, v62);
            return v58;
          }
        }

        else
        {
          a1 = v55;
          if (v24)
          {
            goto LABEL_47;
          }

          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          v33 = 1 << *(v55 + 32);
          if (v22 >= v33)
          {
            goto LABEL_42;
          }

          v34 = v22 >> 6;
          v35 = *(v44 + 8 * (v22 >> 6));
          if (((v35 >> v22) & 1) == 0)
          {
            goto LABEL_43;
          }

          if (*(v55 + 36) != v23)
          {
            goto LABEL_44;
          }

          v36 = v35 & (-2 << (v22 & 0x3F));
          if (v36)
          {
            v33 = __clz(__rbit64(v36)) | v22 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v37 = v34 << 6;
            v38 = v34 + 1;
            v39 = (v43 + 8 * v34);
            while (v38 < (v33 + 63) >> 6)
            {
              v41 = *v39++;
              v40 = v41;
              v37 += 64;
              ++v38;
              if (v41)
              {
                result = sub_2226A5ADC(v22, v23, 0);
                v33 = __clz(__rbit64(v40)) + v37;
                goto LABEL_34;
              }
            }

            result = sub_2226A5ADC(v22, v23, 0);
LABEL_34:
            a1 = v55;
          }

          v42 = *(a1 + 36);
          v60 = v33;
          v61 = v42;
          v62 = 0;
          v2 = v57;
          if (v18 == v14)
          {
            goto LABEL_38;
          }
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  return result;
}

void sub_22271191C(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22273984C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2226AE80C(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_2227397FC();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_2227397CC();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_222723910(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 stringValue];
        v15 = sub_22273919C();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2226AE80C((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_22273981C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014598, &qword_2227456F8);
          v7 = sub_2227394EC();
          sub_22273989C();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_2226A5ADC(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_2226A5ADC(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_2226A5ADC(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_222711C84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222711D10;

  return sub_2226A18B0();
}

uint64_t sub_222711D10(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v4 = *v1;
  *(*v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_222711E10, 0, 0);
}

uint64_t sub_222711E10()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1) == 0xD000000000000012 && 0x8000000222747B00 == *v3;
      if (!v4 && (sub_222739B4C() & 1) == 0)
      {
        v5 = 1;
        goto LABEL_11;
      }

      v3 += 2;
      --v2;
    }

    while (v2);
    v5 = 0;
LABEL_11:
    v6 = *(v0 + 24);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v5);
}

id sub_222711EF0(uint64_t a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F0, &unk_222745700);
  v32 = *(v34 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - v3;
  v38 = sub_22273823C();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v38);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v7;
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v9;
  v35 = a1;
  v10 = sub_2226B37F0();
  v11 = v10;
  v12 = v10 + 56;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 56);
  v16 = (v13 + 63) >> 6;

  for (i = 0; v15; result = [objc_opt_self() jsCallDidBeginWithTag_])
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      sub_22273822C();
      v21 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
      v40 = type metadata accessor for JSInitFailureObserver();
      v41 = sub_222724184(qword_281313340, type metadata accessor for JSInitFailureObserver);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
      sub_2226D97C4(v36 + v21, boxed_opaque_existential_1);
      v23 = v31;
      sub_22273821C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
      v24 = v37;
      sub_22273820C();
      (*(v32 + 8))(v23, v34);
      v25 = *(v4 + 8);
      v26 = v38;
      v25(v8, v38);
      __swift_destroy_boxed_opaque_existential_1(v39);
      sub_2226D7BBC(v35);
      (*(v4 + 16))(v8, v24, v26);
      v27 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = v11;
      (*(v4 + 32))(v28 + v27, v8, v26);
      v40 = sub_22273872C();
      v41 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v39);
      sub_22273871C();
      sub_22273875C();
      v29 = sub_222738E6C();

      v25(v24, v26);
      __swift_destroy_boxed_opaque_existential_1(v39);
      return v29;
    }

    v15 = *(v12 + 8 * v19);
    ++i;
    if (v15)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_222712368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v42 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F0, &unk_222745700);
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v35 = &v34 - v7;
  v43 = sub_22273823C();
  v8 = *(v43 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v43);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v11;
  MEMORY[0x28223BE20](v10);
  v41 = &v34 - v13;
  v39 = a1;
  v14 = sub_2226B37F0();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;

  for (i = 0; v19; result = [objc_opt_self() jsCallDidBeginWithTag_])
  {
    v23 = i;
LABEL_9:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
  }

  while (1)
  {
    v23 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      sub_22273822C();
      v25 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit14JSStackManager_diagnostics;
      v48 = type metadata accessor for JSInitFailureObserver();
      v49 = sub_222724184(qword_281313340, type metadata accessor for JSInitFailureObserver);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
      sub_2226D97C4(v40 + v25, boxed_opaque_existential_1);
      v27 = v35;
      sub_22273821C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
      v28 = v41;
      sub_22273820C();
      (*(v36 + 8))(v27, v38);
      v29 = *(v8 + 8);
      v30 = v43;
      v29(v12, v43);
      __swift_destroy_boxed_opaque_existential_1(v47);
      sub_2226D7BBC(v39);
      (*(v8 + 16))(v12, v28, v30);
      v31 = (*(v8 + 80) + 24) & ~*(v8 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = v15;
      (*(v8 + 32))(v32 + v31, v12, v30);
      v48 = sub_22273872C();
      v49 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(v47);
      sub_22273871C();
      __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
      v33 = sub_222738E6C();

      v29(v28, v30);
      __swift_destroy_boxed_opaque_existential_1(v47);
      return v33;
    }

    v19 = *(v16 + 8 * v23);
    ++i;
    if (v19)
    {
      i = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_222712778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v44 = a4;
  v39 = a1;
  v5 = sub_22273823C();
  v41 = *(v5 - 8);
  v42 = v5;
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227380FC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145A8, &qword_222745718);
  v36 = *(v11 - 8);
  v37 = v11;
  v12 = *(v36 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_9:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(*(a2 + 48) + ((v22 << 9) | (8 * v23)));
      v25 = objc_opt_self();
      [v25 jsCallDidEndWithTag_];
      result = [v25 rootViewModelParseDidBeginWithTag_];
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  sub_22273875C();
  sub_22273811C();
  v26 = v37;
  sub_2227383FC();
  (*(v36 + 8))(v14, v26);
  (*(v41 + 16))(v40, v43, v42);
  v27 = v45;
  result = sub_2227386FC();
  if (v27)
  {
    return result;
  }

  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a2 + 56);
  v31 = (v28 + 63) >> 6;

  for (i = 0; v30; result = [objc_opt_self() rootViewModelParseDidEndWithTag_])
  {
    v33 = i;
LABEL_20:
    v34 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
  }

  while (1)
  {
    v33 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v33 >= v31)
    {
    }

    v30 = *(v15 + 8 * v33);
    ++i;
    if (v30)
    {
      i = v33;
      goto LABEL_20;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

id sub_222712B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v40 = a1;
  v48 = sub_22273823C();
  v47 = *(v48 - 8);
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2227380FC();
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145A8, &qword_222745718);
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v13 = a2 + 56;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 56);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_9:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = *(*(a2 + 48) + ((v20 << 9) | (8 * v21)));
      v23 = objc_opt_self();
      [v23 jsCallDidEndWithTag_];
      result = [v23 rootViewModelParseDidBeginWithTag_];
      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_9;
    }
  }

  sub_22273811C();
  v24 = v41;
  v25 = v39;
  sub_2227383FC();
  (*(v38 + 8))(v12, v25);
  v26 = v47;
  v27 = v43;
  v28 = v48;
  (*(v47 + 16))(v43, v42, v48);
  type metadata accessor for ASCLockupContainer();
  v29 = v46;
  v30 = sub_2226F5D84(v24, v27);
  if (!v29)
  {
    (*(v26 + 8))(v27, v28);
    (*(v44 + 8))(v24, v45);
    v31 = 1 << *(a2 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(a2 + 56);
    v34 = (v31 + 63) >> 6;

    for (i = 0; v33; result = [objc_opt_self() rootViewModelParseDidEndWithTag_])
    {
      v36 = i;
LABEL_21:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
    }

    while (1)
    {
      v36 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      if (v36 >= v34)
      {

        return v30;
      }

      v33 = *(v13 + 8 * v36);
      ++i;
      if (v33)
      {
        i = v36;
        goto LABEL_21;
      }
    }
  }

  (*(v26 + 8))(v27, v28);
  (*(v44 + 8))(v24, v45);
  return v30;
}

id sub_222712F64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5, uint64_t (*a6)(char *, char *))
{
  v52 = a6;
  v49 = a5;
  v47 = a4;
  v45 = a3;
  v43 = a1;
  v54 = sub_22273823C();
  v53 = *(v54 - 8);
  v7 = *(v53 + 64);
  MEMORY[0x28223BE20](v54);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_2227380FC();
  v48 = *(v50 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v44 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145A8, &qword_222745718);
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_9:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = *(*(a2 + 48) + ((v22 << 9) | (8 * v23)));
      v25 = objc_opt_self();
      [v25 jsCallDidEndWithTag_];
      result = [v25 rootViewModelParseDidBeginWithTag_];
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    if (v22 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_9;
    }
  }

  sub_22273811C();
  v26 = v44;
  v27 = v42;
  sub_2227383FC();
  (*(v41 + 8))(v14, v27);
  v28 = v53;
  v29 = v46;
  v30 = v54;
  (*(v53 + 16))(v46, v45, v54);
  sub_22262E364(0, v47, v49);
  v31 = v51;
  v32 = v52(v26, v29);
  if (!v31)
  {
    (*(v28 + 8))(v29, v30);
    (*(v48 + 8))(v26, v50);
    v33 = 1 << *(a2 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a2 + 56);
    v36 = (v33 + 63) >> 6;

    for (i = 0; v35; result = [objc_opt_self() rootViewModelParseDidEndWithTag_])
    {
      v38 = i;
LABEL_21:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
    }

    while (1)
    {
      v38 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_26;
      }

      if (v38 >= v36)
      {

        return v32;
      }

      v35 = *(v15 + 8 * v38);
      ++i;
      if (v35)
      {
        i = v38;
        goto LABEL_21;
      }
    }
  }

  (*(v28 + 8))(v29, v30);
  (*(v48 + 8))(v26, v50);
  return v32;
}

void sub_2227133C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v110 = a3;
  v112 = v4;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = &v95 - v9;
  v10 = sub_222736FEC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_222736FFC();
  v113 = *(v12 - 8);
  v13 = *(v113 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227440C0;
  *(inited + 32) = [a1 id];
  sub_2226DDB10(inited);
  v111 = v17;
  swift_setDeallocating();
  v18 = *(inited + 16);
  swift_arrayDestroy();
  v19 = [a1 kind];
  v20 = [a1 context];
  v21 = [a1 mediaQueryParams];
  if (v21)
  {
    v22 = v21;
    v106 = sub_22273910C();
  }

  else
  {
    v106 = 0;
  }

  v23 = [a1 clientID];
  if (v23)
  {
    v24 = v23;
    v101 = sub_22273919C();
    v26 = v25;
  }

  else
  {
    v101 = 0;
    v26 = 0;
  }

  v102 = [a1 enableAppDistribution];
  v27 = [a1 platformOverride];
  v28 = [a1 countryCodeOverride];
  v107 = v27;
  if (v28)
  {
    v29 = v28;
    v100 = sub_22273919C();
    v105 = v30;
  }

  else
  {
    v100 = 0;
    v105 = 0;
  }

  v108 = v19;
  v31 = sub_22273919C();
  v33 = v32;
  v34 = sub_22273919C();
  v109 = a2;
  if (v31 == v34 && v33 == v35)
  {
  }

  else
  {
    v36 = sub_222739B4C();

    if ((v36 & 1) == 0)
    {

      v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
      sub_222736FDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_2227412F0;
      v48 = *MEMORY[0x277CCA450];
      *(v47 + 32) = sub_22273919C();
      *(v47 + 40) = v49;
      *atoken.val = 0;
      *&atoken.val[2] = 0xE000000000000000;
      sub_22273991C();

      strcpy(&atoken, "Lockup kind ");
      BYTE1(atoken.val[3]) = 0;
      HIWORD(atoken.val[3]) = -5120;
      v50 = v108;
      v51 = sub_22273919C();
      MEMORY[0x223DBE5D0](v51);

      MEMORY[0x223DBE5D0](0xD000000000000018, 0x800000022274E5A0);
      v52 = *atoken.val;
      v53 = *&atoken.val[2];
      *(v47 + 72) = MEMORY[0x277D837D0];
      *(v47 + 48) = v52;
      *(v47 + 56) = v53;
      sub_222710688(v47);
      swift_setDeallocating();
      sub_222660468(v47 + 32, &qword_27D013250, &unk_222741780);
      sub_222724184(&qword_27D014560, MEMORY[0x277CC8620]);
      sub_22273725C();
      sub_222736FCC();
      (*(v113 + 8))(v15, v12);
      sub_222738E9C();

LABEL_36:
      v89 = v110;
      v118 = sub_22273872C();
      v119 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v117);
      sub_22273871C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
      sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730);
      sub_222738EDC();

      __swift_destroy_boxed_opaque_existential_1(&v117);
      v90 = swift_allocObject();
      *(v90 + 16) = v109;
      *(v90 + 24) = v89;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_222725070;
      *(v91 + 24) = v90;
      *(v91 + 32) = "getLockupWith(_:withReplyHandler:)";
      *(v91 + 40) = 34;
      *(v91 + 48) = 2;
      v92 = swift_allocObject();
      *(v92 + 16) = sub_222725070;
      *(v92 + 24) = v90;
      *(v92 + 32) = "getLockupWith(_:withReplyHandler:)";
      *(v92 + 40) = 34;
      *(v92 + 48) = 2;
      v93 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
      swift_retain_n();

      v94 = sub_22273955C();
      v118 = v93;
      v119 = MEMORY[0x277D225C0];
      *&v117 = v94;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v117);
      return;
    }
  }

  v37 = v112 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service;
  __swift_project_boxed_opaque_existential_1((v112 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v112 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
  off_2835CACE8();
  v38 = MEMORY[0x277D84FA0];
  v116 = MEMORY[0x277D84FA0];
  v39 = objc_opt_self();
  v40 = [v39 currentConnection];
  if (!v40)
  {
    v113 = v38;
LABEL_35:
    v64 = [v39 currentConnection];
    v65 = v20;
    v66 = sub_2226A9E18(v64, v101, v26, v65);
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher;
    v74 = v112;
    sub_22266BCCC(v112 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController, &v117);
    sub_22266BCCC(v74 + v73, v115);
    sub_22266BCCC(v37, v114);
    v75 = swift_allocObject();
    sub_222634290(&v117, v75 + 16);
    *(v75 + 56) = v111;
    *(v75 + 64) = v102;
    v76 = v108;
    *(v75 + 72) = v74;
    *(v75 + 80) = v76;
    v77 = v106;
    *(v75 + 88) = v65;
    *(v75 + 96) = v77;
    *(v75 + 104) = v113;
    *(v75 + 112) = v66;
    *(v75 + 120) = v68;
    *(v75 + 128) = v70;
    v78 = v100;
    *(v75 + 136) = v72;
    *(v75 + 144) = v78;
    *(v75 + 152) = v105;
    sub_222634290(v115, v75 + 160);
    sub_222634290(v114, v75 + 200);
    v79 = v107;
    v80 = ObjectType;
    *(v75 + 240) = v107;
    *(v75 + 248) = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);

    v81 = v65;
    v82 = v74;
    v83 = v76;
    v84 = v79;
    v85 = sub_222738F2C();
    v86 = sub_22273946C();
    v87 = v104;
    (*(*(v86 - 8) + 56))(v104, 1, 1, v86);
    v88 = swift_allocObject();
    v88[2] = 0;
    v88[3] = 0;
    v88[4] = &unk_222745840;
    v88[5] = v75;
    v88[6] = v85;

    sub_2226D4E54(0, 0, v87, &unk_222745848, v88);

    goto LABEL_36;
  }

  v96 = v39;
  v97 = v37;
  v41 = v40;
  [v40 auditToken];
  LODWORD(v113) = audit_token_to_pid(&atoken);

  v42 = v111;
  v98 = v26;
  v99 = v20;
  if ((v111 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22273980C();
    sub_22262E364(0, &qword_281312B70, off_2784B05F0);
    sub_2226AF270(&qword_281312B58, &qword_281312B70, off_2784B05F0);
    sub_2227394FC();
    v42 = *atoken.val;
    v43 = *&atoken.val[2];
    v44 = *&atoken.val[4];
    v45 = *&atoken.val[6];
    v46 = v121;
  }

  else
  {
    v54 = -1 << *(v111 + 32);
    v43 = v111 + 56;
    v44 = ~v54;
    v55 = -v54;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v46 = v56 & *(v111 + 56);

    v45 = 0;
  }

  v95 = v44;
  if (v42 < 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v57 = v45;
    v58 = v46;
    v59 = v45;
    if (!v46)
    {
      break;
    }

LABEL_28:
    v60 = (v58 - 1) & v58;
    v61 = *(*(v42 + 48) + ((v59 << 9) | (8 * __clz(__rbit64(v58)))));
    if (!v61)
    {
LABEL_34:
      sub_2226342B0();
      v113 = v116;
      v26 = v98;
      v20 = v99;
      v39 = v96;
      v37 = v97;
      goto LABEL_35;
    }

    while (1)
    {
      v63 = ASCSignpostTagFromIDInProcess(v61, v113);
      sub_22268E834(&v117, v63);

      v45 = v59;
      v46 = v60;
      if ((v42 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_30:
      v62 = sub_22273987C();
      if (v62)
      {
        *&v115[0] = v62;
        sub_22262E364(0, &qword_281312B70, off_2784B05F0);
        swift_dynamicCast();
        v61 = v117;
        v59 = v45;
        v60 = v46;
        if (v117)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v59 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v59 >= ((v44 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v58 = *(v43 + 8 * v59);
    ++v57;
    if (v58)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

uint64_t sub_222713FDC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *a1;
    }

    result = sub_22273984C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    sub_2227247C4();
    swift_allocError();
    *v5 = 0;
    return sub_222738E9C();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DBEC70](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    return sub_222738EAC();
  }

  __break(1u);
  return result;
}

void sub_2227140F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v110 = a2;
  v111 = a3;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v94 - v8;
  v10 = sub_222736FEC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v97 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222736FFC();
  v114 = *(v13 - 8);
  v14 = *(v114 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 ids];
  v18 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  sub_2226AF270(&qword_281312B58, &qword_281312B70, off_2784B05F0);
  v112 = v18;
  v113 = sub_2227394CC();

  v19 = [a1 kind];
  v106 = [a1 context];
  v20 = [a1 mediaQueryParams];
  if (v20)
  {
    v21 = v20;
    v105 = sub_22273910C();
  }

  else
  {
    v105 = 0;
  }

  v22 = [a1 clientID];
  if (v22)
  {
    v23 = v22;
    v100 = sub_22273919C();
    v104 = v24;
  }

  else
  {
    v100 = 0;
    v104 = 0;
  }

  v101 = [a1 enableAppDistribution];
  v107 = [a1 platformOverride];
  v25 = [a1 countryCodeOverride];
  v109 = a1;
  if (v25)
  {
    v26 = v25;
    v99 = sub_22273919C();
    v103 = v27;
  }

  else
  {
    v99 = 0;
    v103 = 0;
  }

  v108 = v19;
  v28 = sub_22273919C();
  v30 = v29;
  if (v28 == sub_22273919C() && v30 == v31)
  {
  }

  else
  {
    v32 = sub_222739B4C();

    if ((v32 & 1) == 0)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
      sub_222736FDC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      v44 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22273919C();
      *(inited + 40) = v45;
      *atoken.val = 0;
      *&atoken.val[2] = 0xE000000000000000;
      sub_22273991C();

      strcpy(&atoken, "Lockup kind ");
      BYTE1(atoken.val[3]) = 0;
      HIWORD(atoken.val[3]) = -5120;
      v46 = v108;
      v47 = sub_22273919C();
      MEMORY[0x223DBE5D0](v47);
      v48 = v110;

      MEMORY[0x223DBE5D0](0xD000000000000018, 0x800000022274E5A0);
      v49 = *atoken.val;
      v50 = *&atoken.val[2];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v49;
      *(inited + 56) = v50;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
      sub_222724184(&qword_27D014560, MEMORY[0x277CC8620]);
      sub_22273725C();
      sub_222736FCC();
      (*(v114 + 8))(v16, v13);
      sub_222738E9C();

LABEL_36:
      v86 = swift_allocObject();
      v87 = v109;
      *(v86 + 16) = v109;
      v119 = sub_22273872C();
      v120 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v118);
      v88 = v87;
      sub_22273871C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014610, &qword_2227457D8);
      sub_222738E6C();

      __swift_destroy_boxed_opaque_existential_1(&v118);
      v89 = swift_allocObject();
      *(v89 + 16) = v48;
      *(v89 + 24) = v111;
      v90 = swift_allocObject();
      *(v90 + 16) = sub_22272483C;
      *(v90 + 24) = v89;
      *(v90 + 32) = "getLockupsWith(_:withReplyHandler:)";
      *(v90 + 40) = 35;
      *(v90 + 48) = 2;
      v91 = swift_allocObject();
      *(v91 + 16) = sub_22272483C;
      *(v91 + 24) = v89;
      *(v91 + 32) = "getLockupsWith(_:withReplyHandler:)";
      *(v91 + 40) = 35;
      *(v91 + 48) = 2;
      v92 = sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
      swift_retain_n();

      v93 = sub_22273955C();
      v119 = v92;
      v120 = MEMORY[0x277D225C0];
      *&v118 = v93;
      sub_222738E8C();

      __swift_destroy_boxed_opaque_existential_1(&v118);
      return;
    }
  }

  v97 = v4;
  v33 = &v4[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service];
  __swift_project_boxed_opaque_existential_1(&v4[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service], *&v4[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24]);
  off_2835CACE8();
  v34 = MEMORY[0x277D84FA0];
  v117 = MEMORY[0x277D84FA0];
  v35 = objc_opt_self();
  v36 = [v35 currentConnection];
  v98 = v9;
  if (!v36)
  {
    v114 = v34;
LABEL_35:
    v61 = [v35 currentConnection];
    v62 = v106;
    v63 = sub_2226A9E18(v61, v100, v104, v62);
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher;
    v71 = v97;
    sub_22266BCCC(&v97[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appStateController], &v118);
    sub_22266BCCC(v71 + v70, v116);
    sub_22266BCCC(v33, v115);
    v72 = swift_allocObject();
    sub_222634290(&v118, v72 + 16);
    *(v72 + 56) = v113;
    *(v72 + 64) = v101;
    v73 = v108;
    *(v72 + 72) = v71;
    *(v72 + 80) = v73;
    v74 = v105;
    *(v72 + 88) = v62;
    *(v72 + 96) = v74;
    *(v72 + 104) = v114;
    *(v72 + 112) = v63;
    *(v72 + 120) = v65;
    *(v72 + 128) = v67;
    v75 = v99;
    *(v72 + 136) = v69;
    *(v72 + 144) = v75;
    *(v72 + 152) = v103;
    sub_222634290(v116, v72 + 160);
    sub_222634290(v115, v72 + 200);
    v76 = v107;
    v77 = ObjectType;
    *(v72 + 240) = v107;
    *(v72 + 248) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);

    v78 = v62;
    v79 = v71;
    v80 = v73;
    v81 = v76;
    v82 = sub_222738F2C();
    v83 = sub_22273946C();
    v84 = v98;
    (*(*(v83 - 8) + 56))(v98, 1, 1, v83);
    v85 = swift_allocObject();
    v85[2] = 0;
    v85[3] = 0;
    v85[4] = &unk_2227457E8;
    v85[5] = v72;
    v85[6] = v82;

    sub_2226D4E54(0, 0, v84, &unk_2227457F0, v85);

    v48 = v110;
    goto LABEL_36;
  }

  v37 = v36;
  [v36 auditToken];
  LODWORD(v114) = audit_token_to_pid(&atoken);

  v38 = v113;
  v95 = v35;
  v96 = v33;
  if ((v113 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22273980C();
    sub_2227394FC();
    v38 = *atoken.val;
    v39 = *&atoken.val[2];
    v40 = *&atoken.val[4];
    v41 = *&atoken.val[6];
    v42 = v122;
  }

  else
  {
    v51 = -1 << *(v113 + 32);
    v39 = v113 + 56;
    v40 = ~v51;
    v52 = -v51;
    if (v52 < 64)
    {
      v53 = ~(-1 << v52);
    }

    else
    {
      v53 = -1;
    }

    v42 = v53 & *(v113 + 56);

    v41 = 0;
  }

  v94[1] = v40;
  if (v38 < 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v54 = v41;
    v55 = v42;
    v56 = v41;
    if (!v42)
    {
      break;
    }

LABEL_28:
    v57 = (v55 - 1) & v55;
    v58 = *(*(v38 + 48) + ((v56 << 9) | (8 * __clz(__rbit64(v55)))));
    if (!v58)
    {
LABEL_34:
      sub_2226342B0();
      v114 = v117;
      v35 = v95;
      v33 = v96;
      goto LABEL_35;
    }

    while (1)
    {
      v60 = ASCSignpostTagFromIDInProcess(v58, v114);
      sub_22268E834(&v118, v60);

      v41 = v56;
      v42 = v57;
      if ((v38 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_30:
      v59 = sub_22273987C();
      if (v59)
      {
        *&v116[0] = v59;
        swift_dynamicCast();
        v58 = v118;
        v56 = v41;
        v57 = v42;
        if (v118)
        {
          continue;
        }
      }

      goto LABEL_34;
    }
  }

  while (1)
  {
    v56 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v56 >= ((v40 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v55 = *(v39 + 8 * v56);
    ++v54;
    if (v55)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
}

void sub_222714CA4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*a1 >> 62)
  {
LABEL_38:
    v5 = sub_22273984C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v45 = v4 & 0xC000000000000001;
      v42 = v4 & 0xFFFFFFFFFFFFFF8;
      v7 = MEMORY[0x277D84F98];
      v43 = v5;
      v44 = v4;
      while (1)
      {
        if (v45)
        {
          v10 = MEMORY[0x223DBEC70](v6, v4);
        }

        else
        {
          if (v6 >= *(v42 + 16))
          {
            goto LABEL_37;
          }

          v10 = *(v4 + 8 * v6 + 32);
        }

        v11 = v10;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v46 = v6 + 1;
        v12 = [v10 id];
        v13 = [a2 kind];
        v14 = [a2 context];
        v15 = [objc_allocWithZone(ASCLockupRequest) initWithID:v12 kind:v13 context:v14];

        v16 = [a2 clientID];
        v17 = [v15 lockupRequestWithClientID_];

        v18 = [a2 mediaQueryParams];
        if (v18)
        {
          v19 = v18;
          sub_22273910C();

          v20 = sub_2227390FC();
        }

        else
        {
          v20 = 0;
        }

        v21 = [v17 lockupRequestWithMediaQueryParams_];

        v22 = [a2 platformOverride];
        v23 = [v21 lockupRequestWithPlatformOverride_];

        v24 = [a2 countryCodeOverride];
        v4 = [v23 lockupRequestWithCountryCodeOverride_];

        if ([a2 enableAppDistribution])
        {
          v25 = [v4 lockupRequestWithAppDistributionEnabled];

          v4 = v25;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          if (v7 >= 0)
          {
            v7 &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v26 = v11;
          v27 = sub_22273984C();
          if (__OFADD__(v27, 1))
          {
            goto LABEL_35;
          }

          v7 = sub_2227236C4(v7, v27 + 1);
        }

        else
        {
          v28 = v11;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = sub_2226889F8(v4);
        v32 = *(v7 + 16);
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_34;
        }

        v35 = v30;
        if (*(v7 + 24) >= v34)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v30)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_22268D358();
            if (v35)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22268ADC8(v34, isUniquelyReferenced_nonNull_native);
          v36 = sub_2226889F8(v4);
          if ((v35 & 1) != (v37 & 1))
          {
            sub_22262E364(0, &unk_281312CF8, off_2784B06D8);
            sub_222739B8C();
            __break(1u);
            return;
          }

          v31 = v36;
          if (v35)
          {
LABEL_4:
            v8 = *(v7 + 56);
            v9 = *(v8 + 8 * v31);
            *(v8 + 8 * v31) = v11;

            goto LABEL_5;
          }
        }

        *(v7 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        *(*(v7 + 48) + 8 * v31) = v4;
        *(*(v7 + 56) + 8 * v31) = v11;

        v38 = *(v7 + 16);
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_36;
        }

        *(v7 + 16) = v40;
LABEL_5:
        ++v6;
        v4 = v44;
        if (v46 == v43)
        {
          goto LABEL_40;
        }
      }
    }
  }

  v7 = MEMORY[0x277D84F98];
LABEL_40:
  *a3 = v7;
}

void sub_222715168(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_22262E364(0, &unk_281312CF8, off_2784B06D8);
    sub_22262E364(0, &qword_281312B50, off_2784B0650);
    sub_2226AF270(&unk_281312CE8, &unk_281312CF8, off_2784B06D8);
    v5 = sub_2227390FC();
  }

  if (a2)
  {
    v6 = sub_22273726C();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_222715268(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 832) = v21;
  *(v8 + 824) = v20;
  *(v8 + 808) = v19;
  *(v8 + 792) = v18;
  *(v8 + 776) = v17;
  *(v8 + 760) = v16;
  *(v8 + 752) = a8;
  *(v8 + 744) = a7;
  *(v8 + 736) = a6;
  *(v8 + 728) = a5;
  *(v8 + 1136) = a4;
  *(v8 + 720) = a3;
  *(v8 + 712) = a2;
  *(v8 + 704) = a1;
  v9 = *(*(sub_222738DAC() - 8) + 64) + 15;
  *(v8 + 840) = swift_task_alloc();
  v10 = sub_22273903C();
  *(v8 + 848) = v10;
  v11 = *(v10 - 8);
  *(v8 + 856) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  *(v8 + 896) = swift_task_alloc();
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  *(v8 + 920) = swift_task_alloc();
  *(v8 + 928) = swift_task_alloc();
  *(v8 + 936) = swift_task_alloc();
  *(v8 + 944) = swift_task_alloc();
  *(v8 + 952) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  *(v8 + 960) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222715464, 0, 0);
}

uint64_t sub_222715464()
{
  v34 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = sub_2227113C8(v1);
  *(v0 + 968) = 0;
  v5 = *(v0 + 1136);
  sub_2226AF45C(v4);

  sub_22273797C();

  if (v5 == 1)
  {
    v6 = swift_task_alloc();
    *(v0 + 976) = v6;
    *v6 = v0;
    v6[1] = sub_2227158E8;
    v7 = *(v0 + 728);

    return sub_222717F58();
  }

  v9 = *(v0 + 792);
  v10 = *(v0 + 784);
  v11 = *(v0 + 776);
  v12 = *(v0 + 768);
  v13 = *(v0 + 760);
  v31 = *(v0 + 968);
  v32 = *(v0 + 752);
  v14 = *(v0 + 744);
  v15 = *(v0 + 736);
  v16 = *(v0 + 720);
  *(v0 + 1000) = __swift_project_boxed_opaque_existential_1(*(v0 + 816), *(*(v0 + 816) + 24));
  v17 = sub_2226A6000(v15, v14, v13, v12, v11, v10, v9);
  *(v0 + 1008) = v17;
  v18 = v16;
  v19 = v31;
  sub_22271191C(v18);
  v20 = sub_22273936C();

  [v17 setItemIdentifiers_];

  if (v32)
  {
    v21 = *(v0 + 752);

    v22 = [v17 additionalQueryParams];
    if (v22)
    {
      v23 = v22;
      v24 = sub_22273910C();
    }

    else
    {
      v24 = sub_222732D1C(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v24;
    sub_222723B9C(v21, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v33);

    if (v31)
    {
    }

    v26 = sub_2227390FC();

    [v17 setAdditionalQueryParams_];

    v19 = 0;
  }

  *(v0 + 1016) = v19;
  v27 = *(v0 + 744);
  v28 = sub_2226A85D8();
  [v17 setAccount_];

  v29 = [v17 type];
  v30 = swift_task_alloc();
  *(v0 + 1024) = v30;
  *v30 = v0;
  v30[1] = sub_222716164;

  return sub_2226A6FB0(v29);
}

uint64_t sub_2227158E8(char a1)
{
  v2 = *(*v1 + 976);
  v4 = *v1;
  *(*v1 + 1137) = a1;

  return MEMORY[0x2822009F8](sub_2227159E8, 0, 0);
}

uint64_t sub_2227159E8()
{
  v38 = v0;
  if (*(v0 + 1137) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 984) = v1;
    *v1 = v0;
    v1[1] = sub_222715D5C;
    v2 = *(v0 + 792);
    v3 = *(v0 + 784);
    v4 = *(v0 + 776);
    v5 = *(v0 + 768);
    v6 = *(v0 + 760);
    v7 = *(v0 + 752);
    v8 = *(v0 + 744);
    v9 = *(v0 + 736);
    v10 = *(v0 + 728);
    v11 = *(v0 + 720);
    v41 = *(v0 + 808);
    v40 = v2;

    return sub_2227188BC(v11, v9, v8, v7, v6, v5, v4, v3);
  }

  v13 = *(v0 + 792);
  v14 = *(v0 + 784);
  v15 = *(v0 + 776);
  v16 = *(v0 + 768);
  v17 = *(v0 + 760);
  v35 = *(v0 + 968);
  v36 = *(v0 + 752);
  v18 = *(v0 + 744);
  v19 = *(v0 + 736);
  v20 = *(v0 + 720);
  *(v0 + 1000) = __swift_project_boxed_opaque_existential_1(*(v0 + 816), *(*(v0 + 816) + 24));
  v21 = sub_2226A6000(v19, v18, v17, v16, v15, v14, v13);
  *(v0 + 1008) = v21;
  v22 = v20;
  v23 = v35;
  sub_22271191C(v22);
  v24 = sub_22273936C();

  [v21 setItemIdentifiers_];

  if (v36)
  {
    v25 = *(v0 + 752);

    v26 = [v21 additionalQueryParams];
    if (v26)
    {
      v27 = v26;
      v28 = sub_22273910C();
    }

    else
    {
      v28 = sub_222732D1C(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v28;
    sub_222723B9C(v25, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v37);

    if (v35)
    {
    }

    v30 = sub_2227390FC();

    [v21 setAdditionalQueryParams_];

    v23 = 0;
  }

  *(v0 + 1016) = v23;
  v31 = *(v0 + 744);
  v32 = sub_2226A85D8();
  [v21 setAccount_];

  v33 = [v21 type];
  v34 = swift_task_alloc();
  *(v0 + 1024) = v34;
  *v34 = v0;
  v34[1] = sub_222716164;

  return sub_2226A6FB0(v33);
}

uint64_t sub_222715D5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 984);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[120];
    v8 = v4[119];
    v9 = v4[118];
    v10 = v4[117];
    v11 = v4[116];
    v12 = v4[115];
    v13 = v4[114];
    v14 = v4[113];
    v15 = v4[112];
    v19 = v4[111];
    v20 = v4[110];
    v21 = v4[109];
    v22 = v4[108];
    v16 = v4[105];

    v17 = *(v6 + 8);

    return v17();
  }

  else
  {
    v4[124] = a1;

    return MEMORY[0x2822009F8](sub_222715F78, 0, 0);
  }
}

uint64_t sub_222715F78()
{
  v1 = *(v0 + 992);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  v4 = sub_22273946C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_22266BCCC(v3, v0 + 256);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  sub_222634290((v0 + 256), (v5 + 5));

  sub_22269994C(0, 0, v2, &unk_222745810, v5);

  v6 = *(v0 + 960);
  v7 = *(v0 + 952);
  v8 = *(v0 + 944);
  v9 = *(v0 + 936);
  v10 = *(v0 + 928);
  v11 = *(v0 + 920);
  v12 = *(v0 + 912);
  v13 = *(v0 + 904);
  v14 = *(v0 + 896);
  v15 = *(v0 + 888);
  v18 = *(v0 + 880);
  v19 = *(v0 + 872);
  v20 = *(v0 + 864);
  v21 = *(v0 + 840);
  **(v0 + 704) = *(v0 + 992);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_222716164(uint64_t a1)
{
  v2 = *(*v1 + 1024);
  v4 = *v1;
  *(*v1 + 1032) = a1;

  return MEMORY[0x2822009F8](sub_222716264, 0, 0);
}

uint64_t sub_222716264()
{
  v22 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1008);

  v3 = [v2 additionalQueryParams];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22273910C();
  }

  else
  {
    v5 = sub_222732D1C(MEMORY[0x277D84F90]);
  }

  v6 = *(v0 + 1032);
  v7 = *(v0 + 1016);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v5;
  sub_222723B9C(v6, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v21);

  if (v7)
  {
  }

  else
  {
    v10 = *(v0 + 1032);
    v11 = *(v0 + 1008);
    v12 = *(v0 + 808);
    v13 = sub_2227390FC();

    [v11 setAdditionalQueryParams_];

    if (v12)
    {
      v14 = *(v0 + 808);
      v15 = *(v0 + 800);
      v16 = sub_22273916C();
    }

    else
    {
      v16 = 0;
    }

    [*(v0 + 1008) setAppDistributionCountryCodeOverride_];

    v17 = swift_task_alloc();
    *(v0 + 1040) = v17;
    *v17 = v0;
    v17[1] = sub_22271646C;
    v18 = *(v0 + 1008);
    v19 = *(v0 + 1000);
    v20 = *(v0 + 760);

    return sub_2226A69BC(v18, v20);
  }
}

uint64_t sub_22271646C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1040);
  v7 = *v2;
  *(v3 + 1048) = a1;
  *(v3 + 1056) = v1;

  if (v1)
  {
    v5 = sub_222717154;
  }

  else
  {
    v5 = sub_222716584;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222716584()
{
  v1 = *(v0 + 744);

  v2 = sub_22273919C();
  v4 = v3;
  if (v2 == sub_22273919C() && v4 == v5)
  {

    goto LABEL_9;
  }

  v7 = sub_222739B4C();

  if (v7)
  {
LABEL_9:
    v33 = *(v0 + 1048);
    v34 = *(v0 + 760);
    v35 = *__swift_project_boxed_opaque_existential_1(*(v0 + 824), *(*(v0 + 824) + 24));
    *(v0 + 1064) = sub_2226FBB60(v33, v34);

    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145B8, &qword_222745730);
    v37 = sub_22262BED4(&qword_281312E38, &qword_27D0145B8, &qword_222745730);
    v38 = *(MEMORY[0x277D22390] + 4);
    v39 = swift_task_alloc();
    *(v0 + 1072) = v39;
    *v39 = v0;
    v39[1] = sub_22271728C;
    v32 = v0 + 696;
    v40 = v36;
    v41 = v37;
    goto LABEL_15;
  }

  v8 = *(v0 + 1136);
  v83 = *__swift_project_boxed_opaque_existential_1(*(v0 + 824), *(*(v0 + 824) + 24));
  if (v8 == 1)
  {
    v80 = *(v0 + 952);
    v74 = *(v0 + 936);
    v71 = *(v0 + 928);
    v69 = *(v0 + 1048);
    v70 = *(v0 + 920);
    v9 = *(v0 + 912);
    v10 = *(v0 + 904);
    v11 = *(v0 + 896);
    v12 = *(v0 + 856);
    v13 = *(v0 + 848);
    v14 = *(v0 + 840);
    v76 = *(v0 + 792);
    v77 = *(v0 + 944);
    v75 = *(v0 + 784);
    v72 = *(v0 + 768);
    v73 = *(v0 + 776);
    v78 = *(v0 + 760);
    v15 = *(v0 + 736);
    sub_222738D9C();
    sub_22273900C();
    v16 = sub_22273919C();
    v17 = MEMORY[0x277D837D0];
    *(v0 + 480) = MEMORY[0x277D837D0];
    v18 = v17;
    *(v0 + 456) = v16;
    *(v0 + 464) = v19;
    sub_222738FEC();
    v20 = *(v12 + 8);
    v20(v11, v13);
    sub_222660468(v0 + 456, &qword_27D0130C0, &unk_2227413B0);
    v21 = sub_22273919C();
    *(v0 + 512) = v18;
    *(v0 + 488) = v21;
    *(v0 + 496) = v22;
    sub_222738FEC();
    v20(v10, v13);
    sub_222660468(v0 + 488, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
    *(v0 + 520) = v69;
    sub_222738FEC();
    v23 = v9;
    v24 = v13;
    v20(v23, v13);
    sub_222660468(v0 + 520, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 552) = 0u;
    *(v0 + 568) = 0u;
    sub_222738FEC();
    v20(v70, v13);
    sub_222660468(v0 + 552, &qword_27D0130C0, &unk_2227413B0);
    v25 = MEMORY[0x277D837D0];
    *(v0 + 608) = MEMORY[0x277D837D0];
    *(v0 + 584) = v72;
    *(v0 + 592) = v73;

    sub_222738FEC();
    v20(v71, v24);
    sub_222660468(v0 + 584, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 640) = v25;
    *(v0 + 616) = v75;
    *(v0 + 624) = v76;

    sub_222738FEC();
    v20(v74, v24);
    sub_222660468(v0 + 616, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 672) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
    *(v0 + 648) = v78;

    sub_222738FEC();
    v20(v77, v24);
    sub_222660468(v0 + 648, &qword_27D0130C0, &unk_2227413B0);
    sub_222712368(v80, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
    v26 = sub_22273872C();
    v27 = MEMORY[0x277D21FB0];
    *(v0 + 160) = v26;
    *(v0 + 168) = v27;
    __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    sub_22273871C();
    type metadata accessor for ASCLockupContainer();
    sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    *(v0 + 200) = v26;
    *(v0 + 208) = v27;
    __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    sub_22273871C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
    *(v0 + 1088) = sub_222738E6C();

    v20(v80, v24);
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
    v29 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8);
    v30 = *(MEMORY[0x277D22390] + 4);
    v31 = swift_task_alloc();
    *(v0 + 1096) = v31;
    *v31 = v0;
    v31[1] = sub_222717708;
    v32 = v0 + 688;
  }

  else
  {
    v42 = *(v0 + 952);
    v43 = *(v0 + 944);
    v44 = *(v0 + 856);
    v45 = *(v0 + 848);
    v46 = *(v0 + 840);
    v79 = *(v0 + 864);
    v81 = *(v0 + 832);
    v47 = *(v0 + 736);
    sub_222738D9C();
    sub_22273900C();
    v48 = sub_22273919C();
    v49 = MEMORY[0x277D837D0];
    *(v0 + 320) = MEMORY[0x277D837D0];
    *(v0 + 296) = v48;
    *(v0 + 304) = v50;
    sub_222738FEC();
    v51 = *(v44 + 8);
    v51(v43, v45);
    sub_222660468(v0 + 296, &qword_27D0130C0, &unk_2227413B0);
    v52 = sub_22273919C();
    *(v0 + 352) = v49;
    *(v0 + 328) = v52;
    *(v0 + 336) = v53;
    sub_222738FEC();
    v51(v42, v45);
    sub_222660468(v0 + 328, &qword_27D0130C0, &unk_2227413B0);
    v54 = v81;
    if (v81)
    {
      v55 = *(v0 + 832);
      v56 = sub_22273919C();
      v54 = MEMORY[0x277D837D0];
    }

    else
    {
      v56 = 0;
      v57 = 0;
      *(v0 + 376) = 0;
    }

    v58 = *(v0 + 1048);
    v82 = *(v0 + 888);
    v59 = *(v0 + 880);
    v60 = *(v0 + 872);
    v61 = *(v0 + 864);
    v62 = *(v0 + 848);
    v63 = *(v0 + 760);
    *(v0 + 360) = v56;
    *(v0 + 368) = v57;
    *(v0 + 384) = v54;
    sub_222738FEC();
    v51(v61, v62);
    sub_222660468(v0 + 360, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
    *(v0 + 392) = v58;
    sub_222738FEC();
    v51(v60, v62);
    sub_222660468(v0 + 392, &qword_27D0130C0, &unk_2227413B0);
    *(v0 + 448) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
    *(v0 + 424) = v63;

    sub_222738FEC();
    v51(v59, v62);
    sub_222660468(v0 + 424, &qword_27D0130C0, &unk_2227413B0);
    sub_222712368(v82, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
    v64 = sub_22273872C();
    v65 = MEMORY[0x277D21FB0];
    *(v0 + 40) = v64;
    *(v0 + 48) = v65;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_22273871C();
    type metadata accessor for ASCLockupContainer();
    sub_222738E6C();

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v0 + 80) = v64;
    *(v0 + 88) = v65;
    __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_22273871C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
    *(v0 + 1112) = sub_222738E6C();

    v51(v82, v62);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
    v29 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8);
    v66 = *(MEMORY[0x277D22390] + 4);
    v67 = swift_task_alloc();
    *(v0 + 1120) = v67;
    *v67 = v0;
    v67[1] = sub_222717B30;
    v32 = v0 + 680;
  }

  v40 = v28;
  v41 = v29;
LABEL_15:

  return MEMORY[0x282180360](v32, v40, v41);
}

uint64_t sub_222717154()
{
  v1 = *(v0 + 960);
  v2 = *(v0 + 952);
  v3 = *(v0 + 944);
  v4 = *(v0 + 936);
  v5 = *(v0 + 928);
  v6 = *(v0 + 920);
  v7 = *(v0 + 912);
  v8 = *(v0 + 904);
  v9 = *(v0 + 896);
  v10 = *(v0 + 888);
  v13 = *(v0 + 880);
  v14 = *(v0 + 872);
  v15 = *(v0 + 864);
  v16 = *(v0 + 840);
  v17 = *(v0 + 1056);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22271728C()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 1072);
  v5 = *v1;

  v6 = v2[133];

  if (v0)
  {
    v7 = v3[120];
    v8 = v3[119];
    v9 = v3[118];
    v10 = v3[117];
    v11 = v3[116];
    v12 = v3[115];
    v13 = v3[114];
    v14 = v3[113];
    v15 = v3[112];
    v19 = v3[111];
    v20 = v3[110];
    v21 = v3[109];
    v22 = v3[108];
    v16 = v3[105];

    v17 = *(v5 + 8);

    return v17();
  }

  else
  {
    v3[135] = v3[87];

    return MEMORY[0x2822009F8](sub_2227174C4, 0, 0);
  }
}

uint64_t sub_2227174C4()
{
  v1 = *(v0 + 1080);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2227440C0;
  *(v4 + 32) = v1;
  v5 = sub_22273946C();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_22266BCCC(v3, v0 + 216);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  sub_222634290((v0 + 216), (v6 + 5));
  v7 = v1;
  sub_22269994C(0, 0, v2, &unk_222745800, v6);

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2227440C0;
  *(v8 + 32) = v7;
  v9 = *(v0 + 960);
  v10 = *(v0 + 952);
  v11 = *(v0 + 944);
  v12 = *(v0 + 936);
  v13 = *(v0 + 928);
  v14 = *(v0 + 920);
  v15 = *(v0 + 912);
  v16 = *(v0 + 904);
  v17 = *(v0 + 896);
  v18 = *(v0 + 888);
  v21 = *(v0 + 880);
  v22 = *(v0 + 872);
  v23 = *(v0 + 864);
  v24 = *(v0 + 840);
  **(v0 + 704) = v8;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_222717708()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 1096);
  v5 = *v1;

  v6 = v2[136];

  if (v0)
  {
    v7 = v3[120];
    v8 = v3[119];
    v9 = v3[118];
    v10 = v3[117];
    v11 = v3[116];
    v12 = v3[115];
    v13 = v3[114];
    v14 = v3[113];
    v15 = v3[112];
    v19 = v3[111];
    v20 = v3[110];
    v21 = v3[109];
    v22 = v3[108];
    v16 = v3[105];

    v17 = *(v5 + 8);

    return v17();
  }

  else
  {
    v3[138] = v3[86];

    return MEMORY[0x2822009F8](sub_222717940, 0, 0);
  }
}

uint64_t sub_222717940()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  v4 = sub_22273946C();
  v5 = *(*(v4 - 8) + 56);

  v5(v2, 1, 1, v4);
  sub_22266BCCC(v3, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  sub_222634290((v0 + 96), (v6 + 5));
  sub_22269994C(0, 0, v2, &unk_2227457F8, v6);

  v7 = *(v0 + 960);
  v8 = *(v0 + 952);
  v9 = *(v0 + 944);
  v10 = *(v0 + 936);
  v11 = *(v0 + 928);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  v14 = *(v0 + 904);
  v15 = *(v0 + 896);
  v18 = *(v0 + 888);
  v19 = *(v0 + 880);
  v20 = *(v0 + 872);
  v21 = *(v0 + 864);
  v22 = *(v0 + 840);
  **(v0 + 704) = v1;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_222717B30()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 1120);
  v5 = *v1;

  v6 = v2[139];

  if (v0)
  {
    v7 = v3[120];
    v8 = v3[119];
    v9 = v3[118];
    v10 = v3[117];
    v11 = v3[116];
    v12 = v3[115];
    v13 = v3[114];
    v14 = v3[113];
    v15 = v3[112];
    v19 = v3[111];
    v20 = v3[110];
    v21 = v3[109];
    v22 = v3[108];
    v16 = v3[105];

    v17 = *(v5 + 8);

    return v17();
  }

  else
  {
    v3[141] = v3[85];

    return MEMORY[0x2822009F8](sub_222717D68, 0, 0);
  }
}

uint64_t sub_222717D68()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 960);
  v3 = *(v0 + 712);
  v4 = sub_22273946C();
  v5 = *(*(v4 - 8) + 56);

  v5(v2, 1, 1, v4);
  sub_22266BCCC(v3, v0 + 96);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  sub_222634290((v0 + 96), (v6 + 5));
  sub_22269994C(0, 0, v2, &unk_2227457F8, v6);

  v7 = *(v0 + 960);
  v8 = *(v0 + 952);
  v9 = *(v0 + 944);
  v10 = *(v0 + 936);
  v11 = *(v0 + 928);
  v12 = *(v0 + 920);
  v13 = *(v0 + 912);
  v14 = *(v0 + 904);
  v15 = *(v0 + 896);
  v18 = *(v0 + 888);
  v19 = *(v0 + 880);
  v20 = *(v0 + 872);
  v21 = *(v0 + 864);
  v22 = *(v0 + 840);
  **(v0 + 704) = v1;

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_222717F58()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_222718050, 0, 0);
}

uint64_t sub_222718050()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = v0[3];
  v0[2] = 0;
  os_eligibility_get_domain_answer();
  v3 = OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_bag;
  v0[7] = v0[2];
  v0[8] = v3;
  v4 = sub_22273916C();
  sub_222738B0C();

  v5 = *(MEMORY[0x277D22378] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2227181AC;
  v7 = v0[6];
  v8 = v0[4];
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282180268](v0 + 14, sub_2226A9B54, 0, v8);
}

uint64_t sub_2227181AC()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v10 = *v0;

  v6 = *(v4 + 8);
  *(v1 + 80) = v6;
  *(v1 + 88) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_222718344, 0, 0);
}

uint64_t sub_222718344()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  *(v0 + 114) = *(v0 + 112);
  v4 = sub_22273916C();
  sub_222738B0C();

  v5 = *(MEMORY[0x277D22378] + 4);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_22271847C;
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x282180268](v0 + 113, sub_2226A9B54, 0, v8);
}

uint64_t sub_22271847C()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  v9 = *v0;

  v3(v4, v5);
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_222718610, 0, 0);
}

uint64_t sub_222718610()
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(v0 + 114) == 1 && (*(v0 + 113) & 1) == 0 && *(v0 + 56) == 4)
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appDistribution), *(*(v0 + 24) + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_appDistribution + 24));
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_222718770;
    v2 = *MEMORY[0x277D85DE8];

    return sub_222711C84();
  }

  else
  {
    v4 = *(v0 + 48);

    v5 = *(v0 + 8);
    v6 = *MEMORY[0x277D85DE8];

    return v5(0);
  }
}

uint64_t sub_222718770(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = *(*v1 + 104);
  v10 = *v1;

  v5 = *(v3 + 48);

  v6 = *(v10 + 8);
  v7 = *MEMORY[0x277D85DE8];

  return v6(a1);
}

uint64_t sub_2227188BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = v13;
  *(v9 + 112) = v8;
  *(v9 + 88) = v12;
  *(v9 + 72) = a7;
  *(v9 + 80) = a8;
  *(v9 + 56) = a5;
  *(v9 + 64) = a6;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 120) = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22271894C, 0, 0);
}

uint64_t sub_22271894C()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v15 = *(v0 + 72);
  v16 = *(v0 + 96);
  v4 = *(v0 + 64);
  v14 = *(v0 + 48);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
  v9 = swift_task_alloc();
  *(v0 + 128) = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v2;
  *(v9 + 32) = v7;
  *(v9 + 40) = v5;
  *(v9 + 48) = v14;
  *(v9 + 64) = v4;
  *(v9 + 72) = v15;
  *(v9 + 88) = v3;
  *(v9 + 96) = v16;
  *(v9 + 112) = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
  v11 = *(MEMORY[0x277D859B8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  *v12 = v0;
  v12[1] = sub_222718AC8;

  return MEMORY[0x282200740](v0 + 16, v8, v10, 0, 0, &unk_222745820, v9, v8);
}

uint64_t sub_222718AC8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_222718BE4;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_22267B520;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_222718BE4()
{
  v1 = v0[16];

  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_222718C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 568) = v22;
  *(v8 + 552) = v21;
  *(v8 + 536) = v20;
  *(v8 + 520) = v19;
  *(v8 + 504) = a7;
  *(v8 + 512) = a8;
  *(v8 + 488) = a5;
  *(v8 + 496) = a6;
  *(v8 + 472) = a3;
  *(v8 + 480) = a4;
  *(v8 + 456) = a1;
  *(v8 + 464) = a2;
  v9 = *(*(sub_222738DAC() - 8) + 64) + 15;
  *(v8 + 576) = swift_task_alloc();
  v10 = sub_22273903C();
  *(v8 + 584) = v10;
  v11 = *(v10 - 8);
  *(v8 + 592) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370) - 8) + 64) + 15;
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145E0, &qword_2227457B0);
  *(v8 + 680) = v14;
  v15 = *(v14 - 8);
  *(v8 + 688) = v15;
  v16 = *(v15 + 64) + 15;
  *(v8 + 696) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222718E6C, 0, 0);
}

uint64_t sub_222718E6C()
{
  v1 = *(v0 + 472);
  *(v0 + 48) = v1;
  v2 = v0 + 48;
  v39 = *(v0 + 504);
  v40 = *(v0 + 560);
  v3 = *(v0 + 464);
  *(v0 + 704) = 0x2835CE868;
  *(v0 + 56) = 0x2835CE868;
  v41 = *v3;
  v38 = sub_22273946C();
  v4 = *(v38 - 8);
  v37 = *(v4 + 56);
  v36 = (v4 + 48);
  v35 = (v4 + 8);
  v5 = v1;
  v6 = @"appDistributionApp";
  v7 = 0;
  v8 = 0;
  do
  {
    v51 = v7;
    v10 = *(v0 + 672);
    v47 = *(v0 + 568);
    v48 = *(v0 + 664);
    v46 = *(v0 + 552);
    v44 = *(v0 + 536);
    v45 = *(v0 + 544);
    v11 = *(v0 + 528);
    v12 = *(v0 + 512);
    v42 = *(v0 + 504);
    v43 = *(v0 + 520);
    v13 = *(v0 + 488);
    v14 = *(v0 + 496);
    v15 = *(v0 + 480);
    v16 = *(v2 + 8 * v8);
    v37(v10, 1, 1, v38);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v50 = (v17 + 16);
    *(v17 + 24) = 0;
    *(v17 + 32) = v15;
    *(v17 + 40) = v13;
    *(v17 + 48) = v16;
    *(v17 + 56) = v14;
    *(v17 + 64) = v42;
    *(v17 + 72) = v12;
    *(v17 + 80) = v43;
    *(v17 + 88) = v11;
    *(v17 + 96) = v44;
    *(v17 + 104) = v45;
    *(v17 + 112) = v46;
    *(v17 + 128) = v47;
    sub_2226A5C24(v10, v48);
    LODWORD(v10) = (*v36)(v48, 1, v38);
    v49 = v16;
    v18 = v15;

    v19 = v14;

    v20 = *(v0 + 664);
    if (v10 == 1)
    {
      sub_222660468(*(v0 + 664), &unk_27D013050, &qword_222741370);
    }

    else
    {
      sub_22273945C();
      (*v35)(v20, v38);
    }

    v2 = v0 + 48;
    if (*v50)
    {
      v21 = *(v17 + 24);
      v22 = *v50;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = sub_2227393FC();
      v25 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0145D8, &qword_222745798);
    v26 = v25 | v23;
    if (v25 | v23)
    {
      v26 = v0 + 144;
      *(v0 + 144) = 0;
      *(v0 + 152) = 0;
      *(v0 + 160) = v23;
      *(v0 + 168) = v25;
    }

    v9 = *(v0 + 672);
    v7 = 1;
    *(v0 + 400) = 1;
    *(v0 + 408) = v26;
    *(v0 + 416) = v41;
    swift_task_create();

    sub_222660468(v9, &unk_27D013050, &qword_222741370);
    v8 = 1;
  }

  while ((v51 & 1) == 0);
  v27 = *(v0 + 696);
  type metadata accessor for Kind(0);
  *(v0 + 712) = v28;
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  sub_22273947C();
  *(v0 + 720) = MEMORY[0x277D84F98];
  v29 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0);
  v30 = *(MEMORY[0x277D856D0] + 4);
  v31 = swift_task_alloc();
  *(v0 + 728) = v31;
  *v31 = v0;
  v31[1] = sub_2227192F4;
  v32 = *(v0 + 696);
  v33 = *(v0 + 680);

  return MEMORY[0x282200308](v0 + 424, v33, v29);
}

uint64_t sub_2227192F4()
{
  v2 = *v1;
  v3 = *(*v1 + 728);
  v7 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    v4 = v2[90];
    (*(v2[86] + 8))(v2[87], v2[85]);

    v5 = sub_222719E14;
  }

  else
  {
    v5 = sub_222719430;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_222719430()
{
  v2 = v0[53];
  v3 = v0[90];
  if (v2)
  {
    v4 = v0[54];
    v5 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[56] = v3;
    v7 = sub_222694708(v5);
    v9 = *(v3 + 16);
    v10 = (v8 & 1) == 0;
    v11 = __OFADD__(v9, v10);
    v12 = v9 + v10;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      if (*(v0[90] + 24) < v12)
      {
        sub_22268B030(v12, isUniquelyReferenced_nonNull_native);
        v13 = v0[56];
        v7 = sub_222694708(v5);
        if ((v1 & 1) != (v14 & 1))
        {
          v15 = v0[89];

          return sub_222739B8C();
        }

LABEL_16:
        v51 = v0[56];
        if (v1)
        {
LABEL_17:
          v52 = v51[7];
          v53 = *(v52 + 8 * v7);
          *(v52 + 8 * v7) = v4;

LABEL_26:
          v0[90] = v51;
          v70 = sub_22262BED4(&qword_27D0145F0, &unk_27D0145E0, &qword_2227457B0);
          v71 = *(MEMORY[0x277D856D0] + 4);
          v72 = swift_task_alloc();
          v0[91] = v72;
          *v72 = v0;
          v72[1] = sub_2227192F4;
          v73 = v0[87];
          v74 = v0[85];

          return MEMORY[0x282200308](v0 + 53, v74, v70);
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }
    }

    v67 = v7;
    sub_22268D4B8();
    v7 = v67;
    v51 = v0[56];
    if (v1)
    {
      goto LABEL_17;
    }

LABEL_24:
    v51[(v7 >> 6) + 8] |= 1 << v7;
    *(v51[6] + 8 * v7) = v5;
    *(v51[7] + 8 * v7) = v4;

    v68 = v51[2];
    v11 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (!v11)
    {
      v51[2] = v69;
      goto LABEL_26;
    }

    __break(1u);
    return MEMORY[0x282180360](v48, v49, v50);
  }

  (*(v0[86] + 8))(v0[87], v0[85]);
  v17 = v0[90];
  if (*(v3 + 16))
  {
    v18 = v0[90];
    v19 = sub_222694708(v0[59]);
    v20 = v0[90];
    if (v21)
    {
      if (*(v3 + 16))
      {
        v22 = *(*(v20 + 56) + 8 * v19);
        v23 = v0[88];

        v24 = sub_222694708(v23);
        if (v25)
        {
          v26 = v0[90];
          v91 = v0[82];
          v78 = v0[78];
          v77 = v0[77];
          v27 = v0[76];
          v28 = v0[75];
          v29 = v0[74];
          v75 = v0[73];
          v30 = v0[72];
          v86 = v0[68];
          v87 = v0[81];
          v84 = v0[80];
          v85 = v0[67];
          v82 = v0[66];
          v80 = v0[79];
          v81 = v0[65];
          v89 = v0[64];
          v76 = v0[62];
          v32 = v0[59];
          v31 = v0[60];
          v79 = *(*(v20 + 56) + 8 * v24);

          v83 = *__swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service), *(v31 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_service + 24));
          sub_222738D9C();
          sub_22273900C();
          v33 = sub_22273919C();
          v34 = MEMORY[0x277D837D0];
          v0[25] = MEMORY[0x277D837D0];
          v35 = v34;
          v0[22] = v33;
          v0[23] = v36;
          sub_222738FEC();
          v37 = *(v29 + 8);
          v37(v28, v75);
          sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
          v38 = sub_22273919C();
          v0[29] = v35;
          v0[26] = v38;
          v0[27] = v39;
          sub_222738FEC();
          v37(v27, v75);
          sub_222660468((v0 + 26), &qword_27D0130C0, &unk_2227413B0);
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
          v0[33] = v40;
          v0[30] = v22;
          sub_222738FEC();
          v37(v77, v75);
          sub_222660468((v0 + 30), &qword_27D0130C0, &unk_2227413B0);
          v0[37] = v40;
          v0[34] = v79;
          sub_222738FEC();
          v37(v78, v75);
          sub_222660468((v0 + 34), &qword_27D0130C0, &unk_2227413B0);
          v41 = MEMORY[0x277D837D0];
          v0[41] = MEMORY[0x277D837D0];
          v0[38] = v81;
          v0[39] = v82;

          sub_222738FEC();
          v37(v80, v75);
          sub_222660468((v0 + 38), &qword_27D0130C0, &unk_2227413B0);
          v0[45] = v41;
          v0[42] = v85;
          v0[43] = v86;

          sub_222738FEC();
          v37(v84, v75);
          sub_222660468((v0 + 42), &qword_27D0130C0, &unk_2227413B0);
          v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
          v0[46] = v89;

          sub_222738FEC();
          v37(v87, v75);
          sub_222660468((v0 + 46), &qword_27D0130C0, &unk_2227413B0);
          sub_222712368(v91, &unk_2835CB6C0, &qword_27D0145A0, &qword_222745710, sub_2227241CC);
          v42 = sub_22273872C();
          v43 = MEMORY[0x277D21FB0];
          v0[11] = v42;
          v0[12] = v43;
          __swift_allocate_boxed_opaque_existential_1(v0 + 8);
          sub_22273871C();
          type metadata accessor for ASCLockupContainer();
          sub_222738E6C();

          __swift_destroy_boxed_opaque_existential_1(v0 + 8);
          v0[16] = v42;
          v0[17] = v43;
          __swift_allocate_boxed_opaque_existential_1(v0 + 13);
          sub_22273871C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014580, &qword_222745A90);
          v0[93] = sub_222738E6C();

          v37(v91, v75);
          __swift_destroy_boxed_opaque_existential_1(v0 + 13);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014570, &qword_2227456C8);
          v45 = sub_22262BED4(&unk_281312E48, &unk_27D014570, &qword_2227456C8);
          v46 = *(MEMORY[0x277D22390] + 4);
          v47 = swift_task_alloc();
          v0[94] = v47;
          *v47 = v0;
          v47[1] = sub_222719F28;
          v48 = (v0 + 55);
          v49 = v44;
          v50 = v45;

          return MEMORY[0x282180360](v48, v49, v50);
        }

        v54 = v0[90];
      }
    }
  }

  sub_2227247C4();
  swift_allocError();
  *v55 = 1;
  swift_willThrow();
  v56 = v0[87];
  v57 = v0[84];
  v58 = v0[83];
  v59 = v0[82];
  v60 = v0[81];
  v61 = v0[80];
  v62 = v0[79];
  v63 = v0[78];
  v64 = v0[77];
  v65 = v0[76];
  v88 = v0[75];
  v90 = v0[72];

  v66 = v0[1];

  return v66();
}

uint64_t sub_222719E14()
{
  v1 = v0[87];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];
  v6 = v0[80];
  v7 = v0[79];
  v8 = v0[78];
  v9 = v0[77];
  v10 = v0[76];
  v13 = v0[75];
  v14 = v0[72];
  v15 = v0[92];

  v11 = v0[1];

  return v11();
}

uint64_t sub_222719F28()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 752);
  v5 = *v1;

  v6 = v2[93];
  if (v0)
  {

    v7 = v3[87];
    v8 = v3[84];
    v9 = v3[83];
    v10 = v3[82];
    v11 = v3[81];
    v12 = v3[80];
    v13 = v3[79];
    v14 = v3[78];
    v15 = v3[77];
    v29 = v3[76];
    v31 = v3[75];
    v16 = v3[72];
  }

  else
  {
    v18 = v3[87];
    v19 = v3[84];
    v20 = v3[83];
    v21 = v3[82];
    v22 = v3[81];
    v23 = v3[80];
    v24 = v3[79];
    v27 = v3[78];
    v28 = v3[77];
    v30 = v3[76];
    v32 = v3[75];
    v33 = v3[72];
    v25 = v3[57];

    *v25 = v3[55];
  }

  v17 = *(v5 + 8);

  return v17();
}

uint64_t sub_22271A1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 272) = v19;
  *(v8 + 240) = v17;
  *(v8 + 256) = v18;
  *(v8 + 224) = v16;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a1;
  *(v8 + 184) = a4;
  v9 = *(*(sub_2227381BC() - 8) + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0) - 8) + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0136F8, &qword_222742670);
  *(v8 + 296) = v11;
  v12 = *(v11 - 8);
  *(v8 + 304) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22271A304, 0, 0);
}

uint64_t sub_22271A304()
{
  v1 = v0[39];
  v0[40] = __swift_project_boxed_opaque_existential_1((v0[23] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher), *(v0[23] + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19LockupFetcherClient_fetcher + 24));
  v2 = sub_22273916C();
  sub_222738B0C();

  v3 = *(MEMORY[0x277D22378] + 4);
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_22271A41C;
  v5 = v0[39];
  v6 = v0[37];

  return MEMORY[0x282180268](v0 + 49, sub_2226A9B54, 0, v6);
}

uint64_t sub_22271A41C()
{
  v1 = *v0;
  v2 = *(*v0 + 328);
  v3 = *(*v0 + 312);
  v4 = *(*v0 + 304);
  v5 = *(*v0 + 296);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);
  *(v1 + 393) = *(v1 + 392);

  return MEMORY[0x2822009F8](sub_22271A57C, 0, 0);
}

uint64_t sub_22271A57C()
{
  v28 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = sub_2226A6000(*(v0 + 200), *(v0 + 208), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256));
  *(v0 + 336) = v4;
  sub_22271191C(v3);
  v5 = sub_22273936C();

  [v4 setItemIdentifiers_];

  if (v2)
  {
    v6 = *(v0 + 216);

    v7 = [v4 additionalQueryParams];
    if (v7)
    {
      v8 = v7;
      v9 = sub_22273910C();
    }

    else
    {
      v9 = sub_222732D1C(MEMORY[0x277D84F90]);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v9;
    sub_222723B9C(v6, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v27);

    v11 = sub_2227390FC();

    [v4 setAdditionalQueryParams_];
  }

  *(v0 + 344) = 0;
  if (*(v0 + 393) == 1)
  {
    v13 = *(v0 + 288);
    v12 = *(v0 + 320);
    v14 = (v12 + *(type metadata accessor for AMSMediaFetcher() + 24));
    v15 = v14[4];
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_2227384EC();
    v16 = sub_222738CFC();
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v13, 1, v16);
    v19 = *(v0 + 288);
    if (v18 == 1)
    {
      sub_222660468(*(v0 + 288), &unk_27D013A90, &unk_222741DC0);
      v20 = 0;
    }

    else
    {
      v22 = *(v0 + 288);
      v20 = MEMORY[0x223DBDFF0]();
      (*(v17 + 8))(v19, v16);
    }
  }

  else
  {
    v21 = *(v0 + 208);
    v20 = sub_2226A85D8();
  }

  [v4 setAccount_];

  v23 = [v4 type];
  v24 = swift_task_alloc();
  *(v0 + 352) = v24;
  *v24 = v0;
  v24[1] = sub_22271A8C0;
  v25 = *(v0 + 320);

  return sub_2226A6FB0(v23);
}

uint64_t sub_22271A8C0(uint64_t a1)
{
  v2 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = a1;

  return MEMORY[0x2822009F8](sub_22271A9C0, 0, 0);
}

uint64_t sub_22271A9C0()
{
  v23 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 336);

  v3 = [v2 additionalQueryParams];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22273910C();
  }

  else
  {
    v5 = sub_222732D1C(MEMORY[0x277D84F90]);
  }

  v6 = *(v0 + 360);
  v7 = *(v0 + 344);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v5;
  sub_222723B9C(v6, sub_222723B34, 0, isUniquelyReferenced_nonNull_native, &v22);
  v9 = *(v0 + 360);
  if (v7)
  {
  }

  else
  {
    v11 = *(v0 + 336);
    v12 = *(v0 + 272);
    v13 = *(v0 + 360);

    v14 = sub_2227390FC();

    [v11 setAdditionalQueryParams_];

    if (v12)
    {
      v15 = *(v0 + 264);
      v16 = *(v0 + 272);
      v17 = sub_22273916C();
    }

    else
    {
      v17 = 0;
    }

    [*(v0 + 336) setAppDistributionCountryCodeOverride_];

    v18 = swift_task_alloc();
    *(v0 + 368) = v18;
    *v18 = v0;
    v18[1] = sub_22271ABCC;
    v19 = *(v0 + 336);
    v20 = *(v0 + 320);
    v21 = *(v0 + 224);

    return sub_2226A69BC(v19, v21);
  }
}

uint64_t sub_22271ABCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(*v2 + 376) = v1;

  if (v1)
  {
    v7 = sub_22271AD94;
  }

  else
  {
    *(v4 + 384) = a1;
    v7 = sub_22271ACF4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22271ACF4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 312);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);
  *v6 = v5;
  v6[1] = v1;
  v7 = v5;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22271AD94()
{
  if (qword_281312E28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 376);
  v2 = *(v0 + 280);
  v3 = *(v0 + 200);
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_281315AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  type metadata accessor for Kind(0);
  *(v0 + 40) = v8;
  *(v0 + 16) = v3;
  v9 = v3;
  sub_22273816C();
  sub_222660468(v0 + 16, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  swift_getErrorValue();
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  *(v0 + 72) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v10, v11);
  sub_22273816C();
  sub_222660468(v0 + 48, &qword_27D0130C0, &unk_2227413B0);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  *(v0 + 144) = v1;
  v13 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
  type metadata accessor for AMSError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = *(v0 + 152);
  *(v0 + 160) = v14;
  sub_222724184(&unk_27D014600, type metadata accessor for AMSError);
  v15 = sub_22273723C();

  v16 = *MEMORY[0x277CEE1A0];
  v17 = sub_22273919C();
  if (!*(v15 + 16))
  {

    goto LABEL_10;
  }

  v19 = sub_222688818(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_10:

LABEL_11:
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    goto LABEL_12;
  }

  sub_22262BF70(*(v15 + 56) + 32 * v19, v0 + 80);

  if (!*(v0 + 104))
  {
LABEL_12:
    sub_222660468(v0 + 80, &qword_27D0130C0, &unk_2227413B0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  if (swift_dynamicCast())
  {

    v22 = *(v0 + 168);
    goto LABEL_14;
  }

LABEL_13:
  v23 = *(v0 + 376);
  v22 = sub_222732F68(MEMORY[0x277D84F90]);

LABEL_14:
  v24 = *(v0 + 312);
  v26 = *(v0 + 280);
  v25 = *(v0 + 288);
  v27 = *(v0 + 200);
  v28 = *(v0 + 176);
  *v28 = v27;
  v28[1] = v22;
  v29 = v27;

  v30 = *(v0 + 8);

  return v30();
}