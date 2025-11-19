void *sub_240873118(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v36 - v5;
  v6 = sub_2408D4260();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v36 - v11;
  v12 = sub_2408D3A30();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v43 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2408D4FD0();
  v41 = *(v15 - 8);
  v42 = v15;
  v16 = *(v41 + 64);
  MEMORY[0x28223BE20](v15);
  v40 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2408D4FC0();
  v18 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2408D4C70();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507680, &qword_2408D9330);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2408D71B0;
  *(v22 + 56) = &type metadata for BoolEntitlement;
  *(v22 + 64) = &off_281A84E68;
  *(v22 + 32) = 0xD000000000000024;
  *(v22 + 40) = 0x80000002408DAE90;
  *(v22 + 48) = 2;
  v1[2] = v22;
  type metadata accessor for AuditReport();
  v23 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v23 + 112) = 2;
  *(v23 + 116) = 0u;
  *(v23 + 132) = 0u;
  *(v23 + 148) = 1;
  v1[3] = v23;
  v24 = MEMORY[0x277D84F90];
  v1[4] = sub_2407F6144(MEMORY[0x277D84F90]);
  v1[5] = a1;
  v37 = v1;
  v25 = objc_allocWithZone(MEMORY[0x277CF0130]);

  v1[6] = [v25 init];
  sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  v49 = v24;
  sub_2408763D8(&unk_28130EF50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  sub_2408D5080();
  (*(v41 + 104))(v40, *MEMORY[0x277D85260], v42);
  v26 = sub_2408D4FF0();
  v27 = v37;
  v37[8] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507688, &qword_2408D8360);
  sub_2408D39D0();

  sub_2408D3CC0();
  sub_2407D917C(&qword_27E507690, &qword_27E507688, &qword_2408D8360);
  v28 = sub_2408D4680();

  v27[7] = v28;
  v29 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
  sub_2407D917C(qword_27E507330, &qword_27E506A48, &qword_2408D6808);
  v30 = v44;
  sub_2408D4280();

  v31 = v46;
  v32 = v47;
  sub_2408D3F40();
  v33 = v45;
  v34 = v48;
  (*(v45 + 16))(v48, v30, v31);
  (*(v33 + 56))(v34, 0, 1, v31);
  swift_beginAccess();
  sub_2408C70EC(v34, v32);
  swift_endAccess();
  (*(v33 + 8))(v30, v31);
  return v29;
}

uint64_t sub_2408737B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2408D5100();
    v6 = 0;
    v7 = v5 + 56;
    v29 = v3;
    v30 = a1 + 32;
    v8 = v3;
    while (1)
    {
      v9 = *(v30 + 8 * v6);
      v10 = *(v5 + 40);
      sub_2408D4D30();
      sub_2408D5300();
      v31 = v9;
      sub_2408D4D60();
      v11 = sub_2408D5320();

      v13 = -1 << *(v5 + 32);
      v14 = v11 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_15;
      }

      v18 = ~v13;
      do
      {
        v19 = *(*(v5 + 48) + 8 * v14);
        v20 = sub_2408D4D30();
        v22 = v21;
        if (v20 == sub_2408D4D30() && v22 == v23)
        {

LABEL_4:
          v8 = v29;
          goto LABEL_5;
        }

        v25 = sub_2408D5240();

        if (v25)
        {

          goto LABEL_4;
        }

        v14 = (v14 + 1) & v18;
        v15 = v14 >> 6;
        v16 = *(v7 + 8 * (v14 >> 6));
        v17 = 1 << v14;
      }

      while (((1 << v14) & v16) != 0);
      v8 = v29;
LABEL_15:
      *(v7 + 8 * v15) = v17 | v16;
      *(*(v5 + 48) + 8 * v14) = v31;
      v26 = *(v5 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        __break(1u);
        return result;
      }

      *(v5 + 16) = v28;
LABEL_5:
      if (++v6 == v8)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2408739A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v4 = sub_2408D45F0();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_2408D4570();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_2408D3970();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240873BC0, v2, 0);
}

uint64_t sub_240873BC0()
{
  v37 = v0;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  v0[17] = __swift_project_value_buffer(v5, qword_27E507280);
  v6 = *(v2 + 16);
  v0[18] = v6;
  v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36 = v14;
    *v13 = 136315138;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v15 = sub_2408D5220();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2408CC504(v15, v17, &v36);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v7, v8, "Repairing CK loss symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = *(v0[4] + 208);
  v0[20] = v19;
  if (v19)
  {
    v20 = v0[13];
    v21 = sub_2408D3630();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
    v22 = *(MEMORY[0x277CEDCB8] + 4);

    v23 = swift_task_alloc();
    v0[21] = v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    v0[22] = v24;
    v25 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808);
    *v23 = v0;
    v23[1] = sub_240874030;
    v26 = v0[13];

    return MEMORY[0x28213FC20](v26, sub_240811518, 0, sub_24081153C, 0, v24, v21, v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48);
    swift_allocError();
    *v27 = xmmword_2408D7CF0;
    *(v27 + 16) = 2;
    swift_willThrow();
    v28 = v0[16];
    v30 = v0[12];
    v29 = v0[13];
    v32 = v0[10];
    v31 = v0[11];
    v33 = v0[7];

    v34 = v0[1];

    return v34(0);
  }
}

uint64_t sub_240874030(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v18 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v6 = v4[20];
    v7 = v4[13];
    v8 = v4[4];
    sub_2407D9440(v7, &qword_27E506A30, &qword_2408D6800);

    v9 = sub_2408746C8;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    v12 = v4[22];
    v13 = v4[20];
    v4[24] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808);
    v14 = sub_2408D4E00();
    v16 = v15;
    v9 = sub_2408741D4;
    v10 = v14;
    v11 = v16;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2408741D4()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[13];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810);
  v0[25] = sub_2408D4680();

  sub_2407D9440(v3, &qword_27E506A30, &qword_2408D6800);

  return MEMORY[0x2822009F8](sub_2408742DC, v4, 0);
}

uint64_t sub_2408742DC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 88);
  v19 = *(v0 + 96);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  (*(v0 + 144))(v4, *(v0 + 24), v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  (*(v6 + 104))(v5, *MEMORY[0x277CEDC40], v7);
  (*(v9 + 104))(v8, *MEMORY[0x277CEDC80], v10);
  sub_2408D4620();
  v11 = sub_2408D4660();
  (*(*(v11 - 8) + 56))(v19, 0, 1, v11);
  v12 = *(MEMORY[0x277CEDCB8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 208) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  *(v0 + 216) = v14;
  v15 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0);
  *v13 = v0;
  v13[1] = sub_240874524;
  v16 = *(v0 + 200);
  v17 = *(v0 + 96);

  return MEMORY[0x28213FC20](v17, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v14, v11, v15);
}

uint64_t sub_240874524(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v18 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v6 = v4[25];
    v7 = v4[12];
    v8 = v4[4];

    sub_2407D9440(v7, &qword_27E507230, &unk_2408D7680);
    v9 = sub_240874A60;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    v12 = v4[27];
    v13 = v4[25];
    v4[29] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0);
    v14 = sub_2408D4E00();
    v16 = v15;
    v9 = sub_240874774;
    v10 = v14;
    v11 = v16;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2408746C8()
{
  v1 = v0[23];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_240874774()
{
  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[12];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820);
  v0[30] = sub_2408D4680();

  sub_2407D9440(v3, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_24087487C, v4, 0);
}

uint64_t sub_24087487C()
{
  v1 = *(v0[4] + 136);
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_24087492C;
  v3 = v0[30];

  return sub_24082CFC4(v3);
}

uint64_t sub_24087492C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v7 = *(v3 + 32);
  if (v1)
  {
    v8 = sub_240874CF4;
  }

  else
  {
    v8 = sub_240874B0C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_240874A60()
{
  v1 = v0[28];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_240874B0C()
{
  v23 = v0;
  v1 = v0[32];
  v2 = v0[17];

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[32];
    v6 = v0[30];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v0[2] = v5;
    type metadata accessor for AuthenticationReport(0);

    v9 = sub_2408D4D40();
    v11 = sub_2408CC504(v9, v10, &v22);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v3, v4, "Repaired CK loss symptom with results: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {
    v12 = v0[32];
    v13 = v0[30];
  }

  v14 = v0[16];
  v15 = v0[12];
  v16 = v0[13];
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[7];

  v20 = v0[1];

  return v20(1);
}

uint64_t sub_240874CF4()
{
  v1 = v0[30];

  v2 = v0[33];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  v9 = v0[1];

  return v9(0);
}

uint64_t sub_240874DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2407DB6F0;

  return sub_24085AFA0(a1, a2, a3, v3);
}

uint64_t sub_240874E64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_24086F510(a1, v4, v5, v6);
}

uint64_t sub_240874F2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_24086F308(a1, v5);
}

uint64_t sub_240874FE4(uint64_t a1)
{
  v1[6] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900) - 8) + 64) + 15;
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408750EC, a1, 0);
}

uint64_t sub_2408750EC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(*v2 + 200);
  swift_beginAccess();
  sub_2407EEE04(v2 + v3, v1, &qword_27E507328, &qword_2408D7900);

  return MEMORY[0x2822009F8](sub_2408751A0, 0, 0);
}

uint64_t sub_2408751A0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = (*(v3 + 48))(v1, 1, v2);
  if (v4)
  {
    sub_2407D9440(v1, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    v5 = v0[9];
    (*(v3 + 16))(v5, v1, v2);
    sub_2407D9440(v1, &qword_27E507328, &qword_2408D7900);
    v6 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460]);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277CED450], v6);
    v0[5] = v7;
    sub_2408D4E90();
    (*(v3 + 8))(v5, v2);
  }

  v9 = v4 != 0;
  v11 = v0[9];
  v10 = v0[10];

  v12 = v0[1];

  return v12(v9);
}

uint64_t sub_2408753A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2408D4500() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_240836098(a1, v11, v12, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_240875550(void *a1)
{
  v3 = *(sub_2408D4500() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2407EC7C8(a1);
}

uint64_t objectdestroy_163Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v7 | v12;
  v15 = (*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v3 + 16);
  swift_unknownObjectRelease();
  (*(v6 + 8))(v3 + v8, v5);
  (*(v11 + 8))(v3 + v13, v10);
  v18 = *(v3 + v15);

  v19 = *(v3 + v16);

  return MEMORY[0x2821FE8E8](v3, v16 + 8, v14 | 7);
}

uint64_t sub_240875770(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2408D3E10() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_24083F56C(a1, v11, v12, v1 + v6, v1 + v9, v13, v14);
}

uint64_t objectdestroy_167Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24087595C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_240844F54(a1, v5, v4);
}

uint64_t sub_240875A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInReport(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_240875A6C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_240875A80(a1, a2);
  }

  return a1;
}

uint64_t sub_240875A80(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_240875AEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2408159FC(a1, v5, v4);
}

uint64_t sub_240875B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240875C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240875C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_240875CD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_24086F6BC(a1, v4, v5, v6);
}

id sub_240875D9C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_240875DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_240820A3C(a1, v4, v5, v6);
}

uint64_t sub_240875E70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2407DC7B8();
}

uint64_t sub_240875E7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2407DB6F0;

  return sub_2407DCA08(a1, a2, v6, v7, v8);
}

uint64_t sub_240875F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2407DB6F0;

  return sub_24082BB0C(a1, a2, a3, v3);
}

uint64_t sub_240876008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_240876078()
{
  result = qword_27E507660;
  if (!qword_27E507660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507660);
  }

  return result;
}

uint64_t sub_2408760CC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_24085F6D0(a1, a2, v2);
}

unint64_t sub_240876184()
{
  result = qword_27E5076A8;
  if (!qword_27E5076A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5076A8);
  }

  return result;
}

uint64_t sub_2408761D8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240813A08;

  return sub_2408694E0(v2);
}

unint64_t sub_240876320()
{
  result = qword_27E5076C0;
  if (!qword_27E5076C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5076B0, &qword_2408D8400);
    sub_2408763D8(&qword_27E5076C8, 255, MEMORY[0x277CED910]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5076C0);
  }

  return result;
}

uint64_t sub_2408763D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2408764B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  sub_2408D4D30();
  sub_2408D5300();
  sub_2408D4D60();
  v4 = sub_2408D5320();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = sub_2408D4D30();
      v11 = v10;
      if (v9 == sub_2408D4D30() && v11 == v12)
      {
        break;
      }

      v14 = sub_2408D5240();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_240876608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2408D5300();
  sub_2408D4D60();
  v7 = sub_2408D5320();
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
    if (v12 || (sub_2408D5240() & 1) != 0)
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

uint64_t sub_240876700()
{
  v1 = *v0;
  sub_2408D5300();
  MEMORY[0x245CC9750](v1);
  return sub_2408D5320();
}

uint64_t sub_240876774()
{
  v1 = *v0;
  sub_2408D5300();
  MEMORY[0x245CC9750](v1);
  return sub_2408D5320();
}

uint64_t sub_2408767D8(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v13 = *(v3 + 152);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = sub_240878BBC(&qword_28130F408, a2, type metadata accessor for PushService);
  v8 = swift_task_alloc();
  v2[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v3;
  *(v8 + 32) = v13;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = *(MEMORY[0x277D85A40] + 4);
  v10 = swift_task_alloc();
  v2[5] = v10;
  v11 = sub_240878A9C();
  *v10 = v2;
  v10[1] = sub_240876938;

  return MEMORY[0x2822008A0](v2 + 2, v3, v7, 0x6574617669746361, 0xEA00000000002928, sub_240878A8C, v8, v11);
}

uint64_t sub_240876938()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_240876AC8;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_240876A5C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240876A5C()
{
  v1 = *(v0 + 16);
  sub_240877158(v1);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240876AC8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_240876B2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a6;
  v38 = a7;
  v34 = a4;
  v35 = a5;
  v36 = a2;
  v41 = sub_2408D4C50();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2408D4C70();
  v40 = *(v42 - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v14 + 16))(v17, a1, v13);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  (*(v14 + 32))(v23 + v19, v17, v13);
  v24 = (v23 + v20);
  v25 = v35;
  *v24 = v34;
  v24[1] = v25;
  v26 = (v23 + v21);
  v27 = v38;
  *v26 = v37;
  v26[1] = v27;
  v28 = v36;
  *(v23 + v22) = v36;
  aBlock[4] = sub_240878AE8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240877114;
  aBlock[3] = &block_descriptor_4;
  v29 = _Block_copy(aBlock);

  v28;
  sub_2408D4C60();
  v44 = MEMORY[0x277D84F90];
  sub_240878BBC(&qword_28130EFB0, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507768, &qword_2408D85B8);
  sub_240878C04();
  v30 = v39;
  v31 = v41;
  sub_2408D5080();
  MEMORY[0x245CC9420](0, v12, v30, v29);
  _Block_release(v29);
  (*(v43 + 8))(v30, v31);
  (*(v40 + 8))(v12, v42);
}

uint64_t sub_240876F44()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 128);
    v2 = objc_allocWithZone(MEMORY[0x277CEEA10]);
    v3 = v1;

    v4 = sub_2408D4D00();

    v5 = sub_2408D4D00();

    v6 = [v2 initWithEnvironmentName:v4 namedDelegatePort:v5 queue:v3];

    if (v6)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
      sub_2408D4E20();
    }

    else
    {
      sub_240878C68();
      swift_allocError();
      *v10 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
      sub_2408D4E10();
    }
  }

  else
  {
    sub_240878C68();
    swift_allocError();
    *v8 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
    return sub_2408D4E10();
  }
}

