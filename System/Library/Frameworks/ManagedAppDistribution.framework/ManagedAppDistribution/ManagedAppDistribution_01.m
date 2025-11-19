uint64_t sub_1D9550738(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v7 = sub_1D95508D4;
  }

  else
  {
    *(v4 + 210) = a1;
    v7 = sub_1D9550860;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D9550860()
{
  sub_1D955AA18(*(v0 + 152), *(v0 + 160));
  v1 = *(v0 + 210);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D95508D4()
{
  sub_1D955AA18(v0[19], v0[20]);
  v1 = v0[25];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D9550940(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = v4;
  *(v5 + 144) = a2;
  *(v5 + 24) = a1;
  *(v5 + 32) = a3;
  *(v5 + 56) = *v4;
  v6 = sub_1D95BFA3C();
  *(v5 + 64) = v6;
  v7 = *(v6 - 8);
  *(v5 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9550A30, 0, 0);
}

uint64_t sub_1D9550A30()
{
  v1 = *(v0 + 144);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 146) = v1 & 1;
  *(v0 + 147) = HIBYTE(v1) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060E0, &qword_1D95C2440);
  sub_1D9547F60(&qword_1ECB060E8, &qword_1ECB060E0, &qword_1D95C2440);
  v5 = sub_1D95BFABC();
  *(v0 + 88) = v5;
  *(v0 + 96) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v17 = *(v0 + 32);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v14 = v0;
  v14[1] = sub_1D9550C64;

  return MEMORY[0x1EEE6DE38](v0 + 148, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AEF8, v12, v15);
}

uint64_t sub_1D9550C64()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1D9550DF4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1D9550D80;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9550D80()
{
  sub_1D955AA18(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 148);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D9550DF4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 64);
  v6 = *(v0 + 24);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 120);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 144);
    v15 = *(v0 + 24);

    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *v16 = v0;
    v16[1] = sub_1D9551114;
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 32);

    return sub_1D9550940(v15 - 1, v14 & 0x1010101, v19, v17);
  }

  else
  {
    *(v0 + 16) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 120);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    if (v22)
    {

      v26 = *(v0 + 149);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 80);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D9551114(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_1D955B294;
  }

  else
  {
    *(v4 + 150) = a1;
    v7 = sub_1D955123C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D955123C()
{
  sub_1D955AA18(*(v0 + 88), *(v0 + 96));
  v1 = *(v0 + 150);
  v2 = *(v0 + 80);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D95512B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = v6;
  *(v7 + 35) = a4;
  *(v7 + 64) = a3;
  *(v7 + 72) = a5;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  *(v7 + 96) = *v6;
  v8 = sub_1D95BFA3C();
  *(v7 + 104) = v8;
  v9 = *(v8 - 8);
  *(v7 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D95513A4, 0, 0);
}

uint64_t sub_1D95513A4()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 35);
  v4 = sub_1D95BFADC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  *(v0 + 32) = v3;
  sub_1D955AEB0(v2, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060D0, &qword_1D95C2430);
  sub_1D9547F60(&qword_1ECB060D8, &qword_1ECB060D0, &qword_1D95C2430);
  v7 = sub_1D95BFABC();
  *(v0 + 128) = v7;
  *(v0 + 136) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v19 = *(v0 + 72);
  sub_1D955AEC8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 152) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D95515F8;

  return MEMORY[0x1EEE6DE38](v0 + 33, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AEE0, v14, v17);
}

uint64_t sub_1D95515F8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_1D9551714;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_1D955B23C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9551714()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 48);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 160);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 48);

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_1D9551A34;
    v16 = *(v0 + 80);
    v17 = *(v0 + 88);
    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    v21 = *(v0 + 35);

    return sub_1D95512B0(v14 - 1, v20, v18, v21, v19, v16);
  }

  else
  {
    *(v0 + 40) = v9;
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v24 = swift_dynamicCast();
    v25 = *(v0 + 160);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    if (v24)
    {

      v28 = *(v0 + 34);
      sub_1D955A9C4();
      swift_allocError();
      *v29 = v28;
      swift_willThrow();
      sub_1D955AA18(v26, v27);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();

      sub_1D955AA18(v26, v27);
    }

    v31 = *(v0 + 120);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1D9551A34(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_1D955B298;
  }

  else
  {
    *(v4 + 36) = a1;
    v7 = sub_1D955B2BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D9551B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  v6 = sub_1D95BFA3C();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060C0, &qword_1D95C2420);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9551C88, 0, 0);
}

uint64_t sub_1D9551C88()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v4 = sub_1D95BFADC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  sub_1D955AE30(v3, v1, type metadata accessor for InstallEnterpriseManifestRequest);
  sub_1D9547F60(&qword_1ECB060C8, &qword_1ECB060C0, &qword_1D95C2420);
  v7 = sub_1D95BFABC();
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v19 = *(v0 + 40);
  sub_1D9547EAC(*(v0 + 104), &qword_1ECB060C0, &qword_1D95C2420);

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D9551EEC;

  return MEMORY[0x1EEE6DE38](v0 + 168, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AE98, v14, v17);
}

uint64_t sub_1D9551EEC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D9552008;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1D955B2C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9552008()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 144);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 24);

    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1D955232C;
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);

    return sub_1D9551B5C(v14 - 1, v18, v19, v16);
  }

  else
  {
    *(v0 + 16) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    if (v22)
    {

      v26 = *(v0 + 169);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 104);
    v30 = *(v0 + 88);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D955232C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1D955B240;
  }

  else
  {
    *(v4 + 170) = a1;
    v7 = sub_1D955B22C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D9552454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 112) = a2;
  *(v5 + 120) = a3;
  *(v5 + 104) = a1;
  *(v5 + 144) = *v4;
  *(v5 + 152) = *a2;
  *(v5 + 51) = *(a2 + 16);
  *(v5 + 168) = *(a2 + 24);
  *(v5 + 53) = *(a2 + 32);
  v6 = sub_1D95BFA3C();
  *(v5 + 176) = v6;
  v7 = *(v6 - 8);
  *(v5 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9552564, 0, 0);
}

uint64_t sub_1D9552564()
{
  v1 = *(v0 + 53);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 52);
  v5 = *(v0 + 51);
  v6 = *(v0 + 152);
  v7 = *(v0 + 112);
  v8 = sub_1D95BFADC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v6;
  *(v0 + 24) = v3;
  *(v0 + 32) = v5 & 1;
  *(v0 + 33) = v4 & 1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v1 & 1;
  sub_1D955ADBC(v7, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060B0, &qword_1D95C2410);
  sub_1D9547F60(&qword_1ECB060B8, &qword_1ECB060B0, &qword_1D95C2410);
  v11 = sub_1D95BFABC();
  *(v0 + 200) = v11;
  *(v0 + 208) = v12;
  v13 = v11;
  v14 = v12;
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 24);
  v24 = *(v0 + 120);

  v18 = *(v16 + 16);
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v24;
  *(v19 + 40) = v13;
  *(v19 + 48) = v14;
  *(v19 + 56) = v15;
  v20 = *(MEMORY[0x1E69E8920] + 4);
  v21 = swift_task_alloc();
  *(v0 + 224) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v21 = v0;
  v21[1] = sub_1D95527E0;

  return MEMORY[0x1EEE6DE38](v0 + 49, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AE18, v19, v22);
}

uint64_t sub_1D95527E0()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_1D9552970;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_1D95528FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D95528FC()
{
  sub_1D955AA18(*(v0 + 200), *(v0 + 208));
  v1 = *(v0 + 49);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1D9552970()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  v6 = *(v0 + 104);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 232);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 104);

    v15 = swift_task_alloc();
    *(v0 + 240) = v15;
    *v15 = v0;
    v15[1] = sub_1D9552C88;
    v16 = *(v0 + 128);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
    v19 = *(v0 + 120);

    return sub_1D9552454(v14 - 1, v18, v19, v16);
  }

  else
  {
    *(v0 + 96) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 232);
    v24 = *(v0 + 200);
    v25 = *(v0 + 208);
    if (v22)
    {

      v26 = *(v0 + 50);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 192);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D9552C88(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 240);
  v6 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v7 = sub_1D9552E24;
  }

  else
  {
    *(v4 + 54) = a1;
    v7 = sub_1D9552DB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D9552DB0()
{
  sub_1D955AA18(*(v0 + 200), *(v0 + 208));
  v1 = *(v0 + 54);
  v2 = *(v0 + 192);

  v3 = *(v0 + 8);

  return v3(v1 & 1);
}

uint64_t sub_1D9552E24()
{
  sub_1D955AA18(v0[25], v0[26]);
  v1 = v0[31];
  v2 = v0[24];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D9552E90(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 162) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  *(v5 + 64) = *v4;
  v6 = sub_1D95BFA3C();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9552F80, 0, 0);
}

uint64_t sub_1D9552F80()
{
  v1 = *(v0 + 162);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 160) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06058, &qword_1D95C5B40);
  sub_1D9547F60(&qword_1EDCFA1B0, &qword_1ECB06058, &qword_1D95C5B40);
  v5 = sub_1D95BFABC();
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v17 = *(v0 + 40);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
  *v14 = v0;
  v14[1] = sub_1D95531A8;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955ACA4, v12, v15);
}

uint64_t sub_1D95531A8()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1D9553338;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1D95532C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D95532C4()
{
  sub_1D955AA18(v0[12], v0[13]);
  v1 = v0[2];
  v2 = v0[11];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1D9553338()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 32);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 128);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 162);
    v15 = *(v0 + 32);

    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_1D9553658;
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    v19 = *(v0 + 40);

    return sub_1D9552E90(v15 - 1, v14 & 1, v19, v17);
  }

  else
  {
    *(v0 + 24) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 128);
    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    if (v22)
    {

      v26 = *(v0 + 161);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 88);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D9553658(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_1D95537F4;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_1D9553780;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D9553780()
{
  sub_1D955AA18(v0[12], v0[13]);
  v1 = v0[19];
  v2 = v0[11];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1D95537F4()
{
  sub_1D955AA18(v0[12], v0[13]);
  v1 = v0[18];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D9553860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *v4;
  v6 = sub_1D95BFA3C();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9553950, 0, 0);
}

uint64_t sub_1D9553950()
{
  v1 = *(v0 + 48);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 16) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06020, &unk_1D95C5B50);
  sub_1D9547F60(&qword_1EDCFA1C0, &qword_1ECB06020, &unk_1D95C5B50);
  v5 = sub_1D95BFABC();
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 16);
  v18 = *(v0 + 56);

  v12 = *(v10 + 16);
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v18;
  *(v13 + 40) = v7;
  *(v13 + 48) = v8;
  *(v13 + 56) = v9;
  v14 = *(MEMORY[0x1E69E8920] + 4);
  v15 = swift_task_alloc();
  *(v0 + 136) = v15;
  *v15 = v0;
  v15[1] = sub_1D9553B7C;
  v16 = MEMORY[0x1E69E76D8];

  return MEMORY[0x1EEE6DE38](v0 + 24, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955A954, v13, v16);
}

