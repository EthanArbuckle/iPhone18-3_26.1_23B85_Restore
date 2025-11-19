uint64_t sub_18B4D49F8()
{
  v1[2] = v0;
  v2 = sub_18B6C584C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D4AB8, 0, 0);
}

uint64_t sub_18B4D4AB8()
{
  v1 = *(*(v0 + 16) + 104);
  *(v0 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4D4ADC, v1, 0);
}

uint64_t sub_18B4D4ADC()
{
  *(v0 + 56) = *(*(v0 + 48) + 256);
  sub_18B6C450C();

  return MEMORY[0x1EEE6DFA0](sub_18B4D4B50, 0, 0);
}

uint64_t sub_18B4D4B50()
{
  v21 = v0;
  if (v0[7])
  {
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v1 = sub_18B6C435C();
    __swift_project_value_buffer(v1, qword_1EA9CE398);
    sub_18B6C450C();

    v2 = sub_18B6C434C();
    v3 = sub_18B6C596C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[2];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315394;
      if (*(v4 + 24))
      {
        if (*(v4 + 24) == 1)
        {
          v7 = 0xE600000000000000;
          v8 = 0x7070412D6E49;
        }

        else
        {
          v7 = 0xE800000000000000;
          v8 = 0x73676E6974746553;
        }
      }

      else
      {
        v7 = 0xE200000000000000;
        v8 = 17219;
      }

      v13 = v0[7];
      v14 = sub_18B4F4244(v8, v7, &v20);

      *(v5 + 4) = v14;
      *(v5 + 12) = 2080;
      v15 = MEMORY[0x18CFF7360](v13, &type metadata for InputPickerMicrophone);
      v17 = sub_18B4F4244(v15, v16, &v20);

      *(v5 + 14) = v17;
      _os_log_impl(&dword_18B49C000, v2, v3, "[%s] hit cache for availableRoutes %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18CFF91B0](v6, -1, -1);
      MEMORY[0x18CFF91B0](v5, -1, -1);
    }

    v18 = v0[7];

    v19 = v0[1];

    return v19(v18);
  }

  else
  {
    v9 = swift_allocObject();
    v0[8] = v9;
    swift_weakInit();
    sub_18B6C582C();
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_18B4D4E88;
    v11 = v0[5];

    return sub_18B4EFF18(0xD000000000000011, 0x800000018B6FC7E0, v11, &unk_18B6E8C90, v9);
  }
}

uint64_t sub_18B4D4E88(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6(a1);
}

uint64_t sub_18B4D500C(uint64_t a1, char a2)
{
  *(v3 + 176) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = sub_18B6C584C();
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 - 8);
  *(v3 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D50D0, 0, 0);
}

uint64_t sub_18B4D50D0()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4D50F4, v1, 0);
}

uint64_t sub_18B4D50F4()
{
  v1 = v0[13];
  v2 = v1[33];
  v0[14] = v2;
  v3 = v1[34];
  v0[15] = v3;
  v0[16] = v1[35];
  v0[17] = v1[36];
  v0[18] = v1[37];
  v0[19] = v1[38];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D518C, 0, 0);
}

uint64_t sub_18B4D518C()
{
  v1 = *(v0 + 120);
  if (!v1)
  {
LABEL_4:
    v2 = swift_allocObject();
    *(v0 + 160) = v2;
    swift_weakInit();
    sub_18B6C582C();
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = sub_18B4F9F78;
    v4 = *(v0 + 96);

    return sub_18B4EF6C4(v0 + 16, 0xD00000000000001BLL, 0x800000018B6FC7C0, v4, &unk_18B6E8C78, v2);
  }

  if (*(v0 + 176))
  {

    goto LABEL_4;
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 64);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);

  *v7 = v6;
  *(v7 + 8) = v1;
  *(v7 + 16) = v10;
  *(v7 + 32) = v9;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_18B4D533C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_18B6C584C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D53FC, 0, 0);
}

uint64_t sub_18B4D53FC()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4D5420, v1, 0);
}

uint64_t sub_18B4D5420()
{
  v1 = v0[13];
  v2 = v1[20];
  v0[14] = v2;
  v3 = v1[21];
  v0[15] = v3;
  v0[16] = v1[22];
  v0[17] = v1[23];
  v0[18] = v1[24];
  v0[19] = v1[25];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D54B8, 0, 0);
}

uint64_t sub_18B4D54B8()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 64);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);

    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = v10;
    *(v3 + 32) = v9;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v0 + 160) = v6;
    swift_weakInit();
    sub_18B6C582C();
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_18B4D5644;
    v8 = *(v0 + 96);

    return sub_18B4EF6C4(v0 + 16, 0xD000000000000019, 0x800000018B6FC5F0, v8, &unk_18B6E8960, v6);
  }
}

uint64_t sub_18B4D5644()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);
  v5 = *v0;

  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v11 = *(v1 + 32);
  v12 = *(v1 + 16);

  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 64);

  *v8 = v12;
  *(v8 + 16) = v11;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v9 = *(v5 + 8);

  return v9();
}

uint64_t sub_18B4D5820(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_18B6C584C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D58E0, 0, 0);
}

uint64_t sub_18B4D58E0()
{
  v1 = *(*(v0 + 72) + 104);
  *(v0 + 104) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4D5904, v1, 0);
}

uint64_t sub_18B4D5904()
{
  v1 = v0[13];
  v2 = v1[26];
  v0[14] = v2;
  v3 = v1[27];
  v0[15] = v3;
  v0[16] = v1[28];
  v0[17] = v1[29];
  v0[18] = v1[30];
  v0[19] = v1[31];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D599C, 0, 0);
}

uint64_t sub_18B4D599C()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 64);
    v9 = *(v0 + 144);
    v10 = *(v0 + 128);

    *v3 = v2;
    *(v3 + 8) = v1;
    *(v3 + 16) = v10;
    *(v3 + 32) = v9;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = swift_allocObject();
    *(v0 + 160) = v6;
    swift_weakInit();
    sub_18B6C582C();
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    *v7 = v0;
    v7[1] = sub_18B4F9F78;
    v8 = *(v0 + 96);

    return sub_18B4EF6C4(v0 + 16, 0xD00000000000001BLL, 0x800000018B6FC780, v8, &unk_18B6E8AF8, v6);
  }
}

uint64_t sub_18B4D5B28(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = sub_18B6C584C();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D5BEC, 0, 0);
}

uint64_t sub_18B4D5BEC()
{
  v42 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v38 = v2;
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v40 = v0;
  *(v0 + 64) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5090);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18B6E6E50;
  if (v1)
  {
    v8 = &unk_18B6E8DB8;
  }

  else
  {
    v8 = &unk_18B6E8DA8;
  }

  if (v1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v1)
  {
    v10 = &unk_18B6E8DE0;
  }

  else
  {
    v10 = &unk_18B6E8DC0;
  }

  if (v1)
  {
    v11 = &unk_18B6E8DA8;
  }

  else
  {
    v11 = &unk_18B6E8DB8;
  }

  if (v1)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (v1)
  {
    v13 = &unk_18B6E8DE8;
  }

  else
  {
    v13 = &unk_18B6E8DC8;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  *(v14 + 24) = v9;
  *(v7 + 32) = v10;
  *(v7 + 40) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v12;
  *(v7 + 48) = v13;
  *(v7 + 56) = v15;
  v16 = qword_1EA9C3DA0;
  v17 = v38;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = sub_18B6C435C();
  __swift_project_value_buffer(v18, qword_1EA9CE398);

  v19 = sub_18B6C434C();
  v20 = sub_18B6C596C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v40 + 24);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v41 = v23;
    *v22 = 136315650;
    v37 = v7;
    v39 = v23;
    if (*(v21 + 24))
    {
      if (*(v21 + 24) == 1)
      {
        v24 = 0xE600000000000000;
        v25 = 0x7070412D6E49;
      }

      else
      {
        v24 = 0xE800000000000000;
        v25 = 0x73676E6974746553;
      }
    }

    else
    {
      v24 = 0xE200000000000000;
      v25 = 17219;
    }

    v26 = *(v40 + 88);
    v27 = sub_18B4F4244(v25, v24, &v41);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    if (v26)
    {
      v28 = 0x6C6F686563616C70;
    }

    else
    {
      v28 = 0x746E65696C63;
    }

    if (v26)
    {
      v29 = 0xEB00000000726564;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    if (v26)
    {
      v30 = 0x746E65696C63;
    }

    else
    {
      v30 = 0x6C6F686563616C70;
    }

    if (v26)
    {
      v31 = 0xE600000000000000;
    }

    else
    {
      v31 = 0xEB00000000726564;
    }

    v32 = sub_18B4F4244(v28, v29, &v41);

    *(v22 + 14) = v32;
    *(v22 + 22) = 2080;
    v33 = sub_18B4F4244(v30, v31, &v41);

    *(v22 + 24) = v33;
    _os_log_impl(&dword_18B49C000, v19, v20, "[%s] Sending set preferred input notification to %s first, then %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v39, -1, -1);
    MEMORY[0x18CFF91B0](v22, -1, -1);

    v7 = v37;
  }

  else
  {
  }

  v34 = *(*(v40 + 24) + 16);
  *(v40 + 72) = v34;
  sub_18B6C582C();
  v35 = swift_allocObject();
  *(v40 + 80) = v35;
  *(v35 + 16) = v7;

  return MEMORY[0x1EEE6DFA0](sub_18B4D6070, v34, 0);
}

uint64_t sub_18B4D6070()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_18B51A000(0xD000000000000014, 0x800000018B6FC830, v1, &unk_18B6E8DD8, v0[10]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D6144, 0, 0);
}

uint64_t sub_18B4D6144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4D61B8()
{
  v1[2] = v0;
  v2 = sub_18B6C584C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D6278, 0, 0);
}

uint64_t sub_18B4D6278()
{
  v1 = swift_allocObject();
  v0[6] = v1;
  swift_weakInit();
  sub_18B6C582C();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_18B4D6398;
  v3 = v0[5];

  return sub_18B4F1F54(sub_18B4F1F54, 0xD000000000000010, 0x800000018B6FC660, v3, &unk_18B6E89A0, v1);
}

uint64_t sub_18B4D6398()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D650C, 0, 0);
}

uint64_t sub_18B4D650C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4D656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_18B4D658C, 0, 0);
}

uint64_t sub_18B4D658C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_18B4D6680;

    return sub_18B4D67C0();
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_18B4D6680()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D6798, 0, 0);
}

uint64_t sub_18B4D67E0()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 56) + 144), *(*(v0 + 56) + 168));
  v3 = (off_1EFECD040 + *off_1EFECD040);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18B4D6918;

  return v3(v0 + 16, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
}

uint64_t sub_18B4D6918()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D6A14, 0, 0);
}

uint64_t sub_18B4D6A14()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 104) = (*(v1 + 48))(v2, v1) & 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    *(v0 + 80) = off_1EFECE000;
    *(v0 + 88) = &off_1EFECE000 & 0xFFFFFFFFFFFFLL | 0xE699000000000000;
    sub_18B6C580C();
    *(v0 + 96) = sub_18B6C57FC();
    v5 = sub_18B6C57CC();

    return MEMORY[0x1EEE6DFA0](sub_18B4D6B4C, v5, v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_18B4D6B4C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 104);
  v3 = *(v0 + 56);

  v4 = type metadata accessor for MicrophoneManager();
  v1(v3, v2, v4, &off_1EFECDFE0);
  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18B4D6BF0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  sub_18B4F8218(v1, v2);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  sub_18B4F8218(v3, v4);
  v5 = *(v0 + 208);
  v6 = *(v0 + 216);
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  sub_18B4F8218(v5, v6);
  *(v0 + 256) = 0;

  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;

  return sub_18B4F8218(v7, v8);
}

uint64_t sub_18B4D6C90()
{
  sub_18B4F8218(v0[14], v0[15]);
  sub_18B4F8218(v0[20], v0[21]);
  sub_18B4F8218(v0[26], v0[27]);

  sub_18B4F8218(v0[33], v0[34]);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_18B4D6D14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17 - v4;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v6 = sub_18B6C435C();
  __swift_project_value_buffer(v6, qword_1EA9CE398);

  v7 = sub_18B6C434C();
  v8 = sub_18B6C593C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315138;
    if (*(v1 + 120))
    {
      v11 = *(v1 + 112);
      v12 = *(v1 + 120);
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    sub_18B6C450C();
    v13 = sub_18B4F4244(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_18B49C000, v7, v8, "set new client identifier %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x18CFF91B0](v10, -1, -1);
    MEMORY[0x18CFF91B0](v9, -1, -1);
  }

  v14 = sub_18B6C584C();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;

  sub_18B5280B4(0, 0, v5, &unk_18B6E8970, v15);
}

uint64_t sub_18B4D6F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_18B6C584C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D7030, 0, 0);
}

uint64_t sub_18B4D7030()
{
  *(v0 + 48) = swift_allocObject();
  swift_weakInit();
  sub_18B6C582C();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_18B4D7154;

  return (sub_18B4F1F54)();
}

uint64_t sub_18B4D7154()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4D72C8, 0, 0);
}

uint64_t sub_18B4D72C8()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_18B4D7358;

  return sub_18B4D61B8();
}

uint64_t sub_18B4D7358()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B4D7488()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_18B4D7600;

    return sub_18B4D7910();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[11] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[12] = v5;
      *v5 = v0;
      v5[1] = sub_18B4D7800;

      return sub_18B4D39C4();
    }

    else
    {
      v6 = v0[1];

      return v6();
    }
  }
}

uint64_t sub_18B4D7600()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D7718, 0, 0);
}

uint64_t sub_18B4D7718()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_18B4D7800;

    return sub_18B4D39C4();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B4D7800()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B4D7910()
{
  *(v1 + 64) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D79D8, 0, 0);
}

uint64_t sub_18B4D79D8()
{
  v1 = *(v0 + 72);
  sub_18B6C582C();
  v2 = sub_18B6C584C();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  sub_18B4D0100(0, 0, v1, &unk_18B6E8D00, v4);

  sub_18B4A6454(v1, &qword_1EA9C4E70);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_18B4D7B6C;

  return sub_18B4D902C();
}

uint64_t sub_18B4D7B6C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D7C94, 0, 0);
}

uint64_t sub_18B4D7C94()
{
  v30 = v0;
  v29[1] = *MEMORY[0x1E69E9840];
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  v0[11] = __swift_project_value_buffer(v1, qword_1EA9CE398);
  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18B49C000, v2, v3, "... prefetch ", v4, 2u);
    MEMORY[0x18CFF91B0](v4, -1, -1);
  }

  v5 = v0[8];

  v6 = [objc_opt_self() auxiliarySession];
  v0[12] = v6;
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;
  v8 = v6;

  if (v8)
  {
    v9 = *MEMORY[0x1E6958078];
    v0[5] = 0;
    v10 = [v8 setCategory:v9 withOptions:5 error:v0 + 5];
    v11 = v0[5];
    if (v10)
    {
      v12 = *(v0[8] + 136);
      v0[13] = v12;
      v13 = v11;
      v14 = *(v12 + 16);

      v15 = swift_task_alloc();
      v0[14] = v15;
      v16 = sub_18B4AC60C(0, &qword_1EA9C39E0);
      *v15 = v0;
      v15[1] = sub_18B4D80CC;

      return MEMORY[0x1EEE6DA40](v0 + 7, v14, v16);
    }

    v17 = v11;
    v18 = sub_18B6C405C();

    swift_willThrow();
    v19 = v18;
    v20 = sub_18B6C434C();
    v21 = sub_18B6C596C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_18B4F4244(0xD000000000000072, 0x800000018B6FC680, v29);
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_18B4F4244(0x6863746566657270, 0xEA00000000002928, v29);
      *(v22 + 22) = 2080;
      swift_getErrorValue();
      v24 = sub_18B6C5D6C();
      v26 = sub_18B4F4244(v24, v25, v29);

      *(v22 + 24) = v26;
      _os_log_impl(&dword_18B49C000, v20, v21, "%s->%s  error=%s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x18CFF91B0](v23, -1, -1);
      MEMORY[0x18CFF91B0](v22, -1, -1);
    }

    else
    {
    }
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_18B4D80CC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D81F4, 0, 0);
}

uint64_t sub_18B4D81F4()
{
  v20 = v0;
  v19[1] = *MEMORY[0x1E69E9840];
  v1 = v0[12];

  v2 = v0[7];
  v0[15] = v2;
  [v1 opaqueSessionID];
  v3 = sub_18B6C5E0C();
  [v2 setAudioSessionID_];

  v4 = sub_18B6C575C();
  [v2 setDiscoveryMode:2 forClientIdentifiers:v4];

  v5 = v2;
  v6 = sub_18B6C434C();
  v7 = sub_18B6C596C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    v10 = [v5 availableInputDevices];
    v11 = sub_18B4AC60C(0, &qword_1EA9C3A68);
    v12 = sub_18B6C576C();

    v13 = MEMORY[0x18CFF7360](v12, v11);
    v15 = v14;

    v16 = sub_18B4F4244(v13, v15, v19);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_18B49C000, v6, v7, "... early devices %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x18CFF91B0](v9, -1, -1);
    MEMORY[0x18CFF91B0](v8, -1, -1);
  }

  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_18B4D8474;

  return sub_18B4E1D3C();
}

uint64_t sub_18B4D8474()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D859C, 0, 0);
}

uint64_t sub_18B4D859C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18B4D8658()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v3 = sub_18B6C435C();
    __swift_project_value_buffer(v3, qword_1EA9CE398);

    v4 = sub_18B6C434C();
    v5 = sub_18B6C596C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136315138;
      if (v2[15])
      {
        v8 = v2[14];
        v9 = v2[15];
      }

      else
      {
        v9 = 0xE300000000000000;
        v8 = 7104878;
      }

      sub_18B6C450C();
      v12 = sub_18B4F4244(v8, v9, &v17);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_18B49C000, v4, v5, "start discovery for %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x18CFF91B0](v7, -1, -1);
      MEMORY[0x18CFF91B0](v6, -1, -1);
    }

    v13 = v2[15];
    if (v13)
    {
      v14 = v2[14];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FF0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_18B6E8750;
      *(v15 + 32) = v14;
      *(v15 + 40) = v13;
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v0[9] = v15;
    v16 = v2[13];
    v0[10] = v16;
    sub_18B6C450C();

    return MEMORY[0x1EEE6DFA0](sub_18B4D88D4, v16, 0);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_18B4D88D4()
{
  sub_18B4D6BF0();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_18B4D896C;

  return sub_18B4D902C();
}

uint64_t sub_18B4D896C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 96) = v3;
  *v3 = v2;
  v3[1] = sub_18B4D8AAC;

  return sub_18B4DB77C();
}

uint64_t sub_18B4D8AAC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D8BA8, 0, 0);
}

uint64_t sub_18B4D8BA8()
{
  v1 = *(v0[8] + 128);
  v0[13] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_18B4AC60C(0, &qword_1EA9C39E0);
  v0[15] = v4;
  *v3 = v0;
  v3[1] = sub_18B4D8C7C;

  return MEMORY[0x1EEE6DA40](v0 + 5, v2, v4);
}

uint64_t sub_18B4D8C7C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D8D78, 0, 0);
}

uint64_t sub_18B4D8D78()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = sub_18B6C575C();

  [v2 setDiscoveryMode:2 forClientIdentifiers:v3];

  v4 = *(v1 + 136);
  v0[16] = v4;
  v5 = *(v4 + 16);

  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_18B4D8E80;
  v7 = v0[15];

  return MEMORY[0x1EEE6DA40](v0 + 6, v5, v7);
}