uint64_t sub_240877114(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_240877158(void *a1)
{
  v2 = v1;
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  v10 = objc_allocWithZone(v9);
  swift_weakInit();
  swift_weakAssign();
  v31.receiver = v10;
  v31.super_class = v9;
  v11 = objc_msgSendSuper2(&v31, sel_init);
  v12 = v1[21];
  v1[21] = v11;
  v13 = v11;

  [a1 setDelegate_];
  v14 = v1[18];
  v15 = *(v14 + 16);
  if (v15)
  {
    v26 = v8;
    v27 = v5;
    v28 = v4;
    v29 = a1;
    v16 = sub_2408783CC(v15, 0);
    v17 = sub_240878778(&v30, v16 + 4, v15, v14);

    sub_2407D17F4();
    if (v17 != v15)
    {
      __break(1u);
      return;
    }

    v4 = v28;
    a1 = v29;
    v8 = v26;
    v5 = v27;
  }

  v18 = sub_2408D4DB0();

  [a1 _setEnabledTopics_];

  sub_2408D4930();

  v19 = sub_2408D4B10();
  v20 = sub_2408D4F20();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2408CC504(v2[19], v2[20], &v30);
    _os_log_impl(&dword_2407CF000, v19, v20, "Push service started with environment: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v21, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v23 = v2[22];
  v2[22] = a1;
  v24 = a1;
}

uint64_t sub_24087743C(void *a1)
{
  v2 = v1;
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2407CF000, v9, v10, "Processing incoming message", v11, 2u);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  result = (*(v5 + 8))(v8, v4);
  v13 = *(v2 + 136);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v13 + 32);
    while (v15 < *(v13 + 16))
    {
      v17 = *v16;
      swift_unknownObjectRetain();
      sub_240812504(a1, &v18);
      if (*(&v18 + 1))
      {
        v23 = v18;
        v25 = v20;
        v26 = v21;
        *v27 = *v22;
        *&v27[15] = *&v22[15];
        v24 = v19;
        if (sub_240812B54(v19 & 1))
        {
          sub_2408119C0(&v23);
        }

        swift_unknownObjectRelease();
        result = sub_240878A24(&v18);
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      ++v15;
      v16 += 2;
      if (v14 == v15)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240877648(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2408D4B20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v38 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  sub_2408D4930();
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F20();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2407CF000, v13, v14, "Informing delegates of incoming public token", v15, 2u);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  v16 = v7 + 8;
  v17 = *(v7 + 8);
  result = v17(v12, v6);
  v41 = *(v3 + 136);
  v20 = v38;
  v40 = *(v41 + 16);
  if (v40)
  {
    v21 = 0;
    v22 = (v41 + 32);
    *&v19 = 136315138;
    v35 = v19;
    v36 = v16;
    v37 = v6;
    while (v21 < *(v41 + 16))
    {
      v42 = *v22;
      swift_unknownObjectRetain();
      sub_2408D4930();
      sub_24087827C(a1, a2);
      v23 = sub_2408D4B10();
      v24 = sub_2408D4F20();
      sub_240875A80(a1, a2);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43 = v39;
        *v25 = v35;
        v26 = sub_2408D3400();
        v28 = v17;
        v29 = a1;
        v30 = a2;
        v31 = sub_2408CC504(v26, v27, &v43);

        *(v25 + 4) = v31;
        a2 = v30;
        a1 = v29;
        v17 = v28;
        _os_log_impl(&dword_2407CF000, v23, v24, "SignOutServiceDelegate received public token: %s", v25, 0xCu);
        v32 = v39;
        __swift_destroy_boxed_opaque_existential_0Tm(v39);
        v33 = v32;
        v20 = v38;
        MEMORY[0x245CC9F60](v33, -1, -1);
        v34 = v25;
        v6 = v37;
        MEMORY[0x245CC9F60](v34, -1, -1);
      }

      v17(v20, v6);
      result = swift_unknownObjectRelease();
      ++v21;
      v22 += 2;
      if (v40 == v21)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_240877960(void *a1)
{
  v2 = v1;
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2407CF000, v9, v10, "Informing delegates of incoming message", v11, 2u);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = *(v2 + 144);
  result = [a1 topic];
  if (result)
  {
    v14 = result;
    v15 = sub_2408D4D30();
    v17 = v16;

    v18 = sub_240876608(v15, v17, v12);

    if (v18)
    {
      return sub_24087743C(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240877B08()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 144);

  v4 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_240877B60()
{
  sub_240877B08();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_240877BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_240877BD4, a4, 0);
}

uint64_t sub_240877BD4()
{
  v1 = v0[2];
  sub_240877648(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_240877E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_240877E74, a4, 0);
}

uint64_t sub_240877E74()
{
  v1 = *(v0 + 16);
  sub_240877960(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

id sub_24087808C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2408780F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2407D379C;

  return sub_240877E54(a1, v4, v5, v7, v6);
}

uint64_t sub_2408781B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407DB6F0;

  return sub_240877BB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24087827C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

size_t sub_2408782D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507780, &unk_2408D85C0);
  v4 = *(sub_2408D3970() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2408783CC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507750, &unk_2408D8D80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_240878450(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_2408784D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_2408D3970();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_240878778(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2408788D0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_240878A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507748, &unk_2408D85A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240878A9C()
{
  result = qword_28130EF90;
  if (!qword_28130EF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130EF90);
  }

  return result;
}

uint64_t sub_240878AE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = (v0 + v2);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v3);
  v9 = *(v0 + v3 + 8);
  v10 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_240876F44();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240878BBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_240878C04()
{
  result = qword_28130EFA0;
  if (!qword_28130EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E507768, &qword_2408D85B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130EFA0);
  }

  return result;
}

unint64_t sub_240878C68()
{
  result = qword_27E507778;
  if (!qword_27E507778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507778);
  }

  return result;
}

unint64_t sub_240878CD0()
{
  result = qword_27E507790;
  if (!qword_27E507790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507790);
  }

  return result;
}

uint64_t sub_240878D24@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
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
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_240878FCC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_240879038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a3;
  v5 = *(a2 + 24);
  v6 = sub_2408D5060();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = *(v5 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v8);
  v33 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v19;
  (*(v19 + 16))(v18, v3, v15);
  v32 = &v29;
  v20 = (v3 + *(a2 + 40));
  v22 = *v20;
  v21 = v20[1];
  if (*v20)
  {
    v23 = v20[1];
  }

  else
  {
    v23 = 0;
  }

  v45 = v22;
  v46 = v23;
  v38 = v15;
  v39 = v5;
  v40 = v36;
  v41 = v3;
  v42 = v35;
  sub_2407D2588(v22);
  v31 = v6;
  v43 = v6;
  v44 = v5;
  swift_getFunctionTypeMetadata();
  sub_2408D5060();
  sub_240878D24(sub_24087BE8C, v37, MEMORY[0x277D84A98], v5, v24, v10);
  sub_2407D1854(v22);
  v25 = *(v11 + 48);
  if (v25(v10, 1, v5) == 1)
  {
    v26 = v33;
    (*(v11 + 16))(v33, v35, v5);
    if (v25(v10, 1, v5) != 1)
    {
      (*(v30 + 8))(v10, v31);
    }
  }

  else
  {
    v26 = v33;
    (*(v11 + 32))(v33, v10, v5);
  }

  v27 = (*(v36 + 32))(v26, v15);
  (*(v11 + 8))(v26, v5);
  (*(v34 + 8))(v18, v15);
  return v27 & 1;
}

uint64_t sub_2408793CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = *(a2 + *(type metadata accessor for Stored() + 36));
  v7 = sub_2408D4A80();
  v5(v8, a3);
  return v7(&v10, 0);
}

uint64_t sub_24087948C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24087B620(0, v2, 0);
    v3 = v17;
    v4 = v1 + 32;
    do
    {
      sub_2407D91C4(v4, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = (*(v6 + 16))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v17 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24087B620((v10 > 1), v11 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_24087959C()
{
  v7 = *MEMORY[0x277D85DE8];
  v1[18] = v0;
  v2 = sub_2408D4B20();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_2408796A0, 0, 0);
}

uint64_t sub_2408796A0()
{
  v63 = v0;
  v62[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  LODWORD(v1) = v1[7];
  *(v0 + 192) = v2;
  *(v0 + 196) = v3;
  *(v0 + 200) = v4;
  *(v0 + 204) = v5;
  *(v0 + 208) = v7;
  *(v0 + 212) = v6;
  *(v0 + 216) = v8;
  *(v0 + 220) = v1;
  v9 = SecTaskCreateWithAuditToken(0, (v0 + 192));
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 144);
    *(v0 + 136) = 0;
    sub_24087948C();
    v12 = sub_2408D4DB0();

    v13 = SecTaskCopyValuesForEntitlements(v10, v12, (v0 + 136));

    v14 = *(v0 + 136);
    if (v14)
    {
      v61 = v13;
      v15 = *(v0 + 184);
      v16 = *(v0 + 144);
      type metadata accessor for CFError(0);
      sub_24087BDE0();
      v17 = swift_allocError();
      *v18 = v14;
      sub_2408D4900();
      sub_24087BD24(v16, v0 + 56);
      v19 = v17;
      v20 = sub_2408D4B10();
      v21 = sub_2408D4F30();
      sub_24087BD5C(v16);

      v22 = os_log_type_enabled(v20, v21);
      v23 = *(v0 + 184);
      v24 = *(v0 + 152);
      v25 = *(v0 + 160);
      if (v22)
      {
        v60 = *(v0 + 184);
        v26 = *(v0 + 144);
        v27 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v62[0] = v57;
        *v27 = 136315394;
        sub_24087948C();
        v28 = v10;
        v29 = MEMORY[0x245CC9210]();
        v59 = v24;
        v31 = v30;

        v32 = v29;
        v10 = v28;
        v33 = sub_2408CC504(v32, v31, v62);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2112;
        v34 = v17;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v35;
        *v55 = v35;
        _os_log_impl(&dword_2407CF000, v20, v21, "Failed to check entitlements (%s) with error: %@", v27, 0x16u);
        sub_2407D9440(v55, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v55, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
        MEMORY[0x245CC9F60](v57, -1, -1);
        MEMORY[0x245CC9F60](v27, -1, -1);

        (*(v25 + 8))(v60, v59);
      }

      else
      {

        (*(v25 + 8))(v23, v24);
      }

      swift_willThrow();
    }

    else
    {
      if (v13)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v62[0] = 0;
          v48 = v13;
          sub_2408D4CA0();
        }
      }

      sub_24087BE38();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    v36 = *(v0 + 168);
    v37 = *(v0 + 144);
    sub_2408D4900();
    sub_24087BD24(v37, v0 + 16);
    v38 = sub_2408D4B10();
    v39 = sub_2408D4F30();
    sub_24087BD5C(v37);
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 160);
    v42 = *(v0 + 168);
    v58 = *(v0 + 152);
    if (v40)
    {
      v43 = swift_slowAlloc();
      v56 = v42;
      v44 = swift_slowAlloc();
      v62[0] = v44;
      *v43 = 136315138;
      v45 = audit_token_t.description.getter();
      v47 = sub_2408CC504(v45, v46, v62);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2407CF000, v38, v39, "Failed to create SecTask with audit token: %s)", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x245CC9F60](v44, -1, -1);
      MEMORY[0x245CC9F60](v43, -1, -1);

      (*(v41 + 8))(v56, v58);
    }

    else
    {

      (*(v41 + 8))(v42, v58);
    }

    sub_24087BD8C();
    swift_allocError();
    swift_willThrow();
  }

  v50 = *(v0 + 176);
  v49 = *(v0 + 184);
  v51 = *(v0 + 168);

  v52 = *(v0 + 8);
  v53 = *MEMORY[0x277D85DE8];

  return v52();
}

uint64_t sub_240879E58(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_240879E78, 0, 0);
}

uint64_t sub_240879E78()
{
  v1 = *(*(v0 + 160) + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_15:
    v25 = *(v0 + 8);
    v26 = 1;
    goto LABEL_19;
  }

  v3 = v1 + 32;
  v4 = *(v0 + 152);
  v40 = v4;
  while (1)
  {
    sub_2407D91C4(v3, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = (*(v6 + 16))(v5, v6);
    if (*(v4 + 16))
    {
      v9 = *(v0 + 152);
      v10 = sub_2408CCB30(v7, v8);
      v12 = v11;

      if (v12)
      {
        sub_2407EEB40(*(v4 + 56) + 32 * v10, v0 + 120);
        sub_2407F6498((v0 + 120), (v0 + 88));
        goto LABEL_12;
      }
    }

    else
    {
    }

    v42 = v2;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    v14 = *(v0 + 40);
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v14);
    v41 = *(v13 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16 = sub_2408D5060();
    v17 = *(v16 - 8);
    v18 = *(v17 + 64) + 15;
    v19 = swift_task_alloc();
    v41(v14, v13);
    v20 = *(AssociatedTypeWitness - 8);
    if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
    {
      (*(v17 + 8))(v19, v16);

      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
    }

    else
    {
      *(v0 + 112) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
      (*(v20 + 32))(boxed_opaque_existential_1, v19, AssociatedTypeWitness);
    }

    v2 = v42;
    v4 = v40;
    if (*(v0 + 144))
    {
      sub_2407D9440(v0 + 120, &qword_27E507FA0, &qword_2408D7FB0);
    }

LABEL_12:
    if (!*(v0 + 112))
    {
      sub_2407D9440(v0 + 88, &qword_27E507FA0, &qword_2408D7FB0);
      v27 = *(v0 + 40);
      v28 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v27);
      v29 = (*(v28 + 16))(v27, v28);
      v31 = v30;
      sub_24087B588();
      swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v31;
      *(v32 + 16) = 0;
      swift_willThrow();
      goto LABEL_18;
    }

    sub_2407F6498((v0 + 88), (v0 + 56));
    v22 = *(v0 + 40);
    v23 = *(v0 + 48);
    v24 = __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
    if ((sub_24087BA78(v0 + 56, v24, v22, v23) & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v3 += 40;
    if (!--v2)
    {
      goto LABEL_15;
    }
  }

  v33 = *(v0 + 40);
  v34 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v33);
  v35 = (*(v34 + 16))(v33, v34);
  v37 = v36;
  sub_24087B588();
  swift_allocError();
  *v38 = v35;
  *(v38 + 8) = v37;
  *(v38 + 16) = 2;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
LABEL_18:
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v25 = *(v0 + 8);
  v26 = 0;
LABEL_19:

  return v25(v26);
}

uint64_t sub_24087A2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2408D4B20();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24087A388, v4, 0);
}

uint64_t sub_24087A388()
{
  v41 = v0;
  v1 = v0[6];
  v2 = *(v1 + 112);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else if ((v2 & 1) != 0 && (*(v1 + 148) & 1) == 0)
  {
    v4 = v0[9];
    v5 = *(v1 + 140);
    v6 = *(v1 + 132);
    v7 = *(v1 + 124);
    v8 = *(v1 + 116);
    sub_2408D4900();
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[8];
    v13 = v0[9];
    v14 = v0[7];
    if (v11)
    {
      v34 = v0[4];
      v35 = v0[5];
      v38 = v0[9];
      v39 = v8;
      v15 = v5;
      v16 = v7;
      v17 = v6;
      v19 = v0[2];
      v18 = v0[3];
      v37 = v0[7];
      v20 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v20 = 136315394;
      v6 = v17;
      v7 = v16;
      v5 = v15;
      v21 = audit_token_t.description.getter();
      v23 = sub_2408CC504(v21, v22, &v40);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = audit_token_t.description.getter();
      v26 = sub_2408CC504(v24, v25, &v40);
      v8 = v39;

      *(v20 + 14) = v26;
      _os_log_impl(&dword_2407CF000, v9, v10, "Comparing incoming audit token (%s) with cached token: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v36, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);

      (*(v12 + 8))(v38, v37);
    }

    else
    {

      (*(v12 + 8))(v13, v14);
    }

    v27 = v0[5];
    v3 = v8 == v0[2] && v7 == v0[3] && v6 == v0[4] && v27 == v5 && (v27 ^ v5) >> 32 == 0;
  }

  else
  {
    v3 = 0;
  }

  v31 = v0[9];

  v32 = v0[1];

  return v32(v3);
}

uint64_t sub_24087A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v12 = sub_2408D4B20();
  v7[9] = v12;
  v13 = *(v12 - 8);
  v7[10] = v13;
  v14 = *(v13 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[13] = v15;
  *v15 = v7;
  v15[1] = sub_24087A72C;

  return sub_24087A2C0(a1, a2, a3, a4);
}

uint64_t sub_24087A72C(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_24087A844, v3, 0);
}

uint64_t sub_24087A844()
{
  v30 = v0;
  v1 = *(v0 + 120);
  if (v1 == 2)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_24087AAAC;
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    v5 = *(v0 + 48);

    return sub_24087ADD4(v5);
  }

  else
  {
    v7 = *(v0 + 96);
    sub_2408D4900();
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F20();
    if (os_log_type_enabled(v8, v9))
    {
      v25 = *(v0 + 120);
      v26 = *(v0 + 80);
      v27 = *(v0 + 72);
      v28 = *(v0 + 96);
      v11 = *(v0 + 32);
      v10 = *(v0 + 40);
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315394;
      v16 = audit_token_t.description.getter();
      v18 = sub_2408CC504(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1024;
      *(v14 + 14) = v25 & 1;
      _os_log_impl(&dword_2407CF000, v8, v9, "Already checked entitlements for %s) with passing result: %{BOOL}d", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x245CC9F60](v15, -1, -1);
      MEMORY[0x245CC9F60](v14, -1, -1);

      (*(v26 + 8))(v28, v27);
    }

    else
    {
      v19 = *(v0 + 96);
      v20 = *(v0 + 72);
      v21 = *(v0 + 80);

      (*(v21 + 8))(v19, v20);
    }

    v23 = *(v0 + 88);
    v22 = *(v0 + 96);

    v24 = *(v0 + 8);

    return v24(v1 & 1);
  }
}

uint64_t sub_24087AAAC(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 121) = a1;

  return MEMORY[0x2822009F8](sub_24087ABC4, v3, 0);
}