uint64_t sub_1D9553B7C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D9553D0C;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1D9553C98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9553C98()
{
  sub_1D955AA18(v0[14], v0[15]);
  v1 = v0[3];
  v2 = v0[13];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1D9553D0C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 40);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 144);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 40);

    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1D9554024;
    v16 = *(v0 + 64);
    v17 = *(v0 + 72);
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);

    return sub_1D9553860(v14 - 1, v18, v19, v16);
  }

  else
  {
    *(v0 + 32) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    if (v22)
    {

      v26 = *(v0 + 176);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 104);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D9554024(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1D95541C0;
  }

  else
  {
    *(v4 + 168) = a1;
    v7 = sub_1D955414C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D955414C()
{
  sub_1D955AA18(v0[14], v0[15]);
  v1 = v0[21];
  v2 = v0[13];

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_1D95541C0()
{
  sub_1D955AA18(v0[14], v0[15]);
  v1 = v0[20];
  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D955422C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = v4;
  *(v5 + 162) = a2;
  *(v5 + 32) = a1;
  *(v5 + 40) = a3;
  *(v5 + 64) = *v4;
  v6 = sub_1D95BFA3C();
  *(v5 + 72) = v6;
  v7 = *(v6 - 8);
  *(v5 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D955431C, 0, 0);
}

uint64_t sub_1D955431C()
{
  v1 = *(v0 + 162);
  v2 = sub_1D95BFADC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  *(v0 + 160) = v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06058, &qword_1D95C5B40);
  sub_1D9547F60(&qword_1EDCFA1B0, &qword_1ECB06058, &qword_1D95C5B40);
  v5 = sub_1D95BFABC();
  *(v0 + 96) = v5;
  *(v0 + 104) = v6;
  v7 = v5;
  v8 = v6;
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v17 = *(v0 + 40);

  v11 = *(v10 + 16);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *(v12 + 16) = v11;
  *(v12 + 24) = v17;
  *(v12 + 40) = v7;
  *(v12 + 48) = v8;
  *(v12 + 56) = v9;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 120) = v14;
  *v14 = v0;
  v14[1] = sub_1D9554534;
  v15 = MEMORY[0x1E69E76D8];

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AAD4, v12, v15);
}

uint64_t sub_1D9554534()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1D9554650;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_1D955B230;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9554650()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 32);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 128);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 162);
    v15 = *(v0 + 32);

    v16 = swift_task_alloc();
    *(v0 + 136) = v16;
    *v16 = v0;
    v16[1] = sub_1D9554970;
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    v19 = *(v0 + 40);

    return sub_1D955422C(v15 - 1, v14 & 1, v19, v17);
  }

  else
  {
    *(v0 + 24) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 128);
    v24 = *(v0 + 96);
    v25 = *(v0 + 104);
    if (v22)
    {

      v26 = *(v0 + 161);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 88);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1D9554970(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_1D955B2A0;
  }

  else
  {
    *(v4 + 152) = a1;
    v7 = sub_1D955B29C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D9554A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  v6 = sub_1D95BFA3C();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06090, &qword_1D95C23E0);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9554BC4, 0, 0);
}

uint64_t sub_1D9554BC4()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v4 = sub_1D95BFADC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  sub_1D955AE30(v3, v1, type metadata accessor for OAuthAuthorizeRequest);
  sub_1D9547F60(&qword_1ECB06098, &qword_1ECB06090, &qword_1D95C23E0);
  v7 = sub_1D95BFABC();
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v19 = *(v0 + 40);
  sub_1D9547EAC(*(v0 + 104), &qword_1ECB06090, &qword_1D95C23E0);

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D9554E28;

  return MEMORY[0x1EEE6DE38](v0 + 168, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955AC8C, v14, v17);
}

uint64_t sub_1D9554E28()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D9554F44;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1D955B2C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9554F44()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 144);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 24);

    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1D955232C;
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);

    return sub_1D9554A98(v14 - 1, v18, v19, v16);
  }

  else
  {
    *(v0 + 16) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    if (v22)
    {

      v26 = *(v0 + 169);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 104);
    v30 = *(v0 + 88);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D9555268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = *v4;
  v6 = sub_1D95BFA3C();
  v5[9] = v6;
  v7 = *(v6 - 8);
  v5[10] = v7;
  v8 = *(v7 + 64) + 15;
  v5[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06070, &unk_1D95C23C0);
  v5[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9555394, 0, 0);
}

uint64_t sub_1D9555394()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 32);
  v4 = sub_1D95BFADC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1D95BFACC();
  sub_1D955AE30(v3, v1, type metadata accessor for DDMAddOrUpdateManagedAppRequest);
  sub_1D9547F60(&qword_1ECB06078, &qword_1ECB06070, &unk_1D95C23C0);
  v7 = sub_1D95BFABC();
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;
  v9 = v7;
  v10 = v8;
  v12 = *(v0 + 56);
  v11 = *(v0 + 64);
  v19 = *(v0 + 40);
  sub_1D9547EAC(*(v0 + 104), &qword_1ECB06070, &unk_1D95C23C0);

  v13 = *(v12 + 16);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *(v14 + 16) = v13;
  *(v14 + 24) = v19;
  *(v14 + 40) = v9;
  *(v14 + 48) = v10;
  *(v14 + 56) = v11;
  v15 = *(MEMORY[0x1E69E8920] + 4);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06080, &unk_1D95C9250);
  *v16 = v0;
  v16[1] = sub_1D95555F8;

  return MEMORY[0x1EEE6DE38](v0 + 168, 0, 0, 0xD00000000000002BLL, 0x80000001D95D0320, sub_1D955ABB0, v14, v17);
}

uint64_t sub_1D95555F8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_1D9555794;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_1D9555714;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D9555714()
{
  sub_1D955AA18(*(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_1D9555794()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = *(v0 + 24);

  v7 = v1;
  sub_1D95BFA2C();
  sub_1D955A96C();
  v8 = sub_1D95BFA7C();

  (*(v4 + 8))(v3, v5);
  v9 = *(v0 + 144);
  if ((v8 & 1) != 0 && v6)
  {

    if (qword_1EDCFA2C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D95BFC8C();
    __swift_project_value_buffer(v10, qword_1EDCFA2D0);
    v11 = sub_1D95BFC6C();
    v12 = sub_1D95C009C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D953A000, v11, v12, "Connection interrupted, retrying request", v13, 2u);
      MEMORY[0x1DA733200](v13, -1, -1);
    }

    v14 = *(v0 + 24);

    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_1D9555AB8;
    v16 = *(v0 + 48);
    v17 = *(v0 + 56);
    v18 = *(v0 + 32);
    v19 = *(v0 + 40);

    return sub_1D9555268(v14 - 1, v18, v19, v16);
  }

  else
  {
    *(v0 + 16) = v9;
    v21 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
    v22 = swift_dynamicCast();
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    v25 = *(v0 + 120);
    if (v22)
    {

      v26 = *(v0 + 169);
      sub_1D955A9C4();
      swift_allocError();
      *v27 = v26;
      swift_willThrow();
      sub_1D955AA18(v24, v25);
    }

    else
    {

      sub_1D955A9C4();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();

      sub_1D955AA18(v24, v25);
    }

    v29 = *(v0 + 104);
    v30 = *(v0 + 88);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1D9555AB8(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v7 = sub_1D9555C60;
  }

  else
  {
    *(v4 + 170) = a1;
    v7 = sub_1D9555BE0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D9555BE0()
{
  sub_1D955AA18(*(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 170);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(v1 & 1);
}

uint64_t sub_1D9555C60()
{
  sub_1D955AA18(v0[14], v0[15]);
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

unint64_t sub_1D9555CD8()
{
  result = qword_1ECB05FF8;
  if (!qword_1ECB05FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB05FF8);
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

uint64_t sub_1D9555DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D9555E0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppInstallRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedAppInstallRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9555FD4()
{
  result = qword_1ECB06008;
  if (!qword_1ECB06008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06008);
  }

  return result;
}

unint64_t sub_1D955602C()
{
  result = qword_1ECB06010;
  if (!qword_1ECB06010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06010);
  }

  return result;
}

unint64_t sub_1D9556084()
{
  result = qword_1ECB06018;
  if (!qword_1ECB06018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06018);
  }

  return result;
}

uint64_t sub_1D95560D8(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_189;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D95563E4(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_179;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D95566F0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_169;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D95569FC(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_159;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9556D08(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_149;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9557014(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06148, &qword_1D95C24A0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955AF88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_139;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955AF9C, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9557320(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_129;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D955762C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_119;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9557938(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_109;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9557C44(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_99;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9557F50(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_89;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D955825C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_79;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9558568(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_69;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9558874(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_59;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9558B80(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t a1, uint64_t a2), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060A8, &qword_1D95C2400);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955ACBC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_49;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955ACD0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9558E8C(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06038, qword_1D95C2378);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955AAA4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955AAD0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9559198(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06038, qword_1D95C2378);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_19;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2AC, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D95594A4(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955B2A8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_39;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955B2B0, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D95597B0(uint64_t a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(), uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a7;
  v28 = a5;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  v14 = *(v10 + 16);
  v32 = a1;
  v14(&v26 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = v15 + v11;
  v17 = swift_allocObject();
  v26 = *(v10 + 32);
  v26(v17 + v15, v13, v9);
  aBlock[4] = sub_1D955ABC8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9589AB4;
  aBlock[3] = &block_descriptor_29;
  v18 = _Block_copy(aBlock);

  v19 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_1D95C00EC();
  swift_unknownObjectRelease();
  sub_1D953F4E4(aBlock, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06040, &unk_1D95C5B20);
  if (swift_dynamicCast())
  {
    v20 = v33;
    v14(v13, v32, v9);
    v21 = swift_allocObject();
    v26(v21 + v15, v13, v9);
    v22 = v28;
    *(v21 + ((v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
    v31(v20, v22, v29, sub_1D955ABDC, v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D955A9C4();
    v23 = swift_allocError();
    *v24 = 0;
    v34[0] = v23;
    sub_1D95BFF4C();
  }

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

uint64_t sub_1D9559ABC(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (qword_1EDCFA2C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D95BFC8C();
  __swift_project_value_buffer(v7, qword_1EDCFA2D0);
  v8 = a1;
  v9 = sub_1D95BFC6C();
  v10 = sub_1D95C009C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    v13 = a1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1D953A000, v9, v10, "Error fetching remote object proxy: %{public}@", v11, 0xCu);
    sub_1D9547EAC(v12, &qword_1ECB06050, &qword_1D95C5B30);
    MEMORY[0x1DA733200](v12, -1, -1);
    MEMORY[0x1DA733200](v11, -1, -1);
  }

  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1D95BFF4C();
}

uint64_t sub_1D9559C4C()
{
  sub_1D955A200(&v4);
  v0 = v4;
  if (v5)
  {
    sub_1D955A9C4();
    swift_allocError();
    *v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06148, &qword_1D95C24A0);
    sub_1D95BFF4C();
    v0 = v4;
    v2 = v5;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06148, &qword_1D95C24A0);
    sub_1D95BFF5C();
    v2 = 0;
  }

  return sub_1D953BC8C(v0, v2);
}

uint64_t sub_1D9559D10()
{
  sub_1D955A4E4(&qword_1ECB060A0, &qword_1D95C23E8, &qword_1EDCF9CA0, &v4);
  v0 = v4;
  if (v5)
  {
    sub_1D955A9C4();
    swift_allocError();
    *v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060A8, &qword_1D95C2400);
    sub_1D95BFF4C();
    v0 = v4;
    v2 = v5;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB060A8, &qword_1D95C2400);
    sub_1D95BFF5C();
    v2 = 0;
  }

  return sub_1D953BC8C(v0, v2);
}

uint64_t sub_1D9559DEC()
{
  sub_1D955A4E4(&qword_1ECB06048, &unk_1D95C2390, &qword_1EDCFA1C8, &v3);
  v0 = v3;
  if (v4)
  {
    sub_1D955A9C4();
    swift_allocError();
    *v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06038, qword_1D95C2378);
    return sub_1D95BFF4C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06038, qword_1D95C2378);
    return sub_1D95BFF5C();
  }
}

uint64_t sub_1D9559EAC()
{
  sub_1D9559F58(v3);
  v0 = v3[0];
  if (v3[1])
  {
    sub_1D955A9C4();
    swift_allocError();
    *v1 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
    return sub_1D95BFF4C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0);
    return sub_1D95BFF5C();
  }
}

uint64_t sub_1D9559F58@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1D95BFAAC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFA9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06060, &qword_1D95C23B0);
  sub_1D9547F60(&qword_1ECB06068, &qword_1ECB06060, &qword_1D95C23B0);
  sub_1D95BFA8C();

  v6 = v7;
  if (!v8)
  {
    v6 = v7 & 1;
  }

  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_1D955A200@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D95BFAAC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1D95BFA9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06120, &qword_1D95C2480);
  sub_1D9547F60(&qword_1ECB06128, &qword_1ECB06120, &qword_1D95C2480);
  sub_1D95BFA8C();

  v6 = v7;
  if (v8)
  {
    v6 = v7;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

uint64_t sub_1D955A4E4@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, unint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = sub_1D95BFAAC();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1D95BFA9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1D9547F60(a3, a1, a2);
  sub_1D95BFA8C();

  v12 = v13;
  if (v14)
  {
    v12 = v13;
  }

  *a4 = v12;
  *(a4 + 8) = v14;
  return result;
}

uint64_t sub_1D955A788(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61726150797562 && a2 == 0xE900000000000073 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74696E4972657375 && a2 == 0xED00006465746169 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D95D0300 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1D955A96C()
{
  result = qword_1ECB06028;
  if (!qword_1ECB06028)
  {
    sub_1D95BFA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06028);
  }

  return result;
}

unint64_t sub_1D955A9C4()
{
  result = qword_1EDCFA110;
  if (!qword_1EDCFA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCFA110);
  }

  return result;
}

uint64_t sub_1D955AA18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D955AB04()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06038, qword_1D95C2378) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D9559DEC();
}

uint64_t sub_1D955ABE0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06088, &qword_1D95C23D0) - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D9559EAC();
}

uint64_t sub_1D955ACF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v9, v10);
}

uint64_t sub_1D955AE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D955AEB0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D955AEC8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_10Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
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

uint64_t ManagedApp.Platform.description.getter()
{
  v1 = *v0;
  if (*v0 <= 2)
  {
    if (!v1)
    {
      return 0x534F63616DLL;
    }

    if (v1 == 1)
    {
      return 5459817;
    }
  }

  else
  {
    switch(v1)
    {
      case 3:
        return 1397716596;
      case 4:
        return 0x534F6863746177;
      case 7:
        return 0x534F6E6F69736976;
    }
  }

  return 0;
}

uint64_t sub_1D955B430()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t sub_1D955B478()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t sub_1D955B4D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C058C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
    v6 = sub_1D95C043C();
    __swift_destroy_boxed_opaque_existential_0(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D955B5A0(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95C05AC();
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1D95C046C();
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

unint64_t sub_1D955B638()
{
  result = qword_1ECB061A0;
  if (!qword_1ECB061A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB061A0);
  }

  return result;
}

unint64_t sub_1D955B690()
{
  result = qword_1ECB061A8;
  if (!qword_1ECB061A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB061A8);
  }

  return result;
}

uint64_t ManagedPackageLibrary.ManagedPackages.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D955B7C8, 0, 0);
}

uint64_t sub_1D955B7C8()
{
  v1 = v0[3];
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D955B8C4;
  v5 = v0[2];

  return (v7)(v5, 0, 0);
}

uint64_t sub_1D955B8C4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ManagedPackageLibrary.ManagedPackages.AsyncIterator.next(isolation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D955BACC;

  return v13(a1, a2, a3);
}

uint64_t sub_1D955BACC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D955BBC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D955BBE0, 0, 0);
}

