uint64_t sub_1B1D4()
{
  v29 = v0[72];
  v1 = v0[70];
  v33 = v0[69];
  v2 = v0[65];
  v39 = v0[64];
  v41 = v0[66];
  v3 = v0[59];
  v35 = v0[58];
  v37 = v0[60];
  v31 = v0[54];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[42];
  v7 = v0[43];
  v8 = v0[41];

  sub_5CA8(v8, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v7, &unk_15F170, &unk_126E00);

  (*(v4 + 8))(v31, v5);
  (*(v3 + 8))(v37, v35);
  (*(v2 + 8))(v41, v39);
  v42 = v0[74];
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[60];
  v12 = v0[57];
  v14 = v0[53];
  v13 = v0[54];
  v15 = v0[52];
  v16 = v0[49];
  v17 = v0[46];
  v18 = v0[43];
  v21 = v0[42];
  v22 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v30 = v0[34];
  v32 = v0[33];
  v34 = v0[32];
  v36 = v0[31];
  v38 = v0[28];
  v40 = v0[25];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B450(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 648);
  v6 = *(*v2 + 632);
  v13 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v7 = sub_1BB20;
  }

  else
  {
    v8 = v4[78];
    v10 = v4[36];
    v9 = v4[37];
    v11 = v4[35];
    v4[83] = a1;

    sub_5CA8(v11, &unk_15F170, &unk_126E00);
    sub_5CA8(v10, &unk_15F170, &unk_126E00);
    sub_5CA8(v9, &unk_15F170, &unk_126E00);
    v7 = sub_1B5E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1B5E8()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[58];
  v4 = v0[31];
  sub_12361C();
  v0[10] = v3;
  v0[11] = sub_23BBC(&qword_15F930, 255, &type metadata accessor for SiriTimePluginModel);
  v5 = sub_23B4C(v0 + 7);
  (*(v2 + 16))(v5, v1, v3);
  v6 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v7 = swift_task_alloc();
  v0[84] = v7;
  *v7 = v0;
  v7[1] = sub_1B73C;
  v8 = v0[83];
  v9 = v0[66];
  v10 = v0[53];
  v11 = v0[31];

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v0 + 2, v11, v9, v0 + 7, v10, 0, 0, 0xD00000000000001CLL);
}

uint64_t sub_1B73C()
{
  v1 = *v0;
  v2 = *(*v0 + 672);
  v3 = *(*v0 + 664);
  v4 = *(*v0 + 248);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v8 = *v0;

  (*(v5 + 8))(v4, v6);
  sub_5CA8(v1 + 56, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_1B8CC, 0, 0);
}

uint64_t sub_1B8CC()
{
  v1 = v0[80];
  v2 = v0[77];
  v37 = v0[66];
  v3 = v0[65];
  v4 = v0[59];
  v33 = v0[60];
  v35 = v0[64];
  v31 = v0[58];
  v5 = v0[53];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[6];
  sub_23B08(v0 + 2, v0[5]);
  v39 = sub_123D4C();

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v33, v31);
  sub_5BB0(v0 + 2);
  (*(v3 + 8))(v37, v35);
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[60];
  v12 = v0[57];
  v14 = v0[53];
  v13 = v0[54];
  v15 = v0[52];
  v16 = v0[49];
  v17 = v0[46];
  v18 = v0[43];
  v21 = v0[42];
  v22 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v29 = v0[34];
  v30 = v0[33];
  v32 = v0[32];
  v34 = v0[31];
  v36 = v0[28];
  v38 = v0[25];

  v19 = v0[1];

  return v19(v39);
}

uint64_t sub_1BB20()
{
  v29 = v0[80];
  v1 = v0[78];
  v33 = v0[77];
  v2 = v0[65];
  v39 = v0[64];
  v41 = v0[66];
  v3 = v0[59];
  v35 = v0[58];
  v37 = v0[60];
  v31 = v0[53];
  v5 = v0[50];
  v4 = v0[51];
  v6 = v0[36];
  v7 = v0[37];
  v8 = v0[35];

  sub_5CA8(v8, &unk_15F170, &unk_126E00);
  sub_5CA8(v6, &unk_15F170, &unk_126E00);
  sub_5CA8(v7, &unk_15F170, &unk_126E00);

  (*(v4 + 8))(v31, v5);
  (*(v3 + 8))(v37, v35);
  (*(v2 + 8))(v41, v39);
  v42 = v0[82];
  v9 = v0[66];
  v10 = v0[63];
  v11 = v0[60];
  v12 = v0[57];
  v14 = v0[53];
  v13 = v0[54];
  v15 = v0[52];
  v16 = v0[49];
  v17 = v0[46];
  v18 = v0[43];
  v21 = v0[42];
  v22 = v0[41];
  v23 = v0[40];
  v24 = v0[39];
  v25 = v0[38];
  v26 = v0[37];
  v27 = v0[36];
  v28 = v0[35];
  v30 = v0[34];
  v32 = v0[33];
  v34 = v0[32];
  v36 = v0[31];
  v38 = v0[28];
  v40 = v0[25];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1BD9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 688);
  v6 = *v2;
  v4[87] = v1;

  v7 = v4[85];
  v8 = v4[28];
  v9 = v4[27];
  v10 = v4[26];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1C39C;
  }

  else
  {
    v4[88] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1BF48;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1BF48()
{
  v1 = v0[66];
  v2 = v0[31];
  v3 = v0[25];
  sub_12361C();
  *(swift_task_alloc() + 16) = v1;
  sub_123B0C();

  v4 = async function pointer to PatternExecutionResult.generateFlow(manifest:measure:)[1];
  v5 = swift_task_alloc();
  v0[89] = v5;
  *v5 = v0;
  v5[1] = sub_1C040;
  v6 = v0[88];
  v7 = v0[52];
  v8 = v0[25];

  return PatternExecutionResult.generateFlow(manifest:measure:)(v8, v7);
}

uint64_t sub_1C040(uint64_t a1)
{
  v2 = *(*v1 + 712);
  v3 = *(*v1 + 704);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 192);
  v6 = *(*v1 + 184);
  v8 = *v1;
  *(*v1 + 720) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_1C1B8, 0, 0);
}

uint64_t sub_1C1B8()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  (*(v0[51] + 8))(v0[52], v0[50]);
  (*(v2 + 8))(v1, v3);
  v30 = v0[90];
  v4 = v0[66];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[57];
  v9 = v0[53];
  v8 = v0[54];
  v10 = v0[52];
  v11 = v0[49];
  v12 = v0[46];
  v13 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[28];
  v29 = v0[25];

  v14 = v0[1];

  return v14(v30);
}

uint64_t sub_1C39C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  (*(v0[51] + 8))(v0[52], v0[50]);
  (*(v2 + 8))(v1, v3);
  v30 = v0[87];
  v4 = v0[66];
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[57];
  v9 = v0[53];
  v8 = v0[54];
  v10 = v0[52];
  v11 = v0[49];
  v12 = v0[46];
  v13 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[39];
  v20 = v0[38];
  v21 = v0[37];
  v22 = v0[36];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[28];
  v29 = v0[25];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1C57C(uint64_t a1, uint64_t a2)
{
  v3 = sub_5AE8(&unk_162190, &unk_128500);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_12392C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_123B1C();
}

uint64_t sub_1C67C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_123C1C();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v3[9] = *(v5 + 64);
  v3[10] = swift_task_alloc();
  v6 = sub_12368C();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v8 = *(v7 + 64) + 15;
  v3[13] = swift_task_alloc();
  v9 = sub_123B3C();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v12 = sub_12392C();
  v3[18] = v12;
  v13 = *(v12 - 8);
  v3[19] = v13;
  v14 = *(v13 + 64) + 15;
  v3[20] = swift_task_alloc();

  return _swift_task_switch(sub_1C868, 0, 0);
}

uint64_t sub_1C868()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider makeWindowFlow", v4, 2u);
  }

  v5 = v0[17];
  v39 = v0[19];
  v40 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v37 = v7;
  v38 = v0[20];
  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[12];
  v32 = v0[10];
  v33 = v0[9];
  v11 = v0[8];
  v31 = v0[7];
  v34 = v0[6];
  v35 = v0[5];
  v29 = v0[11];
  v30 = v0[4];

  sub_FFAE8(11);
  sub_12363C();
  v36 = v5;
  sub_123AFC();
  (*(v10 + 8))(v8, v29);
  (*(v7 + 16))(v6, v5, v9);
  v12 = sub_12394C();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_12393C();
  (*(v11 + 16))(v32, v30, v31);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v34;
  (*(v11 + 32))(v16 + v15, v32, v31);
  *(v16 + ((v33 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v35;
  v17 = sub_1253DC();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  sub_1253CC();
  sub_123ACC();
  v20 = *(v12 + 48);
  v21 = *(v12 + 52);
  swift_allocObject();
  sub_12393C();
  v22 = sub_1232DC();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v0[2] = sub_1232CC();
  sub_23BBC(&qword_15F910, 255, &type metadata accessor for YesNoSearchWindowStrategy);
  v25 = sub_1232EC();

  v0[3] = v25;
  sub_5AE8(&qword_15F918, &qword_1273F8);
  sub_5C60(&qword_15F920, &qword_15F918, &qword_1273F8);
  v26 = sub_12343C();

  (*(v37 + 8))(v36, v9);
  (*(v39 + 8))(v38, v40);

  v27 = v0[1];

  return v27(v26);
}

uint64_t sub_1CD50(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_12368C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1CE6C, 0, 0);
}

uint64_t sub_1CE6C()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider window prompt producing rejection output", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[5];

  sub_12367C();
  sub_12391C();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1CFDC;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];

  return sub_2F7D4(v10, v8, v9);
}

uint64_t sub_1CFDC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 80) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_23CC4, 0, 0);
  }

  else
  {
    v11 = *(v2 + 64);
    v12 = *(v2 + 40);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_1D208(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_12392C();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = sub_12368C();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1D324, 0, 0);
}

uint64_t sub_1D324()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider window prompt producing cancel output", v4, 2u);
  }

  v5 = v0[8];
  v6 = v0[5];

  sub_12367C();
  sub_12391C();
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1D494;
  v8 = v0[8];
  v9 = v0[5];
  v10 = v0[2];

  return sub_2F7D4(v10, v8, v9);
}

uint64_t sub_1D494()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 32);
  v9 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 80) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_1D6C0, 0, 0);
  }

  else
  {
    v11 = *(v2 + 64);
    v12 = *(v2 + 40);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_1D6C0()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_1D730(uint64_t a1)
{
  v2 = type metadata accessor for TimerNLv3Intent();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v6 = sub_125ABC();
  sub_5B30(v6, qword_15F700);
  v7 = sub_125AAC();
  v8 = sub_125DFC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "SearchTimer.ResultSetProvider Window prompt parsing nlv3 ActionForInput", v9, 2u);
  }

  v10 = sub_124BCC();
  (*(*(v10 - 8) + 16))(v5, a1, v10);
  if (qword_15EF98 != -1)
  {
    swift_once();
  }

  sub_23BBC(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if (v12[15] == 3)
  {
    sub_12378C();
  }

  else
  {
    sub_12377C();
  }

  return sub_23A30(v5, type metadata accessor for TimerNLv3Intent);
}

uint64_t sub_1D974(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_5AE8(&unk_161EC0, &unk_126E20) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for TimerNLv3Intent();
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1DA40, 0, 0);
}

uint64_t sub_1DA40()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider Window prompt parsing nlv3 window action", v4, 2u);
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 24);

  v7 = sub_124BCC();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  if (qword_15EF98 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  sub_23BBC(&qword_15FFA0, 255, type metadata accessor for TimerNLv3Intent);
  sub_12428C();
  if (*(v0 + 56) - 1 < 2)
  {
    v10 = *(v0 + 32);
    v11 = &enum case for ConfirmationResponse.rejected(_:);
LABEL_11:
    v12 = *v11;
    v13 = sub_123A1C();
    v14 = *(v13 - 8);
    (*(v14 + 104))(v10, v12, v13);
    v15 = 0;
    goto LABEL_13;
  }

  if (!*(v0 + 56))
  {
    v10 = *(v0 + 32);
    v11 = &enum case for ConfirmationResponse.confirmed(_:);
    goto LABEL_11;
  }

  v13 = sub_123A1C();
  v14 = *(v13 - 8);
  v15 = 1;
LABEL_13:
  v16 = *(v0 + 48);
  v17 = *(v0 + 16);
  (*(v14 + 56))(*(v0 + 32), v15, 1, v13);
  sub_123C9C();
  sub_23A30(v16, type metadata accessor for TimerNLv3Intent);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1DD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DE18;

  return sub_1EEF0(a2, a3);
}

uint64_t sub_1DE18(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1DF18(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_12368C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_125ABC();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = sub_124FFC();
  v3[11] = v10;
  v11 = *(v10 - 8);
  v3[12] = v11;
  v12 = *(v11 + 64) + 15;
  v3[13] = swift_task_alloc();
  v13 = sub_12501C();
  v3[14] = v13;
  v14 = *(v13 - 8);
  v3[15] = v14;
  v15 = *(v14 + 64) + 15;
  v3[16] = swift_task_alloc();
  v16 = sub_12392C();
  v3[17] = v16;
  v17 = *(v16 - 8);
  v3[18] = v17;
  v18 = *(v17 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1E14C, 0, 0);
}

uint64_t sub_1E14C()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[8], qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider makeFinalWindowFlow", v4, 2u);
  }

  v5 = v0[4];

  v6 = *(v5 + 56);
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v13 = *(v5 + 56);
    }

    if (sub_1260FC() == 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)) == 1)
  {
LABEL_7:
    v7 = sub_125AAC();
    v8 = sub_125DFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "SearchTimer.ResultSetProvider Bypassing windowing flow for single item presentation", v9, 2u);
    }

    v10 = swift_task_alloc();
    v0[20] = v10;
    *v10 = v0;
    v10[1] = sub_1E438;
    v11 = v0[4];

    return sub_11558();
  }

  v14 = v0[16];
  v16 = v0[12];
  v15 = v0[13];
  v18 = v0[10];
  v17 = v0[11];
  v19 = v0[8];
  v20 = v0[9];
  sub_FF26C(v0[3], v0[19]);
  (*(v16 + 104))(v15, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v17);
  (*(v20 + 16))(v18, v1, v19);
  mach_absolute_time();
  sub_12502C();
  v21 = swift_task_alloc();
  v0[21] = v21;
  *v21 = v0;
  v21[1] = sub_1E5E4;
  v22 = v0[3];
  v23 = v0[4];
  v24 = v0[2];

  return sub_1EEF0(v24, v22);
}

uint64_t sub_1E438(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;

  v7 = v4[19];
  v8 = v4[16];
  v9 = v4[13];
  v10 = v4[10];
  v11 = v4[7];

  v13 = *(v6 + 8);
  if (!v1)
  {
    v12 = a1;
  }

  return v13(v12);
}

uint64_t sub_1E5E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v7 = sub_1EA10;
  }

  else
  {
    *(v4 + 184) = a1;
    v7 = sub_1E70C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1E70C()
{
  v1 = v0[7];
  sub_12361C();
  v2 = async function pointer to PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)[1];
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1E7B8;
  v4 = v0[23];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[7];

  return PatternExecutionResult.generateFlow(phase:contextUpdate:measure:)(v7, v5, v6);
}

uint64_t sub_1E7B8(uint64_t a1)
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 200) = a1;

  (*(v5 + 8))(v4, v6);

  return _swift_task_switch(sub_1E930, 0, 0);
}

uint64_t sub_1E930()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[25];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10(v4);
}

uint64_t sub_1EA10()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1EAE8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_5AE8(&qword_15F8F0, &qword_1273B8) - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = sub_124CCC();
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_1EBEC, 0, 0);
}

uint64_t sub_1EBEC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_124C7C();
  sub_124C6C();
  sub_124C3C();

  sub_1254FC();

  sub_124CBC();
  v5 = sub_124CAC();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v7 = sub_125ABC();
  sub_5B30(v7, qword_15F700);
  v8 = sub_125AAC();
  v9 = sub_125DFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v5 & 1;
    _os_log_impl(&dword_0, v8, v9, "[ResultSetProvider.makeWindowingConfiguration] Using windowing configuration = %{BOOL}d", v10, 8u);
  }

  if (v5)
  {
    v11 = v0[5];
    v12 = v0[3];
    v0[2] = v0[4];
    sub_5AE8(&qword_15F900, &qword_12A800);
    _s17ResultSetProviderCMa();
    sub_23BBC(&qword_15F908, v13, _s17ResultSetProviderCMa);
    sub_1232BC();
    sub_123ADC();
    v14 = sub_5AE8(&qword_15F8F8, &unk_1273C0);
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = v0[3];
    v16 = sub_5AE8(&qword_15F8F8, &unk_1273C0);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v18 = v0[8];
  v17 = v0[9];
  v19 = v0[5];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1EEF0(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v4 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v5 = type metadata accessor for SearchForTimersHandledOtherMultiParameters(0);
  v3[49] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_1EFCC, 0, 0);
}

uint64_t sub_1EFCC()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.ResultSetProvider executePatternForWindow", v4, 2u);
  }

  v5 = *(v0 + 368);

  v6 = *(v5 + 64);
  v7 = [v6 allAvailableTargets];
  if (v7)
  {
    v8 = v7;
    sub_1256DC();
    v9 = sub_125C6C();

    if (v9 >> 62)
    {
      v10 = sub_1260FC();
    }

    else
    {
      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    }

    v11 = v10 > 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(v0 + 368) + 104);
  if (v12 >> 62)
  {
    if (v12 < 0)
    {
      v34 = *(*(v0 + 368) + 104);
    }

    v13 = sub_1260FC();
  }

  else
  {
    v13 = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  }

  *(v0 + 408) = v13;
  v14 = sub_2BE74(*(v0 + 360));
  *(v0 + 416) = v14;
  sub_1257EC();
  v15 = sub_125CAC();
  v16 = sub_18324(v15);

  *(v0 + 424) = v16;
  v17 = *(*(v0 + 368) + 88);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v35 = *(*(v0 + 368) + 88);
    }

    v72 = v16;
    if (sub_1260FC())
    {
      goto LABEL_14;
    }
  }

  else
  {
    v72 = v16;
    if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_14:
      v69 = v13;
      if (qword_15F078 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 368);
      v19 = *(v0 + 352);
      v20 = sub_123BEC();
      *(v0 + 105) = v20 & 1;
      v21 = sub_123C0C();
      *(v0 + 106) = v21 & 1;
      v22 = sub_123BFC();
      *(v0 + 107) = v22 & 1;
      v23 = sub_123BBC();
      *(v0 + 108) = v23 & 1;
      v24 = *(v18 + 112);
      *(v0 + 109) = v24;
      *(v0 + 488) = 1;
      *(v0 + 496) = 1;
      *(v0 + 504) = 1;
      *(v0 + 110) = 1;
      *(v0 + 111) = 1;
      *(v0 + 201) = 1;
      v25 = *(v18 + 56);
      if (v25 >> 62)
      {
        v59 = v23;
        v26 = sub_1260FC();
        v23 = v59;
      }

      else
      {
        v26 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
      }

      *(v0 + 456) = v26;
      *(v0 + 16) = 1;
      *(v0 + 24) = 0;
      *(v0 + 32) = 1;
      *(v0 + 40) = v72;
      *(v0 + 48) = v69 != 0;
      *(v0 + 49) = v20 & 1;
      *(v0 + 50) = v21 & 1;
      *(v0 + 51) = v22 & 1;
      *(v0 + 52) = v23 & 1;
      *(v0 + 53) = v24;
      *(v0 + 56) = v14;
      *(v0 + 64) = 0;
      *(v0 + 72) = 1;
      *(v0 + 80) = v26;
      *(v0 + 202) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = 0;
      *(v0 + 104) = 1;
      v27 = sub_AD3C8();
      *(v0 + 464) = v27;
      v28 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v70 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));

      v29 = swift_task_alloc();
      *(v0 + 472) = v29;
      *v29 = v0;
      v29[1] = sub_1FA2C;
      v30 = 0x800000000012C7C0;
      v31 = 0xD00000000000001CLL;
      v32 = v27;
      v33 = v70;
      goto LABEL_32;
    }
  }

  v67 = v11;
  v71 = v6;
  if (qword_15F078 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 392);
  v36 = *(v0 + 400);
  v38 = *(v0 + 352);
  v63 = sub_123BEC();
  v62 = sub_123C0C();
  v61 = sub_123BFC();
  LOBYTE(v38) = sub_123BBC();
  v39 = v37[14];
  v40 = sub_124E4C();
  v41 = *(*(v40 - 8) + 56);
  v42 = 1;
  v66 = v39;
  v41(v36 + v39, 1, 1, v40);
  v64 = v37[16];
  v41(v36 + v64, 1, 1, v40);
  v65 = v37[17];
  v41(v36 + v65, 1, 1, v40);
  *v36 = 1;
  *(v36 + 8) = 0;
  *(v36 + 16) = 1;
  *(v36 + 24) = 0;
  *(v36 + 32) = v67;
  *(v36 + 33) = v63 & 1;
  *(v36 + 34) = v62 & 1;
  *(v36 + 35) = v61 & 1;
  *(v36 + 36) = v38 & 1;
  *(v36 + 40) = v14;
  *(v36 + 48) = 0;
  *(v36 + 56) = 1;
  v43 = v37[15];
  *(v36 + v43) = 0;
  v44 = v36 + v37[18];
  *v44 = 0;
  v68 = v44;
  *(v44 + 8) = 1;
  v45 = v36 + v37[19];
  *v45 = 0;
  *(v45 + 8) = 1;
  v46 = [v71 label];
  if (v46)
  {
    v47 = *(v0 + 384);
    v48 = v46;
    sub_125B9C();

    sub_125BCC();

    v42 = 0;
  }

  v50 = *(v0 + 376);
  v49 = *(v0 + 384);
  v51 = *(v0 + 368);
  v41(v49, v42, 1, v40);
  sub_22A1C(v49, v36 + v64);
  *(v36 + v43) = sub_FE18();
  [v71 type];
  sub_12588C();
  v41(v50, 0, 1, v40);
  sub_22A1C(v50, v36 + v65);
  [v71 state];
  sub_1258AC();
  v41(v50, 0, 1, v40);
  sub_22A1C(v50, v36 + v66);
  v52 = *(v51 + 56);
  if (v52 >> 62)
  {
    if (v52 < 0)
    {
      v60 = *(v51 + 56);
    }

    v53 = sub_1260FC();
  }

  else
  {
    v53 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
  }

  v54 = *(v0 + 400);
  *v68 = v53;
  *(v68 + 8) = 0;
  *(v36 + 24) = v72;

  v55 = sub_AD73C();
  *(v0 + 432) = v55;
  v56 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v73 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v57 = swift_task_alloc();
  *(v0 + 440) = v57;
  *v57 = v0;
  v57[1] = sub_1F798;
  v31 = 0xD000000000000021;
  v30 = 0x800000000012C7E0;
  v32 = v55;
  v33 = v73;