uint64_t sub_24087ABC4()
{
  v29 = v0;
  v1 = *(v0 + 88);
  sub_2408D4900();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F50();
  if (os_log_type_enabled(v2, v3))
  {
    v25 = *(v0 + 121);
    v4 = *(v0 + 80);
    v26 = *(v0 + 72);
    v27 = *(v0 + 88);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315394;
    v11 = audit_token_t.description.getter();
    v13 = sub_2408CC504(v11, v12, &v28);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v25;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finished auditing entitlements for audit token (%s) with passing result: %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    (*(v4 + 8))(v27, v26);
  }

  else
  {
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 72);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 121);
  v18 = *(v0 + 64);
  if (v17 == 1)
  {
    v19 = *(v0 + 32);
    *(v18 + 116) = *(v0 + 16);
    *(v18 + 132) = v19;
    v20 = 1;
  }

  else
  {
    v20 = 0;
    *(v18 + 132) = 0u;
    *(v18 + 116) = 0u;
  }

  *(v18 + 112) = v20;
  *(v18 + 148) = v17 ^ 1;
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);

  v23 = *(v0 + 8);

  return v23(v17);
}

uint64_t sub_24087ADD4(int *a1)
{
  v2[3] = v1;
  v4 = sub_2408D4B20();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v10 = (a1 + *a1);
  v7 = a1[1];
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_24087AF2C;

  return v10();
}

uint64_t sub_24087AF2C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v7 = *(v4 + 24);

    return MEMORY[0x2822009F8](sub_24087B084, v7, 0);
  }

  else
  {
    v8 = *(v4 + 48);

    v9 = *(v6 + 8);

    return v9(a1 & 1);
  }
}

uint64_t sub_24087B084()
{
  v23 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  sub_2408D4900();
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 40);
    v21 = *(v0 + 48);
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    *(v0 + 16) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v12 = sub_2408D4D40();
    v14 = sub_2408CC504(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to check entitlements with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v16 = *(v0 + 40);
    v15 = *(v0 + 48);
    v17 = *(v0 + 32);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 48);

  v19 = *(v0 + 8);

  return v19(0);
}

uint64_t sub_24087B274()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t audit_token_t.description.getter()
{
  sub_2408D5120();

  v0 = sub_2408D5220();
  MEMORY[0x245CC91B0](v0);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v1 = sub_2408D5220();
  MEMORY[0x245CC91B0](v1);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v2 = sub_2408D5220();
  MEMORY[0x245CC91B0](v2);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v3 = sub_2408D5220();
  MEMORY[0x245CC91B0](v3);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v4 = sub_2408D5220();
  MEMORY[0x245CC91B0](v4);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v5 = sub_2408D5220();
  MEMORY[0x245CC91B0](v5);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v6 = sub_2408D5220();
  MEMORY[0x245CC91B0](v6);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v7 = sub_2408D5220();
  MEMORY[0x245CC91B0](v7);

  MEMORY[0x245CC91B0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t sub_24087B51C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return audit_token_t.description.getter();
}

unint64_t sub_24087B588()
{
  result = qword_27E5077A0;
  if (!qword_27E5077A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077A0);
  }

  return result;
}

size_t sub_24087B5DC(size_t a1, int64_t a2, char a3)
{
  result = sub_24087B668(a1, a2, a3, *v3, qword_27E5077C0, &unk_2408D87A8, MEMORY[0x277CED3C8]);
  *v3 = result;
  return result;
}

char *sub_24087B620(char *a1, int64_t a2, char a3)
{
  result = sub_24087B96C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_24087B668(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_24087B844(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AIDAServiceType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24087B96C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507750, &unk_2408D8D80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24087BA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2408D5060();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26[-v12];
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v26[-v16];
  sub_2407EEB40(a1, v26);
  v18 = swift_dynamicCast();
  v19 = *(v14 + 56);
  if (v18)
  {
    v19(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v17, v13, AssociatedTypeWitness);
    LOBYTE(v20) = (*(a4 + 32))(v17, a3, a4);
    (*(v14 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v19(v13, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v13, v8);
    v20 = (*(a4 + 16))(a3, a4);
    v22 = v21;
    sub_24087B588();
    swift_allocError();
    *v23 = v20;
    *(v23 + 8) = v22;
    *(v23 + 16) = 1;
    swift_willThrow();
  }

  return v20 & 1;
}

unint64_t sub_24087BD8C()
{
  result = qword_27E5077A8;
  if (!qword_27E5077A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077A8);
  }

  return result;
}

unint64_t sub_24087BDE0()
{
  result = qword_27E5077B0;
  if (!qword_27E5077B0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077B0);
  }

  return result;
}

unint64_t sub_24087BE38()
{
  result = qword_27E5077B8;
  if (!qword_27E5077B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077B8);
  }

  return result;
}

uint64_t sub_24087BE8C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_2408793CC(a1, v1[5], v1[6]);
}

uint64_t sub_24087BECC(uint64_t a1, int a2)
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

uint64_t sub_24087BF14(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24087BF98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24087BFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24087C05C(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(a1 + 24);
    sub_2408D5060();
    sub_2408D4AB0();
    if (v5 <= 0x3F)
    {
      sub_24087C418();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24087C10C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_24087C250(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_24087C418()
{
  if (!qword_27E507848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E507850, qword_2408D8908);
    v0 = sub_2408D5060();
    if (!v1)
    {
      atomic_store(v0, &qword_27E507848);
    }
  }
}

uint64_t sub_24087C4F0()
{
  sub_2408D5300();
  MEMORY[0x245CC9750](0);
  return sub_2408D5320();
}

uint64_t sub_24087C55C()
{
  sub_2408D5300();
  MEMORY[0x245CC9750](0);
  return sub_2408D5320();
}

uint64_t sub_24087C59C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507878, &qword_2408D8B98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24087D2F4();
  sub_2408D5380();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_2408D5200();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_2408D5200();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_2408D5200();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_24087C750()
{
  v1 = 0x4449736461;
  if (*v0 != 1)
  {
    v1 = 6580589;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496E7874;
  }
}

uint64_t sub_24087C79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24087CF98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24087C7DC(uint64_t a1)
{
  v2 = sub_24087D2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24087C818(uint64_t a1)
{
  v2 = sub_24087D2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24087C854@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24087D0A8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_24087C8B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v32 = 0x64696E7874;
  v33 = 0xE500000000000000;
  sub_2408D50D0();
  if (!*(a1 + 16) || (v15 = sub_2408CCDE4(v34), (v16 & 1) == 0))
  {

    sub_240812CC8(v34);
LABEL_12:
    sub_2408D4930();
    v26 = sub_2408D4B10();
    v27 = sub_2408D4F30();
    if (!os_log_type_enabled(v26, v27))
    {
      v9 = v14;
      goto LABEL_16;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2407CF000, v26, v27, "SignOutData received push message with no txnid, failing initialization", v28, 2u);
    v9 = v14;
    goto LABEL_14;
  }

  sub_2407EEB40(*(a1 + 56) + 32 * v15, v35);
  sub_240812CC8(v34);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v17 = v33;
  v36 = v32;
  v32 = 0x6469736461;
  v33 = 0xE500000000000000;
  sub_2408D50D0();
  if (!*(a1 + 16) || (v18 = sub_2408CCDE4(v34), (v19 & 1) == 0))
  {

    sub_240812CC8(v34);
LABEL_19:

    sub_2408D4930();
    v26 = sub_2408D4B10();
    v29 = sub_2408D4F30();
    if (!os_log_type_enabled(v26, v29))
    {
      v9 = v12;
      goto LABEL_16;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2407CF000, v26, v29, "SignOutData received push message with no adsid, failing initialization", v28, 2u);
    v9 = v12;
    goto LABEL_14;
  }

  sub_2407EEB40(*(a1 + 56) + 32 * v18, v35);
  sub_240812CC8(v34);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v20 = v33;
  v31 = v32;
  v32 = 6580589;
  v33 = 0xE300000000000000;
  sub_2408D50D0();
  if (*(a1 + 16) && (v21 = sub_2408CCDE4(v34), (v22 & 1) != 0))
  {
    sub_2407EEB40(*(a1 + 56) + 32 * v21, v35);
    sub_240812CC8(v34);

    result = swift_dynamicCast();
    if (result)
    {
      v24 = v32;
      v25 = v33;
      *a2 = v36;
      a2[1] = v17;
      a2[2] = v31;
      a2[3] = v20;
      a2[4] = v24;
      a2[5] = v25;
      return result;
    }
  }

  else
  {

    sub_240812CC8(v34);
  }

  sub_2408D4930();
  v26 = sub_2408D4B10();
  v30 = sub_2408D4F30();
  if (os_log_type_enabled(v26, v30))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2407CF000, v26, v30, "SignOutData received push message with no mid, failing initialization", v28, 2u);
LABEL_14:
    MEMORY[0x245CC9F60](v28, -1, -1);
  }

LABEL_16:

  (*(v5 + 8))(v9, v4);
  sub_24087CD68();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_24087CD68()
{
  result = qword_27E507858;
  if (!qword_27E507858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignOutPushData.Failure(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SignOutPushData.Failure(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_24087CEA0()
{
  result = qword_27E507860;
  if (!qword_27E507860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507860);
  }

  return result;
}

uint64_t sub_24087CEF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24087CF3C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_24087CF98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E7874 && a2 == 0xE500000000000000;
  if (v4 || (sub_2408D5240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449736461 && a2 == 0xE500000000000000 || (sub_2408D5240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6580589 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2408D5240();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24087D0A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507868, &qword_2408D8B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24087D2F4();
  sub_2408D5370();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  v11 = sub_2408D51F0();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = sub_2408D51F0();
  v23 = v14;
  v25 = 2;
  v15 = sub_2408D51F0();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_24087D2F4()
{
  result = qword_27E507870;
  if (!qword_27E507870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507870);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignOutPushData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SignOutPushData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24087D49C()
{
  result = qword_27E507880;
  if (!qword_27E507880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507880);
  }

  return result;
}

unint64_t sub_24087D4F4()
{
  result = qword_27E507888;
  if (!qword_27E507888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507888);
  }

  return result;
}

unint64_t sub_24087D54C()
{
  result = qword_27E507890;
  if (!qword_27E507890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507890);
  }

  return result;
}

uint64_t sub_24087D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24087D6C8;

  return v11(a1, a2, a3);
}

uint64_t sub_24087D6C8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_24087D7C4()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507898);
  __swift_project_value_buffer(v0, qword_27E507898);
  return sub_2408D4950();
}

uint64_t sub_24087D810(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_24087D830, 0, 0);
}

uint64_t sub_24087D830()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_2408D49B0();
  v3 = sub_2408D48E0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *(v0 + 160) = sub_2408D48C0();
  sub_2408D48D0();
  v6 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v7 = sub_2408D4180();
  v8 = (*(v6 + 16))(v7);
  *(v0 + 168) = v8;

  if (v8)
  {
    if ([v8 aa_isRemotelyManaged])
    {
      if (qword_27E506950 != -1)
      {
        swift_once();
      }

      v9 = sub_2408D4B20();
      __swift_project_value_buffer(v9, qword_27E507898);
      v10 = sub_2408D4B10();
      v11 = sub_2408D4F50();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2407CF000, v10, v11, "Requesting unenrollment sign out", v12, 2u);
        MEMORY[0x245CC9F60](v12, -1, -1);
      }

      v13 = swift_task_alloc();
      *(v0 + 176) = v13;
      *v13 = v0;
      v13[1] = sub_24087DE48;
      v14 = *(v0 + 144);
      v15 = *(v0 + 152);

      return sub_24087F008(v14);
    }

    else
    {
      if (qword_27E506950 != -1)
      {
        swift_once();
      }

      v22 = sub_2408D4B20();
      *(v0 + 192) = __swift_project_value_buffer(v22, qword_27E507898);
      v23 = sub_2408D4B10();
      v24 = sub_2408D4F50();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2407CF000, v23, v24, "Signing out of all services ...", v25, 2u);
        MEMORY[0x245CC9F60](v25, -1, -1);
      }

      v26 = *(v0 + 152);

      v27 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
      *(v0 + 200) = v27;
      sub_2407D91C4((v2 + 7), v0 + 88);
      v28 = type metadata accessor for AISSilentSignOutFlowControllerDelegate();
      v29 = objc_allocWithZone(v28);
      sub_2407D91C4(v0 + 88, v29 + OBJC_IVAR____TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate_accountStore);
      *(v0 + 128) = v29;
      *(v0 + 136) = v28;
      v30 = objc_msgSendSuper2((v0 + 128), sel_init);
      *(v0 + 208) = v30;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B8, &unk_2408D8D70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2408D71B0;
      v32 = *MEMORY[0x277CED1A0];
      *(inited + 32) = *MEMORY[0x277CED1A0];
      *(inited + 64) = swift_getObjectType();
      *(inited + 40) = v30;
      v33 = v32;
      v34 = v30;
      sub_2407F6370(inited);
      swift_setDeallocating();
      sub_2407D9440(inited + 32, &qword_27E506F20, &qword_2408D72C0);
      type metadata accessor for AIDAServiceType(0);
      sub_24088048C();
      v35 = sub_2408D4C90();

      [v27 setSignOutContexts_];

      v36 = v26[5];
      v37 = v26[6];
      __swift_project_boxed_opaque_existential_1(v26 + 2, v36);
      v38 = *(v37 + 8);
      v41 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      *(v0 + 216) = v40;
      *v40 = v0;
      v40[1] = sub_24087DFF4;

      return v41(v27, v36, v37);
    }
  }

  else
  {
    if (qword_27E506950 != -1)
    {
      swift_once();
    }

    v17 = sub_2408D4B20();
    __swift_project_value_buffer(v17, qword_27E507898);
    v18 = sub_2408D4B10();
    v19 = sub_2408D4F30();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2407CF000, v18, v19, "No Apple Account to remove, bailing ...", v20, 2u);
      MEMORY[0x245CC9F60](v20, -1, -1);
    }

    v21 = *(v0 + 8);

    return v21(0);
  }
}

uint64_t sub_24087DE48(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 176);
  v6 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v7 = sub_24087EB18;
  }

  else
  {
    *(v4 + 272) = a1 & 1;
    v7 = sub_24087DF74;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24087DF74()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_2408D48B0();

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_24087DFF4(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 273) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_24087EB84;
  }

  else
  {
    v5 = sub_24087E10C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24087E10C()
{
  v74 = v0;
  v1 = *(v0 + 192);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 273);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2407CF000, v2, v3, "Signed out of all services with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 152);

  v8 = v7[10];
  v9 = v7[11];
  __swift_project_boxed_opaque_existential_1(v7 + 7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507750, &unk_2408D8D80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2408D71B0;
  v11 = *MEMORY[0x277CB8D58];
  *(v10 + 32) = sub_2408D4D30();
  *(v10 + 40) = v12;
  v13 = (*(v9 + 24))(v10, v8, v9);
  if (v6)
  {
    v15 = *(v0 + 200);
    v14 = *(v0 + 208);
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);

    v18 = *(v0 + 8);
    v19 = 0;
LABEL_5:

    return v18(v19);
  }

  v21 = v13;

  v73[0] = MEMORY[0x277D84F90];
  if (v21 >> 62)
  {
    goto LABEL_36;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
LABEL_10:
    v23 = 0;
    v70 = v21 & 0xFFFFFFFFFFFFFF8;
    v71 = v21 & 0xC000000000000001;
    v24 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
    while (1)
    {
      if (v71)
      {
        v26 = MEMORY[0x245CC9570](v23, v21);
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          v41 = v73[0];
          goto LABEL_38;
        }
      }

      else
      {
        if (v23 >= *(v70 + 16))
        {
          __break(1u);
LABEL_36:
          v22 = sub_2408D51A0();
          if (!v22)
          {
            break;
          }

          goto LABEL_10;
        }

        v26 = *(v21 + 8 * v23 + 32);
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_33;
        }
      }

      v72 = v26;
      v28 = [v26 v24[120]];
      if (v28)
      {
        v29 = v28;
        v30 = sub_2408D4D30();
        v32 = v31;
      }

      else
      {
        v30 = 0;
        v32 = 0;
      }

      v33 = [*(v0 + 168) v24[120]];
      if (v33)
      {
        v34 = v21;
        v35 = v22;
        v36 = v33;
        v37 = sub_2408D4D30();
        v39 = v38;

        v22 = v35;
        v21 = v34;
        if (v32)
        {
          if (!v39)
          {
            goto LABEL_30;
          }

          if (v30 == v37 && v32 == v39)
          {
          }

          else
          {
            v40 = sub_2408D5240();

            if ((v40 & 1) == 0)
            {

              goto LABEL_13;
            }
          }
        }

        else if (v39)
        {
LABEL_30:

          goto LABEL_13;
        }
      }

      else if (v32)
      {
        goto LABEL_30;
      }

      sub_2408D5150();
      v25 = *(v73[0] + 16);
      sub_2408D5170();
      sub_2408D5180();
      sub_2408D5160();
LABEL_13:
      ++v23;
      v24 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
      if (v27 == v22)
      {
        goto LABEL_34;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_38:
  *(v0 + 232) = v41;
  v42 = *(v0 + 192);

  v43 = sub_2408D4B10();
  v44 = sub_2408D4F20();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v73[0] = v46;
    *v45 = 136315138;
    v47 = sub_24081399C();
    v48 = MEMORY[0x245CC9220](v41, v47);
    v50 = sub_2408CC504(v48, v49, v73);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_2407CF000, v43, v44, "Matching Store Accounts = %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    MEMORY[0x245CC9F60](v46, -1, -1);
    MEMORY[0x245CC9F60](v45, -1, -1);
  }

  if ((v41 & 0x8000000000000000) == 0 && (v41 & 0x4000000000000000) == 0)
  {
    result = *(v41 + 16);
    *(v0 + 240) = result;
    if (result)
    {
      goto LABEL_43;
    }

LABEL_53:
    v66 = *(v0 + 208);

    v67 = *(v0 + 273);
    v68 = *(v0 + 160);
    v69 = *(v0 + 168);
    sub_2408D48B0();

    v18 = *(v0 + 8);
    v19 = v67;
    goto LABEL_5;
  }

  result = sub_2408D51A0();
  *(v0 + 240) = result;
  if (!result)
  {
    goto LABEL_53;
  }

LABEL_43:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 248) = 0;
    v51 = *(v0 + 232);
    if ((v51 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x245CC9570](0);
    }

    else
    {
      v52 = *(v51 + 32);
    }

    *(v0 + 256) = v52;
    v53 = *(v0 + 192);
    v54 = v52;
    v55 = sub_2408D4B10();
    v56 = sub_2408D4F20();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73[0] = v58;
      *v57 = 136315138;
      v59 = [v54 debugDescription];
      v60 = sub_2408D4D30();
      v62 = v61;

      v63 = sub_2408CC504(v60, v62, v73);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_2407CF000, v55, v56, "Removing %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v58);
      MEMORY[0x245CC9F60](v58, -1, -1);
      MEMORY[0x245CC9F60](v57, -1, -1);
    }

    v64 = swift_task_alloc();
    *(v0 + 264) = v64;
    *v64 = v0;
    v64[1] = sub_24087E7AC;
    v65 = *(v0 + 152);

    return sub_24087F7FC(v54);
  }

  return result;
}