uint64_t sub_1D955BBE0()
{
  v1 = v0[3];
  v2 = v1[1];
  v7 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D955C650;
  v5 = v0[2];

  return (v7)(v5, 0, 0);
}

uint64_t sub_1D955BCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v13 = (v8 + *v8);
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D955BDEC;

  return v13(a1, a2, a3);
}

uint64_t sub_1D955BDEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t ManagedPackageLibrary.ManagedPackages.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061B0, &qword_1D95C26F0);
  v2 = swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061B8, &qword_1D95C26F8);
  result = sub_1D95BFFEC();
  *a1 = &unk_1D95C2708;
  a1[1] = v2;
  return result;
}

uint64_t sub_1D955BF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061B0, &qword_1D95C26F0);
  v3[9] = swift_projectBox();
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_1D95BFF2C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D955C020, v5, v7);
}

uint64_t sub_1D955C020()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(MEMORY[0x1E69E8678] + 4);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1D955C0D4;
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  return MEMORY[0x1EEE6D9C8](v8, v6, v7, v4);
}

uint64_t sub_1D955C0D4()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  swift_endAccess();
  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D955C1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D955C654;

  return sub_1D955BF5C(a1, a2, a3);
}

unint64_t sub_1D955C294()
{
  result = qword_1ECB061C0;
  if (!qword_1ECB061C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB061C0);
  }

  return result;
}

uint64_t sub_1D955C2E8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061B0, &qword_1D95C26F0);
  v3 = swift_allocBox();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061B8, &qword_1D95C26F8);
  sub_1D95BFFEC();
  result = sub_1D955C540(v1);
  *a1 = &unk_1D95C27F8;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for ManagedPackageLibrary.ManagedPackages()
{
  result = qword_1ECB061C8;
  if (!qword_1ECB061C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D955C3DC()
{
  sub_1D955C448();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D955C448()
{
  if (!qword_1ECB061D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB061E0, &qword_1D95C27C0);
    v0 = sub_1D95C001C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB061D8);
    }
  }
}

uint64_t sub_1D955C4AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D955C4F4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D955C540(uint64_t a1)
{
  v2 = type metadata accessor for ManagedPackageLibrary.ManagedPackages();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D955C59C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D955BACC;

  return sub_1D955BF5C(a1, a2, a3);
}

uint64_t SyncXPCResult.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  SyncXPCResult.init()();
  return v3;
}

uint64_t SyncXPCResult.init()()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = sub_1D95C056C();
  (*(*(v5 - 8) + 56))(v0 + v1, 1, 1, v5);
  return v0;
}

uint64_t SyncXPCResult.setResult(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = sub_1D95C056C();
  v8 = sub_1D95C00CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19[-v14];
  v16 = *(v3 + 104);
  swift_beginAccess();
  (*(v9 + 16))(v15, v1 + v16, v8);
  v17 = *(v7 - 8);
  LODWORD(v3) = (*(v17 + 48))(v15, 1, v7);
  result = (*(v9 + 8))(v15, v8);
  if (v3 == 1)
  {
    (*(v17 + 16))(v13, a1, v7);
    (*(v17 + 56))(v13, 0, 1, v7);
    swift_beginAccess();
    (*(v9 + 40))(v1 + v16, v13, v8);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SyncXPCResult.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 96);
  v7 = sub_1D95C056C();
  v8 = sub_1D95C00CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *(v3 + 104);
  swift_beginAccess();
  (*(v9 + 16))(v12, v1 + v13, v8);
  v14 = *(v7 - 8);
  if ((*(v14 + 48))(v12, 1, v7) != 1)
  {
    return (*(v14 + 32))(a1, v12, v7);
  }

  (*(v9 + 8))(v12, v8);
  sub_1D955A9C4();
  swift_allocError();
  *v15 = 0;
  return swift_willThrow();
}

uint64_t SyncXPCResult.deinit()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  sub_1D95C056C();
  v5 = sub_1D95C00CC();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  return v0;
}

uint64_t SyncXPCResult.__deallocating_deinit()
{
  SyncXPCResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D955CCC4(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  sub_1D95C056C();
  result = sub_1D95C00CC();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t DDMPackageDeclarationStatusRequest.declarationKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DDMPackageDeclarationStatusRequest.send(to:)()
{
  return MEMORY[0x1EEE6DFA0](sub_1D955CE30, 0, 0);
}

{
  sub_1D955A9C4();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t sub_1D955CE30()
{
  sub_1D955A9C4();
  swift_allocError();
  *v1 = 3;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D955CF18()
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](0);
  return sub_1D95C055C();
}

uint64_t sub_1D955CF5C()
{
  sub_1D95C051C();
  MEMORY[0x1DA732B80](0);
  return sub_1D95C055C();
}

uint64_t sub_1D955CFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746172616C636564 && a2 == 0xEE0079654B6E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D955D050(uint64_t a1)
{
  v2 = sub_1D955D204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D955D08C(uint64_t a1)
{
  v2 = sub_1D955D204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DDMPackageDeclarationStatusRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061E8, &qword_1D95C2848);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955D204();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D955D204()
{
  result = qword_1ECB061F0;
  if (!qword_1ECB061F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB061F0);
  }

  return result;
}

uint64_t DDMPackageDeclarationStatusRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061F8, &qword_1D95C2850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955D204();
  sub_1D95C059C();
  if (!v2)
  {
    v11 = sub_1D95C029C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D955D3E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB061E8, &qword_1D95C2848);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D955D204();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1D955D520(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D955D57C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DDMPackageDeclarationStatusRequest.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DDMPackageDeclarationStatusRequest.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_1D955D6C8()
{
  result = qword_1ECB06200;
  if (!qword_1ECB06200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06200);
  }

  return result;
}

unint64_t sub_1D955D720()
{
  result = qword_1ECB06208;
  if (!qword_1ECB06208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06208);
  }

  return result;
}

unint64_t sub_1D955D778()
{
  result = qword_1ECB06210;
  if (!qword_1ECB06210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06210);
  }

  return result;
}

uint64_t CellularIdentity.defaultsKey.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

void sub_1D955D804()
{
  v0._object = 0x80000001D95D04F0;
  v0._countAndFlagsBits = 0xD000000000000014;
  CellularIdentity.init(simIdentity:isRoaming:)(v0, 0);
}

void __swiftcall CellularIdentity.init(simIdentity:isRoaming:)(Swift::String simIdentity, Swift::Bool isRoaming)
{
  object = simIdentity._object;
  countAndFlagsBits = simIdentity._countAndFlagsBits;
  v6 = v2;
  v7 = sub_1D95BFCEC();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D95BFCFC();
  v32 = *(v11 - 8);
  v33 = v11;
  v12 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D95BFDDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v20 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    if (qword_1ECB05B90 != -1)
    {
      swift_once();
    }

    v28 = byte_1ECB06218;
    v25 = qword_1ECB06220;
    v27 = unk_1ECB06228;
    v29 = qword_1ECB06230;
    object = unk_1ECB06238;

    goto LABEL_9;
  }

  v36 = isRoaming;

  sub_1D95BFDCC();
  v31 = countAndFlagsBits;
  v21 = sub_1D95BFDAC();
  v23 = v22;

  (*(v16 + 8))(v19, v15);
  if (v23 >> 60 != 15)
  {
    sub_1D955FA88(&qword_1ECB06240, MEMORY[0x1E6966688]);
    sub_1D95BFCDC();
    sub_1D955F8A8(v21, v23);
    sub_1D955F6C8(v21, v23);
    sub_1D955F8FC(v21, v23);
    sub_1D95BFCCC();
    (*(v34 + 8))(v10, v7);
    v24 = sub_1D955F214(v14);
    (*(v32 + 8))(v14, v33);
    v35 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05DE0, &qword_1D95C12B0);
    sub_1D955F910();
    v25 = sub_1D95BFD4C();
    v27 = v26;
    sub_1D955F8FC(v21, v23);

    v28 = v36;
    v29 = v31;
LABEL_9:
    *v6 = v28;
    *(v6 + 8) = v25;
    *(v6 + 16) = v27;
    *(v6 + 24) = v29;
    *(v6 + 32) = object;
    return;
  }

  __break(1u);
}

uint64_t static CellularIdentity.null.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECB05B90 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v2 = qword_1ECB06220;
  v1 = unk_1ECB06228;
  v3 = qword_1ECB06230;
  v4 = unk_1ECB06238;
  *a1 = byte_1ECB06218;
  *(a1 + 8) = v2;
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