LABEL_32:

  return v33(v31, v30, v32);
}

uint64_t sub_1F798(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[38] = v2;
  v4[39] = a1;
  v4[40] = v1;
  v5 = v3[55];
  v6 = *v2;
  v4[56] = v1;

  v7 = v3[54];

  if (v1)
  {
    v8 = sub_1F984;
  }

  else
  {
    v8 = sub_1F8D4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1F8D4()
{
  v1 = v0[53];
  sub_23A30(v0[50], type metadata accessor for SearchForTimersHandledOtherMultiParameters);

  v2 = v0[39];
  v3 = v0[50];
  v5 = v0[47];
  v4 = v0[48];

  v6 = v0[1];

  return v6(v2);
}

uint64_t sub_1F984()
{
  v1 = v0[53];
  sub_23A30(v0[50], type metadata accessor for SearchForTimersHandledOtherMultiParameters);

  v2 = v0[56];
  v3 = v0[50];
  v5 = v0[47];
  v4 = v0[48];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1FA2C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[41] = v2;
  v4[42] = a1;
  v4[43] = v1;
  v5 = v3[59];
  v6 = *v2;
  v4[60] = v1;

  v7 = v3[58];

  if (v1)
  {
    v8 = sub_1FC84;
  }

  else
  {
    v8 = sub_1FB6C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1FB6C()
{
  v1 = *(v0 + 202);
  v2 = *(v0 + 201);
  v3 = *(v0 + 111);
  v4 = *(v0 + 110);
  v5 = *(v0 + 109);
  v6 = *(v0 + 108);
  v7 = *(v0 + 107);
  v8 = *(v0 + 106);
  v9 = *(v0 + 105);
  v10 = *(v0 + 416);
  v11 = *(v0 + 424);
  v12 = *(v0 + 456);
  v13 = *(v0 + 408) != 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = v4;
  *(v0 + 232) = v11;
  *(v0 + 240) = v13;
  *(v0 + 241) = v9;
  *(v0 + 242) = v8;
  *(v0 + 243) = v7;
  *(v0 + 244) = v6;
  *(v0 + 245) = v5;
  *(v0 + 248) = v10;
  *(v0 + 256) = 0;
  *(v0 + 264) = v3;
  *(v0 + 272) = v12;
  *(v0 + 280) = v1;
  *(v0 + 288) = 0;
  *(v0 + 296) = v2;
  sub_229C8(v0 + 208);

  v14 = *(v0 + 336);
  v15 = *(v0 + 400);
  v17 = *(v0 + 376);
  v16 = *(v0 + 384);

  v18 = *(v0 + 8);

  return v18(v14);
}

uint64_t sub_1FC84()
{
  v1 = *(v0 + 202);
  v2 = *(v0 + 201);
  v3 = *(v0 + 111);
  v4 = *(v0 + 110);
  v5 = *(v0 + 109);
  v6 = *(v0 + 108);
  v7 = *(v0 + 107);
  v8 = *(v0 + 106);
  v9 = *(v0 + 105);
  v10 = *(v0 + 416);
  v11 = *(v0 + 424);
  v12 = *(v0 + 456);
  v13 = *(v0 + 408) != 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = v4;
  *(v0 + 136) = v11;
  *(v0 + 144) = v13;
  *(v0 + 145) = v9;
  *(v0 + 146) = v8;
  *(v0 + 147) = v7;
  *(v0 + 148) = v6;
  *(v0 + 149) = v5;
  *(v0 + 152) = v10;
  *(v0 + 160) = 0;
  *(v0 + 168) = v3;
  *(v0 + 176) = v12;
  *(v0 + 184) = v1;
  *(v0 + 192) = 0;
  *(v0 + 200) = v2;
  sub_229C8(v0 + 112);

  v14 = *(v0 + 480);
  v15 = *(v0 + 400);
  v17 = *(v0 + 376);
  v16 = *(v0 + 384);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1FD94()
{
  sub_5BB0((v0 + 16));
  v1 = *(v0 + 56);

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_1FE50()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 80);

  return v1;
}

uint64_t sub_1FE84()
{
  v1 = sub_12341C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1FEE4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23CC8;

  return sub_101EC();
}

uint64_t sub_1FF74()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23CC8;

  return sub_11558();
}

uint64_t sub_20004()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23CC8;

  return sub_18728();
}

uint64_t sub_20094(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_1EAE8(a1);
}

uint64_t sub_20130(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 32) = v7;
  *v7 = v3;
  v7[1] = sub_201D8;

  return sub_1DF18(a1, v5);
}

uint64_t sub_201D8(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *v2;
  *(v5 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_20314, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_20314()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_203E0(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23CC8;

  return sub_1C67C(a1, v5);
}

uint64_t sub_204D0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_204F4, 0, 0);
}

uint64_t sub_204F4()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15F700);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SearchTimer.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  v5 = sub_125AAC();
  v6 = sub_125DDC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Timers #response enabled – allowing ResultSet output to handle rendering", v7, 2u);
  }

  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_206B0;
  v9 = *(v0 + 24);

  return sub_20820(v9);
}

uint64_t sub_206B0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_207AC, 0, 0);
}

uint64_t sub_207AC()
{
  v1 = *(v0 + 16);
  sub_1236CC();
  sub_1236BC();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20820(uint64_t a1)
{
  v1[19] = a1;
  v2 = sub_1254DC();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = sub_124E4C();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();
  v8 = sub_125ABC();
  v1[26] = v8;
  v9 = *(v8 - 8);
  v1[27] = v9;
  v10 = *(v9 + 64) + 15;
  v1[28] = swift_task_alloc();
  v11 = sub_124FFC();
  v1[29] = v11;
  v12 = *(v11 - 8);
  v1[30] = v12;
  v13 = *(v12 + 64) + 15;
  v1[31] = swift_task_alloc();
  v14 = sub_12501C();
  v1[32] = v14;
  v15 = *(v14 - 8);
  v1[33] = v15;
  v16 = *(v15 + 64) + 15;
  v1[34] = swift_task_alloc();
  v17 = *(*(sub_5AE8(&qword_15F960, &qword_12BAF0) - 8) + 64) + 15;
  v1[35] = swift_task_alloc();
  v18 = sub_122F6C();
  v1[36] = v18;
  v19 = *(v18 - 8);
  v1[37] = v19;
  v20 = *(v19 + 64) + 15;
  v1[38] = swift_task_alloc();

  return _swift_task_switch(sub_20AE4, 0, 0);
}

uint64_t sub_20AE4()
{
  v47 = v0;
  sub_12357C();
  v1 = *(v0 + 144);
  sub_23B08((v0 + 112), *(v0 + 136));
  sub_123A7C();
  if (!v2)
  {
    sub_5BB0((v0 + 112));
    goto LABEL_5;
  }

  v3 = *(v0 + 288);
  v4 = *(v0 + 296);
  v5 = *(v0 + 280);
  sub_5BB0((v0 + 112));
  sub_122F2C();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_5CA8(*(v0 + 280), &qword_15F960, &qword_12BAF0);
LABEL_5:
    v6 = *(v0 + 304);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280);
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    v11 = *(v0 + 200);
    v12 = *(v0 + 176);

    v13 = *(v0 + 8);

    return v13();
  }

  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 232);
  (*(*(v0 + 296) + 32))(*(v0 + 304), *(v0 + 280), *(v0 + 288));
  (*(v16 + 104))(v15, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v17);
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 248);
  v21 = *(v0 + 216);
  v20 = *(v0 + 224);
  v22 = *(v0 + 208);
  v23 = *(v0 + 152);
  v24 = sub_5B30(v22, qword_15F700);
  (*(v21 + 16))(v20, v24, v22);
  mach_absolute_time();
  sub_12502C();
  sub_5AE8(&qword_15F958, &qword_127550);
  v25 = sub_123ABC();
  v26 = [v25 label];

  if (v26)
  {
    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 184);
    sub_125B9C();

    sub_125BCC();

    v30 = sub_124E3C();
    v32 = v31;
    (*(v28 + 8))(v27, v29);
    *(v0 + 40) = &type metadata for String;
    *(v0 + 48) = &protocol witness table for String;
    *(v0 + 56) = &protocol witness table for String;
    *(v0 + 16) = v30;
    *(v0 + 24) = v32;
    sub_E3AC((v0 + 16), (v0 + 64));
    LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
    v46 = &_swiftEmptyDictionarySingleton;
    v33 = *(v0 + 88);
    v34 = sub_23C74(v0 + 64, v33);
    v35 = *(v33 - 8);
    v36 = *(v35 + 64) + 15;
    v37 = swift_task_alloc();
    (*(v35 + 16))(v37, v34, v33);
    sub_22EA0(*v37, v37[1], 0x62614C72656D6974, 0xEA00000000006C65, v27, &v46);
    sub_5BB0((v0 + 64));
  }

  v39 = *(v0 + 168);
  v38 = *(v0 + 176);
  v40 = *(v0 + 152);
  v41 = *(v0 + 160);
  *v38 = sub_123ABC();
  (*(v39 + 104))(v38, enum case for SiriSuggestions.Intent.inIntent(_:), v41);
  v42 = sub_E210(_swiftEmptyArrayStorage);
  *(v0 + 312) = v42;
  v43 = swift_task_alloc();
  *(v0 + 320) = v43;
  *v43 = v0;
  v43[1] = sub_20F94;
  v44 = *(v0 + 304);
  v45 = *(v0 + 176);

  return sub_11C83C(v44, v45, v42);
}

uint64_t sub_20F94()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 160);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_21108, 0, 0);
}

uint64_t sub_21108()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v5 = v0[33];
  v4 = v0[34];
  v6 = v0[32];
  sub_12500C();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[38];
  v8 = v0[34];
  v9 = v0[35];
  v10 = v0[31];
  v11 = v0[28];
  v12 = v0[25];
  v13 = v0[22];

  v14 = v0[1];

  return v14();
}

uint64_t sub_21200(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_125ABC();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_124FFC();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = sub_12501C();
  v2[19] = v9;
  v10 = *(v9 - 8);
  v2[20] = v10;
  v11 = *(v10 + 64) + 15;
  v2[21] = swift_task_alloc();
  v12 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v13 = sub_12392C();
  v2[23] = v13;
  v14 = *(v13 - 8);
  v2[24] = v14;
  v15 = *(v14 + 64) + 15;
  v2[25] = swift_task_alloc();
  v16 = sub_12368C();
  v2[26] = v16;
  v17 = *(v16 - 8);
  v2[27] = v17;
  v18 = *(v17 + 64) + 15;
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_2145C, 0, 0);
}

uint64_t sub_2145C()
{
  if (qword_15EDD0 != -1)
  {
    swift_once();
  }

  v35 = sub_5B30(v0[13], qword_15F700);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SearchTimer.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[22];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[15];
  v32 = v0[16];
  v10 = v0[14];
  v33 = v0[13];
  v34 = v0[21];
  v11 = v0[12];

  sub_12364C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[29] = sub_124DBC();
  sub_5AE8(&qword_15F958, &qword_127550);
  v12 = sub_123A9C();
  v0[30] = v12;
  (*(v7 + 104))(v8, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v32);
  (*(v10 + 16))(v9, v35, v33);
  mach_absolute_time();
  sub_12502C();
  v13 = [v12 matchedTimers];
  if (v13)
  {
    v14 = v13;
    sub_1257EC();
    v15 = sub_125C6C();

    if (v15 >> 62)
    {
      v16 = sub_1260FC();
    }

    else
    {
      v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    }

    v17 = v16 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = [v12 unmatchedTimers];
  if (!v18)
  {
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_20:
    v30 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v36 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v31 = swift_task_alloc();
    v0[36] = v31;
    *v31 = v0;
    v31[1] = sub_21DEC;
    v24 = 0xEF726F7272652365;
    v25 = 0x73614272656D6974;
    goto LABEL_21;
  }

  v19 = v18;
  sub_1257EC();
  v20 = sub_125C6C();

  if (v20 >> 62)
  {
    v21 = sub_1260FC();
  }

  else
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v17)
  {
    goto LABEL_20;
  }

  if (v21)
  {
    v22 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v36 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v23 = swift_task_alloc();
    v0[34] = v23;
    *v23 = v0;
    v23[1] = sub_21AE4;
    v24 = 0x800000000012C5A0;
    v25 = 0xD000000000000012;
LABEL_21:

    return v36(v25, v24, _swiftEmptyArrayStorage);
  }

LABEL_17:
  v26 = v0[12];
  v27 = swift_task_alloc();
  v0[31] = v27;
  *(v27 + 16) = v26;
  v28 = swift_task_alloc();
  v0[32] = v28;
  *v28 = v0;
  v28[1] = sub_218EC;

  return sub_104D80(sub_23C6C, v27);
}