uint64_t sub_24087E7AC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24087E8A8, 0, 0);
}

uint64_t sub_24087E8A8()
{
  v27 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 232);
    v4 = *(v0 + 208);

    v5 = *(v0 + 273);
    v6 = *(v0 + 160);
    v7 = *(v0 + 168);
    sub_2408D48B0();

    v8 = *(v0 + 8);

    return v8(v5);
  }

  else
  {
    v10 = *(v0 + 248) + 1;
    *(v0 + 248) = v10;
    v11 = *(v0 + 232);
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245CC9570]();
    }

    else
    {
      v12 = *(v11 + 8 * v10 + 32);
    }

    *(v0 + 256) = v12;
    v13 = *(v0 + 192);
    v14 = v12;
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      v19 = [v14 debugDescription];
      v20 = sub_2408D4D30();
      v22 = v21;

      v23 = sub_2408CC504(v20, v22, &v26);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_2407CF000, v15, v16, "Removing %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    v24 = swift_task_alloc();
    *(v0 + 264) = v24;
    *v24 = v0;
    v24[1] = sub_24087E7AC;
    v25 = *(v0 + 152);

    return sub_24087F7FC(v14);
  }
}

uint64_t sub_24087EB18()
{
  v1 = v0[20];
  v2 = v0[21];

  v3 = v0[23];
  v4 = v0[1];

  return v4(0);
}

uint64_t sub_24087EB84()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[20];
  v4 = v0[21];

  v5 = v0[28];
  v6 = v0[1];

  return v6(0);
}

uint64_t sub_24087ED90(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_24087EE54;

  return sub_24087D810(v5);
}

uint64_t sub_24087EE54(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 40);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;

  v11 = *(v5 + 32);
  if (v3)
  {
    v12 = sub_2408D33E0();

    (*(v11 + 16))(v11, 0, v12);
  }

  else
  {
    (*(v11 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_24087F008(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24087F028, 0, 0);
}

uint64_t sub_24087F028()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = *(MEMORY[0x277D85A40] + 4);
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  *v3 = v0;
  v3[1] = sub_24087F11C;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](&v0[3].u64[1], 0, 0, 0xD000000000000026, 0x80000002408DB1B0, sub_2408803D8, v1, v4);
}

uint64_t sub_24087F11C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_24087F364;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_24087F238;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24087F238()
{
  v1 = *(v0 + 56);
  if (qword_27E506950 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507898);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished unenrollment with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_24087F364()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2(0);
}

void sub_24087F3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  v11 = objc_allocWithZone(MEMORY[0x277D03248]);
  aBlock[4] = sub_2408803E0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24087FDA0;
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);
  v13 = [v11 initFromViewController:0 enrollmentResultBlock:v12];
  _Block_release(v12);

  v14 = *(a2 + 96);
  *(a2 + 96) = v13;

  v15 = sub_2408D4170();
  if (*(v15 + 16) && (v16 = sub_2408CCC7C(*MEMORY[0x277CED1A0]), (v17 & 1) != 0) && (v18 = (*(v15 + 56) + 16 * v16), v20 = *v18, v19 = v18[1], , , (v21 = *(a2 + 96)) != 0))
  {
    v22 = v21;
    v23 = sub_2408D4D00();

    [v22 startUnenrollmentWithAltDSID:v23 silent:1];
  }

  else
  {
  }
}

uint64_t sub_24087F640(int a1, int a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    if (qword_27E506950 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    __swift_project_value_buffer(v5, qword_27E507898);
    v6 = a3;
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F30();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a3;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_2407CF000, v7, v8, "Unenrollment failure with error:%@", v9, 0xCu);
      sub_2407D9440(v10, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v10, -1, -1);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
    return sub_2408D4E10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
    return sub_2408D4E20();
  }
}

uint64_t sub_24087F7FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24087F81C, 0, 0);
}

uint64_t sub_24087F81C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[10];
  v4 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_24087F954;

  return v9(v2, v3, v4);
}

uint64_t sub_24087F954(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v5 = sub_24087FB90;
  }

  else
  {
    v5 = sub_24087FA6C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24087FA6C()
{
  if (qword_27E506950 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E507898);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2407CF000, v2, v3, "Account removed with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24087FB90()
{
  if (qword_27E506950 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507898);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to remove account from store :%@", v8, 0xCu);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24087FD34()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_24087FDA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_24087FE28(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2407DB6F0;

  return v7();
}

uint64_t sub_24087FF10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2407D379C;

  return v8();
}

uint64_t sub_24087FFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_240880598(a3, v25 - v11);
  v13 = sub_2408D4E60();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2407D9440(v12, &unk_27E506BD0, &qword_2408D7AB0);
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

  sub_2408D4E50();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2408D4E00();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2408D4D50() + 32;
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

    sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

    return v23;
  }

LABEL_8:
  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
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

uint64_t sub_2408802E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17 = a5;
  v18 = a7;
  v13 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  type metadata accessor for AISSignOutService();
  v14 = swift_allocObject();
  *(v14 + 96) = 0;
  sub_2407D2554(&v19, v14 + 16);
  sub_2407D2554(&v16, v14 + 56);
  return v14;
}

uint64_t sub_2408803E0(int a1, int a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68) - 8) + 80);

  return sub_24087F640(a1, a2, a3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24088048C()
{
  result = qword_28130EF80;
  if (!qword_28130EF80)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130EF80);
  }

  return result;
}

uint64_t sub_2408804E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2407D379C;

  return sub_24087ED90(v2, v3, v4);
}

uint64_t sub_240880598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240880608(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2408698F0(a1, v5);
}

uint64_t sub_2408806C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407D379C;

  return sub_2408698F0(a1, v5);
}

uint64_t sub_240880778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2407D379C;

  return v11(a1, a2, a3);
}

uint64_t sub_2408808A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24087D6C8;

  return v11(a1, a2, a3);
}

uint64_t sub_2408809CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2407DB6F0;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_240880B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2407D379C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_240880C4C()
{
  v1 = sub_2408D3500();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = v2[2];
  v14(&v26 - v12, v0, v1);
  v14(v11, v13, v1);
  v15 = v2[11];
  v16 = v15(v11, v1);
  v17 = *MEMORY[0x277CED2B0];
  v26 = v2;
  v18 = v2[1];
  if (v16 == v17)
  {
    v19 = 0;
    v20 = v13;
  }

  else
  {
    v18(v11, v1);
    v14(v8, v13, v1);
    if (v15(v8, v1) == *MEMORY[0x277CED278])
    {
      v19 = 0;
      v20 = v13;
      v11 = v8;
    }

    else
    {
      v18(v8, v1);
      v22 = *MEMORY[0x277CED270];
      v20 = v27;
      v23 = v26[13];
      v23(v27, v22, v1);
      v24 = sub_2408D34F0();
      v18(v20, v1);
      if (v24 & 1) != 0 || (v23(v20, v22, v1), v25 = sub_2408D34F0(), v18(v20, v1), (v25))
      {
        v19 = 1;
        goto LABEL_6;
      }

      v23(v20, *MEMORY[0x277CED2D8], v1);
      v19 = sub_2408D34F0();
      v11 = v13;
    }
  }

  v18(v20, v1);
  v13 = v11;
LABEL_6:
  v18(v13, v1);
  return v19 & 1;
}

uint64_t sub_240880F60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507268, &qword_2408D8240);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38[-v4 - 8];
  v6 = sub_2408D3500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38[-v13 - 8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v38[-v16 - 8];
  MEMORY[0x28223BE20](v15);
  v19 = &v38[-v18 - 8];
  v20 = *(v1 + 16);
  v39 = *v1;
  v40 = v20;
  v41 = *(v1 + 32);
  sub_2408B2E8C(v1, v38);
  v21 = swift_dynamicCast();
  v22 = *(v7 + 56);
  if (!v21)
  {
    v22(v5, 1, 1, v6);
    sub_2407D9440(v5, &qword_27E507268, &qword_2408D8240);
    goto LABEL_5;
  }

  v37 = v11;
  v22(v5, 0, 1, v6);
  (*(v7 + 32))(v19, v5, v6);
  v23 = *(v7 + 16);
  v23(v17, v19, v6);
  v24 = *(v7 + 88);
  v25 = v24(v17, v6);
  v26 = *(v7 + 8);
  if (v25 == *MEMORY[0x277CED2B0])
  {
    v27 = *(v7 + 8);
    v26(v19, v6);
    v27(v17, v6);
LABEL_5:
    v28 = 0;
    return v28 & 1;
  }

  v30 = v17;
  v31 = *(v7 + 8);
  v26(v30, v6);
  v23(v14, v19, v6);
  if (v24(v14, v6) == *MEMORY[0x277CED278])
  {
    v31(v19, v6);
    v31(v14, v6);
    goto LABEL_5;
  }

  v31(v14, v6);
  v32 = *MEMORY[0x277CED270];
  v33 = *(v7 + 104);
  v34 = v37;
  v33(v37, v32, v6);
  v35 = sub_2408D34F0();
  v31(v34, v6);
  if (v35 & 1) != 0 || (v33(v34, v32, v6), v36 = sub_2408D34F0(), v31(v34, v6), (v36))
  {
    v31(v19, v6);
    v28 = 1;
  }

  else
  {
    v33(v34, *MEMORY[0x277CED2D8], v6);
    v28 = sub_2408D34F0();
    v31(v34, v6);
    v31(v19, v6);
  }

  return v28 & 1;
}

uint64_t sub_2408813B8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507968, &qword_2408D9110);
  v3[9] = v6;
  v7 = *(v6 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507970, &qword_2408D9118);
  v3[13] = v9;
  v10 = *(v9 - 8);
  v3[14] = v10;
  v11 = *(v10 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v12 = sub_2408D49A0();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v15 = sub_2408D34E0();
  v3[25] = v15;
  v16 = *(v15 - 8);
  v3[26] = v16;
  v17 = *(v16 + 64) + 15;
  v3[27] = swift_task_alloc();
  v18 = sub_2408D3630();
  v3[28] = v18;
  v19 = *(v18 - 8);
  v3[29] = v19;
  v20 = *(v19 + 64) + 15;
  v3[30] = swift_task_alloc();
  v21 = sub_2408D4B20();
  v3[31] = v21;
  v22 = *(v21 - 8);
  v3[32] = v22;
  v23 = *(v22 + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240881780, v2, 0);
}

uint64_t sub_240881780()
{
  v25 = v0;
  v1 = v0[44];
  v2 = v0[4];
  sub_2408D4910();

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = v0[31];
    v7 = v0[32];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v0[2] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v11 = sub_2408D4D40();
    v13 = sub_2408CC504(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v3, v4, "[PTC] Connecting with model: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    v14 = *(v7 + 8);
    v14(v5, v6);
  }

  else
  {
    v15 = v0[44];
    v16 = v0[31];
    v17 = v0[32];

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  v0[45] = v14;
  v18 = *(MEMORY[0x277CED858] + 4);
  v23 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v19 = swift_task_alloc();
  v0[46] = v19;
  *v19 = v0;
  v19[1] = sub_2408819A8;
  v20 = v0[30];
  v21 = v0[4];

  return v23(v20);
}

uint64_t sub_2408819A8()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240881AB8, v2, 0);
}

uint64_t sub_240881AB8()
{
  v186 = v0;
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  sub_2408D3580();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v6 + 88))(v4, v5);
  if (v7 == *MEMORY[0x277CED250])
  {
    v8 = v0[43];
    v9 = v0[27];
    v10 = v0[24];
    v11 = v0[23];
    v12 = v0[17];
    v13 = v0[18];
    (*(v0[26] + 96))(v9, v0[25]);
    (*(v13 + 32))(v10, v9, v12);
    sub_2408D4910();
    v14 = *(v13 + 16);
    v0[47] = v14;
    v0[48] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v11, v10, v12);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[45];
    v19 = v0[43];
    v179 = v0[32];
    v182 = v0[31];
    v20 = v0[23];
    if (v17)
    {
      v173 = v0[43];
      v176 = v14;
      v21 = v0[22];
      v23 = v0[17];
      v22 = v0[18];
      v170 = v0[45];
      v24 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v185 = v167;
      *v24 = 136315138;
      v176(v21, v20, v23);
      v25 = sub_2408D4D40();
      v164 = v16;
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v20, v23);
      v29 = v25;
      v14 = v176;
      v30 = sub_2408CC504(v29, v27, &v185);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2407CF000, v15, v164, "Offering BLE client to intercept if applicable: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v167);
      MEMORY[0x245CC9F60](v167, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);

      v170(v173, v182);
    }

    else
    {
      v52 = v0[17];
      v51 = v0[18];

      v28 = *(v51 + 8);
      v28(v20, v52);
      v18(v19, v182);
    }

    v0[49] = v28;
    v53 = v0[24];
    v54 = v0[22];
    v55 = v0[17];
    v0[50] = *(v0[5] + 112);
    v14(v54, v53, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
    sub_2407D917C(&qword_27E507598, &qword_27E506E58, &unk_2408D81B0);
    v57 = sub_2408D4E00();

    return MEMORY[0x2822009F8](sub_24088288C, v57, v56);
  }

  if (v7 == *MEMORY[0x277CED240])
  {
    v32 = v0 + 16;
    v31 = v0[16];
    v33 = v0[27];
    v34 = v0[13];
    v35 = v0[14];
    (*(v0[26] + 96))(v33, v0[25]);
    (*(v35 + 32))(v31, v33, v34);
    v36 = sub_2408D3CD0();
    if (v36)
    {
      v37 = v36;
      v38 = v0[37];
      sub_2408D4910();
      v39 = v37;
      v40 = sub_2408D4B10();
      v41 = sub_2408D4F10();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v39;
        *v43 = v37;
        v44 = v39;
        _os_log_impl(&dword_2407CF000, v40, v41, "Setting up as client with provided pre-established template: %@", v42, 0xCu);
        sub_2407D9440(v43, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v43, -1, -1);
        MEMORY[0x245CC9F60](v42, -1, -1);
      }

      v45 = v0[45];
      v46 = v0[37];
      v47 = v0[31];
      v48 = v0[32];
      v49 = v0[5];
      v50 = v0[3];

      v45(v46, v47);
      sub_2407EFC24(v39, v50);
LABEL_27:
      (*(v0[14] + 8))(*v32, v0[13]);

      v97 = v0[43];
      v96 = v0[44];
      v99 = v0[41];
      v98 = v0[42];
      v100 = v0[39];
      v101 = v0[40];
      v103 = v0[37];
      v102 = v0[38];
      v105 = v0[35];
      v104 = v0[36];
      v146 = v0[34];
      v148 = v0[33];
      v150 = v0[30];
      v152 = v0[27];
      v154 = v0[24];
      v156 = v0[23];
      v158 = v0[22];
      v160 = v0[21];
      v162 = v0[20];
      v165 = v0[19];
      v168 = v0[16];
      v171 = v0[15];
      v174 = v0[12];
      v177 = v0[11];
      v180 = v0[8];
      v183 = v0[7];

      v106 = v0[1];
LABEL_39:

      return v106();
    }

    v87 = v0[36];
    sub_2408D4910();
    v88 = sub_2408D4B10();
    v89 = sub_2408D4F30();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      _os_log_impl(&dword_2407CF000, v88, v89, "Failed to perform remote setup as client with nil message session", v90, 2u);
      MEMORY[0x245CC9F60](v90, -1, -1);
    }

    v91 = v0[45];
    v92 = v0[36];
    v93 = v0[31];
    v94 = v0[32];
    v95 = v0[16];