uint64_t static CellularIdentity.current()(uint64_t a1)
{
  v1[19] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06250, &unk_1D95C2A30);
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D955DD4C, 0, 0);
}

uint64_t sub_1D955DD4C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];
  v1[23] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_1D955DF3C;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_1D955F98C(0, &qword_1ECB06258, 0x1E6965090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
  sub_1D95BFF3C();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1D955E374;
  v1[13] = &block_descriptor_1;
  [v7 getCurrentDataSubscriptionContext_];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D955DF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1D955E278;
  }

  else
  {
    v3 = sub_1D955E04C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D955E04C()
{
  v1 = v0[23];
  v2 = v0[18];
  v0[25] = v2;
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1D955E10C;
  v6 = v0[23];
  v7 = v0[19];

  return CellularIdentity.init(for:using:)(v7, v3, v6);
}

uint64_t sub_1D955E10C()
{
  v1 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D955E208, 0, 0);
}

uint64_t sub_1D955E208()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D955E278()
{
  v1 = v0[24];
  swift_willThrow();
  if (qword_1ECB05B90 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[19];
  v5 = byte_1ECB06218;
  v7 = qword_1ECB06220;
  v6 = unk_1ECB06228;
  v9 = qword_1ECB06230;
  v8 = unk_1ECB06238;

  *v4 = v5;
  *(v4 + 8) = v7;
  *(v4 + 16) = v6;
  *(v4 + 24) = v9;
  *(v4 + 32) = v8;
  v10 = v0[22];

  v11 = v0[1];

  return v11();
}

uint64_t CellularIdentity.init(for:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[38] = a2;
  v3[39] = a3;
  v3[37] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06260, &qword_1D95C2A48);
  v3[40] = v4;
  v5 = *(v4 - 8);
  v3[41] = v5;
  v6 = *(v5 + 64) + 15;
  v3[42] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06268, &qword_1D95C2A50);
  v3[43] = v7;
  v8 = *(v7 - 8);
  v3[44] = v8;
  v9 = *(v8 + 64) + 15;
  v3[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D955E4C0, 0, 0);
}

uint64_t sub_1D955E4C0()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 18;
  v5 = v0 + 34;
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[43];
  v9 = v1[39];
  v12 = v1[38];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_1D955E680;
  swift_continuation_init();
  v1[25] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 22);
  v1[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06030, &qword_1D95C2370);
  sub_1D95BFF3C();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1D955F0A4;
  v1[21] = &block_descriptor_4;
  [v9 copySIMIdentity:v12 completion:v4];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D955E680()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_1D955EB54;
  }

  else
  {
    v3 = sub_1D955E790;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D955E790()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v0 + 36;
  v13 = v0[46];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v1[38];
  v14 = v1[39];
  v9 = v1[35];
  v1[48] = v1[34];
  v1[49] = v9;
  v1[10] = v2;
  v1[15] = v4;
  v1[11] = sub_1D955E964;
  swift_continuation_init();
  v1[33] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 30);
  sub_1D955F98C(0, &qword_1ECB06270, 0x1E6964F88);
  v11 = v8;
  sub_1D95BFF3C();
  (*(v6 + 32))(boxed_opaque_existential_0, v5, v7);
  v1[26] = MEMORY[0x1E69E9820];
  v1[27] = 1107296256;
  v1[28] = sub_1D955F150;
  v1[29] = &block_descriptor_7;
  [v14 getDataStatus:v11 completion:?];
  (*(v6 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1D955E964()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 400) = v3;
  if (v3)
  {
    v4 = *(v1 + 392);

    v5 = sub_1D955EC64;
  }

  else
  {
    v5 = sub_1D955EA7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D955EA7C()
{
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[36];

  v6 = [v5 inHomeCountry] ^ 1;
  v7._countAndFlagsBits = v1;
  v7._object = v2;
  CellularIdentity.init(simIdentity:isRoaming:)(v7, v6);

  v8 = v0[45];
  v9 = v0[42];
  v10 = v0[37];
  *v10 = v13;
  *(v10 + 8) = v14;
  *(v10 + 24) = v15;
  *(v10 + 32) = v16;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D955EB54()
{
  v1 = v0[47];
  swift_willThrow();
  v2 = v0[47];
  if (qword_1ECB05B90 != -1)
  {
    swift_once();
  }

  v4 = v0[38];
  v3 = v0[39];
  v5 = byte_1ECB06218;
  v7 = qword_1ECB06220;
  v6 = unk_1ECB06228;
  v9 = qword_1ECB06230;
  v8 = unk_1ECB06238;

  v10 = v0[45];
  v11 = v0[42];
  v12 = v0[37];
  *v12 = v5;
  *(v12 + 8) = v7;
  *(v12 + 16) = v6;
  *(v12 + 24) = v9;
  *(v12 + 32) = v8;

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D955EC64()
{
  v1 = v0[50];
  v2 = v0[38];
  swift_willThrow();

  v3 = v0[50];
  if (qword_1ECB05B90 != -1)
  {
    swift_once();
  }

  v5 = v0[38];
  v4 = v0[39];
  v6 = byte_1ECB06218;
  v8 = qword_1ECB06220;
  v7 = unk_1ECB06228;
  v10 = qword_1ECB06230;
  v9 = unk_1ECB06238;

  v11 = v0[45];
  v12 = v0[42];
  v13 = v0[37];
  *v13 = v6;
  *(v13 + 8) = v8;
  *(v13 + 16) = v7;
  *(v13 + 24) = v10;
  *(v13 + 32) = v9;

  v14 = v0[1];

  return v14();
}

void static CellularIdentity.current()(uint64_t a1@<X8>)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E69650A0]) initWithQueue_];
  v14[0] = 0;
  v3 = [v2 getCurrentDataSubscriptionContextSync_];
  if (v3)
  {
    v4 = v3;
    v5 = v14[0];
    CellularIdentity.init(for:using:)(v2, v4, a1);
  }

  else
  {
    v6 = v14[0];
    v7 = sub_1D95BFAEC();

    swift_willThrow();
    if (qword_1ECB05B90 != -1)
    {
      swift_once();
    }

    v8 = byte_1ECB06218;
    v10 = qword_1ECB06220;
    v9 = unk_1ECB06228;
    v12 = qword_1ECB06230;
    v11 = unk_1ECB06238;

    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 16) = v9;
    *(a1 + 24) = v12;
    *(a1 + 32) = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

void CellularIdentity.init(for:using:)(id a1@<X1>, void *a2@<X0>, uint64_t a3@<X8>)
{
  v26[5] = *MEMORY[0x1E69E9840];
  v26[0] = 0;
  v6 = [a1 copySIMIdentity:a2 error:v26];
  v7 = v26[0];
  if (v6)
  {
    v8 = v6;
    v9 = sub_1D95BFD9C();
    v11 = v10;
    v12 = v7;

    v26[0] = 0;
    v13 = [a1 getDataStatus:a2 error:v26];
    if (v13)
    {
      v14 = v13;
      v15 = v26[0];
      v16 = [v14 inHomeCountry] ^ 1;
      v17._countAndFlagsBits = v9;
      v17._object = v11;
      CellularIdentity.init(simIdentity:isRoaming:)(v17, v16);

      v18 = v26[0];
      v20 = v26[1];
      v19 = v26[2];
      v22 = v26[3];
      v21 = v26[4];
      goto LABEL_9;
    }

    v23 = v26[0];
  }

  else
  {
    v23 = v26[0];
  }

  v24 = sub_1D95BFAEC();

  swift_willThrow();
  if (qword_1ECB05B90 != -1)
  {
    swift_once();
  }

  v18 = byte_1ECB06218;
  v20 = qword_1ECB06220;
  v19 = unk_1ECB06228;
  v22 = qword_1ECB06230;
  v21 = unk_1ECB06238;

LABEL_9:
  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v19;
  *(a3 + 24) = v22;
  *(a3 + 32) = v21;
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1D955F0A4(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06268, &qword_1D95C2A50);
    sub_1D95BFF4C();
  }

  else
  {
    sub_1D95BFD9C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06268, &qword_1D95C2A50);
    sub_1D95BFF5C();
  }
}