uint64_t sub_218EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[32];
  v6 = v3[31];
  v9 = *v2;
  v4[33] = v1;

  if (v1)
  {
    v7 = sub_22354;
  }

  else
  {
    v7 = sub_21A24;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_21A24()
{
  v1 = v0[3];
  v0[38] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_220F4;
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_21AE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[34];
  v8 = *v2;
  v4[35] = v1;

  if (v1)
  {
    v6 = sub_21CC0;
  }

  else
  {
    v6 = sub_21C00;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_21C00()
{
  v1 = v0[6];
  v0[38] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_220F4;
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_21CC0()
{
  v1 = *(v0 + 232);

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v13 = *(v0 + 176);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);
  v16 = *(v0 + 280);

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21DEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[36];
  v8 = *v2;
  v4[37] = v1;

  if (v1)
  {
    v6 = sub_21FC8;
  }

  else
  {
    v6 = sub_21F08;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_21F08()
{
  v1 = v0[9];
  v0[38] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[39] = v3;
  *v3 = v0;
  v3[1] = sub_220F4;
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[21];
  v7 = v0[11];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_21FC8()
{
  v1 = *(v0 + 232);

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v13 = *(v0 + 176);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);
  v16 = *(v0 + 296);

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_220F4()
{
  v2 = *(*v1 + 312);
  v3 = *(*v1 + 304);
  v6 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_22480;
  }

  else
  {
    v4 = sub_22220;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_22220()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 232);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 200);
  v6 = *(v0 + 192);
  v12 = *(v0 + 184);
  v13 = *(v0 + 208);
  v7 = *(v0 + 168);
  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v14 = *(v0 + 176);
  v15 = *(v0 + 144);
  v16 = *(v0 + 120);

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v5, v12);
  (*(v4 + 8))(v3, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22354()
{
  v1 = *(v0 + 232);

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v13 = *(v0 + 176);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);
  v16 = *(v0 + 264);

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22480()
{
  v1 = *(v0 + 232);

  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v13 = *(v0 + 176);
  v14 = *(v0 + 144);
  v15 = *(v0 + 120);
  v16 = *(v0 + 320);

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v11 = *(v0 + 8);

  return v11();
}

void sub_225B8(uint64_t a1)
{
  sub_5AE8(&qword_15F958, &qword_127550);
  v4 = sub_123ABC();
  sub_12568C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_2263C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_5D08;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, a3, a4);
}

uint64_t sub_22700(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_204D0(a1, a2);
}

uint64_t sub_227A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5D08;

  return sub_21200(a1, a2);
}

uint64_t sub_22848(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_5AE8(&qword_15FFB0, &unk_1270A0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_228E4, 0, 0);
}

uint64_t sub_228E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = sub_12532C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_A85C8(v3, v1, v2);
  sub_5CA8(v2, &qword_15FFB0, &unk_1270A0);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_22A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

size_t sub_22A8C(size_t a1, int64_t a2, char a3)
{
  result = sub_22AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_22AAC(size_t result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_5AE8(&qword_15F940, &unk_127410);
  v10 = *(sub_124F4C() - 8);
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
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(sub_124F4C() - 8);
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

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22C84(uint64_t a1, uint64_t a2)
{
  v3 = sub_12575C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_23BBC(&qword_15F8E0, 255, &type metadata accessor for TimerGrouping), v9 = sub_125B6C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v19 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v18 = ~v10;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(a2 + 48) + v14 * v11, v3);
      sub_23BBC(&qword_15F8E8, 255, &type metadata accessor for TimerGrouping);
      v16 = sub_125B7C();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v11 = (v11 + 1) & v18;
    }

    while (((*(v19 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

_OWORD *sub_22EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v30 = &type metadata for String;
  v31 = &protocol witness table for String;
  v32 = &protocol witness table for String;
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v10 = *a6;
  v12 = sub_8AD8(a3, a4);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a5 & 1) != 0)
  {
LABEL_7:
    v18 = *a6;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 48 * v12);
      sub_5BB0(v19);
      return sub_E3AC(&v29, v19);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a5 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v15, a5 & 1);
  v21 = *a6;
  v22 = sub_8AD8(a3, a4);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *a6;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = sub_23C74(&v29, &type metadata for String);
  v25 = *(*(&type metadata for String - 1) + 64);
  __chkstk_darwin(v24);
  v27 = (&v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  sub_234E4(v12, a3, a4, *v27, v27[1], v18);

  return sub_5BB0(&v29);
}

_OWORD *sub_2309C(uint64_t a1, uint64_t a2, char a3, void *a4, double a5)
{
  *&v24 = a5;
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  v27 = &protocol witness table for Double;
  v9 = *a4;
  v11 = sub_8AD8(a1, a2);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_7:
    v17 = *a4;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      sub_5BB0(v18);
      return sub_E3AC(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v14, a3 & 1);
  v20 = *a4;
  v21 = sub_8AD8(a1, a2);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a4;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_23C74(&v24, &type metadata for Double);
  sub_236B8(v11, a1, a2, v17, *v23);

  return sub_5BB0(&v24);
}

_OWORD *sub_23204(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  *&v24 = a1;
  v25 = &type metadata for Int;
  v26 = &protocol witness table for Int;
  v27 = &protocol witness table for Int;
  v9 = *a5;
  v11 = sub_8AD8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      sub_5BB0(v18);
      return sub_E3AC(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_8AD8(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_23C74(&v24, &type metadata for Int);
  sub_2361C(v11, a2, a3, *v23, v17);

  return sub_5BB0(&v24);
}

_OWORD *sub_23374(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = &type metadata for Bool;
  v26 = &protocol witness table for Bool;
  v27 = &protocol witness table for Bool;
  v9 = *a5;
  v11 = sub_8AD8(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 48 * v11);
      sub_5BB0(v18);
      return sub_E3AC(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_AB638();
    goto LABEL_7;
  }

  sub_AA984(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_8AD8(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_1261FC();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = sub_23C74(&v24, &type metadata for Bool);
  sub_23580(v11, a2, a3, *v23, v17);

  return sub_5BB0(&v24);
}

_OWORD *sub_234E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = &type metadata for String;
  v14 = &protocol witness table for String;
  v15 = &protocol witness table for String;
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_E3AC(&v12, (a6[7] + 48 * a1));
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

_OWORD *sub_23580(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = &type metadata for Bool;
  v13 = &protocol witness table for Bool;
  v14 = &protocol witness table for Bool;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E3AC(&v11, (a5[7] + 48 * a1));
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

_OWORD *sub_2361C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v11 = a4;
  v12 = &type metadata for Int;
  v13 = &protocol witness table for Int;
  v14 = &protocol witness table for Int;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E3AC(&v11, (a5[7] + 48 * a1));
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

_OWORD *sub_236B8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = &type metadata for Double;
  v13 = &protocol witness table for Double;
  v14 = &protocol witness table for Double;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_E3AC(&v11, (a4[7] + 48 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_23754()
{
  v1 = sub_123C1C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_2382C()
{
  v2 = *(sub_123C1C() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23934;

  return sub_1DD6C(v4, v0 + v3, v5);
}

uint64_t sub_23934(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A98(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&unk_15F170, &unk_126E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_23B08(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_23B4C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23BB0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_18604(a1, v1[2]);
}

uint64_t sub_23BBC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_23C18()
{
  result = qword_15F950;
  if (!qword_15F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F950);
  }

  return result;
}

uint64_t sub_23C74(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_23D34(uint64_t a1, void (*a2)(void), uint64_t (*a3)(char *, void), uint64_t *a4)
{
  v7 = sub_124EDC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(0);
  sub_124ECC();
  result = a3(v10, 0);
  *a4 = result;
  return result;
}

uint64_t type metadata accessor for SetTimerAttributeCATsSimple()
{
  result = qword_15F968;
  if (!qword_15F968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E64(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_23E84, 0, 0);
}

uint64_t sub_23E84()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "speakableTimer");
  *(v2 + 47) = -18;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for TimerTimer(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v8 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_23FD8;
  v6 = v0[3];

  return v8(0xD000000000000024, 0x800000000012CA70, v2);
}

uint64_t sub_23FD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_24130, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_24130()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_24194(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_241B8, 0, 0);
}

uint64_t sub_241B8()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1270C0;
  *(v2 + 32) = 0x6954746567726174;
  *(v2 + 40) = 0xEB0000000072656DLL;
  if (v1)
  {
    v3 = type metadata accessor for TimerTimer(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "updatedTimer");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for TimerTimer(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v5;
  *(v2 + 120) = v6;
  v7 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v11 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_24360;
  v9 = v0[4];

  return v11(0xD000000000000027, 0x800000000012CA40, v2);
}

uint64_t sub_24360(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_244B8, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_244B8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2451C(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_606C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_246A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_124EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_124E6C();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_247CC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15F9B8);
  sub_5B30(v0, qword_15F9B8);
  return sub_1257AC();
}

uint64_t sub_24818(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_123B3C();
  v2[35] = v3;
  v4 = *(v3 - 8);
  v2[36] = v4;
  v5 = *(v4 + 64) + 15;
  v2[37] = swift_task_alloc();
  v6 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[38] = swift_task_alloc();
  v7 = type metadata accessor for SetTimerAttributeHandledOnWatchParameters(0);
  v2[39] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[40] = swift_task_alloc();
  v9 = *(*(sub_5AE8(&qword_15F9E0, &unk_127710) - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v10 = sub_1250BC();
  v2[43] = v10;
  v11 = *(v10 - 8);
  v2[44] = v11;
  v12 = *(v11 + 64) + 15;
  v2[45] = swift_task_alloc();
  v13 = sub_12392C();
  v2[46] = v13;
  v14 = *(v13 - 8);
  v2[47] = v14;
  v15 = *(v14 + 64) + 15;
  v2[48] = swift_task_alloc();
  v16 = sub_12368C();
  v2[49] = v16;
  v17 = *(v16 - 8);
  v2[50] = v17;
  v18 = *(v17 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v19 = sub_1254DC();
  v2[53] = v19;
  v20 = *(v19 - 8);
  v2[54] = v20;
  v21 = *(v20 + 64) + 15;
  v2[55] = swift_task_alloc();
  v22 = sub_125ABC();
  v2[56] = v22;
  v23 = *(v22 - 8);
  v2[57] = v23;
  v24 = *(v23 + 64) + 15;
  v2[58] = swift_task_alloc();
  v25 = sub_124FFC();
  v2[59] = v25;
  v26 = *(v25 - 8);
  v2[60] = v26;
  v27 = *(v26 + 64) + 15;
  v2[61] = swift_task_alloc();
  v28 = sub_12501C();
  v2[62] = v28;
  v29 = *(v28 - 8);
  v2[63] = v29;
  v30 = *(v29 + 64) + 15;
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v31 = *(*(sub_5AE8(&qword_15F960, &qword_12BAF0) - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v32 = sub_122F6C();
  v2[67] = v32;
  v33 = *(v32 - 8);
  v2[68] = v33;
  v34 = *(v33 + 64) + 15;
  v2[69] = swift_task_alloc();

  return _swift_task_switch(sub_24CE0, 0, 0);
}

uint64_t sub_24CE0()
{
  if (qword_15EDE8 != -1)
  {
    swift_once();
  }

  v1 = sub_5B30(v0[56], qword_15F9B8);
  v0[70] = v1;
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse() called", v4, 2u);
  }

  v5 = v0[34];

  v0[71] = sub_5AE8(&qword_15F9D8, &qword_1276F8);
  v6 = sub_123A9C();
  v7 = [v6 updatedTimer];
  v0[72] = v7;

  if (v7)
  {
    sub_12357C();
    v8 = v0[6];
    sub_23B08(v0 + 2, v0[5]);
    sub_123A7C();
    if (!v9)
    {
      sub_5BB0(v0 + 2);
      goto LABEL_15;
    }

    v10 = v0[68];
    v11 = v0[67];
    v12 = v0[66];
    sub_5BB0(v0 + 2);
    sub_122F2C();

    if ((*(v10 + 48))(v12, 1, v11) == 1)
    {
      sub_5CA8(v0[66], &qword_15F960, &qword_12BAF0);
LABEL_15:
      v29 = v0[72];
      v30 = v0[71];
      v31 = v0[52];
      v32 = v0[48];
      v33 = v0[34];
      v34 = sub_123ABC();
      v0[75] = v34;
      sub_12361C();
      v0[76] = sub_5AE8(&qword_160810, &unk_127420);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_126EB0;
      *(inited + 32) = v29;
      v36 = v29;
      sub_FF26C(inited, v32);
      swift_setDeallocating();
      v37 = *(inited + 16);
      swift_arrayDestroy();
      v38 = [v34 targetTimer];
      if (v38)
      {
        v39 = v38;
        v40 = sub_113D6C(0, 0);
      }

      else
      {
        v40 = 0;
      }

      v0[77] = v40;
      v53 = v0[72];
      v0[78] = sub_113D6C(0, 0);
      sub_12573C();
      sub_12572C();
      v54 = v0[15];
      v55 = v0[16];
      sub_23B08(v0 + 12, v54);
      v56 = [v53 identifier];
      if (v56)
      {
        v57 = v56;
        v58 = sub_125B9C();
        v60 = v59;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v0[79] = v60;
      v61 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
      v62 = swift_task_alloc();
      v0[80] = v62;
      *v62 = v0;
      v62[1] = sub_25844;

      return dispatch thunk of SessionManaging.sessionIDString(for:)(v58, v60, v54, v55);
    }

    v41 = v0[65];
    v43 = v0[60];
    v42 = v0[61];
    v45 = v0[58];
    v44 = v0[59];
    v46 = v0[57];
    v48 = v0[54];
    v47 = v0[55];
    v71 = v0[53];
    v66 = v0[56];
    v68 = v0[34];
    (*(v0[68] + 32))(v0[69], v0[66], v0[67]);
    (*(v43 + 104))(v42, enum case for SiriTimeMeasurement.LogDescription.siriSuggestionsDonation(_:), v44);
    (*(v46 + 16))(v45, v1, v66);
    mach_absolute_time();
    sub_12502C();
    *v47 = sub_123ABC();
    (*(v48 + 104))(v47, enum case for SiriSuggestions.Intent.inIntent(_:), v71);
    v49 = sub_E210(_swiftEmptyArrayStorage);
    v0[73] = v49;
    v50 = swift_task_alloc();
    v0[74] = v50;
    *v50 = v0;
    v50[1] = sub_25420;
    v51 = v0[69];
    v52 = v0[55];

    return sub_11C83C(v51, v52, v49);
  }

  else
  {
    v13 = sub_125AAC();
    v14 = sub_125DEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "Intent Handled dialog called but no timer was updated", v15, 2u);
    }

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    v17 = v0[69];
    v18 = v0[66];
    v19 = v0[65];
    v20 = v0[64];
    v21 = v0[61];
    v22 = v0[58];
    v23 = v0[55];
    v25 = v0[51];
    v24 = v0[52];
    v26 = v0[48];
    v63 = v0[45];
    v64 = v0[42];
    v65 = v0[41];
    v67 = v0[40];
    v69 = v0[38];
    v70 = v0[37];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_25420()
{
  v1 = *(*v0 + 592);
  v2 = *(*v0 + 584);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 432);
  v5 = *(*v0 + 424);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_255C8, 0, 0);
}

uint64_t sub_255C8()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[62];
  v6 = v0[63];
  sub_12500C();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[52];
  v10 = v0[48];
  v11 = v0[34];
  v12 = sub_123ABC();
  v0[75] = v12;
  sub_12361C();
  v0[76] = sub_5AE8(&qword_160810, &unk_127420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_126EB0;
  *(inited + 32) = v7;
  v14 = v7;
  sub_FF26C(inited, v10);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  v16 = [v12 targetTimer];
  if (v16)
  {
    v17 = v16;
    v18 = sub_113D6C(0, 0);
  }

  else
  {
    v18 = 0;
  }

  v0[77] = v18;
  v19 = v0[72];
  v0[78] = sub_113D6C(0, 0);
  sub_12573C();
  sub_12572C();
  v20 = v0[15];
  v21 = v0[16];
  sub_23B08(v0 + 12, v20);
  v22 = [v19 identifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_125B9C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v0[79] = v26;
  v27 = async function pointer to dispatch thunk of SessionManaging.sessionIDString(for:)[1];
  v28 = swift_task_alloc();
  v0[80] = v28;
  *v28 = v0;
  v28[1] = sub_25844;

  return dispatch thunk of SessionManaging.sessionIDString(for:)(v24, v26, v20, v21);
}

uint64_t sub_25844(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 640);
  v5 = *(*v2 + 632);
  v7 = *v2;
  *(v3 + 648) = a1;
  *(v3 + 656) = a2;

  return _swift_task_switch(sub_25994, 0, 0);
}

uint64_t sub_25994()
{
  v1 = *(v0 + 656);
  v118 = *(v0 + 560);
  v122 = *(v0 + 512);
  v3 = *(v0 + 480);
  v2 = *(v0 + 488);
  v4 = *(v0 + 464);
  v5 = *(v0 + 456);
  v110 = *(v0 + 472);
  v114 = *(v0 + 448);
  sub_5BB0((v0 + 96));
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v6 = *(v0 + 168);
  sub_23B08((v0 + 136), *(v0 + 160));
  v7 = sub_1235DC() & (v1 != 0);
  sub_5BB0((v0 + 136));
  (*(v3 + 104))(v2, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v110);
  (*(v5 + 16))(v4, v118, v114);
  mach_absolute_time();
  sub_12502C();
  sub_12523C();
  sub_12522C();

  v8 = *(v0 + 208);
  sub_23B08((v0 + 176), *(v0 + 200));
  v9 = sub_1235DC();
  sub_5BB0((v0 + 176));
  if ((v9 & 1) == 0 || v7)
  {
    v42 = *(v0 + 352);
    v41 = *(v0 + 360);
    v43 = *(v0 + 344);
    sub_1250AC();
    v44 = sub_12504C();
    (*(v42 + 8))(v41, v43);
    if (!v44)
    {
      v47 = *(v0 + 656);
      v48 = *(v0 + 560);

      v49 = sub_125AAC();
      v50 = sub_125DFC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_0, v49, v50, "[SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse] Using non-watchOS pattern", v51, 2u);
      }

      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v52 = *(v0 + 616);
      sub_5AE8(&qword_15F180, &unk_126E10);
      v53 = swift_allocObject();
      *(v0 + 728) = v53;
      *(v53 + 16) = xmmword_1270C0;
      *(v53 + 32) = 0x6954746567726174;
      *(v53 + 40) = 0xEB0000000072656DLL;
      v54 = 0;
      if (v52)
      {
        v54 = type metadata accessor for TimerTimer(0);
      }

      else
      {
        *(v53 + 56) = 0;
        *(v53 + 64) = 0;
      }

      *(v0 + 736) = v52;
      v99 = *(v0 + 624);
      *(v53 + 48) = v52;
      *(v53 + 72) = v54;
      strcpy((v53 + 80), "updatedTimer");
      *(v53 + 93) = 0;
      *(v53 + 94) = -5120;
      *(v53 + 120) = type metadata accessor for TimerTimer(0);
      *(v53 + 96) = v99;
      v100 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v101 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      swift_retain_n();
      swift_retain_n();
      v102 = swift_task_alloc();
      *(v0 + 744) = v102;
      *v102 = v0;
      v102[1] = sub_2700C;
      v37 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v101);
      v39 = 0x800000000012CBB0;
      v38 = 0xD000000000000019;
      v40 = v53;
      goto LABEL_35;
    }

    if (v7)
    {
      v45 = *(v0 + 336);
      v46 = sub_12503C();
      (*(*(v46 - 8) + 56))(v45, 1, 1, v46);
    }

    else
    {
      v67 = *(v0 + 576);
      v68 = *(v0 + 336);
      sub_5AE8(&qword_15F940, &unk_127410);
      v69 = *(sub_124F4C() - 8);
      v70 = *(v69 + 72);
      v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_126CB0;
      sub_1135FC(v72 + v71);
      sub_12521C();
      v73 = enum case for SiriTimePluginModel.timerMulti(_:);
      v74 = sub_12503C();
      v75 = *(v74 - 8);
      (*(v75 + 104))(v68, v73, v74);
      (*(v75 + 56))(v68, 0, 1, v74);
      if (!v1)
      {
        if (qword_15EEC0 != -1)
        {
          swift_once();
        }

        v76 = *(v0 + 624);

        v77 = swift_task_alloc();
        *(v0 + 696) = v77;
        *v77 = v0;
        v78 = sub_26980;
        goto LABEL_26;
      }
    }

    if (qword_15EEC0 != -1)
    {
      swift_once();
    }

    v76 = *(v0 + 624);

    v77 = swift_task_alloc();
    *(v0 + 664) = v77;
    *v77 = v0;
    v78 = sub_26604;
LABEL_26:
    v77[1] = v78;
    v79 = *(v0 + 616);

    return sub_24194(v79, v76);
  }

  v10 = *(v0 + 656);
  v11 = *(v0 + 560);

  v12 = sub_125AAC();
  v13 = sub_125DFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, "[SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse] Using watchOS pattern", v14, 2u);
  }

  v15 = *(v0 + 608);
  v16 = *(v0 + 576);

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_126EB0;
  *(v17 + 32) = v16;
  v18 = v16;
  v19 = sub_648C8(v17, 13);
  *(v0 + 784) = v19;

  if (v19)
  {
    v20 = objc_opt_self();
    *(v0 + 256) = 0;
    v21 = [v20 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:v0 + 256];
    v22 = *(v0 + 256);
    if (v21)
    {
      v23 = sub_122EFC();
      v25 = v24;

      *(v0 + 792) = v23;
      *(v0 + 800) = v25;
      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v26 = *(v0 + 616);
      v27 = *(v0 + 312);
      v28 = *(v0 + 320);
      v29 = *(v0 + 304);
      v123 = *(v0 + 624);
      *v28 = 0;
      *(v28 + 1) = 0;
      v30 = *(v27 + 24);
      v31 = sub_124E4C();
      v32 = *(*(v31 - 8) + 56);
      v32(&v28[v30], 1, 1, v31);
      sub_122EEC(0);
      sub_124E1C();
      v32(v29, 0, 1, v31);
      sub_22A1C(v29, &v28[v30]);
      *v28 = v26;
      *(v28 + 1) = v123;

      v33 = sub_7DB10();
      *(v0 + 808) = v33;
      v34 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v35 = async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:);
      v36 = swift_task_alloc();
      *(v0 + 816) = v36;
      *v36 = v0;
      v36[1] = sub_277AC;
      v37 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + v35);
      v38 = 0xD000000000000020;
      v39 = 0x800000000012CBD0;
      v40 = v33;
LABEL_35:

      return v37(v38, v39, v40);
    }

    v81 = *(v0 + 624);
    v103 = *(v0 + 616);
    v82 = *(v0 + 600);
    v83 = *(v0 + 576);
    v84 = *(v0 + 504);
    v105 = *(v0 + 496);
    v108 = *(v0 + 512);
    v85 = *(v0 + 400);
    v112 = *(v0 + 392);
    v116 = *(v0 + 416);
    v86 = *(v0 + 376);
    v120 = *(v0 + 368);
    v125 = *(v0 + 384);
    v87 = v22;
    sub_122E8C();

    swift_willThrow();

    (*(v84 + 8))(v108, v105);
    (*(v85 + 8))(v116, v112);
    (*(v86 + 8))(v125, v120);
  }

  else
  {
    v55 = *(v0 + 560);
    v56 = sub_125AAC();
    v57 = sub_125DFC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "[SetTimerAttribute.HandleIntentStrategy.makeIntentHandledResponse] Could not get timer action from timer.", v58, 2u);
    }

    v59 = *(v0 + 624);
    v60 = *(v0 + 616);
    v61 = *(v0 + 600);
    v62 = *(v0 + 576);
    v63 = *(v0 + 504);
    v104 = *(v0 + 496);
    v107 = *(v0 + 512);
    v64 = *(v0 + 400);
    v111 = *(v0 + 392);
    v115 = *(v0 + 416);
    v65 = *(v0 + 376);
    v119 = *(v0 + 368);
    v124 = *(v0 + 384);

    sub_5AE8(&unk_15F1A0, &unk_126ED0);
    sub_84CC();
    swift_allocError();
    *v66 = 1;
    swift_willThrow();

    (*(v63 + 8))(v107, v104);
    (*(v64 + 8))(v115, v111);
    (*(v65 + 8))(v124, v119);
  }

  v88 = *(v0 + 552);
  v89 = *(v0 + 528);
  v90 = *(v0 + 520);
  v91 = *(v0 + 512);
  v92 = *(v0 + 488);
  v93 = *(v0 + 464);
  v94 = *(v0 + 440);
  v95 = *(v0 + 408);
  v96 = *(v0 + 416);
  v97 = *(v0 + 384);
  v106 = *(v0 + 360);
  v109 = *(v0 + 336);
  v113 = *(v0 + 328);
  v117 = *(v0 + 320);
  v121 = *(v0 + 304);
  v126 = *(v0 + 296);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_26604(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 664);
  v6 = *v2;
  *(*v2 + 672) = v1;

  if (v1)
  {
    v7 = v4[82];
    v8 = v4[78];

    return _swift_task_switch(sub_28044, 0, 0);
  }

  else
  {
    v9 = v4[78];

    v4[85] = a1;
    v10 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
    v11 = swift_task_alloc();
    v4[86] = v11;
    *v11 = v6;
    v11[1] = sub_2681C;
    v12 = v4[82];
    v13 = v4[81];
    v14 = v4[64];
    v15 = v4[52];
    v16 = v4[48];
    v17 = v4[33];

    return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v17, v15, v16, v14, v13, v12, 0, 0);
  }
}

uint64_t sub_2681C()
{
  v1 = *(*v0 + 688);
  v2 = *(*v0 + 680);
  v3 = *(*v0 + 656);
  v5 = *v0;

  return _swift_task_switch(sub_2AFF4, 0, 0);
}

uint64_t sub_26980(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 696);
  v6 = *v2;
  *(v4 + 704) = a1;
  *(v4 + 712) = v1;

  v7 = *(v3 + 624);

  if (v1)
  {
    v8 = sub_28254;
  }

  else
  {
    v8 = sub_26AEC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_26AEC()
{
  v1 = *(v0 + 328);
  sub_2AEC8(*(v0 + 336), v1);
  v2 = sub_12503C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 328);
  if (v4 == 1)
  {
    sub_5CA8(*(v0 + 328), &qword_15F9E0, &unk_127710);
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
  }

  else
  {
    *(v0 + 240) = v2;
    *(v0 + 248) = sub_2AF38();
    v6 = sub_23B4C((v0 + 216));
    (*(v3 + 32))(v6, v5, v2);
  }

  v7 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)[1];
  v8 = swift_task_alloc();
  *(v0 + 720) = v8;
  *v8 = v0;
  v8[1] = sub_26CAC;
  v9 = *(v0 + 704);
  v10 = *(v0 + 512);
  v11 = *(v0 + 416);
  v12 = *(v0 + 384);
  v13 = *(v0 + 264);

  return DialogExecutionResult.generateOutput(dialogPhase:context:resultModel:measure:sessionID:responseViewId:shouldCoordinateWithSpeech:)(v13, v11, v12, v0 + 216, v10, 0, 0, 0);
}

uint64_t sub_26CAC()
{
  v1 = *v0;
  v2 = *(*v0 + 720);
  v3 = *(*v0 + 704);
  v5 = *v0;

  sub_5CA8(v1 + 216, &qword_15F938, &unk_127720);

  return _swift_task_switch(sub_26E0C, 0, 0);
}

uint64_t sub_26E0C()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 576);
  v4 = *(v0 + 336);

  sub_5CA8(v4, &qword_15F9E0, &unk_127710);
  v5 = *(v0 + 552);
  v6 = *(v0 + 528);
  v16 = *(v0 + 520);
  v17 = *(v0 + 488);
  v18 = *(v0 + 464);
  v19 = *(v0 + 440);
  v7 = *(v0 + 416);
  v8 = *(v0 + 392);
  v9 = *(v0 + 400);
  v10 = *(v0 + 376);
  v11 = *(v0 + 384);
  v12 = *(v0 + 368);
  v20 = *(v0 + 408);
  v21 = *(v0 + 360);
  v22 = *(v0 + 336);
  v23 = *(v0 + 328);
  v13 = *(v0 + 320);
  v24 = *(v0 + 304);
  v25 = *(v0 + 296);
  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  (*(v9 + 8))(v7, v8);
  (*(v10 + 8))(v11, v12);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2700C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 744);
  v6 = *v2;
  *(v4 + 752) = a1;
  *(v4 + 760) = v1;

  v7 = *(v3 + 728);

  if (v1)
  {
    v8 = sub_273CC;
  }

  else
  {
    v8 = sub_27178;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_27178()
{
  v1 = v0;
  v2 = v0[92];
  v3 = v0[78];

  v4 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v5 = swift_task_alloc();
  v1[96] = v5;
  *v5 = v1;
  v5[1] = sub_2726C;
  v6 = v1[94];
  v7 = v1[64];
  v8 = v1[52];
  v9 = v1[48];
  v10 = v1[33];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v10, v8, v9, v7, 0);
}

uint64_t sub_2726C()
{
  v2 = *v1;
  v3 = *(*v1 + 768);
  v4 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v5 = sub_28464;
  }

  else
  {
    v5 = sub_275C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_273CC()
{
  v1 = v0[92];
  v2 = v0[78];
  v3 = v0[75];
  v4 = v0[72];
  v6 = v0[63];
  v5 = v0[64];
  v7 = v0[62];
  v8 = v0[49];
  v9 = v0[50];
  v10 = v0[47];
  v31 = v0[48];
  v27 = v0[52];
  v29 = v0[46];

  (*(v6 + 8))(v5, v7);
  (*(v9 + 8))(v27, v8);
  (*(v10 + 8))(v31, v29);
  v11 = v0[69];
  v12 = v0[66];
  v13 = v0[65];
  v14 = v0[64];
  v15 = v0[61];
  v16 = v0[58];
  v17 = v0[55];
  v19 = v0[51];
  v18 = v0[52];
  v20 = v0[48];
  v23 = v0[95];
  v24 = v0[45];
  v25 = v0[42];
  v26 = v0[41];
  v28 = v0[40];
  v30 = v0[38];
  v32 = v0[37];

  v21 = v0[1];

  return v21();
}

uint64_t sub_275C8()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 624);
  v3 = *(v0 + 576);

  v4 = *(v0 + 552);
  v5 = *(v0 + 528);
  v15 = *(v0 + 520);
  v16 = *(v0 + 488);
  v17 = *(v0 + 464);
  v18 = *(v0 + 440);
  v6 = *(v0 + 416);
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  v9 = *(v0 + 376);
  v10 = *(v0 + 384);
  v11 = *(v0 + 368);
  v19 = *(v0 + 408);
  v20 = *(v0 + 360);
  v21 = *(v0 + 336);
  v22 = *(v0 + 328);
  v12 = *(v0 + 320);
  v23 = *(v0 + 304);
  v24 = *(v0 + 296);
  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  (*(v8 + 8))(v6, v7);
  (*(v9 + 8))(v10, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_277AC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 816);
  v6 = *v2;
  *(v4 + 824) = a1;
  *(v4 + 832) = v1;

  v7 = *(v3 + 808);

  if (v1)
  {
    v8 = sub_27C24;
  }

  else
  {
    v8 = sub_27918;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_27918()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v5 = v0[48];
  v6 = v0[37];
  sub_2AF90(v0[40]);
  (*(v4 + 16))(v1, v2, v3);
  *(swift_task_alloc() + 16) = v5;
  sub_123B0C();

  v7 = async function pointer to PatternExecutionResult.generatePatternOutput(manifest:measure:)[1];
  v8 = swift_task_alloc();
  v0[105] = v8;
  *v8 = v0;
  v8[1] = sub_27A70;
  v9 = v0[103];
  v10 = v0[64];
  v11 = v0[37];
  v12 = v0[33];

  return PatternExecutionResult.generatePatternOutput(manifest:measure:)(v12, v11, v10);
}

uint64_t sub_27A70()
{
  v2 = *v1;
  v3 = *(*v1 + 840);
  v4 = *v1;
  *(*v1 + 848) = v0;

  v5 = v2[103];
  (*(v2[36] + 8))(v2[37], v2[35]);

  if (v0)
  {
    v6 = sub_2865C;
  }

  else
  {
    v6 = sub_27E44;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_27C24()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[98];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[75];
  v7 = v0[63];
  v22 = v0[72];
  v24 = v0[62];
  v8 = v0[50];
  v26 = v0[64];
  v28 = v0[49];
  v9 = v0[47];
  v34 = v0[48];
  v30 = v0[52];
  v32 = v0[46];
  sub_2AF90(v0[40]);

  sub_E498(v2, v1);

  (*(v7 + 8))(v26, v24);
  (*(v8 + 8))(v30, v28);
  (*(v9 + 8))(v34, v32);
  v10 = v0[69];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v14 = v0[61];
  v15 = v0[58];
  v16 = v0[55];
  v18 = v0[51];
  v17 = v0[52];
  v19 = v0[48];
  v23 = v0[104];
  v25 = v0[45];
  v27 = v0[42];
  v29 = v0[41];
  v31 = v0[40];
  v33 = v0[38];
  v35 = v0[37];

  v20 = v0[1];

  return v20();
}

uint64_t sub_27E44()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 576);

  sub_E498(v2, v1);

  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  v18 = *(v0 + 520);
  v19 = *(v0 + 488);
  v20 = *(v0 + 464);
  v21 = *(v0 + 440);
  v9 = *(v0 + 416);
  v10 = *(v0 + 392);
  v11 = *(v0 + 400);
  v12 = *(v0 + 376);
  v13 = *(v0 + 384);
  v14 = *(v0 + 368);
  v22 = *(v0 + 408);
  v23 = *(v0 + 360);
  v24 = *(v0 + 336);
  v25 = *(v0 + 328);
  v15 = *(v0 + 320);
  v26 = *(v0 + 304);
  v27 = *(v0 + 296);
  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));
  (*(v11 + 8))(v9, v10);
  (*(v12 + 8))(v13, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_28044()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 576);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 496);
  v7 = *(v0 + 400);
  v25 = *(v0 + 392);
  v27 = *(v0 + 416);
  v8 = *(v0 + 376);
  v29 = *(v0 + 368);
  v31 = *(v0 + 384);
  v9 = *(v0 + 336);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v5 + 8))(v4, v6);
  (*(v7 + 8))(v27, v25);
  (*(v8 + 8))(v31, v29);
  v10 = *(v0 + 552);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 488);
  v15 = *(v0 + 464);
  v16 = *(v0 + 440);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v19 = *(v0 + 384);
  v22 = *(v0 + 672);
  v23 = *(v0 + 360);
  v24 = *(v0 + 336);
  v26 = *(v0 + 328);
  v28 = *(v0 + 320);
  v30 = *(v0 + 304);
  v32 = *(v0 + 296);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_28254()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 576);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 496);
  v7 = *(v0 + 400);
  v25 = *(v0 + 392);
  v27 = *(v0 + 416);
  v8 = *(v0 + 376);
  v29 = *(v0 + 368);
  v31 = *(v0 + 384);
  v9 = *(v0 + 336);

  sub_5CA8(v9, &qword_15F9E0, &unk_127710);
  (*(v5 + 8))(v4, v6);
  (*(v7 + 8))(v27, v25);
  (*(v8 + 8))(v31, v29);
  v10 = *(v0 + 552);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 488);
  v15 = *(v0 + 464);
  v16 = *(v0 + 440);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v19 = *(v0 + 384);
  v22 = *(v0 + 712);
  v23 = *(v0 + 360);
  v24 = *(v0 + 336);
  v26 = *(v0 + 328);
  v28 = *(v0 + 320);
  v30 = *(v0 + 304);
  v32 = *(v0 + 296);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_28464()
{
  v1 = *(v0 + 736);
  v2 = *(v0 + 624);
  v3 = *(v0 + 576);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 496);
  v7 = *(v0 + 392);
  v8 = *(v0 + 400);
  v9 = *(v0 + 376);
  v30 = *(v0 + 384);
  v26 = *(v0 + 416);
  v28 = *(v0 + 368);

  (*(v5 + 8))(v4, v6);
  (*(v8 + 8))(v26, v7);
  (*(v9 + 8))(v30, v28);
  v10 = *(v0 + 552);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 488);
  v15 = *(v0 + 464);
  v16 = *(v0 + 440);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v19 = *(v0 + 384);
  v22 = *(v0 + 776);
  v23 = *(v0 + 360);
  v24 = *(v0 + 336);
  v25 = *(v0 + 328);
  v27 = *(v0 + 320);
  v29 = *(v0 + 304);
  v31 = *(v0 + 296);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2865C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 792);
  v3 = *(v0 + 784);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 576);
  v7 = *(v0 + 504);
  v23 = *(v0 + 496);
  v25 = *(v0 + 512);
  v8 = *(v0 + 400);
  v27 = *(v0 + 392);
  v29 = *(v0 + 416);
  v9 = *(v0 + 376);
  v31 = *(v0 + 368);
  v33 = *(v0 + 384);

  sub_E498(v2, v1);

  (*(v7 + 8))(v25, v23);
  (*(v8 + 8))(v29, v27);
  (*(v9 + 8))(v33, v31);
  v10 = *(v0 + 552);
  v11 = *(v0 + 528);
  v12 = *(v0 + 520);
  v13 = *(v0 + 512);
  v14 = *(v0 + 488);
  v15 = *(v0 + 464);
  v16 = *(v0 + 440);
  v18 = *(v0 + 408);
  v17 = *(v0 + 416);
  v19 = *(v0 + 384);
  v22 = *(v0 + 848);
  v24 = *(v0 + 360);
  v26 = *(v0 + 336);
  v28 = *(v0 + 328);
  v30 = *(v0 + 320);
  v32 = *(v0 + 304);
  v34 = *(v0 + 296);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2886C(uint64_t a1, uint64_t a2)
{
  v3 = sub_5AE8(&unk_162190, &unk_128500);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_12392C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_123B1C();
}

