uint64_t sub_23AA8B9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for CredentialSession.Event(0);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();
  v10 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v4[8] = v10;
  v11 = *(v10 - 8);
  v4[9] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v4[10] = v13;
  v14 = swift_task_alloc();
  v4[11] = v14;
  *v14 = v4;
  v14[1] = sub_23AA8BB84;

  return sub_23AA89548(v13);
}

uint64_t sub_23AA8BB84()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_23AA8BC94, v2, 0);
}

uint64_t sub_23AA8BC94()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  swift_storeEnumTagMultiPayload();
  sub_23AA961FC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_23AA8BF04(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23AA926DC;

  return sub_23AA91F10();
}

uint64_t sub_23AA8BFD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_23AA95F4C();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA8C0CC, 0, 0);
}

char *sub_23AA8C0CC()
{
  v58 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_23AA95F7C();
  sub_23AA7A0D4(v3, qword_27DFC29B0);

  v4 = sub_23AA95F5C();
  v5 = sub_23AA9626C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[5];
    v7 = v0[2];
    v8 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56 = v10;
    *v9 = 136315394;
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v11 = sub_23AA9636C();
    v13 = sub_23AA8F920(v11, v12, &v56);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v54 = v10;
    if (v7 >> 62)
    {
      if (v0[2] < 0)
      {
        v50 = v0[2];
      }

      v14 = sub_23AA9631C();
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v57 = MEMORY[0x277D84F90];
      result = sub_23AA8FFE0(0, v14 & ~(v14 >> 63), 0);
      if (v14 < 0)
      {
        __break(1u);
        return result;
      }

      v51 = v9;
      v52 = v5;
      v53 = v4;
      v15 = v57;
      v17 = v0[6];
      v55 = v0;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v18 = 0;
        v19 = (v17 + 8);
        do
        {
          v20 = v55[7];
          v21 = v55[5];
          MEMORY[0x23EE92830](v18, v55[2]);
          sub_23AA9600C();
          v22 = sub_23AA95F0C();
          v24 = v23;
          swift_unknownObjectRelease();
          (*v19)(v20, v21);
          v57 = v15;
          v26 = *(v15 + 16);
          v25 = *(v15 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_23AA8FFE0((v25 > 1), v26 + 1, 1);
            v15 = v57;
          }

          ++v18;
          *(v15 + 16) = v26 + 1;
          v27 = v15 + 16 * v26;
          *(v27 + 32) = v22;
          *(v27 + 40) = v24;
        }

        while (v14 != v18);
      }

      else
      {
        v28 = (v0[2] + 32);
        v29 = (v17 + 8);
        do
        {
          v30 = v55[7];
          v31 = v55[5];
          v32 = *v28;
          sub_23AA9600C();
          v33 = sub_23AA95F0C();
          v35 = v34;

          (*v29)(v30, v31);
          v57 = v15;
          v37 = *(v15 + 16);
          v36 = *(v15 + 24);
          if (v37 >= v36 >> 1)
          {
            sub_23AA8FFE0((v36 > 1), v37 + 1, 1);
            v15 = v57;
          }

          *(v15 + 16) = v37 + 1;
          v38 = v15 + 16 * v37;
          *(v38 + 32) = v33;
          *(v38 + 40) = v35;
          ++v28;
          --v14;
        }

        while (v14);
      }

      v0 = v55;
      v4 = v53;
      v5 = v52;
      v9 = v51;
    }

    v39 = MEMORY[0x23EE926F0](v15, MEMORY[0x277D837D0]);
    v41 = v40;

    v42 = sub_23AA8F920(v39, v41, &v56);

    *(v9 + 14) = v42;
    _os_log_impl(&dword_23AA75000, v4, v5, "[%s] installationCompleted(%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE92E60](v54, -1, -1);
    MEMORY[0x23EE92E60](v9, -1, -1);
  }

  v43 = v0[7];
  v45 = v0[3];
  v44 = v0[4];
  v46 = v0[2];
  v47 = sub_23AA961EC();
  (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v45;
  v48[5] = v46;

  sub_23AA865C8(0, 0, v44, &unk_23AA97F08, v48);

  v49 = v0[1];

  return v49();
}

uint64_t sub_23AA8C5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_23AA77CC8;

  return sub_23AA8AFA8(a5);
}

uint64_t sub_23AA8C7E4(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_23AA9606C();
  v4 = sub_23AA9619C();
  v3[4] = v4;

  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_23AA8C8BC;

  return sub_23AA8BFD4(v4);
}

uint64_t sub_23AA8C8BC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v3[2](v3);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23AA8CA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA8CAC0, 0, 0);
}

uint64_t sub_23AA8CAC0()
{
  v22 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);

  v3 = sub_23AA95F5C();
  v4 = sub_23AA9626C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v21 = v7;
    *v6 = 136315138;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v8 = sub_23AA9636C();
    v10 = sub_23AA8F920(v8, v9, &v21);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23AA75000, v3, v4, "[%s] received HCI data)", v6, 0xCu);
    sub_23AA7A258(v7);
    MEMORY[0x23EE92E60](v7, -1, -1);
    MEMORY[0x23EE92E60](v6, -1, -1);
  }

  v11 = v0[6];
  v12 = v0[7];
  v14 = v0[4];
  v13 = v0[5];
  v16 = v0[2];
  v15 = v0[3];
  v17 = sub_23AA961EC();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v11;
  v18[5] = v14;
  v18[6] = v13;
  v18[7] = v16;
  v18[8] = v15;

  sub_23AA78838(v14, v13);
  sub_23AA78838(v16, v15);
  sub_23AA865C8(0, 0, v12, &unk_23AA97ED0, v18);

  v19 = v0[1];

  return v19();
}