uint64_t sub_18B4D8E80()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D8F7C, 0, 0);
}

uint64_t sub_18B4D8F7C()
{

  v1 = *(v0 + 48);
  v2 = sub_18B6C575C();
  [v1 setDiscoveryMode:2 forClientIdentifiers:v2];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_18B4D902C()
{
  *(v1 + 32) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4D90C8, 0, 0);
}

uint64_t sub_18B4D90C8()
{
  v1 = v0[4];
  if (*(v1 + 56))
  {

    v2 = MEMORY[0x1E69E7CA8];
    sub_18B6C58AC();

    v3 = *(v1 + 56);
    v0[6] = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[7] = v4;
      *v4 = v0;
      v4[1] = sub_18B4D9284;
      v5 = MEMORY[0x1E69E73E0];
      v6 = MEMORY[0x1E69E7410];

      return MEMORY[0x1EEE6DA20](v0 + 28, v3, v2 + 8, v5, v6);
    }

    v1 = v0[4];
  }

  v7 = *(v1 + 128);
  v0[8] = v7;
  v8 = *(v7 + 16);

  v9 = swift_task_alloc();
  v0[9] = v9;
  v10 = sub_18B4AC60C(0, &qword_1EA9C39E0);
  v0[10] = v10;
  *v9 = v0;
  v9[1] = sub_18B4D9470;

  return MEMORY[0x1EEE6DA40](v0 + 2, v8, v10);
}

uint64_t sub_18B4D9284()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D939C, 0, 0);
}

uint64_t sub_18B4D939C()
{
  v1 = *(v0[4] + 128);
  v0[8] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[9] = v3;
  v4 = sub_18B4AC60C(0, &qword_1EA9C39E0);
  v0[10] = v4;
  *v3 = v0;
  v3[1] = sub_18B4D9470;

  return MEMORY[0x1EEE6DA40](v0 + 2, v2, v4);
}

uint64_t sub_18B4D9470()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D956C, 0, 0);
}

uint64_t sub_18B4D956C()
{
  v1 = v0[4];

  v0[11] = v0[2];
  v2 = *(v1 + 136);
  v0[12] = v2;
  v3 = *(v2 + 16);

  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_18B4D9634;
  v5 = v0[10];

  return MEMORY[0x1EEE6DA40](v0 + 3, v3, v5);
}

uint64_t sub_18B4D9634()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4D9730, 0, 0);
}

uint64_t sub_18B4D9730()
{
  v1 = *(v0 + 11);
  v3 = *(v0 + 4);
  v2 = *(v0 + 5);

  *(v0 + 14) = *(v0 + 3);
  v4 = sub_18B6C584C();
  *(v0 + 15) = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  *(v0 + 16) = v6;
  *(v0 + 17) = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 1, 1, v4);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v7;
  v9 = v1;
  *(v3 + 56) = sub_18B5280B4(0, 0, v2, &unk_18B6E89F0, v8);

  v10 = MEMORY[0x1E69E7CA8];
  if (*(v3 + 64))
  {

    sub_18B6C58AC();

    v11 = *(v3 + 64);
    *(v0 + 18) = v11;
    if (v11)
    {

      v12 = swift_task_alloc();
      *(v0 + 19) = v12;
      *v12 = v0;
      v12[1] = sub_18B4D9F14;
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = v0 + 225;
LABEL_20:

      return MEMORY[0x1EEE6DA20](v15, v11, v10 + 8, v13, v14);
    }
  }

  v16 = *(v0 + 14);
  v18 = *(v0 + 4);
  v17 = *(v0 + 5);
  (*(v0 + 16))(v17, 1, 1, *(v0 + 15));
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v20[5] = v19;
  v21 = v16;
  *(v18 + 64) = sub_18B5280B4(0, 0, v17, &unk_18B6E8A00, v20);

  if (*(v18 + 72))
  {

    sub_18B6C58AC();

    v11 = *(v18 + 72);
    *(v0 + 20) = v11;
    if (v11)
    {

      v22 = swift_task_alloc();
      *(v0 + 21) = v22;
      *v22 = v0;
      v22[1] = sub_18B4DA69C;
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = v0 + 226;
      goto LABEL_20;
    }
  }

  v23 = *(v0 + 4);
  v24 = *(v0 + 5);
  (*(v0 + 16))(v24, 1, 1, *(v0 + 15));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  *(v23 + 72) = sub_18B5280B4(0, 0, v24, &unk_18B6E8A10, v26);

  if (*(v23 + 48))
  {
    v27 = *(v0 + 4);
    if (*(v27 + 80))
    {

      sub_18B6C58AC();

      v11 = *(v27 + 80);
      *(v0 + 22) = v11;
      if (v11)
      {

        v28 = swift_task_alloc();
        *(v0 + 23) = v28;
        *v28 = v0;
        v28[1] = sub_18B4DACD8;
        v13 = MEMORY[0x1E69E73E0];
        v14 = MEMORY[0x1E69E7410];
        v15 = v0 + 229;
        goto LABEL_20;
      }

      v27 = *(v0 + 4);
    }

    v29 = *(v0 + 5);
    (*(v0 + 16))(v29, 1, 1, *(v0 + 15));
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    *(v27 + 80) = sub_18B5280B4(0, 0, v29, &unk_18B6E8A40, v31);
  }

  v32 = *(v0 + 4);
  if (*(v32 + 88))
  {

    sub_18B6C58AC();

    v11 = *(v32 + 88);
    *(v0 + 24) = v11;
    if (v11)
    {

      v33 = swift_task_alloc();
      *(v0 + 25) = v33;
      *v33 = v0;
      v33[1] = sub_18B4DB1B8;
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = v0 + 227;
      goto LABEL_20;
    }

    v32 = *(v0 + 4);
  }

  v34 = *(v0 + 5);
  (*(v0 + 16))(v34, 1, 1, *(v0 + 15));
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v35;
  *(v32 + 88) = sub_18B5280B4(0, 0, v34, &unk_18B6E8A20, v36);

  if (*(v32 + 96))
  {

    sub_18B6C58AC();

    v11 = *(v32 + 96);
    *(v0 + 26) = v11;
    if (v11)
    {

      v37 = swift_task_alloc();
      *(v0 + 27) = v37;
      *v37 = v0;
      v37[1] = sub_18B4DB554;
      v13 = MEMORY[0x1E69E73E0];
      v14 = MEMORY[0x1E69E7410];
      v15 = v0 + 228;
      goto LABEL_20;
    }
  }

  v38 = *(v0 + 14);
  v39 = *(v0 + 11);
  v40 = *(v0 + 4);
  v41 = *(v0 + 5);
  (*(v0 + 16))(v41, 1, 1, *(v0 + 15));
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v42;
  v44 = sub_18B5280B4(0, 0, v41, &unk_18B6E8A30, v43);

  *(v40 + 96) = v44;

  v45 = *(v0 + 1);

  return v45();
}

uint64_t sub_18B4D9F14()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DA02C, 0, 0);
}

uint64_t sub_18B4DA02C()
{
  v1 = *(v0 + 112);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v4;
  v6 = v1;
  *(v3 + 64) = sub_18B5280B4(0, 0, v2, &unk_18B6E8A00, v5);

  if (*(v3 + 72))
  {

    v7 = MEMORY[0x1E69E7CA8];
    sub_18B6C58AC();

    v8 = *(v3 + 72);
    *(v0 + 160) = v8;
    if (v8)
    {

      v9 = swift_task_alloc();
      *(v0 + 168) = v9;
      *v9 = v0;
      v9[1] = sub_18B4DA69C;
      v10 = MEMORY[0x1E69E73E0];
      v11 = MEMORY[0x1E69E7410];
      v12 = v0 + 226;
LABEL_17:

      return MEMORY[0x1EEE6DA20](v12, v8, v7 + 8, v10, v11);
    }
  }

  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  (*(v0 + 128))(v14, 1, 1, *(v0 + 120));
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  *(v13 + 72) = sub_18B5280B4(0, 0, v14, &unk_18B6E8A10, v16);

  if (*(v13 + 48))
  {
    v17 = *(v0 + 32);
    if (*(v17 + 80))
    {

      v7 = MEMORY[0x1E69E7CA8];
      sub_18B6C58AC();

      v8 = *(v17 + 80);
      *(v0 + 176) = v8;
      if (v8)
      {

        v18 = swift_task_alloc();
        *(v0 + 184) = v18;
        *v18 = v0;
        v18[1] = sub_18B4DACD8;
        v10 = MEMORY[0x1E69E73E0];
        v11 = MEMORY[0x1E69E7410];
        v12 = v0 + 229;
        goto LABEL_17;
      }

      v17 = *(v0 + 32);
    }

    v19 = *(v0 + 40);
    (*(v0 + 128))(v19, 1, 1, *(v0 + 120));
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    *(v17 + 80) = sub_18B5280B4(0, 0, v19, &unk_18B6E8A40, v21);
  }

  v22 = *(v0 + 32);
  if (*(v22 + 88))
  {

    v7 = MEMORY[0x1E69E7CA8];
    sub_18B6C58AC();

    v8 = *(v22 + 88);
    *(v0 + 192) = v8;
    if (v8)
    {

      v23 = swift_task_alloc();
      *(v0 + 200) = v23;
      *v23 = v0;
      v23[1] = sub_18B4DB1B8;
      v10 = MEMORY[0x1E69E73E0];
      v11 = MEMORY[0x1E69E7410];
      v12 = v0 + 227;
      goto LABEL_17;
    }

    v22 = *(v0 + 32);
  }

  v24 = *(v0 + 40);
  (*(v0 + 128))(v24, 1, 1, *(v0 + 120));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  *(v22 + 88) = sub_18B5280B4(0, 0, v24, &unk_18B6E8A20, v26);

  if (*(v22 + 96))
  {

    v7 = MEMORY[0x1E69E7CA8];
    sub_18B6C58AC();

    v8 = *(v22 + 96);
    *(v0 + 208) = v8;
    if (v8)
    {

      v27 = swift_task_alloc();
      *(v0 + 216) = v27;
      *v27 = v0;
      v27[1] = sub_18B4DB554;
      v10 = MEMORY[0x1E69E73E0];
      v11 = MEMORY[0x1E69E7410];
      v12 = v0 + 228;
      goto LABEL_17;
    }
  }

  v28 = *(v0 + 112);
  v29 = *(v0 + 88);
  v30 = *(v0 + 32);
  v31 = *(v0 + 40);
  (*(v0 + 128))(v31, 1, 1, *(v0 + 120));
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v32;
  v34 = sub_18B5280B4(0, 0, v31, &unk_18B6E8A30, v33);

  *(v30 + 96) = v34;

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_18B4DA69C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DA7B4, 0, 0);
}

uint64_t sub_18B4DA7B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  *(v1 + 72) = sub_18B5280B4(0, 0, v2, &unk_18B6E8A10, v4);

  if (*(v1 + 48))
  {
    v5 = *(v0 + 32);
    if (*(v5 + 80))
    {

      v6 = MEMORY[0x1E69E7CA8];
      sub_18B6C58AC();

      v7 = *(v5 + 80);
      *(v0 + 176) = v7;
      if (v7)
      {

        v8 = swift_task_alloc();
        *(v0 + 184) = v8;
        *v8 = v0;
        v8[1] = sub_18B4DACD8;
        v9 = MEMORY[0x1E69E73E0];
        v10 = MEMORY[0x1E69E7410];
        v11 = v0 + 229;
LABEL_14:

        return MEMORY[0x1EEE6DA20](v11, v7, v6 + 8, v9, v10);
      }

      v5 = *(v0 + 32);
    }

    v12 = *(v0 + 40);
    (*(v0 + 128))(v12, 1, 1, *(v0 + 120));
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    *(v5 + 80) = sub_18B5280B4(0, 0, v12, &unk_18B6E8A40, v14);
  }

  v15 = *(v0 + 32);
  if (*(v15 + 88))
  {

    v6 = MEMORY[0x1E69E7CA8];
    sub_18B6C58AC();

    v7 = *(v15 + 88);
    *(v0 + 192) = v7;
    if (v7)
    {

      v16 = swift_task_alloc();
      *(v0 + 200) = v16;
      *v16 = v0;
      v16[1] = sub_18B4DB1B8;
      v9 = MEMORY[0x1E69E73E0];
      v10 = MEMORY[0x1E69E7410];
      v11 = v0 + 227;
      goto LABEL_14;
    }

    v15 = *(v0 + 32);
  }

  v17 = *(v0 + 40);
  (*(v0 + 128))(v17, 1, 1, *(v0 + 120));
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v18;
  *(v15 + 88) = sub_18B5280B4(0, 0, v17, &unk_18B6E8A20, v19);

  if (*(v15 + 96))
  {

    v6 = MEMORY[0x1E69E7CA8];
    sub_18B6C58AC();

    v7 = *(v15 + 96);
    *(v0 + 208) = v7;
    if (v7)
    {

      v20 = swift_task_alloc();
      *(v0 + 216) = v20;
      *v20 = v0;
      v20[1] = sub_18B4DB554;
      v9 = MEMORY[0x1E69E73E0];
      v10 = MEMORY[0x1E69E7410];
      v11 = v0 + 228;
      goto LABEL_14;
    }
  }

  v21 = *(v0 + 112);
  v22 = *(v0 + 88);
  v23 = *(v0 + 32);
  v24 = *(v0 + 40);
  (*(v0 + 128))(v24, 1, 1, *(v0 + 120));
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v25;
  v27 = sub_18B5280B4(0, 0, v24, &unk_18B6E8A30, v26);

  *(v23 + 96) = v27;

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_18B4DACD8()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DADF0, 0, 0);
}

uint64_t sub_18B4DADF0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  (*(v0 + 128))(v2, 1, 1, *(v0 + 120));
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  *(v1 + 80) = sub_18B5280B4(0, 0, v2, &unk_18B6E8A40, v4);

  v5 = *(v0 + 32);
  v6 = MEMORY[0x1E69E7CA8];
  if (*(v5 + 88))
  {

    sub_18B6C58AC();

    v7 = *(v5 + 88);
    *(v0 + 192) = v7;
    if (v7)
    {

      v8 = swift_task_alloc();
      *(v0 + 200) = v8;
      *v8 = v0;
      v8[1] = sub_18B4DB1B8;
      v9 = MEMORY[0x1E69E73E0];
      v10 = MEMORY[0x1E69E7410];
      v11 = v0 + 227;
LABEL_8:

      return MEMORY[0x1EEE6DA20](v11, v7, v6 + 8, v9, v10);
    }

    v5 = *(v0 + 32);
  }

  v12 = *(v0 + 40);
  (*(v0 + 128))(v12, 1, 1, *(v0 + 120));
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v13;
  *(v5 + 88) = sub_18B5280B4(0, 0, v12, &unk_18B6E8A20, v14);

  if (*(v5 + 96))
  {

    sub_18B6C58AC();

    v7 = *(v5 + 96);
    *(v0 + 208) = v7;
    if (v7)
    {

      v15 = swift_task_alloc();
      *(v0 + 216) = v15;
      *v15 = v0;
      v15[1] = sub_18B4DB554;
      v9 = MEMORY[0x1E69E73E0];
      v10 = MEMORY[0x1E69E7410];
      v11 = v0 + 228;
      goto LABEL_8;
    }
  }

  v16 = *(v0 + 112);
  v17 = *(v0 + 88);
  v18 = *(v0 + 32);
  v19 = *(v0 + 40);
  (*(v0 + 128))(v19, 1, 1, *(v0 + 120));
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  v22 = sub_18B5280B4(0, 0, v19, &unk_18B6E8A30, v21);

  *(v18 + 96) = v22;

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_18B4DB1B8()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DB2D0, 0, 0);
}

uint64_t sub_18B4DB2D0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  (*(v0 + 128))(v1, 1, 1, *(v0 + 120));
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v3;
  *(v2 + 88) = sub_18B5280B4(0, 0, v1, &unk_18B6E8A20, v4);

  if (*(v2 + 96) && (, v5 = MEMORY[0x1E69E7CA8], sub_18B6C58AC(), , v6 = *(v2 + 96), (*(v0 + 208) = v6) != 0))
  {

    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_18B4DB554;
    v8 = MEMORY[0x1E69E73E0];
    v9 = MEMORY[0x1E69E7410];

    return MEMORY[0x1EEE6DA20](v0 + 228, v6, v5 + 8, v8, v9);
  }

  else
  {
    v10 = *(v0 + 112);
    v11 = *(v0 + 88);
    v12 = *(v0 + 32);
    v13 = *(v0 + 40);
    (*(v0 + 128))(v13, 1, 1, *(v0 + 120));
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v14;
    v16 = sub_18B5280B4(0, 0, v13, &unk_18B6E8A30, v15);

    *(v12 + 96) = v16;

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_18B4DB554()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DB66C, 0, 0);
}

uint64_t sub_18B4DB66C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  (*(v0 + 128))(v4, 1, 1, *(v0 + 120));
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_18B5280B4(0, 0, v4, &unk_18B6E8A30, v6);

  *(v3 + 96) = v7;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_18B4DB77C()
{
  *(v1 + 64) = v0;

  return MEMORY[0x1EEE6DFA0](sub_18B4DB80C, 0, 0);
}

uint64_t sub_18B4DB80C()
{
  v47 = v0;
  v46[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 64);
  if (!*(v1 + 48))
  {
    v2 = [objc_opt_self() auxiliarySession];
    v3 = *(v1 + 48);
    *(v1 + 48) = v2;

    v4 = *(v1 + 48);
    if (v4)
    {
      v5 = *MEMORY[0x1E6958078];
      *(v0 + 40) = 0;
      v6 = [v4 setCategory:v5 withOptions:5 error:v0 + 40];
      v7 = *(v0 + 40);
      if (!v6)
      {
        v27 = v7;
        v28 = sub_18B6C405C();

        swift_willThrow();
        if (qword_1EA9C3DA0 != -1)
        {
          swift_once();
        }

        v29 = sub_18B6C435C();
        __swift_project_value_buffer(v29, qword_1EA9CE398);
        v30 = v28;
        v31 = sub_18B6C434C();
        v32 = sub_18B6C594C();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v46[0] = v34;
          *v33 = 136315650;
          *(v33 + 4) = sub_18B4F4244(0xD000000000000072, 0x800000018B6FC680, v46);
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_18B4F4244(0xD000000000000022, 0x800000018B6FC700, v46);
          *(v33 + 22) = 2080;
          swift_getErrorValue();
          v35 = sub_18B6C5D6C();
          v37 = sub_18B4F4244(v35, v36, v46);

          *(v33 + 24) = v37;
          _os_log_impl(&dword_18B49C000, v31, v32, "%s->%s error=%s", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x18CFF91B0](v34, -1, -1);
          MEMORY[0x18CFF91B0](v33, -1, -1);
        }

        else
        {
        }

        goto LABEL_26;
      }

      v8 = *(v1 + 48);
      v9 = v7;
      if (v8)
      {
        v10 = [v8 opaqueSessionID];
        *(v0 + 104) = v10;
        if (qword_1EA9C3DA0 != -1)
        {
          swift_once();
        }

        v11 = sub_18B6C435C();
        __swift_project_value_buffer(v11, qword_1EA9CE398);

        v12 = sub_18B6C434C();
        v13 = sub_18B6C596C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = *(v0 + 64);
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46[0] = v16;
          *v15 = 136315394;
          if (*(v14 + 24))
          {
            if (*(v14 + 24) == 1)
            {
              v17 = 0xE600000000000000;
              v18 = 0x7070412D6E49;
            }

            else
            {
              v17 = 0xE800000000000000;
              v18 = 0x73676E6974746553;
            }
          }

          else
          {
            v17 = 0xE200000000000000;
            v18 = 17219;
          }

          v41 = sub_18B4F4244(v18, v17, v46);

          *(v15 + 4) = v41;
          *(v15 + 12) = 1024;
          *(v15 + 14) = v10;
          _os_log_impl(&dword_18B49C000, v12, v13, "[%s] set fakeDiscoverySession: %u", v15, 0x12u);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x18CFF91B0](v16, -1, -1);
          MEMORY[0x18CFF91B0](v15, -1, -1);
        }

        v42 = *(*(v0 + 64) + 136);
        *(v0 + 72) = v42;
        v43 = *(v42 + 16);

        v44 = swift_task_alloc();
        *(v0 + 80) = v44;
        v45 = sub_18B4AC60C(0, &qword_1EA9C39E0);
        *v44 = v0;
        v44[1] = sub_18B4DBEA8;

        return MEMORY[0x1EEE6DA40](v0 + 56, v43, v45);
      }
    }

    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v19 = sub_18B6C435C();
    __swift_project_value_buffer(v19, qword_1EA9CE398);

    v20 = sub_18B6C434C();
    v21 = sub_18B6C596C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 64);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46[0] = v24;
      *v23 = 136315138;
      if (*(v22 + 24))
      {
        if (*(v22 + 24) == 1)
        {
          v25 = 0xE600000000000000;
          v26 = 0x7070412D6E49;
        }

        else
        {
          v25 = 0xE800000000000000;
          v26 = 0x73676E6974746553;
        }
      }

      else
      {
        v25 = 0xE200000000000000;
        v26 = 17219;
      }

      v38 = sub_18B4F4244(v26, v25, v46);

      *(v23 + 4) = v38;
      _os_log_impl(&dword_18B49C000, v20, v21, "[%s] Unable to set fakeDiscoverySession!", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x18CFF91B0](v24, -1, -1);
      MEMORY[0x18CFF91B0](v23, -1, -1);
    }
  }