uint64_t sub_2896C(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = sub_125ABC();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = sub_124FFC();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v9 = sub_12501C();
  v2[29] = v9;
  v10 = *(v9 - 8);
  v2[30] = v10;
  v11 = *(v10 + 64) + 15;
  v2[31] = swift_task_alloc();
  v12 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v13 = sub_12392C();
  v2[33] = v13;
  v14 = *(v13 - 8);
  v2[34] = v14;
  v15 = *(v14 + 64) + 15;
  v2[35] = swift_task_alloc();
  v16 = sub_12368C();
  v2[36] = v16;
  v17 = *(v16 - 8);
  v2[37] = v17;
  v18 = *(v17 + 64) + 15;
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return _swift_task_switch(sub_28BD4, 0, 0);
}

uint64_t sub_28BD4()
{
  if (qword_15EDE8 != -1)
  {
    swift_once();
  }

  v48 = sub_5B30(v0[23], qword_15F9B8);
  v1 = sub_125AAC();
  v2 = sub_125DFC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "SetTimerAttribute.HandleIntentStrategy.makeFailureHandlingIntentResponse() called", v3, 2u);
  }

  v4 = v0[22];

  sub_5AE8(&qword_15F9D8, &qword_1276F8);
  v5 = sub_123ABC();
  v0[40] = v5;
  v45 = v5;
  v6 = [v5 toDuration];
  if (v6)
  {
    v7 = v6;
    [v6 doubleValue];
    v9 = v8;

    v46 = v9 > 86400.0;
  }

  else
  {
    v46 = 0;
  }

  v10 = v0[39];
  v11 = v0[35];
  v13 = v0[31];
  v12 = v0[32];
  v14 = v0[27];
  v15 = v0[28];
  v16 = v0[25];
  v17 = v0[26];
  v18 = v0[23];
  v19 = v0[24];
  v47 = v0[22];
  sub_12364C();
  sub_12391C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[41] = sub_124DBC();
  (*(v14 + 104))(v15, enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v17);
  (*(v19 + 16))(v16, v48, v18);
  mach_absolute_time();
  sub_12502C();
  v20 = sub_123A9C();
  v21 = sub_12551C();

  if (v21 <= 99)
  {
    if (v21 < 7)
    {
      v22 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v49 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v23 = swift_task_alloc();
      v0[54] = v23;
      *v23 = v0;
      v24 = sub_2A0B4;
LABEL_11:
      v23[1] = v24;
      v25 = 0xEF726F7272652365;
      v26 = 0x73614272656D6974;
LABEL_12:

      return v49(v26, v25, _swiftEmptyArrayStorage);
    }

LABEL_21:
    v0[20] = v21;

    return sub_1261EC();
  }

  if (v21 == 100)
  {
    v31 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
    v49 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
    v32 = swift_task_alloc();
    v0[45] = v32;
    *v32 = v0;
    v32[1] = sub_29474;
    v25 = 0x800000000012C5A0;
    v26 = 0xD000000000000012;
    goto LABEL_12;
  }

  if (v21 == 102)
  {
    if (v46)
    {
      v33 = v0[32];
      type metadata accessor for CreateTimerCATPatternsExecutor(0);
      sub_124ECC();
      v0[47] = sub_124DBC();
      v34 = "deleteTimer#handledMulti";
      v35 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v49 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v36 = swift_task_alloc();
      v0[48] = v36;
      *v36 = v0;
      v36[1] = sub_29780;
      v26 = 0xD000000000000020;
    }

    else
    {
      v37 = [v45 toLabel];
      if (!v37)
      {
        v44 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
        v49 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
        v23 = swift_task_alloc();
        v0[52] = v23;
        *v23 = v0;
        v24 = sub_29DA8;
        goto LABEL_11;
      }

      v38 = v0[38];
      v39 = v0[39];
      v40 = v0[36];
      v41 = v0[37];

      sub_12361C();
      (*(v41 + 8))(v39, v40);
      (*(v41 + 32))(v39, v38, v40);
      if (qword_15EEC8 != -1)
      {
        swift_once();
      }

      v34 = "esponse(rchRecord:)";
      v42 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
      v49 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
      v43 = swift_task_alloc();
      v0[50] = v43;
      *v43 = v0;
      v43[1] = sub_29A9C;
      v26 = 0xD00000000000001ELL;
    }

    v25 = v34 | 0x8000000000000000;
    goto LABEL_12;
  }

  if (v21 != 101)
  {
    goto LABEL_21;
  }

  v28 = v0[22];
  v29 = swift_task_alloc();
  v0[42] = v29;
  *(v29 + 16) = v28;
  v30 = swift_task_alloc();
  v0[43] = v30;
  *v30 = v0;
  v30[1] = sub_2927C;

  return sub_104D80(sub_2AEC0, v29);
}

uint64_t sub_2927C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[43];
  v6 = v3[42];
  v9 = *v2;
  v4[44] = v1;

  if (v1)
  {
    v7 = sub_2A62C;
  }

  else
  {
    v7 = sub_293B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_293B4()
{
  v1 = v0[3];
  v0[56] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_2A3C0;
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_29474(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[5] = v2;
  v4[6] = a1;
  v4[7] = v1;
  v5 = v3[45];
  v8 = *v2;
  v4[46] = v1;

  if (v1)
  {
    v6 = sub_29650;
  }

  else
  {
    v6 = sub_29590;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_29590()
{
  v1 = v0[6];
  v0[56] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_2A3C0;
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_29650()
{
  v1 = *(v0 + 328);

  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 368);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_29780(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[48];
  v9 = *v2;
  v4[49] = v1;

  if (v1)
  {
    v6 = sub_29964;
  }

  else
  {
    v7 = v4[47];

    v6 = sub_298A4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_298A4()
{
  v1 = v0[9];
  v0[56] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_2A3C0;
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_29964()
{
  v1 = v0[47];
  v2 = v0[40];
  v3 = v0[41];

  v5 = v0[38];
  v4 = v0[39];
  v7 = v0[36];
  v6 = v0[37];
  v9 = v0[34];
  v8 = v0[35];
  v11 = v0[32];
  v10 = v0[33];
  v14 = v0[28];
  v15 = v0[25];
  v16 = v0[49];
  (*(v0[30] + 8))(v0[31], v0[29]);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v4, v7);

  v12 = v0[1];

  return v12();
}

uint64_t sub_29A9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[50];
  v8 = *v2;
  v4[51] = v1;

  if (v1)
  {
    v6 = sub_29C78;
  }

  else
  {
    v6 = sub_29BB8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_29BB8()
{
  v1 = v0[12];
  v0[56] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_2A3C0;
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_29C78()
{
  v1 = *(v0 + 328);

  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 408);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_29DA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[14] = v2;
  v4[15] = a1;
  v4[16] = v1;
  v5 = v3[52];
  v8 = *v2;
  v4[53] = v1;

  if (v1)
  {
    v6 = sub_29F84;
  }

  else
  {
    v6 = sub_29EC4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_29EC4()
{
  v1 = v0[15];
  v0[56] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_2A3C0;
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_29F84()
{
  v1 = *(v0 + 328);

  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 424);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2A0B4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[17] = v2;
  v4[18] = a1;
  v4[19] = v1;
  v5 = v3[54];
  v8 = *v2;
  v4[55] = v1;

  if (v1)
  {
    v6 = sub_2A290;
  }

  else
  {
    v6 = sub_2A1D0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_2A1D0()
{
  v1 = v0[18];
  v0[56] = v1;
  v2 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
  v1;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_2A3C0;
  v4 = v0[39];
  v5 = v0[35];
  v6 = v0[31];
  v7 = v0[21];

  return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v7, v4, v5, v6, 0);
}

uint64_t sub_2A290()
{
  v1 = *(v0 + 328);

  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 440);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2A3C0()
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 448);
  v6 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v4 = sub_2A75C;
  }

  else
  {
    v4 = sub_2A4EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2A4EC()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 296);
  v13 = *(v0 + 288);
  v14 = *(v0 + 304);
  v5 = *(v0 + 272);
  v6 = *(v0 + 280);
  v12 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 232);
  v15 = *(v0 + 256);
  v16 = *(v0 + 224);
  v17 = *(v0 + 200);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v6, v12);
  (*(v4 + 8))(v3, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2A62C()
{
  v1 = *(v0 + 328);

  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 256);
  v8 = *(v0 + 264);
  v12 = *(v0 + 224);
  v13 = *(v0 + 200);
  v14 = *(v0 + 352);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v2, v5);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2A75C()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 328);

  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v8 = *(v0 + 272);
  v7 = *(v0 + 280);
  v10 = *(v0 + 256);
  v9 = *(v0 + 264);
  v13 = *(v0 + 224);
  v14 = *(v0 + 200);
  v15 = *(v0 + 464);
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v3, v6);

  v11 = *(v0 + 8);

  return v11();
}

void sub_2A894(uint64_t a1)
{
  sub_5AE8(&qword_15F9D8, &qword_1276F8);
  v4 = sub_123ABC();
  sub_12550C();
  sub_1258DC();
  v3 = v2;

  *a1 = v3;
  *(a1 + 8) = 0;
}

uint64_t sub_2A918(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_2A9C0;

  return sub_24818(a1, a2);
}

uint64_t sub_2A9C0()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_2AAF4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2AAF4()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_2ABC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_2AC68;

  return sub_2896C(a1, a2);
}

uint64_t sub_2AC68()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_2AD9C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2AD9C()
{
  v0[3] = v0[5];
  sub_5AE8(&qword_15F670, &qword_127080);
  sub_1251BC();
  v1 = v0[2];
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

unint64_t sub_2AE6C()
{
  result = qword_15F9D0;
  if (!qword_15F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F9D0);
  }

  return result;
}

uint64_t sub_2AEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15F9E0, &unk_127710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2AF38()
{
  result = qword_15F930;
  if (!qword_15F930)
  {
    sub_12503C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15F930);
  }

  return result;
}

uint64_t sub_2AF90(uint64_t a1)
{
  v2 = type metadata accessor for SetTimerAttributeHandledOnWatchParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2AFF4()
{

  return sub_26E0C();
}

uint64_t type metadata accessor for ResumeTimerCATsSimple()
{
  result = qword_15F9E8;
  if (!qword_15F9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B0F4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_2B114, 0, 0);
}

uint64_t sub_2B114()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  *(v2 + 32) = 0x72656D6974;
  *(v2 + 40) = 0xE500000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for TimerTimer(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v4 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v8 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_23FD8;
  v6 = v0[3];

  return v8(0xD000000000000021, 0x800000000012CC40, v2);
}

uint64_t sub_2B258(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_2B278, 0, 0);
}

uint64_t sub_2B278()
{
  v1 = v0[2];
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "resumedTimers");
  *(v2 + 46) = -4864;
  *(v2 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2B3C8;
  v5 = v0[3];

  return v7(0xD000000000000021, 0x800000000012CC70, v2);
}

uint64_t sub_2B3C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2B7C0, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_2B520(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_606C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_2B6A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_124EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_124E6C();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t type metadata accessor for TimerBaseCATs_Async()
{
  result = qword_15FA38;
  if (!qword_15FA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B850(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  v5 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_2B8F4, 0, 0);
}

uint64_t sub_2B8F4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v4 = swift_allocObject();
  *(v0 + 48) = v4;
  *(v4 + 16) = xmmword_1270C0;
  *(v4 + 32) = 0x6C6174736E497369;
  *(v4 + 40) = 0xE90000000000006CLL;
  *(v4 + 48) = v3;
  *(v4 + 72) = &type metadata for Bool;
  *(v4 + 80) = 0x65707954707061;
  *(v4 + 88) = 0xE700000000000000;
  sub_E344(v2, v1, &unk_15F170, &unk_126E00);
  v5 = sub_124E4C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v0 + 40);
  if (v7 == 1)
  {
    sub_5CA8(*(v0 + 40), &unk_15F170, &unk_126E00);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v5;
    v9 = sub_23B4C((v4 + 96));
    (*(v6 + 32))(v9, v8, v5);
  }

  v10 = *(&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + 1);
  v15 = (&async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapper.execute(catId:parameters:));
  v11 = swift_task_alloc();
  *(v0 + 56) = v11;
  *v11 = v0;
  v11[1] = sub_2BB10;
  v12 = *(v0 + 32);
  v13 = *(v0 + 16);

  return v15(v13, 0xD000000000000017, 0x800000000012CCE0, v4);
}

uint64_t sub_2BB10()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_2BC58, 0, 0);
  }

  else
  {
    v5 = v3[5];
    v4 = v3[6];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2BC58()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_2BCC4(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_E344(a1, v13, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v16;
}

id *sub_2BE74(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_1260FC())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    sub_12606C();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_125FFC();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      sub_2EAE8(v6, a1);

      sub_12603C();
      v8 = _swiftEmptyArrayStorage[2];
      sub_12607C();
      sub_12608C();
      sub_12604C();
      if (v5 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

uint64_t sub_2BFBC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15FA88);
  sub_5B30(v0, qword_15FA88);
  return sub_12578C();
}

Swift::Int sub_2C01C()
{
  v1 = *v0;
  sub_12626C();
  sub_12627C(v1);
  return sub_12628C();
}

Swift::Int sub_2C090()
{
  v1 = *v0;
  sub_12626C();
  sub_12627C(v1);
  return sub_12628C();
}

uint64_t sub_2C0D4(__int128 *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = _swiftEmptyArrayStorage;
  *(v1 + 80) = 0;
  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v4 = sub_125ABC();
  sub_5B30(v4, qword_15FA88);
  v5 = sub_125AAC();
  v6 = sub_125DFC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "RemoteTimerContinuationFlow.init", v7, 2u);
  }

  sub_2F4EC(a1, v2 + 24);
  return v2;
}