uint64_t sub_23AA8CD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = type metadata accessor for CredentialSession.Event(0);
  v8[6] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[7] = swift_task_alloc();
  v11 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  v8[8] = v11;
  v12 = *(v11 - 8);
  v8[9] = v12;
  v13 = *(v12 + 64) + 15;
  v8[10] = swift_task_alloc();
  v14 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v8[11] = v14;
  v15 = *(v14 - 8);
  v8[12] = v15;
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  v8[13] = v17;
  v18 = swift_task_alloc();
  v8[14] = v18;
  *v18 = v8;
  v18[1] = sub_23AA8CF10;

  return sub_23AA89548(v17);
}

uint64_t sub_23AA8CF10()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23AA8D00C, 0, 0);
}

uint64_t sub_23AA8D00C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[9];
  v13 = v0[11];
  v14 = v0[8];
  v5 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v10 = v0[2];
  v9 = v0[3];
  *v6 = v10;
  v6[1] = v9;
  v6[2] = v8;
  v6[3] = v7;
  swift_storeEnumTagMultiPayload();
  sub_23AA78838(v10, v9);
  sub_23AA78838(v8, v7);
  sub_23AA961FC();
  (*(v4 + 8))(v3, v14);
  (*(v2 + 8))(v1, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_23AA8D2BC(void *a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = a1;
  v8 = a2;

  v9 = sub_23AA95EFC();
  v11 = v10;

  v4[4] = v9;
  v4[5] = v11;
  v12 = sub_23AA95EFC();
  v14 = v13;

  v4[6] = v12;
  v4[7] = v14;
  v15 = swift_task_alloc();
  v4[8] = v15;
  *v15 = v4;
  v15[1] = sub_23AA8D3CC;

  return sub_23AA8CA1C(v9, v11, v12, v14);
}

uint64_t sub_23AA8D3CC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v5 = *(*v0 + 32);
  v6 = *(*v0 + 24);
  v7 = *(*v0 + 16);
  v10 = *v0;

  sub_23AA7A2CC(v3, v2);
  sub_23AA7A2CC(v5, v4);

  v6[2](v6);
  _Block_release(v6);
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_23AA8D580(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  v3 = *(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA8D620, 0, 0);
}

uint64_t sub_23AA8D620()
{
  v20 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);

  v3 = sub_23AA95F5C();
  v4 = sub_23AA9626C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315394;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v9 = sub_23AA9636C();
    v11 = sub_23AA8F920(v9, v10, &v19);

    *(v7 + 4) = v11;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    _os_log_impl(&dword_23AA75000, v3, v4, "[%s] rfFieldChanged(%{BOOL}d", v7, 0x12u);
    sub_23AA7A258(v8);
    MEMORY[0x23EE92E60](v8, -1, -1);
    MEMORY[0x23EE92E60](v7, -1, -1);
  }

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = sub_23AA961EC();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;

  sub_23AA865C8(0, 0, v13, &unk_23AA97E98, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_23AA8D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  v6 = type metadata accessor for CredentialSession.Event(0);
  *(v5 + 16) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 24) = swift_task_alloc();
  v8 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  *(v5 + 32) = v8;
  v9 = *(v8 - 8);
  *(v5 + 40) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 48) = swift_task_alloc();
  v11 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  *(v5 + 56) = v11;
  v12 = *(v11 - 8);
  *(v5 + 64) = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  *(v5 + 72) = v14;
  v15 = swift_task_alloc();
  *(v5 + 80) = v15;
  *v15 = v5;
  v15[1] = sub_23AA8DA64;

  return sub_23AA89548(v14);
}

uint64_t sub_23AA8DA64()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23AA8DB60, 0, 0);
}

uint64_t sub_23AA8DB60()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 16);
  **(v0 + 24) = (*(v0 + 88) & 1) == 0;
  swift_storeEnumTagMultiPayload();
  sub_23AA961FC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23AA8DDDC(char a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_23AA8DE98;

  return sub_23AA8D580(a1);
}

uint64_t sub_23AA8DE98()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_23AA8DFD4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA8E070, 0, 0);
}

