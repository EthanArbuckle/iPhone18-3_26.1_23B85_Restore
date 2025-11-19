uint64_t sub_240821B94()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v11 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = v2[7];
    v5 = sub_240821F54;
  }

  else
  {
    v6 = v2[23];
    v8 = v2[19];
    v7 = v2[20];
    v9 = v2[7];

    v5 = sub_240821CD8;
    v4 = v9;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240821CD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 176);
  if (*(v0 + 24) == 1)
  {
    sub_2407D256C(*(v0 + 16), 1);
    v3 = v1;
    v4 = sub_2408D4B10();
    v5 = sub_2408D4F30();
    sub_24080F17C(v1, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_2407CF000, v4, v5, "Family repair failed: %@", v6, 0xCu);
      sub_2407D9440(v7, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v7, -1, -1);
      MEMORY[0x245CC9F60](v6, -1, -1);
    }

    v10 = *(v0 + 168);

    swift_willThrow();
    sub_24080F17C(v1, 1);

    v11 = *(v0 + 144);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);

    v16 = *(v0 + 8);
  }

  else
  {
    v17 = sub_2408D4B10();
    v18 = sub_2408D4F10();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 168);
    if (v19)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2407CF000, v17, v18, "Family repair succeeded", v21, 2u);
      MEMORY[0x245CC9F60](v21, -1, -1);

      sub_24080F17C(v1, 0);
    }

    else
    {
    }

    v22 = *(v0 + 144);
    v23 = *(v0 + 112);
    v24 = *(v0 + 120);
    v26 = *(v0 + 80);
    v25 = *(v0 + 88);

    v16 = *(v0 + 8);
  }

  return v16();
}

uint64_t sub_240821F54()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 152);

  v4 = *(v0 + 200);
  v5 = *(v0 + 144);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_240822018(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2408D4130();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_2408D3630();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v2[9] = v9;
  v10 = *(MEMORY[0x277CED858] + 4);
  v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v11 = swift_task_alloc();
  v2[10] = v11;
  *v11 = v2;
  v11[1] = sub_24082218C;

  return v13(v9);
}

uint64_t sub_24082218C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24082229C, v2, 0);
}

uint64_t sub_24082229C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  LOBYTE(v1) = sub_2408D4070();
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E506C48);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Skipping confirmation for finished state", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = v0[9];
    v12 = v0[6];

    v13 = v0[1];

    return v13();
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v15 = sub_2408D4B20();
    v0[11] = __swift_project_value_buffer(v15, qword_27E506C48);
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F20();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2407CF000, v16, v17, "Asking for confirmation for finished state", v18, 2u);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    v19 = *(MEMORY[0x277CED860] + 4);
    v23 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v20 = swift_task_alloc();
    v0[12] = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
    *v20 = v0;
    v20[1] = sub_2408225A8;
    v22 = v0[2];

    return v23(v0 + 13, sub_2407EF144, 0, &unk_2408D6D38, 0, v21);
  }
}

uint64_t sub_2408225A8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    v6 = sub_240876424;
  }

  else
  {
    v6 = sub_2408226E0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2408226E0()
{
  v1 = v0[11];
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Received confirmation that the user is ready to finish", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[6];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2408227C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_2408D3D60();
  v4[20] = v5;
  v6 = *(v5 - 8);
  v4[21] = v6;
  v7 = *(v6 + 64) + 15;
  v4[22] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v4[23] = v8;
  v9 = *(v8 - 8);
  v4[24] = v9;
  v10 = *(v9 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240822908, v3, 0);
}

uint64_t sub_240822908()
{
  v17 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_2408D4B20();
  v0[28] = __swift_project_value_buffer(v2, qword_27E506C48);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v0[15] = v5;
    type metadata accessor for ProximityTransportConnector();

    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Setting up as server with connector: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[29] = v11;
  *v11 = v0;
  v11[1] = sub_240822B10;
  v12 = v0[27];
  v13 = v0[17];
  v14 = v0[18];

  return sub_2408813B8(v12, v13);
}

uint64_t sub_240822B10()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_240822E38;
  }

  else
  {
    v6 = sub_240822C3C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240822C3C()
{
  v22 = v0;
  v1 = v0[28];
  v2 = *(v0[24] + 16);
  v2(v0[26], v0[27], v0[23]);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[26];
  if (v5)
  {
    v7 = v0[24];
    v8 = v0[25];
    v9 = v0[23];
    v10 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v10 = 136315138;
    v2(v8, v6, v9);
    v11 = sub_2408D4D40();
    v13 = v12;
    v14 = *(v7 + 8);
    v14(v6, v9);
    v15 = sub_2408CC504(v11, v13, &v21);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2407CF000, v3, v4, "Establishing router with transport: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x245CC9F60](v20, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  else
  {
    v16 = v0[23];
    v17 = v0[24];

    v14 = *(v17 + 8);
    v14(v6, v16);
  }

  v0[31] = v14;
  v18 = v0[18];
  (*(v0[21] + 104))(v0[22], *MEMORY[0x277CED568], v0[20]);

  return MEMORY[0x2822009F8](sub_240822EC4, v18, 0);
}

uint64_t sub_240822E38()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240822EC4()
{
  v1 = *(v0 + 144);
  swift_beginAccess();
  sub_2407EEE04(v1 + 120, v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v3, v2);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  else
  {
    sub_2407D9440(v0 + 16, &qword_27E506E98, &qword_2408D7FA0);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
  }

  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_240823038;
  v6 = *(v0 + 216);
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);

  return sub_24082A4B4(v7, v6, v0 + 56, 0);
}

uint64_t sub_240823038(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *(*v2 + 176);
  v7 = *(*v2 + 168);
  v8 = *(*v2 + 160);
  v9 = *v2;
  *(v4 + 264) = a1;
  *(v4 + 272) = v1;

  (*(v7 + 8))(v6, v8);
  sub_2407D9440(v4 + 56, &qword_27E507FA0, &qword_2408D7FB0);
  v10 = *(v3 + 152);
  if (v1)
  {
    v11 = sub_2408233B0;
  }

  else
  {
    v11 = sub_2408231E8;
  }

  return MEMORY[0x2822009F8](v11, v10, 0);
}

uint64_t sub_2408231E8()
{
  v18 = v0;
  v1 = v0[33];
  v2 = v0[28];

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[33];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[14] = v5;
    sub_2408D3D80();

    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Proceeding to continue setup as server with router: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = swift_task_alloc();
  v0[35] = v11;
  *v11 = v0;
  v11[1] = sub_240823458;
  v12 = v0[33];
  v13 = v0[19];
  v14 = v0[16];
  v15 = v0[17];

  return sub_240823700(v14, v12, v15);
}

uint64_t sub_2408233B0()
{
  v1 = *(v0 + 192) + 8;
  (*(v0 + 248))(*(v0 + 216), *(v0 + 184));
  v2 = *(v0 + 272);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = *(v0 + 176);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_240823458()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_240823648;
  }

  else
  {
    v6 = sub_240823584;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240823584()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];

  v2(v4, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_240823648()
{
  v1 = v0[33];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[24];

  v2(v3, v4);
  v6 = v0[36];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  v10 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t sub_240823700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_2408D36F0();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v11 = type metadata accessor for SignInReport(0);
  v4[31] = v11;
  v12 = *(v11 - 8);
  v4[32] = v12;
  v13 = *(v12 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507630, &qword_2408D8310) - 8) + 64) + 15;
  v4[38] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507638, &qword_2408D8318);
  v4[39] = v15;
  v16 = *(v15 - 8);
  v4[40] = v16;
  v17 = *(v16 + 64) + 15;
  v4[41] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507640, &qword_2408D8320);
  v4[42] = v18;
  v19 = *(v18 - 8);
  v4[43] = v19;
  v20 = *(v19 + 64) + 15;
  v4[44] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507648, &unk_2408D8328);
  v4[45] = v21;
  v22 = *(v21 - 8);
  v4[46] = v22;
  v23 = *(v22 + 64) + 15;
  v4[47] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v4[48] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v26 = sub_2408D3C20();
  v4[51] = v26;
  v27 = *(v26 - 8);
  v4[52] = v27;
  v28 = *(v27 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v29 = sub_2408D3630();
  v4[55] = v29;
  v30 = *(v29 - 8);
  v4[56] = v30;
  v31 = *(v30 + 64) + 15;
  v4[57] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v33 = sub_2408D3A40();
  v4[61] = v33;
  v34 = *(v33 - 8);
  v4[62] = v34;
  v35 = *(v34 + 64) + 15;
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0);
  v4[66] = v36;
  v37 = *(*(v36 - 8) + 64) + 15;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240823C58, v3, 0);
}

uint64_t sub_240823C58()
{
  v1 = v0[23];
  v2 = *(v1 + 240);
  *(v1 + 240) = v0[21];

  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);
  v4 = sub_2408D4E00();
  v0[71] = v4;
  v0[72] = v3;

  return MEMORY[0x2822009F8](sub_240823D34, v4, v3);
}

uint64_t sub_240823D34()
{
  v1 = v0[70];
  v2 = v0[21];
  sub_2408D3D30();
  v3 = v0[23];

  return MEMORY[0x2822009F8](sub_240823DCC, v3, 0);
}

uint64_t sub_240823DCC()
{
  v93 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[24];
  v4 = v0[25];
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_2407EEE04(v1, v2, &qword_27E506D00, &unk_2408D7FE0);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[69];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[60];
  if (v5 == 1)
  {
    sub_2407D9440(v0[69], &qword_27E506D00, &unk_2408D7FE0);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_4:
    sub_2407D9440(v0[60], &qword_27E506DA0, &unk_2408D76A0);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v13 = v0[70];
    v14 = v0[68];
    v15 = sub_2408D4B20();
    __swift_project_value_buffer(v15, qword_27E506C48);
    sub_2407EEE04(v13, v14, &qword_27E506D00, &unk_2408D7FE0);
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F10();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[68];
    if (v18)
    {
      v20 = v0[67];
      v21 = v0[66];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v92[0] = v23;
      *v22 = 136315138;
      sub_2407EEE04(v19, v20, &qword_27E506D00, &unk_2408D7FE0);
      v24 = sub_2408D4D40();
      v26 = v25;
      sub_2407D9440(v19, &qword_27E506D00, &unk_2408D7FE0);
      v27 = sub_2408CC504(v24, v26, v92);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2407CF000, v16, v17, "No locale info from connected device: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    else
    {

      sub_2407D9440(v19, &qword_27E506D00, &unk_2408D7FE0);
    }

    v28 = *(v0[23] + 248);
    v0[77] = v28;
    if (v28)
    {
      v29 = *(MEMORY[0x277CED858] + 4);
      v89 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

      v30 = swift_task_alloc();
      v0[78] = v30;
      *v30 = v0;
      v30[1] = sub_24082548C;
      v31 = v0[57];

      return v89(v31);
    }

    else
    {
      v33 = v0[70];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
      swift_allocError();
      *v34 = 2;
      swift_willThrow();
      sub_2407D9440(v33, &qword_27E506D00, &unk_2408D7FE0);
      v35 = v0[70];
      v36 = v0[69];
      v37 = v0[68];
      v38 = v0[67];
      v39 = v0[65];
      v40 = v0[63];
      v41 = v0[64];
      v43 = v0[59];
      v42 = v0[60];
      v44 = v0[58];
      v72 = v0[57];
      v73 = v0[54];
      v74 = v0[53];
      v75 = v0[50];
      v76 = v0[49];
      v77 = v0[47];
      v78 = v0[44];
      v79 = v0[41];
      v80 = v0[38];
      v81 = v0[37];
      v82 = v0[36];
      v83 = v0[35];
      v84 = v0[34];
      v85 = v0[33];
      v86 = v0[30];
      v87 = v0[29];
      v88 = v0[26];

      v45 = v0[1];

      return v45();
    }
  }

  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[60];
  sub_2408D36B0();
  (*(v11 + 8))(v6, v10);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  (*(v0[62] + 32))(v0[65], v0[60], v0[61]);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v46 = v0[65];
  v47 = v0[64];
  v48 = v0[61];
  v49 = v0[62];
  v50 = sub_2408D4B20();
  __swift_project_value_buffer(v50, qword_27E506C48);
  v51 = *(v49 + 16);
  v51(v47, v46, v48);
  v52 = sub_2408D4B10();
  v53 = sub_2408D4F10();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[64];
  if (v54)
  {
    v56 = v0[62];
    v57 = v0[63];
    v58 = v0[61];
    v59 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v92[0] = v90;
    *v59 = 136315138;
    v51(v57, v55, v58);
    v60 = sub_2408D4D40();
    v62 = v61;
    v63 = *(v56 + 8);
    v63(v55, v58);
    v64 = sub_2408CC504(v60, v62, v92);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_2407CF000, v52, v53, "Setting signInModel.peerDeviceLocaleInfo: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    MEMORY[0x245CC9F60](v90, -1, -1);
    MEMORY[0x245CC9F60](v59, -1, -1);
  }

  else
  {
    v65 = v0[61];
    v66 = v0[62];

    v63 = *(v66 + 8);
    v63(v55, v65);
  }

  v0[73] = v63;
  v67 = v0[65];
  v68 = swift_task_alloc();
  v0[74] = v68;
  *(v68 + 16) = v67;
  v69 = *(MEMORY[0x277CED870] + 4);
  v91 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v70 = swift_task_alloc();
  v0[75] = v70;
  *v70 = v0;
  v70[1] = sub_240824E34;
  v71 = v0[22];

  return v91(sub_240876070, v68);
}

uint64_t sub_240824600()
{
  v93 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[24];
  v4 = v0[25];
  (*(v4 + 56))(v1, 1, 1, v3);
  sub_2407EEE04(v1, v2, &qword_27E506D00, &unk_2408D7FE0);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[69];
  v7 = v0[61];
  v8 = v0[62];
  v9 = v0[60];
  if (v5 == 1)
  {
    sub_2407D9440(v0[69], &qword_27E506D00, &unk_2408D7FE0);
    (*(v8 + 56))(v9, 1, 1, v7);
LABEL_4:
    sub_2407D9440(v0[60], &qword_27E506DA0, &unk_2408D76A0);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v13 = v0[70];
    v14 = v0[68];
    v15 = sub_2408D4B20();
    __swift_project_value_buffer(v15, qword_27E506C48);
    sub_2407EEE04(v13, v14, &qword_27E506D00, &unk_2408D7FE0);
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F10();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[68];
    if (v18)
    {
      v20 = v0[67];
      v21 = v0[66];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v92[0] = v23;
      *v22 = 136315138;
      sub_2407EEE04(v19, v20, &qword_27E506D00, &unk_2408D7FE0);
      v24 = sub_2408D4D40();
      v26 = v25;
      sub_2407D9440(v19, &qword_27E506D00, &unk_2408D7FE0);
      v27 = sub_2408CC504(v24, v26, v92);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2407CF000, v16, v17, "No locale info from connected device: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    else
    {

      sub_2407D9440(v19, &qword_27E506D00, &unk_2408D7FE0);
    }

    v28 = *(v0[23] + 248);
    v0[77] = v28;
    if (v28)
    {
      v29 = *(MEMORY[0x277CED858] + 4);
      v89 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

      v30 = swift_task_alloc();
      v0[78] = v30;
      *v30 = v0;
      v30[1] = sub_24082548C;
      v31 = v0[57];

      return v89(v31);
    }

    else
    {
      v33 = v0[70];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
      swift_allocError();
      *v34 = 2;
      swift_willThrow();
      sub_2407D9440(v33, &qword_27E506D00, &unk_2408D7FE0);
      v35 = v0[70];
      v36 = v0[69];
      v37 = v0[68];
      v38 = v0[67];
      v39 = v0[65];
      v40 = v0[63];
      v41 = v0[64];
      v43 = v0[59];
      v42 = v0[60];
      v44 = v0[58];
      v72 = v0[57];
      v73 = v0[54];
      v74 = v0[53];
      v75 = v0[50];
      v76 = v0[49];
      v77 = v0[47];
      v78 = v0[44];
      v79 = v0[41];
      v80 = v0[38];
      v81 = v0[37];
      v82 = v0[36];
      v83 = v0[35];
      v84 = v0[34];
      v85 = v0[33];
      v86 = v0[30];
      v87 = v0[29];
      v88 = v0[26];

      v45 = v0[1];

      return v45();
    }
  }

  v10 = v0[24];
  v11 = v0[25];
  v12 = v0[60];
  sub_2408D36B0();
  (*(v11 + 8))(v6, v10);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  (*(v0[62] + 32))(v0[65], v0[60], v0[61]);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v46 = v0[65];
  v47 = v0[64];
  v48 = v0[61];
  v49 = v0[62];
  v50 = sub_2408D4B20();
  __swift_project_value_buffer(v50, qword_27E506C48);
  v51 = *(v49 + 16);
  v51(v47, v46, v48);
  v52 = sub_2408D4B10();
  v53 = sub_2408D4F10();
  v54 = os_log_type_enabled(v52, v53);
  v55 = v0[64];
  if (v54)
  {
    v56 = v0[62];
    v57 = v0[63];
    v58 = v0[61];
    v59 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v92[0] = v90;
    *v59 = 136315138;
    v51(v57, v55, v58);
    v60 = sub_2408D4D40();
    v62 = v61;
    v63 = *(v56 + 8);
    v63(v55, v58);
    v64 = sub_2408CC504(v60, v62, v92);

    *(v59 + 4) = v64;
    _os_log_impl(&dword_2407CF000, v52, v53, "Setting signInModel.peerDeviceLocaleInfo: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v90);
    MEMORY[0x245CC9F60](v90, -1, -1);
    MEMORY[0x245CC9F60](v59, -1, -1);
  }

  else
  {
    v65 = v0[61];
    v66 = v0[62];

    v63 = *(v66 + 8);
    v63(v55, v65);
  }

  v0[73] = v63;
  v67 = v0[65];
  v68 = swift_task_alloc();
  v0[74] = v68;
  *(v68 + 16) = v67;
  v69 = *(MEMORY[0x277CED870] + 4);
  v91 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v70 = swift_task_alloc();
  v0[75] = v70;
  *v70 = v0;
  v70[1] = sub_240824E34;
  v71 = v0[22];

  return v91(sub_240876070, v68);
}

uint64_t sub_240824E34()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 592);
  v6 = *(v2 + 184);

  if (v0)
  {
    v7 = sub_24082528C;
  }

  else
  {
    v7 = sub_240824F7C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240824F7C()
{
  v1 = *(v0 + 496) + 8;
  (*(v0 + 584))(*(v0 + 520), *(v0 + 488));
  v2 = *(*(v0 + 184) + 248);
  *(v0 + 616) = v2;
  if (v2)
  {
    v3 = *(MEMORY[0x277CED858] + 4);
    v37 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v4 = swift_task_alloc();
    *(v0 + 624) = v4;
    *v4 = v0;
    v4[1] = sub_24082548C;
    v5 = *(v0 + 456);

    return v37(v5);
  }

  else
  {
    v7 = *(v0 + 560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    sub_2407D9440(v7, &qword_27E506D00, &unk_2408D7FE0);
    v9 = *(v0 + 560);
    v10 = *(v0 + 552);
    v11 = *(v0 + 544);
    v12 = *(v0 + 536);
    v13 = *(v0 + 520);
    v14 = *(v0 + 504);
    v15 = *(v0 + 512);
    v17 = *(v0 + 472);
    v16 = *(v0 + 480);
    v18 = *(v0 + 464);
    v20 = *(v0 + 456);
    v21 = *(v0 + 432);
    v22 = *(v0 + 424);
    v23 = *(v0 + 400);
    v24 = *(v0 + 392);
    v25 = *(v0 + 376);
    v26 = *(v0 + 352);
    v27 = *(v0 + 328);
    v28 = *(v0 + 304);
    v29 = *(v0 + 296);
    v30 = *(v0 + 288);
    v31 = *(v0 + 280);
    v32 = *(v0 + 272);
    v33 = *(v0 + 264);
    v34 = *(v0 + 240);
    v35 = *(v0 + 232);
    v36 = *(v0 + 208);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_24082528C()
{
  v1 = v0[73];
  v2 = v0[65];
  v3 = v0[61];
  v4 = v0[62];
  sub_2407D9440(v0[70], &qword_27E506D00, &unk_2408D7FE0);
  v1(v2, v3);
  v34 = v0[76];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v9 = v0[65];
  v11 = v0[63];
  v10 = v0[64];
  v13 = v0[59];
  v12 = v0[60];
  v14 = v0[58];
  v17 = v0[57];
  v18 = v0[54];
  v19 = v0[53];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[47];
  v23 = v0[44];
  v24 = v0[41];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v31 = v0[30];
  v32 = v0[29];
  v33 = v0[26];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24082548C()
{
  v1 = *(*v0 + 624);
  v2 = *(*v0 + 616);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2408255B8, v3, 0);
}

uint64_t sub_2408255B8()
{
  v2 = v0[56];
  v1 = v0[57];
  v4 = v0[54];
  v3 = v0[55];
  v5 = v0[51];
  v6 = v0[52];
  v7 = v0[23];
  sub_2408D3540();
  v8 = *(v2 + 8);
  v0[79] = v8;
  v0[80] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = sub_2408D3B20();
  v10 = *(v6 + 8);
  v0[81] = v10;
  v0[82] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v5);
  v11 = *(v7 + 184);
  *(v7 + 184) = v9;

  v12 = *(v7 + 248);
  v0[83] = v12;
  if (v12)
  {
    v13 = *(MEMORY[0x277CED858] + 4);
    v47 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v14 = swift_task_alloc();
    v0[84] = v14;
    *v14 = v0;
    v14[1] = sub_240825928;
    v15 = v0[57];

    return v47(v15);
  }

  else
  {
    v17 = v0[70];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v18 = 2;
    swift_willThrow();
    sub_2407D9440(v17, &qword_27E506D00, &unk_2408D7FE0);
    v19 = v0[70];
    v20 = v0[69];
    v21 = v0[68];
    v22 = v0[67];
    v23 = v0[65];
    v24 = v0[63];
    v25 = v0[64];
    v27 = v0[59];
    v26 = v0[60];
    v28 = v0[58];
    v30 = v0[57];
    v31 = v0[54];
    v32 = v0[53];
    v33 = v0[50];
    v34 = v0[49];
    v35 = v0[47];
    v36 = v0[44];
    v37 = v0[41];
    v38 = v0[38];
    v39 = v0[37];
    v40 = v0[36];
    v41 = v0[35];
    v42 = v0[34];
    v43 = v0[33];
    v44 = v0[30];
    v45 = v0[29];
    v46 = v0[26];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_240825928()
{
  v1 = *(*v0 + 672);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 184);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_240825A54, v3, 0);
}

uint64_t sub_240825A54()
{
  v40 = v0;
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[57];
  v6 = v0[54];
  v5 = v0[55];
  v7 = v0[51];
  v32 = v0[82];
  v33 = v0[50];
  v8 = v0[43];
  v34 = v0[44];
  v35 = v0[42];
  v36 = v0[31];
  v37 = v0[47];
  v9 = v0[23];
  sub_2408D3540();
  v3(v4, v5);
  v10 = sub_2408D3AE0();
  v1(v6, v7);
  v11 = v9[24];
  v9[24] = v10;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v0[85] = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v0[86] = v14;
  v0[87] = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v33, 1, 1, v12);
  *(swift_task_alloc() + 16) = v33;
  (*(v8 + 104))(v34, *MEMORY[0x277D858A0], v35);
  sub_2408D4EC0();

  v15 = *(*v9 + 208);
  v0[88] = v15;
  swift_beginAccess();
  sub_240876008(v33, v9 + v15, &qword_27E506DA8, &qword_2408D8100);
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v16 = v0[23];
  v17 = sub_2408D4B20();
  v0[89] = __swift_project_value_buffer(v17, qword_27E506C48);

  v18 = sub_2408D4B10();
  v19 = sub_2408D4F20();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = v0[48];
    v20 = v0[49];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v39 = v23;
    *v22 = 136315138;
    sub_2407EEE04(v9 + v15, v20, &qword_27E506DA8, &qword_2408D8100);
    v24 = sub_2408D4D40();
    v26 = sub_2408CC504(v24, v25, &v39);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2407CF000, v18, v19, "Setup as server signInStreamContinuation: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x245CC9F60](v23, -1, -1);
    MEMORY[0x245CC9F60](v22, -1, -1);
  }

  v27 = *(MEMORY[0x277CED858] + 4);
  v38 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v28 = swift_task_alloc();
  v0[90] = v28;
  *v28 = v0;
  v28[1] = sub_240825DF8;
  v29 = v0[57];
  v30 = v0[22];

  return v38(v29);
}

uint64_t sub_240825DF8()
{
  v1 = *(*v0 + 720);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240825F08, v2, 0);
}

uint64_t sub_240825F08()
{
  v1 = v0[82];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v8 = v0[51];
  sub_2408D3540();
  v4(v5, v6);
  v9 = sub_2408D3B20();
  v2(v7, v8);
  v0[17] = v9;
  v10 = *(MEMORY[0x277CED858] + 4);
  v15 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v11 = swift_task_alloc();
  v0[91] = v11;
  *v11 = v0;
  v11[1] = sub_24082601C;
  v12 = v0[57];
  v13 = v0[22];

  return v15(v12);
}

uint64_t sub_24082601C()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24082612C, v2, 0);
}