LABEL_26:
  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_18B4DBEA8()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DBFD0, 0, 0);
}

uint64_t sub_18B4DBFD0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  v3 = *(v0 + 56);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
  [v3 setAudioSessionID_];

  v5 = *(v2 + 104);
  *(v0 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_18B4DC0B4, v5, 0);
}

uint64_t sub_18B4DC0B4()
{
  sub_18B4D6BF0();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_18B4DC178;

  return sub_18B4E1D3C();
}

uint64_t sub_18B4DC178()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B4DC2B8()
{
  v22 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 120);
    if (v3)
    {
      v4 = v2[14];
      v5 = v3;
    }

    else
    {
      v5 = 0xE300000000000000;
      v4 = 7104878;
    }

    v8 = qword_1EA9C3DA0;
    sub_18B6C450C();
    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_18B6C435C();
    __swift_project_value_buffer(v9, qword_1EA9CE398);
    sub_18B6C450C();
    v10 = sub_18B6C434C();
    v11 = sub_18B6C596C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_18B4F4244(v4, v5, &v21);

      _os_log_impl(&dword_18B49C000, v10, v11, "stop discovery for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x18CFF91B0](v13, -1, -1);
      MEMORY[0x18CFF91B0](v12, -1, -1);

      v14 = v2[15];
      if (v14)
      {
LABEL_12:
        v15 = v2[14];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FF0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_18B6E8750;
        *(v16 + 32) = v15;
        *(v16 + 40) = v14;
LABEL_15:
        v0[9] = v16;
        v17 = v2[16];
        v0[10] = v17;
        sub_18B6C450C();
        v18 = *(v17 + 16);

        v19 = swift_task_alloc();
        v0[11] = v19;
        v20 = sub_18B4AC60C(0, &qword_1EA9C39E0);
        v0[12] = v20;
        *v19 = v0;
        v19[1] = sub_18B4DC5AC;

        return MEMORY[0x1EEE6DA40](v0 + 5, v18, v20);
      }
    }

    else
    {

      v14 = v2[15];
      if (v14)
      {
        goto LABEL_12;
      }
    }

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_18B4DC5AC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DC6A8, 0, 0);
}

uint64_t sub_18B4DC6A8()
{
  v1 = v0[8];

  v2 = v0[5];
  v3 = sub_18B6C575C();

  [v2 setDiscoveryMode:0 forClientIdentifiers:v3];

  v4 = *(v1 + 136);
  v0[13] = v4;
  v5 = *(v4 + 16);

  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_18B4DC7B0;
  v7 = v0[12];

  return MEMORY[0x1EEE6DA40](v0 + 6, v5, v7);
}

uint64_t sub_18B4DC7B0()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DC8AC, 0, 0);
}

uint64_t sub_18B4DC8AC()
{

  v1 = *(v0 + 48);
  v2 = sub_18B6C575C();
  [v1 setDiscoveryMode:0 forClientIdentifiers:v2];

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_18B4DC980;

  return sub_18B4DCADC();
}

uint64_t sub_18B4DC980()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DCA7C, 0, 0);
}

uint64_t sub_18B4DCA7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4DCAFC()
{
  v29 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  __swift_project_value_buffer(v1, qword_1EA9CE398);

  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = sub_18B4F4244(v8, v7, &v28);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_18B4F4244(0xD00000000000001CLL, 0x800000018B6FC7A0, &v28);
    _os_log_impl(&dword_18B49C000, v2, v3, "[%s] %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v6, -1, -1);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  v10 = v0[2];
  v11 = *(v10 + 56);
  v0[3] = v11;
  if (v11)
  {

    v12 = MEMORY[0x1E69E7CA8];
    v13 = MEMORY[0x1E69E73E0];
    v14 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v15 = swift_task_alloc();
    v0[4] = v15;
    *v15 = v0;
    v15[1] = sub_18B4DD0BC;
    v16 = v0 + 125;
LABEL_22:

    return MEMORY[0x1EEE6DA20](v16, v11, v12 + 8, v13, v14);
  }

  *(v10 + 56) = 0;
  v11 = *(v10 + 64);
  v0[5] = v11;
  if (v11)
  {

    v12 = MEMORY[0x1E69E7CA8];
    v13 = MEMORY[0x1E69E73E0];
    v14 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v17 = swift_task_alloc();
    v0[6] = v17;
    *v17 = v0;
    v17[1] = sub_18B4DD548;
    v16 = v0 + 124;
    goto LABEL_22;
  }

  v18 = v0[2];
  *(v18 + 64) = 0;
  v11 = *(v18 + 72);
  v0[7] = v11;
  if (v11)
  {

    v12 = MEMORY[0x1E69E7CA8];
    v13 = MEMORY[0x1E69E73E0];
    v14 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v19 = swift_task_alloc();
    v0[8] = v19;
    *v19 = v0;
    v19[1] = sub_18B4DD944;
    v16 = v0 + 123;
    goto LABEL_22;
  }

  v20 = v0[2];
  *(v20 + 72) = 0;
  v11 = *(v20 + 80);
  v0[9] = v11;
  if (v11)
  {

    v12 = MEMORY[0x1E69E7CA8];
    v13 = MEMORY[0x1E69E73E0];
    v14 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = sub_18B4DDCAC;
    v16 = v0 + 122;
    goto LABEL_22;
  }

  v22 = v0[2];
  *(v22 + 80) = 0;
  v11 = *(v22 + 88);
  v0[11] = v11;
  if (v11)
  {

    v12 = MEMORY[0x1E69E7CA8];
    v13 = MEMORY[0x1E69E73E0];
    v14 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_18B4DDF80;
    v16 = v0 + 121;
    goto LABEL_22;
  }

  v24 = v0[2];
  *(v24 + 88) = 0;
  v11 = *(v24 + 96);
  v0[13] = v11;
  if (v11)
  {

    v12 = MEMORY[0x1E69E7CA8];
    v13 = MEMORY[0x1E69E73E0];
    v14 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v25 = swift_task_alloc();
    v0[14] = v25;
    *v25 = v0;
    v25[1] = sub_18B4DE1C0;
    v16 = (v0 + 15);
    goto LABEL_22;
  }

  *(v0[2] + 96) = 0;
  v26 = v0[1];

  return v26();
}

uint64_t sub_18B4DD0BC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DD1B8, 0, 0);
}

uint64_t sub_18B4DD1B8()
{

  v1 = *(v0 + 2);
  *(v1 + 56) = 0;

  v2 = *(v1 + 64);
  *(v0 + 5) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v6 = swift_task_alloc();
    *(v0 + 6) = v6;
    *v6 = v0;
    v6[1] = sub_18B4DD548;
    v7 = v0 + 124;
LABEL_11:

    return MEMORY[0x1EEE6DA20](v7, v2, v3 + 8, v4, v5);
  }

  v8 = *(v0 + 2);
  *(v8 + 64) = 0;
  v2 = *(v8 + 72);
  *(v0 + 7) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v9 = swift_task_alloc();
    *(v0 + 8) = v9;
    *v9 = v0;
    v9[1] = sub_18B4DD944;
    v7 = v0 + 123;
    goto LABEL_11;
  }

  v10 = *(v0 + 2);
  *(v10 + 72) = 0;
  v2 = *(v10 + 80);
  *(v0 + 9) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v11 = swift_task_alloc();
    *(v0 + 10) = v11;
    *v11 = v0;
    v11[1] = sub_18B4DDCAC;
    v7 = v0 + 122;
    goto LABEL_11;
  }

  v12 = *(v0 + 2);
  *(v12 + 80) = 0;
  v2 = *(v12 + 88);
  *(v0 + 11) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v13 = swift_task_alloc();
    *(v0 + 12) = v13;
    *v13 = v0;
    v13[1] = sub_18B4DDF80;
    v7 = v0 + 121;
    goto LABEL_11;
  }

  v14 = *(v0 + 2);
  *(v14 + 88) = 0;
  v2 = *(v14 + 96);
  *(v0 + 13) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v15 = swift_task_alloc();
    *(v0 + 14) = v15;
    *v15 = v0;
    v15[1] = sub_18B4DE1C0;
    v7 = v0 + 120;
    goto LABEL_11;
  }

  *(*(v0 + 2) + 96) = 0;
  v16 = *(v0 + 1);

  return v16();
}

uint64_t sub_18B4DD548()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DD644, 0, 0);
}

uint64_t sub_18B4DD644()
{

  v1 = *(v0 + 2);
  *(v1 + 64) = 0;

  v2 = *(v1 + 72);
  *(v0 + 7) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v6 = swift_task_alloc();
    *(v0 + 8) = v6;
    *v6 = v0;
    v6[1] = sub_18B4DD944;
    v7 = v0 + 123;
LABEL_9:

    return MEMORY[0x1EEE6DA20](v7, v2, v3 + 8, v4, v5);
  }

  v8 = *(v0 + 2);
  *(v8 + 72) = 0;
  v2 = *(v8 + 80);
  *(v0 + 9) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v9 = swift_task_alloc();
    *(v0 + 10) = v9;
    *v9 = v0;
    v9[1] = sub_18B4DDCAC;
    v7 = v0 + 122;
    goto LABEL_9;
  }

  v10 = *(v0 + 2);
  *(v10 + 80) = 0;
  v2 = *(v10 + 88);
  *(v0 + 11) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v11 = swift_task_alloc();
    *(v0 + 12) = v11;
    *v11 = v0;
    v11[1] = sub_18B4DDF80;
    v7 = v0 + 121;
    goto LABEL_9;
  }

  v12 = *(v0 + 2);
  *(v12 + 88) = 0;
  v2 = *(v12 + 96);
  *(v0 + 13) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v13 = swift_task_alloc();
    *(v0 + 14) = v13;
    *v13 = v0;
    v13[1] = sub_18B4DE1C0;
    v7 = v0 + 120;
    goto LABEL_9;
  }

  *(*(v0 + 2) + 96) = 0;
  v14 = *(v0 + 1);

  return v14();
}

uint64_t sub_18B4DD944()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DDA40, 0, 0);
}

uint64_t sub_18B4DDA40()
{

  v1 = *(v0 + 2);
  *(v1 + 72) = 0;

  v2 = *(v1 + 80);
  *(v0 + 9) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v6 = swift_task_alloc();
    *(v0 + 10) = v6;
    *v6 = v0;
    v6[1] = sub_18B4DDCAC;
    v7 = v0 + 122;
LABEL_7:

    return MEMORY[0x1EEE6DA20](v7, v2, v3 + 8, v4, v5);
  }

  v8 = *(v0 + 2);
  *(v8 + 80) = 0;
  v2 = *(v8 + 88);
  *(v0 + 11) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v9 = swift_task_alloc();
    *(v0 + 12) = v9;
    *v9 = v0;
    v9[1] = sub_18B4DDF80;
    v7 = v0 + 121;
    goto LABEL_7;
  }

  v10 = *(v0 + 2);
  *(v10 + 88) = 0;
  v2 = *(v10 + 96);
  *(v0 + 13) = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v11 = swift_task_alloc();
    *(v0 + 14) = v11;
    *v11 = v0;
    v11[1] = sub_18B4DE1C0;
    v7 = v0 + 120;
    goto LABEL_7;
  }

  *(*(v0 + 2) + 96) = 0;
  v12 = *(v0 + 1);

  return v12();
}

uint64_t sub_18B4DDCAC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DDDA8, 0, 0);
}

uint64_t sub_18B4DDDA8()
{

  v1 = v0[2];
  *(v1 + 80) = 0;

  v2 = *(v1 + 88);
  v0[11] = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_18B4DDF80;
    v7 = (v0 + 121);
LABEL_5:

    return MEMORY[0x1EEE6DA20](v7, v2, v3 + 8, v4, v5);
  }

  v8 = v0[2];
  *(v8 + 88) = 0;
  v2 = *(v8 + 96);
  v0[13] = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_18B4DE1C0;
    v7 = v0 + 15;
    goto LABEL_5;
  }

  *(v0[2] + 96) = 0;
  v10 = v0[1];

  return v10();
}

uint64_t sub_18B4DDF80()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DE07C, 0, 0);
}

uint64_t sub_18B4DE07C()
{

  v1 = v0[2];
  *(v1 + 88) = 0;

  v2 = *(v1 + 96);
  v0[13] = v2;
  if (v2)
  {

    v3 = MEMORY[0x1E69E7CA8];
    v4 = MEMORY[0x1E69E73E0];
    v5 = MEMORY[0x1E69E7410];
    sub_18B6C58AC();
    v6 = swift_task_alloc();
    v0[14] = v6;
    *v6 = v0;
    v6[1] = sub_18B4DE1C0;

    return MEMORY[0x1EEE6DA20](v0 + 15, v2, v3 + 8, v4, v5);
  }

  else
  {
    *(v0[2] + 96) = 0;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_18B4DE1C0()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DE2BC, 0, 0);
}

uint64_t sub_18B4DE2BC()
{

  *(*(v0 + 16) + 96) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4DE330(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4DE350, 0, 0);
}

uint64_t sub_18B4DE350()
{
  v30 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 120);
    if (v3)
    {
      v4 = *(Strong + 112);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F98);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18B6E6E50;
      v6 = *MEMORY[0x1E6958668];
      *(inited + 32) = *MEMORY[0x1E6958668];
      v7 = MEMORY[0x1E69E6158];
      *(inited + 40) = v4;
      *(inited + 48) = v3;
      v8 = *MEMORY[0x1E6958660];
      *(inited + 64) = v7;
      *(inited + 72) = v8;
      *(inited + 104) = v7;
      *(inited + 80) = v4;
      *(inited + 88) = v3;
      swift_bridgeObjectRetain_n();
      v9 = v6;
      v10 = v8;
      v11 = sub_18B4F7F0C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FA0);
      swift_arrayDestroy();
    }

    else
    {
      v11 = sub_18B4F7F0C(MEMORY[0x1E69E7CC0]);
    }

    v0[27] = v11;
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v14 = v0[25];
    v15 = sub_18B6C435C();
    v0[28] = __swift_project_value_buffer(v15, qword_1EA9CE398);

    v16 = v14;
    v17 = sub_18B6C434C();
    v18 = sub_18B6C596C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v19 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v22 = 0xE600000000000000;
          v23 = 0x7070412D6E49;
        }

        else
        {
          v22 = 0xE800000000000000;
          v23 = 0x73676E6974746553;
        }
      }

      else
      {
        v22 = 0xE200000000000000;
        v23 = 17219;
      }

      v24 = v0[25];
      v25 = sub_18B4F4244(v23, v22, &v29);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v24;
      *v20 = v24;
      v26 = v24;
      _os_log_impl(&dword_18B49C000, v17, v18, "[%s] Trying to set new input device for client with id: %@", v19, 0x16u);
      sub_18B4A6454(v20, &qword_1EA9C4FA8);
      MEMORY[0x18CFF91B0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x18CFF91B0](v21, -1, -1);
      MEMORY[0x18CFF91B0](v19, -1, -1);
    }

    else
    {
      v24 = v0[25];
    }

    v0[29] = v24;
    __swift_project_boxed_opaque_existential_1((v2 + 144), *(v2 + 168));
    v28 = off_1EFECD040 + *off_1EFECD040;
    v27 = swift_task_alloc();
    v0[30] = v27;
    *v27 = v0;
    v27[1] = sub_18B4DE7A4;

    return (v28)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_18B4DE7A4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DE8A0, 0, 0);
}

uint64_t sub_18B4DE8A0()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_18B4DE9E0;
  v5 = v0[29];

  return v7(v5, v1, v2, v3);
}

uint64_t sub_18B4DE9E0(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4DEB00, 0, 0);
}

uint64_t sub_18B4DEB00()
{
  v18 = v0;
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = v1;

  v3 = v2;
  v4 = sub_18B6C434C();
  v5 = sub_18B6C596C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v12 = v0[32];
    v13 = sub_18B4F4244(v10, v9, &v17);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    v14 = [v12 status];

    *(v7 + 14) = v14;
    _os_log_impl(&dword_18B49C000, v4, v5, "[%s] Set new input completes with status %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x18CFF91B0](v8, -1, -1);
    MEMORY[0x18CFF91B0](v7, -1, -1);
  }

  else
  {
    v11 = v0[32];
  }

  v15 = *(v0[26] + 104);
  v0[33] = v15;

  return MEMORY[0x1EEE6DFA0](sub_18B4DECF0, v15, 0);
}

uint64_t sub_18B4DECF0()
{
  sub_18B4D6BF0();
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_18B4DED8C;

  return sub_18B4DEEF0(0);
}

uint64_t sub_18B4DED8C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DEE88, 0, 0);
}

uint64_t sub_18B4DEE88()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_18B4DEEF0(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 64) = a1;
  v3 = sub_18B6C584C();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4DEFB4, 0, 0);
}

uint64_t sub_18B4DEFB4()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_18B6C582C();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_18B4DF0FC;

  return (sub_18B4F1F54)();
}

uint64_t sub_18B4DF0FC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4F9F88, 0, 0);
}

uint64_t sub_18B4DF270(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4DF290, 0, 0);
}