LABEL_37:
    v124 = v0[13];
    v125 = v0[14];

    v91(v92, v93);
    sub_2407F11F8();
LABEL_38:
    swift_allocError();
    swift_willThrow();
    (*(v125 + 8))(v95, v124);
    v127 = v0[43];
    v126 = v0[44];
    v128 = v0[41];
    v129 = v0[42];
    v131 = v0[39];
    v130 = v0[40];
    v133 = v0[37];
    v132 = v0[38];
    v135 = v0[35];
    v134 = v0[36];
    v145 = v0[34];
    v147 = v0[33];
    v149 = v0[30];
    v151 = v0[27];
    v153 = v0[24];
    v155 = v0[23];
    v157 = v0[22];
    v159 = v0[21];
    v161 = v0[20];
    v163 = v0[19];
    v166 = v0[16];
    v169 = v0[15];
    v172 = v0[12];
    v175 = v0[11];
    v178 = v0[8];
    v181 = v0[7];

    v106 = v0[1];
    goto LABEL_39;
  }

  if (v7 == *MEMORY[0x277CED248])
  {
    v32 = v0 + 15;
    v58 = v0[15];
    v59 = v0[27];
    v60 = v0[13];
    v61 = v0[14];
    (*(v0[26] + 96))(v59, v0[25]);
    (*(v61 + 32))(v58, v59, v60);
    v62 = sub_2408D3CD0();
    if (v62)
    {
      v63 = v62;
      v64 = v0[35];
      sub_2408D4910();
      v39 = v63;
      v65 = sub_2408D4B10();
      v66 = sub_2408D4F10();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        *(v67 + 4) = v39;
        *v68 = v63;
        v69 = v39;
        _os_log_impl(&dword_2407CF000, v65, v66, "Setting up as server with provided pre-established template: %@", v67, 0xCu);
        sub_2407D9440(v68, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v68, -1, -1);
        MEMORY[0x245CC9F60](v67, -1, -1);
      }

      v70 = v0[45];
      v71 = v0[35];
      v72 = v0[31];
      v73 = v0[32];
      v74 = v0[5];
      v75 = v0[3];

      v70(v71, v72);
      sub_2407EFC24(v39, v75);
      goto LABEL_27;
    }

    v120 = v0[34];
    sub_2408D4910();
    v88 = sub_2408D4B10();
    v121 = sub_2408D4F30();
    if (os_log_type_enabled(v88, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_2407CF000, v88, v121, "Failed to perform remote setup as client with nil message session", v122, 2u);
      MEMORY[0x245CC9F60](v122, -1, -1);
    }

    v91 = v0[45];
    v92 = v0[34];
    v93 = v0[31];
    v123 = v0[32];
    v95 = v0[15];
    goto LABEL_37;
  }

  if (v7 == *MEMORY[0x277CED258])
  {
    v76 = v0[42];
    sub_2408D4910();
    v77 = sub_2408D4B10();
    v78 = sub_2408D4F10();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_2407CF000, v77, v78, "Setting up, Repairing, or Migrating Age as server with BLE (from scratch)", v79, 2u);
      MEMORY[0x245CC9F60](v79, -1, -1);
    }

    v80 = v0[45];
    v81 = v0[42];
    v82 = v0[31];
    v83 = v0[32];

    v80(v81, v82);
    v84 = swift_task_alloc();
    v0[54] = v84;
    *v84 = v0;
    v84[1] = sub_240883478;
    v85 = v0[4];
    v86 = v0[5];

    return sub_24089D828(v85);
  }

  else
  {
    if (v7 != *MEMORY[0x277CED238])
    {
      v136 = v0[40];
      sub_2408D4910();
      v137 = sub_2408D4B10();
      v138 = sub_2408D4F20();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        *v139 = 0;
        _os_log_impl(&dword_2407CF000, v137, v138, "Not able to handle connecting non-proximity transports", v139, 2u);
        MEMORY[0x245CC9F60](v139, -1, -1);
      }

      v140 = v0[45];
      v141 = v0[40];
      v142 = v0[31];
      v143 = v0[32];
      v125 = v0[26];
      v95 = v0[27];
      v124 = v0[25];

      v140(v141, v142);
      sub_2408B3108();
      goto LABEL_38;
    }

    v107 = v0[41];
    sub_2408D4910();
    v108 = sub_2408D4B10();
    v109 = sub_2408D4F20();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_2407CF000, v108, v109, "Setting up using BLE client intercept", v110, 2u);
      MEMORY[0x245CC9F60](v110, -1, -1);
    }

    v111 = v0[45];
    v112 = v0[41];
    v113 = v0[31];
    v114 = v0[32];
    v115 = v0[5];

    v111(v112, v113);
    v116 = *(v115 + 112);
    v117 = *(MEMORY[0x277CED800] + 4);
    v184 = (*MEMORY[0x277CED800] + MEMORY[0x277CED800]);
    v118 = swift_task_alloc();
    v0[59] = v118;
    *v118 = v0;
    v118[1] = sub_240883C10;
    v119 = v0[20];

    return v184(v119);
  }
}

uint64_t sub_24088288C()
{
  v1 = v0[50];
  v2 = v0[22];
  v3 = v0[12];
  v4 = v0[5];
  sub_2408D41E0();

  return MEMORY[0x2822009F8](sub_240882900, v4, 0);
}

uint64_t sub_240882900()
{
  v93 = v0;
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  (*(v5 + 104))(v3, *MEMORY[0x277CED810], v4);
  LOBYTE(v1) = sub_2408D4210();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  if (v1)
  {
    v8 = v0[47];
    v7 = v0[48];
    v9 = v0[39];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[17];
    sub_2408D4910();
    v8(v11, v10, v12);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F10();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[49];
    if (v15)
    {
      v18 = v0[47];
      v17 = v0[48];
      v89 = v0[39];
      v91 = v0[45];
      v85 = v0[32];
      v87 = v0[31];
      v20 = v0[21];
      v19 = v0[22];
      v81 = v0[18];
      v83 = v0[49];
      v21 = v0[17];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v92 = v23;
      *v22 = 136315138;
      v18(v19, v20, v21);
      v24 = sub_2408D4D40();
      v26 = v25;
      v83(v20, v21);
      v27 = sub_2408CC504(v24, v26, &v92);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2407CF000, v13, v14, "Setting up as client with provided BLE peer device: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);

      v91(v89, v87);
    }

    else
    {
      v54 = v0[45];
      v55 = v0[39];
      v56 = v0[31];
      v57 = v0[32];
      v58 = v0[21];
      v59 = v0[17];
      v60 = v0[18];

      v16(v58, v59);
      v54(v55, v56);
    }

    v61 = v0[24];
    v63 = v0[4];
    v62 = v0[5];
    v64 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector);
    v65 = swift_task_alloc();
    v0[51] = v65;
    v65[2] = v61;
    v65[3] = v62;
    v65[4] = v63;
    v66 = *(MEMORY[0x277D85A40] + 4);
    v67 = swift_task_alloc();
    v0[52] = v67;
    *v67 = v0;
    v67[1] = sub_240882F54;
    v68 = v0[8];
    v69 = v0[6];

    return MEMORY[0x2822008A0](v68, v62, v64, 0xD000000000000024, 0x80000002408DB2E0, sub_2408B3D90, v65, v69);
  }

  else
  {
    v28 = v0[38];
    sub_2408D4910();
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F30();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2407CF000, v29, v30, "Cancelling setup due to BLE client interception", v31, 2u);
      MEMORY[0x245CC9F60](v31, -1, -1);
    }

    v32 = v0[49];
    v33 = v0[45];
    v34 = v0[38];
    v35 = v0[31];
    v36 = v0[32];
    v37 = v0[24];
    v38 = v0[17];
    v39 = v0[18];

    v33(v34, v35);
    v40 = sub_2408D3500();
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277CED288], v40);
    swift_willThrow();
    v32(v37, v38);
    v43 = v0[43];
    v42 = v0[44];
    v44 = v0[41];
    v45 = v0[42];
    v47 = v0[39];
    v46 = v0[40];
    v49 = v0[37];
    v48 = v0[38];
    v51 = v0[35];
    v50 = v0[36];
    v70 = v0[34];
    v71 = v0[33];
    v72 = v0[30];
    v73 = v0[27];
    v74 = v0[24];
    v75 = v0[23];
    v76 = v0[22];
    v77 = v0[21];
    v78 = v0[20];
    v79 = v0[19];
    v80 = v0[16];
    v82 = v0[15];
    v84 = v0[12];
    v86 = v0[11];
    v88 = v0[8];
    v90 = v0[7];

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_240882F54()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v9 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_2408832A4;
  }

  else
  {
    v6 = *(v2 + 408);
    v7 = *(v2 + 40);

    v5 = sub_24088307C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24088307C()
{
  v1 = v0[49];
  v2 = v0[24];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[8];
  v6 = v0[3];
  v7 = *(v0[6] + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v8 - 8) + 32))(v6, v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  v1(v2, v3);
  v10 = v0[43];
  v9 = v0[44];
  v12 = v0[41];
  v11 = v0[42];
  v13 = v0[39];
  v14 = v0[40];
  v16 = v0[37];
  v15 = v0[38];
  v18 = v0[35];
  v17 = v0[36];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[30];
  v24 = v0[27];
  v25 = v0[24];
  v26 = v0[23];
  v27 = v0[22];
  v28 = v0[21];
  v29 = v0[20];
  v30 = v0[19];
  v31 = v0[16];
  v32 = v0[15];
  v33 = v0[12];
  v34 = v0[11];
  v35 = v0[8];
  v36 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2408832A4()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[24];
  v4 = v0[17];
  v5 = v0[18];

  v2(v3, v4);
  v34 = v0[53];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v9 = v0[42];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[37];
  v12 = v0[38];
  v15 = v0[35];
  v14 = v0[36];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[30];
  v21 = v0[27];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[22];
  v25 = v0[21];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[16];
  v29 = v0[15];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[8];
  v33 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_240883478()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;

  if (v0)
  {
    *(v2 + 464) = v0;
    v5 = *(v2 + 40);
    v6 = sub_240883A68;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = sub_24088359C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24088359C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[56] = v6;
  *v6 = v0;
  v6[1] = sub_2408836D0;
  v8 = v0[6];
  v7 = v0[7];

  return MEMORY[0x2822008A0](v7, v1, v3, 0xD000000000000022, 0x80000002408DB360, sub_2408B3D58, v4, v8);
}

uint64_t sub_2408836D0()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v9 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_2408839F8;
  }

  else
  {
    v6 = *(v2 + 440);
    v7 = *(v2 + 40);

    v5 = sub_2408837F8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2408837F8()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *(v0[6] + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v4 - 8) + 32))(v2, v1 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);
  v6 = v0[43];
  v5 = v0[44];
  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[39];
  v10 = v0[40];
  v12 = v0[37];
  v11 = v0[38];
  v14 = v0[35];
  v13 = v0[36];
  v17 = v0[34];
  v18 = v0[33];
  v19 = v0[30];
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[15];
  v29 = v0[12];
  v30 = v0[11];
  v31 = v0[8];
  v32 = v0[7];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2408839F8()
{
  v1 = v0[55];

  v0[58] = v0[57];
  v2 = v0[5];

  return MEMORY[0x2822009F8](sub_240883A68, v2, 0);
}

uint64_t sub_240883A68()
{
  v29 = v0[58];
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[12];
  v26 = v0[11];
  v27 = v0[8];
  v28 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_240883C10()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_240883FF4;
  }

  else
  {
    v6 = sub_240883D3C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240883D3C()
{
  v41 = v0;
  v1 = v0[33];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  sub_2408D4910();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[45];
  v11 = v0[32];
  v12 = v0[33];
  v38 = v0[31];
  if (v9)
  {
    v36 = v0[33];
    v37 = v0[45];
    v13 = v0[22];
    v15 = v0[18];
    v14 = v0[19];
    v16 = v0[17];
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v17 = 136315138;
    log = v7;
    v18 = v14;
    v6(v13, v14, v16);
    v19 = sub_2408D4D40();
    v20 = v8;
    v22 = v21;
    v23 = *(v15 + 8);
    v23(v18, v16);
    v24 = sub_2408CC504(v19, v22, &v40);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2407CF000, log, v20, "Intercepted BLE client: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x245CC9F60](v35, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);

    v37(v36, v38);
  }

  else
  {
    v25 = v0[18];
    v26 = v0[19];
    v27 = v0[17];

    v23 = *(v25 + 8);
    v23(v26, v27);
    v10(v12, v38);
  }

  v0[61] = v23;
  v28 = v0[20];
  v29 = swift_task_alloc();
  v0[62] = v29;
  *(v29 + 16) = v28;
  v30 = *(MEMORY[0x277CED870] + 4);
  v39 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v31 = swift_task_alloc();
  v0[63] = v31;
  *v31 = v0;
  v31[1] = sub_24088419C;
  v32 = v0[4];

  return v39(sub_2408B3D14, v29);
}

uint64_t sub_240883FF4()
{
  v29 = v0[60];
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[41];
  v4 = v0[42];
  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];
  v10 = v0[35];
  v9 = v0[36];
  v13 = v0[34];
  v14 = v0[33];
  v15 = v0[30];
  v16 = v0[27];
  v17 = v0[24];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[21];
  v21 = v0[20];
  v22 = v0[19];
  v23 = v0[16];
  v24 = v0[15];
  v25 = v0[12];
  v26 = v0[11];
  v27 = v0[8];
  v28 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24088419C()
{
  v2 = *(*v1 + 504);
  v3 = *v1;
  v3[64] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_240884460, v4, 0);
  }

  else
  {
    v5 = v3[62];

    v6 = swift_task_alloc();
    v3[65] = v6;
    *v6 = v3;
    v6[1] = sub_240884334;
    v7 = v3[4];
    v8 = v3[5];
    v9 = v3[3];

    return (sub_2408813B8)(v9, v7);
  }
}

uint64_t sub_240884334()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_2408847F0;
  }

  else
  {
    v6 = sub_240884630;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240884460()
{
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];

  v2(v3, v4);
  v34 = v0[64];
  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v9 = v0[42];
  v11 = v0[39];
  v10 = v0[40];
  v13 = v0[37];
  v12 = v0[38];
  v15 = v0[35];
  v14 = v0[36];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[30];
  v21 = v0[27];
  v22 = v0[24];
  v23 = v0[23];
  v24 = v0[22];
  v25 = v0[21];
  v26 = v0[20];
  v27 = v0[19];
  v28 = v0[16];
  v29 = v0[15];
  v30 = v0[12];
  v31 = v0[11];
  v32 = v0[8];
  v33 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_240884630()
{
  v1 = *(v0 + 144) + 8;
  (*(v0 + 488))(*(v0 + 160), *(v0 + 136));
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v14 = *(v0 + 272);
  v15 = *(v0 + 264);
  v16 = *(v0 + 240);
  v17 = *(v0 + 216);
  v18 = *(v0 + 192);
  v19 = *(v0 + 184);
  v20 = *(v0 + 176);
  v21 = *(v0 + 168);
  v22 = *(v0 + 160);
  v23 = *(v0 + 152);
  v24 = *(v0 + 128);
  v25 = *(v0 + 120);
  v26 = *(v0 + 96);
  v27 = *(v0 + 88);
  v28 = *(v0 + 64);
  v29 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2408847F0()
{
  v1 = *(v0 + 144) + 8;
  (*(v0 + 488))(*(v0 + 160), *(v0 + 136));
  v30 = *(v0 + 528);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);
  v9 = *(v0 + 296);
  v8 = *(v0 + 304);
  v11 = *(v0 + 280);
  v10 = *(v0 + 288);
  v14 = *(v0 + 272);
  v15 = *(v0 + 264);
  v16 = *(v0 + 240);
  v17 = *(v0 + 216);
  v18 = *(v0 + 192);
  v19 = *(v0 + 184);
  v20 = *(v0 + 176);
  v21 = *(v0 + 168);
  v22 = *(v0 + 160);
  v23 = *(v0 + 152);
  v24 = *(v0 + 128);
  v25 = *(v0 + 120);
  v26 = *(v0 + 96);
  v27 = *(v0 + 88);
  v28 = *(v0 + 64);
  v29 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2408849B4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507968, &qword_2408D9110);
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507970, &qword_2408D9118);
  v3[12] = v9;
  v10 = *(v9 - 8);
  v3[13] = v10;
  v11 = *(v10 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v12 = sub_2408D49A0();
  v3[16] = v12;
  v13 = *(v12 - 8);
  v3[17] = v13;
  v14 = *(v13 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v15 = sub_2408D34E0();
  v3[24] = v15;
  v16 = *(v15 - 8);
  v3[25] = v16;
  v17 = *(v16 + 64) + 15;
  v3[26] = swift_task_alloc();
  v18 = sub_2408D4350();
  v3[27] = v18;
  v19 = *(v18 - 8);
  v3[28] = v19;
  v20 = *(v19 + 64) + 15;
  v3[29] = swift_task_alloc();
  v21 = sub_2408D4B20();
  v3[30] = v21;
  v22 = *(v21 - 8);
  v3[31] = v22;
  v23 = *(v22 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240884D70, v2, 0);
}

uint64_t sub_240884D70()
{
  v25 = v0;
  v1 = v0[43];
  v2 = v0[4];
  sub_2408D4910();

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v6 = v0[30];
    v7 = v0[31];
    v8 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v0[2] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
    v11 = sub_2408D4D40();
    v13 = sub_2408CC504(v11, v12, &v24);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v3, v4, "[PTC] Connecting with model: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    v14 = *(v7 + 8);
    v14(v5, v6);
  }

  else
  {
    v15 = v0[43];
    v16 = v0[30];
    v17 = v0[31];

    v14 = *(v17 + 8);
    v14(v15, v16);
  }

  v0[44] = v14;
  v18 = *(MEMORY[0x277CED858] + 4);
  v23 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v19 = swift_task_alloc();
  v0[45] = v19;
  *v19 = v0;
  v19[1] = sub_240884F98;
  v20 = v0[29];
  v21 = v0[4];

  return v23(v20);
}