uint64_t sub_2C1E0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_12379C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v71 - v11;
  __chkstk_darwin(v10);
  v14 = &v71 - v13;
  v15 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v78 = &v71 - v17;
  v18 = sub_123D3C();
  v76 = *(v18 - 8);
  v77 = v18;
  v19 = *(v76 + 64);
  __chkstk_darwin(v18);
  v75 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v21 = sub_125ABC();
  sub_5B30(v21, qword_15FA88);

  v22 = sub_125AAC();
  v23 = sub_125DFC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v72 = a1;
    v73 = v9;
    v25 = v24;
    v71 = swift_slowAlloc();
    v80 = v71;
    *v25 = 136315138;
    v79 = *(v2 + 16);
    v26 = sub_125BAC();
    v74 = v12;
    v28 = v14;
    v29 = v5;
    v30 = v4;
    v31 = v2;
    v32 = sub_8530(v26, v27, &v80);
    v12 = v74;

    *(v25 + 4) = v32;
    v2 = v31;
    v4 = v30;
    v5 = v29;
    v14 = v28;
    _os_log_impl(&dword_0, v22, v23, "RemoteTimerContinuationFlow.on(input:) state %s", v25, 0xCu);
    sub_5BB0(v71);

    a1 = v72;
    v9 = v73;
  }

  v33 = *(v2 + 16);
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      v51 = sub_125AAC();
      v52 = sub_125DFC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "RemoteTimerContinuationFlow return false for waitingOnPromptResponse";
LABEL_23:
        _os_log_impl(&dword_0, v51, v52, v54, v53, 2u);
      }
    }

    else
    {
      if (v33 == 3)
      {
        sub_9D860(a1, 0, v14);
        (*(v5 + 16))(v12, v14, v4);
        sub_12377C();
        sub_2F560();
        v34 = sub_125B7C();
        v35 = v12;
        v36 = *(v5 + 8);
        v36(v9, v4);
        if (v34)
        {
          v36(v35, v4);
          v37 = sub_125AAC();
          v38 = sub_125DFC();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_0, v37, v38, "RemoteTimerContinuationFlow: Confirming to report back remote timers", v39, 2u);
          }

          swift_beginAccess();
          v40 = *(v2 + 64);
          if (v40)
          {
            swift_endAccess();
            sub_8BAC();
            v41 = v40;
            v42 = 1;
            isa = sub_125EEC(1).super.super.isa;
            [v41 setIncludeRemoteTimers:isa];

            v36(v14, v4);
            return v42;
          }

          v36(v14, v4);
          goto LABEL_40;
        }

        sub_12376C();
        v59 = v36;
        v60 = sub_125B7C();
        v59(v9, v4);
        v61 = v35;
        v62 = v59;
        v59(v61, v4);
        v63 = sub_125AAC();
        v64 = sub_125DFC();
        v65 = os_log_type_enabled(v63, v64);
        if (v60)
        {
          if (v65)
          {
            v66 = swift_slowAlloc();
            *v66 = 0;
            _os_log_impl(&dword_0, v63, v64, "RemoteTimerContinuationFlow: Confirming to stop here and only have read out first response", v66, 2u);
          }

          swift_beginAccess();
          v67 = *(v2 + 64);
          if (v67)
          {
            swift_endAccess();
            sub_8BAC();
            v68 = v67;
            v69 = sub_125EEC(0).super.super.isa;
            [v68 setIncludeRemoteTimers:v69];

            v62(v14, v4);
            return 1;
          }

          v62(v14, v4);
LABEL_40:
          swift_endAccess();
          return 1;
        }

        if (v65)
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_0, v63, v64, "RemoteTimerContinuationFlow: Default case return false for reportRemote", v70, 2u);
        }

        v62(v14, v4);
        return 0;
      }

      v51 = sub_125AAC();
      v52 = sub_125DFC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        v54 = "RemoteTimerContinuationFlow: return false for complete";
        goto LABEL_23;
      }
    }

LABEL_24:

    return 0;
  }

  if (*(v2 + 16))
  {
    v51 = sub_125AAC();
    v52 = sub_125DFC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "RemoteTimerContinuationFlow return false for shouldPromptRemote";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v44 = v75;
  sub_123CCC();
  v45 = sub_12532C();
  v46 = v78;
  (*(*(v45 - 8) + 56))(v78, 1, 1, v45);
  v47 = sub_A588C(v44, v46);
  sub_CCF4(v46);
  (*(v76 + 8))(v44, v77);
  if (v47 && (sub_12568C(), (v48 = swift_dynamicCastClass()) != 0))
  {
    v49 = v48;
    v42 = 1;
    swift_beginAccess();
    v50 = *(v2 + 64);
    *(v2 + 64) = v49;
  }

  else
  {
    v56 = sub_125AAC();
    v57 = sub_125DEC();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v56, v57, "RemoteTimerContinuationFlow didn't receive valid SearchTimerIntent parse", v58, 2u);
    }

    v42 = 0;
    *(v2 + 16) = 4;
  }

  return v42;
}

uint64_t sub_2CAF8(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  v3 = sub_12368C();
  v2[43] = v3;
  v4 = *(v3 - 8);
  v2[44] = v4;
  v5 = *(v4 + 64) + 15;
  v2[45] = swift_task_alloc();
  v6 = *(*(sub_124EDC() - 8) + 64) + 15;
  v2[46] = swift_task_alloc();
  v7 = sub_125ABC();
  v2[47] = v7;
  v8 = *(v7 - 8);
  v2[48] = v8;
  v9 = *(v8 + 64) + 15;
  v2[49] = swift_task_alloc();
  v10 = sub_124FFC();
  v2[50] = v10;
  v11 = *(v10 - 8);
  v2[51] = v11;
  v12 = *(v11 + 64) + 15;
  v2[52] = swift_task_alloc();
  v13 = sub_12501C();
  v2[53] = v13;
  v14 = *(v13 - 8);
  v2[54] = v14;
  v15 = *(v14 + 64) + 15;
  v2[55] = swift_task_alloc();
  v16 = sub_12392C();
  v2[56] = v16;
  v17 = *(v16 - 8);
  v2[57] = v17;
  v18 = *(v17 + 64) + 15;
  v2[58] = swift_task_alloc();
  v19 = sub_5AE8(&qword_15FB68, &unk_1278E0);
  v2[59] = v19;
  v20 = *(v19 - 8);
  v2[60] = v20;
  v21 = *(v20 + 64) + 15;
  v2[61] = swift_task_alloc();

  return _swift_task_switch(sub_2CDBC, 0, 0);
}

uint64_t sub_2CDBC()
{
  v81 = v0;
  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v2 = sub_5B30(*(v0 + 376), qword_15FA88);
  *(v0 + 496) = v2;

  v3 = sub_125AAC();
  v4 = sub_125DFC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 336);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v80 = v7;
    *v6 = 136315138;
    *(v0 + 560) = *(v5 + 16);
    v8 = sub_125BAC();
    v10 = sub_8530(v8, v9, &v80);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_0, v3, v4, "RemoteTimerContinuationFlow.execute() state %s", v6, 0xCu);
    sub_5BB0(v7);
  }

  v11 = *(v0 + 336);
  swift_beginAccess();
  v12 = *(v11 + 64);
  *(v0 + 504) = v12;
  if (!v12)
  {
    v33 = sub_125AAC();
    v34 = sub_125DEC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "Unable to parse intent", v35, 2u);
    }

    v36 = *(v0 + 328);

    sub_12383C();
    goto LABEL_40;
  }

  v13 = *(v0 + 336);
  v14 = *(v13 + 16);
  v15 = v12;
  v16 = sub_125AAC();
  v17 = sub_125DFC();
  v18 = os_log_type_enabled(v16, v17);
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (v18)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v16, v17, "RemoteTimerContinuationFlow: in waitingOnPromptResponse", v48, 2u);
      }

      v49 = *(v0 + 328);

      *(v13 + 16) = 3;
      sub_1237FC();
    }

    else
    {
      if (v14 == 3)
      {
        if (v18)
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_0, v16, v17, "RemoteTimerContinuationFlow: in needsPromptRemoteResponse", v19, 2u);
        }

        v20 = [v15 includeRemoteTimers];
        sub_8BAC();
        v21.super.super.isa = sub_125EEC(1).super.super.isa;
        isa = v21.super.super.isa;
        if (v20)
        {
          v23 = sub_125F0C();

          if (v23)
          {
            v24 = *(v0 + 488);
            v25 = *(v0 + 336);
            *(v13 + 16) = 3;
            sub_2F488(v25 + 24, v0 + 16);
            sub_12524C();
            sub_12523C();
            sub_12522C();

            v26 = type metadata accessor for TimerFlowProvider();
            v27 = swift_allocObject();
            sub_2F4EC((v0 + 176), v27 + 16);
            *(v0 + 56) = v27;
            *(v0 + 80) = v26;
            *(v0 + 88) = &off_158B00;
            v28 = *sub_23B08((v0 + 56), v26);
            sub_635D0(*(v25 + 80), v24);
            if (qword_15EEA8 != -1)
            {
              swift_once();
            }

            v30 = *(v0 + 480);
            v29 = *(v0 + 488);
            v31 = *(v0 + 472);
            v32 = *(v0 + 328);
            sub_1237BC();
            sub_12382C();

            (*(v30 + 8))(v29, v31);
            sub_2F504(v0 + 16);
            goto LABEL_40;
          }
        }

        else
        {
        }

        v66 = *(v0 + 328);
        *(v13 + 16) = 4;
      }

      else
      {
        if (v18)
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_0, v16, v17, "RemoteTimerContinuationFlow: complete", v50, 2u);
        }

        v51 = *(v0 + 328);
      }

      sub_12383C();
    }

LABEL_40:
    v67 = *(v0 + 488);
    v68 = *(v0 + 464);
    v69 = *(v0 + 440);
    v70 = *(v0 + 416);
    v71 = *(v0 + 392);
    v73 = *(v0 + 360);
    v72 = *(v0 + 368);

    v74 = *(v0 + 8);

    return v74();
  }

  if (!v14)
  {
    if (v18)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v16, v17, "RemoteTimerContinuationFlow: in begin", v37, 2u);
    }

    v38 = *(v0 + 488);
    v39 = *(v0 + 336);

    sub_2F488(v39 + 24, v0 + 96);
    sub_12524C();
    sub_12523C();
    sub_12522C();

    v40 = type metadata accessor for TimerFlowProvider();
    v41 = swift_allocObject();
    sub_2F4EC((v0 + 256), v41 + 16);
    *(v0 + 136) = v41;
    *(v0 + 160) = v40;
    *(v0 + 168) = &off_158B00;
    v42 = *sub_23B08((v0 + 136), v40);
    sub_635D0(0, v38);
    if (qword_15EEA8 != -1)
    {
      swift_once();
    }

    v44 = *(v0 + 480);
    v43 = *(v0 + 488);
    v45 = *(v0 + 472);
    v47 = *(v0 + 328);
    v46 = *(v0 + 336);
    sub_1237BC();

    sub_12380C();

    (*(v44 + 8))(v43, v45);
    sub_2F504(v0 + 96);
    goto LABEL_40;
  }

  if (v18)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_0, v16, v17, "RemoteTimerContinuationFlow: in shouldPromptRemote", v52, 2u);
  }

  v53 = *(v0 + 464);
  v55 = *(v0 + 408);
  v54 = *(v0 + 416);
  v56 = *(v0 + 392);
  v75 = *(v0 + 400);
  v57 = *(v0 + 384);
  v76 = *(v0 + 376);
  v77 = *(v0 + 440);
  v78 = *(v0 + 368);
  v58 = *(v0 + 336);

  *(v13 + 16) = 2;
  sub_FFAE8(11);
  v59 = *(v58 + 72);

  v61 = sub_2BE74(v60);

  (*(v55 + 104))(v54, enum case for SiriTimeMeasurement.LogDescription.dialogResponseTime(_:), v75);
  (*(v57 + 16))(v56, v2, v76);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for SearchForTimersCATsSimple();
  sub_124ECC();
  *(v0 + 512) = sub_124E7C();
  sub_5AE8(&qword_15F180, &unk_126E10);
  v62 = swift_allocObject();
  *(v0 + 520) = v62;
  *(v62 + 16) = xmmword_126CB0;
  *(v62 + 32) = 0x7372656D6974;
  *(v62 + 40) = 0xE600000000000000;
  *(v62 + 72) = sub_5AE8(&qword_15F928, &unk_127400);
  *(v62 + 48) = v61;
  v63 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v79 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v64 = swift_task_alloc();
  *(v0 + 528) = v64;
  *v64 = v0;
  v64[1] = sub_2D70C;

  return v79(0xD000000000000028, 0x800000000012CD90, v62);
}

uint64_t sub_2D70C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 528);
  v6 = *v2;
  *(*v2 + 536) = v1;

  if (v1)
  {
    v7 = sub_2DBCC;
  }

  else
  {
    v8 = v4[65];
    v9 = v4[64];

    v4[68] = a1;
    v7 = sub_2D848;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_2D848()
{
  v1 = v0[45];
  sub_12362C();
  v2 = async function pointer to DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)[1];
  v3 = swift_task_alloc();
  v0[69] = v3;
  *v3 = v0;
  v3[1] = sub_2D908;
  v4 = v0[68];
  v5 = v0[58];
  v6 = v0[55];
  v7 = v0[45];

  return DialogExecutionResult.generateOutput(dialogPhase:context:measure:sessionID:responseViewId:)(v0 + 27, v7, v5, v6, 0, 0, 0, 0);
}

uint64_t sub_2D908()
{
  v1 = *(*v0 + 552);
  v2 = *(*v0 + 544);
  v3 = *(*v0 + 360);
  v4 = *(*v0 + 352);
  v5 = *(*v0 + 344);
  v7 = *v0;

  (*(v4 + 8))(v3, v5);

  return _swift_task_switch(sub_2DA78, 0, 0);
}

uint64_t sub_2DA78()
{
  v1 = v0[63];
  v2 = v0[57];
  v18 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  v7 = v0[41];
  v8 = v0[31];
  sub_23B08(v0 + 27, v0[30]);
  sub_123D4C();
  sub_5BB0(v0 + 27);
  sub_12381C();

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v18, v3);
  v9 = v0[61];
  v10 = v0[58];
  v11 = v0[55];
  v12 = v0[52];
  v13 = v0[49];
  v15 = v0[45];
  v14 = v0[46];

  v16 = v0[1];

  return v16();
}

uint64_t sub_2DBCC()
{
  v32 = v0;
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[62];
  v6 = v0[57];
  v5 = v0[58];
  v8 = v0[55];
  v7 = v0[56];
  v9 = v0[53];
  v10 = v0[54];

  (*(v10 + 8))(v8, v9);
  (*(v6 + 8))(v5, v7);
  swift_errorRetain();
  v11 = sub_125AAC();
  v12 = sub_125DEC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[67];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315138;
    v0[40] = v13;
    swift_errorRetain();
    sub_5AE8(&qword_15F670, &qword_127080);
    v16 = sub_125BAC();
    v18 = sub_8530(v16, v17, &v31);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_0, v11, v12, "RemoteTimerContinuationFlow: Error outputting prompt confirmation: %s", v14, 0xCu);
    sub_5BB0(v15);
  }

  v19 = v0[67];
  v20 = v0[63];
  v21 = v0[41];
  *(v0[42] + 16) = 4;
  sub_12383C();

  v22 = v0[61];
  v23 = v0[58];
  v24 = v0[55];
  v25 = v0[52];
  v26 = v0[49];
  v28 = v0[45];
  v27 = v0[46];

  v29 = v0[1];

  return v29();
}

void sub_2DE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15FB70, &unk_1278F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v61 - v7);
  (*(v5 + 16))(v61 - v7, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for RCHFlowResult.complete<A, B>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = *v8;
    v11 = v8[1];
    v12 = v8[2];

    swift_beginAccess();
    v13 = *(a2 + 64);
    *(a2 + 64) = v11;
    v14 = v11;

    v15 = [v12 matchedTimers];
    if (v15)
    {
      v16 = v15;
      sub_1257EC();
      v17 = sub_125C6C();
    }

    else
    {
      v17 = _swiftEmptyArrayStorage;
    }

    v31 = [v12 remoteTimers];
    if (v31)
    {
      v32 = v31;
      sub_1257EC();
      v33 = sub_125C6C();

      if (!(v17 >> 62))
      {
LABEL_18:
        v34 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
        goto LABEL_19;
      }
    }

    else
    {
      v33 = _swiftEmptyArrayStorage;
      if (!(v17 >> 62))
      {
        goto LABEL_18;
      }
    }

    v34 = sub_1260FC();
LABEL_19:

    *(a2 + 80) = v34 != 0;
    v35 = v33 >> 62;
    if (v33 >> 62)
    {
      if (sub_1260FC())
      {
LABEL_21:
        if (v34)
        {
LABEL_22:
          v36 = [v14 associatedDeviceTarget];
          if (!v36)
          {
            goto LABEL_25;
          }

          v37 = [v14 associatedDeviceTarget];
          v38 = [v37 isInRespondingRoom];

          sub_8BAC();
          v39.super.super.isa = sub_125EFC(1).super.super.isa;
          isa = v39.super.super.isa;
          if (!v38)
          {

            goto LABEL_45;
          }

          v41 = sub_125F0C();

          if (v41)
          {
LABEL_25:
            if (!v35)
            {
              if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) < 2)
              {
                goto LABEL_45;
              }

              goto LABEL_40;
            }

            if (sub_1260FC() >= 2)
            {
LABEL_40:
              if (qword_15EDF0 != -1)
              {
                swift_once();
              }

              v46 = sub_125ABC();
              sub_5B30(v46, qword_15FA88);
              v47 = sub_125AAC();
              v48 = sub_125DFC();
              if (!os_log_type_enabled(v47, v48))
              {
                goto LABEL_55;
              }

              v49 = swift_slowAlloc();
              *v49 = 0;
              v50 = "RemoteTimerContinuationFlow: has both local and remote timers to respond – setting state .shouldPromptRemote";
LABEL_54:
              _os_log_impl(&dword_0, v47, v48, v50, v49, 2u);

LABEL_55:

              v57 = *(a2 + 72);
              *(a2 + 72) = v33;

              v58 = 1;
LABEL_69:
              *(a2 + 16) = v58;
              return;
            }
          }

LABEL_45:

          if (qword_15EDF0 != -1)
          {
            swift_once();
          }

          v51 = sub_125ABC();
          sub_5B30(v51, qword_15FA88);
          v52 = sub_125AAC();
          v53 = sub_125DFC();
          if (!os_log_type_enabled(v52, v53))
          {
            goto LABEL_67;
          }

          v54 = swift_slowAlloc();
          *v54 = 0;
          v55 = "RemoteTimerContinuationFlow: associatedDeviceTarget was not in responding room (do not read other remote timers) - setting state .complete";
LABEL_66:
          _os_log_impl(&dword_0, v52, v53, v55, v54, 2u);

LABEL_67:

LABEL_68:
          v58 = 4;
          goto LABEL_69;
        }

        if (v35)
        {
          if (sub_1260FC() < 2)
          {
            goto LABEL_22;
          }
        }

        else if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) < 2)
        {
          goto LABEL_22;
        }

        if (qword_15EDF0 != -1)
        {
          swift_once();
        }

        v56 = sub_125ABC();
        sub_5B30(v56, qword_15FA88);
        v47 = sub_125AAC();
        v48 = sub_125DFC();
        if (!os_log_type_enabled(v47, v48))
        {
          goto LABEL_55;
        }

        v49 = swift_slowAlloc();
        *v49 = 0;
        v50 = "RemoteTimerContinuationFlow: no local matched timers with matched remote timers – setting state .shouldPromptRemote";
        goto LABEL_54;
      }
    }

    else if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_21;
    }

    if (v34)
    {
      if (qword_15EDF0 != -1)
      {
        swift_once();
      }

      v59 = sub_125ABC();
      sub_5B30(v59, qword_15FA88);
      v52 = sub_125AAC();
      v53 = sub_125DFC();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_67;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "RemoteTimerContinuationFlow: should have already read remote timers – setting state .complete";
    }

    else
    {
      if (qword_15EDF0 != -1)
      {
        swift_once();
      }

      v60 = sub_125ABC();
      sub_5B30(v60, qword_15FA88);
      v52 = sub_125AAC();
      v53 = sub_125DFC();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_67;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "RemoteTimerContinuationFlow: No timers found at all – setting state .complete";
    }

    goto LABEL_66;
  }

  if (v9 == enum case for RCHFlowResult.error<A, B>(_:))
  {
    (*(v5 + 96))(v8, v4);
    v18 = *v8;
    if (qword_15EDF0 != -1)
    {
      swift_once();
    }

    v19 = sub_125ABC();
    sub_5B30(v19, qword_15FA88);
    swift_errorRetain();
    v20 = sub_125AAC();
    v21 = sub_125DEC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v61[0] = v23;
      *v22 = 136315138;
      v61[3] = v18;
      swift_errorRetain();
      sub_5AE8(&qword_15F670, &qword_127080);
      v24 = sub_125BAC();
      v26 = sub_8530(v24, v25, v61);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_0, v20, v21, "RemoteTimerContinuationFlow: Error handling base search flow: %s", v22, 0xCu);
      sub_5BB0(v23);
    }

    else
    {
    }

    goto LABEL_68;
  }

  if (v9 == enum case for RCHFlowResult.cancelled<A, B>(_:))
  {
    if (qword_15EDF0 != -1)
    {
      swift_once();
    }

    v27 = sub_125ABC();
    sub_5B30(v27, qword_15FA88);
    v28 = sub_125AAC();
    v29 = sub_125DFC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_0, v28, v29, "RemoteTimerContinuationFlow: Parent flow returned .cancelled – setting state .complete", v30, 2u);
    }

    goto LABEL_68;
  }

  if (qword_15EDF0 != -1)
  {
    swift_once();
  }

  v42 = sub_125ABC();
  sub_5B30(v42, qword_15FA88);
  v43 = sub_125AAC();
  v44 = sub_125DEC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_0, v43, v44, "RemoteTimerContinuationFlow: Unknown state response in RemoteTimerContinuationFlow (state .begin)", v45, 2u);
  }

  *(a2 + 16) = 4;
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_2E7BC()
{
  sub_5BB0((v0 + 24));

  v1 = *(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for RemoteTimerContinuationFlow.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteTimerContinuationFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2E99C()
{
  result = qword_15FB60;
  if (!qword_15FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_15FB60);
  }

  return result;
}

uint64_t sub_2EA4C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_503C;

  return sub_2CAF8(a1);
}