void sub_1D955F164(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v9 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_1D95BFF4C();
  }

  else if (a2)
  {
    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    sub_1D95BFF5C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D955F214(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D95BFCFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D955FA88(&qword_1ECB06278, MEMORY[0x1E69666B0]);
  v9 = sub_1D95BFE8C();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1D95AB8D4(0, v9 & ~(v9 >> 63), 0);
  v10 = v39;
  (*(v5 + 16))(v8, a1, v4);
  result = sub_1D95BFE7C();
  if ((v9 & 0x8000000000000000) == 0)
  {
    v12 = v38;
    if (v9)
    {
      v34 = v1;
      v13 = v37;
      *&v36 = *(v37 + 16);
      v35 = xmmword_1D95C2A10;
      v14 = v38;
      while (v36 != v14)
      {
        if (v12 < 0)
        {
          goto LABEL_21;
        }

        if (v14 >= *(v13 + 16))
        {
          goto LABEL_22;
        }

        v15 = *(v13 + 32 + v14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06280, &qword_1D95C2AD8);
        v16 = swift_allocObject();
        *(v16 + 16) = v35;
        *(v16 + 56) = MEMORY[0x1E69E7508];
        *(v16 + 64) = MEMORY[0x1E69E7558];
        *(v16 + 32) = v15;
        result = sub_1D95BFDBC();
        v39 = v10;
        v19 = *(v10 + 16);
        v18 = *(v10 + 24);
        if (v19 >= v18 >> 1)
        {
          v33 = result;
          v21 = v17;
          sub_1D95AB8D4((v18 > 1), v19 + 1, 1);
          v17 = v21;
          result = v33;
          v10 = v39;
        }

        *(v10 + 16) = v19 + 1;
        v20 = v10 + 16 * v19;
        *(v20 + 32) = result;
        *(v20 + 40) = v17;
        ++v14;
        if (!--v9)
        {
          v38 = v14;
          v2 = v34;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v14 = v38;
LABEL_12:
      v22 = v37;
      v23 = *(v37 + 16);
      if (v14 == v23)
      {
LABEL_13:

        return v10;
      }

      v36 = xmmword_1D95C2A10;
      while (v14 < v23)
      {
        v24 = v14 + 1;
        v25 = *(v22 + 32 + v14);
        v38 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06280, &qword_1D95C2AD8);
        v26 = swift_allocObject();
        *(v26 + 16) = v36;
        *(v26 + 56) = MEMORY[0x1E69E7508];
        *(v26 + 64) = MEMORY[0x1E69E7558];
        *(v26 + 32) = v25;
        result = sub_1D95BFDBC();
        v39 = v10;
        v29 = *(v10 + 16);
        v28 = *(v10 + 24);
        if (v29 >= v28 >> 1)
        {
          *&v35 = result;
          v31 = v2;
          v32 = v27;
          sub_1D95AB8D4((v28 > 1), v29 + 1, 1);
          v27 = v32;
          v2 = v31;
          result = v35;
          v10 = v39;
        }

        *(v10 + 16) = v29 + 1;
        v30 = v10 + 16 * v29;
        *(v30 + 32) = result;
        *(v30 + 40) = v27;
        v23 = *(v22 + 16);
        v14 = v38;
        if (v38 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t CellularIdentity.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  if (os_variant_has_internal_content())
  {
    sub_1D95C01BC();

    v6 = 0xD000000000000019;
    MEMORY[0x1DA732490](v3, v4);
    MEMORY[0x1DA732490](0x203D2079656B203BLL, 0xE800000000000000);
  }

  else
  {
    sub_1D95C01BC();

    v6 = 0xD00000000000002ALL;
  }

  MEMORY[0x1DA732490](v1, v2);
  MEMORY[0x1DA732490](62, 0xE100000000000000);
  return v6;
}

uint64_t sub_1D955F6C8(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1D95BFCEC();
      sub_1D955FA88(&qword_1ECB06240, MEMORY[0x1E6966688]);
      result = sub_1D95BFCBC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1D955FAD0(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D955F8A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1D955F8FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D955AA18(a1, a2);
  }

  return a1;
}

unint64_t sub_1D955F910()
{
  result = qword_1ECB06248;
  if (!qword_1ECB06248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB05DE0, &qword_1D95C12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06248);
  }

  return result;
}

uint64_t sub_1D955F98C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
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

uint64_t sub_1D955F9E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D955FA30(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1D955FA88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D955FAD0(uint64_t a1, uint64_t a2)
{
  result = sub_1D95BFA4C();
  if (!result || (result = sub_1D95BFA6C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D95BFA5C();
      sub_1D95BFCEC();
      sub_1D955FA88(&qword_1ECB06240, MEMORY[0x1E6966688]);
      return sub_1D95BFCBC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ManagedPackageLibrary.cancel(_:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D955FCB4, 0, 0);
}

uint64_t sub_1D955FCB4()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D955FDAC;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1D954B83C(1, v2, v3, sub_1D95A3578, 0);
}

uint64_t sub_1D955FDAC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1D955FF24;
  }

  else
  {
    v3 = sub_1D955FEC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D955FEC0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D955FF24()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t static ManagedPackageLibrary.appProgress.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06288, &unk_1D95C2AF0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06290, &unk_1D95C95A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21[-v11];
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8650], v0);
  sub_1D95BFF9C();
  (*(v1 + 8))(v4, v0);
  (*(v6 + 16))(v10, v12, v5);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06298, &qword_1D95C2B00);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + *(*v16 + 88), v10, v5);

  v17 = sub_1D95BFFAC();
  if (qword_1EDCFA1A0 != -1)
  {
    v17 = swift_once();
  }

  v18 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](v17);
  *&v21[-16] = v16;
  *&v21[-8] = v19;
  os_unfair_lock_lock(v18 + 26);
  sub_1D9560370(&v18[4]);
  os_unfair_lock_unlock(v18 + 26);

  return (*(v6 + 8))(v12, v5);
}

void sub_1D9560298(uint64_t a1)
{
  if (qword_1EDCFA1A0 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1EDCFA1A8 + OBJC_IVAR____TtC22ManagedAppDistribution9XPCClient_lockedStorage);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock(v1 + 26);
  sub_1D95603C8(&v1[4]);
  os_unfair_lock_unlock(v1 + 26);
}

uint64_t sub_1D9560370(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1D95A4AA0(a1);
}

uint64_t ManagedAppStatus.bundleID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ManagedAppStatus.bundleID.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ManagedAppStatus.declarationKey.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ManagedAppStatus.declarationKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ManagedAppStatus.reasons.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t ManagedAppStatus.name.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ManagedAppStatus.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ManagedAppStatus.purchaseMethod.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ManagedAppStatus(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t ManagedAppStatus.init(bundleID:declarationIdentifier:declarationKey:state:updateState:reasons:name:installedVersionInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12)
{
  v17 = *a7;
  v18 = *a8;
  *(a9 + 49) = 5;
  v19 = type metadata accessor for ManagedAppStatus(0);
  v20 = *(v19 + 44);
  v21 = type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v17;
  *(a9 + 49) = v18;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  result = sub_1D9560B9C(a12, a9 + v20, &qword_1ECB062A0, &unk_1D95C2B40);
  *(a9 + *(v19 + 48)) = 4;
  return result;
}

uint64_t sub_1D95608C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ManagedAppStatus.init(bundleID:declarationIdentifier:declarationKey:state:updateState:reasons:name:installedVersionInfo:purchaseMethod:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char *a13)
{
  v18 = *a7;
  v19 = *a8;
  v26 = *a13;
  *(a9 + 49) = 5;
  v20 = type metadata accessor for ManagedAppStatus(0);
  v21 = *(v20 + 44);
  v22 = type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0);
  (*(*(v22 - 8) + 56))(a9 + v21, 1, 1, v22);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v18;
  *(a9 + 49) = v19;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  result = sub_1D9560B9C(a12, a9 + v21, &qword_1ECB062A0, &unk_1D95C2B40);
  *(a9 + *(v20 + 48)) = v26;
  return result;
}

uint64_t ManagedAppStatus.InstalledVersionInfo.appleVersionID.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ManagedAppStatus.InstalledVersionInfo.appleVersionID.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ManagedAppStatus.InstalledVersionInfo.bundleVersion.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ManagedAppStatus.InstalledVersionInfo.bundleVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_1D9560B9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void __swiftcall ManagedAppStatus.InstalledVersionInfo.init(appleVersionID:bundleVersion:bundleShortVersion:)(Swift::UInt64_optional appleVersionID, Swift::String bundleVersion, Swift::String bundleShortVersion)
{
  object = bundleShortVersion._object;
  countAndFlagsBits = bundleShortVersion._countAndFlagsBits;
  v6 = bundleVersion._object;
  v7 = bundleVersion._countAndFlagsBits;
  is_nil = appleVersionID.is_nil;
  value = appleVersionID.value;
  v10 = v3;
  v11 = *(type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0) + 28);
  v12 = sub_1D95BFC9C();
  v13 = *(*(v12 - 8) + 56);
  (v13)((v12 - 8), v10 + v11, 1, 1, v12);
  *v10 = value;
  *(v10 + 8) = is_nil;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = countAndFlagsBits;
  *(v10 + 40) = object;
  sub_1D9547EAC(v10 + v11, &qword_1ECB05CC0, &qword_1D95C1200);

  v13(v10 + v11, 1, 1, v12);
}

uint64_t ManagedAppStatus.InstalledVersionInfo.init(appleVersionID:bundleVersion:bundleShortVersion:bundlePath:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0) + 28);
  v16 = sub_1D95BFC9C();
  v17 = *(v16 - 8);
  v20 = *(v17 + 56);
  v20(a8 + v15, 1, 1, v16);
  *a8 = a1;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  sub_1D9547EAC(a8 + v15, &qword_1ECB05CC0, &qword_1D95C1200);
  (*(v17 + 32))(a8 + v15, a7, v16);

  return (v20)(a8 + v15, 0, 1, v16);
}

unint64_t sub_1D9560EA0()
{
  v1 = 0x726556656C707061;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6150656C646E7562;
  }

  if (*v0)
  {
    v1 = 0x6556656C646E7562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9560F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D956409C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9560F70(uint64_t a1)
{
  v2 = sub_1D9562FD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9560FAC(uint64_t a1)
{
  v2 = sub_1D9562FD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppStatus.State.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C026C();

  v4 = 12;
  if (v2 < 0xC)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ManagedAppStatus.State.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v6 = 0x64656C696166;
    v7 = 0x6573657250746F6ELL;
    if (v1 != 10)
    {
      v7 = 0xD000000000000014;
    }

    if (v1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x696C6C6174736E69;
    v9 = 0xD000000000000015;
    if (v1 == 7)
    {
      v9 = 0x646567616E616DLL;
    }

    if (v1 != 6)
    {
      v8 = v9;
    }

    if (*v0 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6C616E6F6974706FLL;
    v3 = 0xD000000000000016;
    if (v1 != 4)
    {
      v3 = 0x64616F6C6E776F64;
    }

    if (v1 == 3)
    {
      v3 = 0xD000000000000011;
    }

    v4 = 0xD000000000000013;
    if (v1 == 1)
    {
      v4 = 0x646575657571;
    }

    if (*v0)
    {
      v2 = v4;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D9561238@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ManagedAppStatus.State.init(rawValue:)(a1);
}

unint64_t sub_1D9561244@<X0>(unint64_t *a1@<X8>)
{
  result = ManagedAppStatus.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ManagedAppStatus.Reason.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C026C();

  v4 = 14;
  if (v2 < 0xE)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ManagedAppStatus.Reason.rawValue.getter()
{
  result = 0x7070416E41746F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      return result;
    case 5:
      result = 0x6F70707553746F6ELL;
      break;
    case 6:
      result = 0x4E65736E6563696CLL;
      break;
    case 7:
      result = 0x64616F6C6E776F64;
      break;
    case 8:
      result = 0x466C6C6174736E69;
      break;
    case 9:
      result = 0x656A655272657375;
      break;
    case 0xA:
      result = 0x7641657461647075;
      break;
    case 0xB:
      result = 0x6146657461647075;
      break;
    case 0xC:
      result = 0x6D65747379537369;
      break;
    case 0xD:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_1D95614CC(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D95C041C();
  }

  return v11 & 1;
}

uint64_t sub_1D956158C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = sub_1D95C051C();
  a3(v6);
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D9561614(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  sub_1D95BFE1C();
}

uint64_t sub_1D9561694(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_1D95C051C();
  a4(v7);
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D9561700@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ManagedAppStatus.Reason.init(rawValue:)(a1);
}

unint64_t sub_1D956170C@<X0>(unint64_t *a1@<X8>)
{
  result = ManagedAppStatus.Reason.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ManagedAppStatus.UpdateState.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D95C026C();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t ManagedAppStatus.UpdateState.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C62616C69617661;
  v3 = 0xD000000000000017;
  v4 = 0x676E697461647075;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D956183C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x4449656C646E7562;
    v6 = 0x746172616C636564;
    if (a1 != 2)
    {
      v6 = 0x6574617473;
    }

    if (a1)
    {
      v5 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1701667182;
    v2 = 0xD000000000000014;
    if (a1 != 7)
    {
      v2 = 0x6573616863727570;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7453657461647075;
    if (a1 != 4)
    {
      v3 = 0x736E6F73616572;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D9561984()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D9561A78()
{
  *v0;
  *v0;
  *v0;
  sub_1D95BFE1C();
}

uint64_t sub_1D9561B58()
{
  v1 = *v0;
  sub_1D95C051C();
  sub_1D95BFE1C();

  return sub_1D95C055C();
}

uint64_t sub_1D9561C48@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return ManagedAppStatus.UpdateState.init(rawValue:)(a1);
}

void sub_1D9561C54(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6C62616C69617661;
  v5 = 0x80000001D95CFE90;
  v6 = 0xD000000000000017;
  v7 = 0xE800000000000000;
  v8 = 0x676E697461647075;
  if (v2 != 3)
  {
    v8 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001D95CFE70;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1D9561D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9564220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9561D40(uint64_t a1)
{
  v2 = sub_1D9562160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9561D7C(uint64_t a1)
{
  v2 = sub_1D9562160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppStatus.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB062A8, &qword_1D95C2B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9562160();
  sub_1D95C05BC();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_1D95C038C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    sub_1D95C038C();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v22) = 2;
    sub_1D95C038C();
    LOBYTE(v22) = *(v3 + 48);
    v23 = 3;
    sub_1D95621B4();
    sub_1D95C03CC();
    LOBYTE(v22) = *(v3 + 49);
    v23 = 4;
    sub_1D9562208();
    sub_1D95C036C();
    v22 = v3[7];
    v23 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB062C8, &qword_1D95C2B58);
    sub_1D95629E8(&qword_1ECB062D0, sub_1D956225C);
    sub_1D95C03CC();
    v17 = v3[8];
    v18 = v3[9];
    LOBYTE(v22) = 6;
    sub_1D95C038C();
    v19 = type metadata accessor for ManagedAppStatus(0);
    v20 = *(v19 + 44);
    LOBYTE(v22) = 7;
    type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0);
    sub_1D9562AB4(&qword_1ECB062E0, type metadata accessor for ManagedAppStatus.InstalledVersionInfo);
    sub_1D95C036C();
    LOBYTE(v22) = *(v3 + *(v19 + 48));
    v23 = 8;
    sub_1D95622B0();
    sub_1D95C036C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9562160()
{
  result = qword_1ECB062B0;
  if (!qword_1ECB062B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB062B0);
  }

  return result;
}

unint64_t sub_1D95621B4()
{
  result = qword_1ECB062B8;
  if (!qword_1ECB062B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB062B8);
  }

  return result;
}

unint64_t sub_1D9562208()
{
  result = qword_1ECB062C0;
  if (!qword_1ECB062C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB062C0);
  }

  return result;
}

unint64_t sub_1D956225C()
{
  result = qword_1ECB062D8;
  if (!qword_1ECB062D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB062D8);
  }

  return result;
}

unint64_t sub_1D95622B0()
{
  result = qword_1ECB062E8;
  if (!qword_1ECB062E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB062E8);
  }

  return result;
}

uint64_t ManagedAppStatus.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB062A0, &unk_1D95C2B40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB062F0, &qword_1D95C2B60);
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for ManagedAppStatus(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[49] = 5;
  v14 = *(v11 + 44);
  v15 = type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0);
  v16 = *(*(v15 - 8) + 56);
  v37 = v14;
  v17 = v13;
  v16(&v13[v14], 1, 1, v15);
  v19 = a1[3];
  v18 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v19);
  sub_1D9562160();
  v20 = v36;
  sub_1D95C059C();
  if (v20)
  {
    v23 = v37;
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_1D9547EAC(v17 + v23, &qword_1ECB062A0, &unk_1D95C2B40);
  }

  else
  {
    v36 = v9;
    v22 = v34;
    v21 = v35;
    LOBYTE(v39) = 0;
    *v17 = sub_1D95C02CC();
    *(v17 + 8) = v24;
    LOBYTE(v39) = 1;
    v25 = sub_1D95C02CC();
    v26 = v37;
    *(v17 + 16) = v25;
    *(v17 + 24) = v27;
    LOBYTE(v39) = 2;
    *(v17 + 32) = sub_1D95C02CC();
    *(v17 + 40) = v28;
    v40 = 3;
    sub_1D9562940();
    sub_1D95C030C();
    *(v17 + 48) = v39;
    v40 = 4;
    sub_1D9562994();
    sub_1D95C02AC();
    *(v17 + 49) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB062C8, &qword_1D95C2B58);
    v40 = 5;
    sub_1D95629E8(&qword_1ECB06308, sub_1D9562A60);
    sub_1D95C030C();
    *(v17 + 56) = v39;
    LOBYTE(v39) = 6;
    v29 = sub_1D95C02CC();
    v32 = 0;
    *(v17 + 64) = v29;
    *(v17 + 72) = v30;
    LOBYTE(v39) = 7;
    sub_1D9562AB4(&qword_1ECB06318, type metadata accessor for ManagedAppStatus.InstalledVersionInfo);
    sub_1D95C02AC();
    sub_1D9560B9C(v6, v17 + v26, &qword_1ECB062A0, &unk_1D95C2B40);
    v40 = 8;
    sub_1D9562AFC();
    sub_1D95C02AC();
    (*(v22 + 8))(0, v21);
    *(v17 + *(v36 + 48)) = v39;
    sub_1D956341C(v17, v33, type metadata accessor for ManagedAppStatus);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return sub_1D9563484(v17, type metadata accessor for ManagedAppStatus);
  }
}

unint64_t sub_1D9562940()
{
  result = qword_1ECB062F8;
  if (!qword_1ECB062F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB062F8);
  }

  return result;
}