uint64_t sub_24082612C()
{
  v33 = v0;
  v1 = v0[89];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v9 = v0[51];
  sub_2408D3540();
  v5(v6, v7);
  v10 = sub_2408D3AE0();
  v3(v8, v9);
  sub_240828080(v10);
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F10();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315138;
    swift_beginAccess();
    v15 = v0[17];
    type metadata accessor for AIDAServiceType(0);
    sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);

    v16 = sub_2408D4EF0();
    v18 = v17;

    v19 = sub_2408CC504(v16, v18, &v32);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v11, v12, "Setup as server remainingServices: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  v20 = v0[47];
  v21 = v0[45];
  v22 = v0[41];
  v23 = sub_2407F5674(MEMORY[0x277D84F90]);
  sub_2408D4EA0();
  v0[92] = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00);
  swift_beginAccess();
  v0[94] = v23;
  v0[93] = v23;
  v24 = v0[92];
  v25 = v0[23];
  v26 = *(MEMORY[0x277D858B8] + 4);
  v27 = swift_task_alloc();
  v0[95] = v27;
  *v27 = v0;
  v27[1] = sub_240826414;
  v28 = v0[41];
  v29 = v0[38];
  v30 = v0[39];

  return MEMORY[0x2822005A8](v29, v25, v24, v30, v0 + 18);
}

uint64_t sub_240826414()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v9 = *v1;
  *(*v1 + 768) = v0;

  if (v0)
  {
    v4 = *(v2 + 752);
    v5 = *(v2 + 184);

    v6 = sub_240826FF8;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 184);
    v6 = sub_24082653C;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_24082653C()
{
  v116 = v0;
  v1 = v0[38];
  if ((*(v0[32] + 48))(v1, 1, v0[31]) == 1)
  {
    v2 = v0[88];
    v3 = v0[87];
    v4 = v0[86];
    v5 = v0[85];
    v6 = v0[49];
    v7 = v0[23];
    (*(v0[40] + 8))(v0[41], v0[39]);
    v4(v6, 1, 1, v5);
    swift_beginAccess();
    sub_2407EEE6C(v6, v7 + v2);
    swift_endAccess();
    v8 = *(MEMORY[0x277CED860] + 4);
    v112 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v9 = swift_task_alloc();
    v0[97] = v9;
    *v9 = v0;
    v9[1] = sub_240827234;
    v10 = v0[22];

    return v112();
  }

  else
  {
    v12 = v0[89];
    v14 = v0[36];
    v13 = v0[37];
    sub_240875B98(v1, v13, type metadata accessor for SignInReport);
    sub_240875C00(v13, v14, type metadata accessor for SignInReport);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F10();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[36];
    if (v17)
    {
      v19 = v0[35];
      v20 = v0[31];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v115[0] = v22;
      *v21 = 136315138;
      sub_240875C00(v18, v19, type metadata accessor for SignInReport);
      v23 = sub_2408D4D40();
      v25 = v24;
      sub_240875C68(v18, type metadata accessor for SignInReport);
      v26 = sub_2408CC504(v23, v25, v115);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2407CF000, v15, v16, "Received signIn report: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      MEMORY[0x245CC9F60](v22, -1, -1);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    else
    {

      sub_240875C68(v18, type metadata accessor for SignInReport);
    }

    v27 = v0[89];
    sub_240875C00(v0[37], v0[34], type metadata accessor for SignInReport);
    v28 = sub_2408D4B10();
    v29 = sub_2408D4F20();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[34];
    v32 = &off_2408D6000;
    if (v30)
    {
      v33 = v0[31];
      v34 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v115[0] = v113;
      *v34 = 136315394;
      v35 = *(v31 + *(v33 + 20));

      sub_240845108(v36);
      type metadata accessor for AIDAServiceType(0);
      sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
      v37 = sub_2408D4EF0();
      v39 = v38;

      sub_240875C68(v31, type metadata accessor for SignInReport);
      v40 = sub_2408CC504(v37, v39, v115);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      v41 = v0[17];

      v32 = &off_2408D6000;
      v42 = sub_2408D4EF0();
      v44 = v43;

      v45 = sub_2408CC504(v42, v44, v115);

      *(v34 + 14) = v45;
      _os_log_impl(&dword_2407CF000, v28, v29, "Subtracting all attempted services: %s from those remaining: %s", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v113, -1, -1);
      MEMORY[0x245CC9F60](v34, -1, -1);
    }

    else
    {

      sub_240875C68(v31, type metadata accessor for SignInReport);
    }

    v46 = v0[96];
    v47 = *(v0[37] + *(v0[31] + 20));

    sub_240845108(v48);
    v50 = v49;
    swift_beginAccess();
    sub_24086C57C(v50);
    swift_endAccess();

    v51 = sub_24086ED9C(v47);
    v0[99] = v46;
    sub_240845108(v51);
    v57 = v52;
    v58 = 0;
    v107 = v52 + 56;
    v59 = -1;
    v60 = -1 << *(v52 + 32);
    if (-v60 < 64)
    {
      v59 = ~(-1 << -v60);
    }

    v61 = v59 & *(v52 + 56);
    v62 = (63 - v60) >> 6;
    v63 = v0[94];
    v64 = v0[93];
    v108 = *(v32 + 119);
    v114 = v62;
    v109 = v52;
    while (1)
    {
      v0[101] = v63;
      v0[100] = v64;
      if (!v61)
      {
        break;
      }

      v65 = v58;
LABEL_21:
      v66 = v0[89];
      v67 = *(*(v57 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v61)))));
      sub_240875C00(v0[37], v0[33], type metadata accessor for SignInReport);
      v68 = v67;
      v69 = sub_2408D4B10();
      v70 = sub_2408D4F20();

      v71 = os_log_type_enabled(v69, v70);
      v72 = v0[33];
      if (v71)
      {
        v73 = v0[27];
        v110 = v70;
        v74 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v115[0] = v111;
        *v74 = v108;
        sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
        v75 = sub_2408D5220();
        v76 = v68;
        v78 = v77;
        sub_240875C68(v72, type metadata accessor for SignInReport);
        v79 = v75;
        v57 = v109;
        v80 = sub_2408CC504(v79, v78, v115);

        *(v74 + 4) = v80;
        *(v74 + 12) = 2080;
        v81 = sub_2408D4D30();
        v83 = sub_2408CC504(v81, v82, v115);

        *(v74 + 14) = v83;
        v68 = v76;
        _os_log_impl(&dword_2407CF000, v69, v110, "Recording account id: %s for service: %s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC9F60](v111, -1, -1);
        MEMORY[0x245CC9F60](v74, -1, -1);
      }

      else
      {

        sub_240875C68(v72, type metadata accessor for SignInReport);
      }

      (*(v0[28] + 16))(v0[30], v0[37], v0[27]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[19] = v64;
      v52 = sub_2408CCC7C(v68);
      v85 = v64[2];
      v86 = (v53 & 1) == 0;
      v87 = __OFADD__(v85, v86);
      v88 = v85 + v86;
      if (v87)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return MEMORY[0x2822005A8](v52, v53, v54, v55, v56);
      }

      v89 = v53;
      if (v64[3] >= v88)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v97 = v68;
          v98 = v52;
          sub_2408C5870();
          v52 = v98;
          v68 = v97;
        }
      }

      else
      {
        sub_2408C81A4(v88, isUniquelyReferenced_nonNull_native);
        v90 = v0[19];
        v52 = sub_2408CCC7C(v68);
        if ((v89 & 1) != (v91 & 1))
        {
          type metadata accessor for AIDAServiceType(0);

          return sub_2408D5280();
        }
      }

      v61 &= v61 - 1;
      v64 = v0[19];
      v92 = v0[30];
      v93 = v0[27];
      v94 = v0[28];
      if (v89)
      {
        (*(v94 + 40))(v64[7] + *(v94 + 72) * v52, v92, v93);
      }

      else
      {
        v64[(v52 >> 6) + 8] |= 1 << v52;
        *(v64[6] + 8 * v52) = v68;
        v52 = (*(v94 + 32))(v64[7] + *(v94 + 72) * v52, v92, v93);
        v95 = v64[2];
        v87 = __OFADD__(v95, 1);
        v96 = v95 + 1;
        if (v87)
        {
          goto LABEL_45;
        }

        v64[2] = v96;
      }

      v58 = v65;
      v63 = v64;
      v62 = v114;
    }

    while (1)
    {
      v65 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v65 >= v62)
      {
        break;
      }

      v61 = *(v107 + 8 * v65);
      ++v58;
      if (v61)
      {
        goto LABEL_21;
      }
    }

    v99 = v0[17];
    v0[102] = v99;
    if (*(v99 + 16))
    {
      sub_240875C68(v0[37], type metadata accessor for SignInReport);
      *(v0 + 93) = *(v0 + 50);
      v100 = v0[92];
      v101 = v0[23];
      v102 = *(MEMORY[0x277D858B8] + 4);
      v103 = swift_task_alloc();
      v0[95] = v103;
      *v103 = v0;
      v103[1] = sub_240826414;
      v104 = v0[41];
      v52 = v0[38];
      v55 = v0[39];
      v56 = v0 + 18;
      v53 = v101;
      v54 = v100;

      return MEMORY[0x2822005A8](v52, v53, v54, v55, v56);
    }

    v105 = v0[72];
    v106 = v0[71];

    return MEMORY[0x2822009F8](sub_24082735C, v106, v105);
  }
}

uint64_t sub_240826FF8()
{
  v1 = v0[70];
  v2 = v0[50];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v4 + 8))(v3, v5);
  sub_2407D9440(v1, &qword_27E506D00, &unk_2408D7FE0);
  v6 = v0[17];

  v36 = v0[18];
  sub_2407D9440(v2, &qword_27E506DA8, &qword_2408D8100);
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[65];
  v13 = v0[63];
  v12 = v0[64];
  v15 = v0[59];
  v14 = v0[60];
  v16 = v0[58];
  v19 = v0[57];
  v20 = v0[54];
  v21 = v0[53];
  v22 = v0[50];
  v23 = v0[49];
  v24 = v0[47];
  v25 = v0[44];
  v26 = v0[41];
  v27 = v0[38];
  v28 = v0[37];
  v29 = v0[36];
  v30 = v0[35];
  v31 = v0[34];
  v32 = v0[33];
  v33 = v0[30];
  v34 = v0[29];
  v35 = v0[26];

  v17 = v0[1];

  return v17();
}

uint64_t sub_240827234()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v9 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = *(v2 + 752);
    v5 = *(v2 + 184);

    v6 = sub_240827E64;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 184);
    v6 = sub_240827828;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_24082735C()
{
  v1 = v0[99];
  v2 = v0[26];
  v3 = v0[21];
  sub_2408D3D30();
  v0[103] = v1;
  if (v1)
  {
    v4 = v0[101];
    v5 = v0[23];

    v6 = sub_2408275C8;
    v7 = v5;
  }

  else
  {
    v7 = v0[23];
    v6 = sub_240827400;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_240827400()
{
  v1 = *(v0 + 712);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = sub_2408D36E0();
  (*(v3 + 8))(v2, v4);
  v6 = sub_2408D4B10();
  if (v5)
  {
    v7 = sub_2408D4F10();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_7;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Not finishing yet, working with legacy device";
  }

  else
  {
    v7 = sub_2408D4F20();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_7;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Not finishing yet, waiting for termination";
  }

  _os_log_impl(&dword_2407CF000, v6, v7, v9, v8, 2u);
  MEMORY[0x245CC9F60](v8, -1, -1);
LABEL_7:

  sub_240875C68(*(v0 + 296), type metadata accessor for SignInReport);
  *(v0 + 744) = *(v0 + 800);
  v10 = *(v0 + 736);
  v11 = *(v0 + 184);
  v12 = *(MEMORY[0x277D858B8] + 4);
  v13 = swift_task_alloc();
  *(v0 + 760) = v13;
  *v13 = v0;
  v13[1] = sub_240826414;
  v14 = *(v0 + 328);
  v15 = *(v0 + 304);
  v16 = *(v0 + 312);

  return MEMORY[0x2822005A8](v15, v11, v10, v16, v0 + 144);
}

uint64_t sub_2408275C8()
{
  v1 = v0[102];
  v2 = v0[70];
  v3 = v0[50];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v7 = v0[37];
  (*(v0[40] + 8))(v0[41], v0[39]);
  (*(v5 + 8))(v4, v6);
  sub_2407D9440(v2, &qword_27E506D00, &unk_2408D7FE0);
  sub_240875C68(v7, type metadata accessor for SignInReport);

  sub_2407D9440(v3, &qword_27E506DA8, &qword_2408D8100);
  v37 = v0[103];
  v8 = v0[70];
  v9 = v0[69];
  v10 = v0[68];
  v11 = v0[67];
  v12 = v0[65];
  v14 = v0[63];
  v13 = v0[64];
  v16 = v0[59];
  v15 = v0[60];
  v17 = v0[58];
  v20 = v0[57];
  v21 = v0[54];
  v22 = v0[53];
  v23 = v0[50];
  v24 = v0[49];
  v25 = v0[47];
  v26 = v0[44];
  v27 = v0[41];
  v28 = v0[38];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[35];
  v32 = v0[34];
  v33 = v0[33];
  v34 = v0[30];
  v35 = v0[29];
  v36 = v0[26];

  v18 = v0[1];

  return v18();
}

uint64_t sub_240827828()
{
  v1 = *(MEMORY[0x277CED858] + 4);
  v6 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v2 = swift_task_alloc();
  v0[104] = v2;
  *v2 = v0;
  v2[1] = sub_2408278D4;
  v3 = v0[57];
  v4 = v0[22];

  return v6(v3);
}

uint64_t sub_2408278D4()
{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2408279E4, v2, 0);
}

uint64_t sub_2408279E4()
{
  v1 = v0[94];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[59];
  v5 = v0[57];
  v6 = v0[55];
  v7 = v0[53];
  v65 = v0[28];
  sub_2408D3540();
  v3(v5, v6);
  sub_2408D3B40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507250, &qword_2408D82A0);
  result = sub_2408D51B0();
  v9 = 0;
  v10 = v1 + 64;
  v11 = 1 << *(v1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v1 + 64);
  v14 = (v11 + 63) >> 6;
  v66 = (v65 + 8);
  v68 = v1;
  v63 = result + 64;
  v70 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v9 << 6);
      v19 = v71[29];
      v20 = v71[27];
      v21 = *(*(v68 + 48) + 8 * v18);
      (*(v71[28] + 16))(v19, *(v68 + 56) + *(v71[28] + 72) * v18, v20);
      v22 = v21;
      v23 = sub_2408D38B0();
      v25 = v24;
      (*v66)(v19, v20);
      *(v63 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v70;
      *(v70[6] + 8 * v18) = v22;
      v26 = (v70[7] + 16 * v18);
      *v26 = v23;
      v26[1] = v25;
      v27 = v70[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v70[2] = v29;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    v30 = v71[94];
    v41 = v71[81];
    v42 = v71[82];
    v44 = v71[70];
    v45 = v71[69];
    v46 = v71[68];
    v47 = v71[67];
    v48 = v71[65];
    v49 = v71[64];
    v31 = v71[59];
    v50 = v71[63];
    v51 = v71[60];
    v32 = v71[58];
    v33 = v71[53];
    v52 = v71[57];
    v53 = v71[54];
    v34 = v71[51];
    v43 = v71[50];
    v35 = v71[46];
    v39 = v71[45];
    v40 = v71[47];
    v54 = v71[49];
    v55 = v71[44];
    v56 = v71[41];
    v57 = v71[38];
    v58 = v71[37];
    v59 = v71[36];
    v60 = v71[35];
    v61 = v71[34];
    v62 = v71[33];
    v64 = v71[30];
    v67 = v71[29];
    v69 = v71[26];
    v36 = v71[20];

    sub_2407EEE04(v31, v32, &qword_27E506DA0, &unk_2408D76A0);
    sub_2408D3A50();
    sub_2407D9440(v31, &qword_27E506DA0, &unk_2408D76A0);
    v41(v33, v34);
    (*(v35 + 8))(v40, v39);
    sub_2407D9440(v44, &qword_27E506D00, &unk_2408D7FE0);
    v37 = v71[17];

    sub_2407D9440(v43, &qword_27E506DA8, &qword_2408D8100);

    v38 = v71[1];

    return v38();
  }

  return result;
}

uint64_t sub_240827E64()
{
  v1 = v0[70];
  v2 = v0[50];
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_2407D9440(v1, &qword_27E506D00, &unk_2408D7FE0);
  v3 = v0[17];

  sub_2407D9440(v2, &qword_27E506DA8, &qword_2408D8100);
  v33 = v0[98];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v12 = v0[59];
  v11 = v0[60];
  v13 = v0[58];
  v16 = v0[57];
  v17 = v0[54];
  v18 = v0[53];
  v19 = v0[50];
  v20 = v0[49];
  v21 = v0[47];
  v22 = v0[44];
  v23 = v0[41];
  v24 = v0[38];
  v25 = v0[37];
  v26 = v0[36];
  v27 = v0[35];
  v28 = v0[34];
  v29 = v0[33];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[26];

  v14 = v0[1];

  return v14();
}

void sub_240828080(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_24086A4D4(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9))));

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_240828170(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2408D3970();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = sub_2408D3C20();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v9 = sub_2408D3630();
  v2[11] = v9;
  v10 = *(v9 - 8);
  v2[12] = v10;
  v11 = *(v10 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v12 = sub_2408D4130();
  v2[15] = v12;
  v13 = *(v12 - 8);
  v2[16] = v13;
  v14 = *(v13 + 64) + 15;
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240828350, v1, 0);
}

uint64_t sub_240828350()
{
  v16 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2408D4B20();
  v0[18] = __swift_project_value_buffer(v2, qword_27E506C48);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[2] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Fetching accounts for model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = *(v0[4] + 112);
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_240828550;
  v13 = v0[3];

  return sub_240807978(v13);
}

uint64_t sub_240828550(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v5 = *v2;
  *(*v2 + 160) = a1;

  if (v1)
  {
    v6 = v3[17];
    v8 = v3[13];
    v7 = v3[14];
    v9 = v3[10];
    v10 = v3[7];

    v11 = *(v5 + 8);

    return v11();
  }

  else
  {
    v13 = *(MEMORY[0x277CED858] + 4);
    v17 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v14 = swift_task_alloc();
    v3[21] = v14;
    *v14 = v5;
    v14[1] = sub_24082871C;
    v15 = v3[14];
    v16 = v3[3];

    return v17(v15);
  }
}

uint64_t sub_24082871C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24082882C, v2, 0);
}

uint64_t sub_24082882C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  sub_2408D3570();
  v5 = *(v4 + 8);
  v0[22] = v5;
  v0[23] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  if (sub_2408D4120() == 1)
  {
    v6 = v0[18];
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F10();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "Bypassing confirmation for repair/setup flow", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v10 = v0[18];
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2407CF000, v11, v12, "User decided to connect and set up remote device", v13, 2u);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v14 = *(MEMORY[0x277CED858] + 4);
    v23 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v15 = swift_task_alloc();
    v0[26] = v15;
    *v15 = v0;
    v15[1] = sub_240828BDC;
    v16 = v0[13];
    v17 = v0[3];

    return v23(v16);
  }

  else
  {
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_240828A98;
    v20 = v0[20];
    v21 = v0[3];
    v22 = v0[4];

    return sub_240829748(v21, v20);
  }
}

uint64_t sub_240828A98(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = *(v4 + 160);
    v8 = *(v4 + 32);

    v9 = sub_240829690;
    v10 = v8;
  }

  else
  {
    v10 = *(v4 + 32);
    *(v4 + 216) = a1 & 1;
    v9 = sub_2408292D4;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_240828BDC()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240828CEC, v2, 0);
}