uint64_t sub_2EAE8(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for TimerTimer.Builder(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v99 = sub_94508();
  v110 = a1;
  v7 = [a1 device];
  v108 = a2;
  if (v7)
  {
    v8 = v7;
    v9 = [v7 roomID];

    if (v9)
    {
      v101 = sub_125B9C();
      v11 = v10;

      if (a2 >> 62)
      {
        goto LABEL_45;
      }

      for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1260FC())
      {
        v13 = 0;
        v104 = a2 & 0xFFFFFFFFFFFFFF8;
        v106 = a2 & 0xC000000000000001;
        v100 = v11;
        v102 = i;
        while (1)
        {
          if (v106)
          {
            v14 = sub_125FFC();
          }

          else
          {
            if (v13 >= *(v104 + 16))
            {
              goto LABEL_44;
            }

            v14 = *(a2 + 8 * v13 + 32);
          }

          v15 = v14;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v17 = [v14 device];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 roomID];

            if (!v19)
            {

              goto LABEL_40;
            }

            v20 = sub_125B9C();
            v22 = v21;

            if (v101 == v20 && v11 == v22)
            {
            }

            else
            {
              v24 = sub_1261BC();

              if ((v24 & 1) == 0)
              {

                goto LABEL_39;
              }
            }

            v25 = [v15 identifier];
            if (v25)
            {
              v26 = v25;
              v27 = sub_125B9C();
              v29 = v28;
            }

            else
            {
              v27 = 0;
              v29 = 0;
            }

            v30 = [v110 identifier];
            if (v30)
            {
              v31 = v30;
              v32 = sub_125B9C();
              v34 = v33;

              if (v29)
              {
                if (v34)
                {
                  if (v27 == v32 && v29 == v34)
                  {

LABEL_38:
                    a2 = v108;
LABEL_39:
                    v11 = v100;
LABEL_40:
                    i = v102;
                    goto LABEL_7;
                  }

                  v36 = sub_1261BC();

                  if (v36)
                  {
LABEL_37:

                    goto LABEL_38;
                  }

LABEL_35:
                  sub_12603C();
                  v35 = *(&_swiftEmptyArrayStorage + 2);
                  sub_12607C();
                  sub_12608C();
                  sub_12604C();
                  goto LABEL_38;
                }
              }

              else if (!v34)
              {
                goto LABEL_37;
              }
            }

            else if (!v29)
            {
              goto LABEL_37;
            }

            goto LABEL_35;
          }

LABEL_7:
          ++v13;
          if (v16 == i)
          {
            goto LABEL_46;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        ;
      }

LABEL_46:
    }
  }

  v37 = [v110 label];
  v38 = &_swiftEmptyArrayStorage >> 62;
  if (!v37)
  {
    goto LABEL_143;
  }

  v39 = v37;
  v40 = sub_125B9C();
  v42 = v41;

  v38 = &_swiftEmptyArrayStorage >> 62;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {
    goto LABEL_143;
  }

  if (&_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_79;
  }

  v44 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  if (v44)
  {
LABEL_53:
    v45 = 0;
    while (1)
    {
      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v46 = sub_125FFC();
      }

      else
      {
        if (v45 >= *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_78;
        }

        v46 = *(&_swiftEmptyArrayStorage + v45 + 4);
      }

      v47 = v46;
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        v44 = sub_1260FC();
        if (!v44)
        {
          goto LABEL_80;
        }

        goto LABEL_53;
      }

      v49 = [v46 label];
      if (v49)
      {
        v50 = v49;
        v51 = sub_125B9C();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v54 = [v110 label];
      if (!v54)
      {
        break;
      }

      v55 = v54;
      v56 = sub_125B9C();
      v58 = v57;

      if (!v53)
      {
        if (!v58)
        {
LABEL_74:

LABEL_76:
          v60 = 0;
          a2 = v108;
          goto LABEL_81;
        }

        goto LABEL_55;
      }

      if (!v58)
      {
        goto LABEL_55;
      }

      if (v51 == v56 && v53 == v58)
      {

        goto LABEL_76;
      }

      v59 = sub_1261BC();

      a2 = v108;
      if (v59)
      {
        v60 = 0;
        goto LABEL_81;
      }

LABEL_56:
      ++v45;
      if (v48 == v44)
      {
        goto LABEL_80;
      }
    }

    if (!v53)
    {
      goto LABEL_74;
    }

LABEL_55:

    a2 = v108;
    goto LABEL_56;
  }

LABEL_80:
  v60 = 1;
LABEL_81:
  *(v99 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueInRoom) = v60;
  if (a2 >> 62)
  {
LABEL_111:
    v61 = sub_1260FC();
    if (v61)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v61 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v61)
    {
LABEL_83:
      v62 = 0;
      v105 = a2 & 0xFFFFFFFFFFFFFF8;
      v107 = a2 & 0xC000000000000001;
      v63 = &stru_15D000;
      v103 = v61;
      while (1)
      {
        if (v107)
        {
          v64 = sub_125FFC();
        }

        else
        {
          if (v62 >= *(v105 + 16))
          {
            goto LABEL_110;
          }

          v64 = *(a2 + 8 * v62 + 32);
        }

        a2 = v64;
        v65 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

        v66 = [v64 v63[123].name];
        if (v66)
        {
          v67 = v66;
          v68 = sub_125B9C();
          v70 = v69;
        }

        else
        {
          v68 = 0;
          v70 = 0;
        }

        v71 = v63;
        v72 = [v110 v63[123].name];
        if (v72)
        {
          v73 = v72;
          v74 = sub_125B9C();
          v76 = v75;

          if (v70)
          {
            if (!v76)
            {
              goto LABEL_102;
            }

            if (v68 == v74 && v70 == v76)
            {

              goto LABEL_85;
            }

            v78 = sub_1261BC();

            if ((v78 & 1) == 0)
            {
              goto LABEL_103;
            }
          }

          else if (v76)
          {
LABEL_102:

LABEL_103:
            sub_12603C();
            v77 = *(&_swiftEmptyArrayStorage + 2);
            sub_12607C();
            sub_12608C();
            sub_12604C();
            goto LABEL_85;
          }
        }

        else if (v70)
        {
          goto LABEL_102;
        }

LABEL_85:
        v63 = v71;
        ++v62;
        a2 = v108;
        if (v65 == v103)
        {
          if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
          {
            goto LABEL_140;
          }

          goto LABEL_113;
        }
      }
    }
  }

  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_140;
  }

LABEL_113:
  if ((&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    goto LABEL_140;
  }

  v109 = *(&_swiftEmptyArrayStorage + 2);
  if (!v109)
  {
    goto LABEL_141;
  }

  do
  {
    v79 = 0;
    while (1)
    {
      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v80 = sub_125FFC();
      }

      else
      {
        if (v79 >= *(&_swiftEmptyArrayStorage + 2))
        {
          goto LABEL_139;
        }

        v80 = *(&_swiftEmptyArrayStorage + v79 + 4);
      }

      v81 = v80;
      v82 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      v83 = [v80 label];
      if (v83)
      {
        v84 = v83;
        v85 = sub_125B9C();
        v87 = v86;
      }

      else
      {
        v85 = 0;
        v87 = 0;
      }

      v88 = [v110 label];
      if (!v88)
      {
        if (!v87)
        {
          goto LABEL_136;
        }

LABEL_117:

        goto LABEL_118;
      }

      v89 = v88;
      v90 = sub_125B9C();
      v92 = v91;

      if (!v87)
      {
        if (!v92)
        {
LABEL_136:

          v94 = 0;
          goto LABEL_142;
        }

        goto LABEL_117;
      }

      if (!v92)
      {
        goto LABEL_117;
      }

      if (v85 == v90 && v87 == v92)
      {

        v94 = 0;
        goto LABEL_142;
      }

      v93 = sub_1261BC();

      if (v93)
      {

        v94 = 0;
        goto LABEL_142;
      }

LABEL_118:
      ++v79;
      if (v82 == v109)
      {
        goto LABEL_141;
      }
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v109 = sub_1260FC();
  }

  while (v109);
LABEL_141:

  v94 = 1;
LABEL_142:
  v38 = &_swiftEmptyArrayStorage >> 62;
  *(v99 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isLabelUniqueAcrossGroup) = v94;
LABEL_143:
  if (v38)
  {
    v95 = sub_1260FC();
  }

  else
  {
    v95 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  }

  *(v99 + OBJC_IVAR____TtCC23TimerFlowDelegatePlugin10TimerTimer7Builder_isOnlyMatchingTimerInRoom) = v95 == 0;

  v97 = sub_113D6C(v96, 0);

  return v97;
}

uint64_t sub_2F488(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2F4EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2F560()
{
  result = qword_161880;
  if (!qword_161880)
  {
    sub_12379C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_161880);
  }

  return result;
}

uint64_t type metadata accessor for DismissTimerCATs_Async()
{
  result = qword_15FB78;
  if (!qword_15FB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2F644(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_606C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_2F7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = *(*(sub_124EDC() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_125ABC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_124FFC();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_12501C();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_2F97C, 0, 0);
}

uint64_t sub_2F97C()
{
  (*(v0[10] + 104))(v0[11], enum case for SiriTimeMeasurement.LogDescription.dialogPatternResponseTime(_:), v0[9]);
  if (qword_15EDF8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  v6 = sub_5B30(v5, qword_15FBC8);
  (*(v4 + 16))(v3, v6, v5);
  mach_absolute_time();
  sub_12502C();
  type metadata accessor for TimerBaseCATPatternsExecutor(0);
  sub_124ECC();
  v0[15] = sub_124DBC();
  v7 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v10 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_2FB20;

  return v10(0xD000000000000013, 0x800000000012CE00, _swiftEmptyArrayStorage);
}

uint64_t sub_2FB20(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_2FDEC, 0, 0);
  }

  else
  {
    v7 = v4[15];
    v4[18] = a1;

    v8 = async function pointer to PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)[1];
    v9 = swift_task_alloc();
    v4[19] = v9;
    *v9 = v6;
    v9[1] = sub_2FCC0;
    v10 = v4[14];
    v11 = v4[3];
    v12 = v4[4];
    v13 = v4[2];

    return PatternExecutionResult.generateStandardPatternOutput(phase:contextUpdate:measure:dismissAssistant:)(v13, v11, v12, v10, 0);
  }
}

uint64_t sub_2FCC0()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v6 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2FF4C;
  }

  else
  {
    v4 = sub_2FEA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2FDEC()
{
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2FEA4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2FF4C()
{
  v1 = v0[20];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2FFFC()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15FBC8);
  sub_5B30(v0, qword_15FBC8);
  return sub_1257AC();
}

uint64_t sub_30048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_3006C, 0, 0);
}

uint64_t sub_3006C()
{
  v1 = v0[15];
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v2 = v0[6];
  sub_23B08(v0 + 2, v0[5]);
  sub_12359C();
  v3 = sub_1236FC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1236DC();
  sub_5BB0(v0 + 2);
  v6 = sub_1236EC();

  v7 = [objc_allocWithZone(SAUIAddViews) init];
  v0[16] = v7;
  if (v6 >> 62)
  {
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);

    sub_1260EC();
  }

  else
  {

    sub_1261CC();
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  }

  v9 = v0[13];
  v8 = v0[14];

  sub_102E40(v10);
  sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  isa = sub_125C4C().super.isa;

  [v7 setViews:isa];

  sub_12366C();
  v12 = sub_125B8C();

  [v7 setDialogPhase:v12];

  sub_12357C();
  v13 = v0[10];
  v14 = v0[11];
  sub_23B08(v0 + 7, v13);
  v15 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v16 = swift_task_alloc();
  v0[17] = v16;
  v17 = sub_30B8C(0, &qword_15FBE8, SABaseCommand_ptr);
  *v16 = v0;
  v16[1] = sub_3033C;

  return AceServiceInvokerAsync.submit<A>(_:)(v7, v13, v17, v14);
}

uint64_t sub_3033C(void *a1)
{
  v4 = *(*v2 + 136);
  v7 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_305A8;
  }

  else
  {

    v5 = sub_30458;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_30458()
{
  sub_5BB0(v0 + 7);
  if (qword_15EDF8 != -1)
  {
    swift_once();
  }

  v1 = sub_125ABC();
  sub_5B30(v1, qword_15FBC8);
  v2 = sub_125AAC();
  v3 = sub_125DFC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "generateCustomFlowOutput completed successfully.", v4, 2u);
  }

  v5 = v0[15];
  v6 = v0[16];
  v8 = v0[13];
  v7 = v0[14];
  v9 = v0[12];

  sub_BAF10(v8, v5, v7);
  sub_12383C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_305A8()
{
  v1 = v0[18];
  v2 = v0[16];
  sub_5BB0(v0 + 7);
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_30624(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 144) = a2;
  *(v4 + 96) = a1;
  return _swift_task_switch(sub_3064C, 0, 0);
}

uint64_t sub_3064C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 144);
  sub_12524C();
  sub_12523C();
  sub_12522C();

  v3 = *(v0 + 48);
  sub_23B08((v0 + 16), *(v0 + 40));
  sub_12359C();
  v4 = sub_1236FC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1236DC();
  sub_5BB0((v0 + 16));
  v7 = sub_1236EC();

  if (v7 >> 62)
  {
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);

    v8 = sub_1260EC();
  }

  else
  {

    sub_1261CC();
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
    v8 = v7;
  }

  sub_BAF10(v8, *(v0 + 112), *(v0 + 104));

  v9 = [objc_allocWithZone(SAUIAddViews) init];
  *(v0 + 120) = v9;
  if (v7 >> 62)
  {
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);

    sub_1260EC();
  }

  else
  {

    sub_1261CC();
    sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  }

  v10 = *(v0 + 104);

  sub_30B8C(0, &qword_15FBE0, SAAceView_ptr);
  isa = sub_125C4C().super.isa;

  [v9 setViews:isa];

  sub_12366C();
  v12 = sub_125B8C();

  [v9 setDialogPhase:v12];

  sub_12357C();
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  sub_23B08((v0 + 56), v13);
  v15 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  v17 = sub_30B8C(0, &qword_15FBE8, SABaseCommand_ptr);
  *v16 = v0;
  v16[1] = sub_3098C;

  return AceServiceInvokerAsync.submit<A>(_:)(v9, v13, v17, v14);
}