unint64_t sub_1D9562994()
{
  result = qword_1ECB06300;
  if (!qword_1ECB06300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06300);
  }

  return result;
}

uint64_t sub_1D95629E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB062C8, &qword_1D95C2B58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9562A60()
{
  result = qword_1ECB06310;
  if (!qword_1ECB06310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06310);
  }

  return result;
}

uint64_t sub_1D9562AB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9562AFC()
{
  result = qword_1ECB06320;
  if (!qword_1ECB06320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06320);
  }

  return result;
}

uint64_t ManagedAppStatus.InstalledVersionInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06328, &qword_1D95C2B68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9562FD0();
  sub_1D95C05BC();
  v11 = *v3;
  v12 = *(v3 + 8);
  v19[15] = 0;
  sub_1D95C037C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v19[14] = 1;
    sub_1D95C038C();
    v15 = v3[4];
    v16 = v3[5];
    v19[13] = 2;
    sub_1D95C038C();
    v17 = *(type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0) + 28);
    v19[12] = 3;
    sub_1D95BFC9C();
    sub_1D9562AB4(&qword_1ECB05E18, MEMORY[0x1E69E83A8]);
    sub_1D95C036C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D9562FD0()
{
  result = qword_1ECB06330;
  if (!qword_1ECB06330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06330);
  }

  return result;
}

uint64_t ManagedAppStatus.InstalledVersionInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05CC0, &qword_1D95C1200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06338, &qword_1D95C2B70);
  v32 = *(v34 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v30 - v9;
  v11 = type metadata accessor for ManagedAppStatus.InstalledVersionInfo(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 36);
  v17 = sub_1D95BFC9C();
  v18 = *(*(v17 - 8) + 56);
  v35 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9562FD0();
  sub_1D95C059C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1D9547EAC(&v15[v35], &qword_1ECB05CC0, &qword_1D95C1200);
  }

  v21 = v32;
  v20 = v33;
  v39 = 0;
  v22 = v34;
  *v15 = sub_1D95C02BC();
  v15[8] = v23 & 1;
  v38 = 1;
  *(v15 + 2) = sub_1D95C02CC();
  *(v15 + 3) = v25;
  v37 = 2;
  v26 = sub_1D95C02CC();
  v31 = 0;
  *(v15 + 4) = v26;
  *(v15 + 5) = v27;
  v36 = 3;
  sub_1D9562AB4(&qword_1ECB05E90, MEMORY[0x1E69E83A8]);
  v30 = v7;
  v28 = v31;
  sub_1D95C02AC();
  (*(v21 + 8))(v10, v22);
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v29 = *(v15 + 3);

    return sub_1D9547EAC(&v15[v35], &qword_1ECB05CC0, &qword_1D95C1200);
  }

  sub_1D9560B9C(v30, &v15[v35], &qword_1ECB05CC0, &qword_1D95C1200);
  sub_1D956341C(v15, v20, type metadata accessor for ManagedAppStatus.InstalledVersionInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D9563484(v15, type metadata accessor for ManagedAppStatus.InstalledVersionInfo);
}

uint64_t sub_1D956341C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9563484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D95634E8()
{
  result = qword_1ECB06340;
  if (!qword_1ECB06340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06340);
  }

  return result;
}

unint64_t sub_1D9563540()
{
  result = qword_1ECB06348;
  if (!qword_1ECB06348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06348);
  }

  return result;
}

unint64_t sub_1D9563598()
{
  result = qword_1ECB06350;
  if (!qword_1ECB06350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06350);
  }

  return result;
}