void sub_240828CEC()
{
  v68 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  sub_2408D3540();
  v1(v4, v5);
  v10 = sub_2408D3B20();
  (*(v7 + 8))(v6, v8);
  v66 = v3;
  v67 = v10;
  v11 = v3 + 56;
  v12 = -1 << *(v3 + 32);
  if (-v12 < 64)
  {
    v13 = ~(-1 << -v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v3 + 56);
  v15 = (63 - v12) >> 6;
  v64 = (v9 + 8);
  v65 = v9;

  v16 = 0;
  v62 = v3 + 56;
  v63 = v0;
  while (v14)
  {
LABEL_12:
    (*(v65 + 16))(v0[7], *(v66 + 48) + *(v65 + 72) * (__clz(__rbit64(v14)) | (v16 << 6)), v0[5]);
    v18 = sub_2408D3960();
    v19 = v18;
    if (*(v67 + 16))
    {
      v20 = -1 << *(v18 + 32);
      if (-v20 < 64)
      {
        v21 = ~(-1 << -v20);
      }

      else
      {
        v21 = -1;
      }

      v22 = v21 & *(v18 + 56);
      v23 = (63 - v20) >> 6;

      v24 = 0;
      while (v22)
      {
        v25 = v24;
LABEL_22:
        v26 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v27 = *(*(v19 + 48) + ((v25 << 9) | (8 * v26)));
        v28 = sub_24086D3D4();
      }

      while (1)
      {
        v25 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v25 >= v23)
        {

          v11 = v62;
          v0 = v63;
          goto LABEL_6;
        }

        v22 = *(v19 + 56 + 8 * v25);
        ++v24;
        if (v22)
        {
          v24 = v25;
          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

LABEL_6:
    v14 &= v14 - 1;
    (*v64)(v0[7], v0[5]);
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v15)
    {
      v29 = v0[20];
      v30 = v0[18];

      v31 = v67;
      v32 = *(v67 + 16);
      v33 = sub_2408D4B10();
      v34 = sub_2408D4F10();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 67109120;
        *(v35 + 4) = v32 == 0;
        _os_log_impl(&dword_2407CF000, v33, v34, "User has the required accounts to proceed: %{BOOL}d", v35, 8u);
        MEMORY[0x245CC9F60](v35, -1, -1);
      }

      if (v32)
      {
        v36 = v0[20];
        v37 = v0[18];

        v38 = sub_2408D4B10();
        v39 = sub_2408D4F30();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v67 = v41;
          *v40 = 136315138;
          type metadata accessor for AIDAServiceType(0);
          sub_2408763D8(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
          v42 = sub_2408D4EF0();
          v44 = sub_2408CC504(v42, v43, &v67);

          *(v40 + 4) = v44;
          _os_log_impl(&dword_2407CF000, v38, v39, "Unable to proceed, user missing accounts for required services: %s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
          MEMORY[0x245CC9F60](v41, -1, -1);
          MEMORY[0x245CC9F60](v40, -1, -1);
        }

        v46 = v0[16];
        v45 = v0[17];
        v47 = v0[15];
        v48 = sub_2408D3500();
        sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
        swift_allocError();
        *v49 = v31;
        (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277CED2B0], v48);
        swift_willThrow();
        (*(v46 + 8))(v45, v47);
        v50 = v0[17];
        v51 = v0[13];
        v52 = v0[14];
        v53 = v0[10];
        v54 = v0[7];

        v55 = v0[1];

        v55();
      }

      else
      {
        v56 = v0[14];
        v57 = v0[13];
        v58 = v0[10];
        v59 = v0[7];
        (*(v0[16] + 8))(v0[17], v0[15]);

        v60 = v0[1];
        v61 = v0[20];

        v60(v61);
      }

      return;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_12;
    }
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_2408292D4()
{
  v36 = v0;
  if (*(v0 + 216) == 1)
  {
    v1 = *(v0 + 144);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F10();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "User decided to connect and set up remote device", v4, 2u);
      MEMORY[0x245CC9F60](v4, -1, -1);
    }

    v5 = *(MEMORY[0x277CED858] + 4);
    v34 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *v6 = v0;
    v6[1] = sub_240828BDC;
    v7 = *(v0 + 104);
    v8 = *(v0 + 24);

    return v34(v7);
  }

  else
  {
    v10 = *(v0 + 160);
    v11 = *(v0 + 144);

    v12 = sub_2408D4B10();
    v13 = sub_2408D4F30();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 160);
    if (v14)
    {
      v16 = *(v0 + 40);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v35 = v18;
      *v17 = 136315138;
      sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
      v19 = sub_2408D4EF0();
      v21 = v20;

      v22 = sub_2408CC504(v19, v21, &v35);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_2407CF000, v12, v13, "User decided to not connect to remote device with proposed accounts: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    else
    {
    }

    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v25 = *(v0 + 120);
    v26 = sub_2408D3500();
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277CED2D8], v26);
    swift_willThrow();
    (*(v24 + 8))(v23, v25);
    v28 = *(v0 + 136);
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v31 = *(v0 + 80);
    v32 = *(v0 + 56);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_240829690()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[25];
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_240829748(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2408D4130();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = sub_2408D3630();
  v3[11] = v7;
  v8 = *(v7 - 8);
  v3[12] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v3[13] = v10;
  v11 = *(MEMORY[0x277CED858] + 4);
  v14 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v12 = swift_task_alloc();
  v3[14] = v12;
  *v12 = v3;
  v12[1] = sub_2408298C0;

  return v14(v10);
}

uint64_t sub_2408298C0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2408299D0, v2, 0);
}

uint64_t sub_2408299D0()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  sub_2408D3570();
  (*(v2 + 8))(v1, v3);
  LOBYTE(v1) = sub_2408D4070();
  (*(v6 + 8))(v4, v5);
  if (v1)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    __swift_project_value_buffer(v7, qword_27E506C48);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Discovery model indicates we should skip confirmation, auto confirming", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = v0[13];
    v12 = v0[10];

    v13 = v0[1];

    return v13(1);
  }

  else
  {
    v15 = v0[7];
    swift_beginAccess();
    v16 = *(v15 + 120);
    v0[15] = v16;
    if (v16)
    {
      v0[16] = *(v16 + 112);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
      sub_2407D917C(&qword_27E507598, &qword_27E506E58, &unk_2408D81B0);
      v18 = sub_2408D4E00();

      return MEMORY[0x2822009F8](sub_240829DC8, v18, v17);
    }

    else
    {
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v19 = sub_2408D4B20();
      v0[17] = __swift_project_value_buffer(v19, qword_27E506C48);
      v20 = sub_2408D4B10();
      v21 = sub_2408D4F20();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2407CF000, v20, v21, "Asking user for confirmation to connect before proceeding", v22, 2u);
        MEMORY[0x245CC9F60](v22, -1, -1);
      }

      v23 = v0[6];

      v24 = swift_task_alloc();
      v0[18] = v24;
      *(v24 + 16) = v23;
      v25 = *(MEMORY[0x277CED860] + 4);
      v29 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
      v26 = swift_task_alloc();
      v0[19] = v26;
      *v26 = v0;
      v26[1] = sub_24082A120;
      v27 = v0[5];
      v28 = MEMORY[0x277D839B0];

      return v29(v0 + 21, sub_240875AD4, v24, &unk_2408D6CF8, 0, v28);
    }
  }
}

uint64_t sub_240829DC8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 56);
  *(v0 + 169) = sub_2408D4200() & 1;

  return MEMORY[0x2822009F8](sub_240829E3C, v2, 0);
}

uint64_t sub_240829E3C()
{
  if (*(v0 + 169))
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v1 = sub_2408D4B20();
    __swift_project_value_buffer(v1, qword_27E506C48);
    v2 = sub_2408D4B10();
    v3 = sub_2408D4F10();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 120);
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2407CF000, v2, v3, "Remote role: bleClientIntercept indicates we should skip confirmation, auto confirming", v6, 2u);
      MEMORY[0x245CC9F60](v6, -1, -1);
    }

    v7 = *(v0 + 104);
    v8 = *(v0 + 80);

    v9 = *(v0 + 8);

    return v9(1);
  }

  else
  {
    v11 = *(v0 + 120);

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    *(v0 + 136) = __swift_project_value_buffer(v12, qword_27E506C48);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F20();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "Asking user for confirmation to connect before proceeding", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v16 = *(v0 + 48);

    v17 = swift_task_alloc();
    *(v0 + 144) = v17;
    *(v17 + 16) = v16;
    v18 = *(MEMORY[0x277CED860] + 4);
    v22 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
    v19 = swift_task_alloc();
    *(v0 + 152) = v19;
    *v19 = v0;
    v19[1] = sub_24082A120;
    v20 = *(v0 + 40);
    v21 = MEMORY[0x277D839B0];

    return v22(v0 + 168, sub_240875AD4, v17, &unk_2408D6CF8, 0, v21);
  }
}

uint64_t sub_24082A120()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_24082A344;
  }

  else
  {
    v6 = *(v2 + 144);
    v7 = *(v2 + 56);

    v5 = sub_24082A248;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24082A248()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 168);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_2407CF000, v3, v4, "User made the connection decision: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 80);

  v8 = *(v0 + 8);

  return v8(v2);
}

uint64_t sub_24082A344()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];
  v5 = v0[20];

  return v4(0);
}

void sub_24082A3C4(uint64_t a1, void *a2)
{
  v3 = 0;
  v11[1] = a2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    sub_24086A4D4(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24082A4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_2408D34E0();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074F0, &qword_2408D8048) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v13 = sub_2408D3630();
  v5[15] = v13;
  v14 = *(v13 - 8);
  v5[16] = v14;
  v15 = *(v14 + 64) + 15;
  v5[17] = swift_task_alloc();
  v16 = sub_2408D3C20();
  v5[18] = v16;
  v17 = *(v16 - 8);
  v5[19] = v17;
  v18 = *(v17 + 64) + 15;
  v5[20] = swift_task_alloc();
  v19 = sub_2408D4760();
  v5[21] = v19;
  v20 = *(v19 - 8);
  v5[22] = v20;
  v21 = *(v20 + 64) + 15;
  v5[23] = swift_task_alloc();
  v22 = sub_2408D3970();
  v5[24] = v22;
  v23 = *(v22 - 8);
  v5[25] = v23;
  v24 = *(v23 + 64) + 15;
  v5[26] = swift_task_alloc();
  v25 = sub_2408D3D60();
  v5[27] = v25;
  v26 = *(v25 - 8);
  v5[28] = v26;
  v27 = *(v26 + 64) + 15;
  v5[29] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082A838, v4, 0);
}

uint64_t sub_24082A838()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x277CED560], v3);
  LOBYTE(v4) = sub_2408D3D50();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[26];
    v6 = [objc_opt_self() sharedInstance];
    sub_2408D37F0();
    v25 = v0[31];
    v27 = v0[25];
    v26 = v0[26];
    v28 = v0[24];

    sub_2408D38F0();
    (*(v27 + 8))(v26, v28);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v7 = v0[31];
  v8 = v0[23];
  v9 = v0[6];
  v10 = sub_2408D38D0();
  (*(*(v10 - 8) + 56))(v7, v29, 1, v10);
  sub_2408D4750();
  v11 = *(v9 + 248);
  v0[32] = v11;
  if (v11)
  {
    v12 = *(MEMORY[0x277CED858] + 4);
    v31 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v13 = swift_task_alloc();
    v0[33] = v13;
    *v13 = v0;
    v13[1] = sub_24082ABB0;
    v14 = v0[17];

    return v31(v14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v16 = 2;
    swift_willThrow();
    v18 = v0[30];
    v17 = v0[31];
    v19 = v0[29];
    v20 = v0[26];
    v21 = v0[20];
    v22 = v0[17];
    v23 = v0[13];
    v30 = v0[12];
    v32 = v0[9];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_2407D9440(v17, &qword_27E507F00, &qword_2408D6D50);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_24082ABB0()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24082ACAC, 0, 0);
}

uint64_t sub_24082ACAC()
{
  v1 = v0[32];
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[6];
  sub_2408D3540();
  v10 = *(v8 + 8);
  v0[34] = v10;
  v0[35] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  sub_2408D4730();

  (*(v4 + 8))(v3, v6);

  return MEMORY[0x2822009F8](sub_24082ADB0, v9, 0);
}

uint64_t sub_24082ADB0()
{
  v24 = v0[30];
  v25 = v0[31];
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[22];
  v5 = v0[21];
  v6 = v0[14];
  v29 = v0[6];
  v26 = v0[23];
  v27 = v0[5];
  v7 = v0[2];
  v0[36] = swift_allocObject();
  swift_weakInit();
  v0[37] = sub_2408D3D80();
  (*(v1 + 16))(v2, v7, v3);
  sub_2407EEE04(v25, v24, &qword_27E507F00, &qword_2408D6D50);
  (*(v4 + 16))(v6, v26, v5);
  (*(v4 + 56))(v6, 0, 1, v5);

  v0[38] = sub_2408D3D40();
  v8 = *(v29 + 248);
  v0[39] = v8;
  if (v8)
  {
    v9 = *(MEMORY[0x277CED858] + 4);
    v30 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v10 = swift_task_alloc();
    v0[40] = v10;
    *v10 = v0;
    v10[1] = sub_24082B130;
    v11 = v0[17];

    return v30(v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v13 = 2;
    swift_willThrow();

    v15 = v0[30];
    v14 = v0[31];
    v16 = v0[29];
    v17 = v0[26];
    v18 = v0[20];
    v19 = v0[17];
    v20 = v0[13];
    v21 = v0[14];
    v22 = v0[12];
    v28 = v0[9];
    (*(v0[22] + 8))(v0[23], v0[21]);
    sub_2407D9440(v14, &qword_27E507F00, &qword_2408D6D50);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_24082B130()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 48);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_24082B25C, v3, 0);
}

uint64_t sub_24082B25C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[17];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  sub_2408D3580();
  v2(v3, v4);
  (*(v8 + 104))(v6, *MEMORY[0x277CED258], v7);
  LOBYTE(v1) = MEMORY[0x245CC7910](v5, v6);
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
  v10 = v0[37];
  v11 = v0[38];
  if (v1)
  {
    sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);
    v12 = sub_2408D4E00();
    v14 = v13;
    v15 = sub_24082B448;
  }

  else
  {
    v16 = v0[6];
    v0[41] = swift_allocObject();
    swift_weakInit();
    sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);

    v12 = sub_2408D4E00();
    v14 = v17;
    v15 = sub_24082B5BC;
  }

  return MEMORY[0x2822009F8](v15, v12, v14);
}

uint64_t sub_24082B448()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 48);
  sub_2408D3D20();

  return MEMORY[0x2822009F8](sub_24082B4CC, v2, 0);
}

uint64_t sub_24082B4CC()
{
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[6];
  v0[41] = swift_allocObject();
  swift_weakInit();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);

  v5 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_24082B5BC, v5, v4);
}

uint64_t sub_24082B5BC()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[6];
  sub_2408D3D00();

  return MEMORY[0x2822009F8](sub_24082B658, v3, 0);
}

uint64_t sub_24082B658()
{
  (*(v0[8] + 16))(v0[9], v0[3], v0[7]);
  v1 = *(MEMORY[0x277CED5A0] + 4);
  v9 = (*MEMORY[0x277CED5A0] + MEMORY[0x277CED5A0]);
  v2 = swift_task_alloc();
  v0[42] = v2;
  v3 = sub_2407D917C(&qword_27E506E88, &qword_27E506E90, &unk_2408D7F80);
  *v2 = v0;
  v2[1] = sub_24082B760;
  v4 = v0[38];
  v5 = v0[9];
  v6 = v0[7];
  v7 = v0[4];

  return v9(v5, v7, v6, v3);
}

uint64_t sub_24082B760()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v4 = *v1;
  *(*v1 + 344) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_24082B9C8;
  }

  else
  {
    v6 = sub_24082B88C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24082B88C()
{
  v1 = v0[36];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[17];
  v14 = v0[14];
  v15 = v0[13];
  v16 = v0[12];
  v17 = v0[9];

  (*(v6 + 8))(v7, v8);
  sub_2407D9440(v2, &qword_27E507F00, &qword_2408D6D50);

  v11 = v0[1];
  v12 = v0[38];

  return v11(v12);
}

uint64_t sub_24082B9C8()
{
  v1 = v0[38];
  v2 = v0[36];

  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  v6 = v0[26];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[13];
  v10 = v0[14];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[43];
  (*(v0[22] + 8))(v0[23], v0[21]);
  sub_2407D9440(v3, &qword_27E507F00, &qword_2408D6D50);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24082BB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x2822009F8](sub_24082BB30, 0, 0);
}

uint64_t sub_24082BB30()
{
  v1 = v0[8];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_24082BD68;
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];

    return sub_24082C158(v6, v4, v5);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506C48);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "RemoteSetupService deallocated", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v12 = 12;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_24082BD68()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24082BEE0;
  }

  else
  {
    v3 = sub_24082BE7C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24082BE7C()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24082BEE0()
{
  v1 = v0[9];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

void sub_24082BF44()
{
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v0 = sub_2408D4B20();
  __swift_project_value_buffer(v0, qword_27E506C48);
  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2407CF000, v1, v2, "Command router invalidated, cancelling remote setup service", v3, 2u);
    MEMORY[0x245CC9F60](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = sub_2408D3D70();
    sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
    v5 = swift_allocError();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277CED580], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507460, &unk_2408D7F00);
    sub_2407D917C(&qword_27E507628, &qword_27E507460, &unk_2408D7F00);
    sub_2408D4270();
  }
}

uint64_t sub_24082C158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4220();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D3E10();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_2408D4500();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_2408D4A40();
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082C330, v3, 0);
}

uint64_t sub_24082C330()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 16))(v1, v0[3], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277CEDE00])
  {
    v5 = v0[17];
    v7 = v0[10];
    v6 = v0[11];
    v8 = v0[9];
    (*(v0[16] + 96))(v5, v0[15]);
    (*(v7 + 32))(v6, v5, v8);
    v36 = sub_24083ECA8;
    v9 = swift_task_alloc();
    v0[20] = v9;
    *v9 = v0;
    v9[1] = sub_24082C860;
    v10 = v0[11];
LABEL_3:
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[2];

    return v36(v13, v10, v11);
  }

  if (v4 == *MEMORY[0x277CEDE08])
  {
    v15 = v0[17];
    v17 = v0[7];
    v16 = v0[8];
    v19 = v0[5];
    v18 = v0[6];
    (*(v0[16] + 96))(v15, v0[15]);
    (*(v17 + 32))(v16, v15, v18);
    sub_2408D3F20();
    v20 = *(v19 + 128);
    v21 = *(MEMORY[0x277CED660] + 4);
    v22 = swift_task_alloc();
    v0[22] = v22;
    *v22 = v0;
    v22[1] = sub_24082C98C;
    v23 = v0[8];
    v24 = v0[2];

    return MEMORY[0x28213F3D0](v24, v23, v20);
  }

  else
  {
    if (v4 == *MEMORY[0x277CEDDF0])
    {
      v25 = v0[17];
      v26 = v0[14];
      v27 = v0[12];
      v28 = v0[13];
      (*(v0[16] + 96))(v25, v0[15]);
      (*(v28 + 32))(v26, v25, v27);
      v36 = sub_24083584C;
      v29 = swift_task_alloc();
      v0[18] = v29;
      *v29 = v0;
      v29[1] = sub_24082C734;
      v10 = v0[14];
      goto LABEL_3;
    }

    v30 = sub_2408D41D0();
    sub_2408763D8(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    swift_allocError();
    (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277CED7E0], v30);
    swift_willThrow();
    v32 = v0[14];
    v33 = v0[11];
    v34 = v0[8];
    (*(v0[16] + 8))(v0[17], v0[15]);

    v35 = v0[1];

    return v35();
  }
}