uint64_t sub_3098C(void *a1)
{
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_30B20;
  }

  else
  {

    v5 = sub_30AA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_30AA8()
{
  v1 = v0[15];
  v2 = v0[12];
  sub_5BB0(v0 + 7);
  sub_12383C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_30B20()
{
  sub_5BB0((v0 + 56));
  v1 = *(v0 + 8);
  v2 = *(v0 + 136);

  return v1();
}

uint64_t sub_30B8C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for SearchForTimersCATsSimple()
{
  result = qword_15FBF0;
  if (!qword_15FBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_30C60(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_606C(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124E5C();
  (*(v6 + 8))(a2, v5);
  sub_60DC(a1);
  return v16;
}

uint64_t sub_30DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_124EDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 48);
  v10 = *(v2 + 52);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v4);
  v11 = sub_124E6C();
  (*(v5 + 8))(a2, v4);
  return v11;
}

uint64_t sub_30F60()
{
  v1 = sub_5AE8(&unk_15F170, &unk_126E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_127990;
  *(v7 + 32) = 7368801;
  *(v7 + 40) = 0xE300000000000000;
  v8 = *v0;
  if (*v0)
  {
    v9 = sub_124DEC();
    v10 = v8;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
  }

  *(v7 + 48) = v10;
  *(v7 + 72) = v9;
  strcpy((v7 + 80), "createdTimer");
  *(v7 + 93) = 0;
  *(v7 + 94) = -5120;
  v11 = v0[1];
  if (v11)
  {
    v12 = type metadata accessor for TimerTimer(0);
    v13 = v11;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v13;
  *(v7 + 120) = v12;
  *(v7 + 128) = 0xD000000000000016;
  *(v7 + 136) = 0x800000000012CEA0;
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  sub_E344(v0 + *(TimerHandledOnWatchParameters + 24), v6, &unk_15F170, &unk_126E00);
  v15 = sub_124E4C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v6, 1, v15) == 1)
  {

    sub_5CA8(v6, &unk_15F170, &unk_126E00);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v15;
    v18 = sub_23B4C((v7 + 144));
    (*(v16 + 32))(v18, v6, v15);
  }

  *(v7 + 176) = 0x6174614477656976;
  *(v7 + 184) = 0xE800000000000000;
  v19 = v0 + *(TimerHandledOnWatchParameters + 28);
  v20 = v24;
  sub_E344(v19, v24, &unk_15F170, &unk_126E00);
  if (v17(v20, 1, v15) == 1)
  {
    sub_5CA8(v20, &unk_15F170, &unk_126E00);
    *(v7 + 192) = 0u;
    *(v7 + 208) = 0u;
  }

  else
  {
    *(v7 + 216) = v15;
    v21 = sub_23B4C((v7 + 192));
    (*(v16 + 32))(v21, v20, v15);
  }

  return v7;
}

uint64_t sub_31288(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  TimerHandledParameters = type metadata accessor for CreateTimerHandledParameters(0);
  v2[5] = TimerHandledParameters;
  v5 = *(*(TimerHandledParameters - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_31354, 0, 0);
}

uint64_t sub_31354()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  *v2 = 0;
  v5 = *(v1 + 20);
  v6 = sub_124E4C();
  v7 = *(v6 - 8);
  (*(v7 + 56))(&v2[v5], 1, 1, v6);
  v8 = *v3;
  *v2 = v8;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v9 = swift_allocObject();
  v0[7] = v9;
  *(v9 + 16) = xmmword_1270C0;
  strcpy((v9 + 32), "createdTimer");
  *(v9 + 45) = 0;
  *(v9 + 46) = -5120;
  v10 = type metadata accessor for TimerTimer(0);
  *(v9 + 48) = v8;
  *(v9 + 72) = v10;
  *(v9 + 80) = 0xD000000000000016;
  *(v9 + 88) = 0x800000000012CEA0;
  sub_E344(&v2[v5], v4, &unk_15F170, &unk_126E00);
  v11 = (*(v7 + 48))(v4, 1, v6);
  v12 = v0[4];
  if (v11 == 1)
  {
    swift_retain_n();
    sub_5CA8(v12, &unk_15F170, &unk_126E00);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v6;
    v13 = sub_23B4C((v9 + 96));
    (*(v7 + 32))(v13, v12, v6);
    swift_retain_n();
  }

  v14 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v18 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_315CC;
  v16 = v0[2];

  return v18(0xD000000000000013, 0x800000000012CEC0, v9);
}

uint64_t sub_315CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_317AC;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_31718;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_31718()
{
  v1 = v0[4];
  sub_3282C(v0[6], type metadata accessor for CreateTimerHandledParameters);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_317AC()
{
  v1 = v0[4];
  sub_3282C(v0[6], type metadata accessor for CreateTimerHandledParameters);

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_3183C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  TimerHandledOnWatchParameters = type metadata accessor for CreateTimerHandledOnWatchParameters(0);
  v3[5] = TimerHandledOnWatchParameters;
  v5 = *(*(TimerHandledOnWatchParameters - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_318D4, 0, 0);
}

uint64_t sub_318D4()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  *v1 = 0;
  *(v1 + 1) = 0;
  v5 = *(v2 + 24);
  v6 = sub_124E4C();
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  v7(&v1[*(v2 + 28)], 1, 1, v6);
  v4(v1);
  v8 = sub_30F60();
  v0[7] = v8;
  v9 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v13 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_31A40;
  v11 = v0[4];

  return v13(0xD00000000000001ALL, 0x800000000012CF70, v8);
}

uint64_t sub_31A40(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v8 = sub_31C14;
  }

  else
  {
    *(v4 + 80) = a1;
    v8 = sub_31B8C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_31B8C()
{
  sub_3282C(v0[6], type metadata accessor for CreateTimerHandledOnWatchParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_31C14()
{
  sub_3282C(v0[6], type metadata accessor for CreateTimerHandledOnWatchParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t sub_31C98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_31CB8, 0, 0);
}

uint64_t sub_31CB8()
{
  v1 = **(v0 + 24);
  *(v0 + 32) = v1;
  sub_5AE8(&qword_15F180, &unk_126E10);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_126CB0;
  strcpy((v2 + 32), "createdTimer");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  *(v2 + 72) = type metadata accessor for TimerTimer(0);
  *(v2 + 48) = v1;
  v3 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v7 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  swift_retain_n();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_31E04;
  v5 = *(v0 + 16);

  return v7(0xD000000000000018, 0x800000000012CEE0, v2);
}

uint64_t sub_31E04(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v8 = sub_31FB8;
  }

  else
  {
    *(v4 + 64) = a1;
    v8 = sub_31F50;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_31F50()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[8];

  return v2(v3);
}

uint64_t sub_31FB8()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_3201C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_5AE8(&unk_15F170, &unk_126E00) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  TimerPromptLabelDuplicateParameters = type metadata accessor for CreateTimerPromptLabelDuplicateParameters(0);
  v3[6] = TimerPromptLabelDuplicateParameters;
  v6 = *(*(TimerPromptLabelDuplicateParameters - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_320EC, 0, 0);
}

uint64_t sub_320EC()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  *v2 = 0;
  v5 = *(v1 + 20);
  v6 = sub_124E4C();
  v7 = *(v6 - 8);
  (*(v7 + 56))(&v2[v5], 1, 1, v6);
  v4(v2);
  sub_5AE8(&qword_15F180, &unk_126E10);
  v8 = swift_allocObject();
  v0[8] = v8;
  *(v8 + 16) = xmmword_1270C0;
  *(v8 + 32) = 0x6E6F697461727564;
  *(v8 + 40) = 0xE800000000000000;
  v9 = *v2;
  if (*v2)
  {
    v10 = sub_124D7C();
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  v12 = v0[5];
  *(v8 + 48) = v11;
  *(v8 + 72) = v10;
  *(v8 + 80) = 0x62614C72656D6974;
  *(v8 + 88) = 0xEA00000000006C65;
  sub_E344(&v2[v5], v12, &unk_15F170, &unk_126E00);
  v13 = (*(v7 + 48))(v12, 1, v6);
  v14 = v0[5];
  if (v13 == 1)
  {

    sub_5CA8(v14, &unk_15F170, &unk_126E00);
    *(v8 + 96) = 0u;
    *(v8 + 112) = 0u;
  }

  else
  {
    *(v8 + 120) = v6;
    v15 = sub_23B4C((v8 + 96));
    (*(v7 + 32))(v15, v14, v6);
  }

  v16 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v20 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v17 = swift_task_alloc();
  v0[9] = v17;
  *v17 = v0;
  v17[1] = sub_32374;
  v18 = v0[4];

  return v20(0xD000000000000020, 0x800000000012CF20, v8);
}

uint64_t sub_32374(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v8 = sub_32554;
  }

  else
  {
    *(v4 + 88) = a1;
    v8 = sub_324C0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_324C0()
{
  v1 = v0[5];
  sub_3282C(v0[7], type metadata accessor for CreateTimerPromptLabelDuplicateParameters);

  v2 = v0[1];
  v3 = v0[11];

  return v2(v3);
}

uint64_t sub_32554()
{
  v1 = v0[5];
  sub_3282C(v0[7], type metadata accessor for CreateTimerPromptLabelDuplicateParameters);

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_325E4(uint64_t a1, uint64_t a2)
{
  v5 = sub_124EDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5AE8(&qword_15F5D0, &unk_126EA0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_E344(a1, v13, &qword_15F5D0, &unk_126EA0);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_124DAC();
  (*(v6 + 8))(a2, v5);
  sub_5CA8(a1, &qword_15F5D0, &unk_126EA0);
  return v16;
}

uint64_t sub_327F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_3282C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_328F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_5AE8(&unk_15F170, &unk_126E00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_329CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_32A9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_32DD4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_32DD4(319, &qword_15FD00, &type metadata accessor for SpeakableString);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_32B58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_5AE8(&unk_15F170, &unk_126E00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_32C34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_5AE8(&unk_15F170, &unk_126E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_32CE4()
{
  sub_32DD4(319, &unk_15FE30, &type metadata accessor for SirikitApp);
  if (v0 <= 0x3F)
  {
    sub_32DD4(319, &unk_15FD98, type metadata accessor for TimerTimer);
    if (v1 <= 0x3F)
    {
      sub_32DD4(319, &qword_15FD00, &type metadata accessor for SpeakableString);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_32DD4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_125F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_32E30()
{
  v0 = sub_125ABC();
  sub_5BFC(v0, qword_15FE68);
  sub_5B30(v0, qword_15FE68);
  return sub_1257AC();
}

uint64_t sub_32E7C()
{
  v0 = sub_123E8C();
  v39 = *(v0 - 8);
  v40 = v0;
  v1 = *(v39 + 64);
  (__chkstk_darwin)();
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_123E4C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (__chkstk_darwin)();
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_123D7C();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  v13 = __chkstk_darwin(v11);
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = &v37 - v15;
  v16 = sub_123D9C();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    while (v18 < *(v16 + 16))
    {
      (*(v4 + 16))(v8, v16 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18, v3);
      if (sub_123DBC())
      {

        (*(v4 + 32))(v10, v8, v3);
        v19 = v38;
        sub_123E0C();
        (*(v4 + 8))(v10, v3);
        v20 = v37;
        sub_123E5C();
        (*(v39 + 8))(v19, v40);
        v22 = v41;
        v21 = v42;
        v23 = v43;
        (*(v42 + 32))(v41, v20, v43);
        sub_123F0C();
        v29 = sub_12424C();
        if (!(v29 >> 62))
        {
          if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_15;
          }

LABEL_22:

          if (qword_15EE00 == -1)
          {
LABEL_23:
            v33 = sub_125ABC();
            sub_5B30(v33, qword_15FE68);
            v34 = sub_125AAC();
            v35 = sub_125DEC();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&dword_0, v34, v35, "USO tasks graph has no tasks. Returning nil intent.", v36, 2u);
            }

            (*(v21 + 8))(v22, v23);
            return 0;
          }

LABEL_28:
          swift_once();
          goto LABEL_23;
        }

        v31 = v29;
        v32 = sub_1260FC();
        v29 = v31;
        if (!v32)
        {
          goto LABEL_22;
        }

LABEL_15:
        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = sub_125FFC();
        }

        else
        {
          if (!*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_28;
          }

          v30 = *(v29 + 32);
        }

        (*(v21 + 8))(v22, v23);
        return v30;
      }

      ++v18;
      (*(v4 + 8))(v8, v3);
      if (v17 == v18)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:

  if (qword_15EE00 != -1)
  {
LABEL_20:
    swift_once();
  }

  v24 = sub_125ABC();
  sub_5B30(v24, qword_15FE68);
  v25 = sub_125AAC();
  v26 = sub_125DEC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_0, v25, v26, "Failed to parse userParse. Returning nil intent.", v27, 2u);
  }

  return 0;
}

id sub_3341C()
{
  if (!sub_12468C())
  {
    return 0;
  }

  v0 = sub_1243BC();
  if (v0)
  {
    sub_1243FC();
    v2 = v1;

    if (v2 > 0.0)
    {
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v3 = sub_125ABC();
      sub_5B30(v3, qword_15FE68);
      v4 = sub_125AAC();
      v5 = sub_125DFC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = v2;
        _os_log_impl(&dword_0, v4, v5, "makeSleepTimersIntent found valid parameters to create sleep timer for seconds: %f", v6, 0xCu);
      }

      v0 = [objc_allocWithZone(sub_1255EC()) init];
      [v0 setLabel:0];
      sub_1255DC();
      [v0 setType:2];
      goto LABEL_9;
    }

    if (qword_15EE00 != -1)
    {
      swift_once();
    }

    v7 = sub_125ABC();
    sub_5B30(v7, qword_15FE68);
    v8 = sub_125AAC();
    v9 = sub_125DEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "TimerFlowDelegatePlugin was presented a sleep timer ontology, but with a duration of zero seconds.", v10, 2u);
    }

    return 0;
  }

LABEL_9:

  return v0;
}

id sub_33650(uint64_t a1, uint64_t a2)
{
  v4 = sub_5AE8(&qword_15FFB0, &unk_1270A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v53 - v6;
  v8 = sub_12532C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_15EE00 != -1)
  {
    swift_once();
  }

  v13 = sub_125ABC();
  v14 = sub_5B30(v13, qword_15FE68);

  v15 = sub_125AAC();
  v16 = sub_125DFC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v55 = v14;
    v18 = v17;
    v54 = swift_slowAlloc();
    v59[0] = v54;
    *v18 = 136315138;
    v57[0] = a1;
    sub_124BAC();
    v56 = v9;

    v19 = sub_125BAC();
    v21 = v7;
    v22 = v8;
    v23 = sub_8530(v19, v20, v59);
    v9 = v56;

    *(v18 + 4) = v23;
    v8 = v22;
    v7 = v21;
    _os_log_impl(&dword_0, v15, v16, "Building SK intent from task: %s", v18, 0xCu);
    sub_5BB0(v54);
  }

  if (sub_C66F0())
  {
    v24 = sub_3341C();
    if (v24)
    {
      v25 = v24;
      v26 = sub_125AAC();
      v27 = sub_125DFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v26, v27, "TimerFlowDelegatePlugin found trigger in stop task, attempting sleep timer intent creation", v28, 2u);
      }

      return v25;
    }
  }

  switch(sub_C69B0())
  {
    case 1u:
    case 9u:
      goto LABEL_18;
    case 2u:

      v33 = sub_1172B0();
      v34 = [objc_allocWithZone(sub_12561C()) init];
      goto LABEL_22;
    case 3u:
    case 4u:
      v30 = sub_C6B1C();
      if (v30)
      {
        v31 = v30;
      }

      else
      {
        v31 = &_swiftEmptyArrayStorage;
      }

      v59[0] = 22100;
      v59[1] = 0xE200000000000000;
      __chkstk_darwin(v30);
      *(&v53 - 2) = v59;
      v32 = sub_83744(sub_34084, (&v53 - 4), v31);

      if ((v32 & 1) == 0)
      {
        return 0;
      }

LABEL_18:
      sub_1255EC();

      return sub_F139C();
    case 5u:
      sub_12555C();

      return sub_F17B8(v37);
    case 7u:
    case 0x11u:
    case 0x12u:
      sub_12558C();

      return sub_F1D90();
    case 8u:
      sub_12564C();

      return sub_F2BE0(v48);
    case 0xAu:
      sub_E344(a2, v7, &qword_15FFB0, &unk_1270A0);
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        v50 = sub_1252DC();
        (*(v9 + 8))(v12, v8);
        return v50;
      }

      sub_5CA8(v7, &qword_15FFB0, &unk_1270A0);

      v33 = sub_1172B0();
      v34 = [objc_allocWithZone(sub_12561C()) init];
LABEL_22:
      v35 = v34;
      [v35 setTargetTimer:v33];
      sub_12577C();
      sub_CBEB0();
      sub_C6B1C();
      v36 = sub_12576C();
      [v35 setTargetingInfo:v36];

      return v35;
    case 0xCu:
      sub_12550C();

      return sub_F18EC(v49, 0);
    case 0xDu:

      v38 = sub_125AAC();
      v39 = sub_125DEC();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v59[0] = v41;
        *v40 = 136315138;
        v42 = sub_124B8C();
        v44 = sub_8530(v42, v43, v59);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_0, v38, v39, "Unexpected timerVerb: %s", v40, 0xCu);
        sub_5BB0(v41);
      }

      return 0;
    case 0xEu:
      sub_12437C();
      sub_E344(v59, v57, &unk_161840, &qword_128110);
      if (v58)
      {
        sub_12458C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (!v57[0])
          {
            goto LABEL_43;
          }

          UsoEntity_common_Timer.duration.getter();
          sub_8BAC();
          isa = UsoEntity_common_Timer.isMultiple.getter().super.super.isa;
          v46 = sub_125EFC(0).super.super.isa;
          v47 = sub_125F0C();

          if (v47)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        sub_5CA8(v57, &unk_161840, &qword_128110);
      }

      sub_E344(v59, v57, &unk_161840, &qword_128110);
      if (v58)
      {
        sub_12457C();
        if (swift_dynamicCast())
        {
          sub_123F3C();
          if (v57[0])
          {
            v51 = sub_1242DC();

            if (v51)
            {
              v52 = sub_1243BC();

              if (v52)
              {

LABEL_43:
                sub_1255EC();

                v50 = sub_F139C();

                goto LABEL_47;
              }
            }
          }
        }
      }

      else
      {
        sub_5CA8(v57, &unk_161840, &qword_128110);
      }

      sub_12568C();

      v50 = sub_F14F0();
LABEL_47:
      sub_5CA8(v59, &unk_161840, &qword_128110);
      return v50;
    default:
      sub_12568C();

      return sub_F14F0();
  }
}

id sub_33F74(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = SIRINLUUserDialogAct.firstUsoTask.getter();
  if (v3)
  {
    v4 = sub_33650(v3, a2);

    return v4;
  }

  else
  {
    if (qword_15EE00 != -1)
    {
      swift_once();
    }

    v6 = sub_125ABC();
    sub_5B30(v6, qword_15FE68);
    v7 = sub_125AAC();
    v8 = sub_125DEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "No firstUsoTask contained in userDialogAct. Returning nil intent.", v9, 2u);
    }

    return 0;
  }
}

uint64_t sub_34084(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1261BC() & 1;
  }
}

id sub_340DC(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
    case 4:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v11 = sub_125ABC();
      sub_5B30(v11, qword_15FE68);
      v4 = sub_125AAC();
      v12 = sub_125DEC();
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Calling .create for disambiguation item selection is invalid";
      goto LABEL_25;
    case 2:
    case 10:
      v18 = [objc_allocWithZone(sub_12561C()) init];
      [v18 setTargetTimer:a1];
      v16 = v18;
      v19 = [v18 targetTimer];
      if (v19)
      {
        v20 = v19;
        sub_8BAC();
        isa = sub_125EEC(0).super.super.isa;
        [v20 setShouldMatchAny:isa];
      }

      return v16;
    case 5:
      sub_8BAC();
      v15.super.super.isa = sub_125EEC(0).super.super.isa;
      v17 = [objc_allocWithZone(sub_12555C()) init];
      goto LABEL_16;
    case 7:
    case 17:
    case 18:
      sub_8BAC();
      v15.super.super.isa = sub_125EEC(0).super.super.isa;
      v16 = [objc_allocWithZone(sub_12558C()) init];
      [a1 setShouldMatchAny:v15.super.super.isa];
      [v16 setTargetTimer:a1];
      [v16 setToTimer:0];
      goto LABEL_29;
    case 8:
    case 9:
      sub_8BAC();
      v15.super.super.isa = sub_125EEC(0).super.super.isa;
      v17 = [objc_allocWithZone(sub_12564C()) init];
LABEL_16:
      v16 = v17;
      [a1 setShouldMatchAny:v15.super.super.isa];
      [v16 setTargetTimer:a1];
      goto LABEL_29;
    case 12:
      [objc_opt_self() defaultDuration];
      v15.super.super.isa = sub_125D5C().super.super.isa;
      v16 = [objc_allocWithZone(sub_12550C()) init];
      [v16 setTargetTimer:a1];
      [v16 setToDuration:v15.super.super.isa];
      [v16 setToLabel:0];
LABEL_29:

      return v16;
    case 13:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v22 = sub_125ABC();
      sub_5B30(v22, qword_15FE68);
      v4 = sub_125AAC();
      v23 = sub_125DEC();
      if (!os_log_type_enabled(v4, v23))
      {
        goto LABEL_27;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      v26 = sub_125BAC();
      v28 = sub_8530(v26, v27, &v31);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_0, v4, v23, "Unexpected timerVerb: %s", v24, 0xCu);
      sub_5BB0(v25);
      goto LABEL_6;
    case 14:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v29 = sub_125ABC();
      sub_5B30(v29, qword_15FE68);
      v4 = sub_125AAC();
      v12 = sub_125DEC();
      if (!os_log_type_enabled(v4, v12))
      {
        goto LABEL_27;
      }

      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = "Calling .noVerb for disambiguation item selection is invalid";
LABEL_25:
      _os_log_impl(&dword_0, v4, v12, v14, v13, 2u);
      goto LABEL_26;
    default:
      if (qword_15EE00 != -1)
      {
        swift_once();
      }

      v3 = sub_125ABC();
      sub_5B30(v3, qword_15FE68);
      v4 = sub_125AAC();
      v5 = sub_125DEC();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_27;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31 = v7;
      *v6 = 136315138;
      v8 = sub_125BAC();
      v10 = sub_8530(v8, v9, &v31);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, v4, v5, "Calling verb %s for disambiguation selection is invalid", v6, 0xCu);
      sub_5BB0(v7);
LABEL_6:

LABEL_26:

LABEL_27:

      return 0;
  }
}