uint64_t sub_18B4DF290()
{
  v32 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4F98);
    inited = swift_initStackObject();
    v4 = inited;
    v5 = MEMORY[0x1E6958668];
    *(inited + 16) = xmmword_18B6E6E50;
    v6 = *v5;
    *(inited + 32) = v6;
    if (*(v2 + 24))
    {
      v7 = 0xD000000000000023;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (*(v2 + 24))
    {
      v8 = "userPreferredInputRoute()";
    }

    else
    {
      v8 = "AVKitRoutingService";
    }

    v9 = v8 | 0x8000000000000000;
    v10 = MEMORY[0x1E69E6158];
    *(inited + 40) = v7;
    *(inited + 48) = v9;
    v11 = *MEMORY[0x1E6958660];
    *(inited + 64) = v10;
    *(inited + 72) = v11;
    *(inited + 104) = v10;
    *(inited + 80) = v7;
    *(inited + 88) = v9;
    v12 = v6;
    v13 = v11;
    v0[27] = sub_18B4F7F0C(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FA0);
    swift_arrayDestroy();
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v14 = v0[25];
    v15 = sub_18B6C435C();
    v0[28] = __swift_project_value_buffer(v15, qword_1EA9CE398);

    v16 = v14;
    v17 = sub_18B6C434C();
    v18 = sub_18B6C596C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v19 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v22 = 0xE600000000000000;
          v23 = 0x7070412D6E49;
        }

        else
        {
          v22 = 0xE800000000000000;
          v23 = 0x73676E6974746553;
        }
      }

      else
      {
        v22 = 0xE200000000000000;
        v23 = 17219;
      }

      v26 = v0[25];
      v27 = sub_18B4F4244(v23, v22, &v31);

      *(v19 + 4) = v27;
      *(v19 + 12) = 2112;
      *(v19 + 14) = v26;
      *v20 = v26;
      v28 = v26;
      _os_log_impl(&dword_18B49C000, v17, v18, "[%s] Trying to set new input device for metering placeholder with id %@", v19, 0x16u);
      sub_18B4A6454(v20, &qword_1EA9C4FA8);
      MEMORY[0x18CFF91B0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x18CFF91B0](v21, -1, -1);
      MEMORY[0x18CFF91B0](v19, -1, -1);
    }

    else
    {
      v26 = v0[25];
    }

    v0[29] = v26;
    __swift_project_boxed_opaque_existential_1((v2 + 144), *(v2 + 168));
    v30 = off_1EFECD040 + *off_1EFECD040;
    v29 = swift_task_alloc();
    v0[30] = v29;
    *v29 = v0;
    v29[1] = sub_18B4DF6EC;

    return (v30)(v0 + 16, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_18B4DF6EC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DF7E8, 0, 0);
}

uint64_t sub_18B4DF7E8()
{
  v1 = v0[27];
  v2 = v0[19];
  v3 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_18B4DF928;
  v5 = v0[29];

  return v7(v5, v1, v2, v3);
}

uint64_t sub_18B4DF928(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4DFA48, 0, 0);
}

uint64_t sub_18B4DFA48()
{
  v18 = v0;
  v1 = v0[32];
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v2 = v1;

  v3 = v2;
  v4 = sub_18B6C434C();
  v5 = sub_18B6C596C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[26];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v12 = v0[32];
    v13 = sub_18B4F4244(v10, v9, &v17);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    v14 = [v12 status];

    *(v7 + 14) = v14;
    _os_log_impl(&dword_18B49C000, v4, v5, "[%s] set new input on metering placeholder session completed with status %ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x18CFF91B0](v8, -1, -1);
    MEMORY[0x18CFF91B0](v7, -1, -1);
  }

  else
  {
    v11 = v0[32];
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_18B4DFC50(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_18B4CCBCC;

  return v5();
}

void sub_18B4DFD58()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_18B4DFE68;

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18B4DFE68()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4DFF80, 0, 0);
}

void sub_18B4DFF80()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_18B4F9F70;

    v5();
  }
}

uint64_t sub_18B4E0090(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4E00B0, 0, 0);
}

uint64_t sub_18B4E00B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
    v6 = off_1EFECD040 + *off_1EFECD040;
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_18B4E0250;

    return (v6)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    v4 = v0[34];
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_18B4E0250()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E034C, 0, 0);
}

uint64_t sub_18B4E034C()
{
  v1 = v0[36];
  v2 = v0[17];
  v3 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[38] = v5;
  v6 = *(v3 + 16);
  sub_18B6C450C();
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_18B4E04A0;

  return v9(v4, v5, v2, v3);
}

uint64_t sub_18B4E04A0(uint64_t a1)
{
  *(*v1 + 320) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4E05C0, 0, 0);
}

uint64_t sub_18B4E05C0()
{
  v24 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    v3 = *(v2 + 104);
    *(v0 + 328) = v3;

    v4 = v1;
    sub_18B4ADF44(v4, (v0 + 64));
    *(v0 + 336) = *(v0 + 64);
    *(v0 + 352) = *(v0 + 80);
    *(v0 + 360) = *(v0 + 88);
    *(v0 + 376) = *(v0 + 104);

    return MEMORY[0x1EEE6DFA0](sub_18B4E08B4, v3, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v5 = sub_18B6C435C();
    __swift_project_value_buffer(v5, qword_1EA9CE398);

    v6 = sub_18B6C434C();
    v7 = sub_18B6C596C();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 288);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315394;
      if (*(v9 + 24))
      {
        if (*(v9 + 24) == 1)
        {
          v12 = 0xE600000000000000;
          v13 = 0x7070412D6E49;
        }

        else
        {
          v12 = 0xE800000000000000;
          v13 = 0x73676E6974746553;
        }
      }

      else
      {
        v12 = 0xE200000000000000;
        v13 = 17219;
      }

      v14 = *(v0 + 288);
      v15 = sub_18B4F4244(v13, v12, &v23);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2080;
      v16 = *(v14 + 120);
      if (v16)
      {
        v17 = *(*(v0 + 288) + 112);
        v18 = v16;
      }

      else
      {
        v18 = 0xE300000000000000;
        v17 = 7104878;
      }

      sub_18B6C450C();
      v19 = sub_18B4F4244(v17, v18, &v23);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_18B49C000, v6, v7, "[%s] requesting userPreferredInputDevice for %s is nil", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18CFF91B0](v11, -1, -1);
      MEMORY[0x18CFF91B0](v10, -1, -1);
    }

    v20 = *(v0 + 272);
    v20[1] = 0u;
    v20[2] = 0u;
    *v20 = 0u;
    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_18B4E08B4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 328);
  v6 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v6;
  *(v0 + 208) = *(v0 + 96);
  v7 = *(v5 + 160);
  v8 = *(v5 + 168);
  *(v5 + 160) = v4;
  *(v5 + 176) = v3;
  *(v5 + 184) = v2;
  *(v5 + 200) = v1;
  sub_18B4C41CC(v0 + 176, v0 + 224);
  sub_18B4C41CC(v0 + 192, v0 + 240);
  sub_18B4C41CC(v0 + 208, v0 + 256);
  sub_18B4F8218(v7, v8);
  sub_18B4F8268(v0 + 176);
  sub_18B4F8268(v0 + 192);
  sub_18B4F8268(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_18B4E09D0, 0, 0);
}

uint64_t sub_18B4E09D0()
{
  v23 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  __swift_project_value_buffer(v1, qword_1EA9CE398);

  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 288);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = *(v0 + 288);
    v10 = sub_18B4F4244(v8, v7, &v22);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    if (*(v9 + 120))
    {
      v11 = *(*(v0 + 288) + 112);
      v12 = *(v9 + 120);
    }

    else
    {
      v12 = 0xE300000000000000;
      v11 = 7104878;
    }

    sub_18B6C450C();
    v13 = sub_18B4F4244(v11, v12, &v22);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_18B49C000, v2, v3, "[%s] requesting userPreferredInputDevice for %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v6, -1, -1);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  v14 = *(v0 + 320);
  v15 = *(v0 + 272);
  sub_18B4ADF44(v14, (v0 + 16));
  v20 = *(v0 + 32);
  v21 = *(v0 + 16);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);

  *v15 = v21;
  *(v15 + 16) = v20;
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_18B4E0C40(uint64_t a1, uint64_t a2)
{
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4E0C60, 0, 0);
}

uint64_t sub_18B4E0C60()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[33] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 128);
    v0[34] = v2;
    v3 = *(v2 + 16);

    v4 = swift_task_alloc();
    v0[35] = v4;
    v5 = sub_18B4AC60C(0, &qword_1EA9C39E0);
    v0[36] = v5;
    *v4 = v0;
    v4[1] = sub_18B4E0D9C;

    return MEMORY[0x1EEE6DA40](v0 + 29, v3, v5);
  }

  else
  {
    v6 = v0[31];
    *v6 = 0;
    v6[1] = 0xE000000000000000;
    v6[2] = 0;
    v6[3] = 0xE000000000000000;
    v6[4] = 0;
    v6[5] = 0xE000000000000000;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_18B4E0D9C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E0E98, 0, 0);
}

uint64_t sub_18B4E0E98()
{
  v34 = v0;

  v1 = *(v0 + 232);
  v2 = [v1 fallbackInputDevice];
  *(v0 + 296) = v2;

  v3 = [v2 deviceName];
  if (v3)
  {

    v4 = [v2 deviceName];
    if (!v4)
    {
LABEL_8:
      *(v0 + 320) = v2;
      if (qword_1EA9C3DA0 != -1)
      {
        swift_once();
      }

      v11 = sub_18B6C435C();
      __swift_project_value_buffer(v11, qword_1EA9CE398);

      v12 = sub_18B6C434C();
      v13 = sub_18B6C596C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 264);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33 = v16;
        *v15 = 136315394;
        if (*(v14 + 24))
        {
          if (*(v14 + 24) == 1)
          {
            v17 = 0xE600000000000000;
            v18 = 0x7070412D6E49;
          }

          else
          {
            v17 = 0xE800000000000000;
            v18 = 0x73676E6974746553;
          }
        }

        else
        {
          v17 = 0xE200000000000000;
          v18 = 17219;
        }

        v23 = sub_18B4F4244(v18, v17, &v33);

        *(v15 + 4) = v23;
        *(v15 + 12) = 2080;
        v24 = [v2 deviceName];
        if (v24)
        {
          v25 = v24;
          v26 = sub_18B6C562C();
          v28 = v27;
        }

        else
        {
          v28 = 0xE300000000000000;
          v26 = 7104878;
        }

        v29 = sub_18B4F4244(v26, v28, &v33);

        *(v15 + 14) = v29;
        _os_log_impl(&dword_18B49C000, v12, v13, "[%s] requesting fallbackInputDevice %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x18CFF91B0](v16, -1, -1);
        MEMORY[0x18CFF91B0](v15, -1, -1);
      }

      v30 = *(*(v0 + 264) + 104);
      *(v0 + 328) = v30;

      v31 = v2;
      sub_18B4ADF44(v31, (v0 + 64));
      *(v0 + 336) = *(v0 + 64);
      *(v0 + 352) = *(v0 + 80);
      *(v0 + 360) = *(v0 + 88);
      *(v0 + 376) = *(v0 + 104);

      return MEMORY[0x1EEE6DFA0](sub_18B4E166C, v30, 0);
    }

    v5 = v4;
    v6 = sub_18B6C562C();
    v8 = v7;

    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8 == 0xE000000000000000;
    }

    if (v9)
    {
    }

    else
    {
      v10 = sub_18B6C5CEC();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v19 = *(*(v0 + 264) + 136);
  *(v0 + 304) = v19;
  v20 = *(v19 + 16);

  v21 = swift_task_alloc();
  *(v0 + 312) = v21;
  *v21 = v0;
  v21[1] = sub_18B4E1298;
  v22 = *(v0 + 288);

  return MEMORY[0x1EEE6DA40](v0 + 240, v20, v22);
}

uint64_t sub_18B4E1298()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E1394, 0, 0);
}

uint64_t sub_18B4E1394()
{
  v23 = v0;
  v1 = *(v0 + 296);

  v2 = *(v0 + 240);
  v3 = [v2 fallbackInputDevice];

  *(v0 + 320) = v3;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v4 = sub_18B6C435C();
  __swift_project_value_buffer(v4, qword_1EA9CE398);

  v5 = sub_18B6C434C();
  v6 = sub_18B6C596C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    if (*(v7 + 24))
    {
      if (*(v7 + 24) == 1)
      {
        v10 = 0xE600000000000000;
        v11 = 0x7070412D6E49;
      }

      else
      {
        v10 = 0xE800000000000000;
        v11 = 0x73676E6974746553;
      }
    }

    else
    {
      v10 = 0xE200000000000000;
      v11 = 17219;
    }

    v12 = sub_18B4F4244(v11, v10, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = [v3 deviceName];
    if (v13)
    {
      v14 = v13;
      v15 = sub_18B6C562C();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_18B4F4244(v15, v17, &v22);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_18B49C000, v5, v6, "[%s] requesting fallbackInputDevice %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v9, -1, -1);
    MEMORY[0x18CFF91B0](v8, -1, -1);
  }

  v19 = *(*(v0 + 264) + 104);
  *(v0 + 328) = v19;

  v20 = v3;
  sub_18B4ADF44(v20, (v0 + 64));
  *(v0 + 336) = *(v0 + 64);
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 360) = *(v0 + 88);
  *(v0 + 376) = *(v0 + 104);

  return MEMORY[0x1EEE6DFA0](sub_18B4E166C, v19, 0);
}

uint64_t sub_18B4E166C()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 360);
  v3 = *(v0 + 352);
  v4 = *(v0 + 80);
  *(v0 + 136) = *(v0 + 64);
  v5 = *(v0 + 336);
  v6 = *(v0 + 328);
  *(v0 + 152) = v4;
  *(v0 + 168) = *(v0 + 96);
  v7 = *(v6 + 112);
  v8 = *(v6 + 120);
  *(v6 + 112) = v5;
  *(v6 + 128) = v3;
  *(v6 + 136) = v2;
  *(v6 + 152) = v1;
  sub_18B4C41CC(v0 + 136, v0 + 184);
  sub_18B4C41CC(v0 + 152, v0 + 200);
  sub_18B4C41CC(v0 + 168, v0 + 216);
  sub_18B4F8218(v7, v8);
  sub_18B4F8268(v0 + 136);
  sub_18B4F8268(v0 + 152);
  sub_18B4F8268(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_18B4E178C, 0, 0);
}

uint64_t sub_18B4E178C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 320);
  sub_18B4ADF44(v2, (v0 + 16));

  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v4;
  *v1 = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18B4E1828(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4E1848, 0, 0);
}

uint64_t sub_18B4E1848()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_18B4E1940;

    return sub_18B4E1D3C();
  }

  else
  {
    **(v0 + 40) = MEMORY[0x1E69E7CC0];
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_18B4E1940()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E1A3C, 0, 0);
}

uint64_t sub_18B4E1A3C()
{
  v1 = *(*(v0 + 56) + 104);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4E1A60, v1, 0);
}

uint64_t sub_18B4E1A60()
{
  *(v0 + 80) = *(*(v0 + 72) + 256);
  sub_18B6C450C();

  return MEMORY[0x1EEE6DFA0](sub_18B4E1AD4, 0, 0);
}

uint64_t sub_18B4E1AD4()
{
  v20 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  __swift_project_value_buffer(v1, qword_1EA9CE398);
  sub_18B6C450C();

  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 56);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = *(v0 + 80);
    v10 = sub_18B4F4244(v8, v7, &v19);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    if (v9)
    {
      v11 = MEMORY[0x18CFF7360](*(v0 + 80), &type metadata for InputPickerMicrophone);
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_18B4F4244(v11, v13, &v19);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_18B49C000, v2, v3, "[%s] requesting routes %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v6, -1, -1);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  v15 = *(v0 + 80);

  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v16 = v15;
  }

  **(v0 + 40) = v16;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_18B4E1D3C()
{
  v1[2] = v0;
  v2 = sub_18B6C584C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4E1DFC, 0, 0);
}

uint64_t sub_18B4E1DFC()
{
  v1 = swift_allocObject();
  v0[6] = v1;
  swift_weakInit();
  sub_18B6C582C();
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_18B4DF0FC;
  v3 = v0[5];

  return sub_18B4F1F54(sub_18B4F1F54, 0xD00000000000001FLL, 0x800000018B6FC730, v3, &unk_18B6E89D0, v1);
}

uint64_t sub_18B4E1F1C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4E1F3C, 0, 0);
}

uint64_t sub_18B4E1F3C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_18B4E2040;

    return sub_18B4DEEF0(1);
  }

  else
  {
    v4 = v0[5];
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    v5 = v0[5];
    v5[3] = 0;
    v5[4] = 0;
    v5[5] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_18B4E2040()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E213C, 0, 0);
}

uint64_t sub_18B4E213C()
{
  v1 = *(*(v0 + 56) + 104);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4E2160, v1, 0);
}

uint64_t sub_18B4E2160()
{
  v1 = v0[9];
  v2 = v1[33];
  v0[10] = v2;
  v3 = v1[34];
  v0[11] = v3;
  v0[12] = v1[35];
  v0[13] = v1[36];
  v0[14] = v1[37];
  v0[15] = v1[38];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4E21F8, 0, 0);
}

uint64_t sub_18B4E21F8()
{
  v1 = *(v0 + 96);
  v7 = *(v0 + 80);
  v2 = *(v0 + 40);

  *v2 = v7;
  *(v2 + 16) = v1;
  v3 = *(v0 + 120);
  v4 = *(v0 + 40);
  *(v4 + 24) = *(v0 + 104);
  *(v4 + 40) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18B4E2290(uint64_t a1, uint64_t a2)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4E22B0, 0, 0);
}

uint64_t sub_18B4E22B0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
    v6 = off_1EFECD040 + *off_1EFECD040;
    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_18B4E2450;

    return (v6)(v0 + 14, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    v4 = v0[34];
    v4[1] = 0u;
    v4[2] = 0u;
    *v4 = 0u;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_18B4E2450()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E254C, 0, 0);
}

uint64_t sub_18B4E254C()
{
  v1 = v0[17];
  v2 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v1);
  v5 = (*(v2 + 16) + **(v2 + 16));
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E2678;

  return v5(0, 0, v1, v2);
}

uint64_t sub_18B4E2678(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4E2778, 0, 0);
}

uint64_t sub_18B4E2778()
{
  v1 = *(v0 + 312);
  if (v1)
  {
    v2 = *(v0 + 288);
    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    v3 = *(v2 + 104);
    *(v0 + 320) = v3;

    v4 = v1;
    sub_18B4ADF44(v4, (v0 + 64));
    *(v0 + 328) = *(v0 + 64);
    *(v0 + 344) = *(v0 + 80);
    *(v0 + 352) = *(v0 + 88);
    *(v0 + 368) = *(v0 + 104);

    return MEMORY[0x1EEE6DFA0](sub_18B4E2884, v3, 0);
  }

  else
  {
    v5 = *(v0 + 272);

    __swift_destroy_boxed_opaque_existential_1(v0 + 112);
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_18B4E2884()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v7 = v6[26];
  v8 = v6[27];
  v6[26] = *(v0 + 328);
  v6[27] = v5;
  v6[28] = v4;
  v6[29] = v3;
  v6[30] = v2;
  v6[31] = v1;
  v9 = *(v0 + 80);
  *(v0 + 176) = *(v0 + 64);
  *(v0 + 192) = v9;
  *(v0 + 208) = *(v0 + 96);
  sub_18B4C41CC(v0 + 176, v0 + 224);
  sub_18B4C41CC(v0 + 192, v0 + 240);
  sub_18B4C41CC(v0 + 208, v0 + 256);
  sub_18B4F8218(v7, v8);
  sub_18B4F8268(v0 + 176);
  sub_18B4F8268(v0 + 192);
  sub_18B4F8268(v0 + 208);

  return MEMORY[0x1EEE6DFA0](sub_18B4E2994, 0, 0);
}

uint64_t sub_18B4E2994()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  sub_18B4ADF44(v1, (v0 + 16));
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);

  *v2 = v8;
  *(v2 + 16) = v7;
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18B4E2A58()
{
  v19 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v3 = sub_18B6C435C();
    v0[16] = __swift_project_value_buffer(v3, qword_1EA9CE398);

    v4 = sub_18B6C434C();
    v5 = sub_18B6C596C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v18 = v7;
      *v6 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v12 = sub_18B4F4244(v9, v8, &v18);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      if (*(v2 + 120))
      {
        v13 = *(v2 + 112);
        v14 = *(v2 + 120);
      }

      else
      {
        v14 = 0xE300000000000000;
        v13 = 7104878;
      }

      sub_18B6C450C();
      v15 = sub_18B4F4244(v13, v14, &v18);

      *(v6 + 14) = v15;
      _os_log_impl(&dword_18B49C000, v4, v5, "[%s] clearing Preferred for %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18CFF91B0](v7, -1, -1);
      MEMORY[0x18CFF91B0](v6, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v2 + 144), *(v2 + 168));
    v17 = off_1EFECD040 + *off_1EFECD040;
    v16 = swift_task_alloc();
    v0[17] = v16;
    *v16 = v0;
    v16[1] = sub_18B4E2DBC;

    return (v17)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_18B4E2DBC()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E2EB8, 0, 0);
}