void sub_1D9563644()
{
  sub_1D9563898(319, &qword_1ECB06368, &type metadata for ManagedAppStatus.UpdateState, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D9563898(319, &qword_1ECB06370, &type metadata for ManagedAppStatus.Reason, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1D95638E8(319, &qword_1ECB06378, type metadata accessor for ManagedAppStatus.InstalledVersionInfo);
      if (v2 <= 0x3F)
      {
        sub_1D9563898(319, &qword_1ECB06380, &type metadata for DDMPurchaseMethod, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D95637C4()
{
  sub_1D9563898(319, &qword_1EDCF9AF8, MEMORY[0x1E69E76D8], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1D95638E8(319, &qword_1EDCF9B30, MEMORY[0x1E69E83A8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9563898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D95638E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D95C00CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ManagedAppStatus.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedAppStatus.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppStatus.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedAppStatus.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppStatus.InstalledVersionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ManagedAppStatus.InstalledVersionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ManagedAppStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ManagedAppStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D9563E90()
{
  result = qword_1ECB06398;
  if (!qword_1ECB06398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06398);
  }

  return result;
}

unint64_t sub_1D9563EE8()
{
  result = qword_1ECB063A0;
  if (!qword_1ECB063A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063A0);
  }

  return result;
}

unint64_t sub_1D9563F40()
{
  result = qword_1ECB063A8;
  if (!qword_1ECB063A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063A8);
  }

  return result;
}

unint64_t sub_1D9563F98()
{
  result = qword_1ECB063B0;
  if (!qword_1ECB063B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063B0);
  }

  return result;
}

unint64_t sub_1D9563FF0()
{
  result = qword_1ECB063B8;
  if (!qword_1ECB063B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063B8);
  }

  return result;
}

unint64_t sub_1D9564048()
{
  result = qword_1ECB063C0;
  if (!qword_1ECB063C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063C0);
  }

  return result;
}

uint64_t sub_1D956409C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6556656C646E7562 && a2 == 0xED00006E6F697372 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D95D05C0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9564220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746172616C636564 && a2 == 0xEE0079654B6E6F69 || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7453657461647075 && a2 == 0xEB00000000657461 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F73616572 && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D95D05A0 == a2 || (sub_1D95C041C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6573616863727570 && a2 == 0xEE00646F6874654DLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D95C041C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1D9564520()
{
  result = qword_1ECB063C8;
  if (!qword_1ECB063C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063C8);
  }

  return result;
}

unint64_t sub_1D9564574()
{
  result = qword_1ECB063D0;
  if (!qword_1ECB063D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063D0);
  }

  return result;
}

unint64_t sub_1D95645C8()
{
  result = qword_1ECB063D8;
  if (!qword_1ECB063D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063D8);
  }

  return result;
}

uint64_t sub_1D956462C(uint64_t a1)
{
  v2 = sub_1D9567300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9564668(uint64_t a1)
{
  v2 = sub_1D9567300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95646A4()
{
  v1 = 0x6F6C6E776F646572;
  if (*v0 != 1)
  {
    v1 = 0x657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C62616C69617661;
  }
}

uint64_t sub_1D9564704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95686C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D956472C(uint64_t a1)
{
  v2 = sub_1D9567204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9564768(uint64_t a1)
{
  v2 = sub_1D9567204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95647A4(uint64_t a1)
{
  v2 = sub_1D95672AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95647E0(uint64_t a1)
{
  v2 = sub_1D95672AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D956481C(uint64_t a1)
{
  v2 = sub_1D9567258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9564858(uint64_t a1)
{
  v2 = sub_1D9567258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppState.Availability.hashValue.getter()
{
  v1 = *v0;
  sub_1D95C051C();
  MEMORY[0x1DA732B80](v1);
  return sub_1D95C055C();
}

uint64_t AppState.description.getter()
{
  v1 = sub_1D95BFB5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D95BFC2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB063E0, &qword_1D95C3220);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = *v0;
  v17 = *v0 >> 61;
  if (v17 <= 1)
  {
    if (!v17)
    {
      v21 = *(v16 + 16);
      if (!v21)
      {
        return 0x6C62616C69617641;
      }

      if (v21 == 1)
      {
        return 0x6F6C6E776F646552;
      }

      return 0x657461647055;
    }

    v24 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_1D95C01BC();

    strcpy(v30, "Downloading (");
    HIWORD(v30[1]) = -4864;
    v27 = v24;
LABEL_14:
    sub_1D95BFBFC();
    sub_1D9564DB8();
    sub_1D95BFB2C();
    sub_1D95BFB4C();
    MEMORY[0x1DA732190](v5, v8);
    (*(v2 + 8))(v5, v1);
    v25 = *(v9 + 8);
    v25(v13, v8);
    sub_1D9564E0C();
    sub_1D95BFD0C();
    v25(v15, v8);
    MEMORY[0x1DA732490](v28, v29);

    MEMORY[0x1DA732490](41, 0xE100000000000000);
    return v30[0];
  }

  if (v17 == 2)
  {
    v23 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    strcpy(v30, "Installing (");
    BYTE5(v30[1]) = 0;
    HIWORD(v30[1]) = -5120;
    v27 = v23;
    goto LABEL_14;
  }

  if (v17 == 3)
  {
    v18 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    sub_1D953FCB8(v18);
    sub_1D95C01BC();

    v30[0] = 0xD000000000000010;
    v30[1] = 0x80000001D95D05E0;
    v28 = v18;
    v20 = AppState.description.getter(v19);
    MEMORY[0x1DA732490](v20);

    sub_1D9564D80(v18);
    return v30[0];
  }

  if (v16 == 0x8000000000000000)
  {
    return 0x656C6C6174736E49;
  }

  if (v16 == 0x8000000000000008)
  {
    return 0x646567616E614DLL;
  }

  return 0x676E6974696157;
}

unint64_t sub_1D9564D80(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 >= 2)
    {
      return result;
    }
  }

  if (v1 == 2 || v1 == 3)
  {
  }

  return result;
}

unint64_t sub_1D9564DB8()
{
  result = qword_1ECB063E8;
  if (!qword_1ECB063E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063E8);
  }

  return result;
}

unint64_t sub_1D9564E0C()
{
  result = qword_1ECB063F0;
  if (!qword_1ECB063F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB063E0, &qword_1D95C3220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB063F0);
  }

  return result;
}

uint64_t sub_1D9564E7C(uint64_t a1)
{
  v2 = sub_1D9566D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9564EB8(uint64_t a1)
{
  v2 = sub_1D9566D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9564EF4()
{
  v1 = *v0;
  v2 = 0x6C62616C69617661;
  v3 = 0x646567616E616DLL;
  if (v1 != 5)
  {
    v3 = 0x676E6974696177;
  }

  v4 = 0x646573756170;
  if (v1 != 3)
  {
    v4 = 0x656C6C6174736E69;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x64616F6C6E776F64;
  if (v1 != 1)
  {
    v5 = 0x696C6C6174736E69;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D9564FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D95687E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9565010(uint64_t a1)
{
  v2 = sub_1D9566AA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956504C(uint64_t a1)
{
  v2 = sub_1D9566AA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9565088(uint64_t a1)
{
  v2 = sub_1D9566CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95650C4(uint64_t a1)
{
  v2 = sub_1D9566CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9565100(uint64_t a1)
{
  v2 = sub_1D9566BA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956513C(uint64_t a1)
{
  v2 = sub_1D9566BA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9565178(uint64_t a1)
{
  v2 = sub_1D9566CA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D95651B4(uint64_t a1)
{
  v2 = sub_1D9566CA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D95651F0(uint64_t a1)
{
  v2 = sub_1D9566B50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956522C(uint64_t a1)
{
  v2 = sub_1D9566B50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9565268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D95C041C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D95652E8(uint64_t a1)
{
  v2 = sub_1D9566BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9565324(uint64_t a1)
{
  v2 = sub_1D9566BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9565360(uint64_t a1)
{
  v2 = sub_1D9566AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D956539C(uint64_t a1)
{
  v2 = sub_1D9566AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AppState.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 1)
  {
    if (!v4)
    {
      if (!(v3 >> 61))
      {
        v7 = *(v2 + 16);
        v8 = *(v3 + 16);
        sub_1D953FCB8(*a2);
        sub_1D953FCB8(v2);
        sub_1D9564D80(v2);
        sub_1D9564D80(v3);
        v6 = v7 == v8;
        return v6 & 1;
      }

      goto LABEL_22;
    }

    if (v3 >> 61 != 1)
    {
      goto LABEL_22;
    }

LABEL_16:
    v10 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1D953FCB8(*a2);
    sub_1D953FCB8(v2);
    sub_1D9564D80(v2);
    sub_1D9564D80(v3);
    v6 = v10 == v11;
    return v6 & 1;
  }

  if (v4 == 2)
  {
    if (v3 >> 61 != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v4 != 3)
  {
    if (v2 == 0x8000000000000000)
    {
      if (v3 != 0x8000000000000000)
      {
        goto LABEL_22;
      }

      sub_1D9564D80(0x8000000000000000);
      v9 = 0x8000000000000000;
    }

    else if (v2 == 0x8000000000000008)
    {
      if (v3 != 0x8000000000000008)
      {
        goto LABEL_22;
      }

      sub_1D9564D80(0x8000000000000008);
      v9 = 0x8000000000000008;
    }

    else
    {
      if (v3 != 0x8000000000000010)
      {
        goto LABEL_22;
      }

      sub_1D9564D80(0x8000000000000010);
      v9 = 0x8000000000000010;
    }

    sub_1D9564D80(v9);
    v6 = 1;
    return v6 & 1;
  }

  if (v3 >> 61 != 3)
  {
LABEL_22:
    sub_1D953FCB8(*a2);
    sub_1D953FCB8(v2);
    sub_1D9564D80(v2);
    sub_1D9564D80(v3);
    v6 = 0;
    return v6 & 1;
  }

  v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = v5;
  sub_1D953FCB8(v3);
  sub_1D953FCB8(v2);
  v6 = static AppState.== infix(_:_:)(&v14, &v13);
  sub_1D9564D80(v2);
  sub_1D9564D80(v3);
  return v6 & 1;
}

unint64_t AppState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB063F8, &qword_1D95C3228);
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06400, &qword_1D95C3230);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06408, &qword_1D95C3238);
  v59 = *(v10 - 8);
  v60 = v10;
  v11 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06410, &qword_1D95C3240);
  v71 = *(v13 - 8);
  v72 = v13;
  v14 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06418, &qword_1D95C3248);
  v68 = *(v16 - 8);
  v69 = v16;
  v17 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06420, &qword_1D95C3250);
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06428, &qword_1D95C3258);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v57 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06430, &qword_1D95C3260);
  v76 = *(v27 - 8);
  v77 = v27;
  v28 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v57 - v29;
  v31 = *v2;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9566AA8();
  v75 = v30;
  sub_1D95C05BC();
  v33 = v31 >> 61;
  if ((v31 >> 61) <= 1)
  {
    v41 = v73;
    v40 = v74;
    if (!v33)
    {
      v42 = *(v31 + 16);
      LOBYTE(v78) = 0;
      sub_1D9566D48();
      v43 = v77;
      v44 = v75;
      sub_1D95C034C();
      LOBYTE(v78) = v42;
      sub_1D9566D9C();
      sub_1D95C03CC();
      (*(v41 + 8))(v26, v23);
      return (*(v76 + 8))(v44, v43);
    }

    v55 = v19;
    v56 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v78) = 1;
    sub_1D9566CF4();
    v47 = v77;
    v48 = v75;
    sub_1D95C034C();
    sub_1D95C03AC();
    (*(v40 + 8))(v22, v55);
    return (*(v76 + 8))(v48, v47);
  }

  if (v33 == 2)
  {
    v45 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v78) = 2;
    sub_1D9566CA0();
    v46 = v67;
    v47 = v77;
    v48 = v75;
    sub_1D95C034C();
    v49 = v69;
    sub_1D95C03AC();
    (*(v68 + 8))(v46, v49);
    return (*(v76 + 8))(v48, v47);
  }

  if (v33 == 3)
  {
    v34 = *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    LOBYTE(v78) = 3;
    sub_1D953FCB8(v34);
    sub_1D9566BF8();
    v35 = v70;
    v36 = v77;
    v37 = v75;
    sub_1D95C034C();
    v78 = v34;
    sub_1D9566C4C();
    v38 = v72;
    sub_1D95C03CC();
    (*(v71 + 8))(v35, v38);
    (*(v76 + 8))(v37, v36);
    return sub_1D9564D80(v34);
  }

  else
  {
    if (v31 == 0x8000000000000000)
    {
      LOBYTE(v78) = 4;
      sub_1D9566BA4();
      v50 = v58;
      v51 = v77;
      v52 = v75;
      sub_1D95C034C();
      v54 = v59;
      v53 = v60;
    }

    else if (v31 == 0x8000000000000008)
    {
      LOBYTE(v78) = 5;
      sub_1D9566B50();
      v50 = v61;
      v51 = v77;
      v52 = v75;
      sub_1D95C034C();
      v54 = v62;
      v53 = v63;
    }

    else
    {
      LOBYTE(v78) = 6;
      sub_1D9566AFC();
      v50 = v64;
      v51 = v77;
      v52 = v75;
      sub_1D95C034C();
      v54 = v65;
      v53 = v66;
    }

    (*(v54 + 8))(v50, v53);
    return (*(v76 + 8))(v52, v51);
  }
}

uint64_t AppState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v88 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06488, &qword_1D95C3268);
  v76 = *(v84 - 8);
  v3 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v90 = &v69 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06490, &qword_1D95C3270);
  v83 = *(v81 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v89 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06498, &qword_1D95C3278);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v69 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064A0, &qword_1D95C3280);
  v80 = *(v82 - 8);
  v11 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v69 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064A8, &qword_1D95C3288);
  v75 = *(v77 - 8);
  v13 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v85 = &v69 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064B0, &qword_1D95C3290);
  v73 = *(v74 - 8);
  v15 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064B8, &qword_1D95C3298);
  v72 = *(v18 - 8);
  v19 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064C0, &unk_1D95C32A0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v69 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v27);
  sub_1D9566AA8();
  v29 = v92;
  sub_1D95C059C();
  if (v29)
  {
    goto LABEL_9;
  }

  v30 = v21;
  v70 = v18;
  v32 = v89;
  v31 = v90;
  v71 = v23;
  v92 = v26;
  v33 = sub_1D95C032C();
  v34 = (2 * *(v33 + 16)) | 1;
  v94 = v33;
  v95 = v33 + 32;
  v96 = 0;
  v97 = v34;
  v35 = sub_1D95420E0();
  if (v35 == 7 || v96 != v97 >> 1)
  {
    v43 = sub_1D95C01FC();
    swift_allocError();
    v45 = v44;
    v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
    *v45 = &type metadata for AppState;
    v47 = v92;
    sub_1D95C028C();
    sub_1D95C01EC();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v71 + 8))(v47, v22);
    swift_unknownObjectRelease();
LABEL_9:
    v48 = v91;
    return __swift_destroy_boxed_opaque_existential_0(v48);
  }

  if (v35 <= 2u)
  {
    if (v35)
    {
      if (v35 == 1)
      {
        v93 = 1;
        sub_1D9566CF4();
        v50 = v17;
        sub_1D95C027C();
        v51 = swift_allocObject();
        v52 = v74;
        sub_1D95C02EC();
        v53 = (v71 + 8);
        v65 = v64;
        (*(v73 + 8))(v50, v52);
        (*v53)(v92, v22);
        swift_unknownObjectRelease();
        *(v51 + 16) = v65;
        v68 = v51 | 0x2000000000000000;
      }

      else
      {
        v93 = 2;
        sub_1D9566CA0();
        v58 = v85;
        v59 = v92;
        sub_1D95C027C();
        v61 = swift_allocObject();
        v62 = v77;
        sub_1D95C02EC();
        v63 = (v71 + 8);
        v67 = v66;
        (*(v75 + 8))(v58, v62);
        (*v63)(v59, v22);
        swift_unknownObjectRelease();
        *(v61 + 16) = v67;
        v68 = v61 | 0x4000000000000000;
      }
    }

    else
    {
      v93 = 0;
      sub_1D9566D48();
      v56 = v92;
      sub_1D95C027C();
      v68 = swift_allocObject();
      sub_1D9566E44();
      v57 = v70;
      sub_1D95C030C();
      (*(v72 + 8))(v30, v57);
      (*(v71 + 8))(v56, v22);
      swift_unknownObjectRelease();
    }

    v48 = v91;
    v36 = v88;
  }

  else
  {
    v36 = v88;
    if (v35 > 4u)
    {
      v54 = v92;
      v55 = v71;
      if (v35 == 5)
      {
        v93 = 5;
        sub_1D9566B50();
        sub_1D95C027C();
        v68 = 0x8000000000000008;
        (*(v83 + 8))(v32, v81);
        (*(v55 + 8))(v54, v22);
        swift_unknownObjectRelease();
      }

      else
      {
        v93 = 6;
        sub_1D9566AFC();
        sub_1D95C027C();
        (*(v76 + 8))(v31, v84);
        (*(v55 + 8))(v54, v22);
        swift_unknownObjectRelease();
        v68 = 0x8000000000000010;
      }

      v48 = v91;
    }

    else
    {
      v37 = v88;
      v38 = v92;
      v39 = v71;
      if (v35 == 3)
      {
        v93 = 3;
        sub_1D9566BF8();
        v40 = v87;
        sub_1D95C027C();
        v41 = swift_allocObject();
        sub_1D9566DF0();
        v42 = v82;
        sub_1D95C030C();
        (*(v80 + 8))(v40, v42);
        (*(v39 + 8))(v38, v22);
        swift_unknownObjectRelease();
        v68 = v41 | 0x6000000000000000;
      }

      else
      {
        v93 = 4;
        sub_1D9566BA4();
        v60 = v86;
        sub_1D95C027C();
        (*(v79 + 8))(v60, v78);
        (*(v39 + 8))(v38, v22);
        swift_unknownObjectRelease();
        v68 = 0x8000000000000000;
      }

      v48 = v91;
      v36 = v37;
    }
  }

  *v36 = v68;
  return __swift_destroy_boxed_opaque_existential_0(v48);
}

unint64_t sub_1D9566AA8()
{
  result = qword_1ECB06438;
  if (!qword_1ECB06438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06438);
  }

  return result;
}