uint64_t sub_24082C734()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24082CD68;
  }

  else
  {
    v6 = sub_24082CC6C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24082C860()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24082CF14;
  }

  else
  {
    v6 = sub_24082CE18;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24082C98C()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_24082CBB8;
  }

  else
  {
    v6 = sub_24082CAB8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24082CAB8()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[2];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v5 = *MEMORY[0x277CEDE30];
  v6 = sub_2408D4A50();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24082CBB8()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24082CC6C()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[2];
  (*(v0[13] + 8))(v0[14], v0[12]);
  v5 = *MEMORY[0x277CEDE18];
  v6 = sub_2408D4A50();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24082CD68()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[11];
  v4 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24082CE18()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v5 = *MEMORY[0x277CEDE28];
  v6 = sub_2408D4A50();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24082CF14()
{
  v1 = v0[21];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24082CFC4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_2408D4530();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = sub_2408D36A0();
  v2[14] = v7;
  v8 = *(v7 - 8);
  v2[15] = v8;
  v9 = *(v8 + 64) + 15;
  v2[16] = swift_task_alloc();
  v10 = *(*(sub_2408D33D0() - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = sub_2408D4500();
  v2[19] = v12;
  v13 = *(v12 - 8);
  v2[20] = v13;
  v14 = *(v13 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v15 = sub_2408D38D0();
  v2[23] = v15;
  v16 = *(v15 - 8);
  v2[24] = v16;
  v17 = *(v16 + 64) + 15;
  v2[25] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v19 = sub_2408D4660();
  v2[27] = v19;
  v20 = *(v19 - 8);
  v2[28] = v20;
  v21 = *(v20 + 64) + 15;
  v2[29] = swift_task_alloc();
  v22 = sub_2408D3970();
  v2[30] = v22;
  v23 = *(v22 - 8);
  v2[31] = v23;
  v24 = *(v23 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082D33C, v1, 0);
}

uint64_t sub_24082D33C()
{
  v18 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_2408D4B20();
  v0[34] = __swift_project_value_buffer(v2, qword_27E506C48);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[7] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507220, &unk_2408D7670);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Authenticating remote device with model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = *(MEMORY[0x277CED858] + 4);
  v16 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v12 = swift_task_alloc();
  v0[35] = v12;
  *v12 = v0;
  v12[1] = sub_24082D54C;
  v13 = v0[29];
  v14 = v0[8];

  return v16(v13);
}

uint64_t sub_24082D54C()
{
  v1 = *(*v0 + 280);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24082D65C, v2, 0);
}

uint64_t sub_24082D65C()
{
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v6 = v0[26];
  v5 = v0[27];
  sub_2408D4630();
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    v7 = v0[34];
    sub_2407D9440(v0[26], &unk_27E506A20, &unk_2408D67F0);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Expected nonnull account to be in authentication model during remote setup", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v13 = v0[32];
    v12 = v0[33];
    v14 = v0[29];
    v16 = v0[25];
    v15 = v0[26];
    v18 = v0[21];
    v17 = v0[22];
    v20 = v0[17];
    v19 = v0[18];
    v26 = v0[16];
    v27 = v0[13];
    v28 = v0[12];

    v21 = v0[1];

    return v21();
  }

  else
  {
    (*(v0[31] + 32))(v0[33], v0[26], v0[30]);
    v23 = *(MEMORY[0x277CED870] + 4);
    v29 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v24 = swift_task_alloc();
    v0[36] = v24;
    *v24 = v0;
    v24[1] = sub_24082D958;
    v25 = v0[8];

    return v29(nullsub_1, 0);
  }
}

uint64_t sub_24082D958()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v4 = *v1;
  *(*v1 + 296) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_24082DA84;
  }

  else
  {
    v6 = sub_24082DB9C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24082DA84()
{
  (*(v0[31] + 8))(v0[33], v0[30]);
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[37];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24082DB9C()
{
  v1 = v0[33];
  v2 = v0[25];
  v0[38] = *(v0[9] + 112);
  sub_2408D38F0();
  sub_24082F2B0(v0 + 2);
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_24082DC98;
  v9 = v0[25];
  v10 = v0[9];

  return sub_24086F87C(v9, v5, v4, v6, v7, v10);
}

uint64_t sub_24082DC98(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v6 = *(*v1 + 184);
  v7 = *(*v1 + 72);
  v9 = *v1;
  *(v2 + 392) = a1;

  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_24082DE1C, v7, 0);
}

uint64_t sub_24082DE1C()
{
  if (*(v0 + 392) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_24082E230;
    v2 = *(v0 + 304);
    v3 = *(v0 + 264);
    v4 = *(v0 + 64);

    return sub_240809854(v4, v3);
  }

  else
  {
    v6 = *(v0 + 272);
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2407CF000, v7, v8, "No symptoms found. Cleared for takeoff.", v9, 2u);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    v10 = *(v0 + 272);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F20();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2407CF000, v11, v12, "Continuing to SRP", v13, 2u);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v14 = *(v0 + 72);

    v15 = *(v14 + 240);
    *(v0 + 336) = v15;
    if (v15)
    {
      v16 = *(v0 + 272);

      v17 = sub_2408D4B10();
      v18 = sub_2408D4F20();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2407CF000, v17, v18, "Following standard magic/proxied auth pattern", v19, 2u);
        MEMORY[0x245CC9F60](v19, -1, -1);
      }

      v20 = swift_task_alloc();
      *(v0 + 344) = v20;
      *v20 = v0;
      v20[1] = sub_24082EAEC;
      v21 = *(v0 + 264);
      v22 = *(v0 + 64);
      v23 = *(v0 + 72);

      return sub_24082F5BC(v22, v21, v15);
    }

    else
    {
      v24 = *(v0 + 264);
      v25 = *(v0 + 240);
      v26 = *(v0 + 248);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
      swift_allocError();
      *v27 = 0;
      swift_willThrow();
      (*(v26 + 8))(v24, v25);
      v29 = *(v0 + 256);
      v28 = *(v0 + 264);
      v30 = *(v0 + 232);
      v32 = *(v0 + 200);
      v31 = *(v0 + 208);
      v34 = *(v0 + 168);
      v33 = *(v0 + 176);
      v36 = *(v0 + 136);
      v35 = *(v0 + 144);
      v37 = *(v0 + 128);
      v39 = *(v0 + 104);
      v40 = *(v0 + 96);

      v38 = *(v0 + 8);

      return v38();
    }
  }
}

uint64_t sub_24082E230(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 320);
  v6 = *v2;
  *(v4 + 328) = v1;

  v7 = *(v4 + 72);
  if (v1)
  {
    v8 = sub_24082E9D4;
  }

  else
  {
    *(v4 + 393) = a1 & 1;
    v8 = sub_24082E370;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24082E370()
{
  v1 = *(v0 + 393);
  v2 = *(v0 + 272);
  v3 = sub_2408D4B10();
  if (v1)
  {
    v4 = sub_2408D4F20();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2407CF000, v3, v4, "Continuing to SRP", v5, 2u);
      MEMORY[0x245CC9F60](v5, -1, -1);
    }

    v6 = *(v0 + 72);

    v7 = *(v6 + 240);
    *(v0 + 336) = v7;
    if (v7)
    {
      v8 = *(v0 + 272);

      v9 = sub_2408D4B10();
      v10 = sub_2408D4F20();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_2407CF000, v9, v10, "Following standard magic/proxied auth pattern", v11, 2u);
        MEMORY[0x245CC9F60](v11, -1, -1);
      }

      v12 = swift_task_alloc();
      *(v0 + 344) = v12;
      *v12 = v0;
      v12[1] = sub_24082EAEC;
      v13 = *(v0 + 264);
      v14 = *(v0 + 64);
      v15 = *(v0 + 72);

      return sub_24082F5BC(v14, v13, v7);
    }

    v36 = *(v0 + 264);
    v37 = *(v0 + 240);
    v38 = *(v0 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
    (*(v38 + 8))(v36, v37);
    goto LABEL_18;
  }

  v17 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2407CF000, v3, v17, "Failing early as user did not repair their account", v18, 2u);
    MEMORY[0x245CC9F60](v18, -1, -1);
  }

  v19 = *(v0 + 256);
  v20 = *(v0 + 200);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  v59 = *(v0 + 72);
  v61 = *(v0 + 176);

  sub_2408D38A0();
  v27 = sub_2408D3720();
  (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
  sub_2408D33C0();
  (*(v23 + 104))(v24, *MEMORY[0x277CED3A0], v26);
  sub_2408D38E0();
  v28 = sub_2408D36F0();
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  sub_2408D44E0();
  v29 = *(v59 + 240);
  *(v0 + 368) = v29;
  if (!v29)
  {
    v40 = *(v0 + 264);
    v41 = *(v0 + 240);
    v42 = *(v0 + 248);
    v43 = *(v0 + 176);
    v44 = *(v0 + 152);
    v45 = *(v0 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
    (*(v45 + 8))(v43, v44);
    (*(v42 + 8))(v40, v41);
LABEL_18:
    v48 = *(v0 + 256);
    v47 = *(v0 + 264);
    v49 = *(v0 + 232);
    v51 = *(v0 + 200);
    v50 = *(v0 + 208);
    v53 = *(v0 + 168);
    v52 = *(v0 + 176);
    v55 = *(v0 + 136);
    v54 = *(v0 + 144);
    v56 = *(v0 + 128);
    v58 = *(v0 + 104);
    v60 = *(v0 + 96);

    v57 = *(v0 + 8);

    return v57();
  }

  (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 176), *(v0 + 152));
  v30 = *(MEMORY[0x277CED570] + 4);
  v62 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

  v31 = swift_task_alloc();
  *(v0 + 376) = v31;
  v32 = sub_2408763D8(&qword_27E506D10, 255, MEMORY[0x277CEDB20]);
  *v31 = v0;
  v31[1] = sub_24082EE7C;
  v33 = *(v0 + 168);
  v34 = *(v0 + 152);
  v35 = *(v0 + 96);

  return v62(v35, v33, v34, v32);
}

uint64_t sub_24082E9D4()
{
  (*(v0[31] + 8))(v0[33], v0[30]);
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[21];
  v6 = v0[22];
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[16];
  v13 = v0[13];
  v14 = v0[12];
  v15 = v0[41];

  v11 = v0[1];

  return v11();
}

uint64_t sub_24082EAEC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  v4[44] = v1;

  v7 = v4[9];
  if (v1)
  {
    v8 = sub_24082ED54;
  }

  else
  {
    v4[45] = a1;
    v8 = sub_24082EC28;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24082EC28()
{
  v1 = v0[42];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  v14 = v0[18];
  v15 = v0[17];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[12];

  (*(v5 + 8))(v3, v4);

  v11 = v0[1];
  v12 = v0[45];

  return v11(v12);
}

uint64_t sub_24082ED54()
{
  v1 = v0[42];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  v17 = v0[13];
  v18 = v0[12];
  v19 = v0[44];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24082EE7C()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v4 = *v1;
  v2[48] = v0;

  v5 = v2[46];
  if (v0)
  {
    v6 = v2[9];

    v7 = sub_24082F178;
  }

  else
  {
    v6 = v2[9];
    (*(v2[11] + 8))(v2[12], v2[10]);

    v7 = sub_24082EFD8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24082EFD8()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  (*(v0[20] + 8))(v0[22], v0[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
  swift_allocError();
  *v4 = 13;
  swift_willThrow();
  (*(v3 + 8))(v1, v2);
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[29];
  v9 = v0[25];
  v8 = v0[26];
  v11 = v0[21];
  v10 = v0[22];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  v17 = v0[13];
  v18 = v0[12];

  v15 = v0[1];

  return v15();
}

uint64_t sub_24082F178()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  (*(v0[20] + 8))(v0[22], v0[19]);
  (*(v3 + 8))(v1, v2);
  v5 = v0[32];
  v4 = v0[33];
  v6 = v0[29];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[48];

  v14 = v0[1];

  return v14();
}

void *sub_24082F2B0@<X0>(void *a1@<X8>)
{
  v17 = a1;
  v19 = sub_2408D4FD0();
  v1 = *(v19 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v19);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2408D4FC0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2408D4C70();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v16 = [objc_opt_self() sharedInstance];
  v18 = sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  v20 = MEMORY[0x277D84F90];
  sub_2408763D8(&unk_28130EF50, 255, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80);
  sub_2408D5080();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v19);
  v9 = sub_2408D4FF0();
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v11 = result;
    v12 = v17;
    v17[3] = &type metadata for SymptomReportGenerator;
    v12[4] = &off_285285708;
    result = swift_allocObject();
    *v12 = result;
    v13 = v16;
    result[2] = v11;
    result[3] = v13;
    v14 = MEMORY[0x277D84FA0];
    result[4] = v9;
    result[5] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24082F5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_2408D3D70();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v9 = sub_2408D3770();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();
  v12 = sub_2408D3970();
  v4[24] = v12;
  v13 = *(v12 - 8);
  v4[25] = v13;
  v14 = *(v13 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v4[31] = swift_task_alloc();
  v16 = sub_2408D3490();
  v4[32] = v16;
  v17 = *(v16 - 8);
  v4[33] = v17;
  v18 = *(v17 + 64) + 15;
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24082F834, v3, 0);
}

uint64_t sub_24082F834()
{
  v77 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[16];
  v5 = v4[22];
  __swift_project_boxed_opaque_existential_1(v4 + 18, v4[21]);
  (*(v2 + 104))(v1, *MEMORY[0x277CED208], v3);
  v6 = sub_2408D4770();
  (*(v2 + 8))(v1, v3);
  if ((v6 & 1) != 0 && (v7 = v0[31], v8 = v0[14], sub_2408D37A0(), v9 = sub_2408D3720(), LODWORD(v8) = (*(*(v9 - 8) + 48))(v7, 1, v9), sub_2407D9440(v7, &qword_27E506A18, &qword_2408D67E8), v8 != 1))
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v23 = v0[30];
    v24 = v0[24];
    v25 = v0[25];
    v26 = v0[14];
    v27 = sub_2408D4B20();
    __swift_project_value_buffer(v27, qword_27E506C48);
    v28 = *(v25 + 16);
    (v28)(v23, v26, v24);
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F20();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[30];
    v34 = v0[24];
    v33 = v0[25];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76[0] = v71;
      *v35 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v36 = sub_2408D5220();
      log = v28;
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v32, v34);
      v40 = sub_2408CC504(v36, v38, v76);
      v28 = log;

      *(v35 + 4) = v40;
      _os_log_impl(&dword_2407CF000, v29, v30, "Family info is nonnull for account: %s, proceeding to do easy sign in", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v71);
      MEMORY[0x245CC9F60](v71, -1, -1);
      v41 = v35;
      v42 = v39;
      MEMORY[0x245CC9F60](v41, -1, -1);
    }

    else
    {

      v42 = *(v33 + 8);
      v42(v32, v34);
    }

    v0[35] = v42;
    v43 = v0[29];
    v44 = *(v0[16] + 136);
    sub_2408D37F0();
    v45 = v0[27];
    v46 = v0[24];
    v47 = v0[14];
    (v28)(v0[28], v0[29], v46);
    (v28)(v45, v47, v46);
    v48 = sub_2408D4B10();
    v49 = sub_2408D4F10();
    v50 = os_log_type_enabled(v48, v49);
    v52 = v0[27];
    v51 = v0[28];
    v54 = v0[24];
    v53 = v0[25];
    if (v50)
    {
      loga = v48;
      v55 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76[0] = v75;
      *v55 = 136315394;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v56 = sub_2408D5220();
      v72 = v49;
      v57 = v42;
      v59 = v58;
      v57(v51, v54);
      v60 = sub_2408CC504(v56, v59, v76);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      v61 = sub_2408D5220();
      v63 = v62;
      v57(v52, v54);
      v64 = sub_2408CC504(v61, v63, v76);

      *(v55 + 14) = v64;
      _os_log_impl(&dword_2407CF000, loga, v72, "Attempting challenged dependent auth with source: %s and target: %s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v75, -1, -1);
      MEMORY[0x245CC9F60](v55, -1, -1);
    }

    else
    {

      v42(v52, v54);
      v42(v51, v54);
    }

    v65 = swift_task_alloc();
    v0[36] = v65;
    *v65 = v0;
    v65[1] = sub_24082FF74;
    v66 = v0[29];
    v67 = v0[15];
    v68 = v0[16];
    v70 = v0[13];
    v69 = v0[14];

    return sub_240832DF8(v70, v66, v69, v67);
  }

  else
  {
    v10 = v0[20];
    v11 = v0[16];
    sub_2408D36D0();
    v12 = *(v11 + 128);
    v13 = *(v11 + 136);
    v14 = sub_2408D4150();
    v15 = sub_2408D4140();
    v16 = MEMORY[0x277CED7C0];
    v0[5] = v14;
    v0[6] = v16;
    v0[2] = v15;
    v17 = swift_task_alloc();
    v0[39] = v17;
    *v17 = v0;
    v17[1] = sub_2408302BC;
    v18 = v0[23];
    v19 = v0[20];
    v20 = v0[14];
    v21 = v0[15];

    return sub_2407E52F0(v18, v20, v19, v12, v13, (v0 + 2));
  }
}

uint64_t sub_24082FF74(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  v4[37] = v1;

  v7 = v4[16];
  if (v1)
  {
    v8 = sub_2408301B8;
  }

  else
  {
    v4[38] = a1;
    v8 = sub_2408300B0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408300B0()
{
  v1 = *(v0 + 200) + 8;
  (*(v0 + 280))(*(v0 + 232), *(v0 + 192));
  v14 = *(v0 + 304);
  v2 = *(v0 + 272);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 152);
  v11 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12(v14);
}

uint64_t sub_2408301B8()
{
  v1 = *(v0 + 200) + 8;
  (*(v0 + 280))(*(v0 + 232), *(v0 + 192));
  v14 = *(v0 + 296);
  v2 = *(v0 + 272);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = *(v0 + 184);
  v10 = *(v0 + 152);
  v11 = *(v0 + 160);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2408302BC()
{
  v2 = *v1;
  v3 = (*v1)[39];
  v4 = *v1;
  v2[40] = v0;

  v5 = v2[16];
  sub_2407D9440(v2[20], &qword_27E506D00, &unk_2408D7FE0);
  __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
  if (v0)
  {
    v6 = sub_240830C28;
  }

  else
  {
    v6 = sub_24083041C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24083041C()
{
  v77 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 184);
  v3 = IdMSAccount.SRPResults.into()();
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
  if (v1)
  {
    *(v0 + 328) = v1;
    v4 = *(v0 + 152);
    v5 = *(v0 + 136);
    *(v0 + 80) = v1;
    v6 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    if (swift_dynamicCast())
    {
      v7 = (*(*(v0 + 144) + 88))(*(v0 + 152), *(v0 + 136));
      if (v7 == *MEMORY[0x277CED588])
      {
        v8 = v7;

        if (qword_27E506918 != -1)
        {
          swift_once();
        }

        v9 = sub_2408D4B20();
        __swift_project_value_buffer(v9, qword_27E506C48);
        v10 = sub_2408D4B10();
        v11 = sub_2408D4F30();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = *(v0 + 136);
          v13 = *(v0 + 144);
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          *v14 = 138412290;
          sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
          swift_allocError();
          (*(v13 + 104))(v16, v8, v12);
          v17 = _swift_stdlib_bridgeErrorToNSError();
          *(v14 + 4) = v17;
          *v15 = v17;
          _os_log_impl(&dword_2407CF000, v10, v11, "Failed to perform magic auth for account with error: %@", v14, 0xCu);
          sub_2407D9440(v15, &qword_27E506AB0, &unk_2408D6830);
          MEMORY[0x245CC9F60](v15, -1, -1);
          MEMORY[0x245CC9F60](v14, -1, -1);
        }

        v18 = *(v0 + 128);

        swift_beginAccess();
        v19 = *(v18 + 120);
        if (v19)
        {
          v20 = *(v0 + 136);
          v21 = *(v0 + 144);
          *(v0 + 88) = v19;
          sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
          v22 = swift_allocError();
          (*(v21 + 104))(v23, v8, v20);
          *(v0 + 96) = v22;
          type metadata accessor for ProximityTransportConnector();
          sub_2408763D8(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector);
          sub_2408D3640();
        }

        v25 = *(v0 + 136);
        v24 = *(v0 + 144);
        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
        swift_allocError();
        (*(v24 + 104))(v26, v8, v25);
        swift_willThrow();

        v27 = *(v0 + 272);
        v29 = *(v0 + 240);
        v28 = *(v0 + 248);
        v31 = *(v0 + 224);
        v30 = *(v0 + 232);
        v33 = *(v0 + 208);
        v32 = *(v0 + 216);
        v34 = *(v0 + 184);
        v35 = *(v0 + 152);
        v36 = *(v0 + 160);

        v37 = *(v0 + 8);

        return v37();
      }

      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    }

    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v51 = *(v0 + 192);
    v52 = *(v0 + 112);
    v53 = sub_2408D4B20();
    __swift_project_value_buffer(v53, qword_27E506C48);
    (*(v50 + 16))(v49, v52, v51);
    v54 = v1;
    v55 = sub_2408D4B10();
    v56 = sub_2408D4F30();

    v57 = os_log_type_enabled(v55, v56);
    v59 = *(v0 + 200);
    v58 = *(v0 + 208);
    v60 = *(v0 + 192);
    if (v57)
    {
      v61 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = v75;
      *v61 = 136315394;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v62 = sub_2408D5220();
      v64 = v63;
      (*(v59 + 8))(v58, v60);
      v65 = sub_2408CC504(v62, v64, &v76);

      *(v61 + 4) = v65;
      *(v61 + 12) = 2112;
      v66 = v1;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 14) = v67;
      *v73 = v67;
      _os_log_impl(&dword_2407CF000, v55, v56, "Failed to perform magic auth for account (%s with error: %@", v61, 0x16u);
      sub_2407D9440(v73, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v73, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v75);
      MEMORY[0x245CC9F60](v75, -1, -1);
      MEMORY[0x245CC9F60](v61, -1, -1);
    }

    else
    {

      (*(v59 + 8))(v58, v60);
    }

    v68 = swift_task_alloc();
    *(v0 + 336) = v68;
    *v68 = v0;
    v68[1] = sub_24083136C;
    v69 = *(v0 + 120);
    v70 = *(v0 + 128);
    v72 = *(v0 + 104);
    v71 = *(v0 + 112);

    return sub_24083168C(v72, v71, v69);
  }

  else
  {
    v39 = *(v0 + 272);
    v41 = *(v0 + 240);
    v40 = *(v0 + 248);
    v43 = *(v0 + 224);
    v42 = *(v0 + 232);
    v45 = *(v0 + 208);
    v44 = *(v0 + 216);
    v46 = *(v0 + 184);
    v47 = *(v0 + 160);
    v74 = *(v0 + 152);

    v48 = *(v0 + 8);

    return v48(v3);
  }
}

uint64_t sub_240830C28()
{
  v64 = v0;
  v1 = *(v0 + 320);
  *(v0 + 80) = v1;
  *(v0 + 328) = v1;
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v5 = (*(*(v0 + 144) + 88))(*(v0 + 152), *(v0 + 136));
    if (v5 == *MEMORY[0x277CED588])
    {
      v6 = v5;

      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v7 = sub_2408D4B20();
      __swift_project_value_buffer(v7, qword_27E506C48);
      v8 = sub_2408D4B10();
      v9 = sub_2408D4F30();
      if (os_log_type_enabled(v8, v9))
      {
        v11 = *(v0 + 136);
        v10 = *(v0 + 144);
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
        swift_allocError();
        (*(v10 + 104))(v14, v6, v11);
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_2407CF000, v8, v9, "Failed to perform magic auth for account with error: %@", v12, 0xCu);
        sub_2407D9440(v13, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v13, -1, -1);
        MEMORY[0x245CC9F60](v12, -1, -1);
      }

      v16 = *(v0 + 128);

      swift_beginAccess();
      v17 = *(v16 + 120);
      if (v17)
      {
        v18 = *(v0 + 136);
        v19 = *(v0 + 144);
        *(v0 + 88) = v17;
        sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
        v20 = swift_allocError();
        (*(v19 + 104))(v21, v6, v18);
        *(v0 + 96) = v20;
        type metadata accessor for ProximityTransportConnector();
        sub_2408763D8(&qword_27E506E78, 255, type metadata accessor for ProximityTransportConnector);
        sub_2408D3640();
      }

      v22 = *(v0 + 136);
      v23 = *(v0 + 144);
      sub_2408763D8(&qword_27E506D20, 255, MEMORY[0x277CED590]);
      swift_allocError();
      (*(v23 + 104))(v24, v6, v22);
      swift_willThrow();

      v25 = *(v0 + 272);
      v27 = *(v0 + 240);
      v26 = *(v0 + 248);
      v29 = *(v0 + 224);
      v28 = *(v0 + 232);
      v31 = *(v0 + 208);
      v30 = *(v0 + 216);
      v32 = *(v0 + 184);
      v33 = *(v0 + 152);
      v34 = *(v0 + 160);

      v35 = *(v0 + 8);

      return v35();
    }

    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v38 = *(v0 + 200);
  v37 = *(v0 + 208);
  v39 = *(v0 + 192);
  v40 = *(v0 + 112);
  v41 = sub_2408D4B20();
  __swift_project_value_buffer(v41, qword_27E506C48);
  (*(v38 + 16))(v37, v40, v39);
  v42 = v1;
  v43 = sub_2408D4B10();
  v44 = sub_2408D4F30();

  v45 = os_log_type_enabled(v43, v44);
  v47 = *(v0 + 200);
  v46 = *(v0 + 208);
  v48 = *(v0 + 192);
  if (v45)
  {
    v49 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v63 = v62;
    *v49 = 136315394;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v50 = sub_2408D5220();
    v52 = v51;
    (*(v47 + 8))(v46, v48);
    v53 = sub_2408CC504(v50, v52, &v63);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2112;
    v54 = v1;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 14) = v55;
    *v61 = v55;
    _os_log_impl(&dword_2407CF000, v43, v44, "Failed to perform magic auth for account (%s with error: %@", v49, 0x16u);
    sub_2407D9440(v61, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v61, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    MEMORY[0x245CC9F60](v62, -1, -1);
    MEMORY[0x245CC9F60](v49, -1, -1);
  }

  else
  {

    (*(v47 + 8))(v46, v48);
  }

  v56 = swift_task_alloc();
  *(v0 + 336) = v56;
  *v56 = v0;
  v56[1] = sub_24083136C;
  v57 = *(v0 + 120);
  v58 = *(v0 + 128);
  v60 = *(v0 + 104);
  v59 = *(v0 + 112);

  return sub_24083168C(v60, v59, v57);
}