void sub_346FC(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v317 = a3;
  v324 = a2;
  v360 = a5;
  v361 = a1;
  v311 = sub_123DAC();
  v310 = *(v311 - 8);
  v6 = *(v310 + 64);
  __chkstk_darwin(v311);
  v309 = &v305 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v318 = type metadata accessor for TimerNLv3Intent();
  v8 = *(*(v318 - 8) + 64);
  v9 = __chkstk_darwin(v318);
  v333 = &v305 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v329 = &v305 - v11;
  v313 = sub_123CDC();
  v332 = *(v313 - 8);
  v12 = *(v332 + 64);
  __chkstk_darwin(v313);
  v312 = &v305 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_123D6C();
  v314 = *(v315 - 8);
  v14 = *(v314 + 64);
  v15 = __chkstk_darwin(v315);
  v307 = &v305 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v308 = &v305 - v18;
  __chkstk_darwin(v17);
  v316 = &v305 - v19;
  v322 = sub_124BCC();
  v321 = *(v322 - 8);
  v20 = *(v321 + 64);
  __chkstk_darwin(v322);
  v320 = &v305 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = sub_123D3C();
  v339 = *(v331 - 8);
  v22 = *(v339 + 64);
  v23 = __chkstk_darwin(v331);
  v325 = &v305 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v336 = &v305 - v25;
  v345 = sub_12379C();
  v341 = *(v345 - 8);
  v26 = *(v341 + 64);
  __chkstk_darwin(v345);
  v323 = &v305 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_5AE8(&qword_15FFB8, &qword_127BD0);
  v28 = *(*(v338 - 8) + 64);
  __chkstk_darwin(v338);
  v344 = &v305 - v29;
  v30 = sub_5AE8(&qword_15FFC0, &qword_127BD8);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v328 = &v305 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v36 = &v305 - v35;
  __chkstk_darwin(v34);
  v349 = &v305 - v37;
  v38 = sub_12514C();
  v39 = *(v38 - 8);
  v40 = v39[8];
  __chkstk_darwin(v38);
  v348 = &v305 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_5AE8(&qword_15FFC8, &qword_127BE0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42);
  v327 = &v305 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v346 = &v305 - v47;
  v48 = __chkstk_darwin(v46);
  v343 = &v305 - v49;
  v50 = __chkstk_darwin(v48);
  v347 = &v305 - v51;
  __chkstk_darwin(v50);
  v53 = &v305 - v52;
  v54 = sub_5AE8(&unk_15F1B0, qword_126E30);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v319 = &v305 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v326 = &v305 - v59;
  v60 = __chkstk_darwin(v58);
  v335 = &v305 - v61;
  v62 = __chkstk_darwin(v60);
  v351 = &v305 - v63;
  v64 = __chkstk_darwin(v62);
  v334 = &v305 - v65;
  v66 = __chkstk_darwin(v64);
  v342 = &v305 - v67;
  v68 = __chkstk_darwin(v66);
  v340 = &v305 - v69;
  v70 = __chkstk_darwin(v68);
  v352 = &v305 - v71;
  v72 = __chkstk_darwin(v70);
  v74 = &v305 - v73;
  __chkstk_darwin(v72);
  v76 = &v305 - v75;
  v77 = v39[13];
  v350 = enum case for DecideAction.PromptExpectation.roomConfirmation(_:);
  v354 = v77;
  v355 = v39 + 13;
  v77(&v305 - v75);
  v356 = v39[7];
  v357 = v39 + 7;
  v356(v76, 0, 1, v38);
  v358 = v42;
  v359 = a4;
  v78 = *(v42 + 48);
  sub_E344(a4, v53, &unk_15F1B0, qword_126E30);
  sub_E344(v76, &v53[v78], &unk_15F1B0, qword_126E30);
  v353 = v39;
  v79 = v39 + 6;
  v80 = v39[6];
  if (v80(v53, 1, v38) == 1)
  {
    sub_5CA8(v76, &unk_15F1B0, qword_126E30);
    v81 = v38;
    if (v80(&v53[v78], 1, v38) == 1)
    {
      sub_5CA8(v53, &unk_15F1B0, qword_126E30);
      v82 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_E344(v53, v74, &unk_15F1B0, qword_126E30);
  if (v80(&v53[v78], 1, v38) == 1)
  {
    sub_5CA8(v76, &unk_15F1B0, qword_126E30);
    v83 = v74;
    v81 = v38;
    (v353[1])(v83, v38);
LABEL_6:
    sub_5CA8(v53, &qword_15FFC8, &qword_127BE0);
    v82 = 0;
    goto LABEL_8;
  }

  v84 = v353;
  v85 = &v53[v78];
  v86 = v348;
  (v353[4])(v348, v85, v38);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation);
  v82 = sub_125B7C();
  v330 = v36;
  v87 = v84[1];
  v87(v86, v38);
  sub_5CA8(v76, &unk_15F1B0, qword_126E30);
  v88 = v74;
  v81 = v38;
  v87(v88, v38);
  v36 = v330;
  sub_5CA8(v53, &unk_15F1B0, qword_126E30);
LABEL_8:
  v89 = v352;
  if ((sub_A4794(v361, v82 & 1) & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v96 = sub_125ABC();
    sub_5B30(v96, qword_161820);
    v97 = sub_125AAC();
    v98 = sub_125DFC();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_0, v97, v98, "decideActionForInput(input:type:halInfo: ... no valid timer input", v99, 2u);
    }

    goto LABEL_16;
  }

  v90 = v81;
  v354(v89, enum case for DecideAction.PromptExpectation.confirmation(_:), v81);
  v356(v89, 0, 1, v81);
  v91 = *(v358 + 48);
  v92 = v347;
  sub_E344(v359, v347, &unk_15F1B0, qword_126E30);
  sub_E344(v89, v92 + v91, &unk_15F1B0, qword_126E30);
  v93 = v80(v92, 1, v90);
  v337 = v80;
  if (v93 == 1)
  {
    sub_5CA8(v89, &unk_15F1B0, qword_126E30);
    v94 = v80((v92 + v91), 1, v90);
    v95 = v351;
    if (v94 == 1)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v100 = v340;
  sub_E344(v92, v340, &unk_15F1B0, qword_126E30);
  if (v80((v92 + v91), 1, v90) == 1)
  {
    sub_5CA8(v89, &unk_15F1B0, qword_126E30);
    (v353[1])(v100, v90);
    v95 = v351;
LABEL_19:
    sub_5CA8(v92, &qword_15FFC8, &qword_127BE0);
    v101 = v344;
    v102 = v345;
    v103 = v349;
    goto LABEL_20;
  }

  v306 = v79;
  v113 = v353;
  v114 = v92 + v91;
  v115 = v348;
  (v353[4])(v348, v114, v90);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation);
  LODWORD(v352) = sub_125B7C();
  v116 = v113[1];
  v116(v115, v90);
  sub_5CA8(v89, &unk_15F1B0, qword_126E30);
  v116(v100, v90);
  v79 = v306;
  sub_5CA8(v92, &unk_15F1B0, qword_126E30);
  v101 = v344;
  v102 = v345;
  v103 = v349;
  v95 = v351;
  if (v352)
  {
    goto LABEL_38;
  }

LABEL_20:
  v330 = v36;
  v354(v95, v350, v90);
  v356(v95, 0, 1, v90);
  v104 = *(v358 + 48);
  v92 = v346;
  sub_E344(v359, v346, &unk_15F1B0, qword_126E30);
  sub_E344(v95, v92 + v104, &unk_15F1B0, qword_126E30);
  v105 = v337;
  if (v337(v92, 1, v90) == 1)
  {
    sub_5CA8(v95, &unk_15F1B0, qword_126E30);
    if (v105(v92 + v104, 1, v90) == 1)
    {
LABEL_22:
      sub_5CA8(v92, &unk_15F1B0, qword_126E30);
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v106 = v335;
  sub_E344(v92, v335, &unk_15F1B0, qword_126E30);
  if (v105(v92 + v104, 1, v90) == 1)
  {
    sub_5CA8(v351, &unk_15F1B0, qword_126E30);
    (v353[1])(v106, v90);
LABEL_25:
    sub_5CA8(v92, &qword_15FFC8, &qword_127BE0);
    v107 = v330;
    v108 = v102;
    goto LABEL_26;
  }

  v130 = v353;
  v131 = v92 + v104;
  v132 = v348;
  (v353[4])(v348, v131, v90);
  sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation);
  v133 = sub_125B7C();
  v134 = v130[1];
  v134(v132, v90);
  sub_5CA8(v351, &unk_15F1B0, qword_126E30);
  v134(v106, v90);
  v103 = v349;
  sub_5CA8(v346, &unk_15F1B0, qword_126E30);
  v107 = v330;
  v108 = v102;
  if (v133)
  {
LABEL_38:
    v135 = v342;
    v354(v342, v350, v90);
    v356(v135, 0, 1, v90);
    v136 = *(v358 + 48);
    v137 = v343;
    sub_E344(v359, v343, &unk_15F1B0, qword_126E30);
    sub_E344(v135, v137 + v136, &unk_15F1B0, qword_126E30);
    v138 = v337;
    if (v337(v137, 1, v90) == 1)
    {
      sub_5CA8(v135, &unk_15F1B0, qword_126E30);
      v139 = v138(v137 + v136, 1, v90);
      v140 = v360;
      if (v139 == 1)
      {
        sub_5CA8(v137, &unk_15F1B0, qword_126E30);
        v141 = 1;
LABEL_45:
        sub_9D860(v361, v141 & 1, v140);
        return;
      }
    }

    else
    {
      v142 = v334;
      sub_E344(v137, v334, &unk_15F1B0, qword_126E30);
      v143 = v138(v137 + v136, 1, v90);
      v140 = v360;
      if (v143 != 1)
      {
        v144 = v353;
        v145 = v137 + v136;
        v146 = v348;
        (v353[4])(v348, v145, v90);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation);
        v141 = sub_125B7C();
        v147 = v144[1];
        v147(v146, v90);
        sub_5CA8(v135, &unk_15F1B0, qword_126E30);
        v147(v142, v90);
        sub_5CA8(v137, &unk_15F1B0, qword_126E30);
        goto LABEL_45;
      }

      sub_5CA8(v135, &unk_15F1B0, qword_126E30);
      (v353[1])(v142, v90);
    }

    sub_5CA8(v137, &qword_15FFC8, &qword_127BE0);
    v141 = 0;
    goto LABEL_45;
  }

LABEL_26:
  v306 = v79;
  sub_9F55C(v103);
  sub_12376C();
  v109 = v103;
  v110 = v341;
  (*(v341 + 56))(v107, 0, 1, v108);
  v111 = *(v338 + 48);
  sub_E344(v109, v101, &qword_15FFC0, &qword_127BD8);
  sub_E344(v107, v101 + v111, &qword_15FFC0, &qword_127BD8);
  v112 = *(v110 + 48);
  if (v112(v101, 1, v108) == 1)
  {
    sub_5CA8(v107, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v109, &qword_15FFC0, &qword_127BD8);
    if (v112(v101 + v111, 1, v108) == 1)
    {
      sub_5CA8(v101, &qword_15FFC0, &qword_127BD8);
      goto LABEL_51;
    }

    goto LABEL_33;
  }

  v117 = v328;
  sub_E344(v101, v328, &qword_15FFC0, &qword_127BD8);
  if (v112(v101 + v111, 1, v108) == 1)
  {
    sub_5CA8(v330, &qword_15FFC0, &qword_127BD8);
    sub_5CA8(v349, &qword_15FFC0, &qword_127BD8);
    (*(v341 + 8))(v117, v108);
LABEL_33:
    sub_5CA8(v101, &qword_15FFB8, &qword_127BD0);
    v118 = v333;
    v119 = v332;
    v120 = v361;
    goto LABEL_34;
  }

  v152 = v341;
  v153 = v101 + v111;
  v154 = v323;
  (*(v341 + 32))(v323, v153, v108);
  sub_536D8(&qword_161880, 255, &type metadata accessor for ActionForInput);
  v155 = sub_125B7C();
  v156 = *(v152 + 8);
  v156(v154, v108);
  sub_5CA8(v330, &qword_15FFC0, &qword_127BD8);
  sub_5CA8(v349, &qword_15FFC0, &qword_127BD8);
  v156(v117, v108);
  sub_5CA8(v101, &qword_15FFC0, &qword_127BD8);
  v118 = v333;
  v119 = v332;
  v120 = v361;
  if (v155)
  {
LABEL_51:
    v157 = v326;
    v354(v326, enum case for DecideAction.PromptExpectation.slot(_:), v90);
    v356(v157, 0, 1, v90);
    v158 = *(v358 + 48);
    v159 = v327;
    sub_E344(v359, v327, &unk_15F1B0, qword_126E30);
    sub_E344(v157, v159 + v158, &unk_15F1B0, qword_126E30);
    v160 = v337;
    if (v337(v159, 1, v90) == 1)
    {
      sub_5CA8(v157, &unk_15F1B0, qword_126E30);
      if (v160(v159 + v158, 1, v90) == 1)
      {
        sub_5CA8(v159, &unk_15F1B0, qword_126E30);
LABEL_74:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v186 = sub_125ABC();
        sub_5B30(v186, qword_161820);
        v187 = sub_125AAC();
        v188 = sub_125DFC();
        if (os_log_type_enabled(v187, v188))
        {
          v189 = swift_slowAlloc();
          *v189 = 0;
          _os_log_impl(&dword_0, v187, v188, "Received cancel input slot prompt input – .cancel()", v189, 2u);
        }

        sub_12376C();
        return;
      }
    }

    else
    {
      v161 = v319;
      sub_E344(v159, v319, &unk_15F1B0, qword_126E30);
      if (v160(v159 + v158, 1, v90) != 1)
      {
        v181 = v353;
        v182 = v159 + v158;
        v183 = v348;
        (v353[4])(v348, v182, v90);
        sub_536D8(&unk_15FFE0, 255, &type metadata accessor for DecideAction.PromptExpectation);
        v184 = sub_125B7C();
        v185 = v181[1];
        v185(v183, v90);
        sub_5CA8(v157, &unk_15F1B0, qword_126E30);
        v185(v161, v90);
        sub_5CA8(v159, &unk_15F1B0, qword_126E30);
        if (v184)
        {
          goto LABEL_74;
        }

        goto LABEL_57;
      }

      sub_5CA8(v157, &unk_15F1B0, qword_126E30);
      (v353[1])(v161, v90);
    }

    sub_5CA8(v159, &qword_15FFC8, &qword_127BE0);
LABEL_57:
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v162 = sub_125ABC();
    sub_5B30(v162, qword_161820);
    v97 = sub_125AAC();
    v149 = sub_125DFC();
    if (!os_log_type_enabled(v97, v149))
    {
      goto LABEL_16;
    }

    v150 = swift_slowAlloc();
    *v150 = 0;
    v151 = "Received cancel input on non-confirmation, non-slot prompt input – .ignore()";
LABEL_61:
    _os_log_impl(&dword_0, v97, v149, v151, v150, 2u);

LABEL_16:

    sub_12378C();
    return;
  }

LABEL_34:
  v121 = v336;
  sub_123CCC();
  v122 = sub_4C6B4(v121);
  v123 = *(v339 + 8);
  v124 = v331;
  v123(v121, v331);
  if ((v122 & 1) == 0)
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v148 = sub_125ABC();
    sub_5B30(v148, qword_161820);
    v97 = sub_125AAC();
    v149 = sub_125DFC();
    if (!os_log_type_enabled(v97, v149))
    {
      goto LABEL_16;
    }

    v150 = swift_slowAlloc();
    *v150 = 0;
    v151 = "Disallowing timer input based on allowed input types for current stack state.";
    goto LABEL_61;
  }

  v125 = v325;
  sub_123CCC();
  v126 = v339;
  v127 = (*(v339 + 88))(v125, v124);
  if (v127 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v128 = v123;
    (*(v126 + 96))(v125, v124);
    v129 = v329;
    goto LABEL_65;
  }

  v129 = v329;
  if (v127 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v128 = v123;
    (*(v339 + 96))(v125, v124);
    v163 = *(v125 + *(sub_5AE8(&unk_15FF80, &unk_126EE0) + 48));

LABEL_65:
    v164 = *(v321 + 32);
    v165 = v320;
    v166 = v125;
    v167 = v322;
    v164(v320, v166, v322);
    v164(v129, v165, v167);
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v168 = sub_125ABC();
    sub_5B30(v168, qword_161820);
    sub_9848(v129, v118);
    v169 = sub_125AAC();
    v170 = sub_125DFC();
    v171 = v128;
    if (os_log_type_enabled(v169, v170))
    {
      v172 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      v363 = v173;
      *v172 = 136315138;
      sub_536D8(&qword_161ED0, 255, type metadata accessor for TimerNLv3Intent);
      v174 = sub_12618C();
      v175 = v118;
      v177 = v176;
      sub_97EC(v175);
      v178 = sub_8530(v174, v177, &v363);

      *(v172 + 4) = v178;
      _os_log_impl(&dword_0, v169, v170, "TimerNLIntent: %s", v172, 0xCu);
      sub_5BB0(v173);
      v124 = v331;
    }

    else
    {

      sub_97EC(v118);
    }

    v179 = v336;
    sub_123CCC();
    v180 = sub_A588C(v179, v324);
    v171(v179, v124);
    if (v180)
    {
      sub_1255EC();
      if (!swift_dynamicCastClass())
      {
        v195 = v180;
        v196 = sub_125AAC();
        v197 = sub_125DEC();

        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          v363 = swift_slowAlloc();
          *v198 = 136315394;
          *(v198 + 4) = sub_8530(0xD000000000000011, 0x800000000012D040, &v363);
          *(v198 + 12) = 2080;
          v199 = v195;
          v200 = [v199 description];
          v201 = sub_125B9C();
          v203 = v202;

          v204 = sub_8530(v201, v203, &v363);

          *(v198 + 14) = v204;
          _os_log_impl(&dword_0, v196, v197, "Flows stack receives unexpected from input. Expecting: %s, Generated: %s", v198, 0x16u);
          swift_arrayDestroy();
        }

        v205 = v329;
        sub_12378C();

        v193 = v205;
        goto LABEL_90;
      }

      sub_12377C();
    }

    else
    {
      v190 = sub_125AAC();
      v191 = sub_125DEC();
      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        *v192 = 0;
        _os_log_impl(&dword_0, v190, v191, "Unable to parse intent from parse", v192, 2u);
      }

      sub_12378C();
    }

    v193 = v329;
LABEL_90:
    sub_97EC(v193);
    return;
  }

  if (v127 == enum case for Parse.directInvocation(_:))
  {
    sub_12377C();
    goto LABEL_85;
  }

  if (v127 != enum case for Parse.NLv4IntentOnly(_:))
  {
    if (v127 != enum case for Parse.uso(_:))
    {
      if (v127 == enum case for Parse.ifClientAction(_:))
      {
        v214 = v336;
        sub_123CCC();
        v215 = sub_A588C(v214, v324);
        v123(v214, v124);
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v216 = sub_125ABC();
        sub_5B30(v216, qword_161820);
        v217 = v215;
        v218 = sub_125AAC();
        v219 = sub_125DFC();

        if (os_log_type_enabled(v218, v219))
        {
          v220 = swift_slowAlloc();
          v221 = swift_slowAlloc();
          v362 = v215;
          v363 = v221;
          *v220 = 136315138;
          v222 = v217;
          sub_5AE8(&unk_15FFD0, qword_127BE8);
          v223 = sub_125BAC();
          v225 = sub_8530(v223, v224, &v363);

          *(v220 + 4) = v225;
          _os_log_impl(&dword_0, v218, v219, "Handling ifClientAction for intent: %s", v220, 0xCu);
          sub_5BB0(v221);
          v124 = v331;
        }

        sub_12377C();
        v194 = v325;
        goto LABEL_86;
      }

      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v226 = sub_125ABC();
      sub_5B30(v226, qword_161820);
      v227 = v312;
      v228 = v313;
      (*(v119 + 16))(v312, v120, v313);
      v229 = sub_125AAC();
      v230 = sub_125DEC();
      if (os_log_type_enabled(v229, v230))
      {
        v231 = swift_slowAlloc();
        v232 = swift_slowAlloc();
        v363 = v232;
        *v231 = 136315138;
        LODWORD(v359) = v230;
        v361 = v229;
        sub_123CCC();
        v233 = sub_125BAC();
        v235 = v234;
        (*(v119 + 8))(v227, v228);
        v236 = sub_8530(v233, v235, &v363);
        v124 = v331;

        *(v231 + 4) = v236;
        v237 = v361;
        _os_log_impl(&dword_0, v361, v359, "Received unsupported parse in decideActionForInput: %s", v231, 0xCu);
        sub_5BB0(v232);

        v125 = v325;
      }

      else
      {

        (*(v119 + 8))(v227, v228);
      }

      sub_12378C();
LABEL_85:
      v194 = v125;
LABEL_86:
      v123(v194, v124);
      return;
    }

    (*(v339 + 96))(v125, v124);
    (*(v314 + 32))(v316, v125, v315);
    if (v317)
    {
      v210 = v309;
      sub_123D5C();
      v211 = sub_123D8C();
      (*(v310 + 8))(v210, v311);
      if (v211)
      {
        v212 = sub_C69B0();

        if (sub_B6264(v212) == 0x627265566F6ELL && v213 == 0xE600000000000000)
        {

LABEL_134:
          if (qword_15EED0 != -1)
          {
            swift_once();
          }

          v263 = sub_125ABC();
          sub_5B30(v263, qword_161820);
          v264 = v314;
          v265 = *(v314 + 16);
          v266 = v308;
          v267 = v315;
          v265(v308, v316, v315);
          v268 = sub_125AAC();
          v269 = sub_125DFC();
          if (os_log_type_enabled(v268, v269))
          {
            v270 = swift_slowAlloc();
            v271 = swift_slowAlloc();
            v363 = v271;
            *v270 = 136315138;
            v265(v307, v266, v267);
            v272 = sub_125BAC();
            v274 = v273;
            v275 = *(v264 + 8);
            v275(v266, v267);
            v276 = sub_8530(v272, v274, &v363);

            *(v270 + 4) = v276;
            _os_log_impl(&dword_0, v268, v269, "decideActionForInput decide handle disambiguation UsoParse: %s", v270, 0xCu);
            sub_5BB0(v271);
          }

          else
          {

            v275 = *(v264 + 8);
            v275(v266, v267);
          }

          sub_12377C();
          v275(v316, v267);
          return;
        }

        v262 = sub_1261BC();

        if (v262)
        {
          goto LABEL_134;
        }
      }
    }

    v277 = v336;
    sub_123CCC();
    v278 = sub_A588C(v277, v324);
    v123(v277, v124);
    if (v278 && (sub_1255EC(), (v279 = swift_dynamicCastClass()) != 0))
    {
      v280 = v279;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v281 = sub_125ABC();
      sub_5B30(v281, qword_161820);
      v282 = v278;
      v283 = sub_125AAC();
      v284 = sub_125DFC();

      if (os_log_type_enabled(v283, v284))
      {
        v285 = swift_slowAlloc();
        v286 = swift_slowAlloc();
        v363 = v286;
        *v285 = 136315138;
        v287 = v282;
        v288 = [v280 description];
        v289 = sub_125B9C();
        v291 = v290;

        v292 = sub_8530(v289, v291, &v363);

        *(v285 + 4) = v292;
        _os_log_impl(&dword_0, v283, v284, "Handling action for intent: %s", v285, 0xCu);
        sub_5BB0(v286);
      }

      v293 = v315;
      v294 = v314;
      sub_12377C();

      (*(v294 + 8))(v316, v293);
    }

    else
    {
      v295 = v315;
      if (qword_15EED0 != -1)
      {
        swift_once();
      }

      v296 = sub_125ABC();
      sub_5B30(v296, qword_161820);
      v297 = v278;
      v298 = sub_125AAC();
      v299 = sub_125DEC();

      if (os_log_type_enabled(v298, v299))
      {
        v300 = swift_slowAlloc();
        v363 = swift_slowAlloc();
        *v300 = 136315394;
        *(v300 + 4) = sub_8530(0xD000000000000011, 0x800000000012D040, &v363);
        *(v300 + 12) = 2080;
        v362 = v278;
        v301 = v297;
        sub_5AE8(&unk_15FFD0, qword_127BE8);
        v302 = sub_125BAC();
        v304 = sub_8530(v302, v303, &v363);

        *(v300 + 14) = v304;
        _os_log_impl(&dword_0, v298, v299, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v300, 0x16u);
        swift_arrayDestroy();
      }

      sub_12378C();
      (*(v314 + 8))(v316, v295);
    }

    return;
  }

  (*(v339 + 96))(v125, v124);
  v206 = *v125;
  if (v317)
  {
    v207 = *v125;
    swift_getObjectType();
    if (SIRINLUUserDialogAct.firstUsoTask.getter())
    {
      v208 = sub_C69B0();

      if (sub_B6264(v208) == 0x627265566F6ELL && v209 == 0xE600000000000000)
      {

LABEL_114:
        if (qword_15EED0 != -1)
        {
          swift_once();
        }

        v239 = sub_125ABC();
        sub_5B30(v239, qword_161820);
        swift_unknownObjectRetain();
        v240 = sub_125AAC();
        v241 = sub_125DFC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          v243 = swift_slowAlloc();
          v362 = v206;
          v363 = v243;
          *v242 = 136315138;
          swift_unknownObjectRetain();
          sub_5AE8(&unk_160610, &unk_129CC0);
          v244 = sub_125BAC();
          v246 = sub_8530(v244, v245, &v363);

          *(v242 + 4) = v246;
          _os_log_impl(&dword_0, v240, v241, "decideActionForInput decide handle disambiguation userDialogAct: %s", v242, 0xCu);
          sub_5BB0(v243);
        }

        sub_12377C();
        swift_unknownObjectRelease();
        return;
      }

      v238 = sub_1261BC();

      if (v238)
      {
        goto LABEL_114;
      }
    }
  }

  v247 = v336;
  sub_123CCC();
  v248 = sub_A588C(v247, v324);
  v123(v247, v124);
  if (v248 && (sub_1255EC(), swift_dynamicCastClass()))
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v249 = sub_125ABC();
    sub_5B30(v249, qword_161820);
    v250 = sub_125AAC();
    v251 = sub_125DFC();
    if (os_log_type_enabled(v250, v251))
    {
      v252 = swift_slowAlloc();
      *v252 = 0;
      _os_log_impl(&dword_0, v250, v251, "decideActionForInput: Handling action for intent", v252, 2u);
    }

    sub_12377C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_15EED0 != -1)
    {
      swift_once();
    }

    v253 = sub_125ABC();
    sub_5B30(v253, qword_161820);
    v254 = v248;
    v255 = sub_125AAC();
    v256 = sub_125DEC();

    if (os_log_type_enabled(v255, v256))
    {
      v257 = swift_slowAlloc();
      v363 = swift_slowAlloc();
      *v257 = 136315394;
      *(v257 + 4) = sub_8530(0xD000000000000011, 0x800000000012D040, &v363);
      *(v257 + 12) = 2080;
      v362 = v248;
      v258 = v254;
      sub_5AE8(&unk_15FFD0, qword_127BE8);
      v259 = sub_125BAC();
      v261 = sub_8530(v259, v260, &v363);

      *(v257 + 14) = v261;
      _os_log_impl(&dword_0, v255, v256, "decideActionForInput: Intent from parse does not match IntentType. Expected %s, received %s", v257, 0x16u);
      swift_arrayDestroy();
    }

    sub_12378C();
    swift_unknownObjectRelease();
  }
}