uint64_t sub_23AA8E070()
{
  v26 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_23AA95F7C();
  sub_23AA7A0D4(v3, qword_27DFC29B0);

  v4 = v2;
  v5 = sub_23AA95F5C();
  v6 = sub_23AA9626C();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v12 = sub_23AA9636C();
    v14 = sub_23AA8F920(v12, v13, &v25);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_23AA75000, v5, v6, "[%s] sessionErrorEvent(%@", v9, 0x16u);
    sub_23AA92440(v10, &qword_27DFC19C8, &qword_23AA97DE0);
    MEMORY[0x23EE92E60](v10, -1, -1);
    sub_23AA7A258(v11);
    MEMORY[0x23EE92E60](v11, -1, -1);
    MEMORY[0x23EE92E60](v9, -1, -1);
  }

  v17 = v0[3];
  v18 = v0[4];
  v19 = v0[2];
  v20 = sub_23AA961EC();
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v17;
  v21[5] = v19;

  v22 = v19;
  sub_23AA865C8(0, 0, v18, &unk_23AA97E58, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_23AA8E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for CredentialSession.Event(0);
  v5[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v8 = sub_23AA76CEC(&qword_27DFC19D0, &qword_23AA97E60);
  v5[12] = v8;
  v9 = *(v8 - 8);
  v5[13] = v9;
  v10 = *(v9 + 64) + 15;
  v5[14] = swift_task_alloc();
  v11 = sub_23AA76CEC(&qword_27DFC1928, &qword_23AA978D8);
  v5[15] = v11;
  v12 = *(v11 - 8);
  v5[16] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v5[17] = v14;
  v15 = swift_task_alloc();
  v5[18] = v15;
  *v15 = v5;
  v15[1] = sub_23AA8E510;

  return sub_23AA89548(v14);
}

uint64_t sub_23AA8E510()
{
  v1 = *(*v0 + 144);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23AA8E60C, 0, 0);
}

uint64_t sub_23AA8E60C()
{
  v38 = v0;
  v1 = *(v0 + 72);
  swift_willThrow();
  *(v0 + 40) = v1;
  v2 = v1;
  sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = sub_23AA95F7C();
    sub_23AA7A0D4(v6, qword_27DFC29B0);
    v7 = v5;
    v8 = sub_23AA95F5C();
    v9 = sub_23AA9627C();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);
    if (v10)
    {
      v36 = *(v0 + 136);
      v14 = *(v0 + 72);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v18 = *(v0 + 16);
      v17 = *(v0 + 24);
      v19 = *(v0 + 32);
      v20 = sub_23AA9639C();
      v22 = sub_23AA8F920(v20, v21, &v37);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_23AA75000, v8, v9, "Unknown error: %s", v15, 0xCu);
      sub_23AA7A258(v16);
      MEMORY[0x23EE92E60](v16, -1, -1);
      MEMORY[0x23EE92E60](v15, -1, -1);

      (*(v12 + 8))(v36, v13);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }

    goto LABEL_12;
  }

  v3 = *(v0 + 48);
  if (v3 != 17)
  {
    if (v3 == 16)
    {
      v4 = *(v0 + 64);

      return MEMORY[0x2822009F8](sub_23AA8E930, v4, 0);
    }

    goto LABEL_7;
  }

  v28 = *(v0 + 128);
  v27 = *(v0 + 136);
  v30 = *(v0 + 112);
  v29 = *(v0 + 120);
  v31 = *(v0 + 96);
  v32 = *(v0 + 104);
  v33 = *(v0 + 80);
  v34 = *(v0 + 88);
  swift_storeEnumTagMultiPayload();
  sub_23AA961FC();
  (*(v32 + 8))(v30, v31);
  (*(v28 + 8))(v27, v29);

LABEL_12:
  v23 = *(v0 + 136);
  v24 = *(v0 + 112);
  v25 = *(v0 + 88);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_23AA8E930()
{
  v1 = *(v0 + 64);
  sub_23AA880E4();

  return MEMORY[0x2822009F8](sub_23AA8E998, 0, 0);
}

uint64_t sub_23AA8E998()
{
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23AA8EBBC(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_23AA8EC80;

  return sub_23AA8DFD4(v5);
}

uint64_t sub_23AA8EC80()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_23AA8EDDC(void *a1)
{
  v2 = v1;
  v4 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v8 = sub_23AA95F7C();
  sub_23AA7A0D4(v8, qword_27DFC29B0);

  v9 = a1;
  v10 = sub_23AA95F5C();
  v11 = sub_23AA9626C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v15 = sub_23AA9636C();
    v17 = sub_23AA8F920(v15, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    if (a1)
    {
      v18 = a1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v12 + 14) = v19;
    *v13 = v20;
    _os_log_impl(&dword_23AA75000, v10, v11, "[%s] sessionEnded(%@)", v12, 0x16u);
    sub_23AA92440(v13, &qword_27DFC19C8, &qword_23AA97DE0);
    MEMORY[0x23EE92E60](v13, -1, -1);
    sub_23AA7A258(v14);
    MEMORY[0x23EE92E60](v14, -1, -1);
    MEMORY[0x23EE92E60](v12, -1, -1);
  }

  v21 = sub_23AA961EC();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v2;

  sub_23AA865C8(0, 0, v7, &unk_23AA97DD8, v22);
}

uint64_t sub_23AA8F16C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AA8F264;

  return v7(a1);
}

uint64_t sub_23AA8F264()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_23AA8F35C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23AA7A354;

  return v7();
}

uint64_t sub_23AA8F444(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23AA7A354;

  return v8();
}

uint64_t sub_23AA8F52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_23AA912F8(a3, v25 - v11, &qword_27DFC18B8, &qword_23AA98090);
  v13 = sub_23AA961EC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_23AA92440(v12, &qword_27DFC18B8, &qword_23AA98090);
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

  sub_23AA961DC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_23AA961CC();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_23AA9617C() + 32;
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

    sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);

    return v23;
  }

LABEL_8:
  sub_23AA92440(a3, &qword_27DFC18B8, &qword_23AA98090);
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

uint64_t sub_23AA8F828(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23AA92740;

  return v7(a1);
}

uint64_t sub_23AA8F920(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23AA8F9EC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23AA923E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_23AA7A258(v11);
  return v7;
}