unint64_t sub_1D9566AFC()
{
  result = qword_1ECB06440;
  if (!qword_1ECB06440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06440);
  }

  return result;
}

unint64_t sub_1D9566B50()
{
  result = qword_1ECB06448;
  if (!qword_1ECB06448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06448);
  }

  return result;
}

unint64_t sub_1D9566BA4()
{
  result = qword_1ECB06450;
  if (!qword_1ECB06450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06450);
  }

  return result;
}

unint64_t sub_1D9566BF8()
{
  result = qword_1ECB06458;
  if (!qword_1ECB06458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06458);
  }

  return result;
}

unint64_t sub_1D9566C4C()
{
  result = qword_1ECB06460;
  if (!qword_1ECB06460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06460);
  }

  return result;
}

unint64_t sub_1D9566CA0()
{
  result = qword_1ECB06468;
  if (!qword_1ECB06468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06468);
  }

  return result;
}

unint64_t sub_1D9566CF4()
{
  result = qword_1ECB06470;
  if (!qword_1ECB06470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06470);
  }

  return result;
}

unint64_t sub_1D9566D48()
{
  result = qword_1ECB06478;
  if (!qword_1ECB06478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06478);
  }

  return result;
}

unint64_t sub_1D9566D9C()
{
  result = qword_1ECB06480;
  if (!qword_1ECB06480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06480);
  }

  return result;
}

unint64_t sub_1D9566DF0()
{
  result = qword_1ECB064C8;
  if (!qword_1ECB064C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB064C8);
  }

  return result;
}

unint64_t sub_1D9566E44()
{
  result = qword_1ECB064D0;
  if (!qword_1ECB064D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB064D0);
  }

  return result;
}

uint64_t AppState.Availability.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064D8, &qword_1D95C32B0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064E0, &qword_1D95C32B8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064E8, &qword_1D95C32C0);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB064F0, &qword_1D95C32C8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D9567204();
  sub_1D95C05BC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1D95672AC();
      v12 = v26;
      sub_1D95C034C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1D9567258();
      v12 = v29;
      sub_1D95C034C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1D9567300();
    sub_1D95C034C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1D9567204()
{
  result = qword_1ECB064F8;
  if (!qword_1ECB064F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB064F8);
  }

  return result;
}

unint64_t sub_1D9567258()
{
  result = qword_1ECB06500;
  if (!qword_1ECB06500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06500);
  }

  return result;
}

unint64_t sub_1D95672AC()
{
  result = qword_1ECB06508;
  if (!qword_1ECB06508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06508);
  }

  return result;
}

unint64_t sub_1D9567300()
{
  result = qword_1ECB06510;
  if (!qword_1ECB06510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06510);
  }

  return result;
}

uint64_t AppState.Availability.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06518, &qword_1D95C32D0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06520, &qword_1D95C32D8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06528, &qword_1D95C32E0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06530, &qword_1D95C32E8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_1D9567204();
  v20 = v43;
  sub_1D95C059C();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1D95C032C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1D954A26C();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1D95C01FC();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB05D48, &qword_1D95C4250) + 48);
      *v30 = &type metadata for AppState.Availability;
      sub_1D95C028C();
      sub_1D95C01EC();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1D95672AC();
          sub_1D95C027C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1D9567258();
          v33 = v22;
          sub_1D95C027C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1D9567300();
        sub_1D95C027C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

unint64_t sub_1D95678C8()
{
  result = qword_1ECB06538;
  if (!qword_1ECB06538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06538);
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_22ManagedAppDistribution0B5StateO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1D9567968(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D95679C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D9567A24(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9567C74()
{
  result = qword_1ECB06540;
  if (!qword_1ECB06540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06540);
  }

  return result;
}

unint64_t sub_1D9567CCC()
{
  result = qword_1ECB06548;
  if (!qword_1ECB06548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06548);
  }

  return result;
}

unint64_t sub_1D9567D24()
{
  result = qword_1ECB06550;
  if (!qword_1ECB06550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06550);
  }

  return result;
}

unint64_t sub_1D9567D7C()
{
  result = qword_1ECB06558;
  if (!qword_1ECB06558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06558);
  }

  return result;
}

unint64_t sub_1D9567DD4()
{
  result = qword_1ECB06560;
  if (!qword_1ECB06560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06560);
  }

  return result;
}

unint64_t sub_1D9567E2C()
{
  result = qword_1ECB06568;
  if (!qword_1ECB06568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06568);
  }

  return result;
}

unint64_t sub_1D9567E84()
{
  result = qword_1ECB06570;
  if (!qword_1ECB06570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06570);
  }

  return result;
}

unint64_t sub_1D9567EDC()
{
  result = qword_1ECB06578;
  if (!qword_1ECB06578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06578);
  }

  return result;
}

unint64_t sub_1D9567F34()
{
  result = qword_1ECB06580;
  if (!qword_1ECB06580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06580);
  }

  return result;
}

unint64_t sub_1D9567F8C()
{
  result = qword_1ECB06588;
  if (!qword_1ECB06588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06588);
  }

  return result;
}

unint64_t sub_1D9567FE4()
{
  result = qword_1ECB06590;
  if (!qword_1ECB06590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06590);
  }

  return result;
}

unint64_t sub_1D956803C()
{
  result = qword_1ECB06598;
  if (!qword_1ECB06598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06598);
  }

  return result;
}

unint64_t sub_1D9568094()
{
  result = qword_1ECB065A0;
  if (!qword_1ECB065A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065A0);
  }

  return result;
}

unint64_t sub_1D95680EC()
{
  result = qword_1ECB065A8;
  if (!qword_1ECB065A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065A8);
  }

  return result;
}

unint64_t sub_1D9568144()
{
  result = qword_1ECB065B0;
  if (!qword_1ECB065B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065B0);
  }

  return result;
}

unint64_t sub_1D956819C()
{
  result = qword_1ECB065B8;
  if (!qword_1ECB065B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065B8);
  }

  return result;
}

unint64_t sub_1D95681F4()
{
  result = qword_1ECB065C0;
  if (!qword_1ECB065C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065C0);
  }

  return result;
}

unint64_t sub_1D956824C()
{
  result = qword_1ECB065C8;
  if (!qword_1ECB065C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065C8);
  }

  return result;
}

unint64_t sub_1D95682A4()
{
  result = qword_1ECB065D0;
  if (!qword_1ECB065D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065D0);
  }

  return result;
}

unint64_t sub_1D95682FC()
{
  result = qword_1ECB065D8;
  if (!qword_1ECB065D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065D8);
  }

  return result;
}

unint64_t sub_1D9568354()
{
  result = qword_1ECB065E0;
  if (!qword_1ECB065E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065E0);
  }

  return result;
}

unint64_t sub_1D95683AC()
{
  result = qword_1ECB065E8;
  if (!qword_1ECB065E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065E8);
  }

  return result;
}

unint64_t sub_1D9568404()
{
  result = qword_1ECB065F0;
  if (!qword_1ECB065F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065F0);
  }

  return result;
}

unint64_t sub_1D956845C()
{
  result = qword_1ECB065F8;
  if (!qword_1ECB065F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB065F8);
  }

  return result;
}

unint64_t sub_1D95684B4()
{
  result = qword_1ECB06600;
  if (!qword_1ECB06600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06600);
  }

  return result;
}

unint64_t sub_1D956850C()
{
  result = qword_1ECB06608;
  if (!qword_1ECB06608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06608);
  }

  return result;
}

unint64_t sub_1D9568564()
{
  result = qword_1ECB06610;
  if (!qword_1ECB06610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06610);
  }

  return result;
}

unint64_t sub_1D95685BC()
{
  result = qword_1ECB06618;
  if (!qword_1ECB06618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06618);
  }

  return result;
}

unint64_t sub_1D9568614()
{
  result = qword_1ECB06620;
  if (!qword_1ECB06620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06620);
  }

  return result;
}

unint64_t sub_1D956866C()
{
  result = qword_1ECB06628;
  if (!qword_1ECB06628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06628);
  }

  return result;
}

uint64_t sub_1D95686C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C6E776F646572 && a2 == 0xEA00000000006461 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657461647075 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D95C041C();

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

uint64_t sub_1D95687E4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_1D95C041C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69 || (sub_1D95C041C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C6C6174736E69 && a2 == 0xEA0000000000676ELL || (sub_1D95C041C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646573756170 && a2 == 0xE600000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064 || (sub_1D95C041C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646567616E616DLL && a2 == 0xE700000000000000 || (sub_1D95C041C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x676E6974696177 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D95C041C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t ManagedAppCancelRequest.declarationIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D9568AC4()
{
  if (qword_1EDCFA278 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D9568BBC;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1D954C21C(1, v2, v3, sub_1D9568CB0, 0);
}

uint64_t sub_1D9568BBC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1D9568CB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D95BFBBC();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D95A3C64;
  v10[3] = &block_descriptor_2;
  v9 = _Block_copy(v10);

  [a1 cancelManagedApp:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1D9568DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001D95D0210 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D95C041C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9568E3C(uint64_t a1)
{
  v2 = sub_1D95692B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9568E78(uint64_t a1)
{
  v2 = sub_1D95692B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ManagedAppCancelRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06630, &qword_1D95C4068);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95692B8();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t ManagedAppCancelRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06640, &qword_1D95C4070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95692B8();
  sub_1D95C059C();
  if (!v2)
  {
    v11 = sub_1D95C029C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1D956917C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB06630, &qword_1D95C4068);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D95692B8();
  sub_1D95C05BC();
  sub_1D95C035C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D95692B8()
{
  result = qword_1ECB06638;
  if (!qword_1ECB06638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06638);
  }

  return result;
}

unint64_t sub_1D9569330()
{
  result = qword_1ECB06648;
  if (!qword_1ECB06648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06648);
  }

  return result;
}

unint64_t sub_1D9569388()
{
  result = qword_1ECB06650;
  if (!qword_1ECB06650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB06650);
  }

  return result;
}