uint64_t sub_18B4E2EB8()
{
  v1 = v0[15];
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v0[18] = v5;
  v6 = *(v3 + 32);
  sub_18B6C450C();
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_18B4E300C;

  return v9(v4, v5, v2, v3);
}

uint64_t sub_18B4E300C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_18B4E3390;
  }

  else
  {

    v2 = sub_18B4E3128;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4E3128()
{
  v1 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = *(v1 + 104);
  *(v0 + 168) = v2;

  return MEMORY[0x1EEE6DFA0](sub_18B4E3198, v2, 0);
}

uint64_t sub_18B4E3198()
{
  sub_18B4D6BF0();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_18B4E3234;

  return sub_18B4DEEF0(0);
}

uint64_t sub_18B4E3234()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E3330, 0, 0);
}

uint64_t sub_18B4E3330()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4E3390()
{
  v19 = v0;
  v1 = v0[20];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v2 = v1;
  v3 = sub_18B6C434C();
  v4 = sub_18B6C593C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    if (*(v5 + 24))
    {
      if (*(v5 + 24) == 1)
      {
        v8 = 0xE600000000000000;
        v9 = 0x7070412D6E49;
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x73676E6974746553;
      }
    }

    else
    {
      v8 = 0xE200000000000000;
      v9 = 17219;
    }

    v11 = v0[20];
    v12 = sub_18B4F4244(v9, v8, &v18);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_18B6C5D6C();
    v15 = sub_18B4F4244(v13, v14, &v18);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_18B49C000, v3, v4, "[%s] clearing client preferred input error=%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v7, -1, -1);
    MEMORY[0x18CFF91B0](v6, -1, -1);
  }

  else
  {
    v10 = v0[20];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_18B4E35EC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
    v5 = off_1EFECD040 + *off_1EFECD040;
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_18B4E377C;

    return (v5)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B4E377C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E3878, 0, 0);
}

uint64_t sub_18B4E3878()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v1 + 24);
  *(v0 + 152) = v4;
  if (v4)
  {
    v5 = 0xD000000000000023;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v4)
  {
    v6 = "userPreferredInputRoute()";
  }

  else
  {
    v6 = "AVKitRoutingService";
  }

  v9 = (*(v3 + 32) + **(v3 + 32));
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  *v7 = v0;
  v7[1] = sub_18B4E39E8;

  return v9(v5, v6 | 0x8000000000000000, v2, v3);
}

uint64_t sub_18B4E39E8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_18B4E3B90;
  }

  else
  {

    v2 = sub_18B4E3B28;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4E3B28()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4E3B90()
{
  v20 = v0;

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_18B6C435C();
  __swift_project_value_buffer(v2, qword_1EA9CE398);

  v3 = v1;
  v4 = sub_18B6C434C();
  v5 = sub_18B6C593C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    if (*(v6 + 24))
    {
      if (*(v6 + 24) == 1)
      {
        v9 = 0xE600000000000000;
        v10 = 0x7070412D6E49;
      }

      else
      {
        v9 = 0xE800000000000000;
        v10 = 0x73676E6974746553;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      v10 = 17219;
    }

    v12 = v0[18];
    v13 = sub_18B4F4244(v10, v9, &v19);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    swift_getErrorValue();
    v14 = sub_18B6C5D6C();
    v16 = sub_18B4F4244(v14, v15, &v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_18B49C000, v4, v5, "[%s] clearing metering placeholder preferred input error=%s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v8, -1, -1);
    MEMORY[0x18CFF91B0](v7, -1, -1);
  }

  else
  {
    v11 = v0[18];
  }

  v17 = v0[1];

  return v17();
}

void sub_18B4E3E58()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[3] = v2;
  if (v2)
  {
    v3 = v1[4];
    v0[4] = v1[5];

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_18B4E3F68;

    v5();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18B4E3F68()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E4080, 0, 0);
}

void sub_18B4E4080()
{
  if (v0[3] == 1)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[2];
    v3 = *(v2 + 48);
    v0[6] = *(v2 + 56);

    v5 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_18B4E4190;

    v5();
  }
}

uint64_t sub_18B4E4190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_18B4E42A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4E42C0, 0, 0);
}

uint64_t sub_18B4E42C0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
    v5 = (off_1EFECD040 + *off_1EFECD040);
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_18B4E445C;

    return v5(v0 + 16, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    **(v0 + 80) = 1065353216;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_18B4E445C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E4558, 0, 0);
}

uint64_t sub_18B4E4558()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v3 = (*(v2 + 56))(v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  **(v0 + 80) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_18B4E4610(uint64_t a1, float a2)
{
  *(v2 + 136) = a2;
  *(v2 + 112) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18B4E4634, 0, 0);
}

uint64_t sub_18B4E4634()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
    v5 = off_1EFECD040 + *off_1EFECD040;
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_18B4E47C4;

    return (v5)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B4E47C4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E48C0, 0, 0);
}

uint64_t sub_18B4E48C0()
{
  v18 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  (*(v3 + 40))(v2, v3, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v4 = sub_18B6C435C();
  __swift_project_value_buffer(v4, qword_1EA9CE398);

  v5 = sub_18B6C434C();
  v6 = sub_18B6C596C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 120);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    if (*(v8 + 24))
    {
      if (*(v8 + 24) == 1)
      {
        v11 = 0xE600000000000000;
        v12 = 0x7070412D6E49;
      }

      else
      {
        v11 = 0xE800000000000000;
        v12 = 0x73676E6974746553;
      }
    }

    else
    {
      v11 = 0xE200000000000000;
      v12 = 17219;
    }

    v13 = *(v0 + 136);
    v14 = sub_18B4F4244(v12, v11, &v17);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    *(v9 + 14) = v13;
    _os_log_impl(&dword_18B49C000, v5, v6, "[%s] Successfully set new input gain: %f", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x18CFF91B0](v10, -1, -1);
    MEMORY[0x18CFF91B0](v9, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_18B4E4D00(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return MEMORY[0x1EEE6DFA0](sub_18B4E4D20, 0, 0);
}

uint64_t sub_18B4E4D20()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 144), *(Strong + 168));
    v2 = off_1EFECD040;
    *(v0 + 144) = off_1EFECD040;
    *(v0 + 152) = &off_1EFECD040 & 0xFFFFFFFFFFFFLL | 0x24F5000000000000;
    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 160) = v3;
    *v3 = v0;
    v3[1] = sub_18B4E4EC4;

    return v6(v0 + 16, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {
    **(v0 + 120) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_18B4E4EC4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E4FC0, 0, 0);
}

uint64_t sub_18B4E4FC0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E50E4;

  return v5(v1, v2);
}

uint64_t sub_18B4E50E4(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4E51E4, 0, 0);
}

uint64_t sub_18B4E51E4()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = [*(v0 + 176) deviceType];

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v3 = v2 != 2;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v3 = 1;
  }

  *(v0 + 192) = v3;
  v4 = *(v0 + 144);
  __swift_project_boxed_opaque_existential_1((*(v0 + 136) + 144), *(*(v0 + 136) + 168));
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_18B4E5344;

  return v7(v0 + 56, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
}

uint64_t sub_18B4E5344()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4E5440, 0, 0);
}

uint64_t sub_18B4E5440()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v0 + 56), v2);
  v4 = (*(v3 + 48))(v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  **(v0 + 120) = v4 & v1 & 1;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_18B4E5524()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_18B4E5614;

    return sub_18B4D5820((v0 + 2));
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B4E5614()
{
  v1 = *v0;
  v4 = *v0;

  sub_18B4A6454(v1 + 16, &qword_1EA9C4FC8);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_18B4E573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v5[58] = swift_task_alloc();
  v6 = sub_18B6C584C();
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5000);
  v5[63] = swift_task_alloc();
  v7 = sub_18B6C59AC();
  v5[64] = v7;
  v5[65] = *(v7 - 8);
  v5[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4E58D4, 0, 0);
}

uint64_t sub_18B4E58D4()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_18B6C59BC();

  sub_18B6C599C();
  swift_beginAccess();
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E59EC;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4E59EC()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_18B4F9F7C;
  }

  else
  {
    v2 = sub_18B4E5B00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4E5B1C()
{
  v1 = v0[63];
  v2 = sub_18B6C400C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_18B6C58DC())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_18B4A6454(v0[63], &qword_1EA9C5000);
    goto LABEL_8;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v7 = sub_18B6C435C();
  __swift_project_value_buffer(v7, qword_1EA9CE398);
  v8 = sub_18B6C434C();
  v9 = sub_18B6C596C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_18B49C000, v8, v9, " .AvailableInputDevicesDidChange received", v10, 2u);
    MEMORY[0x18CFF91B0](v10, -1, -1);
  }

  v11 = *(v4 + 16);
  v0[70] = v11;
  v0[71] = swift_allocObject();
  swift_weakInit();
  sub_18B6C582C();

  return MEMORY[0x1EEE6DFA0](sub_18B4E5DBC, v11, 0);
}

uint64_t sub_18B4E5DBC()
{
  v22 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    sub_18B6C450C();
    v3 = sub_18B4F4F14(0xD00000000000001FLL, 0x800000018B6FC730);
    if (v4)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v3, (v0 + 2));

      sub_18B4D1D10((v0 + 2), (v0 + 27));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v5 = v0[55];
        v0[78] = v5;

        v6 = swift_task_alloc();
        v0[79] = v6;
        *v6 = v0;
        v6[1] = sub_18B4E6844;
        v7 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
    }
  }

  v9 = v0[71];
  v10 = v0[62];
  v11 = v0[59];
  v12 = v0[60];
  v13 = v0[58];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_18B4F2748(v20, 0xD00000000000001FLL, 0x800000018B6FC730);
  swift_endAccess();
  (*(v12 + 16))(v13, v10, v11);
  v14 = *(v12 + 56);
  v14(v13, 0, 1, v11);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B6E8B70;
  v15[5] = v9;

  v16 = sub_18B5280B4(0, 0, v13, &unk_18B6E8B78, v15);
  v0[72] = v16;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v0[11] = &off_1EFECFAC8;
  v0[7] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_18B4F2748((v0 + 7), 0xD00000000000001FLL, 0x800000018B6FC730);
  swift_endAccess();
  v14(v13, 1, 1, v11);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD00000000000001FLL;
  v18[7] = 0x800000018B6FC730;

  sub_18B5280B4(0, 0, v13, &unk_18B6E8B80, v18);

  v6 = swift_task_alloc();
  v0[73] = v6;
  *v6 = v0;
  v6[1] = sub_18B4E61C8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v6, v8, v7);
}

uint64_t sub_18B4E61C8()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x1EEE6DFA0](sub_18B4E62D8, v1, 0);
}

uint64_t sub_18B4E62D8()
{

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_18B4E6378, 0, 0);
}

uint64_t sub_18B4E6378()
{
  v1 = *(v0[69] + 16);
  v0[76] = v1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[77] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  sub_18B6C582C();

  return MEMORY[0x1EEE6DFA0](sub_18B4E643C, v1, 0);
}

uint64_t sub_18B4E643C()
{
  v22 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    sub_18B6C450C();
    v3 = sub_18B4F4F14(0xD000000000000027, 0x800000018B6FC750);
    if (v4)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v3, (v0 + 12));

      sub_18B4D1D10((v0 + 12), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v5 = v0[54];
        v0[82] = v5;

        v6 = swift_task_alloc();
        v0[83] = v6;
        *v6 = v0;
        v6[1] = sub_18B4E6C7C;
        v7 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 12));
    }

    else
    {
    }
  }

  v9 = v0[77];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[58];
  v13 = v0[59];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_18B4F2748(v20, 0xD000000000000027, 0x800000018B6FC750);
  swift_endAccess();
  (*(v11 + 16))(v12, v10, v13);
  v14 = *(v11 + 56);
  v14(v12, 0, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B6E8B88;
  v15[5] = v9;

  v16 = sub_18B5280B4(0, 0, v12, &unk_18B6E8B90, v15);
  v0[80] = v16;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v0[21] = &off_1EFECFAC8;
  v0[17] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_18B4F2748((v0 + 17), 0xD000000000000027, 0x800000018B6FC750);
  swift_endAccess();
  v14(v12, 1, 1, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD000000000000027;
  v18[7] = 0x800000018B6FC750;

  sub_18B5280B4(0, 0, v12, &unk_18B6E8B98, v18);

  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_18B4E6A14;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v6, v8, v7);
}

uint64_t sub_18B4E6844()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x1EEE6DFA0](sub_18B4E6970, v1, 0);
}

uint64_t sub_18B4E6970()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_18B4E6378, 0, 0);
}

uint64_t sub_18B4E6A14()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_18B4E6B24, v1, 0);
}

uint64_t sub_18B4E6B24()
{

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x1EEE6DFA0](sub_18B4E6BB0, 0, 0);
}

uint64_t sub_18B4E6BB0()
{
  v1 = v0[63];

  sub_18B4A6454(v1, &qword_1EA9C5000);
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E59EC;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4E6C7C()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_18B4E6DA8, v1, 0);
}

uint64_t sub_18B4E6DA8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x1EEE6DFA0](sub_18B4E6BB0, 0, 0);
}

uint64_t sub_18B4E6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[56] = a4;
  v5[57] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v5[58] = swift_task_alloc();
  v6 = sub_18B6C584C();
  v5[59] = v6;
  v5[60] = *(v6 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5000);
  v5[63] = swift_task_alloc();
  v7 = sub_18B6C59AC();
  v5[64] = v7;
  v5[65] = *(v7 - 8);
  v5[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4E6FD0, 0, 0);
}

uint64_t sub_18B4E6FD0()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_18B6C59BC();

  sub_18B6C599C();
  swift_beginAccess();
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E70E8;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4E70E8()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_18B4E74B8;
  }

  else
  {
    v2 = sub_18B4E71FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4E7218()
{
  v1 = v0[63];
  v2 = sub_18B6C400C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[69] = Strong;
  if (!Strong)
  {
    (*(v0[65] + 8))(v0[66], v0[64]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_18B6C58DC())
  {
    (*(v0[65] + 8))(v0[66], v0[64]);

LABEL_7:
    sub_18B4A6454(v0[63], &qword_1EA9C5000);
    goto LABEL_8;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v7 = sub_18B6C435C();
  __swift_project_value_buffer(v7, qword_1EA9CE398);
  v8 = sub_18B6C434C();
  v9 = sub_18B6C596C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_18B49C000, v8, v9, " .AvailableInputDevicesDidChange received", v10, 2u);
    MEMORY[0x18CFF91B0](v10, -1, -1);
  }

  v11 = *(v4 + 16);
  v0[70] = v11;
  v0[71] = swift_allocObject();
  swift_weakInit();
  sub_18B6C582C();

  return MEMORY[0x1EEE6DFA0](sub_18B4E7544, v11, 0);
}

uint64_t sub_18B4E74B8()
{
  *(v0 + 424) = *(v0 + 544);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5008);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_18B4E7544()
{
  v22 = v0;
  v1 = v0[70];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    sub_18B6C450C();
    v3 = sub_18B4F4F14(0xD00000000000001FLL, 0x800000018B6FC730);
    if (v4)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v3, (v0 + 2));

      sub_18B4D1D10((v0 + 2), (v0 + 27));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v5 = v0[55];
        v0[78] = v5;

        v6 = swift_task_alloc();
        v0[79] = v6;
        *v6 = v0;
        v6[1] = sub_18B4E7FCC;
        v7 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
    }
  }

  v9 = v0[71];
  v10 = v0[62];
  v11 = v0[59];
  v12 = v0[60];
  v13 = v0[58];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_18B4F2748(v20, 0xD00000000000001FLL, 0x800000018B6FC730);
  swift_endAccess();
  (*(v12 + 16))(v13, v10, v11);
  v14 = *(v12 + 56);
  v14(v13, 0, 1, v11);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B6E8B40;
  v15[5] = v9;

  v16 = sub_18B5280B4(0, 0, v13, &unk_18B6E8B48, v15);
  v0[72] = v16;
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v0[11] = &off_1EFECFAC8;
  v0[7] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_18B4F2748((v0 + 7), 0xD00000000000001FLL, 0x800000018B6FC730);
  swift_endAccess();
  v14(v13, 1, 1, v11);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD00000000000001FLL;
  v18[7] = 0x800000018B6FC730;

  sub_18B5280B4(0, 0, v13, &unk_18B6E8B50, v18);

  v6 = swift_task_alloc();
  v0[73] = v6;
  *v6 = v0;
  v6[1] = sub_18B4E7950;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v6, v8, v7);
}

uint64_t sub_18B4E7950()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x1EEE6DFA0](sub_18B4E7A60, v1, 0);
}

uint64_t sub_18B4E7A60()
{

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_18B4E7B00, 0, 0);
}

uint64_t sub_18B4E7B00()
{
  v1 = *(v0[69] + 16);
  v0[76] = v1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[77] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  sub_18B6C582C();

  return MEMORY[0x1EEE6DFA0](sub_18B4E7BC4, v1, 0);
}

uint64_t sub_18B4E7BC4()
{
  v22 = v0;
  v1 = v0[76];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    sub_18B6C450C();
    v3 = sub_18B4F4F14(0xD000000000000027, 0x800000018B6FC750);
    if (v4)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v3, (v0 + 12));

      sub_18B4D1D10((v0 + 12), (v0 + 22));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v5 = v0[54];
        v0[82] = v5;

        v6 = swift_task_alloc();
        v0[83] = v6;
        *v6 = v0;
        v6[1] = sub_18B4E8404;
        v7 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v5;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 12));
    }

    else
    {
    }
  }

  v9 = v0[77];
  v11 = v0[60];
  v10 = v0[61];
  v12 = v0[58];
  v13 = v0[59];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  swift_beginAccess();
  sub_18B4F2748(v20, 0xD000000000000027, 0x800000018B6FC750);
  swift_endAccess();
  (*(v11 + 16))(v12, v10, v13);
  v14 = *(v11 + 56);
  v14(v12, 0, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B6E8B58;
  v15[5] = v9;

  v16 = sub_18B5280B4(0, 0, v12, &unk_18B6E8B60, v15);
  v0[80] = v16;
  v0[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v0[21] = &off_1EFECFAC8;
  v0[17] = v16;
  swift_beginAccess();
  swift_retain_n();
  sub_18B4F2748((v0 + 17), 0xD000000000000027, 0x800000018B6FC750);
  swift_endAccess();
  v14(v12, 1, 1, v13);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v17;
  v18[6] = 0xD000000000000027;
  v18[7] = 0x800000018B6FC750;

  sub_18B5280B4(0, 0, v12, &unk_18B6E8B68, v18);

  v6 = swift_task_alloc();
  v0[81] = v6;
  *v6 = v0;
  v6[1] = sub_18B4E819C;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = v16;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v6, v8, v7);
}