uint64_t sub_24083136C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 336);
  v6 = *v2;
  v4[43] = v1;

  v7 = v4[16];
  if (v1)
  {
    v8 = sub_24083159C;
  }

  else
  {
    v4[44] = a1;
    v8 = sub_2408314A8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_2408314A8()
{
  v13 = *(v0 + 352);
  v1 = *(v0 + 272);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);

  v11 = *(v0 + 8);

  return v11(v13);
}

uint64_t sub_24083159C()
{
  v13 = *(v0 + 344);
  v1 = *(v0 + 272);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 184);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24083168C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_2408D3770();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = sub_2408D36A0();
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v13 = sub_2408D36F0();
  v4[17] = v13;
  v14 = *(v13 - 8);
  v4[18] = v14;
  v15 = *(v14 + 64) + 15;
  v4[19] = swift_task_alloc();
  v16 = sub_2408D38D0();
  v4[20] = v16;
  v17 = *(v16 - 8);
  v4[21] = v17;
  v18 = *(v17 + 64) + 15;
  v4[22] = swift_task_alloc();
  v19 = sub_2408D3970();
  v4[23] = v19;
  v20 = *(v19 - 8);
  v4[24] = v20;
  v21 = *(v20 + 64) + 15;
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083193C, v3, 0);
}

uint64_t sub_24083193C()
{
  v30 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[6];
  v5 = sub_2408D4B20();
  v0[27] = __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v0[28] = v6;
  v0[29] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F50();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[26];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v13 = v0[21];
    v14 = v0[22];
    v27 = v8;
    v15 = v0[20];
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v16 = 136315138;
    v26 = v11;
    sub_2408D38F0();
    sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8]);
    v17 = sub_2408D5220();
    v19 = v18;
    (*(v13 + 8))(v14, v15);
    v20 = *(v12 + 8);
    v20(v10, v26);
    v21 = sub_2408CC504(v17, v19, &v29);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v7, v27, "Performing proxied auth for account %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x245CC9F60](v28, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  v0[30] = v20;
  v22 = v0[7];
  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);
  v24 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_240831C28, v24, v23);
}

uint64_t sub_240831C28()
{
  v1 = v0[19];
  v2 = v0[7];
  sub_2408D3D30();
  v0[31] = 0;
  v3 = v0[8];

  return MEMORY[0x2822009F8](sub_240831CB8, v3, 0);
}

uint64_t sub_240831CB8()
{
  v1 = *(v0 + 152);
  v2 = swift_task_alloc();
  *(v0 + 256) = v2;
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x277CED870] + 4);
  v7 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v4 = swift_task_alloc();
  *(v0 + 264) = v4;
  *v4 = v0;
  v4[1] = sub_240831D98;
  v5 = *(v0 + 40);

  return v7(sub_2407EECEC, v2);
}

uint64_t sub_240831D98()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);
    v5 = sub_240832834;
  }

  else
  {
    v6 = *(v2 + 256);
    v7 = *(v2 + 64);

    v5 = sub_240831F88;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240831EC0()
{
  v1 = v0[31];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_240831FB0()
{
  v1 = v0[35];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[36] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277CEDE70] + 4);
  v5 = swift_task_alloc();
  v0[37] = v5;
  v6 = type metadata accessor for AuthenticationReport(0);
  *v5 = v0;
  v5[1] = sub_240832090;

  return MEMORY[0x2821400E8](v0 + 2, &unk_2408D8030, v3, v6);
}

uint64_t sub_240832090()
{
  v1 = *(*v0 + 296);
  v2 = *(*v0 + 288);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2408321A8, 0, 0);
}

uint64_t sub_2408321A8()
{
  v1 = *(v0 + 16);
  *(v0 + 304) = v1;
  if (*(v0 + 24))
  {
    v2 = *(v0 + 64);
    *(v0 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240832754;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 64);
    v3 = sub_240832260;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_240832260()
{
  v60 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 232);
  v4 = *(v0 + 128);
  (*(v0 + 224))(*(v0 + 200), *(v0 + 48), *(v0 + 184));
  sub_2408CBA10(v4);
  sub_240820858(v4);
  sub_2407D9440(v4, &qword_27E507F00, &qword_2408D6D50);
  v5 = sub_2408CBDF8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(v0 + 216);

    v10 = sub_2408D4B10();
    v11 = sub_2408D4F50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v59[0] = v13;
      *v12 = 136642819;
      *(v12 + 4) = sub_2408CC504(v7, v8, v59);
      _os_log_impl(&dword_2407CF000, v10, v11, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x245CC9F60](v13, -1, -1);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v14 = *(v0 + 304);
    v15 = *(v0 + 120);
    v16 = sub_2408CBE04();
    *v15 = v7;
    v15[1] = v8;
    v15[2] = v16;
    v15[3] = v17;
    v18 = MEMORY[0x277CED398];
LABEL_9:
    v30 = *(v0 + 200);
    v31 = *(v0 + 72);
    (*(*(v0 + 112) + 104))(*(v0 + 120), *v18, *(v0 + 104));
    sub_2408D3790();
    sub_2408D36D0();
    v32 = swift_task_alloc();
    *(v0 + 312) = v32;
    *v32 = v0;
    v32[1] = sub_240832924;
    v33 = *(v0 + 200);
    v34 = *(v0 + 96);
    v35 = *(v0 + 72);
    v36 = *(v0 + 56);

    return sub_2407E8264(v34, v33, v35);
  }

  v19 = *(v0 + 304);
  v20 = sub_2408CBDEC();
  v22 = *(v0 + 216);
  if (v21)
  {
    v23 = v20;
    v24 = v21;

    v25 = sub_2408D4B10();
    v26 = sub_2408D4F50();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v59[0] = v28;
      *v27 = 136642819;
      *(v27 + 4) = sub_2408CC504(v23, v24, v59);
      _os_log_impl(&dword_2407CF000, v25, v26, "Successfully obtained raw password for proxied auth: %{sensitive}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    v29 = *(v0 + 120);
    *v29 = v23;
    v29[1] = v24;
    v18 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v38 = sub_2408D4B10();
  v39 = sub_2408D4F30();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2407CF000, v38, v39, "Missing raw password from proxied auth results", v40, 2u);
    MEMORY[0x245CC9F60](v40, -1, -1);
  }

  v41 = *(v0 + 304);
  v43 = *(v0 + 192);
  v42 = *(v0 + 200);
  v44 = *(v0 + 184);
  v45 = *(v0 + 144);
  v57 = *(v0 + 240);
  v58 = *(v0 + 152);
  v46 = *(v0 + 136);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
  swift_allocError();
  *v47 = 0;
  swift_willThrow();
  sub_24080F564(v41, 0);
  v57(v42, v44);
  (*(v45 + 8))(v58, v46);
  v49 = *(v0 + 200);
  v48 = *(v0 + 208);
  v50 = *(v0 + 176);
  v51 = *(v0 + 152);
  v53 = *(v0 + 120);
  v52 = *(v0 + 128);
  v54 = *(v0 + 96);
  v55 = *(v0 + 72);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_240832754()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[38];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[22];
  v5 = v0[19];
  v7 = v0[15];
  v6 = v0[16];
  v8 = v0[12];
  v9 = v0[9];

  v10 = v0[1];

  return v10();
}

uint64_t sub_240832834()
{
  v1 = v0[32];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];

  (*(v3 + 8))(v2, v4);
  v5 = v0[34];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[22];
  v9 = v0[19];
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[12];
  v13 = v0[9];

  v14 = v0[1];

  return v14();
}

uint64_t sub_240832924()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  sub_2407D9440(v5, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v7 = sub_240832CE0;
  }

  else
  {
    v7 = sub_240832A7C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240832A7C()
{
  v1 = v0[40];
  v2 = v0[12];
  v3 = IdMSAccount.SRPResults.into()();
  v4 = v0[38];
  v5 = v0[30];
  if (v1)
  {
    v7 = v0[24];
    v6 = v0[25];
    v8 = v0[23];
    v10 = v0[18];
    v9 = v0[19];
    v11 = v0[17];
    (*(v0[11] + 8))(v0[12], v0[10]);
    sub_24080F564(v4, 0);
    v5(v6, v8);
    (*(v10 + 8))(v9, v11);
    v13 = v0[25];
    v12 = v0[26];
    v14 = v0[22];
    v15 = v0[19];
    v17 = v0[15];
    v16 = v0[16];
    v18 = v0[12];
    v19 = v0[9];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[25];
    v24 = v0[23];
    v23 = v0[24];
    v31 = v0[26];
    v32 = v0[22];
    v25 = v0[18];
    v26 = v0[19];
    v30 = v0[17];
    v33 = v0[16];
    v34 = v0[15];
    v35 = v0[9];
    v27 = v3;
    (*(v0[11] + 8))(v0[12], v0[10]);
    v28 = *(v27 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
    *(v27 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v4;

    v5(v22, v24);
    (*(v25 + 8))(v26, v30);

    v29 = v0[1];

    return v29(v27);
  }
}

uint64_t sub_240832CE0()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 184);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v7 = *(v0 + 136);
  sub_24080F564(*(v0 + 304), 0);
  v1(v2, v4);
  (*(v6 + 8))(v5, v7);
  v8 = *(v0 + 320);
  v10 = *(v0 + 200);
  v9 = *(v0 + 208);
  v11 = *(v0 + 176);
  v12 = *(v0 + 152);
  v14 = *(v0 + 120);
  v13 = *(v0 + 128);
  v15 = *(v0 + 96);
  v16 = *(v0 + 72);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_240832DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506D00, &unk_2408D7FE0) - 8) + 64) + 15;
  v5[14] = swift_task_alloc();
  v7 = sub_2408D3770();
  v5[15] = v7;
  v8 = *(v7 - 8);
  v5[16] = v8;
  v9 = *(v8 + 64) + 15;
  v5[17] = swift_task_alloc();
  v10 = sub_2408D36A0();
  v5[18] = v10;
  v11 = *(v10 - 8);
  v5[19] = v11;
  v12 = *(v11 + 64) + 15;
  v5[20] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v14 = sub_2408D36F0();
  v5[22] = v14;
  v15 = *(v14 - 8);
  v5[23] = v15;
  v16 = *(v15 + 64) + 15;
  v5[24] = swift_task_alloc();
  v17 = sub_2408D3970();
  v5[25] = v17;
  v18 = *(v17 - 8);
  v5[26] = v18;
  v19 = *(v18 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v20 = sub_2408D38D0();
  v5[31] = v20;
  v21 = *(v20 - 8);
  v5[32] = v21;
  v22 = *(v21 + 64) + 15;
  v5[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408330C4, v4, 0);
}

uint64_t sub_2408330C4()
{
  v63 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = v0[11];
  sub_2408D38F0();
  LOBYTE(v4) = sub_2408D3870();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v5 = v0[30];
    v6 = v0[25];
    v7 = v0[26];
    v8 = v0[11];
    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E506C48);
    (*(v7 + 16))(v5, v8, v6);
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F10();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[30];
    v14 = v0[25];
    v15 = v0[26];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v62 = v17;
      *v16 = 136315138;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v18 = sub_2408D5220();
      v20 = v19;
      (*(v15 + 8))(v13, v14);
      v21 = sub_2408CC504(v18, v20, &v62);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2407CF000, v10, v11, "Target account %s represents an unknown teen account not in a family yet. Performing challenged independent auth", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    else
    {

      (*(v15 + 8))(v13, v14);
    }

    v47 = swift_task_alloc();
    v0[37] = v47;
    *v47 = v0;
    v47[1] = sub_2408336B8;
    v48 = v0[12];
    v49 = v0[13];
    v50 = v0[11];
    v51 = v0[9];

    return sub_2408353FC(v51, v50, v48);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v22 = v0[28];
    v23 = v0[29];
    v24 = v0[25];
    v25 = v0[26];
    v27 = v0[10];
    v26 = v0[11];
    v28 = sub_2408D4B20();
    v0[34] = __swift_project_value_buffer(v28, qword_27E506C48);
    v29 = *(v25 + 16);
    v0[35] = v29;
    v0[36] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29(v23, v27, v24);
    v29(v22, v26, v24);
    v30 = sub_2408D4B10();
    v31 = sub_2408D4F50();
    v32 = os_log_type_enabled(v30, v31);
    v34 = v0[28];
    v33 = v0[29];
    v36 = v0[25];
    v35 = v0[26];
    if (v32)
    {
      v59 = v31;
      v37 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v62 = v60;
      *v37 = 136315394;
      sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v38 = sub_2408D5220();
      v40 = v39;
      log = v30;
      v41 = *(v35 + 8);
      v41(v33, v36);
      v42 = sub_2408CC504(v38, v40, &v62);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2080;
      v43 = sub_2408D5220();
      v45 = v44;
      v41(v34, v36);
      v46 = sub_2408CC504(v43, v45, &v62);

      *(v37 + 14) = v46;
      _os_log_impl(&dword_2407CF000, log, v59, "Performing challenged dependent proxied auth with source: %s and target: %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v60, -1, -1);
      MEMORY[0x245CC9F60](v37, -1, -1);
    }

    else
    {

      v41 = *(v35 + 8);
      v41(v34, v36);
      v41(v33, v36);
    }

    v0[38] = v41;
    v53 = v0[10];
    v54 = swift_task_alloc();
    v0[39] = v54;
    *(v54 + 16) = v53;
    v55 = *(MEMORY[0x277CED870] + 4);
    v61 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v56 = swift_task_alloc();
    v0[40] = v56;
    *v56 = v0;
    v56[1] = sub_240833904;
    v57 = v0[9];

    return v61(sub_2407EECC0, v54);
  }
}

uint64_t sub_2408336B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;

  v5 = v2[33];
  v6 = v2[30];
  v7 = v2[29];
  v8 = v2[28];
  v9 = v2[27];
  v10 = v2[24];
  v11 = v2[21];
  v12 = v2[20];
  v18 = v2[17];
  v13 = v2[14];

  v15 = *(v4 + 8);
  if (!v19)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_240833904()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_2408340C8;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 104);

    v5 = sub_240833A2C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240833A54()
{
  v1 = v0[42];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[43] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277CEDE70] + 4);
  v5 = swift_task_alloc();
  v0[44] = v5;
  v6 = type metadata accessor for AuthenticationReport(0);
  v0[45] = v6;
  *v5 = v0;
  v5[1] = sub_240833B38;

  return MEMORY[0x2821400E8](v0 + 2, &unk_2408D7500, v3, v6);
}

uint64_t sub_240833B38()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240833C50, 0, 0);
}

uint64_t sub_240833C50()
{
  v1 = *(v0 + 16);
  *(v0 + 368) = v1;
  if (*(v0 + 24))
  {
    v2 = *(v0 + 104);
    *(v0 + 48) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240833EF8;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = sub_240833D08;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_240833D08()
{
  v18 = v0;
  v1 = v0[46];
  v2 = v0[34];

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  sub_24080F564(v1, 0);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[45];
    v5 = v0[46];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v0[8] = v5;

    v9 = sub_2408D4D40();
    v11 = sub_2408CC504(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished authenticating parent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
    sub_24080F564(v5, 0);
  }

  else
  {
    v12 = v0[46];

    sub_24080F564(v12, 0);
  }

  v13 = v0[12];
  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);
  v15 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2408341BC, v15, v14);
}

uint64_t sub_240833EF8()
{
  v1 = v0[46];
  v2 = v0[34];
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();
  sub_24080F564(v1, 1);
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[46];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to authenticate parent, things are about to go very badly: %@", v8, 0xCu);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
    sub_24080F564(v7, 1);
  }

  else
  {

    sub_24080F564(v7, 1);
  }

  v12 = v0[12];
  sub_2408D3D80();
  sub_2408763D8(&qword_27E506D08, 255, MEMORY[0x277CED5B0]);
  v14 = sub_2408D4E00();

  return MEMORY[0x2822009F8](sub_2408341BC, v14, v13);
}

uint64_t sub_2408340C8()
{
  v1 = v0[39];

  v14 = v0[41];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[17];
  v11 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2408341BC()
{
  v1 = v0[41];
  v2 = v0[24];
  v3 = v0[12];
  sub_2408D3D30();
  v0[47] = v1;
  v4 = v0[13];
  if (v1)
  {
    v5 = sub_240834458;
  }

  else
  {
    v5 = sub_24083424C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_24083424C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 384) = v3;
  *(v3 + 16) = *(v0 + 88);
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = *(MEMORY[0x277CED870] + 4);
  v8 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v5 = swift_task_alloc();
  *(v0 + 392) = v5;
  *v5 = v0;
  v5[1] = sub_240834334;
  v6 = *(v0 + 72);

  return v8(sub_2407EECC8, v3);
}

uint64_t sub_240834334()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v8 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = sub_240834DF8;
  }

  else
  {
    v6 = *(v2 + 384);

    v5 = sub_240834544;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_240834458()
{
  v13 = v0[47];
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_240834544()
{
  v1 = v0[42];
  v2 = v0[9];
  v3 = swift_task_alloc();
  v0[51] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277CEDE70] + 4);
  v5 = swift_task_alloc();
  v0[52] = v5;
  *v5 = v0;
  v5[1] = sub_24083461C;
  v6 = v0[45];

  return MEMORY[0x2821400E8](v0 + 4, &unk_2408D8020, v3, v6);
}

uint64_t sub_24083461C()
{
  v1 = *(*v0 + 416);
  v2 = *(*v0 + 408);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240834734, 0, 0);
}

uint64_t sub_240834734()
{
  v1 = *(v0 + 32);
  *(v0 + 424) = v1;
  if (*(v0 + 40))
  {
    v2 = *(v0 + 104);
    *(v0 + 56) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240834CF4;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = sub_2408347EC;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2408347EC()
{
  v62 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = *(v0 + 288);
  v4 = *(v0 + 168);
  (*(v0 + 280))(*(v0 + 216), *(v0 + 88), *(v0 + 200));
  sub_2408CBA10(v4);
  sub_240820858(v4);
  sub_2407D9440(v4, &qword_27E507F00, &qword_2408D6D50);
  v5 = sub_2408CBDF8();
  if (v6)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(v0 + 272);

    v10 = sub_2408D4B10();
    v11 = sub_2408D4F50();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61[0] = v13;
      *v12 = 136642819;
      *(v12 + 4) = sub_2408CC504(v7, v8, v61);
      _os_log_impl(&dword_2407CF000, v10, v11, "Successfully obtained passwordless token for proxied auth: %{sensitive}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x245CC9F60](v13, -1, -1);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    v14 = *(v0 + 424);
    v15 = *(v0 + 160);
    v16 = sub_2408CBE04();
    *v15 = v7;
    v15[1] = v8;
    v15[2] = v16;
    v15[3] = v17;
    v18 = MEMORY[0x277CED398];
LABEL_9:
    v30 = *(v0 + 216);
    v31 = *(v0 + 112);
    (*(*(v0 + 152) + 104))(*(v0 + 160), *v18, *(v0 + 144));
    sub_2408D3790();
    sub_2408D36D0();
    v32 = swift_task_alloc();
    *(v0 + 432) = v32;
    *v32 = v0;
    v32[1] = sub_240834F0C;
    v33 = *(v0 + 216);
    v34 = *(v0 + 136);
    v35 = *(v0 + 112);
    v36 = *(v0 + 96);

    return sub_2407E8264(v34, v33, v35);
  }

  v19 = *(v0 + 424);
  v20 = sub_2408CBDEC();
  v22 = *(v0 + 272);
  if (v21)
  {
    v23 = v20;
    v24 = v21;

    v25 = sub_2408D4B10();
    v26 = sub_2408D4F50();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v61[0] = v28;
      *v27 = 136642819;
      *(v27 + 4) = sub_2408CC504(v23, v24, v61);
      _os_log_impl(&dword_2407CF000, v25, v26, "Successfully obtained raw password for proxied auth: %{sensitive}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    v29 = *(v0 + 160);
    *v29 = v23;
    v29[1] = v24;
    v18 = MEMORY[0x277CED380];
    goto LABEL_9;
  }

  v38 = sub_2408D4B10();
  v39 = sub_2408D4F30();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2407CF000, v38, v39, "Missing raw password from proxied auth results", v40, 2u);
    MEMORY[0x245CC9F60](v40, -1, -1);
  }

  v41 = *(v0 + 424);
  v43 = *(v0 + 208);
  v42 = *(v0 + 216);
  v44 = *(v0 + 200);
  v59 = *(v0 + 304);
  v60 = *(v0 + 192);
  v45 = *(v0 + 176);
  v46 = *(v0 + 184);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
  swift_allocError();
  *v47 = 0;
  swift_willThrow();
  sub_24080F564(v41, 0);
  v59(v42, v44);
  (*(v46 + 8))(v60, v45);
  v48 = *(v0 + 264);
  v50 = *(v0 + 232);
  v49 = *(v0 + 240);
  v52 = *(v0 + 216);
  v51 = *(v0 + 224);
  v53 = *(v0 + 192);
  v55 = *(v0 + 160);
  v54 = *(v0 + 168);
  v56 = *(v0 + 136);
  v57 = *(v0 + 112);

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_240834CF4()
{
  (*(v0[23] + 8))(v0[24], v0[22]);
  v13 = v0[53];
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[24];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[17];
  v10 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_240834DF8()
{
  v1 = v0[48];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];

  (*(v3 + 8))(v2, v4);
  v17 = v0[50];
  v5 = v0[33];
  v7 = v0[29];
  v6 = v0[30];
  v9 = v0[27];
  v8 = v0[28];
  v10 = v0[24];
  v12 = v0[20];
  v11 = v0[21];
  v13 = v0[17];
  v14 = v0[14];

  v15 = v0[1];

  return v15();
}

uint64_t sub_240834F0C()
{
  v2 = *v1;
  v3 = *(*v1 + 432);
  v4 = *v1;
  *(*v1 + 440) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  sub_2407D9440(v5, &qword_27E506D00, &unk_2408D7FE0);
  if (v0)
  {
    v7 = sub_2408352C4;
  }

  else
  {
    v7 = sub_240835064;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240835064()
{
  v1 = v0[55];
  v2 = v0[17];
  v34 = IdMSAccount.SRPResults.into()();
  v3 = v0[53];
  v4 = v0[38];
  v5 = v0[26];
  v6 = v0[27];
  v7 = v0[24];
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v1)
  {
    sub_24080F564(v3, 0);
    v4(v6, v8);
    (*(v10 + 8))(v7, v9);
    v11 = v0[33];
    v12 = v0[29];
    v13 = v0[30];
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[24];
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[17];
    v35 = v0[14];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = *(v34 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport);
    *(v34 + OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport) = v3;

    v4(v6, v8);
    (*(v10 + 8))(v7, v9);
    v23 = v0[33];
    v25 = v0[29];
    v24 = v0[30];
    v27 = v0[27];
    v26 = v0[28];
    v28 = v0[24];
    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[17];
    v32 = v0[14];

    v33 = v0[1];

    return v33(v34);
  }
}

uint64_t sub_2408352C4()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 176);
  v7 = *(v0 + 184);
  sub_24080F564(*(v0 + 424), 0);
  v1(v2, v4);
  (*(v7 + 8))(v5, v6);
  v20 = *(v0 + 440);
  v8 = *(v0 + 264);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 192);
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2408353FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D3970();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083551C, v3, 0);
}