uint64_t sub_240884F98()
{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2408850A8, v2, 0);
}

uint64_t sub_2408850A8()
{
  v185 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  sub_2408D42C0();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v6 + 88))(v4, v5);
  if (v7 == *MEMORY[0x277CED250])
  {
    v8 = v0[42];
    v9 = v0[26];
    v10 = v0[23];
    v11 = v0[22];
    v12 = v0[16];
    v13 = v0[17];
    (*(v0[25] + 96))(v9, v0[24]);
    (*(v13 + 32))(v10, v9, v12);
    sub_2408D4910();
    v14 = *(v13 + 16);
    v0[46] = v14;
    v0[47] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v11, v10, v12);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[44];
    v19 = v0[42];
    v178 = v0[31];
    v181 = v0[30];
    v20 = v0[22];
    if (v17)
    {
      v172 = v0[42];
      v175 = v14;
      v21 = v0[21];
      v23 = v0[16];
      v22 = v0[17];
      v169 = v0[44];
      v24 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v184 = v166;
      *v24 = 136315138;
      v175(v21, v20, v23);
      v25 = sub_2408D4D40();
      v163 = v16;
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v20, v23);
      v29 = v25;
      v14 = v175;
      v30 = sub_2408CC504(v29, v27, &v184);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2407CF000, v15, v163, "Offering BLE client to intercept if applicable: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v166);
      MEMORY[0x245CC9F60](v166, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);

      v169(v172, v181);
    }

    else
    {
      v52 = v0[16];
      v51 = v0[17];

      v28 = *(v51 + 8);
      v28(v20, v52);
      v18(v19, v181);
    }

    v0[48] = v28;
    v53 = v0[23];
    v54 = v0[21];
    v55 = v0[16];
    v0[49] = *(v0[5] + 112);
    v14(v54, v53, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
    sub_2407D917C(&qword_27E507598, &qword_27E506E58, &unk_2408D81B0);
    v57 = sub_2408D4E00();

    return MEMORY[0x2822009F8](sub_240885E80, v57, v56);
  }

  if (v7 == *MEMORY[0x277CED240])
  {
    v32 = v0 + 15;
    v31 = v0[15];
    v33 = v0[26];
    v34 = v0[12];
    v35 = v0[13];
    (*(v0[25] + 96))(v33, v0[24]);
    (*(v35 + 32))(v31, v33, v34);
    v36 = sub_2408D3CD0();
    if (v36)
    {
      v37 = v36;
      v38 = v0[36];
      sub_2408D4910();
      v39 = v37;
      v40 = sub_2408D4B10();
      v41 = sub_2408D4F10();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138412290;
        *(v42 + 4) = v39;
        *v43 = v37;
        v44 = v39;
        _os_log_impl(&dword_2407CF000, v40, v41, "Setting up as client with provided pre-established template: %@", v42, 0xCu);
        sub_2407D9440(v43, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v43, -1, -1);
        MEMORY[0x245CC9F60](v42, -1, -1);
      }

      v45 = v0[44];
      v46 = v0[36];
      v47 = v0[30];
      v48 = v0[31];
      v49 = v0[5];
      v50 = v0[3];

      v45(v46, v47);
      sub_2407EFC24(v39, v50);
LABEL_27:
      (*(v0[13] + 8))(*v32, v0[12]);

      v98 = v0[42];
      v97 = v0[43];
      v100 = v0[40];
      v99 = v0[41];
      v101 = v0[38];
      v102 = v0[39];
      v104 = v0[36];
      v103 = v0[37];
      v106 = v0[34];
      v105 = v0[35];
      v147 = v0[33];
      v149 = v0[32];
      v151 = v0[29];
      v153 = v0[26];
      v155 = v0[23];
      v157 = v0[22];
      v159 = v0[21];
      v161 = v0[20];
      v164 = v0[19];
      v167 = v0[18];
      v170 = v0[15];
      v173 = v0[14];
      v176 = v0[11];
      v179 = v0[10];
      v182 = v0[7];

      v107 = v0[1];
LABEL_39:

      return v107();
    }

    v88 = v0[35];
    sub_2408D4910();
    v89 = sub_2408D4B10();
    v90 = sub_2408D4F30();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_2407CF000, v89, v90, "Failed to perform remote setup as client with nil message session", v91, 2u);
      MEMORY[0x245CC9F60](v91, -1, -1);
    }

    v92 = v0[44];
    v93 = v0[35];
    v94 = v0[30];
    v95 = v0[31];
    v96 = v0[15];
LABEL_37:
    v125 = v0[12];
    v126 = v0[13];

    v92(v93, v94);
    sub_2407F11F8();
LABEL_38:
    swift_allocError();
    swift_willThrow();
    (*(v126 + 8))(v96, v125);
    v128 = v0[42];
    v127 = v0[43];
    v130 = v0[40];
    v129 = v0[41];
    v131 = v0[38];
    v132 = v0[39];
    v134 = v0[36];
    v133 = v0[37];
    v136 = v0[34];
    v135 = v0[35];
    v146 = v0[33];
    v148 = v0[32];
    v150 = v0[29];
    v152 = v0[26];
    v154 = v0[23];
    v156 = v0[22];
    v158 = v0[21];
    v160 = v0[20];
    v162 = v0[19];
    v165 = v0[18];
    v168 = v0[15];
    v171 = v0[14];
    v174 = v0[11];
    v177 = v0[10];
    v180 = v0[7];

    v107 = v0[1];
    goto LABEL_39;
  }

  if (v7 == *MEMORY[0x277CED248])
  {
    v32 = v0 + 14;
    v58 = v0[14];
    v59 = v0[26];
    v60 = v0[12];
    v61 = v0[13];
    (*(v0[25] + 96))(v59, v0[24]);
    (*(v61 + 32))(v58, v59, v60);
    v62 = sub_2408D3CD0();
    if (v62)
    {
      v63 = v62;
      v64 = v0[34];
      sub_2408D4910();
      v39 = v63;
      v65 = sub_2408D4B10();
      v66 = sub_2408D4F10();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        *(v67 + 4) = v39;
        *v68 = v63;
        v69 = v39;
        _os_log_impl(&dword_2407CF000, v65, v66, "Setting up as server with provided pre-established template: %@", v67, 0xCu);
        sub_2407D9440(v68, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v68, -1, -1);
        MEMORY[0x245CC9F60](v67, -1, -1);
      }

      v70 = v0[44];
      v71 = v0[34];
      v72 = v0[30];
      v73 = v0[31];
      v74 = v0[5];
      v75 = v0[3];

      v70(v71, v72);
      sub_2407EFC24(v39, v75);
      goto LABEL_27;
    }

    v121 = v0[33];
    sub_2408D4910();
    v89 = sub_2408D4B10();
    v122 = sub_2408D4F30();
    if (os_log_type_enabled(v89, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_2407CF000, v89, v122, "Failed to perform remote setup as client with nil message session", v123, 2u);
      MEMORY[0x245CC9F60](v123, -1, -1);
    }

    v92 = v0[44];
    v93 = v0[33];
    v94 = v0[30];
    v124 = v0[31];
    v96 = v0[14];
    goto LABEL_37;
  }

  if (v7 == *MEMORY[0x277CED258])
  {
    v76 = v0[41];
    sub_2408D4910();
    v77 = sub_2408D4B10();
    v78 = sub_2408D4F10();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_2407CF000, v77, v78, "Setting up, Repairing, or Migrating Age as server with BLE (from scratch)", v79, 2u);
      MEMORY[0x245CC9F60](v79, -1, -1);
    }

    v80 = v0[44];
    v81 = v0[41];
    v82 = v0[30];
    v83 = v0[31];

    v80(v81, v82);
    v84 = swift_task_alloc();
    v0[53] = v84;
    *v84 = v0;
    v84[1] = sub_240886A44;
    v85 = v0[4];
    v86 = v0[5];
    v87 = v0[3];

    return sub_240889694(v87, v85);
  }

  else
  {
    if (v7 != *MEMORY[0x277CED238])
    {
      v137 = v0[39];
      sub_2408D4910();
      v138 = sub_2408D4B10();
      v139 = sub_2408D4F20();
      if (os_log_type_enabled(v138, v139))
      {
        v140 = swift_slowAlloc();
        *v140 = 0;
        _os_log_impl(&dword_2407CF000, v138, v139, "Not able to handle connecting non-proximity transports", v140, 2u);
        MEMORY[0x245CC9F60](v140, -1, -1);
      }

      v141 = v0[44];
      v142 = v0[39];
      v143 = v0[30];
      v144 = v0[31];
      v126 = v0[25];
      v96 = v0[26];
      v125 = v0[24];

      v141(v142, v143);
      sub_2408B3108();
      goto LABEL_38;
    }

    v108 = v0[40];
    sub_2408D4910();
    v109 = sub_2408D4B10();
    v110 = sub_2408D4F20();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&dword_2407CF000, v109, v110, "Setting up using BLE client intercept", v111, 2u);
      MEMORY[0x245CC9F60](v111, -1, -1);
    }

    v112 = v0[44];
    v113 = v0[40];
    v114 = v0[30];
    v115 = v0[31];
    v116 = v0[5];

    v112(v113, v114);
    v117 = *(v116 + 112);
    v118 = *(MEMORY[0x277CED800] + 4);
    v183 = (*MEMORY[0x277CED800] + MEMORY[0x277CED800]);
    v119 = swift_task_alloc();
    v0[55] = v119;
    *v119 = v0;
    v119[1] = sub_240886EA8;
    v120 = v0[19];

    return v183(v120);
  }
}

uint64_t sub_240885E80()
{
  v1 = v0[49];
  v2 = v0[21];
  v3 = v0[11];
  v4 = v0[5];
  sub_2408D41E0();

  return MEMORY[0x2822009F8](sub_240885EF4, v4, 0);
}

uint64_t sub_240885EF4()
{
  v92 = v0;
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  (*(v5 + 104))(v3, *MEMORY[0x277CED810], v4);
  LOBYTE(v1) = sub_2408D4210();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v6(v2, v4);
  if (v1)
  {
    v8 = v0[46];
    v7 = v0[47];
    v9 = v0[38];
    v10 = v0[23];
    v11 = v0[20];
    v12 = v0[16];
    sub_2408D4910();
    v8(v11, v10, v12);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F10();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[48];
    if (v15)
    {
      v18 = v0[46];
      v17 = v0[47];
      v88 = v0[38];
      v90 = v0[44];
      v84 = v0[31];
      v86 = v0[30];
      v20 = v0[20];
      v19 = v0[21];
      v80 = v0[17];
      v82 = v0[48];
      v21 = v0[16];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v91 = v23;
      *v22 = 136315138;
      v18(v19, v20, v21);
      v24 = sub_2408D4D40();
      v26 = v25;
      v82(v20, v21);
      v27 = sub_2408CC504(v24, v26, &v91);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2407CF000, v13, v14, "Setting up as client with provided BLE peer device: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);

      v90(v88, v86);
    }

    else
    {
      v54 = v0[44];
      v55 = v0[38];
      v56 = v0[30];
      v57 = v0[31];
      v58 = v0[20];
      v59 = v0[16];
      v60 = v0[17];

      v16(v58, v59);
      v54(v55, v56);
    }

    v61 = v0[23];
    v63 = v0[4];
    v62 = v0[5];
    v64 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector);
    v65 = swift_task_alloc();
    v0[50] = v65;
    v65[2] = v61;
    v65[3] = v62;
    v65[4] = v63;
    v66 = *(MEMORY[0x277D85A40] + 4);
    v67 = swift_task_alloc();
    v0[51] = v67;
    *v67 = v0;
    v67[1] = sub_240886538;
    v69 = v0[6];
    v68 = v0[7];

    return MEMORY[0x2822008A0](v68, v62, v64, 0xD000000000000024, 0x80000002408DB2E0, sub_2408B31A0, v65, v69);
  }

  else
  {
    v28 = v0[37];
    sub_2408D4910();
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F30();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2407CF000, v29, v30, "Cancelling setup due to BLE client interception", v31, 2u);
      MEMORY[0x245CC9F60](v31, -1, -1);
    }

    v32 = v0[48];
    v33 = v0[44];
    v34 = v0[37];
    v35 = v0[30];
    v36 = v0[31];
    v37 = v0[23];
    v38 = v0[16];
    v39 = v0[17];

    v33(v34, v35);
    v40 = sub_2408D3500();
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277CED288], v40);
    swift_willThrow();
    v32(v37, v38);
    v43 = v0[42];
    v42 = v0[43];
    v45 = v0[40];
    v44 = v0[41];
    v47 = v0[38];
    v46 = v0[39];
    v49 = v0[36];
    v48 = v0[37];
    v51 = v0[34];
    v50 = v0[35];
    v70 = v0[33];
    v71 = v0[32];
    v72 = v0[29];
    v73 = v0[26];
    v74 = v0[23];
    v75 = v0[22];
    v76 = v0[21];
    v77 = v0[20];
    v78 = v0[19];
    v79 = v0[18];
    v81 = v0[15];
    v83 = v0[14];
    v85 = v0[11];
    v87 = v0[10];
    v89 = v0[7];

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_240886538()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v9 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_240886878;
  }

  else
  {
    v6 = *(v2 + 400);
    v7 = *(v2 + 40);

    v5 = sub_240886660;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240886660()
{
  v1 = v0[48];
  v2 = v0[23];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[7];
  v6 = v0[3];
  v7 = *(v0[6] + 48);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v8 - 8) + 32))(v6, v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  v1(v2, v3);
  v10 = v0[42];
  v9 = v0[43];
  v12 = v0[40];
  v11 = v0[41];
  v13 = v0[38];
  v14 = v0[39];
  v16 = v0[36];
  v15 = v0[37];
  v18 = v0[34];
  v17 = v0[35];
  v21 = v0[33];
  v22 = v0[32];
  v23 = v0[29];
  v24 = v0[26];
  v25 = v0[23];
  v26 = v0[22];
  v27 = v0[21];
  v28 = v0[20];
  v29 = v0[19];
  v30 = v0[18];
  v31 = v0[15];
  v32 = v0[14];
  v33 = v0[11];
  v34 = v0[10];
  v35 = v0[7];

  v19 = v0[1];

  return v19();
}