uint64_t sub_18B4E7FCC()
{
  v1 = *(*v0 + 560);

  return MEMORY[0x1EEE6DFA0](sub_18B4E80F8, v1, 0);
}

uint64_t sub_18B4E80F8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  v4 = *(v3 + 8);
  v0[74] = v4;
  v0[75] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_18B4E7B00, 0, 0);
}

uint64_t sub_18B4E819C()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_18B4E82AC, v1, 0);
}

uint64_t sub_18B4E82AC()
{

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x1EEE6DFA0](sub_18B4E8338, 0, 0);
}

uint64_t sub_18B4E8338()
{
  v1 = v0[63];

  sub_18B4A6454(v1, &qword_1EA9C5000);
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[67] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E70E8;
  v4 = v0[63];
  v5 = v0[64];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4E8404()
{
  v1 = *(*v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_18B4E8530, v1, 0);
}

uint64_t sub_18B4E8530()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  (*(v0 + 592))(*(v0 + 488), *(v0 + 472));

  return MEMORY[0x1EEE6DFA0](sub_18B4E8338, 0, 0);
}

uint64_t sub_18B4E85C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v5 = sub_18B6C584C();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5000);
  v4[58] = swift_task_alloc();
  v6 = sub_18B6C59AC();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4E8770, 0, 0);
}

uint64_t sub_18B4E8770()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_18B6C59BC();

  sub_18B6C599C();
  swift_beginAccess();
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E8888;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4E8888()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_18B4E8CE4;
  }

  else
  {
    v2 = sub_18B4E899C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4E89B8()
{
  v1 = v0[58];
  v2 = sub_18B6C400C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_18B6C58DC())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_18B4A6454(v0[58], &qword_1EA9C5000);
    goto LABEL_8;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v7 = sub_18B6C435C();
  __swift_project_value_buffer(v7, qword_1EA9CE398);

  v8 = sub_18B6C434C();
  v9 = sub_18B6C596C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[49] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_18B4F4244(v13, v12, v0 + 49);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_18B49C000, v8, v9, "[%s] .AVInputContextInputDeviceDidChange received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x18CFF91B0](v11, -1, -1);
    MEMORY[0x18CFF91B0](v10, -1, -1);
  }

  v15 = *(v4 + 104);
  v0[65] = v15;

  return MEMORY[0x1EEE6DFA0](sub_18B4E8D70, v15, 0);
}

uint64_t sub_18B4E8CE4()
{
  *(v0 + 376) = *(v0 + 504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5008);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_18B4E8D70()
{
  v1 = *(v0 + 520);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  sub_18B4F8218(v2, v3);
  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  sub_18B4F8218(v4, v5);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  sub_18B4F8218(v6, v7);
  *(v1 + 256) = 0;

  v8 = *(v1 + 264);
  v9 = *(v1 + 272);
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  sub_18B4F8218(v8, v9);

  return MEMORY[0x1EEE6DFA0](sub_18B4E8E54, 0, 0);
}

uint64_t sub_18B4E8E54()
{
  v1 = *(v0[64] + 16);
  v0[66] = v1;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v0[67] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  sub_18B6C582C();

  return MEMORY[0x1EEE6DFA0](sub_18B4E8F18, v1, 0);
}

uint64_t sub_18B4E8F18()
{
  v50 = v0;
  v1 = *(v0 + 528);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    sub_18B6C450C();
    v3 = sub_18B4F4F14(0xD000000000000027, 0x800000018B6FC750);
    if (v4)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v3, v0 + 16);

      sub_18B4D1D10(v0 + 16, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 384);
        *(v0 + 560) = v5;

        v6 = swift_task_alloc();
        *(v0 + 568) = v6;
        *v6 = v0;
        v6[1] = sub_18B4E9914;
        v7 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v5;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
    }
  }

  v9 = *(v0 + 536);
  v11 = *(v0 + 448);
  v10 = *(v0 + 456);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 424);
  swift_beginAccess();
  sub_18B4F5398(0xD000000000000027, 0x800000018B6FC750, v0 + 56);
  sub_18B4A6454(v0 + 56, &qword_1EA9C4FE0);
  swift_endAccess();
  (*(v11 + 16))(v13, v10, v12);
  v47 = *(v11 + 56);
  v47(v13, 0, 1, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B6E8AA8;
  v15[5] = v9;
  sub_18B4A63EC(v13, v14, &qword_1EA9C4E70);
  v48 = *(v11 + 48);
  v16 = v48(v14, 1, v12);

  if (v16 == 1)
  {
    sub_18B4A6454(*(v0 + 424), &qword_1EA9C4E70);
  }

  else
  {
    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    sub_18B6C583C();
    (*(v17 + 8))(v19, v18);
  }

  v20 = v15[2];
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_18B6C57CC();
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_18B4A6454(*(v0 + 432), &qword_1EA9C4E70);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_18B6E8AB0;
  *(v24 + 24) = v15;
  if (v23 | v21)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v21;
    *(v0 + 240) = v23;
  }

  v46 = *(v0 + 440);
  v25 = *(v0 + 408);
  v26 = *(v0 + 416);
  v27 = swift_task_create();
  *(v0 + 544) = v27;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  *(v0 + 128) = &off_1EFECFAC8;
  *(v0 + 96) = v27;
  swift_beginAccess();
  sub_18B4A31D4((v0 + 96), v0 + 136);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v29 = v1;
  v30 = *(v0 + 160);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  sub_18B4F727C(*v33, 0xD000000000000027, 0x800000018B6FC750, isUniquelyReferenced_nonNull_native, &v49);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  *(v29 + 112) = v49;
  swift_endAccess();
  v47(v26, 1, 1, v46);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v27;
  v35[5] = v34;
  v35[6] = 0xD000000000000027;
  v35[7] = 0x800000018B6FC750;
  sub_18B4A63EC(v26, v25, &qword_1EA9C4E70);
  LODWORD(v29) = v48(v25, 1, v46);

  if (v29 == 1)
  {
    sub_18B4A6454(*(v0 + 408), &qword_1EA9C4E70);
  }

  else
  {
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);
    v38 = *(v0 + 408);
    sub_18B6C583C();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v35[2];
  swift_unknownObjectRetain();

  if (v39)
  {
    swift_getObjectType();
    v40 = sub_18B6C57CC();
    v42 = v41;
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  sub_18B4A6454(*(v0 + 416), &qword_1EA9C4E70);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_18B6E8AC0;
  *(v43 + 24) = v35;
  if (v42 | v40)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v40;
    *(v0 + 272) = v42;
  }

  v44 = MEMORY[0x1E69E7CA8];
  swift_task_create();

  v6 = swift_task_alloc();
  *(v0 + 552) = v6;
  *v6 = v0;
  v6[1] = sub_18B4E9698;
  v7 = v44 + 8;
  v8 = v27;
LABEL_24:

  return MEMORY[0x1EEE6DA40](v6, v8, v7);
}

uint64_t sub_18B4E9698()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x1EEE6DFA0](sub_18B4E97A8, v1, 0);
}

uint64_t sub_18B4E97A8()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4E9848, 0, 0);
}

uint64_t sub_18B4E9848()
{
  v1 = v0[58];

  sub_18B4A6454(v1, &qword_1EA9C5000);
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E8888;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4E9914()
{
  v1 = *(*v0 + 528);

  return MEMORY[0x1EEE6DFA0](sub_18B4E9A40, v1, 0);
}

uint64_t sub_18B4E9A40()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4E9848, 0, 0);
}

uint64_t sub_18B4E9AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[50] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v5 = sub_18B6C584C();
  v4[55] = v5;
  v4[56] = *(v5 - 8);
  v4[57] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5000);
  v4[58] = swift_task_alloc();
  v6 = sub_18B6C59AC();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4E9C94, 0, 0);
}

uint64_t sub_18B4E9C94()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_18B6C59BC();

  sub_18B6C599C();
  swift_beginAccess();
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E9DAC;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4E9DAC()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_18B4F9F80;
  }

  else
  {
    v2 = sub_18B4E9EC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4E9EDC()
{
  v1 = v0[58];
  v2 = sub_18B6C400C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (!Strong)
  {
    (*(v0[60] + 8))(v0[61], v0[59]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_18B6C58DC())
  {
    (*(v0[60] + 8))(v0[61], v0[59]);

LABEL_7:
    sub_18B4A6454(v0[58], &qword_1EA9C5000);
    goto LABEL_8;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v7 = sub_18B6C435C();
  __swift_project_value_buffer(v7, qword_1EA9CE398);

  v8 = sub_18B6C434C();
  v9 = sub_18B6C596C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[49] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_18B4F4244(v13, v12, v0 + 49);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_18B49C000, v8, v9, "[%s] .mediaServicesWereResetNotification received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x18CFF91B0](v11, -1, -1);
    MEMORY[0x18CFF91B0](v10, -1, -1);
  }

  v15 = *(v4 + 48);
  *(v4 + 48) = 0;

  v16 = *(v4 + 16);
  v0[65] = v16;
  v0[66] = swift_allocObject();
  swift_weakInit();
  sub_18B6C582C();

  return MEMORY[0x1EEE6DFA0](sub_18B4EA248, v16, 0);
}

uint64_t sub_18B4EA248()
{
  v50 = v0;
  v1 = *(v0 + 520);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    sub_18B6C450C();
    v3 = sub_18B4F4F14(0xD000000000000010, 0x800000018B6FC660);
    if (v4)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v3, v0 + 16);

      sub_18B4D1D10(v0 + 16, v0 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 384);
        *(v0 + 552) = v5;

        v6 = swift_task_alloc();
        *(v0 + 560) = v6;
        *v6 = v0;
        v6[1] = sub_18B4EAC44;
        v7 = MEMORY[0x1E69E7CA8] + 8;
        v8 = v5;
        goto LABEL_24;
      }

      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    }

    else
    {
    }
  }

  v9 = *(v0 + 528);
  v11 = *(v0 + 448);
  v10 = *(v0 + 456);
  v13 = *(v0 + 432);
  v12 = *(v0 + 440);
  v14 = *(v0 + 424);
  swift_beginAccess();
  sub_18B4F5398(0xD000000000000010, 0x800000018B6FC660, v0 + 56);
  sub_18B4A6454(v0 + 56, &qword_1EA9C4FE0);
  swift_endAccess();
  (*(v11 + 16))(v13, v10, v12);
  v47 = *(v11 + 56);
  v47(v13, 0, 1, v12);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_18B6E8A58;
  v15[5] = v9;
  sub_18B4A63EC(v13, v14, &qword_1EA9C4E70);
  v48 = *(v11 + 48);
  v16 = v48(v14, 1, v12);

  if (v16 == 1)
  {
    sub_18B4A6454(*(v0 + 424), &qword_1EA9C4E70);
  }

  else
  {
    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v19 = *(v0 + 424);
    sub_18B6C583C();
    (*(v17 + 8))(v19, v18);
  }

  v20 = v15[2];
  swift_unknownObjectRetain();

  if (v20)
  {
    swift_getObjectType();
    v21 = sub_18B6C57CC();
    v23 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_18B4A6454(*(v0 + 432), &qword_1EA9C4E70);
  v24 = swift_allocObject();
  *(v24 + 16) = &unk_18B6E8A68;
  *(v24 + 24) = v15;
  if (v23 | v21)
  {
    *(v0 + 216) = 0;
    *(v0 + 224) = 0;
    *(v0 + 232) = v21;
    *(v0 + 240) = v23;
  }

  v46 = *(v0 + 440);
  v25 = *(v0 + 408);
  v26 = *(v0 + 416);
  v27 = swift_task_create();
  *(v0 + 536) = v27;
  *(v0 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  *(v0 + 128) = &off_1EFECFAC8;
  *(v0 + 96) = v27;
  swift_beginAccess();
  sub_18B4A31D4((v0 + 96), v0 + 136);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  v29 = v1;
  v30 = *(v0 + 160);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 136, v30);
  v32 = *(v30 - 8);
  v33 = swift_task_alloc();
  (*(v32 + 16))(v33, v31, v30);
  sub_18B4F727C(*v33, 0xD000000000000010, 0x800000018B6FC660, isUniquelyReferenced_nonNull_native, &v49);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);

  *(v29 + 112) = v49;
  swift_endAccess();
  v47(v26, 1, 1, v46);
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = v27;
  v35[5] = v34;
  v35[6] = 0xD000000000000010;
  v35[7] = 0x800000018B6FC660;
  sub_18B4A63EC(v26, v25, &qword_1EA9C4E70);
  LODWORD(v29) = v48(v25, 1, v46);

  if (v29 == 1)
  {
    sub_18B4A6454(*(v0 + 408), &qword_1EA9C4E70);
  }

  else
  {
    v36 = *(v0 + 440);
    v37 = *(v0 + 448);
    v38 = *(v0 + 408);
    sub_18B6C583C();
    (*(v37 + 8))(v38, v36);
  }

  v39 = v35[2];
  swift_unknownObjectRetain();

  if (v39)
  {
    swift_getObjectType();
    v40 = sub_18B6C57CC();
    v42 = v41;
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    v42 = 0;
  }

  sub_18B4A6454(*(v0 + 416), &qword_1EA9C4E70);
  v43 = swift_allocObject();
  *(v43 + 16) = &unk_18B6E8A90;
  *(v43 + 24) = v35;
  if (v42 | v40)
  {
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 264) = v40;
    *(v0 + 272) = v42;
  }

  v44 = MEMORY[0x1E69E7CA8];
  swift_task_create();

  v6 = swift_task_alloc();
  *(v0 + 544) = v6;
  *v6 = v0;
  v6[1] = sub_18B4EA9C8;
  v7 = v44 + 8;
  v8 = v27;
LABEL_24:

  return MEMORY[0x1EEE6DA40](v6, v8, v7);
}

uint64_t sub_18B4EA9C8()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x1EEE6DFA0](sub_18B4EAAD8, v1, 0);
}

uint64_t sub_18B4EAAD8()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4EAB78, 0, 0);
}

uint64_t sub_18B4EAB78()
{
  v1 = v0[58];

  sub_18B4A6454(v1, &qword_1EA9C5000);
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_18B4E9DAC;
  v4 = v0[58];
  v5 = v0[59];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4EAC44()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x1EEE6DFA0](sub_18B4EAD70, v1, 0);
}

uint64_t sub_18B4EAD70()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4EAB78, 0, 0);
}

uint64_t sub_18B4EAE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5000);
  v4[13] = swift_task_alloc();
  v5 = sub_18B6C59AC();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4EAF0C, 0, 0);
}

uint64_t sub_18B4EAF0C()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_18B6C59BC();

  sub_18B6C599C();
  swift_beginAccess();
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_18B4EB024;
  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4EB024()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_18B4EB518;
  }

  else
  {
    v2 = sub_18B4EB138;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4EB154()
{
  v1 = v0[13];
  v2 = sub_18B6C400C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_18B6C58DC())
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_7:
    sub_18B4A6454(v0[13], &qword_1EA9C5000);
    goto LABEL_8;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v7 = sub_18B6C435C();
  __swift_project_value_buffer(v7, qword_1EA9CE398);

  v8 = sub_18B6C434C();
  v9 = sub_18B6C596C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[11] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_18B4F4244(v13, v12, v0 + 11);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_18B49C000, v8, v9, "[%s] .AVInputContextCanSetInputGainDidChange received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x18CFF91B0](v11, -1, -1);
    MEMORY[0x18CFF91B0](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v4 + 144), *(v4 + 168));
  v16 = off_1EFECD040 + *off_1EFECD040;
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_18B4EB5A4;

  return (v16)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
}

uint64_t sub_18B4EB518()
{
  *(v0 + 80) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5008);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_18B4EB5A4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4EB6A0, 0, 0);
}

uint64_t sub_18B4EB6A0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  *(v0 + 184) = (*(v2 + 48))(v1, v2) & 1;
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    sub_18B6C580C();
    swift_unknownObjectRetain();
    *(v0 + 176) = sub_18B6C57FC();
    v5 = sub_18B6C57CC();

    return MEMORY[0x1EEE6DFA0](sub_18B4EB840, v5, v4);
  }

  else
  {

    sub_18B4A6454(*(v0 + 104), &qword_1EA9C5000);
    v6 = sub_18B4F8A78();
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_18B4EB024;
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);

    return MEMORY[0x1EEE6D8C8](v8, v9, v6);
  }
}

uint64_t sub_18B4EB840()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);

  v3 = off_1EFECE000;
  type metadata accessor for MicrophoneManager();
  v3(v2, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_18B4EB8FC, 0, 0);
}

uint64_t sub_18B4EB8FC()
{
  swift_unknownObjectRelease();

  sub_18B4A6454(v0[13], &qword_1EA9C5000);
  v1 = sub_18B4F8A78();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_18B4EB024;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_18B4EB9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5000);
  v4[13] = swift_task_alloc();
  v5 = sub_18B6C59AC();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4EBAC8, 0, 0);
}

uint64_t sub_18B4EBAC8()
{
  v1 = [objc_opt_self() defaultCenter];
  sub_18B6C59BC();

  sub_18B6C599C();
  swift_beginAccess();
  v2 = sub_18B4F8A78();
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_18B4EBBE0;
  v4 = v0[13];
  v5 = v0[14];

  return MEMORY[0x1EEE6D8C8](v4, v5, v2);
}

uint64_t sub_18B4EBBE0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_18B4F9F84;
  }

  else
  {
    v2 = sub_18B4EBCF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_18B4EBD10()
{
  v1 = v0[13];
  v2 = sub_18B6C400C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
LABEL_8:

    v5 = v0[1];

    return v5();
  }

  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (!Strong)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
    goto LABEL_7;
  }

  v4 = Strong;
  if (sub_18B6C58DC())
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_7:
    sub_18B4A6454(v0[13], &qword_1EA9C5000);
    goto LABEL_8;
  }

  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v7 = sub_18B6C435C();
  __swift_project_value_buffer(v7, qword_1EA9CE398);

  v8 = sub_18B6C434C();
  v9 = sub_18B6C596C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v0[11] = v11;
    *v10 = 136315138;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v12 = 0xE600000000000000;
        v13 = 0x7070412D6E49;
      }

      else
      {
        v12 = 0xE800000000000000;
        v13 = 0x73676E6974746553;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      v13 = 17219;
    }

    v14 = sub_18B4F4244(v13, v12, v0 + 11);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_18B49C000, v8, v9, "[%s] .AVInputContextInputGainDidChange received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x18CFF91B0](v11, -1, -1);
    MEMORY[0x18CFF91B0](v10, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v4 + 144), *(v4 + 168));
  v16 = off_1EFECD040 + *off_1EFECD040;
  v15 = swift_task_alloc();
  v0[20] = v15;
  *v15 = v0;
  v15[1] = sub_18B4EC0D4;

  return (v16)(v0 + 2, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
}

uint64_t sub_18B4EC0D4()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4EC1D0, 0, 0);
}