unint64_t sub_23AA8F9EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23AA8FAF8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23AA962FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23AA8FAF8(uint64_t a1, unint64_t a2)
{
  v4 = sub_23AA8FB44(a1, a2);
  sub_23AA8FC74(&unk_284DAB688);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_23AA8FB44(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23AA8FD60(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23AA962FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23AA9618C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23AA8FD60(v10, 0);
        result = sub_23AA962DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23AA8FC74(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_23AA8FDD4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23AA8FD60(uint64_t a1, uint64_t a2)
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

  sub_23AA76CEC(&qword_27DFC19E8, &qword_23AA97F60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23AA8FDD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_23AA76CEC(&qword_27DFC19E8, &qword_23AA97F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_23AA8FECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA8FF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CredentialSession.Credential();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23AA8FF8C(uint64_t a1, void *a2)
{
  v3 = *(*(*(v2 + 16) + 64) + 40);
  *v3 = a1;
  v3[1] = a2;
  v4 = a2;

  return swift_continuation_throwingResume();
}

char *sub_23AA8FFE0(char *a1, int64_t a2, char a3)
{
  result = sub_23AA90000(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23AA90000(char *result, int64_t a2, char a3, char *a4)
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
    sub_23AA76CEC(&qword_27DFC19D8, &qword_23AA97F10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_23AA9010C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_23AA90200;

  return v6(v2 + 32);
}

uint64_t sub_23AA90200()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s23SecureElementCredential0C7SessionC5StateO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = *(*(type metadata accessor for CredentialSession.Credential() - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = type metadata accessor for CredentialSession.State(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v38 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v38 - v28;
  sub_23AA9250C(a1, &v38 - v28, type metadata accessor for CredentialSession.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v32 = type metadata accessor for CredentialSession.State;
    if (EnumCaseMultiPayload == 2)
    {
      sub_23AA9250C(v39, v27, type metadata accessor for CredentialSession.State);
      v33 = swift_getEnumCaseMultiPayload() == 2;
      v34 = v27;
    }

    else
    {
      sub_23AA9250C(v39, v18, type metadata accessor for CredentialSession.State);
      v33 = swift_getEnumCaseMultiPayload() == 3;
      v34 = v18;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23AA8FF0C(v29, v8);
    sub_23AA9250C(v39, v21, type metadata accessor for CredentialSession.State);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_23AA92574(v8, type metadata accessor for CredentialSession.Credential);
      v31 = v21;
      goto LABEL_11;
    }

    v35 = v38;
    sub_23AA8FF0C(v21, v38);
    v33 = sub_23AA95F2C();
    sub_23AA92574(v35, type metadata accessor for CredentialSession.Credential);
    v34 = v8;
    v36 = type metadata accessor for CredentialSession.Credential;
LABEL_14:
    sub_23AA92574(v34, v36);
    return v33 & 1;
  }

  sub_23AA8FF0C(v29, v13);
  sub_23AA9250C(v39, v24, type metadata accessor for CredentialSession.State);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23AA8FF0C(v24, v11);
    v33 = sub_23AA95F2C();
    v32 = type metadata accessor for CredentialSession.Credential;
    sub_23AA92574(v11, type metadata accessor for CredentialSession.Credential);
    v34 = v13;
LABEL_13:
    v36 = v32;
    goto LABEL_14;
  }

  sub_23AA92574(v13, type metadata accessor for CredentialSession.Credential);
  v31 = v24;
LABEL_11:
  sub_23AA92574(v31, type metadata accessor for CredentialSession.State);
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_23AA90720(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23AA76CEC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_23AA9078C()
{
  result = qword_27DFC1960;
  if (!qword_27DFC1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1960);
  }

  return result;
}

unint64_t sub_23AA907E4()
{
  result = qword_27DFC1968;
  if (!qword_27DFC1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFC1968);
  }

  return result;
}

void sub_23AA90864()
{
  sub_23AA90D94(319, &qword_27DFC1980, &qword_27DFC1928, &qword_23AA978D8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_23AA90D94(319, &qword_27DFC1988, &qword_27DFC1920, &qword_23AA978D0);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_23AA95F4C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CredentialSession.invalidate()()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_23AA77CC8;

  return v6();
}

uint64_t dispatch thunk of CredentialSession.state.getter(uint64_t a1)
{
  v4 = *(*v1 + 152);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA7A354;

  return v8(a1);
}

uint64_t dispatch thunk of CredentialSession.eventStream.getter(uint64_t a1)
{
  v4 = *(*v1 + 160);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA77CC8;

  return v8(a1);
}

uint64_t sub_23AA90D4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_23AA90D94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_23AA90D4C(a3, a4);
    v5 = sub_23AA962BC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23AA90DE8()
{
  sub_23AA90E48();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_23AA90E48()
{
  if (!qword_27DFC19A0)
  {
    v0 = type metadata accessor for CredentialSession.Credential();
    if (!v1)
    {
      atomic_store(v0, &qword_27DFC19A0);
    }
  }
}

uint64_t sub_23AA90F08(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23AA90F40()
{
  sub_23AA90FD0();
  if (v0 <= 0x3F)
  {
    sub_23AA90E48();
    if (v1 <= 0x3F)
    {
      sub_23AA91000();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

ValueMetadata *sub_23AA90FD0()
{
  result = qword_27DFC19B8;
  if (!qword_27DFC19B8)
  {
    result = &type metadata for CredentialSession.ErrorCode;
    atomic_store(&type metadata for CredentialSession.ErrorCode, &qword_27DFC19B8);
  }

  return result;
}

ValueMetadata *sub_23AA91000()
{
  result = qword_27DFC19C0;
  if (!qword_27DFC19C0)
  {
    result = &type metadata for CredentialSession.NFCFieldInformation;
    atomic_store(&type metadata for CredentialSession.NFCFieldInformation, &qword_27DFC19C0);
  }

  return result;
}

uint64_t sub_23AA91040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23AA91094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CredentialSession.ErrorCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CredentialSession.ErrorCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23AA91244(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA8F0F0(a1, v4, v5, v6);
}

uint64_t sub_23AA912F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_23AA76CEC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23AA91360(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA7A354;

  return sub_23AA8F16C(a1, v5);
}

uint64_t sub_23AA91418()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8EBBC(v2, v3, v4);
}

uint64_t sub_23AA914CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23AA7A354;

  return sub_23AA8F35C(v2, v3, v5);
}

uint64_t sub_23AA9158C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA8F444(a1, v4, v5, v7);
}

uint64_t sub_23AA91658(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA7A354;

  return sub_23AA8F828(a1, v5);
}

uint64_t sub_23AA91728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA8E370(a1, v4, v5, v7, v6);
}

uint64_t sub_23AA917E8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23AA91828()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8DDDC(v2, v4, v3);
}

uint64_t sub_23AA918E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA8D8C4(a1, v4, v5, v6, v7);
}

uint64_t sub_23AA919AC()
{
  _Block_release(*(v0 + 32));
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23AA919FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23AA7A354;

  return sub_23AA8D2BC(v2, v3, v5, v4);
}

uint64_t sub_23AA91ABC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  sub_23AA7A2CC(v0[5], v0[6]);
  sub_23AA7A2CC(v0[7], v0[8]);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA91B0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23AA7A354;

  return sub_23AA8CD6C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23AA91BEC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8C7E4(v2, v3, v4);
}

uint64_t sub_23AA91CB8(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_23AA91D10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA8C5BC(a1, v4, v5, v7, v6);
}

uint64_t sub_23AA91DD4()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23AA91E1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23AA7A354;

  return sub_23AA8BF04(v2, v3, v4);
}

uint64_t sub_23AA91ED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23AA91F10()
{
  *(v1 + 16) = v0;
  v2 = *(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA91FAC, v0, 0);
}

uint64_t sub_23AA91FAC()
{
  v20 = v0;
  if (qword_27DFC1760 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_23AA95F7C();
  sub_23AA7A0D4(v2, qword_27DFC29B0);

  v3 = sub_23AA95F5C();
  v4 = sub_23AA9626C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    sub_23AA95F4C();
    sub_23AA92280(&qword_27DFC18C8, MEMORY[0x277CC95F0]);
    v8 = sub_23AA9636C();
    v10 = sub_23AA8F920(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_23AA75000, v3, v4, "Presentment Intent assertion for [%s] has timed out", v6, 0xCu);
    sub_23AA7A258(v7);
    MEMORY[0x23EE92E60](v7, -1, -1);
    MEMORY[0x23EE92E60](v6, -1, -1);
  }

  v11 = v0[2];
  v12 = v0[3];
  v13 = *(v11 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion);
  *(v11 + OBJC_IVAR____TtC23SecureElementCredential17CredentialSession_currentAssertion) = 0;

  v14 = sub_23AA961EC();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = sub_23AA92280(&qword_27DFC19E0, type metadata accessor for CredentialSession);
  v16 = swift_allocObject();
  v16[2] = v11;
  v16[3] = v15;
  v16[4] = v11;
  swift_retain_n();
  sub_23AA865C8(0, 0, v12, &unk_23AA97F50, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_23AA92280(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23AA922D0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23AA9231C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA8B9E4(a1, v4, v5, v6);
}

uint64_t sub_23AA923E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23AA92440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_23AA76CEC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_23AA924A8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_23AA9250C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23AA92574(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23AA925D4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23AA9260C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA7A354;

  return sub_23AA9010C(a1, v5);
}

uint64_t sub_23AA92790()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_23AA92844;
  v3 = *(v0 + 16);

  return sub_23AA85DB0(v3);
}

uint64_t sub_23AA92844(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_23AA92944(uint64_t a1, uint64_t a2)
{
  v2[43] = a1;
  v2[44] = a2;
  v4 = *(*(sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8) - 8) + 64) + 15;
  v2[45] = swift_task_alloc();
  v5 = type metadata accessor for CredentialSession.Credential();
  v2[46] = v5;
  v6 = *(v5 - 8);
  v2[47] = v6;
  v7 = *(v6 + 64) + 15;
  v2[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA92A40, a2, 0);
}

uint64_t sub_23AA92A40()
{
  v1 = *(v0 + 352);
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA92AC4, 0, 0);
}

uint64_t sub_23AA92AC4()
{
  v1 = v0;
  v2 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 41;
  v0[3] = sub_23AA92E48;
  v3 = swift_continuation_init();
  v5 = (v0 + 10);
  v4 = v0[10];
  if (!v4)
  {
    sub_23AA76B00();
    v16 = swift_allocError();
    *v17 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v18 = v16;
    swift_continuation_throwingResumeWithError();
    goto LABEL_9;
  }

  sub_23AA7A10C(v5, (v1 + 16));
  v6 = swift_allocObject();
  v7 = *(v1 + 9);
  *(v6 + 16) = *(v1 + 8);
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v1 + 10);
  *(v6 + 64) = v3;
  v1[26] = sub_23AA94954;
  v1[27] = v6;
  v1[22] = MEMORY[0x277D85DD0];
  v1[23] = 1107296256;
  v1[24] = sub_23AA76C84;
  v1[25] = &unk_284DACCD8;
  v8 = _Block_copy(v1 + 22);
  v9 = v1[27];
  swift_unknownObjectRetain();

  v10 = [v4 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);
  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1868, &unk_23AA96E10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v5 + 256) = 0;
    goto LABEL_7;
  }

  v11 = *(v5 + 256);
  if (!v11)
  {
LABEL_7:
    sub_23AA76B00();
    v19 = swift_allocError();
    *v20 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v21 = v19;
    swift_continuation_throwingResumeWithError();
    swift_unknownObjectRelease();
    v22 = *(v5 + 256);
    goto LABEL_8;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  v1[32] = sub_23AA94960;
  v1[33] = v12;
  v1[28] = MEMORY[0x277D85DD0];
  v1[29] = 1107296256;
  v1[30] = sub_23AA93358;
  v1[31] = &unk_284DACD28;
  v13 = _Block_copy((v5 + 144));
  v14 = v1[33];
  swift_unknownObjectRetain();

  [v11 listCredentialUUIDAndNamesWithReply_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v15 = v1[42];
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:

  return MEMORY[0x282200938](v2);
}

uint64_t sub_23AA92E48()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 392) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA931B0;
    v5 = 0;
  }

  else
  {
    v6 = v1[44];
    v1[50] = v1[41];
    sub_23AA7A178((v1 + 10));
    v4 = sub_23AA92F84;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_23AA92F84()
{
  v1 = v0[50];
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0[50]; v2; i = v0[50])
  {
    v4 = 0;
    v5 = v0[47];
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v22 = v1 & 0xC000000000000001;
    v6 = i + 32;
    v1 = v5 + 48;
    v7 = MEMORY[0x277D84F90];
    while (v22)
    {
      v8 = MEMORY[0x23EE92830](v4, v0[50]);
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v11 = v0[45];
      v10 = v0[46];
      sub_23AA7B408(v8, v11);
      if ((*v1)(v11, 1, v10) == 1)
      {
        sub_23AA945A0(v0[45]);
      }

      else
      {
        sub_23AA8FF0C(v0[45], v0[48]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_23AA94734(0, v7[2] + 1, 1, v7);
        }

        v13 = v7[2];
        v12 = v7[3];
        if (v13 >= v12 >> 1)
        {
          v7 = sub_23AA94734(v12 > 1, v13 + 1, 1, v7);
        }

        v14 = v0[48];
        v7[2] = v13 + 1;
        sub_23AA8FF0C(v14, v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
      }

      ++v4;
      if (v9 == v2)
      {
        v15 = v0[50];
        goto LABEL_23;
      }
    }

    if (v4 >= *(v21 + 16))
    {
      goto LABEL_20;
    }

    v8 = *(v6 + 8 * v4);
    v9 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v2 = sub_23AA9631C();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_23:
  v16 = v0[48];
  v17 = v0[45];
  v18 = v0[43];

  *v18 = v7;

  v19 = v0[1];

  return v19();
}

uint64_t sub_23AA931B0()
{
  v1 = *(v0 + 352);
  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA9321C, v1, 0);
}

uint64_t sub_23AA9321C()
{
  v1 = v0[48];
  v2 = v0[45];

  v3 = v0[1];
  v4 = v0[49];

  return v3();
}

uint64_t sub_23AA9328C(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {
    **(*(a3 + 64) + 40) = result;

    return swift_continuation_throwingResume();
  }

  else if (a2)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v4 = a2;
    v5 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23AA93358(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_23AA9606C();
    v4 = sub_23AA9619C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t CredentialSession.provisionCredential(configurationUUID:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_23AA93414, v4, 0);
}

uint64_t sub_23AA93414()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = v0[6];
    v5 = v0[3];
    v6 = swift_task_alloc();
    v0[7] = v6;
    v6[2] = v4;
    v6[3] = v5;
    v6[4] = v2;
    v6[5] = v1;
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_23AA93584;
    v8 = v0[2];

    return sub_23AA78168(v8, &unk_23AA97FF8);
  }

  else
  {
    sub_23AA76B00();
    swift_allocError();
    *v10 = 20;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_23AA93584()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[6];

    return MEMORY[0x2822009F8](sub_23AA936C0, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_23AA936C0()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_23AA93724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  v7 = *(*(sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8) - 8) + 64) + 15;
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23AA937CC, a2, 0);
}

uint64_t sub_23AA937CC()
{
  v1 = *(v0 + 192);
  v5 = *(v0 + 176);
  v2 = *(v0 + 168);
  swift_beginAccess();
  sub_23AA7A10C(v2 + 112, v0 + 80);
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *(v3 + 16) = v5;
  *(v3 + 32) = v1;

  return MEMORY[0x2822009F8](sub_23AA9387C, 0, 0);
}

uint64_t sub_23AA9387C()
{
  v1 = *(v0 + 208);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 152;
  *(v0 + 24) = sub_23AA93934;
  v2 = swift_continuation_init();
  sub_23AA8638C(v2, (v0 + 80), sub_23AA94594, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA93934()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 216) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_23AA93BB0;
    v5 = 0;
  }

  else
  {
    v6 = v1[26];
    v7 = v1[21];
    v1[28] = v1[19];

    sub_23AA7A178((v1 + 10));
    v4 = sub_23AA93A78;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_23AA93A78()
{
  v1 = *(v0 + 200);
  sub_23AA7B408(*(v0 + 224), v1);
  v2 = type metadata accessor for CredentialSession.Credential();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = *(v0 + 224);
  v5 = *(v0 + 200);
  if (v3 == 1)
  {
    sub_23AA945A0(*(v0 + 200));
    sub_23AA76B00();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();

    v7 = *(v0 + 200);
  }

  else
  {
    v9 = *(v0 + 160);

    sub_23AA8FF0C(v5, v9);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_23AA93BB0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);

  sub_23AA7A178(v0 + 80);

  return MEMORY[0x2822009F8](sub_23AA93C24, v2, 0);
}

uint64_t sub_23AA93C24()
{
  v1 = v0[27];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_23AA93C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23AA7A354;

  return sub_23AA93724(a1, v4, v5, v7, v6);
}

void sub_23AA93D48(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_23AA95F1C();
    v6 = sub_23AA9615C();
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    v12[4] = sub_23AA94608;
    v12[5] = v7;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_23AA7DD28;
    v12[3] = &unk_284DACC88;
    v8 = _Block_copy(v12);

    [v3 createCredentialWithServerConfigUUID:v5 friendlyName:v6 reply:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v9 = swift_allocError();
    *v10 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v11 = v9;

    swift_continuation_throwingResumeWithError();
  }
}

void *sub_23AA93EF4(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    **(*(a3 + 64) + 40) = result;
    v3 = result;

    return swift_continuation_throwingResume();
  }

  else if (a2)
  {
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v5 = a2;
    v6 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CredentialSession.deleteCredential(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23AA93FE0, v1, 0);
}

uint64_t sub_23AA93FE0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_23AA940B4;

  return sub_23AA77F3C(sub_23AA77F3C, dword_23AA98010);
}

uint64_t sub_23AA940B4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23AA77874;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = *(v2 + 32);

    v5 = sub_23AA795B4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23AA941D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 152) = a2;
  *(v3 + 160) = a3;
  return MEMORY[0x2822009F8](sub_23AA941F4, a2, 0);
}

uint64_t sub_23AA941F4()
{
  v1 = v0[19];
  v2 = v0[20];
  swift_beginAccess();
  sub_23AA7A10C(v1 + 112, (v0 + 10));
  v3 = swift_task_alloc();
  v0[21] = v3;
  *(v3 + 16) = v2;

  return MEMORY[0x2822009F8](sub_23AA94288, 0, 0);
}

uint64_t sub_23AA94288()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_23AA77A38;
  v2 = swift_continuation_init();
  sub_23AA86364(v2, (v0 + 80), sub_23AA94564, v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_23AA94338(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23AA77CC8;

  return sub_23AA941D8(a1, v5, v4);
}

void sub_23AA943E4(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *a1;
    swift_unknownObjectRetain();
    v5 = sub_23AA95F1C();
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v11[4] = sub_23AA827E8;
    v11[5] = v6;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_23AA76C18;
    v11[3] = &unk_284DACC38;
    v7 = _Block_copy(v11);

    [v3 deleteCredential:v5 reply:v7];
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_23AA76B00();
    v8 = swift_allocError();
    *v9 = 7;
    sub_23AA76CEC(&qword_27DFC1780, &unk_23AA96E00);
    swift_allocError();
    *v10 = v8;

    swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_23AA9457C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23AA94594(void **a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_23AA93D48(a1, a2);
}

uint64_t sub_23AA945A0(uint64_t a1)
{
  v2 = sub_23AA76CEC(&qword_27DFC1910, &unk_23AA978B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_23AA94610(char *result, int64_t a2, char a3, char *a4)
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
    sub_23AA76CEC(&qword_27DFC1A00, &qword_23AA98028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23AA94734(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_23AA76CEC(&qword_27DFC19F8, &qword_23AA98020);
  v10 = *(type metadata accessor for CredentialSession.Credential() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CredentialSession.Credential() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_23AA9490C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[6])
  {
    sub_23AA7A258(v0 + 3);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23AA94988()
{
  type metadata accessor for SECClient();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  result = swift_unknownObjectWeakInit();
  qword_27DFC29D8 = v0;
  return result;
}

uint64_t static SECClient.serviceName.getter()
{
  swift_beginAccess();
  v0 = qword_27DFC1A08;

  return v0;
}

uint64_t static SECClient.serviceName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27DFC1A08 = a1;
  off_27DFC1A10 = a2;
}

uint64_t sub_23AA94AE0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_27DFC1A08 = v2;
  off_27DFC1A10 = v1;
}

void sub_23AA94B44()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_27DFC1770 != -1)
    {
      swift_once();
    }

    v2 = sub_23AA95F7C();
    sub_23AA7A0D4(v2, qword_27DFC1A18);
    v3 = sub_23AA95F5C();
    v4 = sub_23AA9625C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_23AA75000, v3, v4, "SEC XPC: Already connected", v5, 2u);
      MEMORY[0x23EE92E60](v5, -1, -1);
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27DFC1760 != -1)
    {
      swift_once();
    }

    v8 = sub_23AA95F7C();
    sub_23AA7A0D4(v8, qword_27DFC29B0);
    v9 = sub_23AA95F5C();
    v10 = sub_23AA9625C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23AA75000, v9, v10, "SEC XPC: Starting new connection", v11, 2u);
      MEMORY[0x23EE92E60](v11, -1, -1);
    }

    swift_beginAccess();
    v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);

    v13 = sub_23AA9615C();

    v14 = [v12 initWithMachServiceName:v13 options:4096];

    v15 = *(v1 + 16);
    *(v1 + 16) = v14;
    v16 = v14;

    if (v16)
    {
      v17 = objc_opt_self();
      v18 = [v17 interfaceWithProtocol_];
      v19 = sub_23AA76E20();
      v20 = sub_23AA77218();
      [v18 setInterface:v20 forSelector:sel_queueSessionWithCallbackProxy_reply_ argumentIndex:0 ofReply:0];

      [v18 setInterface:v19 forSelector:sel_queueSessionWithCallbackProxy_reply_ argumentIndex:0 ofReply:1];
      v21 = [v17 interfaceWithProtocol_];
      [v18 setInterface:v21 forSelector:sel_acquirePresentmentIntentAssertionWithReply_ argumentIndex:0 ofReply:1];

      [v16 setRemoteObjectInterface_];
      v22 = sub_23AA77218();
      [v16 setExportedInterface_];

      [v16 setExportedObject_];
      v36 = sub_23AA95C4C;
      v37 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_23AA880A0;
      v35 = &unk_284DACDF0;
      v23 = _Block_copy(&aBlock);

      [v16 setInterruptionHandler_];
      _Block_release(v23);
      v36 = sub_23AA95C84;
      v37 = v1;
      aBlock = MEMORY[0x277D85DD0];
      v33 = 1107296256;
      v34 = sub_23AA880A0;
      v35 = &unk_284DACE18;
      v24 = _Block_copy(&aBlock);

      [v16 setInvalidationHandler_];
      _Block_release(v24);
      [v16 activate];
      if (qword_27DFC1770 != -1)
      {
        swift_once();
      }

      sub_23AA7A0D4(v8, qword_27DFC1A18);
      v25 = sub_23AA95F5C();
      v26 = sub_23AA9625C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23AA75000, v25, v26, "SEC XPC: Connection activated", v27, 2u);
        MEMORY[0x23EE92E60](v27, -1, -1);
      }
    }

    else
    {
      if (qword_27DFC1770 != -1)
      {
        swift_once();
      }

      sub_23AA7A0D4(v8, qword_27DFC1A18);
      v28 = sub_23AA95F5C();
      v29 = sub_23AA9628C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_23AA75000, v28, v29, "Unable to start a new xpc connection", v30, 2u);
        MEMORY[0x23EE92E60](v30, -1, -1);
      }

      sub_23AA76B00();
      swift_allocError();
      *v31 = 21;
      swift_willThrow();
    }
  }
}