uint64_t sub_240886878()
{
  v1 = v0[50];
  v2 = v0[48];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[17];

  v2(v3, v4);
  v33 = v0[52];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  v15 = v0[34];
  v14 = v0[35];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[29];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[10];
  v32 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_240886A44()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;
  *(*v1 + 432) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_240886D08;
  }

  else
  {
    v6 = sub_240886B70;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240886B70()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v10 = v0[34];
  v9 = v0[35];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[15];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[10];
  v27 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_240886D08()
{
  v28 = v0[54];
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v10 = v0[34];
  v9 = v0[35];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[15];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[10];
  v27 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_240886EA8()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24088728C;
  }

  else
  {
    v6 = sub_240886FD4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240886FD4()
{
  v41 = v0;
  v1 = v0[32];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  sub_2408D4910();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[44];
  v11 = v0[31];
  v12 = v0[32];
  v38 = v0[30];
  if (v9)
  {
    v36 = v0[32];
    v37 = v0[44];
    v13 = v0[21];
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[16];
    v17 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v17 = 136315138;
    log = v7;
    v18 = v14;
    v6(v13, v14, v16);
    v19 = sub_2408D4D40();
    v20 = v8;
    v22 = v21;
    v23 = *(v15 + 8);
    v23(v18, v16);
    v24 = sub_2408CC504(v19, v22, &v40);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2407CF000, log, v20, "Intercepted BLE client: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x245CC9F60](v35, -1, -1);
    MEMORY[0x245CC9F60](v17, -1, -1);

    v37(v36, v38);
  }

  else
  {
    v25 = v0[17];
    v26 = v0[18];
    v27 = v0[16];

    v23 = *(v25 + 8);
    v23(v26, v27);
    v10(v12, v38);
  }

  v0[57] = v23;
  v28 = v0[19];
  v29 = swift_task_alloc();
  v0[58] = v29;
  *(v29 + 16) = v28;
  v30 = *(MEMORY[0x277CED870] + 4);
  v39 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v31 = swift_task_alloc();
  v0[59] = v31;
  *v31 = v0;
  v31[1] = sub_24088742C;
  v32 = v0[4];

  return v39(sub_2408B315C, v29);
}

uint64_t sub_24088728C()
{
  v28 = v0[56];
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v10 = v0[34];
  v9 = v0[35];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[29];
  v16 = v0[26];
  v17 = v0[23];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v22 = v0[18];
  v23 = v0[15];
  v24 = v0[14];
  v25 = v0[11];
  v26 = v0[10];
  v27 = v0[7];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24088742C()
{
  v2 = *(*v1 + 472);
  v3 = *v1;
  v3[60] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_2408876F0, v4, 0);
  }

  else
  {
    v5 = v3[58];

    v6 = swift_task_alloc();
    v3[61] = v6;
    *v6 = v3;
    v6[1] = sub_2408875C4;
    v7 = v3[4];
    v8 = v3[5];
    v9 = v3[3];

    return (sub_2408849B4)(v9, v7);
  }
}

uint64_t sub_2408875C4()
{
  v2 = *v1;
  v3 = *(*v1 + 488);
  v4 = *v1;
  *(*v1 + 496) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_240887A6C;
  }

  else
  {
    v6 = sub_2408878B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408876F0()
{
  v2 = v0[57];
  v1 = v0[58];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];

  v2(v3, v4);
  v33 = v0[60];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[40];
  v8 = v0[41];
  v11 = v0[38];
  v10 = v0[39];
  v13 = v0[36];
  v12 = v0[37];
  v15 = v0[34];
  v14 = v0[35];
  v18 = v0[33];
  v19 = v0[32];
  v20 = v0[29];
  v21 = v0[26];
  v22 = v0[23];
  v23 = v0[22];
  v24 = v0[21];
  v25 = v0[20];
  v26 = v0[19];
  v27 = v0[18];
  v28 = v0[15];
  v29 = v0[14];
  v30 = v0[11];
  v31 = v0[10];
  v32 = v0[7];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2408878B8()
{
  v1 = *(v0 + 136) + 8;
  (*(v0 + 456))(*(v0 + 152), *(v0 + 128));
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v9 = *(v0 + 288);
  v8 = *(v0 + 296);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v14 = *(v0 + 264);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 168);
  v21 = *(v0 + 160);
  v22 = *(v0 + 152);
  v23 = *(v0 + 144);
  v24 = *(v0 + 120);
  v25 = *(v0 + 112);
  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v28 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_240887A6C()
{
  v1 = *(v0 + 136) + 8;
  (*(v0 + 456))(*(v0 + 152), *(v0 + 128));
  v29 = *(v0 + 496);
  v3 = *(v0 + 336);
  v2 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v9 = *(v0 + 288);
  v8 = *(v0 + 296);
  v11 = *(v0 + 272);
  v10 = *(v0 + 280);
  v14 = *(v0 + 264);
  v15 = *(v0 + 256);
  v16 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 184);
  v19 = *(v0 + 176);
  v20 = *(v0 + 168);
  v21 = *(v0 + 160);
  v22 = *(v0 + 152);
  v23 = *(v0 + 144);
  v24 = *(v0 + 120);
  v25 = *(v0 + 112);
  v26 = *(v0 + 88);
  v27 = *(v0 + 80);
  v28 = *(v0 + 56);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_240887C28(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t (*a4)(_BYTE *))
{
  v19 = a3;
  v20 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_2408D34E0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D49A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v16(v13, a2, v14);
  (*(v10 + 104))(v13, *MEMORY[0x277CED250], v9);
  v19(v13);
  v16(v8, a2, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  v17 = v20(v21);
  sub_2408D40C0();
  sub_2407D9440(v8, &qword_27E5079F0, &qword_2408D91D8);
  return v17(v21, 0);
}

uint64_t sub_240887E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v105 = a3;
  v110 = a1;
  v5 = sub_2408D3490();
  v98 = *(v5 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v94 - v11;
  v12 = sub_2408D49A0();
  v13 = *(v12 - 8);
  v106 = v12;
  v107 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v97 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v94 - v20;
  v21 = sub_2408D4B20();
  v108 = *(v21 - 8);
  v109 = v21;
  v22 = *(v108 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v102 = &v94 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v32 = sub_2408D4970();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v100 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v94 - v37;
  v39 = a2;
  sub_2408D4980();
  v40 = sub_2408D4960();
  v41 = *(v33 + 8);
  v101 = v32;
  v99 = v41;
  v41(v38, v32);
  if (v40 <= 0x2Eu)
  {
    if (v40 == 32 || v40 == 43)
    {
      sub_2408D4910();
      v43 = v106;
      v42 = v107;
      (*(v107 + 16))(v19, v39, v106);
      v44 = sub_2408D4B10();
      v45 = sub_2408D4F10();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 16777472;
        v102 = v39;
        v47 = v100;
        sub_2408D4980();
        v48 = sub_2408D4960();
        v49 = v47;
        v39 = v102;
        v99(v49, v101);
        (*(v42 + 8))(v19, v43);
        v46[4] = v48;
        _os_log_impl(&dword_2407CF000, v44, v45, "Handling SF authenticate accounts nearby action type: %hhu", v46, 5u);
        MEMORY[0x245CC9F60](v46, -1, -1);
      }

      else
      {
        (*(v42 + 8))(v19, v43);
      }

      (*(v108 + 8))(v29, v109);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v76 = *(v75 - 8);
      v77 = v103;
      (*(v76 + 16))(v103, v110, v75);
      (*(v76 + 56))(v77, 0, 1, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
      v78 = swift_allocObject();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
      v80 = *(v79 + 52);
      v81 = (*(v79 + 48) + 3) & 0x1FFFFFFFCLL;
      v82 = swift_allocObject();
      *(v82 + ((*(*v82 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      sub_2407EEE04(v77, v82 + *(*v82 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
      sub_2407D9440(v77, &qword_27E506EA8, &unk_2408D9130);
      *(v78 + 16) = v82;
      sub_240893B70(v39, v104, v78, &unk_285284D80, sub_2408B3D9C, &unk_285284DA8, &unk_2408D92C0);
    }

    goto LABEL_12;
  }

  if (v40 != 47 && v40 != 95)
  {
LABEL_12:
    sub_2408D4910();
    v65 = v106;
    v66 = v107;
    v67 = v96;
    (*(v107 + 16))(v96, v39, v106);
    v68 = sub_2408D4B10();
    v69 = sub_2408D4F30();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 16777472;
      v71 = v67;
      v72 = v100;
      sub_2408D4980();
      v73 = sub_2408D4960();
      v99(v72, v101);
      (*(v66 + 8))(v71, v65);
      v70[4] = v73;
      _os_log_impl(&dword_2407CF000, v68, v69, "Unable to handle unknown nearbyAction type: %hhu", v70, 5u);
      v74 = v70;
LABEL_22:
      MEMORY[0x245CC9F60](v74, -1, -1);
      goto LABEL_23;
    }

    (*(v66 + 8))(v67, v65);
    goto LABEL_23;
  }

  v50 = v98;
  v51 = *(v98 + 104);
  v51(v8, *MEMORY[0x277CED208], v5);
  v52 = sub_2408D3480();
  v53 = *(v50 + 8);
  v53(v8, v5);
  v54 = v107;
  if (v52 & 1) != 0 || (v51(v8, *MEMORY[0x277CED1F0], v5), v55 = sub_2408D3480(), v53(v8, v5), (v55))
  {
    sub_2408D4910();
    v56 = v97;
    v57 = v39;
    v58 = v106;
    (*(v54 + 16))(v97, v39, v106);
    v59 = sub_2408D4B10();
    v60 = sub_2408D4F10();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v56;
      v62 = swift_slowAlloc();
      *v62 = 16777472;
      v63 = v100;
      sub_2408D4980();
      v64 = sub_2408D4960();
      v99(v63, v101);
      (*(v54 + 8))(v61, v58);
      v62[4] = v64;
      _os_log_impl(&dword_2407CF000, v59, v60, "Handling appleIDSignInFamily nearby action type with SetupKit: %hhu", v62, 5u);
      MEMORY[0x245CC9F60](v62, -1, -1);
    }

    else
    {
      (*(v54 + 8))(v56, v58);
    }

    (*(v108 + 8))(v102, v109);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v84 = *(v83 - 8);
    v85 = v103;
    (*(v84 + 16))(v103, v110, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
    v86 = swift_allocObject();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
    v88 = *(v87 + 52);
    v89 = (*(v87 + 48) + 3) & 0x1FFFFFFFCLL;
    v90 = swift_allocObject();
    *(v90 + ((*(*v90 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_2407EEE04(v85, v90 + *(*v90 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
    sub_2407D9440(v85, &qword_27E506EA8, &unk_2408D9130);
    *(v86 + 16) = v90;
    sub_24088AA5C(v57, v104, v86, &unk_285284E20, sub_2408B42AC, &unk_285284E48, &unk_2408D92F0);
  }

  v31 = v95;
  sub_2408D4910();
  v68 = sub_2408D4B10();
  v92 = sub_2408D4F30();
  if (os_log_type_enabled(v68, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_2407CF000, v68, v92, "Unable to handle appleIDSignInFamily type because a feature flag does not allow it.", v93, 2u);
    v74 = v93;
    goto LABEL_22;
  }

LABEL_23:

  (*(v108 + 8))(v31, v109);
  sub_2407F11F8();
  v111 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  return sub_2408D4E10();
}

uint64_t sub_240888A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v105 = a3;
  v110 = a1;
  v5 = sub_2408D3490();
  v98 = *(v5 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v94 - v11;
  v12 = sub_2408D49A0();
  v13 = *(v12 - 8);
  v106 = v12;
  v107 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v97 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v94 - v20;
  v21 = sub_2408D4B20();
  v108 = *(v21 - 8);
  v109 = v21;
  v22 = *(v108 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v95 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v102 = &v94 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v94 - v30;
  v32 = sub_2408D4970();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v100 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v94 - v37;
  v39 = a2;
  sub_2408D4980();
  v40 = sub_2408D4960();
  v41 = *(v33 + 8);
  v101 = v32;
  v99 = v41;
  v41(v38, v32);
  if (v40 <= 0x2Eu)
  {
    if (v40 == 32 || v40 == 43)
    {
      sub_2408D4910();
      v43 = v106;
      v42 = v107;
      (*(v107 + 16))(v19, v39, v106);
      v44 = sub_2408D4B10();
      v45 = sub_2408D4F10();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 16777472;
        v102 = v39;
        v47 = v100;
        sub_2408D4980();
        v48 = sub_2408D4960();
        v49 = v47;
        v39 = v102;
        v99(v49, v101);
        (*(v42 + 8))(v19, v43);
        v46[4] = v48;
        _os_log_impl(&dword_2407CF000, v44, v45, "Handling SF authenticate accounts nearby action type: %hhu", v46, 5u);
        MEMORY[0x245CC9F60](v46, -1, -1);
      }

      else
      {
        (*(v42 + 8))(v19, v43);
      }

      (*(v108 + 8))(v29, v109);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
      v76 = *(v75 - 8);
      v77 = v103;
      (*(v76 + 16))(v103, v110, v75);
      (*(v76 + 56))(v77, 0, 1, v75);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
      v78 = swift_allocObject();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
      v80 = *(v79 + 52);
      v81 = (*(v79 + 48) + 3) & 0x1FFFFFFFCLL;
      v82 = swift_allocObject();
      *(v82 + ((*(*v82 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
      sub_2407EEE04(v77, v82 + *(*v82 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
      sub_2407D9440(v77, &qword_27E506EA8, &unk_2408D9130);
      *(v78 + 16) = v82;
      sub_240893B70(v39, v104, v78, &unk_285284BC8, sub_2408B31AC, &unk_285284BF0, &unk_2408D9158);
    }

    goto LABEL_12;
  }

  if (v40 != 47 && v40 != 95)
  {
LABEL_12:
    sub_2408D4910();
    v65 = v106;
    v66 = v107;
    v67 = v96;
    (*(v107 + 16))(v96, v39, v106);
    v68 = sub_2408D4B10();
    v69 = sub_2408D4F30();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 16777472;
      v71 = v67;
      v72 = v100;
      sub_2408D4980();
      v73 = sub_2408D4960();
      v99(v72, v101);
      (*(v66 + 8))(v71, v65);
      v70[4] = v73;
      _os_log_impl(&dword_2407CF000, v68, v69, "Unable to handle unknown nearbyAction type: %hhu", v70, 5u);
      v74 = v70;
LABEL_22:
      MEMORY[0x245CC9F60](v74, -1, -1);
      goto LABEL_23;
    }

    (*(v66 + 8))(v67, v65);
    goto LABEL_23;
  }

  v50 = v98;
  v51 = *(v98 + 104);
  v51(v8, *MEMORY[0x277CED208], v5);
  v52 = sub_2408D3480();
  v53 = *(v50 + 8);
  v53(v8, v5);
  v54 = v107;
  if (v52 & 1) != 0 || (v51(v8, *MEMORY[0x277CED1F0], v5), v55 = sub_2408D3480(), v53(v8, v5), (v55))
  {
    sub_2408D4910();
    v56 = v97;
    v57 = v39;
    v58 = v106;
    (*(v54 + 16))(v97, v39, v106);
    v59 = sub_2408D4B10();
    v60 = sub_2408D4F10();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v56;
      v62 = swift_slowAlloc();
      *v62 = 16777472;
      v63 = v100;
      sub_2408D4980();
      v64 = sub_2408D4960();
      v99(v63, v101);
      (*(v54 + 8))(v61, v58);
      v62[4] = v64;
      _os_log_impl(&dword_2407CF000, v59, v60, "Handling appleIDSignInFamily nearby action type with SetupKit: %hhu", v62, 5u);
      MEMORY[0x245CC9F60](v62, -1, -1);
    }

    else
    {
      (*(v54 + 8))(v56, v58);
    }

    (*(v108 + 8))(v102, v109);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v84 = *(v83 - 8);
    v85 = v103;
    (*(v84 + 16))(v103, v110, v83);
    (*(v84 + 56))(v85, 0, 1, v83);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
    v86 = swift_allocObject();
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
    v88 = *(v87 + 52);
    v89 = (*(v87 + 48) + 3) & 0x1FFFFFFFCLL;
    v90 = swift_allocObject();
    *(v90 + ((*(*v90 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
    sub_2407EEE04(v85, v90 + *(*v90 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
    sub_2407D9440(v85, &qword_27E506EA8, &unk_2408D9130);
    *(v86 + 16) = v90;
    sub_24088AA5C(v57, v104, v86, &unk_285284C68, sub_2408B3570, &unk_285284C90, &unk_2408D9228);
  }

  v31 = v95;
  sub_2408D4910();
  v68 = sub_2408D4B10();
  v92 = sub_2408D4F30();
  if (os_log_type_enabled(v68, v92))
  {
    v93 = swift_slowAlloc();
    *v93 = 0;
    _os_log_impl(&dword_2407CF000, v68, v92, "Unable to handle appleIDSignInFamily type because a feature flag does not allow it.", v93, 2u);
    v74 = v93;
    goto LABEL_22;
  }

LABEL_23:

  (*(v108 + 8))(v31, v109);
  sub_2407F11F8();
  v111 = swift_allocError();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  return sub_2408D4E10();
}

uint64_t sub_240889694(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_2408D4350();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v3[9] = v9;
  v10 = *(MEMORY[0x277CED858] + 4);
  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v11 = swift_task_alloc();
  v3[10] = v11;
  *v11 = v3;
  v11[1] = sub_2408897EC;

  return v13(v9);
}

uint64_t sub_2408897EC()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2408898FC, v2, 0);
}

uint64_t sub_2408898FC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *(v1 + 16) = 1;
  v2 = *(MEMORY[0x277CED870] + 4);
  v6 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_2408899EC;
  v4 = v0[3];

  return v6(sub_2408B37D4, v1);
}

uint64_t sub_2408899EC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_240889D70;
  }

  else
  {
    v6 = *(v2 + 88);
    v7 = *(v2 + 32);

    v5 = sub_240889B14;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240889B14()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_240889C48;
  v8 = v0[5];
  v7 = v0[6];

  return MEMORY[0x2822008A0](v7, v1, v3, 0xD000000000000022, 0x80000002408DB360, sub_2408B37DC, v4, v8);
}

uint64_t sub_240889C48()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v9 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_240889EC8;
  }

  else
  {
    v6 = *(v2 + 112);
    v7 = *(v2 + 32);

    v5 = sub_240889DF4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240889D70()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_240889DF4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];
  v4 = *(v0[5] + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v5 - 8) + 32))(v3, v2 + v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_240889EC8()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_240889F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v22 - v15;
  v17 = sub_2408D4E60();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector);
  v19 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a2;
  *(v20 + 3) = v18;
  *(v20 + 4) = a2;
  *(v20 + 5) = a3;
  (*(v9 + 32))(&v20[v19], v12, v8);
  swift_retain_n();

  sub_24083AB60(0, 0, v16, v23, v20);
}

uint64_t sub_24088A184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v9 = sub_2408D4B20();
  v6[6] = v9;
  v10 = *(v9 - 8);
  v6[7] = v10;
  v11 = *(v10 + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088A284, a4, 0);
}

uint64_t sub_24088A284()
{
  v1 = v0[8];
  sub_2408D4910();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Establishing router with SetupKit server", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  (*(v6 + 8))(v5, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
  v12 = swift_allocObject();
  v0[9] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
  v14 = *(v13 + 52);
  v15 = (*(v13 + 48) + 3) & 0x1FFFFFFFCLL;
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2407EEE04(v7, v16 + *(*v16 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
  sub_2407D9440(v7, &qword_27E506EA8, &unk_2408D9130);
  *(v12 + 16) = v16;
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_2408B5318;
  v19 = v0[2];
  v18 = v0[3];

  return sub_24088CAF4(v18, v12);
}

uint64_t sub_24088A548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v6[5] = swift_task_alloc();
  v9 = sub_2408D4B20();
  v6[6] = v9;
  v10 = *(v9 - 8);
  v6[7] = v10;
  v11 = *(v10 + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088A648, a4, 0);
}

uint64_t sub_24088A648()
{
  v1 = v0[8];
  sub_2408D4910();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Establishing router with SetupKit server", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  (*(v6 + 8))(v5, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507980, &qword_2408D9140);
  v12 = swift_allocObject();
  v0[9] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507988, &qword_2408D9148);
  v14 = *(v13 + 52);
  v15 = (*(v13 + 48) + 3) & 0x1FFFFFFFCLL;
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2407EEE04(v7, v16 + *(*v16 + *MEMORY[0x277D841D0] + 16), &qword_27E506EA8, &unk_2408D9130);
  sub_2407D9440(v7, &qword_27E506EA8, &unk_2408D9130);
  *(v12 + 16) = v16;
  v17 = swift_task_alloc();
  v0[10] = v17;
  *v17 = v0;
  v17[1] = sub_24088A90C;
  v19 = v0[2];
  v18 = v0[3];

  return sub_24088E78C(v18, v12);
}

uint64_t sub_24088A90C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 40);
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_24088AA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v77 = a7;
  v76 = a6;
  v88 = a5;
  v90 = a4;
  v8 = v7;
  v82 = a2;
  v80 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v71 - v15;
  v72 = sub_2408D4B20();
  v71 = *(v72 - 8);
  v16 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v73 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2408D4710();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v86 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2408D4FD0();
  v84 = *(v21 - 8);
  v85 = v21;
  v22 = *(v84 + 64);
  MEMORY[0x28223BE20](v21);
  v83 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2408D4FC0();
  v24 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v79 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2408D4C70();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = sub_2408D40F0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v71 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v71 - v35;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F8, qword_2408D91E0);
  v89 = *(v87 - 8);
  v37 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  v39 = &v71 - v38;
  v40 = sub_2408D49A0();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v36, v80, v40);
  (*(v41 + 56))(v36, 0, 1, v40);
  (*(v29 + 104))(v32, *MEMORY[0x277CED790], v28);
  v42 = swift_allocObject();
  v80 = v8;
  swift_weakInit();
  v43 = swift_allocObject();
  v44 = v82;
  v43[2] = v42;
  v43[3] = v44;
  v43[4] = a3;
  sub_2408B31E8();

  v90 = a3;

  sub_2408D4C60();
  v92[0] = MEMORY[0x277D84F90];
  sub_2408B4B40(&unk_28130EF50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  v45 = v39;
  sub_2408D5080();
  (*(v84 + 104))(v83, *MEMORY[0x277D85260], v85);
  sub_2408D4FF0();
  sub_2408D46E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038);
  sub_2408D3470();
  swift_beginAccess();
  v46 = off_28130F0B0;
  if (off_28130F0B0)
  {

    v46(v91, v39);
    sub_2407D1854(v46);
    sub_2407D2554(v91, v92);
    v47 = sub_2408D4E60();
    v48 = v75;
    (*(*(v47 - 8) + 56))(v75, 1, 1, v47);
    sub_2407D91C4(v92, v91);
    v49 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector);
    v50 = swift_allocObject();
    v51 = v80;
    v50[2] = v80;
    v50[3] = v49;
    sub_2407D2554(v91, (v50 + 4));
    v52 = v90;
    v50[9] = v51;
    v50[10] = v52;
    swift_retain_n();

    sub_24083AB60(0, 0, v48, v77, v50);

    __swift_destroy_boxed_opaque_existential_0Tm(v92);
    return (*(v89 + 8))(v45, v87);
  }

  else
  {
    v54 = v71;
    v55 = v72;
    v56 = v87;
    v57 = v90;
    v58 = v74;
    v59 = v73;
    sub_2408D4910();
    v60 = sub_2408D4B10();
    v61 = sub_2408D4F40();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_2407CF000, v60, v61, "Unexpectedly found no V1AppleIDSetupClientInit", v62, 2u);
      MEMORY[0x245CC9F60](v62, -1, -1);
    }

    (*(v54 + 8))(v59, v55);
    v63 = *(v57 + 16);
    v64 = *(*v63 + *MEMORY[0x277D841D0] + 16);
    v65 = (*(*v63 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v63 + v65));
    sub_24080F060(v63 + v64, v58, &qword_27E506EA8, &unk_2408D9130);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v67 = *(v66 - 8);
    (*(v67 + 56))(v63 + v64, 1, 1, v66);
    os_unfair_lock_unlock((v63 + v65));

    v68 = (*(v67 + 48))(v58, 1, v66);
    v69 = v56;
    v70 = v89;
    if (v68 == 1)
    {
      (*(v89 + 8))(v45, v69);
      return sub_2407D9440(v58, &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      sub_2407F11F8();
      v92[0] = swift_allocError();
      sub_2408D4E10();
      (*(v70 + 8))(v45, v69);
      return (*(v67 + 8))(v58, v66);
    }
  }
}

uint64_t sub_24088B55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v75 = a6;
  v76 = a8;
  v72 = a7;
  v74 = a5;
  v79 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v73 = &v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507998, &qword_2408D9160);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  v21 = sub_2408D4B20();
  v77 = *(v21 - 8);
  v22 = *(v77 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v67 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v62 - v25;
  sub_2408D4910();
  sub_2407D91C4(a1, v82);
  v78 = v14;
  v27 = *(v14 + 16);
  v27(v20, a3, v13);
  v28 = sub_2408D4B10();
  v68 = sub_2408D4F20();
  v29 = os_log_type_enabled(v28, v68);
  v71 = v18;
  v69 = v27;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v66 = a1;
    v31 = v30;
    v32 = swift_slowAlloc();
    v65 = a3;
    v63 = v32;
    v81 = v32;
    *v31 = 136315394;
    sub_2407D91C4(v82, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079B8, &qword_2408D91B8);
    v33 = sub_2408D4D40();
    v64 = v21;
    v35 = v34;
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    v36 = sub_2408CC504(v33, v35, &v81);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v27(v18, v20, v13);
    v37 = sub_2408D4D40();
    v39 = v38;
    v40 = v78;
    (*(v78 + 8))(v20, v13);
    v41 = sub_2408CC504(v37, v39, &v81);
    v21 = v64;

    *(v31 + 14) = v41;
    _os_log_impl(&dword_2407CF000, v28, v68, "BLE client (%s changed to state: %s", v31, 0x16u);
    v42 = v63;
    swift_arrayDestroy();
    v43 = v42;
    a3 = v65;
    MEMORY[0x245CC9F60](v43, -1, -1);
    v44 = v31;
    a1 = v66;
    MEMORY[0x245CC9F60](v44, -1, -1);

    v45 = *(v77 + 8);
    v45(v26, v21);
    v46 = v40;
  }

  else
  {

    v46 = v78;
    (*(v78 + 8))(v20, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v82);
    v45 = *(v77 + 8);
    v45(v26, v21);
  }

  v47 = v13;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v49 = Strong;
    v50 = sub_2408D4E60();
    v51 = v73;
    (*(*(v50 - 8) + 56))(v73, 1, 1, v50);
    v52 = v71;
    v69(v71, a3, v47);
    sub_2407D91C4(a1, v82);
    v53 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v54 = (v70 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v55 = (v54 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    *(v56 + 2) = 0;
    *(v56 + 3) = 0;
    *(v56 + 4) = v49;
    (*(v46 + 32))(&v56[v53], v52, v47);
    *&v56[v54] = v74;
    sub_2407D2554(v82, &v56[v55]);
    *&v56[(v55 + 47) & 0xFFFFFFFFFFFFFFF8] = v75;

    sub_24083AB60(0, 0, v51, v76, v56);
  }

  else
  {
    v58 = v67;
    sub_2408D4910();
    v59 = sub_2408D4B10();
    v60 = sub_2408D4F30();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2407CF000, v59, v60, "Cannot handle state change, self is released", v61, 2u);
      MEMORY[0x245CC9F60](v61, -1, -1);
    }

    return (v45)(v58, v21);
  }
}

uint64_t sub_24088BBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[15] = v14;
  v15 = *(v14 - 8);
  v8[16] = v15;
  v16 = *(v15 + 64) + 15;
  v8[17] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v18 = sub_2408D4B20();
  v8[20] = v18;
  v19 = *(v18 - 8);
  v8[21] = v19;
  v20 = *(v19 + 64) + 15;
  v8[22] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[23] = v21;
  v22 = *(v21 - 8);
  v8[24] = v22;
  v23 = *(v22 + 64) + 15;
  v8[25] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180) - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v25 = swift_task_alloc();
  v8[27] = v25;
  v26 = swift_task_alloc();
  v8[28] = v26;
  *v26 = v8;
  v26[1] = sub_24088BE78;

  return sub_240895734(v25, a5, 0, a6, a7);
}

uint64_t sub_24088BE78()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_24088C394;
  }

  else
  {
    v3 = sub_24088BF8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24088BF8C()
{
  v1 = v0[26];
  sub_2407EEE04(v0[27], v1, &qword_27E5079A0, &qword_2408D9180);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A8, &unk_2408D9190);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[26];
    sub_2407D9440(v0[27], &qword_27E5079A0, &qword_2408D9180);
    v4 = v3;
    v5 = &qword_27E5079A0;
    v6 = &qword_2408D9180;
LABEL_5:
    sub_2407D9440(v4, v5, v6);
    goto LABEL_7;
  }

  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[19];
  v12 = v0[12];
  v13 = *(v2 + 48);
  sub_2407D2554(v7, (v0 + 2));
  (*(v10 + 32))(v8, v7 + v13, v9);
  v14 = *(v12 + 16);
  v15 = *(*v14 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  sub_24080F060(v14 + v15, v11, &qword_27E506EA8, &unk_2408D9130);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v14 + v15, 1, 1, v17);
  os_unfair_lock_unlock((v14 + v16));

  v19 = (*(v18 + 48))(v11, 1, v17);
  v20 = v0[27];
  v21 = v0[24];
  v22 = v0[25];
  v23 = v0[23];
  v24 = v0[19];
  if (v19 == 1)
  {
    (*(v21 + 8))(v0[25], v0[23]);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    sub_2407D9440(v20, &qword_27E5079A0, &qword_2408D9180);
    v5 = &qword_27E506EA8;
    v6 = &unk_2408D9130;
    v4 = v24;
    goto LABEL_5;
  }

  v42 = v0[27];
  v25 = v0[16];
  v26 = v0[17];
  v27 = v0[14];
  v40 = v0[13];
  v41 = v0[15];
  sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030);
  v39 = v24;
  sub_2408D43D0();
  v28 = *(v40 + 48);
  sub_2407D91C4((v0 + 2), v27);
  (*(v25 + 32))(v27 + v28, v26, v41);
  sub_2408D4E20();
  (*(v21 + 8))(v22, v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  sub_2407D9440(v42, &qword_27E5079A0, &qword_2408D9180);
  (*(v18 + 8))(v39, v17);
LABEL_7:
  v30 = v0[26];
  v29 = v0[27];
  v31 = v0[25];
  v32 = v0[22];
  v34 = v0[18];
  v33 = v0[19];
  v35 = v0[17];
  v36 = v0[14];

  v37 = v0[1];

  return v37();
}

uint64_t sub_24088C394()
{
  v42 = v0;
  v1 = v0[29];
  v2 = v0[22];
  sub_2408D4920();
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[29];
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[9];
    v15 = sub_2408D5290();
    v17 = sub_2408CC504(v15, v16, &v41);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_2407CF000, v4, v5, "handleBlePairingState createTransportForBleClient caught: error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v19 = v0[21];
    v18 = v0[22];
    v20 = v0[20];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[18];
  v22 = *(v0[12] + 16);
  v23 = *(*v22 + *MEMORY[0x277D841D0] + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v22 + v24));
  sub_24080F060(v22 + v23, v21, &qword_27E506EA8, &unk_2408D9130);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v26 = *(v25 - 8);
  (*(v26 + 56))(v22 + v23, 1, 1, v25);
  os_unfair_lock_unlock((v22 + v24));

  v27 = (*(v26 + 48))(v21, 1, v25);
  v28 = v0[29];
  v29 = v0[18];
  if (v27 == 1)
  {

    sub_2407D9440(v29, &qword_27E506EA8, &unk_2408D9130);
  }

  else
  {
    v0[10] = v28;
    v30 = v28;
    sub_2408D4E10();

    (*(v26 + 8))(v29, v25);
  }

  v32 = v0[26];
  v31 = v0[27];
  v33 = v0[25];
  v34 = v0[22];
  v36 = v0[18];
  v35 = v0[19];
  v37 = v0[17];
  v38 = v0[14];

  v39 = v0[1];

  return v39();
}

uint64_t sub_24088C720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v8[13] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v8[15] = v14;
  v15 = *(v14 - 8);
  v8[16] = v15;
  v16 = *(v15 + 64) + 15;
  v8[17] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v18 = sub_2408D4B20();
  v8[20] = v18;
  v19 = *(v18 - 8);
  v8[21] = v19;
  v20 = *(v19 + 64) + 15;
  v8[22] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v8[23] = v21;
  v22 = *(v21 - 8);
  v8[24] = v22;
  v23 = *(v22 + 64) + 15;
  v8[25] = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079A0, &qword_2408D9180) - 8) + 64) + 15;
  v8[26] = swift_task_alloc();
  v25 = swift_task_alloc();
  v8[27] = v25;
  v26 = swift_task_alloc();
  v8[28] = v26;
  *v26 = v8;
  v26[1] = sub_24088C9E0;

  return sub_240897BA8(v25, a5, 0, a6, a7);
}