uint64_t sub_24083551C()
{
  v29 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  sub_2408D38F0();
  LOBYTE(v4) = sub_2408D3870();
  (*(v2 + 8))(v1, v3);
  if ((v4 & 1) == 0)
  {
    return sub_2408D5190();
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  v8 = v0[3];
  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E506C48);
  (*(v6 + 16))(v5, v8, v7);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F10();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[6];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
    v18 = sub_2408D5220();
    v20 = v19;
    (*(v14 + 8))(v13, v15);
    v21 = sub_2408CC504(v18, v20, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_2407CF000, v10, v11, "Performing proxied auth to challenge the independent: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_2407EC61C;
  v24 = v0[4];
  v25 = v0[5];
  v27 = v0[2];
  v26 = v0[3];

  return sub_24083168C(v27, v26, v24);
}

uint64_t sub_24083584C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2408D4500();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083591C, v3, 0);
}

uint64_t sub_24083591C()
{
  v33 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E506C48);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[9];
  if (v9)
  {
    v11 = v0[7];
    v12 = v0[8];
    v13 = v0[6];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_2408D4D40();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_2408CC504(v15, v17, &v32);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v7, v8, "Received authentication command: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);
    MEMORY[0x245CC9F60](v31, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  else
  {
    v19 = v0[6];
    v20 = v0[7];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[4];
  v21 = v0[5];
  v23 = v0[3];
  v24 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00);
  v25 = swift_task_alloc();
  v0[10] = v25;
  v25[2] = v23;
  v25[3] = v21;
  v25[4] = v22;
  v26 = *(MEMORY[0x277D85A40] + 4);
  v27 = swift_task_alloc();
  v0[11] = v27;
  v28 = sub_2408D4530();
  *v27 = v0;
  v27[1] = sub_240835C14;
  v29 = v0[2];

  return MEMORY[0x2822008A0](v29, v21, v24, 0xD000000000000010, 0x80000002408DADF0, sub_240875398, v25, v28);
}

uint64_t sub_240835C14()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_240876440, v4, 0);
  }

  else
  {
    v6 = v3[9];
    v5 = v3[10];
    v7 = v3[8];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_240835D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v30 = a2;
  v5 = sub_2408D4500();
  v27 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0);
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v29 = &v25 - v15;
  v17 = sub_2408D4E60();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v5);
  v18 = sub_2407D917C(&qword_27E507500, &qword_27E507460, &unk_2408D7F00);
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v31;
  *(v22 + 24) = v18;
  (*(v9 + 32))(v22 + v19, v12, v26);
  (*(v6 + 32))(v22 + v20, v28, v27);
  *(v22 + v21) = v23;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  swift_retain_n();

  sub_24083AB60(0, 0, v29, &unk_2408D80F0, v22);
}

uint64_t sub_240836098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a6;
  v7[31] = a7;
  v7[28] = a4;
  v7[29] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF0, &qword_2408D6C68);
  v7[32] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v7[33] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CF8, &unk_2408D6C70) - 8) + 64) + 15;
  v7[34] = swift_task_alloc();
  v12 = *(*(sub_2408D4530() - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70) - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v14 = sub_2408D3770();
  v7[37] = v14;
  v15 = *(v14 - 8);
  v7[38] = v15;
  v16 = *(v15 + 64) + 15;
  v7[39] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680) - 8) + 64) + 15;
  v7[40] = swift_task_alloc();
  v18 = sub_2408D4570();
  v7[41] = v18;
  v19 = *(v18 - 8);
  v7[42] = v19;
  v20 = *(v19 + 64) + 15;
  v7[43] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A18, &qword_2408D67E8) - 8) + 64) + 15;
  v7[44] = swift_task_alloc();
  v22 = sub_2408D3490();
  v7[45] = v22;
  v23 = *(v22 - 8);
  v7[46] = v23;
  v24 = *(v23 + 64) + 15;
  v7[47] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v7[48] = swift_task_alloc();
  v26 = sub_2408D4500();
  v7[49] = v26;
  v27 = *(v26 - 8);
  v7[50] = v27;
  v7[51] = *(v27 + 64);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v7[54] = swift_task_alloc();
  v29 = sub_2408D3630();
  v7[55] = v29;
  v30 = *(v29 - 8);
  v7[56] = v30;
  v31 = *(v30 + 64) + 15;
  v7[57] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100) - 8) + 64) + 15;
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v33 = sub_2408D4660();
  v7[61] = v33;
  v34 = *(v33 - 8);
  v7[62] = v34;
  v35 = *(v34 + 64) + 15;
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v36 = sub_2408D38D0();
  v7[65] = v36;
  v37 = *(v36 - 8);
  v7[66] = v37;
  v38 = *(v37 + 64) + 15;
  v7[67] = swift_task_alloc();
  v7[68] = swift_task_alloc();
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v7[71] = swift_task_alloc();
  v39 = sub_2408D3970();
  v7[72] = v39;
  v40 = *(v39 - 8);
  v7[73] = v40;
  v41 = *(v40 + 64) + 15;
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v7[76] = swift_task_alloc();
  v7[77] = swift_task_alloc();
  v42 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507510, &qword_2408D8108) - 8) + 64) + 15;
  v7[78] = swift_task_alloc();
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408366BC, a6, 0);
}

uint64_t sub_2408366BC()
{
  v1 = v0[81];
  v2 = v0[77];
  v3 = v0[73];
  v108 = v0[71];
  v110 = v0[72];
  v4 = v0[66];
  v112 = v0[65];
  v6 = v0[28];
  v5 = v0[29];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0);
  v0[82] = v7;
  v8 = *(v7 - 8);
  v0[83] = v8;
  (*(v8 + 16))(v1, v6, v7);
  v104 = v8;
  v9 = *(v8 + 56);
  v0[84] = v9;
  v0[85] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v106 = v7;
  v101 = v9;
  v9(v1, 0, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507518, &qword_2408D8110);
  v10 = swift_allocObject();
  v0[86] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507520, &qword_2408D8118);
  v12 = *(v11 + 52);
  v13 = (*(v11 + 48) + 3) & 0x1FFFFFFFCLL;
  v14 = swift_allocObject();
  *(v14 + ((*(*v14 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2407EEE04(v1, v14 + *(*v14 + *MEMORY[0x277D841D0] + 16), &qword_27E507510, &qword_2408D8108);
  sub_2407D9440(v1, &qword_27E507510, &qword_2408D8108);
  v115 = v10;
  *(v10 + 16) = v14;
  sub_2408D44F0();
  sub_2408D38F0();
  v15 = *(v3 + 8);
  v0[87] = v15;
  v0[88] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v2, v110);
  v16 = sub_2408D38B0();
  v18 = v17;
  v19 = *(v4 + 8);
  v0[89] = v19;
  v0[90] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v108, v112);
  if (!v16 && v18 == 0xE000000000000000)
  {

LABEL_5:
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v21 = sub_2408D4B20();
    __swift_project_value_buffer(v21, qword_27E506C48);
    v22 = sub_2408D4B10();
    v23 = sub_2408D4F10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2407CF000, v22, v23, "Marked as terminal auth, finishing auth stream continuation early", v24, 2u);
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    v26 = v0[59];
    v25 = v0[60];
    v27 = v0[58];
    v28 = v0[30];

    v29 = *(*v28 + 208);
    swift_beginAccess();
    sub_2407EEE04(v28 + v29, v25, &qword_27E506DA8, &qword_2408D8100);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
    v31 = *(v30 - 8);
    (*(v31 + 56))(v26, 1, 1, v30);
    swift_beginAccess();
    sub_2407EEE6C(v26, v28 + v29);
    swift_endAccess();
    sub_2407EEE04(v25, v27, &qword_27E506DA8, &qword_2408D8100);
    v32 = (*(v31 + 48))(v27, 1, v30);
    v33 = v0[60];
    v34 = v0[58];
    if (v32 == 1)
    {
      sub_2407D9440(v0[60], &qword_27E506DA8, &qword_2408D8100);
      sub_2407D9440(v34, &qword_27E506DA8, &qword_2408D8100);
    }

    else
    {
      v0[27] = 0;
      sub_2408D4E90();
      sub_2407D9440(v33, &qword_27E506DA8, &qword_2408D8100);
      (*(v31 + 8))(v34, v30);
    }

    v35 = v0[80];
    v36 = *(v115 + 16);
    v37 = *(*v36 + *MEMORY[0x277D841D0] + 16);
    v38 = (*(*v36 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v36 + v38));
    sub_24080F060(v36 + v37, v35, &qword_27E507510, &qword_2408D8108);
    v101(v36 + v37, 1, 1, v106);
    os_unfair_lock_unlock((v36 + v38));

    v39 = (*(v104 + 48))(v35, 1, v106);
    v40 = v0[80];
    if (v39 != 1)
    {
      v41 = sub_2408D3500();
      sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277CED270], v41);
      v0[26] = v42;
      sub_2408D4E10();

      (*(v104 + 8))(v40, v106);
      goto LABEL_16;
    }

LABEL_14:
    sub_2407D9440(v40, &qword_27E507510, &qword_2408D8108);
LABEL_16:
    v44 = v0[81];
    v45 = v0[80];
    v46 = v0[79];
    v47 = v0[78];
    v48 = v0[77];
    v49 = v0[76];
    v50 = v0[75];
    v51 = v0[74];
    v52 = v0[71];
    v53 = v0[70];
    v87 = v0[69];
    v88 = v0[68];
    v89 = v0[67];
    v90 = v0[64];
    v91 = v0[63];
    v92 = v0[60];
    v93 = v0[59];
    v94 = v0[58];
    v95 = v0[57];
    v96 = v0[54];
    v97 = v0[53];
    v98 = v0[52];
    v99 = v0[48];
    v100 = v0[47];
    v102 = v0[44];
    v103 = v0[43];
    v105 = v0[40];
    v107 = v0[39];
    v109 = v0[36];
    v111 = v0[35];
    v113 = v0[34];
    v116 = v0[33];

    v54 = v0[1];

    return v54();
  }

  v20 = sub_2408D5240();

  if (v20)
  {
    goto LABEL_5;
  }

  v56 = v0[30];
  v57 = *(v56 + 248);
  v0[91] = v57;
  if (!v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v61 = swift_allocError();
    *v62 = 2;
    swift_willThrow();
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v63 = sub_2408D4B20();
    __swift_project_value_buffer(v63, qword_27E506C48);
    v64 = v61;
    v65 = sub_2408D4B10();
    v66 = sub_2408D4F20();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v69 = v61;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *v68 = v70;
      _os_log_impl(&dword_2407CF000, v65, v66, "Caught Auth error: %@", v67, 0xCu);
      sub_2407D9440(v68, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v68, -1, -1);
      MEMORY[0x245CC9F60](v67, -1, -1);
    }

    v71 = v0[86];
    v72 = v0[85];
    v73 = v0[84];
    v74 = v0[83];
    v75 = v0[82];
    v76 = v0[78];

    v77 = *(v71 + 16);
    v78 = *(*v77 + *MEMORY[0x277D841D0] + 16);
    v79 = (*(*v77 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v77 + v79));
    sub_24080F060(v77 + v78, v76, &qword_27E507510, &qword_2408D8108);
    v73(v77 + v78, 1, 1, v75);
    os_unfair_lock_unlock((v77 + v79));

    v80 = (*(v74 + 48))(v76, 1, v75);
    v81 = v0[86];
    if (v80 != 1)
    {
      v83 = v0[83];
      v84 = v0[82];
      v85 = v0[78];
      v0[24] = v61;
      v86 = v61;
      sub_2408D4E10();

      (*(v83 + 8))(v85, v84);
      goto LABEL_16;
    }

    v40 = v0[78];
    v82 = v0[86];

    goto LABEL_14;
  }

  v58 = swift_allocObject();
  v0[92] = v58;
  *(v58 + 16) = v56;
  *(v58 + 24) = v10;
  v59 = *(MEMORY[0x277CED880] + 4);
  v114 = (*MEMORY[0x277CED880] + MEMORY[0x277CED880]);

  v60 = swift_task_alloc();
  v0[93] = v60;
  *v60 = v0;
  v60[1] = sub_240837318;

  return v114(v0 + 2, sub_240875548, v58);
}

uint64_t sub_240837318()
{
  v1 = *(*v0 + 744);
  v2 = *(*v0 + 736);
  v3 = *(*v0 + 728);
  v4 = *(*v0 + 240);
  v6 = *v0;

  return MEMORY[0x2822009F8](sub_240837468, v4, 0);
}

uint64_t sub_240837468()
{
  v1 = *(v0[30] + 248);
  v0[94] = v1;
  if (v1)
  {
    v2 = *(MEMORY[0x277CED858] + 4);
    v70 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);

    v3 = swift_task_alloc();
    v0[95] = v3;
    *v3 = v0;
    v3[1] = sub_240837A94;
    v4 = v0[57];

    return v70(v4);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v6 = swift_allocError();
    *v7 = 2;
    swift_willThrow();
    v8 = v0[5];
    v9 = __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64) + 15;
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, v8);
    sub_2408D4670();

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v13 = sub_2408D4B20();
    __swift_project_value_buffer(v13, qword_27E506C48);
    v14 = v6;
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v6;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_2407CF000, v15, v16, "Caught Auth error: %@", v17, 0xCu);
      sub_2407D9440(v18, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);
    }

    v21 = v0[86];
    v22 = v0[85];
    v23 = v0[84];
    v24 = v0[83];
    v25 = v0[82];
    v26 = v0[78];

    v27 = *(v21 + 16);
    v28 = *(*v27 + *MEMORY[0x277D841D0] + 16);
    v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v27 + v29));
    sub_24080F060(v27 + v28, v26, &qword_27E507510, &qword_2408D8108);
    v23(v27 + v28, 1, 1, v25);
    os_unfair_lock_unlock((v27 + v29));

    v30 = (*(v24 + 48))(v26, 1, v25);
    v31 = v0[86];
    if (v30 == 1)
    {
      v32 = v0[78];
      v33 = v0[86];

      sub_2407D9440(v32, &qword_27E507510, &qword_2408D8108);
    }

    else
    {
      v34 = v0[83];
      v35 = v0[82];
      v36 = v0[78];
      v0[24] = v6;
      v37 = v6;
      sub_2408D4E10();

      (*(v34 + 8))(v36, v35);
    }

    v38 = v0[81];
    v39 = v0[80];
    v40 = v0[79];
    v41 = v0[78];
    v42 = v0[77];
    v43 = v0[76];
    v44 = v0[75];
    v45 = v0[74];
    v46 = v0[71];
    v47 = v0[70];
    v49 = v0[69];
    v50 = v0[68];
    v51 = v0[67];
    v52 = v0[64];
    v53 = v0[63];
    v54 = v0[60];
    v55 = v0[59];
    v56 = v0[58];
    v57 = v0[57];
    v58 = v0[54];
    v59 = v0[53];
    v60 = v0[52];
    v61 = v0[48];
    v62 = v0[47];
    v63 = v0[44];
    v64 = v0[43];
    v65 = v0[40];
    v66 = v0[39];
    v67 = v0[36];
    v68 = v0[35];
    v69 = v0[34];
    v71 = v0[33];

    v48 = v0[1];

    return v48();
  }
}

uint64_t sub_240837A94()
{
  v1 = *(*v0 + 760);
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 240);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_240837BC0, v3, 0);
}