uint64_t sub_18B4EC1D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  *(v0 + 184) = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    sub_18B6C580C();
    swift_unknownObjectRetain();
    *(v0 + 176) = sub_18B6C57FC();
    v5 = sub_18B6C57CC();

    return MEMORY[0x1EEE6DFA0](sub_18B4EC36C, v5, v4);
  }

  else
  {

    sub_18B4A6454(*(v0 + 104), &qword_1EA9C5000);
    v6 = sub_18B4F8A78();
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_18B4EBBE0;
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);

    return MEMORY[0x1EEE6D8C8](v8, v9, v6);
  }
}

uint64_t sub_18B4EC36C()
{
  v1 = *(v0 + 184);

  v2 = off_1EFECDFF8[0];
  type metadata accessor for MicrophoneManager();
  v2(v1);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_18B4EC428, 0, 0);
}

uint64_t sub_18B4EC428()
{
  swift_unknownObjectRelease();

  sub_18B4A6454(v0[13], &qword_1EA9C5000);
  v1 = sub_18B4F8A78();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_18B4EBBE0;
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6D8C8](v3, v4, v1);
}

uint64_t sub_18B4EC4FC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 680) = a3;
  *(v3 + 320) = a2;
  v4 = sub_18B6C584C();
  *(v3 + 328) = v4;
  *(v3 + 336) = *(v4 - 8);
  *(v3 + 344) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4EC5C0, 0, 0);
}

uint64_t sub_18B4EC5C0()
{
  v16 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[44] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v3 = sub_18B6C435C();
    v0[45] = __swift_project_value_buffer(v3, qword_1EA9CE398);

    v4 = sub_18B6C434C();
    v5 = sub_18B6C596C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315394;
      if (*(v2 + 24))
      {
        if (*(v2 + 24) == 1)
        {
          v8 = 0xE600000000000000;
          v9 = 0x7070412D6E49;
        }

        else
        {
          v8 = 0xE800000000000000;
          v9 = 0x73676E6974746553;
        }
      }

      else
      {
        v8 = 0xE200000000000000;
        v9 = 17219;
      }

      v12 = sub_18B4F4244(v9, v8, &v15);

      *(v6 + 4) = v12;
      *(v6 + 12) = 2080;
      *(v6 + 14) = sub_18B4F4244(0xD000000000000027, 0x800000018B6FC750, &v15);
      _os_log_impl(&dword_18B49C000, v4, v5, "[%s] %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x18CFF91B0](v7, -1, -1);
      MEMORY[0x18CFF91B0](v6, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v2 + 144), *(v2 + 168));
    v14 = off_1EFECD040 + *off_1EFECD040;
    v13 = swift_task_alloc();
    v0[46] = v13;
    *v13 = v0;
    v13[1] = sub_18B4EC90C;

    return (v14)(v0 + 32, &type metadata for MXAVInputContextFactory, &off_1EFECD038);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_18B4EC90C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4ECA08, 0, 0);
}

uint64_t sub_18B4ECA08()
{
  v1 = v0[35];
  v2 = v0[36];
  __swift_project_boxed_opaque_existential_1(v0 + 32, v1);
  v5 = (*(v2 + 8) + **(v2 + 8));
  v3 = swift_task_alloc();
  v0[47] = v3;
  *v3 = v0;
  v3[1] = sub_18B4ECB2C;

  return v5(v1, v2);
}

uint64_t sub_18B4ECB2C(uint64_t a1)
{
  *(*v1 + 384) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4ECC2C, 0, 0);
}

uint64_t sub_18B4ECC2C()
{
  v1 = *(v0 + 384);
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    sub_18B4ADF44(v1, (v0 + 208));
    v9 = *(v0 + 224);
    v10 = *(v0 + 208);
    v2 = *(v0 + 240);
    v3 = *(v0 + 248);

    *(v0 + 616) = v3;
    *(v0 + 608) = v2;
    *(v0 + 576) = v10;
    *(v0 + 592) = v9;
    v4 = *(*(v0 + 352) + 104);
    *(v0 + 624) = v4;

    return MEMORY[0x1EEE6DFA0](sub_18B4ED48C, v4, 0);
  }

  else
  {
    v5 = *(v0 + 352);
    __swift_destroy_boxed_opaque_existential_1(v0 + 256);
    if (*(v5 + 24) == 2)
    {
      v6 = swift_task_alloc();
      *(v0 + 392) = v6;
      *v6 = v0;
      v6[1] = sub_18B4ECDD8;

      return sub_18B4D5820(v0 + 160);
    }

    else
    {
      v7 = swift_task_alloc();
      *(v0 + 448) = v7;
      *v7 = v0;
      v7[1] = sub_18B4ECF40;

      return sub_18B4D533C(v0 + 112);
    }
  }
}

uint64_t sub_18B4ECDD8()
{
  v1 = *v0;

  v2 = v1[11];
  v1[25] = v1[10];
  v1[26] = v2;
  v1[27] = v1[12];

  return MEMORY[0x1EEE6DFA0](sub_18B4ECEE4, 0, 0);
}

uint64_t sub_18B4ECEE4()
{
  v1 = *(v0 + 408);
  if (v1)
  {
    v2 = *(v0 + 400);
    v3 = *(v0 + 432);
    *(v0 + 592) = *(v0 + 416);
    *(v0 + 608) = v3;
    *(v0 + 584) = v1;
    *(v0 + 576) = v2;
    v4 = *(*(v0 + 352) + 104);
    *(v0 + 624) = v4;
    v5 = sub_18B4ED48C;
  }

  else
  {
    v4 = *(*(v0 + 352) + 104);
    *(v0 + 504) = v4;
    v5 = sub_18B4ED0BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_18B4ECF40()
{
  v1 = *v0;

  v2 = v1[8];
  *(v1 + 456) = v1[7];
  *(v1 + 472) = v2;
  *(v1 + 488) = v1[9];

  return MEMORY[0x1EEE6DFA0](sub_18B4ED05C, 0, 0);
}

uint64_t sub_18B4ED05C()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 488);
    *(v0 + 592) = *(v0 + 472);
    *(v0 + 608) = v3;
    *(v0 + 584) = v1;
    *(v0 + 576) = v2;
    v4 = *(*(v0 + 352) + 104);
    *(v0 + 624) = v4;
    v5 = sub_18B4ED48C;
  }

  else
  {
    v4 = *(*(v0 + 352) + 104);
    *(v0 + 504) = v4;
    v5 = sub_18B4ED0BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_18B4ED0BC()
{
  v1 = v0[63];
  v2 = v1[14];
  v0[64] = v2;
  v3 = v1[15];
  v0[65] = v3;
  v0[66] = v1[16];
  v0[67] = v1[17];
  v0[68] = v1[18];
  v0[69] = v1[19];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4ED154, 0, 0);
}

uint64_t sub_18B4ED154()
{
  v1 = *(v0 + 520);
  if (v1)
  {
    v2 = *(v0 + 512);
    v3 = *(v0 + 544);
    *(v0 + 592) = *(v0 + 528);
    *(v0 + 608) = v3;
    *(v0 + 584) = v1;
    *(v0 + 576) = v2;
    v4 = *(*(v0 + 352) + 104);
    *(v0 + 624) = v4;

    return MEMORY[0x1EEE6DFA0](sub_18B4ED48C, v4, 0);
  }

  else
  {
    v5 = swift_allocObject();
    *(v0 + 560) = v5;
    swift_weakInit();
    sub_18B6C582C();
    v6 = swift_task_alloc();
    *(v0 + 568) = v6;
    *v6 = v0;
    v6[1] = sub_18B4ED2E0;
    v7 = *(v0 + 344);

    return sub_18B4F0730(v0 + 64, 0x6B6361626C6C6166, 0xEF29286574756F52, v7, &unk_18B6E9700, v5);
  }
}

uint64_t sub_18B4ED2E0()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4ED454, 0, 0);
}

uint64_t sub_18B4ED454()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 64);
  v2 = *(v0 + 80);
  *(v0 + 616) = *(v0 + 104);
  *(v0 + 608) = v1;
  *(v0 + 576) = v3;
  *(v0 + 592) = v2;
  v4 = *(*(v0 + 352) + 104);
  *(v0 + 624) = v4;
  return MEMORY[0x1EEE6DFA0](sub_18B4ED48C, v4, 0);
}

uint64_t sub_18B4ED48C()
{
  v1 = v0[78];
  v2 = v1[33];
  v0[79] = v2;
  v3 = v1[34];
  v0[80] = v3;
  v0[81] = v1[36];
  v0[82] = v1[38];
  sub_18B4F47EC(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_18B4ED514, 0, 0);
}

uint64_t sub_18B4ED514()
{
  v1 = *(v0 + 640);
  if (!v1)
  {
    if (*(v0 + 584))
    {
      goto LABEL_9;
    }

LABEL_14:
    v8 = *(v0 + 584);
    v9 = *(v0 + 576);
    goto LABEL_15;
  }

  if (*(v0 + 632) == *(v0 + 576) && v1 == *(v0 + 584))
  {

    goto LABEL_14;
  }

  v3 = sub_18B6C5CEC();

  if (v3)
  {
    goto LABEL_14;
  }

LABEL_9:
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  v7 = *(v0 + 592);
  v8 = *(v0 + 584);
  v9 = *(v0 + 576);
  v10 = *(v0 + 352);
  if (*(v0 + 680))
  {
LABEL_15:
    sub_18B4F8218(v9, v8);

    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 16) = v9;
  *(v0 + 24) = v8;
  *(v0 + 32) = v7;
  *(v0 + 40) = v6;
  *(v0 + 48) = v5;
  *(v0 + 56) = v4;
  v11 = *(v10 + 104);
  *(v0 + 664) = v11;

  return MEMORY[0x1EEE6DFA0](sub_18B4ED69C, v11, 0);
}

uint64_t sub_18B4ED69C()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 616);
  v3 = *(v0 + 576);
  v4 = *(v1 + 264);
  v5 = *(v1 + 272);
  v6 = *(v0 + 600);
  *(v1 + 272) = *(v0 + 584);
  *(v1 + 288) = v6;
  *(v1 + 264) = v3;
  *(v1 + 304) = v2;
  sub_18B6C450C();
  sub_18B6C450C();
  sub_18B6C450C();
  sub_18B4F8218(v4, v5);

  return MEMORY[0x1EEE6DFA0](sub_18B4ED788, 0, 0);
}

uint64_t sub_18B4ED788()
{
  v22 = v0;

  sub_18B6C450C();
  sub_18B6C450C();
  sub_18B6C450C();
  v1 = sub_18B6C434C();
  v2 = sub_18B6C596C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[44];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315394;
    v18 = v2;
    v17 = v5;
    if (*(v3 + 24))
    {
      if (*(v3 + 24) == 1)
      {
        v6 = 0xE600000000000000;
        v7 = 0x7070412D6E49;
      }

      else
      {
        v6 = 0xE800000000000000;
        v7 = 0x73676E6974746553;
      }
    }

    else
    {
      v6 = 0xE200000000000000;
      v7 = 17219;
    }

    v8 = v0[75];
    v9 = v0[74];
    v10 = v0[73];
    v11 = v0[72];
    v12 = sub_18B4F4244(v7, v6, &v19);

    *(v4 + 4) = v12;
    *(v4 + 12) = 2080;
    v20 = v11;
    v21 = v10;
    sub_18B6C450C();
    sub_18B6C450C();
    sub_18B6C450C();
    MEMORY[0x18CFF7260](45, 0xE100000000000000);
    MEMORY[0x18CFF7260](v9, v8);

    v13 = sub_18B4F4244(v20, v21, &v19);

    *(v4 + 14) = v13;
    _os_log_impl(&dword_18B49C000, v1, v18, "[%s] attempting to render new picked device: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v17, -1, -1);
    MEMORY[0x18CFF91B0](v4, -1, -1);
  }

  sub_18B6C580C();
  v0[84] = sub_18B6C57FC();
  v15 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4EDA34, v15, v14);
}

uint64_t sub_18B4EDA34()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 352);
    v2 = off_1EFECDFE8[0];
    type metadata accessor for MicrophoneManager();
    v2(v1, (v0 + 16));
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_18B4EDB20, 0, 0);
}

uint64_t sub_18B4EDB20()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4EDBA8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_18B4EDC90;

    return sub_18B4EE59C();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_18B4EDC90(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_18B4EDD90, 0, 0);
}

uint64_t sub_18B4EDD90()
{
  v1 = *(*(v0 + 48) + 104);
  *(v0 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_18B4EDDB4, v1, 0);
}

uint64_t sub_18B4EDDB4()
{
  *(v0 + 80) = *(*(v0 + 72) + 256);
  sub_18B6C450C();

  return MEMORY[0x1EEE6DFA0](sub_18B4EDE28, 0, 0);
}

uint64_t sub_18B4EDE28()
{
  v16 = v0;
  if (v0[10] && (v1 = sub_18B4F3E24(v0[10], v0[8]), , (v1 & 1) != 0) || !*(v0[8] + 16))
  {

    if (qword_1EA9C3DA0 != -1)
    {
      swift_once();
    }

    v3 = sub_18B6C435C();
    __swift_project_value_buffer(v3, qword_1EA9CE398);

    v4 = sub_18B6C434C();
    v5 = sub_18B6C596C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[6];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      if (*(v7 + 24))
      {
        if (*(v7 + 24) == 1)
        {
          v10 = 0xE600000000000000;
          v11 = 0x7070412D6E49;
        }

        else
        {
          v10 = 0xE800000000000000;
          v11 = 0x73676E6974746553;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        v11 = 17219;
      }

      v12 = sub_18B4F4244(v11, v10, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_18B49C000, v4, v5, "[%s] availableInputDevices is empty", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18CFF91B0](v9, -1, -1);
      MEMORY[0x18CFF91B0](v8, -1, -1);
    }

    else
    {
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v2 = *(v0[6] + 104);
    v0[11] = v2;

    return MEMORY[0x1EEE6DFA0](sub_18B4EE098, v2, 0);
  }
}

uint64_t sub_18B4EE098()
{
  sub_18B4D6BF0();

  return MEMORY[0x1EEE6DFA0](sub_18B4EE100, 0, 0);
}

uint64_t sub_18B4EE100()
{
  v1 = *(*(v0 + 48) + 104);
  *(v0 + 96) = v1;

  return MEMORY[0x1EEE6DFA0](sub_18B4EE178, v1, 0);
}

uint64_t sub_18B4EE178()
{
  *(*(v0 + 96) + 256) = *(v0 + 64);
  sub_18B6C450C();

  return MEMORY[0x1EEE6DFA0](sub_18B4EE1FC, 0, 0);
}

uint64_t sub_18B4EE1FC()
{
  v18 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_18B6C435C();
  __swift_project_value_buffer(v1, qword_1EA9CE398);
  sub_18B6C450C();

  v2 = sub_18B6C434C();
  v3 = sub_18B6C596C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    if (*(v4 + 24))
    {
      if (*(v4 + 24) == 1)
      {
        v7 = 0xE600000000000000;
        v8 = 0x7070412D6E49;
      }

      else
      {
        v7 = 0xE800000000000000;
        v8 = 0x73676E6974746553;
      }
    }

    else
    {
      v7 = 0xE200000000000000;
      v8 = 17219;
    }

    v9 = v0[8];
    v10 = sub_18B4F4244(v8, v7, &v17);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    v11 = MEMORY[0x18CFF7360](v9, &type metadata for InputPickerMicrophone);
    v13 = sub_18B4F4244(v11, v12, &v17);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_18B49C000, v2, v3, "[%s] discoverySession or fakeDiscoverySession new routes: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x18CFF91B0](v6, -1, -1);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  sub_18B6C580C();
  v0[13] = sub_18B6C57FC();
  v15 = sub_18B6C57CC();

  return MEMORY[0x1EEE6DFA0](sub_18B4EE464, v15, v14);
}

uint64_t sub_18B4EE464()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 64);
    v2 = *(v0 + 48);
    v3 = off_1EFECDFF0[0];
    type metadata accessor for MicrophoneManager();
    v3(v2, v1);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_18B4EE53C, 0, 0);
}

uint64_t sub_18B4EE53C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4EE5BC()
{
  v1 = *(v0[14] + 128);
  v0[15] = v1;
  v2 = *(v1 + 16);

  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_18B4AC60C(0, &qword_1EA9C39E0);
  v0[17] = v4;
  *v3 = v0;
  v3[1] = sub_18B4EE690;

  return MEMORY[0x1EEE6DA40](v0 + 10, v2, v4);
}

uint64_t sub_18B4EE690()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4EE78C, 0, 0);
}

uint64_t sub_18B4EE78C()
{
  v59 = v0;
  v1 = v0;

  v2 = v0[10];
  v3 = [v2 availableInputDevices];

  v1[18] = sub_18B4AC60C(0, &qword_1EA9C3A68);
  v4 = sub_18B6C576C();

  if (v4 >> 62)
  {
    v5 = sub_18B6C5C6C();
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
      v58 = MEMORY[0x1E69E7CC0];
      sub_18B4F4918(0, v5 & ~(v5 >> 63), 0);
      if (v5 < 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      v6 = 0;
      v7 = v58;
      v53 = v1;
      v54 = v4 & 0xC000000000000001;
      v55 = v5;
      v56 = v4;
      while (1)
      {
        if (v54)
        {
          v8 = MEMORY[0x18CFF7750](v6, v4);
        }

        else
        {
          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = [v8 deviceID];
        if (v10)
        {
          v11 = v10;
          v12 = sub_18B6C562C();
          v14 = v13;

          v1[8] = v12;
          v1[9] = v14;
          v15 = sub_18B6C56FC();
        }

        else
        {
          v1[11] = v9;
          v15 = sub_18B6C563C();
        }

        v57 = v15;
        v17 = v16;
        v18 = [v9 deviceName];
        if (v18)
        {
          v19 = v18;
          v20 = sub_18B6C562C();
          v22 = v21;

          v1[6] = v20;
          v1[7] = v22;
          v23 = sub_18B6C56FC();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0xE000000000000000;
        }

        v26 = sub_18B4AC918(v9);
        if ((v26 & 0x100000000) != 0)
        {
          goto LABEL_19;
        }

        v27 = v26;
        if (!CBProductIDIsAppleHeadphone(v26))
        {
          goto LABEL_19;
        }

        v28 = [objc_opt_self() productInfoWithProductID_];
        v29 = [v28 sfSymbolNameMain];
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_18B6C562C();
        v33 = v32;

        v1 = v53;
LABEL_26:
        v58 = v7;
        v36 = *(v7 + 16);
        v35 = *(v7 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_18B4F4918((v35 > 1), v36 + 1, 1);
          v7 = v58;
        }

        ++v6;
        *(v7 + 16) = v36 + 1;
        v37 = (v7 + 48 * v36);
        v37[4] = v57;
        v37[5] = v17;
        v37[6] = v23;
        v37[7] = v25;
        v37[8] = v31;
        v37[9] = v33;
        v4 = v56;
        if (v55 == v6)
        {

          if (*(v7 + 16))
          {
            goto LABEL_30;
          }

LABEL_35:

          if (qword_1EA9C3DA0 == -1)
          {
LABEL_36:
            v40 = sub_18B6C435C();
            __swift_project_value_buffer(v40, qword_1EA9CE398);

            v41 = sub_18B6C434C();
            v42 = sub_18B6C596C();

            if (os_log_type_enabled(v41, v42))
            {
              v43 = v1[14];
              v44 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              v58 = v45;
              *v44 = 136315138;
              if (*(v43 + 24))
              {
                if (*(v43 + 24) == 1)
                {
                  v46 = 0xE600000000000000;
                  v47 = 0x7070412D6E49;
                }

                else
                {
                  v46 = 0xE800000000000000;
                  v47 = 0x73676E6974746553;
                }
              }

              else
              {
                v46 = 0xE200000000000000;
                v47 = 17219;
              }

              v48 = sub_18B4F4244(v47, v46, &v58);

              *(v44 + 4) = v48;
              _os_log_impl(&dword_18B49C000, v41, v42, "[%s] looking in to fakeSession routes", v44, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v45);
              MEMORY[0x18CFF91B0](v45, -1, -1);
              MEMORY[0x18CFF91B0](v44, -1, -1);
            }

            v49 = *(v1[14] + 136);
            v1[19] = v49;
            v50 = *(v49 + 16);

            v51 = swift_task_alloc();
            v1[20] = v51;
            *v51 = v1;
            v51[1] = sub_18B4EED88;
            v52 = v1[17];

            return MEMORY[0x1EEE6DA40](v1 + 12, v50, v52);
          }

LABEL_47:
          swift_once();
          goto LABEL_36;
        }
      }

      v1 = v53;
LABEL_19:
      v34 = [v9 deviceType];

      if (v34)
      {
        if (v34 == 3)
        {
          v31 = 0x6F632E656C626163;
          v33 = 0xED00006C61697861;
        }

        else if (v34 == 1)
        {
          v33 = 0xE700000000000000;
          v31 = 0x6E692E656E696CLL;
        }

        else
        {
          v31 = 0x6F68706F7263696DLL;
          v33 = 0xEF6C6C69662E656ELL;
        }
      }

      else
      {
        v33 = 0xE700000000000000;
        v31 = 0x73647562726165;
      }

      goto LABEL_26;
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_35;
  }

LABEL_30:
  v38 = v1[1];

  return v38(v7);
}

uint64_t sub_18B4EED88()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4EEE84, 0, 0);
}