uint64_t sub_24088C9E0()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2408B5334;
  }

  else
  {
    v3 = sub_2408B5330;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24088CAF4(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v5 = sub_2408D4FD0();
  v3[51] = v5;
  v6 = *(v5 - 8);
  v3[52] = v6;
  v7 = *(v6 + 64) + 15;
  v3[53] = swift_task_alloc();
  v8 = sub_2408D4FC0();
  v3[54] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v10 = *(*(sub_2408D4C70() - 8) + 64) + 15;
  v3[56] = swift_task_alloc();
  v11 = *(*(sub_2408D40F0() - 8) + 64) + 15;
  v3[57] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F0, &qword_2408D91D8) - 8) + 64) + 15;
  v3[58] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5079F8, qword_2408D91E0);
  v3[59] = v13;
  v14 = *(v13 - 8);
  v3[60] = v14;
  v15 = *(v14 + 64) + 15;
  v3[61] = swift_task_alloc();
  v16 = sub_2408D4B20();
  v3[62] = v16;
  v17 = *(v16 - 8);
  v3[63] = v17;
  v18 = *(v17 + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v19 = sub_2408D4710();
  v3[68] = v19;
  v20 = *(v19 - 8);
  v3[69] = v20;
  v21 = *(v20 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v22 = sub_2408D3630();
  v3[73] = v22;
  v23 = *(v22 - 8);
  v3[74] = v23;
  v24 = *(v23 + 64) + 15;
  v3[75] = swift_task_alloc();
  v25 = sub_2408D4130();
  v3[76] = v25;
  v26 = *(v25 - 8);
  v3[77] = v26;
  v27 = *(v26 + 64) + 15;
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24088CEDC, v2, 0);
}

uint64_t sub_24088CEDC()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = swift_allocObject();
  v0[80] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277CED880] + 4);
  v8 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v5 = swift_task_alloc();
  v0[81] = v5;
  *v5 = v0;
  v5[1] = sub_24088CFE4;
  v6 = v0[46];

  return v8(v0 + 2, sub_2408B47A0, v3);
}

uint64_t sub_24088CFE4()
{
  v1 = *v0;
  v2 = *(*v0 + 648);
  v3 = *(*v0 + 640);
  v4 = *v0;

  v5 = *(MEMORY[0x277CED858] + 4);
  v10 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v1[82] = v6;
  *v6 = v4;
  v6[1] = sub_24088D170;
  v7 = v1[75];
  v8 = v1[46];

  return v10(v7);
}