uint64_t sub_240837BC0()
{
  v191 = v0;
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[56];
  v4 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  sub_2408D3520();
  (*(v5 + 8))(v4, v6);
  sub_2408D45D0();
  if ((*(v1 + 48))(v7, 1, v2) == 1)
  {
    sub_2407D9440(v0[54], &qword_27E507F00, &qword_2408D6D50);
    goto LABEL_10;
  }

  v8 = v0[88];
  v9 = v0[87];
  v10 = v0[76];
  v11 = v0[72];
  v12 = v0[29];
  (*(v0[66] + 32))(v0[70], v0[54], v0[65]);
  sub_2408D44F0();
  v13 = sub_2408D3960();
  v9(v10, v11);
  LOBYTE(v10) = sub_2408764B4(*MEMORY[0x277CED1A0], v13);

  v14 = v0[90];
  v15 = v0[89];
  if ((v10 & 1) == 0)
  {
    v15(v0[70], v0[65]);
    goto LABEL_10;
  }

  v16 = v0[88];
  v17 = v0[87];
  v18 = v0[75];
  v19 = v0[72];
  v187 = v0[70];
  v20 = v0[69];
  v21 = v0[65];
  v22 = v0[29];
  sub_2408D44F0();
  sub_2408D38F0();
  v17(v18, v19);
  v23 = sub_2408D38B0();
  v25 = v24;
  v15(v20, v21);
  if (v23 == sub_2408D38B0() && v25 == v26)
  {

LABEL_9:
    v28 = v0[90];
    (v0[89])(v0[70], v0[65]);
    goto LABEL_10;
  }

  v27 = sub_2408D5240();

  if (v27)
  {
    goto LABEL_9;
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v118 = v0[70];
  v119 = v0[68];
  v120 = v0[66];
  v121 = v0[65];
  v122 = v0[53];
  v123 = v0[49];
  v124 = v0[50];
  v125 = v0[29];
  v126 = sub_2408D4B20();
  __swift_project_value_buffer(v126, qword_27E506C48);
  (*(v120 + 16))(v119, v118, v121);
  (*(v124 + 16))(v122, v125, v123);
  v127 = sub_2408D4B10();
  v128 = sub_2408D4F30();
  v129 = os_log_type_enabled(v127, v128);
  v130 = v0[90];
  v131 = v0[89];
  if (v129)
  {
    v169 = v0[87];
    v172 = v0[88];
    v180 = v127;
    v132 = v0[76];
    v167 = v0[72];
    v189 = v0[70];
    v186 = v128;
    v133 = v0[68];
    v134 = v0[67];
    v135 = v0[65];
    v165 = v0[53];
    v175 = v0[50];
    v178 = v0[49];
    v136 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v190[0] = v183;
    *v136 = 136315394;
    v137 = sub_2408D38B0();
    v139 = v138;
    v131(v133, v135);
    v140 = sub_2408CC504(v137, v139, v190);

    *(v136 + 4) = v140;
    *(v136 + 12) = 2080;
    sub_2408D44F0();
    sub_2408D38F0();
    v169(v132, v167);
    v141 = sub_2408D38B0();
    v143 = v142;
    v131(v134, v135);
    (*(v175 + 8))(v165, v178);
    v144 = sub_2408CC504(v141, v143, v190);

    *(v136 + 14) = v144;
    _os_log_impl(&dword_2407CF000, v180, v186, "CandidateAccountID mismatch, expected: %s, actual: %s", v136, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v183, -1, -1);
    MEMORY[0x245CC9F60](v136, -1, -1);

    v131(v189, v135);
  }

  else
  {
    v145 = v0[70];
    v146 = v0[68];
    v147 = v0[65];
    v148 = v0[53];
    v149 = v0[49];
    v150 = v0[50];

    (*(v150 + 8))(v148, v149);
    v131(v146, v147);
    v131(v145, v147);
  }

LABEL_10:
  v29 = v0[73];
  v30 = v0[72];
  v31 = v0[64];
  v32 = v0[47];
  v33 = v0[48];
  v34 = v0[45];
  v35 = v0[46];
  v36 = v0[29];
  v37 = v0[30];
  sub_2408D44F0();
  (*(v29 + 56))(v33, 0, 1, v30);
  sub_2408D4640();
  v38 = v37[22];
  v184 = v37;
  __swift_project_boxed_opaque_existential_1(v37 + 18, v37[21]);
  v181 = *MEMORY[0x277CED208];
  v176 = *(v35 + 104);
  v176(v32);
  LOBYTE(v36) = sub_2408D4770();
  v173 = *(v35 + 8);
  v173(v32, v34);
  v39 = MEMORY[0x277CEDC38];
  if (v36)
  {
    v40 = v0[88];
    v41 = v0[87];
    v42 = v0[74];
    v43 = v0[72];
    v44 = v0[44];
    v45 = v0[29];
    v46 = MEMORY[0x277CEDC38];
    sub_2408D44F0();
    sub_2408D37A0();
    v41(v42, v43);
    v47 = sub_2408D3720();
    LODWORD(v45) = (*(*(v47 - 8) + 48))(v44, 1, v47);
    sub_2407D9440(v44, &qword_27E506A18, &qword_2408D67E8);
    if (v45 == 1)
    {
      v39 = v46;
    }

    else
    {
      v39 = MEMORY[0x277CEDC40];
    }
  }

  v48 = v0[64];
  v49 = v0[51];
  v50 = v0[52];
  v52 = v0[49];
  v51 = v0[50];
  v53 = v0[47];
  v170 = v0[45];
  v54 = v0[31];
  v55 = v0[29];
  (*(v0[42] + 104))(v0[43], *v39, v0[41]);
  sub_2408D45C0();
  (*(v51 + 16))(v50, v55, v52);
  v56 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v57 = swift_allocObject();
  (*(v51 + 32))(v57 + v56, v50, v52);
  *(v57 + ((v49 + v56 + 7) & 0xFFFFFFFFFFFFFFF8)) = v54;

  sub_2408D4590();
  v58 = v184[22];
  __swift_project_boxed_opaque_existential_1(v184 + 18, v184[21]);
  (v176)(v53, v181, v170);
  LOBYTE(v48) = sub_2408D4770();
  v173(v53, v170);
  if (v48)
  {
    v59 = *(v0[30] + 248);
    v0[96] = v59;
    v60 = v0[64];
    v61 = v0[61];
    v62 = v0[62];
    if (v59)
    {
      v63 = v0[40];
      (*(v62 + 16))(v63, v0[64], v0[61]);
      (*(v62 + 56))(v63, 0, 1, v61);
      v64 = *(MEMORY[0x277CEDCB8] + 4);

      v65 = swift_task_alloc();
      v0[97] = v65;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
      v0[98] = v66;
      v67 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0);
      *v65 = v0;
      v65[1] = sub_240838B48;
      v68 = v0[61];
      v69 = v0[40];

      return MEMORY[0x28213FC20](v69, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v66, v68, v67);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
      v75 = swift_allocError();
      *v76 = 2;
      swift_willThrow();
      (*(v62 + 8))(v60, v61);
      v77 = v0[5];
      v78 = __swift_project_boxed_opaque_existential_1(v0 + 2, v77);
      v79 = *(v77 - 8);
      v80 = *(v79 + 64) + 15;
      v81 = swift_task_alloc();
      (*(v79 + 16))(v81, v78, v77);
      sub_2408D4670();

      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      if (qword_27E506918 != -1)
      {
        swift_once();
      }

      v82 = sub_2408D4B20();
      __swift_project_value_buffer(v82, qword_27E506C48);
      v83 = v75;
      v84 = sub_2408D4B10();
      v85 = sub_2408D4F20();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = 138412290;
        v88 = v75;
        v89 = _swift_stdlib_bridgeErrorToNSError();
        *(v86 + 4) = v89;
        *v87 = v89;
        _os_log_impl(&dword_2407CF000, v84, v85, "Caught Auth error: %@", v86, 0xCu);
        sub_2407D9440(v87, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v87, -1, -1);
        MEMORY[0x245CC9F60](v86, -1, -1);
      }

      v90 = v0[86];
      v91 = v0[85];
      v92 = v0[84];
      v93 = v0[83];
      v94 = v0[82];
      v95 = v0[78];

      v96 = *(v90 + 16);
      v97 = *(*v96 + *MEMORY[0x277D841D0] + 16);
      v98 = (*(*v96 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v96 + v98));
      sub_24080F060(v96 + v97, v95, &qword_27E507510, &qword_2408D8108);
      v92(v96 + v97, 1, 1, v94);
      os_unfair_lock_unlock((v96 + v98));

      v99 = (*(v93 + 48))(v95, 1, v94);
      v100 = v0[86];
      if (v99 == 1)
      {
        v101 = v0[78];
        v102 = v0[86];

        sub_2407D9440(v101, &qword_27E507510, &qword_2408D8108);
      }

      else
      {
        v103 = v0[83];
        v104 = v0[82];
        v105 = v0[78];
        v0[24] = v75;
        v106 = v75;
        sub_2408D4E10();

        (*(v103 + 8))(v105, v104);
      }

      v107 = v0[81];
      v108 = v0[80];
      v109 = v0[79];
      v110 = v0[78];
      v111 = v0[77];
      v112 = v0[76];
      v113 = v0[75];
      v114 = v0[74];
      v115 = v0[71];
      v116 = v0[70];
      v152 = v0[69];
      v153 = v0[68];
      v154 = v0[67];
      v155 = v0[64];
      v156 = v0[63];
      v157 = v0[60];
      v158 = v0[59];
      v159 = v0[58];
      v160 = v0[57];
      v161 = v0[54];
      v162 = v0[53];
      v163 = v0[52];
      v164 = v0[48];
      v166 = v0[47];
      v168 = v0[44];
      v171 = v0[43];
      v174 = v0[40];
      v177 = v0[39];
      v179 = v0[36];
      v182 = v0[35];
      v185 = v0[34];
      v188 = v0[33];

      v117 = v0[1];

      return v117();
    }
  }

  else
  {
    v70 = v0[63];
    v71 = v0[64];
    v72 = v0[61];
    v73 = v0[62];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507528, &qword_2408D8120);
    (*(v73 + 16))(v70, v71, v72);
    sub_2408D3CC0();
    sub_2407D917C(&qword_27E507530, &qword_27E507528, &qword_2408D8120);
    v74 = sub_2408D4680();

    v0[102] = v74;
    v0[103] = *(v0[30] + 112);

    return MEMORY[0x2822009F8](sub_24083934C, 0, 0);
  }
}

uint64_t sub_240838B48(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 776);
  v18 = *v2;
  *(*v2 + 792) = v1;

  if (v1)
  {
    v6 = v4[96];
    v7 = v4[40];
    v8 = v4[30];
    sub_2407D9440(v7, &qword_27E507230, &unk_2408D7680);

    v9 = sub_240838E24;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    v12 = v4[98];
    v13 = v4[96];
    v4[100] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0);
    v14 = sub_2408D4E00();
    v16 = v15;
    v9 = sub_240838CEC;
    v10 = v14;
    v11 = v16;
  }

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_240838CEC()
{
  v1 = v0[100];
  v2 = v0[96];
  v3 = v0[40];
  v4 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820);
  v0[101] = sub_2408D4680();

  sub_2407D9440(v3, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_240838DF4, v4, 0);
}

uint64_t sub_240838DF4()
{
  v0[102] = v0[101];
  v0[103] = *(v0[30] + 112);
  return MEMORY[0x2822009F8](sub_24083934C, 0, 0);
}

uint64_t sub_240838E24()
{
  (*(v0[62] + 8))(v0[64], v0[61]);
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(v1 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  (*(v3 + 16))(v5, v2, v1);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v6 = v0[99];
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v7 = sub_2408D4B20();
  __swift_project_value_buffer(v7, qword_27E506C48);
  v8 = v6;
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_2407CF000, v9, v10, "Caught Auth error: %@", v11, 0xCu);
    sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v15 = v0[86];
  v16 = v0[85];
  v17 = v0[84];
  v18 = v0[83];
  v19 = v0[82];
  v20 = v0[78];

  v21 = *(v15 + 16);
  v22 = *(*v21 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*v21 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v21 + v23));
  sub_24080F060(v21 + v22, v20, &qword_27E507510, &qword_2408D8108);
  v17(v21 + v22, 1, 1, v19);
  os_unfair_lock_unlock((v21 + v23));

  v24 = (*(v18 + 48))(v20, 1, v19);
  v25 = v0[86];
  if (v24 == 1)
  {
    v26 = v0[78];
    v27 = v0[86];

    sub_2407D9440(v26, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v28 = v0[83];
    v29 = v0[82];
    v30 = v0[78];
    v0[24] = v6;
    v31 = v6;
    sub_2408D4E10();

    (*(v28 + 8))(v30, v29);
  }

  v32 = v0[81];
  v33 = v0[80];
  v34 = v0[79];
  v35 = v0[78];
  v36 = v0[77];
  v37 = v0[76];
  v38 = v0[75];
  v39 = v0[74];
  v40 = v0[71];
  v41 = v0[70];
  v44 = v0[69];
  v45 = v0[68];
  v46 = v0[67];
  v47 = v0[64];
  v48 = v0[63];
  v49 = v0[60];
  v50 = v0[59];
  v51 = v0[58];
  v52 = v0[57];
  v53 = v0[54];
  v54 = v0[53];
  v55 = v0[52];
  v56 = v0[48];
  v57 = v0[47];
  v58 = v0[44];
  v59 = v0[43];
  v60 = v0[40];
  v61 = v0[39];
  v62 = v0[36];
  v63 = v0[35];
  v64 = v0[34];
  v65 = v0[33];

  v42 = v0[1];

  return v42();
}

uint64_t sub_24083934C()
{
  v1 = swift_task_alloc();
  v0[52].i64[0] = v1;
  v1[1] = vextq_s8(v0[51], v0[51], 8uLL);
  v2 = *(MEMORY[0x277CEDE70] + 4);
  v3 = swift_task_alloc();
  v0[52].i64[1] = v3;
  v4 = type metadata accessor for AuthenticationReport(0);
  *v3 = v0;
  v3[1] = sub_240839424;

  return MEMORY[0x2821400E8](&v0[11], &unk_2408D8128, v1, v4);
}

uint64_t sub_240839424()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 832);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24083953C, 0, 0);
}

uint64_t sub_24083953C()
{
  v1 = *(v0 + 176);
  *(v0 + 848) = v1;
  if (*(v0 + 184))
  {
    v2 = *(v0 + 240);
    *(v0 + 200) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    v3 = sub_240839E5C;
    v4 = v2;
  }

  else
  {
    v4 = *(v0 + 240);
    v3 = sub_2408395F4;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_2408395F4()
{
  v93 = v0;
  v75 = v0[106];
  v78 = v0[89];
  v81 = v0[90];
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[76];
  v4 = v0[72];
  v5 = v0[67];
  v72 = v0[65];
  v7 = v0[38];
  v6 = v0[39];
  v83 = v0[36];
  v86 = v0[37];
  v8 = v0[29];
  v89 = v0[30];
  sub_2408D44F0();
  sub_2408D38F0();
  v2(v3, v4);
  sub_2408CAC38(v5);
  v78(v5, v72);
  sub_2408D44F0();
  sub_2408D38F0();
  v2(v3, v4);
  v79 = *(v7 + 16);
  v79(v83, v6, v86);
  (*(v7 + 56))(v83, 0, 1, v86);
  swift_beginAccess();
  sub_2408C6DC8(v83, v5);
  swift_endAccess();
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v9 = sub_2408D4B20();
  __swift_project_value_buffer(v9, qword_27E506C48);
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F20();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[39];
    v13 = v0[37];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v92 = v15;
    *v14 = 136315138;
    swift_beginAccess();
    sub_2408763D8(&qword_27E507558, 255, MEMORY[0x277CED3A8]);
    v16 = sub_2408D5220();
    v18 = sub_2408CC504(v16, v17, &v92);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v10, v11, "Produced SRP results with archived data: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x245CC9F60](v15, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  v19 = v0[86];
  v20 = v0[85];
  v21 = v0[84];
  v22 = v0[83];
  v23 = v0[82];
  v24 = v0[79];
  v25 = v0[39];
  swift_beginAccess();
  sub_2408D3740();
  swift_endAccess();
  v26 = *(v19 + 16);
  v27 = *(*v26 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*v26 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v26 + v28));
  sub_24080F060(v26 + v27, v24, &qword_27E507510, &qword_2408D8108);
  v21(v26 + v27, 1, 1, v23);
  os_unfair_lock_unlock((v26 + v28));

  v29 = (*(v22 + 48))(v24, 1, v23);
  v30 = v0[106];
  v31 = v0[102];
  if (v29 == 1)
  {
    v32 = v0[79];
    (*(v0[62] + 8))(v0[64], v0[61]);
    sub_24080F564(v30, 0);

    sub_2407D9440(v32, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v90 = v0[83];
    v73 = v0[79];
    v76 = v0[82];
    v33 = v0[62];
    v84 = v0[61];
    v87 = v0[64];
    v68 = v0[34];
    v70 = v0[35];
    v34 = v0[33];
    v79(v34, v0[39], v0[37]);
    swift_storeEnumTagMultiPayload();
    v35 = MEMORY[0x277CED3A8];
    sub_2408763D8(&qword_27E507538, 255, MEMORY[0x277CED3A8]);
    sub_2408763D8(&qword_27E507540, 255, v35);
    v36 = MEMORY[0x277CED418];
    sub_2408763D8(&qword_27E507548, 255, MEMORY[0x277CED418]);
    sub_2408763D8(&qword_27E507550, 255, v36);
    sub_2408D5330();
    sub_2407D9440(v34, &qword_27E506CF0, &qword_2408D6C68);
    sub_2408D4520();
    sub_2408D4E20();

    sub_24080F564(v30, 0);
    (*(v33 + 8))(v87, v84);
    (*(v90 + 8))(v73, v76);
  }

  v37 = v0[86];
  (*(v0[38] + 8))(v0[39], v0[37]);
  v38 = v0[5];
  v39 = __swift_project_boxed_opaque_existential_1(v0 + 2, v38);
  v40 = *(v38 - 8);
  v41 = *(v40 + 64) + 15;
  v42 = swift_task_alloc();
  (*(v40 + 16))(v42, v39, v38);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v43 = v0[81];
  v44 = v0[80];
  v45 = v0[79];
  v46 = v0[78];
  v47 = v0[77];
  v48 = v0[76];
  v49 = v0[75];
  v50 = v0[74];
  v51 = v0[71];
  v52 = v0[70];
  v55 = v0[69];
  v56 = v0[68];
  v57 = v0[67];
  v58 = v0[64];
  v59 = v0[63];
  v60 = v0[60];
  v61 = v0[59];
  v62 = v0[58];
  v63 = v0[57];
  v64 = v0[54];
  v65 = v0[53];
  v66 = v0[52];
  v67 = v0[48];
  v69 = v0[47];
  v71 = v0[44];
  v74 = v0[43];
  v77 = v0[40];
  v80 = v0[39];
  v82 = v0[36];
  v85 = v0[35];
  v88 = v0[34];
  v91 = v0[33];

  v53 = v0[1];

  return v53();
}

uint64_t sub_240839E5C()
{
  v1 = v0[102];
  v2 = v0[64];
  v3 = v0[61];
  v4 = v0[62];

  (*(v4 + 8))(v2, v3);
  v5 = v0[5];
  v6 = __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  (*(v7 + 16))(v9, v6, v5);
  sub_2408D4670();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v10 = v0[106];
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v11 = sub_2408D4B20();
  __swift_project_value_buffer(v11, qword_27E506C48);
  v12 = v10;
  v13 = sub_2408D4B10();
  v14 = sub_2408D4F20();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_2407CF000, v13, v14, "Caught Auth error: %@", v15, 0xCu);
    sub_2407D9440(v16, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v16, -1, -1);
    MEMORY[0x245CC9F60](v15, -1, -1);
  }

  v19 = v0[86];
  v20 = v0[85];
  v21 = v0[84];
  v22 = v0[83];
  v23 = v0[82];
  v24 = v0[78];

  v25 = *(v19 + 16);
  v26 = *(*v25 + *MEMORY[0x277D841D0] + 16);
  v27 = (*(*v25 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v25 + v27));
  sub_24080F060(v25 + v26, v24, &qword_27E507510, &qword_2408D8108);
  v21(v25 + v26, 1, 1, v23);
  os_unfair_lock_unlock((v25 + v27));

  v28 = (*(v22 + 48))(v24, 1, v23);
  v29 = v0[86];
  if (v28 == 1)
  {
    v30 = v0[78];
    v31 = v0[86];

    sub_2407D9440(v30, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v32 = v0[83];
    v33 = v0[82];
    v34 = v0[78];
    v0[24] = v10;
    v35 = v10;
    sub_2408D4E10();

    (*(v32 + 8))(v34, v33);
  }

  v36 = v0[81];
  v37 = v0[80];
  v38 = v0[79];
  v39 = v0[78];
  v40 = v0[77];
  v41 = v0[76];
  v42 = v0[75];
  v43 = v0[74];
  v44 = v0[71];
  v45 = v0[70];
  v48 = v0[69];
  v49 = v0[68];
  v50 = v0[67];
  v51 = v0[64];
  v52 = v0[63];
  v53 = v0[60];
  v54 = v0[59];
  v55 = v0[58];
  v56 = v0[57];
  v57 = v0[54];
  v58 = v0[53];
  v59 = v0[52];
  v60 = v0[48];
  v61 = v0[47];
  v62 = v0[44];
  v63 = v0[43];
  v64 = v0[40];
  v65 = v0[39];
  v66 = v0[36];
  v67 = v0[35];
  v68 = v0[34];
  v69 = v0[33];

  v46 = v0[1];

  return v46();
}

uint64_t sub_24083A394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507510, &qword_2408D8108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v62 - v8;
  v10 = sub_2408D35B0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D3500();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v62 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - v23;
  sub_2408D35C0();
  if ((*(v15 + 48))(v13, 6, v14))
  {
    return sub_240875C68(v13, MEMORY[0x277CED338]);
  }

  v66 = v19;
  v67 = v9;
  v65 = a3;
  (*(v15 + 32))(v24, v13, v14);
  (*(v15 + 104))(v22, *MEMORY[0x277CED270], v14);
  v26 = sub_2408D34F0();
  v27 = v22;
  v28 = *(v15 + 8);
  v28(v27, v14);
  if ((v26 & 1) == 0)
  {
    return (v28)(v24, v14);
  }

  v68 = v15 + 8;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v29 = sub_2408D4B20();
  __swift_project_value_buffer(v29, qword_27E506C48);
  v30 = *(v15 + 16);
  v31 = v66;
  v30(v66, v24, v14);
  v32 = sub_2408D4B10();
  v33 = sub_2408D4F10();
  v34 = os_log_type_enabled(v32, v33);
  v64 = a1;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v63 = v28;
    v36 = v35;
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    v38 = v14;
    v39 = v24;
    v30(v40, v31, v38);
    v41 = _swift_stdlib_bridgeErrorToNSError();
    v63(v31, v38);
    *(v36 + 4) = v41;
    *v37 = v41;
    v24 = v39;
    v14 = v38;
    _os_log_impl(&dword_2407CF000, v32, v33, "User cancelled during authentication with error: %@", v36, 0xCu);
    sub_2407D9440(v37, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v37, -1, -1);
    v42 = v36;
    v28 = v63;
    MEMORY[0x245CC9F60](v42, -1, -1);
  }

  else
  {

    v28(v31, v14);
  }

  v43 = v65;
  swift_beginAccess();
  v44 = *(v43 + 120);
  *(v43 + 120) = 0;

  sub_2408763D8(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
  v45 = swift_allocError();
  v46 = v24;
  v30(v47, v24, v14);
  sub_24083B174(v45);

  v48 = *(v69 + 16);
  v49 = *(*v48 + *MEMORY[0x277D841D0] + 16);
  v50 = (*(*v48 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v48 + v50));
  v51 = v67;
  sub_24080F060(v48 + v49, v67, &qword_27E507510, &qword_2408D8108);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0);
  v53 = *(v52 - 8);
  (*(v53 + 56))(v48 + v49, 1, 1, v52);
  os_unfair_lock_unlock((v48 + v50));

  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_2407D9440(v51, &qword_27E507510, &qword_2408D8108);
  }

  else
  {
    v54 = sub_2408D41D0();
    sub_2408763D8(&qword_27E5074F8, 255, MEMORY[0x277CED7F0]);
    v55 = swift_allocError();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277CED7D8], v54);
    v70 = v55;
    sub_2408D4E10();
    (*(v53 + 8))(v51, v52);
  }

  v57 = v64[3];
  v58 = __swift_project_boxed_opaque_existential_1(v64, v57);
  v59 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  (*(v61 + 16))(&v62 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2408D4670();
  return (v28)(v46, v14);
}

uint64_t sub_24083AB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2407EEE04(a3, v27 - v11, &unk_27E506BD0, &qword_2408D7AB0);
  v13 = sub_2408D4E60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2407D9440(v12, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2408D4E00();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2408D4D50() + 32;
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

      sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

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

  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
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

uint64_t sub_24083AE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2407EEE04(a3, v27 - v11, &unk_27E506BD0, &qword_2408D7AB0);
  v13 = sub_2408D4E60();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2407D9440(v12, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2408D4E00();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2408D4D50() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

      return v24;
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

  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074B0, &unk_2408D7F70);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_24083B174(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA8, &qword_2408D8100);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v23 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v23 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v23 - v14;
  v16 = *(*v1 + 208);
  swift_beginAccess();
  sub_2407EEE04(v1 + v16, v15, &qword_27E506DA8, &qword_2408D8100);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506CE8, qword_2408D6B70);
  v18 = *(v17 - 8);
  (*(v18 + 56))(v13, 1, 1, v17);
  swift_beginAccess();
  sub_2407EEE6C(v13, v1 + v16);
  swift_endAccess();
  v19 = (v18 + 48);
  if (a1)
  {
    sub_2407EEE04(v15, v10, &qword_27E506DA8, &qword_2408D8100);
    if ((*v19)(v10, 1, v17) == 1)
    {
      sub_2407D9440(v15, &qword_27E506DA8, &qword_2408D8100);
      v20 = v10;
      return sub_2407D9440(v20, &qword_27E506DA8, &qword_2408D8100);
    }

    v23[0] = a1;
    v22 = a1;
    sub_2408D4E90();
    sub_2407D9440(v15, &qword_27E506DA8, &qword_2408D8100);
    return (*(v18 + 8))(v10, v17);
  }

  else
  {
    sub_2407EEE04(v15, v7, &qword_27E506DA8, &qword_2408D8100);
    if ((*v19)(v7, 1, v17) == 1)
    {
      sub_2407D9440(v15, &qword_27E506DA8, &qword_2408D8100);
      v20 = v7;
      return sub_2407D9440(v20, &qword_27E506DA8, &qword_2408D8100);
    }

    v23[0] = 0;
    sub_2408D4E90();
    sub_2407D9440(v15, &qword_27E506DA8, &qword_2408D8100);
    return (*(v18 + 8))(v7, v17);
  }
}