char *sub_18B4EEE84()
{

  v1 = v0[12];
  v2 = [v1 availableInputDevices];

  v3 = sub_18B6C576C();
  if (v3 >> 62)
  {
    v4 = sub_18B6C5C6C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_31:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v37 = v0[1];

    return v37(v7);
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_31;
  }

LABEL_3:
  v43 = MEMORY[0x1E69E7CC0];
  result = sub_18B4F4918(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v43;
    v38 = v3;
    v39 = v3 & 0xC000000000000001;
    v40 = v4;
    while (1)
    {
      if (v39)
      {
        v8 = MEMORY[0x18CFF7750](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 deviceID];
      if (v10)
      {
        v11 = v10;
        v12 = sub_18B6C562C();
        v14 = v13;

        v0[4] = v12;
        v0[5] = v14;
        v15 = sub_18B6C56FC();
      }

      else
      {
        v0[13] = v9;
        v15 = sub_18B6C563C();
      }

      v41 = v16;
      v42 = v15;
      v17 = [v9 deviceName];
      if (v17)
      {
        v18 = v17;
        v19 = sub_18B6C562C();
        v21 = v20;

        v0[2] = v19;
        v0[3] = v21;
        v22 = sub_18B6C56FC();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v25 = sub_18B4AC918(v9);
      if ((v25 & 0x100000000) != 0)
      {
        goto LABEL_19;
      }

      v26 = v25;
      if (!CBProductIDIsAppleHeadphone(v25))
      {
        goto LABEL_19;
      }

      v27 = [objc_opt_self() productInfoWithProductID_];
      v28 = [v27 sfSymbolNameMain];
      if (!v28)
      {
        break;
      }

      v29 = v28;
      v30 = sub_18B6C562C();
      v32 = v31;

      v3 = v38;
LABEL_26:
      v35 = *(v43 + 16);
      v34 = *(v43 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_18B4F4918((v34 > 1), v35 + 1, 1);
      }

      ++v6;
      *(v43 + 16) = v35 + 1;
      v36 = (v43 + 48 * v35);
      v36[4] = v42;
      v36[5] = v41;
      v36[6] = v22;
      v36[7] = v24;
      v36[8] = v30;
      v36[9] = v32;
      if (v40 == v6)
      {

        goto LABEL_32;
      }
    }

    v3 = v38;
LABEL_19:
    v33 = [v9 deviceType];

    if (v33)
    {
      if (v33 == 3)
      {
        v30 = 0x6F632E656C626163;
        v32 = 0xED00006C61697861;
      }

      else if (v33 == 1)
      {
        v32 = 0xE700000000000000;
        v30 = 0x6E692E656E696CLL;
      }

      else
      {
        v30 = 0x6F68706F7263696DLL;
        v32 = 0xEF6C6C69662E656ELL;
      }
    }

    else
    {
      v32 = 0xE700000000000000;
      v30 = 0x73647562726165;
    }

    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t sub_18B4EF248()
{
  v1 = v0;
  if (qword_1EA9C3DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_18B6C435C();
  __swift_project_value_buffer(v2, qword_1EA9CE398);
  v3 = sub_18B6C434C();
  v4 = sub_18B6C596C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_18B49C000, v3, v4, "[deinit] AVRoutingInputController deinit", v5, 2u);
    MEMORY[0x18CFF91B0](v5, -1, -1);
  }

  sub_18B4B2F58(v1 + 32);

  __swift_destroy_boxed_opaque_existential_1(v1 + 144);
  return v1;
}

uint64_t sub_18B4EF398()
{
  sub_18B4EF248();

  return swift_deallocClassInstance();
}

uint64_t sub_18B4EF414(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_18B4EF4D0;
  v5 = MEMORY[0x1E69E73E0];
  v6 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v2 + 16, a2, &type metadata for InputPickerMicrophone, v5, v6);
}

uint64_t sub_18B4EF4D0()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4EF5CC, 0, 0);
}

uint64_t sub_18B4EF5CC()
{
  v1 = *(v0 + 64);
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 32);
    v5 = *(v0 + 40);
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    v2[3] = &type metadata for InputPickerMicrophone;
    v9 = swift_allocObject();
    *v2 = v9;
    v9[2] = v8;
    v9[3] = v7;
    v9[4] = v6;
    v9[5] = v5;
    v9[6] = v3;
    v9[7] = v4;
    sub_18B6C450C();
    sub_18B6C450C();
    sub_18B6C450C();
    sub_18B4F9008(v8, v7, v6, v5, v3, v4, 0);
  }

  *(*(v0 + 72) + 32) = v1;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_18B4EF6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v7[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4EF76C, v6, 0);
}

uint64_t sub_18B4EF76C()
{
  v30 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];
    sub_18B6C450C();
    v5 = sub_18B4F4F14(v4, v3);
    if (v6)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v5, (v0 + 8));

      sub_18B4D1D10((v0 + 8), (v0 + 13));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FC0);
      if (swift_dynamicCast())
      {
        v7 = v0[27];
        v0[38] = v7;

        v8 = swift_task_alloc();
        v0[39] = v8;
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FC8);
        *v8 = v0;
        v8[1] = sub_18B4EFD58;
        v10 = v0 + 2;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 8));
    }

    else
    {
    }
  }

  v12 = v0[35];
  v13 = v0[33];
  v26 = v0[32];
  v14 = v0[30];
  v15 = v0[31];
  v16 = v0[29];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_18B6C584C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_18B528990(0, 0, v12, &unk_18B6E8910, v20);
  v0[36] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FC0);
  v29 = &off_1EFECFAC8;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;
  sub_18B6C450C();

  sub_18B5280B4(0, 0, v12, &unk_18B6E8928, v23);

  v24 = swift_task_alloc();
  v0[37] = v24;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FC8);
  *v24 = v0;
  v24[1] = sub_18B4EFBB8;
  v10 = v0 + 2;
  v11 = v21;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v10, v11, v9);
}

uint64_t sub_18B4EFBB8()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_18B4EFCC8, v1, 0);
}

uint64_t sub_18B4EFCC8()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_18B4EFD58()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_18B4EFE84, v1, 0);
}

uint64_t sub_18B4EFE84()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  v1 = *(v0 + 224);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_18B4EFF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[27] = a5;
  v6[28] = v5;
  v6[25] = a3;
  v6[26] = a4;
  v6[23] = a1;
  v6[24] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4EFFBC, v5, 0);
}

uint64_t sub_18B4EFFBC()
{
  v30 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];
    sub_18B6C450C();
    v5 = sub_18B4F4F14(v4, v3);
    if (v6)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_18B4D1D10((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5068);
      if (swift_dynamicCast())
      {
        v7 = v0[22];
        v0[32] = v7;

        v8 = swift_task_alloc();
        v0[33] = v8;
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EC0);
        *v8 = v0;
        v8[1] = sub_18B4F058C;
        v10 = v0 + 21;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
    }
  }

  v12 = v0[29];
  v13 = v0[27];
  v26 = v0[26];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[23];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_18B6C584C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_18B528C94(0, 0, v12, &unk_18B6E8CA8, v20);
  v0[30] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5068);
  v29 = &off_1EFECFAC8;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;
  sub_18B6C450C();

  sub_18B5280B4(0, 0, v12, &unk_18B6E8CC0, v23);

  v24 = swift_task_alloc();
  v0[31] = v24;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4EC0);
  *v24 = v0;
  v24[1] = sub_18B4F0408;
  v10 = v0 + 21;
  v11 = v21;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v10, v11, v9);
}

uint64_t sub_18B4F0408()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_18B4F0518, v1, 0);
}

uint64_t sub_18B4F0518()
{

  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18B4F058C()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_18B4F06B8, v1, 0);
}

uint64_t sub_18B4F06B8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18B4F0730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v7[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4F07D8, v6, 0);
}

uint64_t sub_18B4F07D8()
{
  v29 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[29];
    v3 = v0[30];
    sub_18B6C450C();
    v5 = sub_18B4F4F14(v4, v3);
    if (v6)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v5, (v0 + 8));

      sub_18B4D1D10((v0 + 8), (v0 + 13));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5018);
      if (swift_dynamicCast())
      {
        v7 = v0[27];
        v0[38] = v7;

        v8 = swift_task_alloc();
        v0[39] = v8;
        *v8 = v0;
        v8[1] = sub_18B4F0DA4;
        v9 = v0 + 2;
        v10 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 8));
    }

    else
    {
    }
  }

  v11 = v0[35];
  v12 = v0[33];
  v25 = v0[32];
  v13 = v0[30];
  v14 = v0[31];
  v15 = v0[29];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  swift_beginAccess();
  sub_18B6C450C();
  sub_18B4F2748(&v26, v15, v13);
  swift_endAccess();
  v16 = sub_18B6C584C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v11, v14, v16);
  v18 = *(v17 + 56);
  v18(v11, 0, 1, v16);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v25;
  v19[5] = v12;

  v20 = sub_18B528F98(0, 0, v11, &unk_18B6E8B08, v19);
  v0[36] = v20;
  *(&v27 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5018);
  v28 = &off_1EFECFAC8;
  *&v26 = v20;
  swift_beginAccess();
  swift_retain_n();
  sub_18B6C450C();
  sub_18B4F2748(&v26, v15, v13);
  swift_endAccess();
  v18(v11, 1, 1, v16);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v20;
  v22[5] = v21;
  v22[6] = v15;
  v22[7] = v13;
  sub_18B6C450C();

  sub_18B5280B4(0, 0, v11, &unk_18B6E8B20, v22);

  v23 = swift_task_alloc();
  v0[37] = v23;
  *v23 = v0;
  v23[1] = sub_18B4F0C04;
  v9 = v0 + 2;
  v10 = v20;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v9, v10, &type metadata for InputPickerMicrophone);
}

uint64_t sub_18B4F0C04()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_18B4F0D14, v1, 0);
}

uint64_t sub_18B4F0D14()
{

  v1 = *(v0 + 224);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_18B4F0DA4()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_18B4F0ED0, v1, 0);
}

uint64_t sub_18B4F0ED0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  v1 = *(v0 + 224);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  *v1 = v7;
  *(v1 + 16) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_18B4F0F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4F1008, v5, 0);
}

uint64_t sub_18B4F1008()
{
  v30 = v0;
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[22];
    v3 = v0[23];
    sub_18B6C450C();
    v5 = sub_18B4F4F14(v4, v3);
    if (v6)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_18B4D1D10((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5058);
      if (swift_dynamicCast())
      {
        v7 = v0[21];
        v0[31] = v7;

        v8 = swift_task_alloc();
        v0[32] = v8;
        *v8 = v0;
        v8[1] = sub_18B4F15B8;
        v9 = MEMORY[0x1E69E6448];
        v10 = v0 + 33;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
    }
  }

  v12 = v0[28];
  v13 = v0[26];
  v26 = v0[25];
  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[22];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_18B6C584C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_18B529280(0, 0, v12, &unk_18B6E8C08, v20);
  v0[29] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5058);
  v29 = &off_1EFECFAC8;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;
  sub_18B6C450C();

  sub_18B5280B4(0, 0, v12, &unk_18B6E8C20, v23);

  v24 = swift_task_alloc();
  v0[30] = v24;
  *v24 = v0;
  v24[1] = sub_18B4F1434;
  v9 = MEMORY[0x1E69E6448];
  v10 = v0 + 33;
  v11 = v21;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v10, v11, v9);
}

uint64_t sub_18B4F1434()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18B4F1544, v1, 0);
}

uint64_t sub_18B4F1544()
{

  v1 = *(v0 + 264);

  v2 = *(v0 + 8);
  v3.n128_u32[0] = v1;

  return v2(v3);
}

uint64_t sub_18B4F15B8()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18B4F16E4, v1, 0);
}

uint64_t sub_18B4F16E4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);
  v3.n128_u32[0] = v1;

  return v2(v3);
}

uint64_t sub_18B4F175C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[26] = a5;
  v6[27] = v5;
  v6[24] = a3;
  v6[25] = a4;
  v6[22] = a1;
  v6[23] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4F1800, v5, 0);
}

uint64_t sub_18B4F1800()
{
  v30 = v0;
  v1 = v0[27];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[22];
    v3 = v0[23];
    sub_18B6C450C();
    v5 = sub_18B4F4F14(v4, v3);
    if (v6)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_18B4D1D10((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5060);
      if (swift_dynamicCast())
      {
        v7 = v0[21];
        v0[31] = v7;

        v8 = swift_task_alloc();
        v0[32] = v8;
        *v8 = v0;
        v8[1] = sub_18B4F1DB0;
        v9 = MEMORY[0x1E69E6370];
        v10 = v0 + 33;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
    }
  }

  v12 = v0[28];
  v13 = v0[26];
  v26 = v0[25];
  v14 = v0[23];
  v15 = v0[24];
  v16 = v0[22];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_18B6C584C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_18B529568(0, 0, v12, &unk_18B6E8C40, v20);
  v0[29] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5060);
  v29 = &off_1EFECFAC8;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;
  sub_18B6C450C();

  sub_18B5280B4(0, 0, v12, &unk_18B6E8C58, v23);

  v24 = swift_task_alloc();
  v0[30] = v24;
  *v24 = v0;
  v24[1] = sub_18B4F1C2C;
  v9 = MEMORY[0x1E69E6370];
  v10 = v0 + 33;
  v11 = v21;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v10, v11, v9);
}

uint64_t sub_18B4F1C2C()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18B4F1D3C, v1, 0);
}

uint64_t sub_18B4F1D3C()
{

  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18B4F1DB0()
{
  v1 = *(*v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_18B4F1EDC, v1, 0);
}

uint64_t sub_18B4F1EDC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_18B4F1F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[27] = a6;
  v7[28] = v6;
  v7[25] = a4;
  v7[26] = a5;
  v7[23] = a2;
  v7[24] = a3;
  v7[22] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4E70);
  v7[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18B4F1FFC, v6, 0);
}

uint64_t sub_18B4F1FFC()
{
  v30 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[23];
    v3 = v0[24];
    sub_18B6C450C();
    v5 = sub_18B4F4F14(v4, v3);
    if (v6)
    {
      sub_18B4D1D10(*(v2 + 56) + 40 * v5, (v0 + 2));

      sub_18B4D1D10((v0 + 2), (v0 + 7));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
      if (swift_dynamicCast())
      {
        v7 = v0[21];
        v0[32] = v7;

        v8 = swift_task_alloc();
        v0[33] = v8;
        *v8 = v0;
        v8[1] = sub_18B4F25AC;
        v9 = v0[22];
        v10 = MEMORY[0x1E69E7CA8] + 8;
        v11 = v7;
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    else
    {
    }
  }

  v12 = v0[29];
  v13 = v0[27];
  v26 = v0[26];
  v14 = v0[24];
  v15 = v0[25];
  v16 = v0[23];
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  swift_beginAccess();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v17 = sub_18B6C584C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v12, v15, v17);
  v19 = *(v18 + 56);
  v19(v12, 0, 1, v17);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v26;
  v20[5] = v13;

  v21 = sub_18B5280B4(0, 0, v12, &unk_18B6E8BA0, v20);
  v0[30] = v21;
  *(&v28 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C5010);
  v29 = &off_1EFECFAC8;
  *&v27 = v21;
  swift_beginAccess();
  swift_retain_n();
  sub_18B6C450C();
  sub_18B4F2748(&v27, v16, v14);
  swift_endAccess();
  v19(v12, 1, 1, v17);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  v23[6] = v16;
  v23[7] = v14;
  sub_18B6C450C();

  sub_18B5280B4(0, 0, v12, &unk_18B6E8BA8, v23);

  v24 = swift_task_alloc();
  v0[31] = v24;
  *v24 = v0;
  v24[1] = sub_18B4F2430;
  v9 = v0[22];
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = v21;
LABEL_8:

  return MEMORY[0x1EEE6DA40](v9, v11, v10);
}

uint64_t sub_18B4F2430()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_18B4F2540, v1, 0);
}

uint64_t sub_18B4F2540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4F25AC()
{
  v1 = *(*v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_18B4F26D8, v1, 0);
}

uint64_t sub_18B4F26D8()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18B4F2748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_18B4A31D4(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    v7 = v17;
    v8 = v18;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v10 = MEMORY[0x1EEE9AC00](v9, v9);
    v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v13 + 16))(v12, v10);
    sub_18B4F7480(v12, a2, a3, isUniquelyReferenced_nonNull_native, &v15, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);

    *v3 = v15;
  }

  else
  {
    sub_18B4A6454(a1, &qword_1EA9C4FE0);
    sub_18B4F5398(a2, a3, v16);

    return sub_18B4A6454(v16, &qword_1EA9C4FE0);
  }

  return result;
}

uint64_t sub_18B4F28D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v6;
    v12 = *(a1 + 64);
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    sub_18B4F61D0(v11, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v10;
  }

  else
  {
    sub_18B4A6454(a1, &qword_1EA9C5050);
    sub_18B4F5444(a2, a3, v11);

    return sub_18B4A6454(v11, &qword_1EA9C5050);
  }

  return result;
}

uint64_t sub_18B4F29B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_18B4CC5A0;

  return v8(a1);
}

uint64_t sub_18B4F2AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[25] = a5;
  v9 = swift_task_alloc();
  v7[28] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9C4FC8);
  v7[29] = v10;
  *v9 = v7;
  v9[1] = sub_18B4F2B7C;
  v11 = MEMORY[0x1E69E73E0];
  v12 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6DA20](v7 + 2, a4, v10, v11, v12);
}

uint64_t sub_18B4F2B7C()
{

  return MEMORY[0x1EEE6DFA0](sub_18B4F2C78, 0, 0);
}