uint64_t sub_23AA95194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_23AA951B4, 0, 0);
}

uint64_t sub_23AA951B4()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_23AA95298;

    return sub_23AA8B7DC(1);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23AA95298()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23AA95E88, 0, 0);
}

uint64_t sub_23AA953B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*(sub_23AA76CEC(&qword_27DFC18B8, &qword_23AA98090) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v11 - v6;
  v8 = sub_23AA961EC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;

  sub_23AA868C8(0, 0, v7, a3, v9);
}

uint64_t sub_23AA954B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_23AA954D0, 0, 0);
}

uint64_t sub_23AA954D0()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 32) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_23AA955B4;

    return sub_23AA8B7DC(0);
  }

  else
  {
    **(v0 + 16) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_23AA955B4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_23AA956CC, 0, 0);
}

uint64_t SECClient.__deallocating_deinit()
{
  sub_23AA9571C(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_23AA95784@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27DFC1A10;
  *a1 = qword_27DFC1A08;
  a1[1] = v2;
}

uint64_t sub_23AA95814()
{
  v0 = sub_23AA95F7C();
  sub_23AA924A8(v0, qword_27DFC1A18);
  sub_23AA7A0D4(v0, qword_27DFC1A18);
  return sub_23AA95F6C();
}

uint64_t sub_23AA95894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23AA94B44();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v11[4] = sub_23AA8296C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23AA76C84;
  v11[3] = &unk_284DACDC8;
  v8 = _Block_copy(v11);

  v9 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1788, &qword_23AA97630);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
  }

  sub_23AA7DA8C(&v12, a1, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_23AA95A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23AA94B44();
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v11[4] = sub_23AA8296C;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_23AA76C84;
  v11[3] = &unk_284DACD78;
  v8 = _Block_copy(v11);

  v9 = [v6 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_23AA962CC();
  swift_unknownObjectRelease();
  sub_23AA76CEC(&qword_27DFC1788, &qword_23AA97630);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
  }

  sub_23AA8A6A0(&v12, a1, a3);
  return swift_unknownObjectRelease();
}

uint64_t sub_23AA95C34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23AA95CC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA954B0(a1, v4, v5, v6);
}

uint64_t sub_23AA95D74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23AA95DB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23AA7A354;

  return sub_23AA95194(a1, v4, v5, v6);
}