uint64_t sub_24083B498(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_2408D3980();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507600, &qword_2408D82D0);
  v3[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F38, &unk_2408D8150);
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_2408D3E40();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v15 = sub_2408D3E10();
  v3[18] = v15;
  v16 = *(v15 - 8);
  v3[19] = v16;
  v17 = *(v16 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v18 = sub_2408D38D0();
  v3[24] = v18;
  v19 = *(v18 - 8);
  v3[25] = v19;
  v20 = *(v19 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v22 = sub_2408D3770();
  v3[29] = v22;
  v23 = *(v22 - 8);
  v3[30] = v23;
  v24 = *(v23 + 64) + 15;
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0) - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v26 = sub_2408D3970();
  v3[35] = v26;
  v27 = *(v26 - 8);
  v3[36] = v27;
  v28 = *(v27 + 64) + 15;
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v29 = sub_2408D3C20();
  v3[39] = v29;
  v30 = *(v29 - 8);
  v3[40] = v30;
  v31 = *(v30 + 64) + 15;
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v32 = sub_2408D3EE0();
  v3[44] = v32;
  v33 = *(v32 - 8);
  v3[45] = v33;
  v34 = *(v33 + 64) + 15;
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24083B984, v2, 0);
}

uint64_t sub_24083B984()
{
  v1 = v0[47];
  v2 = v0[44];
  v3 = v0[45];
  v4 = *MEMORY[0x277CED640];
  v5 = *(v3 + 104);
  v0[48] = v5;
  v0[49] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v2);
  v6 = *(MEMORY[0x277CED858] + 4);
  v11 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v7 = swift_task_alloc();
  v0[50] = v7;
  *v7 = v0;
  v7[1] = sub_24083BA60;
  v8 = v0[43];
  v9 = v0[3];

  return v11(v8);
}

uint64_t sub_24083BA60()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24083BB70, v2, 0);
}

uint64_t sub_24083BB70()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);
  sub_2408D3A70();
  v5 = v4;
  v6 = *(v3 + 8);
  *(v0 + 408) = v6;
  *(v0 + 416) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  if (v5)
  {
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    sub_2408D3ED0();
    (*(v10 + 40))(v7, v8, v9);
  }

  else
  {
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v11 = sub_2408D4B20();
    __swift_project_value_buffer(v11, qword_27E506C48);
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F10();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2407CF000, v12, v13, "Found no server device model, defaulting to unknown", v14, 2u);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }
  }

  v15 = *(v0 + 392);
  v16 = *(v0 + 368);
  v17 = *(v0 + 352);
  v18 = *(v0 + 360);
  (*(v0 + 384))(v16, *MEMORY[0x277CED620], v17);
  sub_2408763D8(&qword_27E507608, 255, MEMORY[0x277CED648]);
  v19 = sub_2408D4CF0();
  v20 = *(v18 + 8);
  *(v0 + 424) = v20;
  *(v0 + 432) = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v16, v17);
  if (v19 & 1) != 0 || (v21 = *(v0 + 392), v22 = *(v0 + 368), v23 = *(v0 + 352), (*(v0 + 384))(v22, *MEMORY[0x277CED630], v23), v24 = sub_2408D4CF0(), v20(v22, v23), (v24))
  {
    v25 = *(v0 + 432);
    (*(v0 + 424))(*(v0 + 376), *(v0 + 352));
    v26 = *(MEMORY[0x277CED870] + 4);
    v34 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v27 = swift_task_alloc();
    *(v0 + 440) = v27;
    *v27 = v0;
    v27[1] = sub_24083BF04;
    v28 = *(v0 + 24);

    return v34(nullsub_1, 0);
  }

  else
  {
    v30 = *(MEMORY[0x277CED858] + 4);
    v35 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v31 = swift_task_alloc();
    *(v0 + 504) = v31;
    *v31 = v0;
    v31[1] = sub_24083D880;
    v32 = *(v0 + 328);
    v33 = *(v0 + 24);

    return v35(v32);
  }
}

uint64_t sub_24083BF04()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;

  if (v0)
  {
  }

  v5 = *(MEMORY[0x277CED858] + 4);
  v10 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v2[56] = v6;
  *v6 = v4;
  v6[1] = sub_24083C05C;
  v7 = v2[42];
  v8 = v2[3];

  return v10(v7);
}

uint64_t sub_24083C05C()
{
  v1 = *(*v0 + 448);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24083C16C, v2, 0);
}

uint64_t sub_24083C16C()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  sub_2408D3BE0();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = *(v0 + 272);
    v6 = &unk_27E506A20;
    v7 = &unk_2408D67F0;
LABEL_5:
    sub_2407D9440(v5, v6, v7);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v13 = sub_2408D4B20();
    __swift_project_value_buffer(v13, qword_27E506C48);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F30();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2407CF000, v14, v15, "Expected nonnull account to be in authentication model during remote setup", v16, 2u);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    goto LABEL_10;
  }

  v8 = *(v0 + 336);
  v9 = *(v0 + 232);
  v10 = *(v0 + 240);
  v11 = *(v0 + 224);
  (*(*(v0 + 288) + 32))(*(v0 + 304), *(v0 + 272), *(v0 + 280));
  sub_2408D3A80();
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 224);
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    v6 = &qword_27E5071D0;
    v7 = &unk_2408D9C70;
    v5 = v12;
    goto LABEL_5;
  }

  v30 = *(v0 + 32);
  (*(*(v0 + 240) + 32))(*(v0 + 256), *(v0 + 224), *(v0 + 232));
  v31 = *(v30 + 240);
  *(v0 + 456) = v31;
  if (v31)
  {
    v32 = *(v0 + 304);
    v33 = *(v0 + 216);

    sub_2408D38F0();
    v34 = swift_task_alloc();
    *(v0 + 464) = v34;
    *v34 = v0;
    v34[1] = sub_24083C824;
    v35 = *(v0 + 216);

    return sub_2407ED2BC(v35);
  }

  else
  {
    v36 = *(v0 + 336);
    v38 = *(v0 + 248);
    v37 = *(v0 + 256);
    v39 = *(v0 + 232);
    v40 = *(v0 + 240);
    v41 = *(v0 + 184);
    v42 = *(v0 + 32);
    (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
    (*(v40 + 16))(v38, v37, v39);
    sub_2408D3C00();
    sub_2408D3DD0();
    v43 = *(v42 + 240);
    *(v0 + 472) = v43;
    if (!v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
      sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
      swift_allocError();
      *v50 = 0;
      swift_willThrow();
      v73 = *(v0 + 304);
      v51 = *(v0 + 288);
      v71 = *(v0 + 280);
      v52 = *(v0 + 256);
      v53 = *(v0 + 232);
      v54 = *(v0 + 240);
      v55 = *(v0 + 184);
      v57 = *(v0 + 144);
      v56 = *(v0 + 152);
      swift_willThrow();
      (*(v56 + 8))(v55, v57);
      (*(v54 + 8))(v52, v53);
      (*(v51 + 8))(v73, v71);
LABEL_10:
      v18 = *(v0 + 416);
      v20 = *(v0 + 368);
      v19 = *(v0 + 376);
      v21 = *(v0 + 344);
      v22 = *(v0 + 328);
      v23 = *(v0 + 304);
      v24 = *(v0 + 296);
      v26 = *(v0 + 264);
      v25 = *(v0 + 272);
      v58 = *(v0 + 256);
      v59 = *(v0 + 248);
      v60 = *(v0 + 224);
      v61 = *(v0 + 216);
      v62 = *(v0 + 208);
      v63 = *(v0 + 184);
      v64 = *(v0 + 176);
      v65 = *(v0 + 168);
      v66 = *(v0 + 160);
      v67 = *(v0 + 136);
      v68 = *(v0 + 128);
      v69 = *(v0 + 120);
      v27 = *(v0 + 96);
      v70 = *(v0 + 72);
      v72 = *(v0 + 56);
      (*(v0 + 408))(*(v0 + 336), *(v0 + 312));

      v28 = *(v0 + 8);

      return v28();
    }

    (*(*(v0 + 152) + 16))(*(v0 + 176), *(v0 + 184), *(v0 + 144));
    v44 = *(MEMORY[0x277CED570] + 4);
    v74 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v45 = swift_task_alloc();
    *(v0 + 480) = v45;
    v46 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
    *v45 = v0;
    v45[1] = sub_24083CDF4;
    v47 = *(v0 + 176);
    v48 = *(v0 + 144);
    v49 = *(v0 + 128);

    return v74(v49, v47, v48, v46);
  }
}

uint64_t sub_24083C824()
{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v4 = *v1;

  v5 = v2[57];
  v6 = v2[27];
  v7 = v2[25];
  v8 = v2[24];
  v9 = v2[4];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v10 = sub_240876420;
  }

  else
  {
    (*(v7 + 8))(v6, v8);

    v10 = sub_24083C9FC;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_24083C9FC()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 184);
  v7 = *(v0 + 32);
  (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
  (*(v5 + 16))(v3, v2, v4);
  sub_2408D3C00();
  sub_2408D3DD0();
  v8 = *(v7 + 240);
  *(v0 + 472) = v8;
  if (v8)
  {
    (*(*(v0 + 152) + 16))(*(v0 + 176), *(v0 + 184), *(v0 + 144));
    v9 = *(MEMORY[0x277CED570] + 4);
    v51 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

    v10 = swift_task_alloc();
    *(v0 + 480) = v10;
    v11 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
    *v10 = v0;
    v10[1] = sub_24083CDF4;
    v12 = *(v0 + 176);
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);

    return v51(v14, v12, v13, v11);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    v49 = *(v0 + 304);
    v17 = *(v0 + 288);
    v47 = *(v0 + 280);
    v18 = *(v0 + 256);
    v19 = *(v0 + 232);
    v20 = *(v0 + 240);
    v21 = *(v0 + 184);
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    swift_willThrow();
    (*(v22 + 8))(v21, v23);
    (*(v20 + 8))(v18, v19);
    (*(v17 + 8))(v49, v47);
    v24 = *(v0 + 416);
    v26 = *(v0 + 368);
    v25 = *(v0 + 376);
    v27 = *(v0 + 344);
    v28 = *(v0 + 328);
    v29 = *(v0 + 304);
    v30 = *(v0 + 296);
    v32 = *(v0 + 264);
    v31 = *(v0 + 272);
    v35 = *(v0 + 256);
    v36 = *(v0 + 248);
    v37 = *(v0 + 224);
    v38 = *(v0 + 216);
    v39 = *(v0 + 208);
    v40 = *(v0 + 184);
    v41 = *(v0 + 176);
    v42 = *(v0 + 168);
    v43 = *(v0 + 160);
    v44 = *(v0 + 136);
    v45 = *(v0 + 128);
    v46 = *(v0 + 120);
    v33 = *(v0 + 96);
    v48 = *(v0 + 72);
    v50 = *(v0 + 56);
    (*(v0 + 408))(*(v0 + 336), *(v0 + 312));

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_24083CDF4()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *(*v1 + 472);
  v5 = *v1;
  *(*v1 + 488) = v0;

  v6 = *(v2 + 32);
  if (v0)
  {
    v7 = sub_24083D148;
  }

  else
  {
    v7 = sub_24083CF3C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24083CF3C()
{
  (*(v0[14] + 32))(v0[17], v0[16], v0[13]);
  v1 = *(MEMORY[0x277CED870] + 4);
  v5 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v2 = swift_task_alloc();
  v0[62] = v2;
  *v2 = v0;
  v2[1] = sub_24083D010;
  v3 = v0[3];

  return v5(sub_2407EE148, 0);
}

uint64_t sub_24083D010()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v4 = *v1;

  v5 = *(v2 + 32);
  if (v0)
  {

    v6 = sub_240876450;
  }

  else
  {
    v6 = sub_24083D360;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_24083D148()
{
  v34 = *(v0 + 304);
  v36 = *(v0 + 488);
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 184);
  v8 = *(v0 + 144);
  v7 = *(v0 + 152);
  swift_willThrow();
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v34, v1);
  v9 = *(v0 + 416);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 344);
  v13 = *(v0 + 328);
  v14 = *(v0 + 304);
  v15 = *(v0 + 296);
  v17 = *(v0 + 264);
  v16 = *(v0 + 272);
  v21 = *(v0 + 256);
  v22 = *(v0 + 248);
  v23 = *(v0 + 224);
  v24 = *(v0 + 216);
  v25 = *(v0 + 208);
  v26 = *(v0 + 184);
  v27 = *(v0 + 176);
  v28 = *(v0 + 168);
  v29 = *(v0 + 160);
  v30 = *(v0 + 136);
  v31 = *(v0 + 128);
  v32 = *(v0 + 120);
  v18 = *(v0 + 96);
  v33 = *(v0 + 72);
  v35 = *(v0 + 56);
  (*(v0 + 408))(*(v0 + 336), *(v0 + 312));

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24083D360()
{
  v1 = v0[38];
  v2 = v0[26];
  v3 = v0[17];
  v4 = v0[11];
  v5 = v0[6];
  sub_2408D38F0();
  v6 = sub_2408D3E20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  result = sub_2408D51B0();
  v8 = 0;
  v9 = v6 + 64;
  v78 = v6;
  v10 = 1 << *(v6 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v6 + 64);
  v13 = (v10 + 63) >> 6;
  v74 = (v4 + 8);
  v63 = (v5 + 32);
  v72 = result + 64;
  v79 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v80 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v8 << 6);
      v18 = v0[9];
      v19 = v0[8];
      v20 = *(*(v78 + 48) + 8 * v17);
      (*(v4 + 16))(v0[12], *(v78 + 56) + *(v4 + 72) * v17, v0[10]);
      v21 = v20;
      sub_2408D4AD0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v23 = v0[9];
      if (EnumCaseMultiPayload == 1)
      {
        v64 = v0[7];
        v70 = v21;
        v24 = v0[5];
        v25 = *v63;
        v66 = v0[10];
        v68 = v0[12];
        (*v63)(v64, v23, v24);
        sub_2408763D8(&qword_27E506D18, 255, MEMORY[0x277CED418]);
        v26 = swift_allocError();
        v27 = v24;
        v21 = v70;
        v25(v28, v64, v27);
        (*v74)(v68, v66);
      }

      else
      {
        (*v74)(v0[12], v0[10]);
        v26 = *v23;
      }

      *(v72 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v79;
      *(v79[6] + 8 * v17) = v21;
      v29 = v79[7] + 16 * v17;
      *v29 = v26;
      *(v29 + 8) = EnumCaseMultiPayload == 1;
      v30 = v79[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v79[2] = v32;
      v12 = v80;
      if (!v80)
      {
        goto LABEL_5;
      }
    }

LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_5:
    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v8 >= v13)
      {
        break;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v80 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    v52 = v0[51];
    v53 = v0[52];
    v54 = v0[47];
    v55 = v0[46];
    v56 = v0[43];
    v57 = v0[41];
    v50 = v0[39];
    v51 = v0[42];
    v33 = v0[36];
    v46 = v0[35];
    v47 = v0[38];
    v58 = v0[37];
    v59 = v0[34];
    v34 = v0[30];
    v60 = v0[33];
    v61 = v0[31];
    v44 = v0[29];
    v45 = v0[32];
    v62 = v0[28];
    v65 = v0[27];
    v35 = v0[25];
    v48 = v0[24];
    v49 = v0[26];
    v43 = v0[23];
    v67 = v0[22];
    v69 = v0[21];
    v71 = v0[20];
    v37 = v0[18];
    v36 = v0[19];
    v38 = v0[17];
    v39 = v0[14];
    v73 = v0[16];
    v75 = v0[15];
    v40 = v0[13];
    v76 = v0[12];
    v77 = v0[9];
    v81 = v0[7];
    v41 = v0[2];

    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v43, v37);
    (*(v34 + 8))(v45, v44);
    (*(v33 + 8))(v47, v46);
    v52(v51, v50);
    (*(v35 + 32))(v41, v49, v48);
    *(v41 + *(type metadata accessor for SignInReport(0) + 20)) = v79;

    v42 = v0[1];

    return v42();
  }

  return result;
}

uint64_t sub_24083D880()
{
  v1 = *(*v0 + 504);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24083D990, v2, 0);
}

uint64_t sub_24083D990()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[41];
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[36];
  v7 = v0[33];
  sub_2408D3BE0();
  v2(v3, v4);
  v8 = (*(v6 + 48))(v7, 1, v5);
  v9 = v0[33];
  if (v8 == 1)
  {
    sub_2407D9440(v0[33], &unk_27E506A20, &unk_2408D67F0);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E506C48);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F30();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2407CF000, v11, v12, "Expected nonnull account to be in signin model during remote setup", v13, 2u);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v15 = v0[53];
    v14 = v0[54];
    v16 = v0[47];
    v17 = v0[44];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v18 = swift_allocError();
    *v19 = 0;
    swift_willThrow();
    v15(v16, v17);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    v21 = sub_2408D4B20();
    __swift_project_value_buffer(v21, qword_27E506C48);
    v22 = v18;
    v23 = sub_2408D4B10();
    v24 = sub_2408D4F30();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v18;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_2407CF000, v23, v24, "Did not attempt fetching terms on source device due to error: %@", v25, 0xCu);
      sub_2407D9440(v26, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v26, -1, -1);
      MEMORY[0x245CC9F60](v25, -1, -1);
    }

    else
    {
    }

    v29 = *(MEMORY[0x277CED870] + 4);
    v34 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v30 = swift_task_alloc();
    v0[55] = v30;
    *v30 = v0;
    v30[1] = sub_24083BF04;
    v31 = v0[3];

    return v34(nullsub_1, 0);
  }

  else
  {
    v20 = *(v0[4] + 136);
    v0[64] = sub_2408D3660();
    (*(v0[36] + 8))(v0[33], v0[35]);
    v33 = swift_task_alloc();
    v0[65] = v33;
    *v33 = v0;
    v33[1] = sub_24083DE2C;

    return sub_24080D3D0();
  }
}

uint64_t sub_24083DE2C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 520);
  v6 = *v2;
  *(v4 + 528) = v1;

  v7 = *(v4 + 32);
  if (v1)
  {
    v8 = sub_24083E420;
  }

  else
  {
    *(v4 + 560) = a1 & 1;
    v8 = sub_24083DF6C;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_24083DF6C()
{
  if (*(v0 + 560))
  {

    v1 = *(v0 + 432);
    (*(v0 + 424))(*(v0 + 376), *(v0 + 352));
LABEL_3:
    v2 = *(MEMORY[0x277CED870] + 4);
    v35 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v3 = swift_task_alloc();
    *(v0 + 440) = v3;
    *v3 = v0;
    v3[1] = sub_24083BF04;
    v4 = *(v0 + 24);

    return v35(nullsub_1, 0);
  }

  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506C48);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F30();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2407CF000, v7, v8, "Failing early as user did not repair their account", v9, 2u);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  v10 = *(v0 + 168);
  v11 = *(v0 + 32);

  sub_2408D3E00();
  v12 = *(v11 + 240);
  *(v0 + 536) = v12;
  if (!v12)
  {
    v19 = *(v0 + 512);
    v34 = *(v0 + 424);
    v37 = *(v0 + 432);
    v33 = *(v0 + 376);
    v20 = *(v0 + 352);
    v21 = *(v0 + 168);
    v23 = *(v0 + 144);
    v22 = *(v0 + 152);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
    sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
    v24 = swift_allocError();
    *v25 = 0;
    swift_willThrow();

    (*(v22 + 8))(v21, v23);
    v34(v33, v20);
    if (qword_27E506918 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27E506C48);
    v26 = v24;
    v27 = sub_2408D4B10();
    v28 = sub_2408D4F30();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_2407CF000, v27, v28, "Did not attempt fetching terms on source device due to error: %@", v29, 0xCu);
      sub_2407D9440(v30, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v30, -1, -1);
      MEMORY[0x245CC9F60](v29, -1, -1);
    }

    else
    {
    }

    goto LABEL_3;
  }

  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 144));
  v13 = *(MEMORY[0x277CED570] + 4);
  v36 = (*MEMORY[0x277CED570] + MEMORY[0x277CED570]);

  v14 = swift_task_alloc();
  *(v0 + 544) = v14;
  v15 = sub_2408763D8(&qword_27E5075F8, 255, MEMORY[0x277CED608]);
  *v14 = v0;
  v14[1] = sub_24083E644;
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);

  return v36(v18, v16, v17, v15);
}

uint64_t sub_24083E420()
{
  v2 = *(v0 + 424);
  v1 = *(v0 + 432);
  v3 = *(v0 + 376);
  v4 = *(v0 + 352);

  v2(v3, v4);
  v5 = *(v0 + 528);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506C48);
  v7 = v5;
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F30();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2407CF000, v8, v9, "Did not attempt fetching terms on source device due to error: %@", v10, 0xCu);
    sub_2407D9440(v11, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  else
  {
  }

  v14 = *(MEMORY[0x277CED870] + 4);
  v18 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v15 = swift_task_alloc();
  *(v0 + 440) = v15;
  *v15 = v0;
  v15[1] = sub_24083BF04;
  v16 = *(v0 + 24);

  return v18(nullsub_1, 0);
}

uint64_t sub_24083E644()
{
  v2 = *v1;
  v3 = *(*v1 + 544);
  v4 = *v1;
  v2[69] = v0;

  v5 = v2[67];
  if (v0)
  {
    v6 = v2[4];

    v7 = sub_24083EA5C;
  }

  else
  {
    v6 = v2[4];
    (*(v2[14] + 8))(v2[15], v2[13]);

    v7 = sub_24083E7A4;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24083E7A4()
{
  v1 = v0[64];
  v3 = v0[53];
  v2 = v0[54];
  v4 = v0[47];
  v5 = v0[44];
  (*(v0[19] + 8))(v0[21], v0[18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5074D8, &qword_2408D7FF0);
  sub_2407D917C(&qword_27E5074E0, &qword_27E5074D8, &qword_2408D7FF0);
  v6 = swift_allocError();
  *v7 = 13;
  swift_willThrow();

  v3(v4, v5);
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_27E506C48);
  v9 = v6;
  v10 = sub_2408D4B10();
  v11 = sub_2408D4F30();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2407CF000, v10, v11, "Did not attempt fetching terms on source device due to error: %@", v12, 0xCu);
    sub_2407D9440(v13, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v13, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(MEMORY[0x277CED870] + 4);
  v20 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v17 = swift_task_alloc();
  v0[55] = v17;
  *v17 = v0;
  v17[1] = sub_24083BF04;
  v18 = v0[3];

  return v20(nullsub_1, 0);
}